-- 6360
UPDATE characters SET data = REPLACE(data,'  ',' ');
UPDATE characters SET data = CONCAT(TRIM(data),' ');
UPDATE characters
SET data=CONCAT(SUBSTRING_INDEX(SUBSTRING_INDEX(data,' ',1396),' ',-1396),' ','0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0',' ',SUBSTRING_INDEX(SUBSTRING_INDEX(data,' ',1529),' ',-133))
WHERE SUBSTRING_INDEX(data,' ',1528) = data AND SUBSTRING_INDEX(data,' ',1527) <> data;
UPDATE corpse SET data = REPLACE(data,'  ',' ');
UPDATE corpse SET data = CONCAT(TRIM(data),' ');
UPDATE corpse
SET data=CONCAT(SUBSTRING_INDEX(SUBSTRING_INDEX(`data`,' ',8),' ',-8),' ','0 0',' ',SUBSTRING_INDEX(SUBSTRING_INDEX(data,' ',39),' ',-31))
WHERE SUBSTRING_INDEX(data,' ',38) = data AND SUBSTRING_INDEX(data,' ',37) <> data;

-- 6362
TRUNCATE `character_instance`;
TRUNCATE `instance`;
ALTER TABLE `character_instance`
  DROP KEY `leader`,
  DROP PRIMARY KEY,
  ADD PRIMARY KEY `guid` (`guid`,`instance`),
  DROP COLUMN `map`,
  DROP COLUMN `leader`,
  MODIFY COLUMN `instance` int(11) unsigned NOT NULL default '0',
  ADD COLUMN `permanent` tinyint(1) unsigned NOT NULL default '0';
ALTER TABLE `instance`
  ADD COLUMN `difficulty` tinyint(1) unsigned NOT NULL default '0' AFTER `resettime`;
CREATE TABLE `group_instance` (
  `leaderGuid` int(11) unsigned NOT NULL default '0',
  `instance` int(11) unsigned NOT NULL default '0',
  `permanent` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`leaderGuid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `instance_reset` (
  `mapid` int(11) unsigned NOT NULL default '0',
  `resettime` bigint(40) NOT NULL default '0',
  PRIMARY KEY  (`mapid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
ALTER TABLE `groups`
  ADD COLUMN `difficulty` tinyint(3) unsigned NOT NULL default '0' AFTER `isRaid`;
ALTER TABLE `characters`
  ADD COLUMN `dungeon_difficulty` tinyint(1) unsigned NOT NULL DEFAULT '0' AFTER `map`;

-- 6387
ALTER TABLE `character_ticket`
  DROP `ticket_category`;

-- 6412
DROP TABLE IF EXISTS `character_declinedname`;
CREATE TABLE `character_declinedname` (
  `guid` int(11) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `genitive` varchar(12) NOT NULL default '',
  `dative` varchar(12) NOT NULL default '',
  `accusative` varchar(12) NOT NULL default '',
  `instrumental` varchar(12) NOT NULL default '',
  `prepositional` varchar(12) NOT NULL default '',
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
DROP TABLE IF EXISTS `character_pet_declinedname`;
CREATE TABLE `character_pet_declinedname` (
  `id` int(11) unsigned NOT NULL default '0',
  `owner` int(11) unsigned NOT NULL default '0',
  `genitive` varchar(12) NOT NULL default '',
  `dative` varchar(12) NOT NULL default '',
  `accusative` varchar(12) NOT NULL default '',
  `instrumental` varchar(12) NOT NULL default '',
  `prepositional` varchar(12) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY owner_key (`owner`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

