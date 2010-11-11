-- 10568
ALTER TABLE character_db_version CHANGE COLUMN required_10503_02_characters_gameobject_respawn required_10568_01_characters_character_tutorial bit;

ALTER TABLE `character_tutorial` DROP PRIMARY KEY;
ALTER TABLE `character_tutorial` DROP COLUMN `realmid`;
ALTER TABLE `character_tutorial` ADD PRIMARY KEY (`account`);
ALTER TABLE `character_tutorial` DROP KEY `acc_key`;

-- 10655
ALTER TABLE character_db_version CHANGE COLUMN required_10568_01_characters_character_tutorial required_10655_01_characters_character_queststatus_monthly bit;

DROP TABLE IF EXISTS character_queststatus_monthly;
CREATE TABLE character_queststatus_monthly (
  guid int(11) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  quest int(11) unsigned NOT NULL default '0' COMMENT 'Quest Identifier',
  PRIMARY KEY  (guid,quest),
  KEY idx_guid (guid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

ALTER TABLE saved_variables
  ADD COLUMN NextMonthlyQuestResetTime bigint(40) unsigned NOT NULL default '0' AFTER NextWeeklyQuestResetTime;

-- 10662
ALTER TABLE character_db_version CHANGE COLUMN required_10655_01_characters_character_queststatus_monthly required_10662_01_characters_item_loot bit;

DROP TABLE IF EXISTS `item_loot`;
CREATE TABLE `item_loot` (
  `guid` int(11) unsigned NOT NULL default '0',
  `owner_guid` int(11) unsigned NOT NULL default '0',
  `itemid` int(11) unsigned NOT NULL default '0',
  `amount` int(11) unsigned NOT NULL default '0',
  `suffix` int(11) unsigned NOT NULL default '0',
  `property` int(11) NOT NULL default '0',
  PRIMARY KEY  (`guid`,`itemid`),
  KEY `idx_owner_guid` (`owner_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Item System';

-- 10664
ALTER TABLE character_db_version CHANGE COLUMN required_10662_01_characters_item_loot required_10664_01_characters_arena_team_stats bit;

ALTER TABLE arena_team_stats
  CHANGE COLUMN games  games_week   int(10) unsigned NOT NULL default '0',
  CHANGE COLUMN wins   wins_week    int(10) unsigned NOT NULL default '0',
  CHANGE COLUMN played games_season int(10) unsigned NOT NULL default '0',
  CHANGE COLUMN wins2  wins_season  int(10) unsigned NOT NULL default '0';
