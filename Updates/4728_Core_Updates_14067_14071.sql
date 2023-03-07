-- 1466
ALTER TABLE db_version CHANGE COLUMN required_14065_01_mangos_aggro_range required_14066_01_mangos_reference_loot_template_names bit;
DROP TABLE IF EXISTS `reference_loot_template_names`;
CREATE TABLE `reference_loot_template_names` (
  `entry` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`)
)COMMENT='Reference Loot Template Names';

-- 1467
ALTER TABLE db_version CHANGE COLUMN required_14066_01_mangos_reference_loot_template_names required_14067_01_mangos_addon_stand_state bit;
ALTER TABLE `creature_template_addon` ADD COLUMN `stand_state` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `bytes1`;
ALTER TABLE `creature_addon` ADD COLUMN `stand_state` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `bytes1`;
UPDATE creature_template_addon SET stand_state = (bytes1 & 0xFF) WHERE bytes1 != 0;
UPDATE creature_addon SET stand_state = (bytes1 & 0xFF) WHERE bytes1 != 0;
ALTER TABLE creature_template_addon DROP COLUMN bytes1;
ALTER TABLE creature_addon DROP COLUMN bytes1;

-- 14068
ALTER TABLE db_version CHANGE COLUMN required_14067_01_mangos_addon_stand_state required_14068_01_mangos_gameobject_data_split bit;
-- yes diff default from tbc and vanilla
ALTER TABLE `gameobject_addon` ADD COLUMN `animprogress` TINYINT(3) UNSIGNED NOT NULL DEFAULT '255' AFTER `guid`;
ALTER TABLE `gameobject_addon` ADD COLUMN `state` TINYINT(3) NOT NULL DEFAULT -1 AFTER `animprogress`;
UPDATE gameobject SET animprogress=255 WHERE animprogress=100;
INSERT IGNORE INTO gameobject_addon(guid) SELECT guid FROM gameobject a LEFT JOIN gameobject_template b ON a.id=b.entry WHERE animprogress != 255 OR ((a.state != 1 AND b.type NOT IN(0,1,30)) OR (b.type IN(0,1,30) AND data0 = a.state));
UPDATE gameobject_addon a SET animprogress= (SELECT animprogress FROM gameobject b where a.guid=b.guid);
UPDATE gameobject_addon c SET state= (SELECT a.state FROM gameobject a JOIN gameobject_template b ON a.id=b.entry WHERE a.guid=c.guid AND ((a.state != 1 AND b.type NOT IN(0,1,30)) OR (b.type IN(0,1,30) AND data0 = a.state))) WHERE guid IN(SELECT a.guid FROM gameobject a JOIN gameobject_template b ON a.id=b.entry WHERE a.guid=c.guid AND ((a.state != 1 AND b.type NOT IN(0,1,30)) OR (b.type IN(0,1,30) AND data0 = a.state)));
ALTER TABLE gameobject DROP COLUMN `animprogress`;
ALTER TABLE gameobject DROP COLUMN `state`;

-- 14069
ALTER TABLE db_version CHANGE COLUMN required_14068_01_mangos_gameobject_data_split required_14069_01_mangos_addon_rename bit;
ALTER TABLE creature_template_addon CHANGE b2_0_sheath sheath_state tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE creature_addon CHANGE b2_0_sheath sheath_state tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE creature_template_addon CHANGE b2_1_pvp_state pvp_flags tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE creature_addon CHANGE b2_1_pvp_state pvp_flags tinyint(3) unsigned NOT NULL DEFAULT '0';

-- 14070
ALTER TABLE db_version CHANGE COLUMN required_14069_01_mangos_addon_rename required_14070_01_mangos_creature_drops bit;
ALTER TABLE creature DROP COLUMN modelid;
ALTER TABLE creature DROP COLUMN currentwaypoint;
ALTER TABLE creature DROP COLUMN curhealth;
ALTER TABLE creature DROP COLUMN curmana;
ALTER TABLE creature DROP COLUMN DeathState;

-- 14071
ALTER TABLE db_version CHANGE COLUMN required_14070_01_mangos_creature_drops required_14071_01_mangos_spawn_data_equip bit;
ALTER TABLE `creature_spawn_data_template` CHANGE `EquipmentId` `EquipmentId` MEDIUMINT(8) NOT NULL DEFAULT '-1';
