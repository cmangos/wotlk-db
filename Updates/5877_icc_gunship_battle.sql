-- Icecrown Citadel Gunship Battle templates, spell lists and rewards.

-- Restrict each cannon to players of its owning faction.
INSERT IGNORE INTO `conditions`
    (`condition_entry`,`type`,`value1`,`value2`,`value3`,`value4`,`flags`,`comments`)
VALUES
    (21,6,67,0,0,0,0,'Horde Player'),
    (22,6,469,0,0,0,0,'Alliance Player');

DELETE FROM `npc_spellclick_spells`
WHERE `npc_entry` IN (36838,36839)
  AND `spell_id` = 70510;

INSERT INTO `npc_spellclick_spells`
    (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`condition_id`)
VALUES
    (36838,70510,0,0,0,1,22),
    (36839,70510,0,0,0,1,21);

-- 3.3.5 cannon spawn: rooted; heat is supplied by spells, not regeneration.
-- CreatureStaticFlags::SESSILE (0x100), NO_AUTOMATIC_REGEN (0x400).
UPDATE `creature_template`
SET `RegenerateStats` = `RegenerateStats` & ~12,
    `StaticFlags1` = `StaticFlags1` | 1280,
    `StaticFlags2` = `StaticFlags2` | 1024
WHERE `Entry` IN (36838,36839);

UPDATE creature_template difficulty
JOIN creature_template base ON difficulty.Entry IN (base.DifficultyEntry1,base.DifficultyEntry2,base.DifficultyEntry3)
SET difficulty.RegenerateStats = difficulty.RegenerateStats & ~12,
    difficulty.StaticFlags1 = difficulty.StaticFlags1 | 1280,
    difficulty.StaticFlags2 = difficulty.StaticFlags2 | 1024
WHERE base.Entry IN (36838,36839);

-- Keep routine combat rotations data-driven. Transport-aware target selection,
-- boarding, artillery, and Below Zero remain encounter-script responsibilities.
UPDATE `creature_template` SET `SpellList` = 3694801 WHERE `Entry` = 36948;
UPDATE `creature_template` SET `SpellList` = 3693901 WHERE `Entry` = 36939;
UPDATE `creature_template` SET `SpellList` = 3696101 WHERE `Entry` = 36961;
UPDATE `creature_template` SET `SpellList` = 3696001 WHERE `Entry` = 36960;

UPDATE creature_template difficulty
JOIN creature_template base ON difficulty.Entry IN (base.DifficultyEntry1,base.DifficultyEntry2,base.DifficultyEntry3)
SET difficulty.SpellList = base.SpellList
WHERE base.Entry IN (36948,36939,36961,36960);

DELETE FROM `creature_spell_list_entry`
WHERE `Id` IN (3694801,3693901,3696101,3696001);
INSERT INTO `creature_spell_list_entry`
(`Id`,`Name`,`ChanceSupportAction`,`ChanceRangedAttack`) VALUES
(3694801,'ICC - Gunship - Muradin Bronzebeard',0,0),
(3693901,'ICC - Gunship - High Overlord Saurfang',0,0),
(3696101,'ICC - Gunship - Skybreaker Sergeant',0,0),
(3696001,'ICC - Gunship - Kor''kron Sergeant',0,0);

-- Unit condition 741 selects the current target; 0x80 excludes melee range.
DELETE FROM creature_spell_targeting WHERE Id = 3693901;
INSERT INTO creature_spell_targeting (Id,Type,Param1,Param2,Param3,UnitCondition,Comments)
VALUES (3693901,1,1,0,128,741,'Gunship captain - current target outside melee range');

DELETE FROM `creature_spell_list`
WHERE `Id` IN (3694801,3693901,3696101,3696001);
INSERT INTO `creature_spell_list`
(`Id`,`Position`,`SpellId`,`Flags`,`CombatCondition`,`TargetId`,`ScriptId`,
 `Availability`,`Probability`,`InitialMin`,`InitialMax`,`RepeatMin`,`RepeatMax`,`Comments`) VALUES
(3694801,1,69634,0,-1,3693901,0,100,1,3000,6000,3000,6000,'Muradin Bronzebeard - Rending Throw'),
(3693901,1,69634,0,-1,3693901,0,100,1,3000,6000,3000,6000,'High Overlord Saurfang - Rending Throw'),
(3694801,0,15284,0,-1,1,0,100,1,2000,10000,2000,10000,'Muradin Bronzebeard - Cleave'),
(3693901,0,15284,0,-1,1,0,100,1,2000,10000,2000,10000,'High Overlord Saurfang - Cleave'),
(3696101,0,69652,0,-1,2,0,100,1,13000,18000,25000,30000,'Skybreaker Sergeant - Bladestorm'),
(3696101,1,69651,0,-1,1,0,100,1,8000,10000,9000,13000,'Skybreaker Sergeant - Wounding Strike'),
(3696001,0,69652,0,-1,2,0,100,1,13000,18000,25000,30000,'Kor''kron Sergeant - Bladestorm'),
(3696001,1,69651,0,-1,1,0,100,1,8000,10000,9000,13000,'Kor''kron Sergeant - Wounding Strike');

