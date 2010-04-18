-- 9632
ALTER TABLE character_db_version CHANGE COLUMN required_9630_01_characters_characters required_9632_01_characters_characters bit;

ALTER TABLE characters
  ADD COLUMN `knownTitles` longtext AFTER ammoId;

UPDATE characters, data_backup
SET characters.knownTitles = SUBSTRING(data_backup.data,
length(SUBSTRING_INDEX(data_backup.data, ' ', 626))+2,
length(SUBSTRING_INDEX(data_backup.data, ' ', 631+1))- length(SUBSTRING_INDEX(data_backup.data, ' ', 626)) - 1);

-- 9634
ALTER TABLE character_db_version CHANGE COLUMN required_9632_01_characters_characters required_9634_01_characters_corpse bit;

ALTER TABLE corpse
  DROP COLUMN data,
  DROP COLUMN zone;

-- 9635
ALTER TABLE character_db_version CHANGE COLUMN required_9634_01_characters_corpse required_9635_01_characters_characters bit;

ALTER TABLE characters
  ADD COLUMN `actionBars` tinyint(3) UNSIGNED NOT NULL default '0' AFTER knownTitles;

-- 9646
ALTER TABLE character_db_version CHANGE COLUMN required_9635_01_characters_characters required_9646_01_characters_characters bit;

UPDATE characters, data_backup
SET characters.knownTitles = SUBSTRING(data_backup.data,
length(SUBSTRING_INDEX(data_backup.data, ' ', 626))+2,
length(SUBSTRING_INDEX(data_backup.data, ' ', 631+1))- length(SUBSTRING_INDEX(data_backup.data, ' ', 626)) - 1)
WHERE characters.guid=data_backup.guid;

-- 9661
ALTER TABLE character_db_version CHANGE COLUMN required_9646_01_characters_characters required_9661_01_characters_character_talent bit;

DROP TABLE IF EXISTS `character_talent`;
CREATE TABLE `character_talent` (
  `guid` int(11) unsigned NOT NULL,
  `talent_id` int(11) unsigned NOT NULL,
  `current_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`talent_id`,`spec`),
  KEY guid_key (`guid`),
  KEY talent_key (`talent_id`),
  KEY spec_key (`spec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 9680
ALTER TABLE character_db_version CHANGE COLUMN required_9661_01_characters_character_talent required_9680_01_characters_character_stats bit;

DROP TABLE IF EXISTS `character_stats`;
CREATE TABLE `character_stats` (
  `guid` int(11) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) UNSIGNED NOT NULL default '0',
  `maxpower1` int(10) UNSIGNED NOT NULL default '0',
  `maxpower2` int(10) UNSIGNED NOT NULL default '0',
  `maxpower3` int(10) UNSIGNED NOT NULL default '0',
  `maxpower4` int(10) UNSIGNED NOT NULL default '0',
  `maxpower5` int(10) UNSIGNED NOT NULL default '0',
  `maxpower6` int(10) UNSIGNED NOT NULL default '0',
  `maxpower7` int(10) UNSIGNED NOT NULL default '0',
  `strength` int(10) UNSIGNED NOT NULL default '0',
  `agility` int(10) UNSIGNED NOT NULL default '0',
  `stamina` int(10) UNSIGNED NOT NULL default '0',
  `intellect` int(10) UNSIGNED NOT NULL default '0',
  `spirit` int(10) UNSIGNED NOT NULL default '0',
  `armor` int(10) UNSIGNED NOT NULL default '0',
  `resHoly` int(10) UNSIGNED NOT NULL default '0',
  `resFire` int(10) UNSIGNED NOT NULL default '0',
  `resNature` int(10) UNSIGNED NOT NULL default '0',
  `resFrost` int(10) UNSIGNED NOT NULL default '0',
  `resShadow` int(10) UNSIGNED NOT NULL default '0',
  `resArcane` int(10) UNSIGNED NOT NULL default '0',
  `blockPct` float UNSIGNED NOT NULL default '0',
  `dodgePct` float UNSIGNED NOT NULL default '0',
  `parryPct` float UNSIGNED NOT NULL default '0',
  `critPct` float UNSIGNED NOT NULL default '0',  
  `rangedCritPct` float UNSIGNED NOT NULL default '0',
  `spellCritPct` float UNSIGNED NOT NULL default '0',
  `attackPower` int(10) UNSIGNED NOT NULL default '0',
  `rangedAttackPower` int(10) UNSIGNED NOT NULL default '0',
  `spellPower` int(10) UNSIGNED NOT NULL default '0',
   
  PRIMARY KEY  (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 9686
ALTER TABLE character_db_version CHANGE COLUMN required_9680_01_characters_character_stats required_9686_01_characters_character_queststatus_weekly bit;

DROP TABLE IF EXISTS `character_queststatus_weekly`;
CREATE TABLE `character_queststatus_weekly` (
  `guid` int(11) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `quest` int(11) unsigned NOT NULL default '0' COMMENT 'Quest Identifier',
  PRIMARY KEY  (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

ALTER TABLE `saved_variables`
  ADD COLUMN `NextWeeklyQuestResetTime` bigint(40) unsigned NOT NULL default '0' AFTER `NextArenaPointDistributionTime`;

-- 9687
ALTER TABLE character_db_version CHANGE COLUMN required_9686_01_characters_character_queststatus_weekly required_9687_01_characters_character_queststatus_daily bit;

ALTER TABLE `character_queststatus_daily`
  DROP COLUMN `time`;

ALTER TABLE `saved_variables`
  ADD COLUMN `NextDailyQuestResetTime` bigint(40) unsigned NOT NULL default '0' AFTER `NextArenaPointDistributionTime`;

-- 9692
ALTER TABLE character_db_version CHANGE COLUMN required_9687_01_characters_character_queststatus_daily required_9692_01_characters_mail bit;

alter table `mail` add column `body` longtext CHARSET utf8 COLLATE utf8_general_ci NULL after `subject`;

ALTER TABLE character_db_version CHANGE COLUMN required_9692_01_characters_mail required_9692_02_characters_mail bit;

UPDATE `mail` LEFT JOIN `item_text` ON `mail`.`itemtextid` = `item_text`.`id` SET `mail`.`body`=`item_text`.`text`;
DELETE item_text FROM mail, item_text WHERE mail.itemtextid = item_text.id;
ALTER TABLE `mail` DROP COLUMN `itemtextid`;

UPDATE item_instance SET data = REPLACE(data,'  ',' ');
UPDATE item_instance SET data = CONCAT(TRIM(data),' ');

UPDATE `item_instance` SET `data` = CONCAT(
    SUBSTRING_INDEX(`data`, ' ', 59 + 1), ' ',
    SUBSTRING_INDEX(`data`, ' ', -3 -1), '0 ')
WHERE length(SUBSTRING_INDEX(data, ' ', 64)) < length(data) and length(SUBSTRING_INDEX(data, ' ', 64+1)) >= length(data);

UPDATE item_instance SET data = REPLACE(data,'  ',' ');
UPDATE item_instance SET data = CONCAT(TRIM(data),' ');

-- 9702
ALTER TABLE character_db_version CHANGE COLUMN required_9692_02_characters_mail required_9702_01_characters_item bit;

ALTER TABLE `item_instance`
  ADD COLUMN `text` longtext AFTER `data`;

-- indexes in any case broken and lost after 3.3.3 switch.
DROP TABLE IF EXISTS `item_text`;

-- 9751
ALTER TABLE character_db_version CHANGE COLUMN required_9702_01_characters_item required_9751_01_characters bit;

ALTER TABLE `character_spell` ADD KEY `Idx_spell` (`spell`);
