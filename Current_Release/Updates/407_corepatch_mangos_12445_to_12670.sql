-- 12465
ALTER TABLE db_version CHANGE COLUMN required_12441_01_mangos_npc_spellclick_spells required_12465_01_mangos_spell_template bit;

DELETE FROM spell_template WHERE id=50574;
INSERT INTO spell_template (id, attr, attr_ex, attr_ex2, proc_flags, proc_chance, duration_index, effect0, effect0_implicit_target_a, effect0_implicit_target_b, effect0_radius_idx, effect0_apply_aura_name, effect0_misc_value, effect0_misc_value_b, effect0_trigger_spell, comments) VALUES
(50574, 0x00000100, 0x00000000, 0x00000000, 0x00000000, 101, 0, 90, 25, 0, 11, 0, 28042, 0, 0, 'Captain Brandon Kill Credit');

-- 12505
ALTER TABLE db_version CHANGE COLUMN required_12465_01_mangos_spell_template required_12505_01_mangos_spell_template bit;

ALTER TABLE spell_template ADD COLUMN attr_ex3 int(11) unsigned NOT NULL DEFAULT '0' AFTER attr_ex2;

DELETE FROM spell_template WHERE id=23770;
INSERT INTO spell_template VALUES
(23770, 0x24800100, 0x10000088, 0x00000001, 0x00100000, 0x00000000, 101, 367,   6, 25,     0,   0,   4, 0,       0,    0,     'Sayge''s timer - Darkmoon Faire');

-- 12507
ALTER TABLE db_version CHANGE COLUMN required_12505_01_mangos_spell_template required_12507_01_mangos_spell_proc_event bit;

DELETE FROM spell_proc_event WHERE entry IN (67712, 67758);
INSERT INTO spell_proc_event VALUES
(67712, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 2),
(67758, 0x7F,  0, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000002, 0.000000, 0.000000, 2);

-- 12522
ALTER TABLE db_version CHANGE COLUMN required_12507_01_mangos_spell_proc_event required_12522_01_mangos_db_script_string bit;

ALTER TABLE db_script_string ADD COLUMN sound mediumint(8) unsigned NOT NULL DEFAULT '0' AFTER content_loc8;
ALTER TABLE db_script_string ADD COLUMN type tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER sound;
ALTER TABLE db_script_string ADD COLUMN language tinyint(3) unsigned NOT NULL DEFAULT '0' AFTER type;
ALTER TABLE db_script_string ADD COLUMN emote smallint(5) unsigned NOT NULL DEFAULT '0' AFTER language;
ALTER TABLE db_script_string ADD COLUMN comment text AFTER emote;

-- Update Dbscript_string with the type and language from Dbscripts_on_*
CREATE TABLE IF NOT EXISTS db_script_temp AS
-- dbscripts_on_creature_death
SELECT A.entry
    ,A.content_default
    ,A.content_loc1
    ,A.content_loc2
    ,A.content_loc3
    ,A.content_loc4
    ,A.content_loc5
    ,A.content_loc6
    ,A.content_loc7
    ,A.content_loc8
    ,0 AS sound
    ,B.datalong AS type
    ,B.datalong2 AS language
    ,0 AS emote
    ,NULL AS comment
FROM db_script_string A
INNER JOIN dbscripts_on_creature_death B ON (A.entry = B.dataint OR A.entry = B.dataint2 OR A.entry = B.dataint3 OR A.entry = B.dataint4)
-- dbscripts_on_creature_movement
UNION ALL
SELECT A.entry
    ,A.content_default
    ,A.content_loc1
    ,A.content_loc2
    ,A.content_loc3
    ,A.content_loc4
    ,A.content_loc5
    ,A.content_loc6
    ,A.content_loc7
    ,A.content_loc8
    ,0 AS sound
    ,B.datalong AS type
    ,B.datalong2 AS language
    ,0 AS emote
    ,NULL AS comment
