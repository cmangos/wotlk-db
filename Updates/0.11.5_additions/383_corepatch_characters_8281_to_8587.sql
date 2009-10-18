-- 8339
ALTER TABLE character_db_version CHANGE COLUMN required_8104_01_characters required_8339_01_characters_characters bit;
ALTER TABLE characters DROP COLUMN bgid;
ALTER TABLE characters DROP COLUMN bgteam;
ALTER TABLE characters DROP COLUMN bgmap;
ALTER TABLE characters DROP COLUMN bgx;
ALTER TABLE characters DROP COLUMN bgy;
ALTER TABLE characters DROP COLUMN bgz;
ALTER TABLE characters DROP COLUMN bgo;
ALTER TABLE character_db_version CHANGE COLUMN required_8339_01_characters_characters required_8339_02_characters_character_battleground_data bit;
DROP TABLE IF EXISTS `character_battleground_data`;
CREATE TABLE `character_battleground_data` (
  `guid` int(11) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `instance_id` int(11) unsigned NOT NULL default '0',
  `team` int(11) unsigned NOT NULL default '0',
  `join_x` float NOT NULL default '0',
  `join_y` float NOT NULL default '0',
  `join_z` float NOT NULL default '0',
  `join_o` float NOT NULL default '0',
  `join_map` int(11) NOT NULL default '0',
  `taxi_start` int(11) NOT NULL default '0',
  `taxi_end` int(11) NOT NULL default '0',
  `mount_spell` int(11) NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';

-- 8397
ALTER TABLE character_db_version CHANGE COLUMN required_8339_02_characters_character_battleground_data required_8397_03_characters_character_spell bit;
UPDATE IGNORE character_spell SET spell=7386 WHERE spell IN (7405,8380,11596,11597,25225,47467);
UPDATE character_spell SET active=1 WHERE spell=7386;
DELETE FROM character_spell WHERE spell IN (7405,8380,11596,11597,25225,47467);

-- 8402
ALTER TABLE character_db_version CHANGE COLUMN required_8397_03_characters_character_spell required_8402_01_characters_guild_eventlog bit;
-- THIS SCRIPT DELETES table `guild_eventlog` - MAKE BACKUP, if you need it.
DROP TABLE IF EXISTS `guild_eventlog`;
CREATE TABLE `guild_eventlog` (
  `guildid` int(11) NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(11) NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(1) NOT NULL COMMENT 'Event type',
  `PlayerGuid1` int(11) NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` int(11) NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(2) NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` bigint(20) NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`, `LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT 'Guild Eventlog';
-- The reason i decided for such dramatic change is that old guild_eventlog table didn't have Primary key and 
-- used LogGuids from 0 to infinity
-- New system uses LogGuids from 0 to number defined in config.
ALTER TABLE character_db_version CHANGE COLUMN required_8402_01_characters_guild_eventlog required_8402_02_characters_guild_bank_eventlog bit;
-- THIS SCRIPT DELETES table `guild_bank_eventlog` - MAKE BACKUP, if you need it.
DROP TABLE IF EXISTS `guild_bank_eventlog`;
CREATE TABLE `guild_bank_eventlog` (
  `guildid` int(11) unsigned NOT NULL default '0' COMMENT 'Guild Identificator',
  `LogGuid` int(11) unsigned NOT NULL default '0' COMMENT 'Log record identificator - auxiliary column',
  `TabId` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Guild bank TabId',
  `EventType` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Event type',
  `PlayerGuid` int(11) unsigned NOT NULL default '0',
  `ItemOrMoney` int(11) unsigned NOT NULL default '0',
  `ItemStackCount` tinyint(3) unsigned NOT NULL default '0',
  `DestTabId` tinyint(1) unsigned NOT NULL default '0' COMMENT 'Destination Tab Id',
  `TimeStamp` bigint(20) unsigned NOT NULL default '0' COMMENT 'Event UNIX time',
  PRIMARY KEY  (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- The reason i decided for such dramatic change is that old guild_bank_eventlog table used `TabId` = 0 for Money events and 
-- used `LogGuid` from 0 to infinity
-- New system uses `LogGuid` from 0 to number defined in config.

-- 8409
ALTER TABLE character_db_version CHANGE COLUMN required_8402_02_characters_guild_bank_eventlog required_8409_01_characters_guild bit;
-- Change createdate column type from datetime to bigint(20)
-- add temporary column
ALTER TABLE guild ADD COLUMN created_temp bigint(20) default '0';
-- update temporary columns data
UPDATE guild SET created_temp = UNIX_TIMESTAMP(createdate);
-- drop current column
ALTER TABLE guild DROP COLUMN createdate;
-- create new column with correct type
ALTER TABLE guild ADD COLUMN createdate bigint(20) NOT NULL default '0' AFTER motd;
-- copy data to new column
UPDATE guild set createdate = created_temp;
-- remove old column
ALTER TABLE guild DROP COLUMN created_temp;

-- 8433
ALTER TABLE character_db_version CHANGE COLUMN required_8409_01_characters_guild required_8433_01_characters_character_account_data bit;
DROP TABLE IF EXISTS `character_account_data`;
CREATE TABLE `character_account_data` (
  `guid` int(11) unsigned NOT NULL default '0',
  `type` int(11) unsigned NOT NULL default '0',
  `time` bigint(11) unsigned NOT NULL default '0',
  `data` longtext NOT NULL,
  PRIMARY KEY  (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO character_account_data
SELECT c.guid as guid, a.type as type, a.time as time, a.data as data
FROM characters c LEFT JOIN account_data a ON c.account = a.account WHERE a.type IN (1, 3, 5, 6, 7);
DELETE FROM account_data WHERE type IN (1, 3, 5, 6, 7);

-- 8469
ALTER TABLE character_db_version CHANGE COLUMN required_8433_01_characters_character_account_data required_8469_01_characters_character_spell bit;

DELETE FROM character_spell WHERE spell in (
 1178,  /* Bear Form (Passive) */
 3025,  /* Cat Form (Passive) */
 5419,  /* Travel Form (Passive) */
 5420,  /* Tree of Life _passive_ */
 5421,  /* Aquatic Form (Passive) */
 7376,  /* Defensive Stance Passive */
 7381,  /* Berserker Stance Passive */
 9635,  /* Dire Bear Form (Passive) */
 21156, /* Battle Stance Passive */
 21178, /* Bear Form (Passive2) */
 24905, /* Moonkin Form (Passive) */
 34123, /* Tree of Life _pasive_ */
 33948, /* Flight Form (Passive) */
 34764, /* Flight Form (Passive) */
 40121, /* Swift Flight Form (Passive) */
 40122  /* Swift Flight Form (Passive) */
);

-- 8505
ALTER TABLE character_db_version CHANGE COLUMN required_8469_01_characters_character_spell required_8505_01_characters_character_spell bit;

UPDATE character_spell SET active=1 WHERE spell=16857;


