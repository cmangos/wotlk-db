ALTER TABLE db_version CHANGE COLUMN required_14039_01_mangos_anticheat required_14040_01_mangos_dbscript_data_flags_widening bit;

ALTER TABLE dbscripts_on_creature_death MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_creature_movement MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_event MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_gossip MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_go_template_use MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_go_use MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_quest_end MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_quest_start MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_relay MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_spell MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';



ALTER TABLE db_version CHANGE COLUMN required_14040_01_mangos_dbscript_data_flags_widening required_14041_01_mangos_creature_spell_lists bit;

DROP TABLE IF EXISTS creature_spell_list_entry;
CREATE TABLE creature_spell_list_entry (
Id INT NOT NULL COMMENT 'List ID',
Name VARCHAR(200) NOT NULL COMMENT 'Description of usage',
ChanceSupportAction INT NOT NULL COMMENT 'Chance of support action per tick',
ChanceRangedAttack INT NOT NULL COMMENT 'Chance of ranged attack per tick',
PRIMARY KEY(Id)
);

DROP TABLE IF EXISTS creature_spell_list;
CREATE TABLE creature_spell_list (
Id INT NOT NULL COMMENT 'List ID',
Position INT NOT NULL COMMENT 'Position on list',
SpellId INT NOT NULL COMMENT 'Spell ID',
Flags INT NOT NULL COMMENT 'Spell Flags',
TargetId INT NOT NULL COMMENT 'Targeting ID',
ScriptId INT NOT NULL COMMENT 'Dbscript to be launched on success',
Availability INT NOT NULL COMMENT 'Chance on spawn for spell to be included',
Probability INT NOT NULL COMMENT 'Weight of spell when multiple are available',
InitialMin INT NOT NULL COMMENT 'Initial delay minimum',
InitialMax INT NOT NULL COMMENT 'Initial delay maximum',
RepeatMin INT NOT NULL COMMENT 'Repeated delay minimum',
RepeatMax INT NOT NULL COMMENT 'Repeated delay maximum',
Comments VARCHAR(255) NOT NULL COMMENT 'Description of spell use',
PRIMARY KEY(Id, Position)
);

DROP TABLE IF EXISTS creature_spell_targeting;
CREATE TABLE creature_spell_targeting (
Id INT NOT NULL COMMENT 'Targeting ID',
Type INT NOT NULL COMMENT 'Type of targeting ID',
Param1 INT NOT NULL COMMENT 'First parameter',
Param2 INT NOT NULL COMMENT 'Second parameter',
Param3 INT NOT NULL COMMENT 'Third parameter',
Comments VARCHAR(255) NOT NULL COMMENT 'Description of target',
PRIMARY KEY(Id)
);

ALTER TABLE creature_template ADD COLUMN SpellList INT NOT NULL DEFAULT '0' COMMENT 'creature_spell_list_entry' AFTER CorpseDecay;

REPLACE INTO creature_spell_targeting(Id, Type, Param1, Param2, Param3, Comments) VALUES
(0, 0, 0, 0, 0, 'Hardcoded - none'),
(1, 0, 0, 0, 0, 'Hardcoded - current'),
(2, 0, 0, 0, 0, 'Hardcoded - self'),
(3, 0, 0, 0, 0, 'Hardcoded - eligible friendly dispel'),
(4, 0, 0, 0, 0, 'Hardcoded - eligible friendly dispel - skip self'),
(100, 1, 0, 0, 0x0002, 'Attack - random player');



ALTER TABLE db_version CHANGE COLUMN required_14041_01_mangos_creature_spell_lists required_14042_01_mangos_spawn_data_template_relay bit;

ALTER TABLE creature_spawn_data_template ADD COLUMN RelayId INT UNSIGNED NOT NULL DEFAULT '0' COMMENT 'dbscripts_on_relay' AFTER SpawnFlags;



ALTER TABLE db_version CHANGE COLUMN required_14042_01_mangos_spawn_data_template_relay required_14043_01_mangos_spawn_groups bit;

DROP TABLE IF EXISTS spawn_group;
CREATE TABLE spawn_group(
Id INT NOT NULL COMMENT 'Spawn Group ID',
Name VARCHAR(200) NOT NULL COMMENT 'Description of usage',
Type INT NOT NULL COMMENT 'Creature or GO spawn group',
MaxCount INT NOT NULL DEFAULT '0' COMMENT 'Maximum total count of all spawns in a group',
WorldState INT NOT NULL DEFAULT '0' COMMENT 'Worldstate which enables spawning of given group',
Flags INT UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flags for various behaviour',
PRIMARY KEY(Id)
);

DROP TABLE IF EXISTS spawn_group_spawn;
CREATE TABLE spawn_group_spawn(
Id INT NOT NULL COMMENT 'Spawn Group ID',
Guid INT NOT NULL COMMENT 'Guid of creature or GO',
PRIMARY KEY(Id, Guid)
);

DROP TABLE IF EXISTS spawn_group_entry;
CREATE TABLE spawn_group_entry(
Id INT NOT NULL COMMENT 'Spawn Group ID',
Entry INT NOT NULL COMMENT 'Entry of creature or GO',
MinCount INT NOT NULL DEFAULT '0' COMMENT 'Minimum count of entry in a group before random',
MaxCount INT NOT NULL DEFAULT '0' COMMENT 'Maximum total count of entry in a group',
Chance INT NOT NULL DEFAULT '0' COMMENT 'Chance for entry to be selected',
PRIMARY KEY(Id, Entry)
);

DROP TABLE IF EXISTS spawn_group_linked_group;
CREATE TABLE spawn_group_linked_group(
Id INT NOT NULL COMMENT 'Spawn Group ID',
LinkedId INT NOT NULL COMMENT 'Linked Spawn Group ID',
PRIMARY KEY(Id, LinkedId)
);