FROM db_script_string A
INNER JOIN dbscripts_on_creature_movement B ON (A.entry = B.dataint OR A.entry = B.dataint2 OR A.entry = B.dataint3 OR A.entry = B.dataint4)
-- dbscripts_on_event
UNION ALL
SELECT A.entry
    ,A.content_default
    ,A.content_loc1
    ,A.content_loc2
    ,A.content_loc3
    ,A.content_loc4
    ,A.content_loc5
    ,A.content_loc6
    ,A.content_loc7
    ,A.content_loc8
    ,0 AS sound
    ,B.datalong AS type
    ,B.datalong2 AS language
    ,0 AS emote
    ,NULL AS comment
FROM db_script_string A
INNER JOIN dbscripts_on_event B ON (A.entry = B.dataint OR A.entry = B.dataint2 OR A.entry = B.dataint3 OR A.entry = B.dataint4)
-- dbscripts_on_gossip
UNION ALL
SELECT A.entry
    ,A.content_default
    ,A.content_loc1
    ,A.content_loc2
    ,A.content_loc3
    ,A.content_loc4
    ,A.content_loc5
    ,A.content_loc6
    ,A.content_loc7
    ,A.content_loc8
    ,0 AS sound
    ,B.datalong AS type
    ,B.datalong2 AS language
    ,0 AS emote
    ,NULL AS comment
FROM db_script_string A
INNER JOIN dbscripts_on_gossip B ON (A.entry = B.dataint OR A.entry = B.dataint2 OR A.entry = B.dataint3 OR A.entry = B.dataint4)
-- dbscripts_on_go_template_use
UNION ALL
SELECT A.entry
    ,A.content_default
    ,A.content_loc1
    ,A.content_loc2
    ,A.content_loc3
    ,A.content_loc4
    ,A.content_loc5
    ,A.content_loc6
    ,A.content_loc7
    ,A.content_loc8
    ,0 AS sound
    ,B.datalong AS type
    ,B.datalong2 AS language
    ,0 AS emote
    ,NULL AS comment
FROM db_script_string A
INNER JOIN dbscripts_on_go_template_use B ON (A.entry = B.dataint OR A.entry = B.dataint2 OR A.entry = B.dataint3 OR A.entry = B.dataint4)
-- dbscripts_on_go_use
UNION ALL
SELECT A.entry
    ,A.content_default
    ,A.content_loc1
    ,A.content_loc2
    ,A.content_loc3
    ,A.content_loc4
    ,A.content_loc5
    ,A.content_loc6
    ,A.content_loc7
    ,A.content_loc8
    ,0 AS sound
    ,B.datalong AS type
    ,B.datalong2 AS language
    ,0 AS emote
    ,NULL AS comment
FROM db_script_string A
INNER JOIN dbscripts_on_go_use B ON (A.entry = B.dataint OR A.entry = B.dataint2 OR A.entry = B.dataint3 OR A.entry = B.dataint4)
-- dbscripts_on_quest_end
UNION ALL
SELECT A.entry
    ,A.content_default
    ,A.content_loc1
    ,A.content_loc2
    ,A.content_loc3
    ,A.content_loc4
    ,A.content_loc5
    ,A.content_loc6
    ,A.content_loc7
    ,A.content_loc8
    ,0 AS sound
    ,B.datalong AS type
    ,B.datalong2 AS language
    ,0 AS emote
    ,NULL AS comment
FROM db_script_string A
INNER JOIN dbscripts_on_quest_end B ON (A.entry = B.dataint OR A.entry = B.dataint2 OR A.entry = B.dataint3 OR A.entry = B.dataint4)
-- dbscripts_on_quest_start
UNION ALL
SELECT A.entry
    ,A.content_default
    ,A.content_loc1
    ,A.content_loc2
    ,A.content_loc3
    ,A.content_loc4
    ,A.content_loc5
    ,A.content_loc6
    ,A.content_loc7
    ,A.content_loc8
    ,0 AS sound
    ,B.datalong AS type
    ,B.datalong2 AS language
    ,0 AS emote
    ,NULL AS comment
