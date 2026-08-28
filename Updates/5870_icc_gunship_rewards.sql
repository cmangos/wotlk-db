-- Icecrown Citadel Gunship Battle reward caches for all four raid modes.

START TRANSACTION;

DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN 65001 AND 65004;
INSERT INTO `reference_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(65001,50340,0,1,1,1,0,'Muradin''s Spyglass'),
(65001,50787,0,1,1,1,0,'Frost Giant''s Cleaver'),
(65001,50788,0,1,1,1,0,'Bone Drake''s Enameled Boots'),
(65001,50789,0,1,1,1,0,'Icecrown Rampart Bracers'),
(65001,50790,0,1,1,1,0,'Abomination''s Bloody Ring'),
(65001,50791,0,1,1,1,0,'Saronite Gargoyle Cloak'),
(65001,50792,0,1,1,1,0,'Pauldrons of Lost Hope'),
(65001,50793,0,1,1,1,0,'Midnight Sun'),
(65001,50794,0,1,1,1,0,'Neverending Winter'),
(65001,50795,0,1,1,1,0,'Cord of Dark Suffering'),
(65001,50796,0,1,1,1,0,'Bracers of Pale Illumination'),
(65001,50797,0,1,1,1,0,'Ice-Reinforced Vrykul Helm'),
(65002,49998,0,1,1,1,0,'Shadowvault Slayer''s Cloak'),
(65002,49999,0,1,1,1,0,'Skeleton Lord''s Circle'),
(65002,50000,0,1,1,1,0,'Scourge Hunter''s Vambraces'),
(65002,50001,0,1,1,1,0,'Ikfirus'' Sack of Wonder'),
(65002,50002,0,1,1,1,0,'Polar Bear Claw Bracers'),
(65002,50003,0,1,1,1,0,'Boneguard Commander''s Pauldrons'),
(65002,50005,0,1,1,1,0,'Amulet of the Silent Eulogy'),
(65002,50006,0,1,1,1,0,'Corp''rethar Ceremonial Crown'),
(65002,50008,0,1,1,1,0,'Ring of Rapid Ascent'),
(65002,50009,0,1,1,1,0,'Boots of Unnatural Growth'),
(65002,50010,0,1,1,1,0,'Waistband of Righteous Fury'),
(65002,50011,0,1,1,1,0,'Gunship Captain''s Mittens'),
(65002,50352,0,1,1,1,0,'Corpse Tongue Coin'),
(65002,50359,0,1,1,1,0,'Althor''s Abacus'),
(65002,50411,0,1,1,1,0,'Scourgeborne Waraxe'),
(65003,50345,0,1,1,1,0,'Muradin''s Spyglass heroic'),
(65003,51906,0,1,1,1,0,'Ice-Reinforced Vrykul Helm heroic'),
(65003,51907,0,1,1,1,0,'Bracers of Pale Illumination heroic'),
(65003,51908,0,1,1,1,0,'Cord of Dark Suffering heroic'),
(65003,51909,0,1,1,1,0,'Neverending Winter heroic'),
(65003,51910,0,1,1,1,0,'Midnight Sun heroic'),
(65003,51911,0,1,1,1,0,'Pauldrons of Lost Hope heroic'),
(65003,51912,0,1,1,1,0,'Saronite Gargoyle Cloak heroic'),
(65003,51913,0,1,1,1,0,'Abomination''s Bloody Ring heroic'),
(65003,51914,0,1,1,1,0,'Icecrown Rampart Bracers heroic'),
(65003,51915,0,1,1,1,0,'Bone Drake''s Enameled Boots heroic'),
(65003,51916,0,1,1,1,0,'Frost Giant''s Cleaver heroic'),
(65004,50349,0,1,1,1,0,'Corpse Tongue Coin heroic'),
(65004,50366,0,1,1,1,0,'Althor''s Abacus heroic'),
(65004,50653,0,1,1,1,0,'Shadowvault Slayer''s Cloak heroic'),
(65004,50654,0,1,1,1,0,'Scourgeborne Waraxe heroic'),
(65004,50655,0,1,1,1,0,'Scourge Hunter''s Vambraces heroic'),
(65004,50656,0,1,1,1,0,'Ikfirus'' Sack of Wonder heroic'),
(65004,50657,0,1,1,1,0,'Skeleton Lord''s Circle heroic'),
(65004,50658,0,1,1,1,0,'Amulet of the Silent Eulogy heroic'),
(65004,50659,0,1,1,1,0,'Polar Bear Claw Bracers heroic'),
(65004,50660,0,1,1,1,0,'Boneguard Commander''s Pauldrons heroic'),
(65004,50661,0,1,1,1,0,'Corp''rethar Ceremonial Crown heroic'),
(65004,50663,0,1,1,1,0,'Gunship Captain''s Mittens heroic'),
(65004,50664,0,1,1,1,0,'Ring of Rapid Ascent heroic'),
(65004,50665,0,1,1,1,0,'Boots of Unnatural Growth heroic'),
(65004,50667,0,1,1,1,0,'Waistband of Righteous Fury heroic');

REPLACE INTO `reference_loot_template_names` (`entry`,`name`) VALUES
(65001,'ICC Gunship 10 Normal'),
(65002,'ICC Gunship 25 Normal'),
(65003,'ICC Gunship 10 Heroic'),
(65004,'ICC Gunship 25 Heroic');

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (28045,28057,28072,28090);
INSERT INTO `gameobject_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(28045,65001,100,0,-65001,2,0,'Two items: Gunship 10 normal'),
(28045,49426,100,0,2,2,0,'Emblem of Frost x2'),
(28072,65002,100,0,-65002,3,0,'Three items: Gunship 25 normal'),
(28072,49426,100,0,2,2,0,'Emblem of Frost x2'),
(28072,49908,38,0,1,1,0,'Primordial Saronite'),
(28057,65003,100,0,-65003,2,0,'Two items: Gunship 10 heroic'),
(28057,49426,100,0,2,2,0,'Emblem of Frost x2'),
(28057,49908,38,0,1,1,0,'Primordial Saronite'),
(28090,65004,100,0,-65004,3,0,'Three items: Gunship 25 heroic'),
(28090,49426,100,0,2,2,0,'Emblem of Frost x2'),
(28090,49908,50,0,1,1,0,'Primordial Saronite');

