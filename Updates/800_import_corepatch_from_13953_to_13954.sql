-- 13953_01
ALTER TABLE db_version CHANGE COLUMN required_12952_01_mangos_instance_template required_13953_01_mangos_dbscript_string_template bit;

-- New table to make it easier to add random text
DROP TABLE IF EXISTS `dbscript_string_template`;
CREATE TABLE `dbscript_string_template` (
  `id` int(11) unsigned NOT NULL COMMENT 'Id of template' AUTO_INCREMENT,
  `string_id` int(11) NOT NULL DEFAULT '0' COMMENT 'db_script_string id',
  PRIMARY KEY (`id`,`string_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='DBScript system';

-- Adding new datalong3 field to have more parameters that are needed in some cases
ALTER TABLE dbscripts_on_creature_death ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE dbscripts_on_creature_movement ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE dbscripts_on_event ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE dbscripts_on_go_template_use ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE dbscripts_on_go_use ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE dbscripts_on_gossip ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
-- ALTER TABLE dbscripts_on_promo_code_use ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE dbscripts_on_quest_end ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE dbscripts_on_quest_start ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;
ALTER TABLE dbscripts_on_spell ADD COLUMN datalong3 INT(11) UNSIGNED NOT NULL DEFAULT '0' AFTER datalong2;

-- Be sure no data is currently on datalong field for command = 0 (say)
UPDATE dbscripts_on_creature_death SET datalong=0 WHERE command=0;
UPDATE dbscripts_on_creature_movement SET datalong=0 WHERE command=0;
UPDATE dbscripts_on_event SET datalong=0 WHERE command=0;
UPDATE dbscripts_on_go_template_use SET datalong=0 WHERE command=0;
UPDATE dbscripts_on_go_use SET datalong=0 WHERE command=0;
UPDATE dbscripts_on_gossip SET datalong=0 WHERE command=0;
-- UPDATE dbscripts_on_promo_code_use SET datalong=0 WHERE command=0;
UPDATE dbscripts_on_quest_end SET datalong=0 WHERE command=0;
UPDATE dbscripts_on_quest_start SET datalong=0 WHERE command=0;
UPDATE dbscripts_on_spell SET datalong=0 WHERE command=0;


-- 13953_02
ALTER TABLE db_version CHANGE COLUMN required_13953_01_mangos_dbscript_string_template required_13953_02_mangos_creature_movement_template bit;

ALTER TABLE creature_movement_template ADD pathId int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Path ID for entry' AFTER entry, DROP PRIMARY KEY, ADD PRIMARY KEY (entry, pathId, point);

-- 13954_01
ALTER TABLE db_version CHANGE COLUMN required_13953_02_mangos_creature_movement_template required_13954_01_mangos_creatures bit;

ALTER TABLE creature CHANGE spawntimesecs spawntimesecsmin INT(10) UNSIGNED DEFAULT 120 NOT NULL COMMENT 'Creature respawn time minimum';

ALTER TABLE creature ADD spawntimesecsmax INT(10) UNSIGNED DEFAULT 120 NOT NULL COMMENT 'Creature respawn time maximum' AFTER spawntimesecsmin;

-- 13954_02
ALTER TABLE db_version CHANGE COLUMN required_13954_01_mangos_creatures required_13954_02_mangos_gameobjects bit;

ALTER TABLE gameobject CHANGE spawntimesecs spawntimesecsmin INT(11) DEFAULT 0 NOT NULL COMMENT 'Gameobject respawn time minimum';

ALTER TABLE gameobject ADD spawntimesecsmax INT(11) DEFAULT 0 NOT NULL COMMENT 'Gameobject respawn time maximum' AFTER spawntimesecsmin;