-- Runtime fields belong to the world database rather than scriptdev2.sql.
UPDATE `creature_template`
SET `RegenerateStats`=`RegenerateStats` & ~2
WHERE `Entry` IN
    (36939,36948,37215,37540,38128,38129,38699,38700,38701,38702,
     36950,36957,36960,36961,36968,36969,36978,36982,37116,37117);

UPDATE `creature_template`
SET `NpcFlags`=`NpcFlags` | 1
WHERE `Entry`=37184;

UPDATE `broadcast_text` SET `ChatTypeID`=1
WHERE `Id` IN (37677,37678,37679,37680,37681,37682,37683,37685,37689,37691,37692,37694,37697,37698,37699,37700,37701,37702,37703,37704,37705,37708,37709,37710,37711,37712,37713);

UPDATE `broadcast_text`
SET `SoundEntriesID1` = CASE `Id`
    WHEN 37677 THEN 16962
    WHEN 37678 THEN 16963
    WHEN 37679 THEN 16964
    WHEN 37680 THEN 16965
    WHEN 37681 THEN 16966
    WHEN 37682 THEN 16967
    WHEN 37683 THEN 16968
    WHEN 37685 THEN 17093
    WHEN 37689 THEN 17087
    WHEN 37691 THEN 17088
    WHEN 37692 THEN 17089
    WHEN 37694 THEN 17090
    WHEN 37697 THEN 17091
    WHEN 37698 THEN 17092
    WHEN 37699 THEN 16969
    WHEN 37700 THEN 16954
    WHEN 37701 THEN 0
    WHEN 37702 THEN 16956
    WHEN 37703 THEN 16957
    WHEN 37704 THEN 16958
    WHEN 37705 THEN 16959
    WHEN 37708 THEN 17079
    WHEN 37709 THEN 0
    WHEN 37710 THEN 17081
    WHEN 37711 THEN 17082
    WHEN 37712 THEN 17083
    WHEN 37713 THEN 17084
    ELSE `SoundEntriesID1`
END
WHERE `Id` IN (37677,37678,37679,37680,37681,37682,37683,37685,37689,37691,37692,37694,37697,37698,37699,37700,37701,37702,37703,37704,37705,37708,37709,37710,37711,37712,37713);

