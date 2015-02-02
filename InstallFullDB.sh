#!/bin/sh

####################################################################################################
#
#   Simple helper script to insert clean UDB
#
####################################################################################################

#internal use
SCRIPT_FILE="InstallFullDB.sh"
CONFIG_FILE="InstallFullDB.config"
# testing only
ADDITIONAL_PATH=""

#variables assigned and read from $CONFIG_FILE
DATABASE=""
USERNAME=""
PASSWORD=""
MYSQL=""
CORE_PATH=""
SD2_UPDATES="1"

function create_config {
# Re(create) config file
cat >  $CONFIG_FILE << EOF
####################################################################################################
# This is the config file for the '$SCRIPT_FILE' script
#
# You need to insert
#   DATABASE:     Your database
#   USERNAME:     Your username
#   PASSWORD:     Your password
#   CORE_PATH:    Your path to core's directory (OPTIONAL: Use if you want to apply remaining core updates automatically)
#   ACID_PATH:    Your path to a git-clone of ACID (OPTIONAL: Use it if you want to install recent downloaded acid)
#   SD2_UPDATES:  If you want to disable adding ScriptDev2 updates (Has only meaning if CORE_PATH above is set
#   MYSQL:        Your mysql command (usually mysql)
#
####################################################################################################

## Define the database in which you want to add clean UDB
DATABASE="mangos"

## Define your username
USERNAME="mangos"

## Define your password (It is suggested to restrict read access to this file!)
PASSWORD="mangos"

## Define the path to your core's folder (This is optional)
##   If set the core updates located under sql/updates from this mangos-directory will be added automatically
CORE_PATH=""

## Define the path to the folder into which you cloned ACID (This is optional)
##   If set the file acid_wotlk.sql will be applied from this folder
ACID_PATH=""

## Include ScriptDev2 updates? (If set, the SD2-Updates are expected to be located in the place defined at CORE_PATH)
##   NOTE: They are only applied if CORE_PATH is set!
##   Set to 0 if you want core updates BUT no SD2-updates
SD2_UPDATES="1"

## Define your mysql programm if this differs
MYSQL="mysql"

# Enjoy using the tool
EOF
}

