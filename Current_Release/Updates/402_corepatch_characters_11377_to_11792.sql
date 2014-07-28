-- 11391
ALTER TABLE character_db_version CHANGE COLUMN required_11299_02_characters_pet_aura required_11391_01_characters_auction bit;

ALTER TABLE `auction`
    ADD COLUMN `moneyTime` BIGINT(40) DEFAULT '0' NOT NULL AFTER `time`;

-- 11436
ALTER TABLE character_db_version CHANGE COLUMN required_11391_01_characters_auction required_11436_01_characters_character_queststatus bit;

ALTER TABLE character_queststatus
  ADD COLUMN itemcount5 int(11) unsigned NOT NULL default '0' AFTER itemcount4,
  ADD COLUMN itemcount6 int(11) unsigned NOT NULL default '0' AFTER itemcount5;

-- 11620
ALTER TABLE character_db_version CHANGE COLUMN required_11436_01_characters_character_queststatus required_11620_01_characters_character_equipmentsets bit;

ALTER TABLE character_equipmentsets
 MODIFY COLUMN item0 int(11) unsigned NOT NULL DEFAULT 0,
 MODIFY COLUMN item1 int(11) unsigned NOT NULL DEFAULT 0,
 MODIFY COLUMN item2 int(11) unsigned NOT NULL DEFAULT 0,
 MODIFY COLUMN item3 int(11) unsigned NOT NULL DEFAULT 0,
 MODIFY COLUMN item4 int(11) unsigned NOT NULL DEFAULT 0,
 MODIFY COLUMN item5 int(11) unsigned NOT NULL DEFAULT 0,
 MODIFY COLUMN item6 int(11) unsigned NOT NULL DEFAULT 0,
 MODIFY COLUMN item7 int(11) unsigned NOT NULL DEFAULT 0,
 MODIFY COLUMN item8 int(11) unsigned NOT NULL DEFAULT 0,
 MODIFY COLUMN item9 int(11) unsigned NOT NULL DEFAULT 0,
 MODIFY COLUMN item10 int(11) unsigned NOT NULL DEFAULT 0,
 MODIFY COLUMN item11 int(11) unsigned NOT NULL DEFAULT 0,
 MODIFY COLUMN item12 int(11) unsigned NOT NULL DEFAULT 0,
 MODIFY COLUMN item13 int(11) unsigned NOT NULL DEFAULT 0,
 MODIFY COLUMN item14 int(11) unsigned NOT NULL DEFAULT 0,
 MODIFY COLUMN item15 int(11) unsigned NOT NULL DEFAULT 0,
 MODIFY COLUMN item16 int(11) unsigned NOT NULL DEFAULT 0,
 MODIFY COLUMN item17 int(11) unsigned NOT NULL DEFAULT 0,
 MODIFY COLUMN item18 int(11) unsigned NOT NULL DEFAULT 0;

ALTER TABLE character_equipmentsets ADD COLUMN ignore_mask int(11) unsigned NOT NULL DEFAULT 0 AFTER iconname;

-- 11704
ALTER TABLE character_db_version CHANGE COLUMN required_11620_01_characters_character_equipmentsets required_11704_01_characters_auction bit;

ALTER TABLE `auction`
  DROP KEY `item_guid`,
  ADD COLUMN `item_count` int(11) unsigned NOT NULL default '0' AFTER `item_template`,
  ADD COLUMN `item_randompropertyid` int(11) NOT NULL default '0' AFTER `item_count`;

UPDATE auction, item_instance
  SET auction.item_count = SUBSTRING_INDEX(SUBSTRING_INDEX(item_instance.data, ' ', 14 + 1), ' ', -1)
  WHERE auction.itemguid = item_instance.guid;

-- 11716
ALTER TABLE character_db_version CHANGE COLUMN required_11704_01_characters_auction required_11716_01_characters_auction bit;

ALTER TABLE `auction`
  CHANGE COLUMN `time` `time` bigint(40) unsigned NOT NULL default '0',
  CHANGE COLUMN `moneyTime` `moneyTime` bigint(40) unsigned NOT NULL default '0';

