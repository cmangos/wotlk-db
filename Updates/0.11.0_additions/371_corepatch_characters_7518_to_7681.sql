-- 7544
ALTER TABLE character_db_version CHANGE COLUMN required_7324_02_characters_character_aura required_7544_02_characters_uptime bit;
/*
DROP TABLE IF EXISTS `uptime`;
CREATE TABLE `uptime` (
  `starttime` bigint(20) unsigned NOT NULL default '0',
  `startstring` varchar(64) NOT NULL default '',
  `uptime` bigint(20) unsigned NOT NULL default '0',
  `maxplayers` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Uptime system';
*/

-- 7546
ALTER TABLE character_db_version CHANGE COLUMN required_7544_02_characters_uptime required_7546_01_characters_uptime bit;
-- DROP TABLE IF EXISTS `uptime`;

-- 7644
ALTER TABLE character_db_version CHANGE COLUMN required_7546_01_characters_uptime required_7644_01_characters_character_pet bit;
UPDATE `character_pet`
  SET slot = 100 WHERE PetType <> 1 AND slot >= 1 AND slot <= 4;
