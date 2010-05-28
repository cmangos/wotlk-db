-- 9767
ALTER TABLE character_db_version CHANGE COLUMN required_9751_01_characters required_9767_03_characters_characters bit;

ALTER TABLE `characters`
   ADD COLUMN `deleteInfos_Account` int(11) UNSIGNED default NULL AFTER actionBars,
   ADD COLUMN `deleteInfos_Name` varchar(12) default NULL AFTER deleteInfos_Account,
   ADD COLUMN `deleteDate` bigint(20) default NULL AFTER deleteInfos_Name;

-- 9849
ALTER TABLE character_db_version CHANGE COLUMN required_9767_03_characters_characters required_9849_01_characters_saved_variables bit;

ALTER TABLE saved_variables ADD cleaning_flags int(11) unsigned NOT NULL default '0' AFTER NextWeeklyQuestResetTime;
UPDATE saved_variables SET cleaning_flags = 0xF;

-- 9974
ALTER TABLE character_db_version CHANGE COLUMN required_9849_01_characters_saved_variables required_9974_01_characters_group bit;

ALTER TABLE groups
  CHANGE COLUMN isRaid groupType tinyint(1) unsigned NOT NULL;

/* now fixed bug in past can save raids as 1 (BG group) */
UPDATE groups
  SET groupType = 2 WHERE groupType = 1;