function display_help {
echo
echo "Welcome to the UDB helper $SCRIPT_FILE"
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

MYSQL_COMMAND="$MYSQL -u$USERNAME -p$PASSWORD $DATABASE"

## Print header
echo
echo "Welcome to the UDB helper $SCRIPT_FILE"
echo
echo "ATTENTION: Your database $DATABASE will be reset to UDB!"
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
echo "Process UDB 0.12.2"
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Current_Release/Full_DB/UDB_0.12.2_mangos_11792_SD2_2279.sql
[[ $? != 0 ]] && exit 1

## 403
echo "Process Updatepack 403"
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Current_Release/Updates/403_corepatch_mangos_11793_to_11840.sql
[[ $? != 0 ]] && exit 1
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Current_Release/Updates/403_updatepack_mangos.sql
[[ $? != 0 ]] && exit 1

## 404
echo "Process Updatepack 404"
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Current_Release/Updates/404_corepatch_mangos_11841_to_11928.sql
[[ $? != 0 ]] && exit 1
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Current_Release/Updates/404_updatepack_mangos.sql
[[ $? != 0 ]] && exit 1

## 405
echo "Process Updatepack 405"
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Current_Release/Updates/405_corepatch_mangos_11929_to_12111.sql
[[ $? != 0 ]] && exit 1
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Current_Release/Updates/405_updatepack_mangos.sql
[[ $? != 0 ]] && exit 1

## 406
echo "Process Updatepack 406"
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Current_Release/Updates/406_corepatch_mangos_12112_to_12444.sql
[[ $? != 0 ]] && exit 1
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Current_Release/Updates/406_updatepack_mangos.sql
[[ $? != 0 ]] && exit 1

## 407
echo "Process Updatepack 407"
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Current_Release/Updates/407_corepatch_mangos_12445_to_12670.sql
[[ $? != 0 ]] && exit 1
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Current_Release/Updates/407_updatepack_mangos.sql
[[ $? != 0 ]] && exit 1

LAST_CORE_REV="12670"
LAST_SD2_REV="3031"
# process future release folders
NEXT_MILESTONES="0.18 0.19 0.20"
NEXT_SD2_MILESTONES="0.7 0.8"

if [ "$CORE_PATH" != "" ]
then
  if [ ! -e $CORE_PATH ]
  then
    echo "Path to core provided, but directory not found! $CORE_PATH"
    exit 1
  fi
#
#               Core updates
#
  echo
  echo
  echo "Applying additional core updates from path $CORE_PATH"
  echo

  for NEXT_MILESTONE in ${NEXT_MILESTONES};
  do
    # A new milestone was released, apply additional updates
    if [ -e ${CORE_PATH}/sql/updates/${NEXT_MILESTONE}/ ]
    then
      echo "Apply core updates from milestone $NEXT_MILESTONE"
      for f in ${CORE_PATH}/sql/updates/${NEXT_MILESTONE}/*_*_mangos_*.sql
      do
        CUR_REV=`basename $f | sed 's/^\([0-9]*\)_.*/\1/' `
        if [ "$CUR_REV" -gt "$LAST_CORE_REV" ]
        then
          # found a newer core update file
          echo "Append core update `basename $f` to database $DATABASE"
          $MYSQL_COMMAND < $f
          [[ $? != 0 ]] && exit 1
        fi
      done
    fi
  done

  # Apply remaining files from main folder
  for f in $CORE_PATH/sql/updates/*_*_mangos_*.sql
  do
    CUR_REV=`basename $f | sed 's/^\([0-9]*\)_.*/\1/' `
    if [ "$CUR_REV" -gt "$LAST_CORE_REV" ]
    then
      # found a newer core update file
      echo "Append core update `basename $f` to database $DATABASE"
      $MYSQL_COMMAND < $f
      [[ $? != 0 ]] && exit 1
    fi
  done
  echo "All core updates applied"
#
#               ScriptDev2 updates
#
  echo
  echo "Applying additional ScriptDev2 updates from path $CORE_PATH/src/bindings/ScriptDev2"
  echo

  for NEXT_SD2_MILESTONE in ${NEXT_SD2_MILESTONES}
  do
    # A new milestone was released, apply additional updates
    if [ -e ${CORE_PATH}/src/bindings/ScriptDev2/sql/updates/${NEXT_SD2_MILESTONE}/ ]
    then
      echo "Apply SD2 updates from milestone $NEXT_SD2_MILESTONE"
      for f in ${CORE_PATH}/src/bindings/ScriptDev2/sql/updates/${NEXT_SD2_MILESTONE}/r*_mangos.sql
      do
        CUR_REV=`basename $f | sed 's/^r\([0-9]*\)_mangos.sql/\1/' `
        if [ "$CUR_REV" -gt "$LAST_SD2_REV" ]
        then
          # found a newer core update file
          echo "Append SD2 update`basename $f` to database $DATABASE"
          $MYSQL_COMMAND < $f
          [[ $? != 0 ]] && exit 1
        fi
      done
    fi
  done

  # Apply remaining files from main folder
  for f in $CORE_PATH/src/bindings/ScriptDev2/sql/updates/r*_mangos.sql
  do
    CUR_REV=`basename $f | sed 's/^r\([0-9]*\)_mangos.sql/\1/' `
    if [ "$CUR_REV" -gt "$LAST_SD2_REV" ]
    then
      # found a newer core update file
      echo "Append SD2 update`basename $f` to database $DATABASE"
      $MYSQL_COMMAND < $f
      [[ $? != 0 ]] && exit 1
    fi
  done
  echo "All SD2 updates applied"
fi

#
#               ACID Full file
#

if [ "$ACID_PATH" != "" ]
then
  if [ ! -e $ACID_PATH ]
  then
    echo "Path to acid provided, but directory not found! $ACID_PATH"
    exit 1
  fi

  # Apply acid_wotlk.sql
  echo "Applying $ACID_PATH/acid_wotlk.sql ..."
  $MYSQL_COMMAND < ${ACID_PATH}/acid_wotlk.sql
  [[ $? != 0 ]] && exit 1
  echo "Recent state of ACID applied"
fi

echo
echo "You have now a clean and recent UDB database loaded into $DATABASE"
echo "Enjoy using UDB"
echo
