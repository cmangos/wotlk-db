#!/bin/sh

####################################################################################################
#
#   Simple helper script to insert clean UDB
#
####################################################################################################

#internal use
SCRIPT_FILE="InstallFullUDB.sh"
CONFIG_FILE="InstallFullUDB.config"
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
echo "Run this tool from a bash compatibel terminal (on windows like Git Bash)"
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
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Full_DB/UDB_0.12.2_mangos_11792_SD2_2279.sql
[[ $? != 0 ]] && exit 1

## 403
echo "Process Updatepack 403"
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Updates/0.12.2_additions/403_corepatch_mangos_11793_to_11840.sql
[[ $? != 0 ]] && exit 1
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Updates/0.12.2_additions/403_updatepack_mangos.sql
[[ $? != 0 ]] && exit 1

## 404
echo "Process Updatepack 404"
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Updates/0.12.2_additions/404_corepatch_mangos_11841_to_11928.sql
[[ $? != 0 ]] && exit 1
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Updates/0.12.2_additions/404_updatepack_mangos.sql
[[ $? != 0 ]] && exit 1

## 405
echo "Process Updatepack 405"
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Updates/0.12.2_additions/405_corepatch_mangos_11929_to_12111.sql
[[ $? != 0 ]] && exit 1
$MYSQL_COMMAND < ${ADDITIONAL_PATH}Updates/0.12.2_additions/405_updatepack_mangos.sql
[[ $? != 0 ]] && exit 1

LAST_CORE_REV="12111"
LAST_SD2_REV="2712"

if [ "$CORE_PATH" != "" ]
then
  if [ ! -d $CORE_PATH ]
  then
    echo "Path to core provided, but directory not found! $CORE_PATH"
    exit 1
  fi

  echo "Applying additional core updates from path $CORE_PATH"
  echo

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

  echo "Applying additional ScriptDev2 updates from path $CORE_PATH/src/bindings/ScriptDev2"
  echo

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

echo
echo "You have now a clean and recent UDB database loaded into $DATABASE"
echo "Enjoy using UDB"
echo


