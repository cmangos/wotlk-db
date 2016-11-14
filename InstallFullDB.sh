#!/bin/bash

####################################################################################################
#
#   Simple helper script to insert clean WoTLK-DB
#
####################################################################################################

#internal use
SCRIPT_FILE="./InstallFullDB.sh"
CONFIG_FILE="./InstallFullDB.config"
# testing only
ADDITIONAL_PATH=""

#variables assigned and read from $CONFIG_FILE
MANGOS_DBHOST=""
MANGOS_DBNAME=""
MANGOS_DBUSER=""
MANGOS_DBPASS=""
MYSQL=""
CORE_PATH=""

create_config() {
# Re(create) config file
cat >  $CONFIG_FILE << EOF
####################################################################################################
# This is the config file for the '$SCRIPT_FILE' script
#
# You need to insert
#   MANGOS_DBHOST:	Your MANGOS database host
#   MANGOS_DBNAME:	Your MANGOS database schema
#   MANGOS_DBUSER:	Your MANGOS username
#   MANGOS_DBPASS:	Your MANGOS password
#   CORE_PATH:    	Your path to core's directory (OPTIONAL: Use if you want to apply remaining core updates automatically)
#   MYSQL:        	Your mysql command (usually mysql)
#
####################################################################################################

## Define the host on which the mangos database resides (typically localhost)
MANGOS_DBHOST="localhost"

## Define the database in which you want to add clean WoTLK-DB
MANGOS_DBNAME="mangos"

## Define your username
MANGOS_DBUSER="mangos"

## Define your password (It is suggested to restrict read access to this file!)
MANGOS_DBPASS="mangos"

## Define the path to your core's folder (This is optional)
##   If set the core updates located under sql/updates/mangos from this mangos-directory will be added automatically
CORE_PATH=""

## Define your mysql programm if this differs
MYSQL="mysql"

# Enjoy using the tool
EOF
}

display_help() {
echo
echo "Welcome to the WoTLK-DB helper $SCRIPT_FILE"
echo
echo "Run this tool from a bash compatible terminal (on windows like Git Bash)"
echo
echo "To configure edit the file $CONFIG_FILE"
echo
}

# Check if config file present
if [ ! -f $CONFIG_FILE ]
then
  create_config
  display_help
  exit 1
fi

. $CONFIG_FILE

MYSQL_MANGOSDB_CMD="$MYSQL -h$MANGOS_DBHOST -u$MANGOS_DBUSER -p$MANGOS_DBPASS $MANGOS_DBNAME"

## Print header
echo
echo "Welcome to the WoTLK-DB helper $SCRIPT_FILE"
echo
echo "ATTENTION: Your database $MANGOS_DBNAME will be reset to WoTLK-DB!"
echo "Please bring your repositories up-to-date!"
echo "Press CTRL+C to exit"
# show a mini progress bar
for i in {1..19}
do
 echo -ne .
 sleep 1
done
echo .

## Full
echo "Process WoTLKDB v1.0 'Echoes of Northrend'"
$MYSQL_MANGOSDB_CMD < ${ADDITIONAL_PATH}Full_DB/WoTLKDB_1_0_12943.sql
if [ $? != 0 ]; then exit 1; fi;

## Change these settings with new updates
LAST_CORE_REV="12943"
# process future release folders
NEXT_MILESTONES="0.19 0.20"

# Process files in Updates folder
echo
echo "Applying additional updates from Updates folder"
echo
for f in Updates/*.sql
do
  CUR_REV=`basename "$f" | sed 's/^\([0-9]*\)_.*/\1/' `
  echo "Applying Update $CUR_REV"
  $MYSQL_MANGOSDB_CMD < "$f"
if [ $? != 0 ]; then exit 1; fi;
done

#
# Process core updates if desired
#
if [ "$CORE_PATH" != "" ]
then
  if [ ! -e "$CORE_PATH" ]
  then
    echo "Path to core provided, but directory not found! $CORE_PATH"
    exit 1
  fi

  # Convert path to unix style
  CORE_PATH=`(cd "$CORE_PATH"; pwd)`
#
#               Core updates
#
  echo
  echo
  echo "Applying additional core updates from path $CORE_PATH"
  echo
# process future release folders
  for NEXT_MILESTONE in ${NEXT_MILESTONES};
  do
    # A new milestone was released, apply additional updates
    if [ -e "${CORE_PATH}"/sql/archive/${NEXT_MILESTONE}/ ]
    then
      echo "Apply core updates from milestone $NEXT_MILESTONE"
      for f in "${CORE_PATH}"/sql/archive/${NEXT_MILESTONE}/*_*_mangos_*.sql
      do
        CUR_REV=`basename "$f" | sed 's/^\([0-9]*\)_.*/\1/' `
        if [ "$CUR_REV" -gt "$LAST_CORE_REV" ]
        then
          # found a newer core update file
          echo "Append core update `basename "$f"` to database $MANGOS_DBNAME"
          $MYSQL_MANGOSDB_CMD < "$f"
	  if [ $? != 0 ]; then exit 1; fi;
        fi
      done
    fi
  done

  # Apply remaining files from main folder
  for f in "${CORE_PATH}"/sql/updates/mangos/*_*_mangos_*.sql
  do
    CUR_REV=`basename "$f" | sed 's/^\([0-9]*\)_.*/\1/' `
    if [ "$CUR_REV" -gt "$LAST_CORE_REV" ]
    then
      # found a newer core update file
      echo "Append core update `basename "$f"` to database $MANGOS_DBNAME"
      $MYSQL_MANGOSDB_CMD < "$f"
	if [ $? != 0 ]; then exit 1; fi;
    fi
  done
  echo "All core updates applied"

#
#               ScriptDev2 updates
#

  # Apply ScriptDev2.sql
  echo
  echo "Applying $ScriptDev2/scriptdev2.sql ..."
  echo
  $MYSQL_MANGOSDB_CMD < "${CORE_PATH}"/sql/scriptdev2/scriptdev2.sql
  	if [ $? != 0 ]; then exit 1; fi;
  echo "Recent state of ScriptDev2 applied"
fi

#
#               ACID Full file
#

  # Apply acid_wotlk.sql
  echo
  echo "Applying Acid ..."
  echo
  $MYSQL_MANGOSDB_CMD < ${ADDITIONAL_PATH}ACID/acid_wotlk.sql
  	if [ $? != 0 ]; then exit 1; fi;
    echo "Recent state of ACID applied"

echo
echo "You have now a clean and recent WoTLK-DB database loaded into $MANGOS_DBNAME"
echo "Enjoy using WoTLK-DB"
echo
