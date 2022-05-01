-- 14050
ALTER TABLE db_version CHANGE COLUMN required_14049_01_mangos_unitflags2 required_14050_01_mangos_npc_vendor bit;
ALTER TABLE `npc_vendor` ADD COLUMN `slot` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `incrtime`;
ALTER TABLE `npc_vendor_template` ADD COLUMN `slot` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `incrtime`;

-- 14051
ALTER TABLE db_version CHANGE COLUMN required_14050_01_mangos_npc_vendor required_14051_01_mangos_creature_addon bit;
ALTER TABLE `creature_template` ADD COLUMN `InteractionPauseTimer` INT(10) DEFAULT -1 NOT NULL AFTER `GossipMenuId`;

-- 14052
ALTER TABLE db_version CHANGE COLUMN required_14051_01_mangos_creature_addon required_14052_01_mangos_creature_spawn_data_template bit;
ALTER TABLE `creature_spawn_data_template` ADD COLUMN `NpcFlags` INT(10) DEFAULT -1 NOT NULL AFTER `Entry`, DROP PRIMARY KEY, ADD PRIMARY KEY (`Entry`, `NpcFlags`, `UnitFlags`, `ModelId`, `EquipmentId`, `CurHealth`, `CurMana`, `SpawnFlags`);

-- 14053
ALTER TABLE db_version CHANGE COLUMN required_14052_01_mangos_creature_spawn_data_template required_14053_01_mangos_quest_template bit;
ALTER TABLE `quest_template` ADD COLUMN `BreadcrumbForQuestId` MEDIUMINT(9) UNSIGNED DEFAULT 0 NOT NULL AFTER `ExclusiveGroup`; 

-- 14054
ALTER TABLE db_version CHANGE COLUMN required_14053_01_mangos_quest_template required_14054_01_mangos_command bit;
DELETE FROM command WHERE name = 'list object';
REPLACE INTO `command` VALUES
('list object', 3, 'Syntax: .list object #gameobject_id [#max_count]\r\n.list object #gameobject_id [world|zone|area|map] [#max_count]\r\nOutput gameobjects with gameobject id #gameobject_id found in world. Output gameobject guids and coordinates sorted by distance from character. Will be output maximum #max_count gameobject. If #max_count not provided use 200 as default value.');

-- 14055
ALTER TABLE db_version CHANGE COLUMN required_14054_01_mangos_command required_14055_01_mangos_worldstate_name bit;
DROP TABLE IF EXISTS worldstate_name;
CREATE TABLE worldstate_name (
`Id` INT(11) NOT NULL COMMENT 'Worldstate variable Id',
`Name` VARCHAR(200) NOT NULL COMMENT 'Name and use of variable',
PRIMARY KEY(`Id`)
);

-- 14056
ALTER TABLE db_version CHANGE COLUMN required_14055_01_mangos_worldstate_name required_14056_01_mangos_dbscript_extension bit;
ALTER TABLE dbscripts_on_creature_death ADD COLUMN `speed` float NOT NULL DEFAULT '0' AFTER `o`;
ALTER TABLE dbscripts_on_creature_death ADD COLUMN `datafloat` float NOT NULL DEFAULT '0' AFTER `dataint4`;
ALTER TABLE dbscripts_on_creature_movement ADD COLUMN `speed` float NOT NULL DEFAULT '0' AFTER `o`;
ALTER TABLE dbscripts_on_creature_movement ADD COLUMN `datafloat` float NOT NULL DEFAULT '0' AFTER `dataint4`;
ALTER TABLE dbscripts_on_event ADD COLUMN `speed` float NOT NULL DEFAULT '0' AFTER `o`;
ALTER TABLE dbscripts_on_event ADD COLUMN `datafloat` float NOT NULL DEFAULT '0' AFTER `dataint4`;
ALTER TABLE dbscripts_on_go_template_use ADD COLUMN `speed` float NOT NULL DEFAULT '0' AFTER `o`;
ALTER TABLE dbscripts_on_go_template_use ADD COLUMN `datafloat` float NOT NULL DEFAULT '0' AFTER `dataint4`;
ALTER TABLE dbscripts_on_go_use ADD COLUMN `speed` float NOT NULL DEFAULT '0' AFTER `o`;
ALTER TABLE dbscripts_on_go_use ADD COLUMN `datafloat` float NOT NULL DEFAULT '0' AFTER `dataint4`;
ALTER TABLE dbscripts_on_gossip ADD COLUMN `speed` float NOT NULL DEFAULT '0' AFTER `o`;
ALTER TABLE dbscripts_on_gossip ADD COLUMN `datafloat` float NOT NULL DEFAULT '0' AFTER `dataint4`;
ALTER TABLE dbscripts_on_quest_end ADD COLUMN `speed` float NOT NULL DEFAULT '0' AFTER `o`;
ALTER TABLE dbscripts_on_quest_end ADD COLUMN `datafloat` float NOT NULL DEFAULT '0' AFTER `dataint4`;
ALTER TABLE dbscripts_on_quest_start ADD COLUMN `speed` float NOT NULL DEFAULT '0' AFTER `o`;
ALTER TABLE dbscripts_on_quest_start ADD COLUMN `datafloat` float NOT NULL DEFAULT '0' AFTER `dataint4`;
ALTER TABLE dbscripts_on_relay ADD COLUMN `speed` float NOT NULL DEFAULT '0' AFTER `o`;
ALTER TABLE dbscripts_on_relay ADD COLUMN `datafloat` float NOT NULL DEFAULT '0' AFTER `dataint4`;
ALTER TABLE dbscripts_on_spell ADD COLUMN `speed` float NOT NULL DEFAULT '0' AFTER `o`;
ALTER TABLE dbscripts_on_spell ADD COLUMN `datafloat` float NOT NULL DEFAULT '0' AFTER `dataint4`;

-- 14057
ALTER TABLE db_version CHANGE COLUMN required_14056_01_mangos_dbscript_extension required_14057_01_mangos_spawn_group_chanced_spawns bit;
ALTER TABLE spawn_group_spawn ADD COLUMN `Chance` INT UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Chance for a spawn to occur';
