-- 7.11

DROP TABLE IF EXISTS `character_db_version`;
CREATE TABLE `character_db_version` (
  `required_2008_11_07_01_characters_character_db_version` bit(1) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Last applied sql update to DB';
LOCK TABLES `character_db_version` WRITE;
/*!40000 ALTER TABLE `character_db_version` DISABLE KEYS */;
INSERT INTO `character_db_version` VALUES
(NULL);
/*!40000 ALTER TABLE `character_db_version` ENABLE KEYS */;
UNLOCK TABLES;

ALTER TABLE character_db_version CHANGE COLUMN required_2008_11_07_01_characters_character_db_version required_2008_11_07_03_characters_guild_bank_tab bit;
ALTER TABLE `guild_bank_tab`
  CHANGE COLUMN `TabText` `TabText` text;

-- 12.11
ALTER TABLE character_db_version CHANGE COLUMN required_2008_11_07_03_characters_guild_bank_tab required_2008_11_12_01_character_character_aura bit;
ALTER TABLE `character_aura` ADD `stackcount` INT NOT NULL DEFAULT '1' AFTER `effect_index` ;
ALTER TABLE `pet_aura` ADD `stackcount` INT NOT NULL DEFAULT '1' AFTER `effect_index` ;

-- 3.12
ALTER TABLE character_db_version CHANGE COLUMN required_2008_11_12_01_character_character_aura required_2008_12_03_01_character_guild_member bit;
ALTER TABLE `guild_member` DROP INDEX `guid_key` ,
ADD UNIQUE `guid_key` ( `guid` );