DELETE FROM `gameobject`
WHERE `map` IN (672,673)
  AND `id` IN (201872,201873,201874,201875,202177,202178,202179,202180);
DELETE FROM `gameobject` WHERE `guid` BETWEEN 6319101 AND 6319108;

INSERT INTO `gameobject`
(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`) VALUES
(6319101,201873,672,1,1,-45.4489,-0.062003,20.564,0.26977,0,0,0.134476,0.990917,604800,604800),
(6319102,201874,672,2,1,-45.4489,-0.062003,20.564,0.26977,0,0,0.134476,0.990917,604800,604800),
(6319103,201872,672,4,1,-45.4489,-0.062003,20.564,0.26977,0,0,0.134476,0.990917,604800,604800),
(6319104,201875,672,8,1,-45.4489,-0.062003,20.564,0.26977,0,0,0.134476,0.990917,604800,604800),
(6319105,202178,673,1,1,-19.8726,-14.1748,33.6377,4.71239,0,0,0.707107,-0.707107,604800,604800),
(6319106,202180,673,2,1,-19.8726,-14.1748,33.6377,4.71239,0,0,0.707107,-0.707107,604800,604800),
(6319107,202177,673,4,1,-19.8726,-14.1748,33.6377,4.71239,0,0,0.707107,-0.707107,604800,604800),
(6319108,202179,673,8,1,-19.8726,-14.1748,33.6377,4.71239,0,0,0.707107,-0.707107,604800,604800);

COMMIT;

-- Runtime fields belong to the world database rather than scriptdev2.sql.
UPDATE `creature_template`
SET `RegenerateStats`=`RegenerateStats` & ~2
WHERE `Entry` IN
    (36939,36948,37215,37540,38128,38129,38699,38700,38701,38702,
     36950,36957,36960,36961,36968,36969,36978,36982,37116,37117);

UPDATE `creature_template`
SET `NpcFlags`=`NpcFlags` | 1
WHERE `Entry`=37184;

-- Final tested ICC data: gunship
START TRANSACTION;

-- BroadcastText records absent from the base world database.
INSERT IGNORE INTO `broadcast_text`
(`Id`,`Text`,`Text1`,`ChatTypeID`,`LanguageID`,`ConditionID`,`EmotesID`,`Flags`,
 `SoundEntriesID1`,`SoundEntriesID2`,`EmoteID1`,`EmoteID2`,`EmoteID3`,
 `EmoteDelay1`,`EmoteDelay2`,`EmoteDelay3`,`VerifiedBuild`) VALUES
(37677,'Fire up the engines! We got a meetin\' with destiny, lads!','',1,0,0,0,0,16962,0,0,0,0,0,0,0,12340),
(37680,'By me own beard! HORDE SAILIN\' IN FAST \'N HOT!','',1,0,0,0,0,16965,0,0,0,0,0,0,0,12340),
(37683,'Not me battle? I dunnae who ye think ye are, mister, but I got a score to settle with Arthas and yer not gettin\' in me way! FIRE ALL GUNS! FIRE! FIRE!','',1,0,0,0,0,16968,0,0,0,0,0,0,0,12340),
(37689,'Rise up, sons and daughters of the Horde! Today we battle a hated enemy of the Horde! LOK\'TAR OGAR!','',1,0,0,0,0,17087,0,0,0,0,0,0,0,12340),
(37691,'Kor\'kron, take us out!','',1,0,0,0,0,17088,0,0,0,0,0,0,0,12340),
(37698,'You will know our business soon. Kor\'kron, ANNIHILATE THEM!','',1,0,0,0,0,17092,0,0,0,0,0,0,0,12340),
(37699,'Move yer jalopy or we\'ll blow it out of the sky, orc! The Horde\'s got no business here.','',1,0,0,0,0,16969,0,0,0,0,0,0,0,12340),
(37703,'We\'re taking hull damage, get a sorcerer out here to shut down those cannons!','',1,0,0,0,0,16957,0,0,0,0,0,0,0,12340),
(37704,'What\'s this then?! Ye won\'t be takin\' this son o\' Ironforge\'s vessel without a fight!','',1,0,0,0,0,16958,0,0,0,0,0,0,0,12340),
(37705,'Don\'t say I didn\'t warn ya, scoundrels! Onward, brothers and sisters!','',1,0,0,0,0,16959,0,0,0,0,0,0,0,12340),
(37711,'We\'re taking hull damage, get a battle-mage out here to shut down those cannons!','',1,0,0,0,0,17082,0,0,0,0,0,0,0,12340);

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

COMMIT;
