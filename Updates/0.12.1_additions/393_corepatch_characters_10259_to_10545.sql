-- 10312
ALTER TABLE character_db_version CHANGE COLUMN required_10254_01_characters_auctionhouse required_10312_01_characters_character_aura bit;

ALTER TABLE `character_aura` DROP PRIMARY KEY;
ALTER TABLE `character_aura` ADD PRIMARY KEY (`guid`,`caster_guid`,`spell`);

ALTER TABLE character_db_version CHANGE COLUMN required_10312_01_characters_character_aura required_10312_02_characters_pet_aura bit;

ALTER TABLE `pet_aura` DROP PRIMARY KEY;
ALTER TABLE `pet_aura` ADD PRIMARY KEY (`guid`,`caster_guid`,`spell`);

-- 10332
ALTER TABLE character_db_version CHANGE COLUMN required_10312_02_characters_pet_aura required_10332_01_characters_character_aura bit;

ALTER TABLE `character_aura`
  ADD COLUMN `item_guid` int(11) unsigned NOT NULL default '0' AFTER `caster_guid`,
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`);

ALTER TABLE character_db_version CHANGE COLUMN required_10332_01_characters_character_aura required_10332_02_characters_pet_aura bit;

ALTER TABLE `pet_aura`
  ADD COLUMN `item_guid` int(11) unsigned NOT NULL default '0' AFTER `caster_guid`,
  DROP PRIMARY KEY,
  ADD PRIMARY KEY (`guid`,`caster_guid`,`item_guid`,`spell`);

-- 10503
ALTER TABLE character_db_version CHANGE COLUMN required_10332_02_characters_pet_aura required_10503_01_characters_creature_respawn bit;

DROP TABLE IF EXISTS `creature_respawn`;
CREATE TABLE `creature_respawn` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `respawntime` bigint(20) NOT NULL default '0',
  `instance` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Grid Loading System';

ALTER TABLE character_db_version CHANGE COLUMN required_10503_01_characters_creature_respawn required_10503_02_characters_gameobject_respawn bit;

DROP TABLE IF EXISTS `gameobject_respawn`;
CREATE TABLE `gameobject_respawn` (
  `guid` int(10) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `respawntime` bigint(20) NOT NULL default '0',
  `instance` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Grid Loading System';