FROM db_script_string A
INNER JOIN dbscripts_on_quest_start B ON (A.entry = B.dataint OR A.entry = B.dataint2 OR A.entry = B.dataint3 OR A.entry = B.dataint4)
-- dbscripts_on_spell
UNION ALL
SELECT A.entry
    ,A.content_default
    ,A.content_loc1
    ,A.content_loc2
    ,A.content_loc3
    ,A.content_loc4
    ,A.content_loc5
    ,A.content_loc6
    ,A.content_loc7
    ,A.content_loc8
    ,0 AS sound
    ,B.datalong AS type
    ,B.datalong2 AS language
    ,0 AS emote
    ,NULL AS comment
FROM db_script_string A
INNER JOIN dbscripts_on_spell B ON (A.entry = B.dataint OR A.entry = B.dataint2 OR A.entry = B.dataint3 OR A.entry = B.dataint4);

-- Clean dbscript_string and insert the new updated values
DELETE FROM db_script_string WHERE entry IN (SELECT DISTINCT entry FROM db_script_temp);
INSERT INTO db_script_string SELECT * FROM db_script_temp GROUP BY entry;
DROP TABLE IF EXISTS db_script_temp;

-- 12534
ALTER TABLE db_version CHANGE COLUMN required_12522_01_mangos_db_script_string required_12534_01_mangos_playercreateinfo_spell bit;

DELETE FROM playercreateinfo_spell WHERE race=10 AND Spell=61437;
INSERT INTO playercreateinfo_spell (race, class, Spell, Note) VALUES
(10,2,61437,'Opening'),
(10,3,61437,'Opening'),
(10,4,61437,'Opening'),
(10,5,61437,'Opening'),
(10,6,61437,'Opening'),
(10,8,61437,'Opening'),
(10,9,61437,'Opening');

-- 12540
ALTER TABLE db_version CHANGE COLUMN required_12534_01_mangos_playercreateinfo_spell required_12540_01_mangos_command bit;

UPDATE `command` SET help = 'Syntax: .account create $account $password [$expansion]\r\n\r\nCreate account and set password to it. Optionally, you may also set another expansion for this account than the defined default value.' WHERE name = 'account create';

-- 12562
ALTER TABLE db_version CHANGE COLUMN required_12540_01_mangos_command required_12562_01_mangos_playercreateinfo_action bit;

ALTER TABLE playercreateinfo_action DROP INDEX playercreateinfo_race_class_index;

-- 12606
ALTER TABLE db_version CHANGE COLUMN required_12562_01_mangos_playercreateinfo_action required_12606_01_mangos_creature_template bit;

-- Rename and add new field to prepare upcoming patch

