-- 13958
ALTER TABLE db_version CHANGE COLUMN required_13957_01_mangos_gossip_menu_option required_13958_01_mangos_dbscripts_on_relay bit;

DROP TABLE IF EXISTS `dbscripts_on_relay`;
CREATE TABLE `dbscripts_on_relay` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `command` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(10) unsigned NOT NULL DEFAULT '0',
  `datalong3` int(11) unsigned NOT NULL DEFAULT '0',
  `buddy_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `search_radius` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) NOT NULL DEFAULT '0',
  `dataint2` int(11) NOT NULL DEFAULT '0',
  `dataint3` int(11) NOT NULL DEFAULT '0',
  `dataint4` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0',
  `comments` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 13959
ALTER TABLE db_version CHANGE COLUMN required_13958_01_mangos_dbscripts_on_relay required_13959_01_mangos_dbscript_random_template bit;
DROP TABLE IF EXISTS `dbscript_random_templates`;
CREATE TABLE `dbscript_random_templates` (
  `id` int(11) unsigned NOT NULL COMMENT 'Id of template',
  `type` int(11) unsigned NOT NULL COMMENT 'Type of template',
  `target_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Id of chanced element',
  `chance` int(11) NOT NULL DEFAULT '0' COMMENT 'Chance for element to occur in %',
  PRIMARY KEY (`id`,`type`,`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='DBScript system';
-- type 0 - strings
-- type 1 - relay dbscript
INSERT INTO dbscript_random_templates(id,type,target_id,chance) SELECT id,'0',string_id,'0' FROM dbscript_string_template;
DROP TABLE IF EXISTS dbscript_string_template;

-- 13960
ALTER TABLE db_version CHANGE COLUMN required_13959_01_mangos_dbscript_random_template required_13960_01_mangos_dbscript_string_rename bit;
DROP TABLE IF EXISTS `dbscript_string`;
RENAME TABLE `db_script_string` TO `dbscript_string`;
ALTER TABLE conditions
ADD comments varchar(300) AFTER value2;