-- Four-mode reward bindings and pools.
DELETE FROM `reference_loot_template` WHERE `entry` IN (12036,34251,34263,34275);
INSERT INTO `reference_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(12036,50340,0,1,1,1,0,'Muradin''s Spyglass'),
(12036,50787,0,1,1,1,0,'Frost Giant''s Cleaver'),
(12036,50788,0,1,1,1,0,'Bone Drake''s Enameled Boots'),
(12036,50789,0,1,1,1,0,'Icecrown Rampart Bracers'),
(12036,50790,0,1,1,1,0,'Abomination''s Bloody Ring'),
(12036,50791,0,1,1,1,0,'Saronite Gargoyle Cloak'),
(12036,50792,0,1,1,1,0,'Pauldrons of Lost Hope'),
(12036,50793,0,1,1,1,0,'Midnight Sun'),
(12036,50794,0,1,1,1,0,'Neverending Winter'),
(12036,50795,0,1,1,1,0,'Cord of Dark Suffering'),
(12036,50796,0,1,1,1,0,'Bracers of Pale Illumination'),
(12036,50797,0,1,1,1,0,'Ice-Reinforced Vrykul Helm'),
(34251,49998,0,1,1,1,0,'Shadowvault Slayer''s Cloak'),
(34251,49999,0,1,1,1,0,'Skeleton Lord''s Circle'),
(34251,50000,0,1,1,1,0,'Scourge Hunter''s Vambraces'),
(34251,50001,0,1,1,1,0,'Ikfirus''s Sack of Wonder'),
(34251,50002,0,1,1,1,0,'Polar Bear Claw Bracers'),
(34251,50003,0,1,1,1,0,'Boneguard Commander''s Pauldrons'),
(34251,50005,0,1,1,1,0,'Amulet of the Silent Eulogy'),
(34251,50006,0,1,1,1,0,'Corp''rethar Ceremonial Crown'),
(34251,50008,0,1,1,1,0,'Ring of Rapid Ascent'),
(34251,50009,0,1,1,1,0,'Boots of Unnatural Growth'),
(34251,50010,0,1,1,1,0,'Waistband of Righteous Fury'),
(34251,50011,0,1,1,1,0,'Gunship Captain''s Mittens'),
(34251,50352,0,1,1,1,0,'Corpse Tongue Coin'),
(34251,50359,0,1,1,1,0,'Althor''s Abacus'),
(34251,50411,0,1,1,1,0,'Scourgeborne Waraxe'),
(34263,50345,0,1,1,1,0,'Muradin''s Spyglass'),
(34263,51906,0,1,1,1,0,'Ice-Reinforced Vrykul Helm'),
(34263,51907,0,1,1,1,0,'Bracers of Pale Illumination'),
(34263,51908,0,1,1,1,0,'Cord of Dark Suffering'),
(34263,51909,0,1,1,1,0,'Neverending Winter'),
(34263,51910,0,1,1,1,0,'Midnight Sun'),
(34263,51911,0,1,1,1,0,'Pauldrons of Lost Hope'),
(34263,51912,0,1,1,1,0,'Saronite Gargoyle Cloak'),
(34263,51913,0,1,1,1,0,'Abomination''s Bloody Ring'),
(34263,51914,0,1,1,1,0,'Icecrown Rampart Bracers'),
(34263,51915,0,1,1,1,0,'Bone Drake''s Enameled Boots'),
(34263,51916,0,1,1,1,0,'Frost Giant''s Cleaver'),
(34275,50349,0,1,1,1,0,'Corpse Tongue Coin'),
(34275,50366,0,1,1,1,0,'Althor''s Abacus'),
(34275,50653,0,1,1,1,0,'Shadowvault Slayer''s Cloak'),
(34275,50654,0,1,1,1,0,'Scourgeborne Waraxe'),
(34275,50655,0,1,1,1,0,'Scourge Hunter''s Vambraces'),
(34275,50656,0,1,1,1,0,'Ikfirus''s Sack of Wonder'),
(34275,50657,0,1,1,1,0,'Skeleton Lord''s Circle'),
(34275,50658,0,1,1,1,0,'Amulet of the Silent Eulogy'),
(34275,50659,0,1,1,1,0,'Polar Bear Claw Bracers'),
(34275,50660,0,1,1,1,0,'Boneguard Commander''s Pauldrons'),
(34275,50661,0,1,1,1,0,'Corp''rethar Ceremonial Crown'),
(34275,50663,0,1,1,1,0,'Gunship Captain''s Mittens'),
(34275,50664,0,1,1,1,0,'Ring of Rapid Ascent'),
(34275,50665,0,1,1,1,0,'Boots of Unnatural Growth'),
(34275,50667,0,1,1,1,0,'Waistband of Righteous Fury');
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (28045,28057,28072,28090);
INSERT INTO `gameobject_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(28045,12036,100,0,-12036,2,0,'Gunship Armory - (ReferenceTable)'),
(28045,49426,100,0,2,2,0,'Gunship Armory - Emblem of Frost'),
(28057,34263,100,0,-34263,2,0,'Gunship Armory - (ReferenceTable)'),
(28057,49426,100,0,2,2,0,'Gunship Armory - Emblem of Frost'),
(28057,49908,38,0,1,1,0,'Gunship Armory - Primordial Saronite'),
(28072,34251,100,0,-34251,3,0,'Gunship Armory - (ReferenceTable)'),
(28072,49426,100,0,2,2,0,'Gunship Armory - Emblem of Frost'),
(28072,49908,38,0,1,1,0,'Gunship Armory - Primordial Saronite'),
(28072,50274,-35,0,1,1,0,'Gunship Armory - Shadowfrost Shard'),
(28090,34275,100,0,-34275,3,0,'Gunship Armory - (ReferenceTable)'),
(28090,49426,100,0,2,2,0,'Gunship Armory - Emblem of Frost'),
(28090,49908,50,0,1,1,0,'Gunship Armory - Primordial Saronite'),
(28090,50274,-75,0,1,1,0,'Gunship Armory - Shadowfrost Shard');
REPLACE INTO `reference_loot_template_names` (`entry`,`name`) VALUES
(12036,'ICC Gunship 10 Normal'),
(34251,'ICC Gunship 25 Normal'),
(34263,'ICC Gunship 10 Heroic'),
(34275,'ICC Gunship 25 Heroic');

UPDATE `gameobject_template` SET `mingold`=800000,  `maxgold`=900000  WHERE `entry`=201873;
UPDATE `gameobject_template` SET `mingold`=2000000, `maxgold`=2250000 WHERE `entry`=201874;
UPDATE `gameobject_template` SET `mingold`=1000000, `maxgold`=1200000 WHERE `entry`=201872;
UPDATE `gameobject_template` SET `mingold`=2000000, `maxgold`=2250000 WHERE `entry`=201875;