RENAME TABLE creature_template TO creature_template_old;
CREATE TABLE `creature_template` (
  `Entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Name` char(100) NOT NULL DEFAULT '',
  `SubName` char(100) DEFAULT NULL,
  `IconName` char(100) DEFAULT NULL,
  `MinLevel` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `MaxLevel` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `DifficultyEntry1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `DifficultyEntry2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `DifficultyEntry3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ModelId1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ModelId2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ModelId3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ModelId4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `FactionAlliance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `FactionHorde` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Scale` float NOT NULL DEFAULT '1',
  `Family` tinyint(4) NOT NULL DEFAULT '0',
  `CreatureType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `InhabitType` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `RegenerateHealth` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `RacialLeader` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `NpcFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `UnitFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `DynamicFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtraFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `CreatureTypeFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `SpeedWalk` float NOT NULL DEFAULT '1',
  `SpeedRun` float NOT NULL DEFAULT '1.14286',
  `UnitClass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Expansion` tinyint(3) NOT NULL DEFAULT '-1', -- NEW FIELD ADDED
  `HealthMultiplier` float NOT NULL DEFAULT '1',
  `ManaMultiplier` float NOT NULL DEFAULT '1',
  `DamageMultiplier` float NOT NULL DEFAULT '1',
  `DamageVariance` float NOT NULL DEFAULT '1', -- NEW FIELD ADDED
  `ArmorMultiplier` float NOT NULL DEFAULT '1', -- NEW FIELD ADDED
  `ExperienceMultiplier` float NOT NULL DEFAULT '1', -- NEW FIELD ADDED
  `MinLevelHealth` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxLevelHealth` int(10) unsigned NOT NULL DEFAULT '0',
  `MinLevelMana` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxLevelMana` int(10) unsigned NOT NULL DEFAULT '0',
  `MinMeleeDmg` float NOT NULL DEFAULT '0',
  `MaxMeleeDmg` float NOT NULL DEFAULT '0',
  `MinRangedDmg` float NOT NULL DEFAULT '0',
  `MaxRangedDmg` float NOT NULL DEFAULT '0',
  `Armor` int(10) unsigned NOT NULL DEFAULT '0',
  `MeleeAttackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `RangedAttackPower` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MeleeBaseAttackTime` int(10) unsigned NOT NULL DEFAULT '0',
  `RangedBaseAttackTime` int(10) unsigned NOT NULL DEFAULT '0',
  `DamageSchool` tinyint(4) NOT NULL DEFAULT '0',
  `MinLootGold` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `MaxLootGold` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `LootId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `PickpocketLootId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `SkinningLootId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `KillCredit1` int(11) unsigned NOT NULL DEFAULT '0',
  `KillCredit2` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestItem1` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestItem2` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestItem3` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestItem4` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestItem5` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestItem6` int(11) unsigned NOT NULL DEFAULT '0',
  `MechanicImmuneMask` int(10) unsigned NOT NULL DEFAULT '0',
  `ResistanceHoly` smallint(5) NOT NULL DEFAULT '0',
  `ResistanceFire` smallint(5) NOT NULL DEFAULT '0',
  `ResistanceNature` smallint(5) NOT NULL DEFAULT '0',
  `ResistanceFrost` smallint(5) NOT NULL DEFAULT '0',
  `ResistanceShadow` smallint(5) NOT NULL DEFAULT '0',
  `ResistanceArcane` smallint(5) NOT NULL DEFAULT '0',
  `PetSpellDataId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `MovementType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MovementTemplateId` int(11) unsigned NOT NULL DEFAULT '0',
  `TrainerType` tinyint(4) NOT NULL DEFAULT '0',
  `TrainerSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `TrainerClass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TrainerRace` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TrainerTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `VendorTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `EquipmentTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `VehicleTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `GossipMenuId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `AIName` char(64) NOT NULL DEFAULT '',
  `ScriptName` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';

INSERT INTO `creature_template` (`Entry`, `Name`, `SubName`, `IconName`, `MinLevel`, `MaxLevel`, `DifficultyEntry1`, `DifficultyEntry2`, `DifficultyEntry3`, `ModelId1`, `ModelId2`, `ModelId3`, `ModelId4`,
  `FactionAlliance`, `FactionHorde`, `Scale`, `Family`, `CreatureType`, `InhabitType`, `RegenerateHealth`, `RacialLeader`, `NpcFlags`, `UnitFlags`, `DynamicFlags`, `ExtraFlags`, `CreatureTypeFlags`,
  `SpeedWalk`, `SpeedRun`, `UnitClass`, `Rank`, `HealthMultiplier`, `ManaMultiplier`, `DamageMultiplier`, `MinLevelHealth`, `MaxLevelHealth`, `MinLevelMana`, `MaxLevelMana`, `MinMeleeDmg`, `MaxMeleeDmg`,
  `MinRangedDmg`, `MaxRangedDmg`, `Armor`, `MeleeAttackPower`, `RangedAttackPower`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `DamageSchool`, `MinLootGold`, `MaxLootGold`,
  `LootId`, `PickpocketLootId`, `SkinningLootId`, `KillCredit1`, `KillCredit2`, `QuestItem1`, `QuestItem2`, `QuestItem3`, `QuestItem4`, `QuestItem5`, `QuestItem6`, `MechanicImmuneMask`,
  `ResistanceHoly`, `ResistanceFire`, `ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`, `PetSpellDataId`, `MovementType`, `MovementTemplateId`, `TrainerType`, `TrainerSpell`,
  `TrainerClass`, `TrainerRace`, `TrainerTemplateId`, `VendorTemplateId`, `EquipmentTemplateId`, `VehicleTemplateId`, `GossipMenuId`, `AIName`, `ScriptName`)
SELECT `entry`, `name`, `subname`, `iconname`, `minlevel`, `maxlevel`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`,
  `faction_A`, `faction_H`, `scale`, `family`, `type`, `InhabitType`, `RegenHealth`, `RacialLeader`, `npcflag`, `unit_flags`, `dynamicflags`, `flags_extra`, `type_flags`,
  `speed_walk`, `speed_run`, `unit_class`, `rank`, `unk16`, `unk17`, `dmg_multiplier`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `minDmg`, `maxdmg`,
  `minrangedmg`, `maxrangedmg`, `armor`, `attackpower`, `rangedattackpower`, `baseattacktime`, `rangeattacktime`, `dmgschool`, `mingold`, `maxgold`,
  `lootid`, `pickpocketloot`, `skinloot`, `KillCredit1`, `KillCredit2`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`,
  `mechanic_immune_mask`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `PetSpellDataId`, `MovementType`, `movementId`, `trainer_type`, `trainer_spell`,
  `trainer_class`, `trainer_race`, `trainer_id`, `vendor_id`, `equipment_id`, `vehicle_id`, `gossip_menu_id`, `AIName`, `ScriptName`
FROM `creature_template_old` ORDER BY `entry`;

DROP TABLE `creature_template_old`;

-- 12615
ALTER TABLE db_version CHANGE COLUMN required_12606_01_mangos_creature_template required_12615_01_mangos_creature_template_classlevelstats bit;

DROP TABLE IF EXISTS `creature_template_classlevelstats`;

CREATE TABLE `creature_template_classlevelstats` (
  `Level` tinyint(4) NOT NULL,
  `Class` tinyint(4) NOT NULL,
  `BaseHealthExp0` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BaseHealthExp1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BaseHealthExp2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BaseMana` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BaseDamageExp0` float NOT NULL DEFAULT '0',
  `BaseDamageExp1` float NOT NULL DEFAULT '0',
  `BaseDamageExp2` float NOT NULL DEFAULT '0',
  `BaseMeleeAttackPower` float NOT NULL DEFAULT '0',
  `BaseRangedAttackPower` float NOT NULL DEFAULT '0',
  `BaseArmor` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Level`,`Class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 12654
ALTER TABLE db_version CHANGE COLUMN required_12615_01_mangos_creature_template_classlevelstats required_12654_01_mangos_creature_template_power bit;

ALTER TABLE creature_template CHANGE ManaMultiplier PowerMultiplier float NOT NULL DEFAULT '1';
ALTER TABLE creature_template CHANGE RegenerateHealth RegenerateStats tinyint(3) unsigned NOT NULL DEFAULT '3';
UPDATE creature_template SET RegenerateStats = RegenerateStats|2;

-- 12670
ALTER TABLE db_version CHANGE COLUMN required_12654_01_mangos_creature_template_power required_12670_01_mangos_spell_template bit;

DELETE FROM spell_template WHERE id=21883;
INSERT INTO spell_template VALUES
(21883, 0x00000180, 0x10000000, 0x00000000, 0x00000000, 0x00000000, 101, 225,  76,  22,    0,   0,   0, 178904,  0,    0,     'Summon Healed Celebrian Vine');