ALTER TABLE character_db_version CHANGE COLUMN required_11716_01_characters_auction required_11716_02_characters_characters bit;

ALTER TABLE `characters`
  CHANGE COLUMN `deleteDate` `deleteDate` bigint(20) unsigned default NULL;
ALTER TABLE character_db_version CHANGE COLUMN required_11716_02_characters_characters required_11716_03_characters_character_equipmentsets bit;

ALTER TABLE `character_equipmentsets`
  CHANGE COLUMN `setguid` `setguid` bigint(20) unsigned NOT NULL auto_increment;

ALTER TABLE character_db_version CHANGE COLUMN required_11716_03_characters_character_equipmentsets required_11716_04_characters_creature_respawn bit;

ALTER TABLE `creature_respawn`
  CHANGE COLUMN `respawntime` `respawntime` bigint(20) unsigned NOT NULL default '0';

ALTER TABLE character_db_version CHANGE COLUMN required_11716_04_characters_creature_respawn required_11716_05_characters_gameobject_respawn bit;

ALTER TABLE `gameobject_respawn`
  CHANGE COLUMN `respawntime` `respawntime` bigint(20) unsigned NOT NULL default '0';
  
 ALTER TABLE character_db_version CHANGE COLUMN required_11716_05_characters_gameobject_respawn required_11716_06_characters_guild bit;

ALTER TABLE `guild`
  CHANGE COLUMN `createdate` `createdate` bigint(20) unsigned NOT NULL default '0',
  CHANGE COLUMN `BankMoney` `BankMoney` bigint(20) unsigned NOT NULL default '0';

  ALTER TABLE character_db_version CHANGE COLUMN required_11716_06_characters_guild required_11716_07_characters_guild_eventlog bit;

ALTER TABLE `guild_eventlog`
  CHANGE COLUMN `guildid` `guildid` int(11) unsigned NOT NULL COMMENT 'Guild Identificator',
  CHANGE COLUMN `LogGuid` `LogGuid` int(11) unsigned NOT NULL COMMENT 'Log record identificator - auxiliary column',
  CHANGE COLUMN `EventType` `EventType` tinyint(1) unsigned NOT NULL COMMENT 'Event type',
  CHANGE COLUMN `PlayerGuid1` `PlayerGuid1` int(11) unsigned NOT NULL COMMENT 'Player 1',
  CHANGE COLUMN `PlayerGuid2` `PlayerGuid2` int(11) unsigned NOT NULL COMMENT 'Player 2',
  CHANGE COLUMN `NewRank` `NewRank` tinyint(2) unsigned NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  CHANGE COLUMN `TimeStamp` `TimeStamp` bigint(20) unsigned NOT NULL COMMENT 'Event UNIX time';

ALTER TABLE character_db_version CHANGE COLUMN required_11716_07_characters_guild_eventlog required_11716_08_characters_instance bit;

ALTER TABLE `instance`
  CHANGE COLUMN `resettime` `resettime` bigint(40) unsigned NOT NULL default '0';

ALTER TABLE character_db_version CHANGE COLUMN required_11716_08_characters_instance required_11716_09_characters_instance_reset bit;

ALTER TABLE `instance_reset`
  CHANGE COLUMN `resettime` `resettime` bigint(40) unsigned NOT NULL default '0';

ALTER TABLE character_db_version CHANGE COLUMN required_11716_09_characters_instance_reset required_11716_10_characters_mail bit;

ALTER TABLE `mail`
  CHANGE COLUMN `expire_time` `expire_time` bigint(40) unsigned NOT NULL default '0',
  CHANGE COLUMN `deliver_time` `deliver_time` bigint(40) unsigned NOT NULL default '0';

-- 11785
ALTER TABLE character_db_version CHANGE COLUMN required_11716_10_characters_mail required_11785_02_characters_instance bit;

-- dungeon DBC encounters support
ALTER TABLE `instance` ADD COLUMN `encountersMask` 
INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Dungeon encounter bit mask'
AFTER `difficulty`;