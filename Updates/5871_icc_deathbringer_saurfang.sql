-- Icecrown Citadel: Deathbringer Saurfang spell list and reward cache.

START TRANSACTION;

-- Both faction-specific intro leaders use the same encounter gossip script.
UPDATE `creature_template`
SET `ScriptName` = 'npc_saurfang_intro_leader'
WHERE `Entry` IN (37187, 37200);

UPDATE `creature_template`
SET `SpellList` = 3781301
WHERE `Entry` = 37813;

DELETE FROM `creature_spell_list`
WHERE `Id` = 3781301;

DELETE FROM `creature_spell_list_entry`
WHERE `Id` = 3781301;

INSERT INTO `creature_spell_list_entry`
    (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`)
VALUES
    (3781301, 'Icecrown Citadel - Deathbringer Saurfang', 0, 0);

INSERT INTO `creature_spell_list`
    (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`,
     `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`,
     `RepeatMin`, `RepeatMax`, `Comments`)
VALUES
    (3781301, 0, 72410, 0, -1, 1, 0, 100, 1, 20000, 20000, 20000, 25000,
     'Deathbringer Saurfang - Rune of Blood'),
    (3781301, 1, 72385, 0, -1, 2, 0, 100, 1, 15500, 15500, 15000, 20000,
     'Deathbringer Saurfang - Boiling Blood'),
    (3781301, 2, 72378, 0, -1, 2, 0, 100, 1, 17000, 17000, 20000, 25000,
     'Deathbringer Saurfang - Blood Nova');

DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN 65005 AND 65010;
INSERT INTO `reference_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(65005,50798,0,1,1,1,0,'Ramaladni''s Blade of Culling'),
(65005,50799,0,1,1,1,0,'Scourge Stranglers'),
(65005,50800,0,1,1,1,0,'Hauberk of a Thousand Cuts'),
(65005,50801,0,1,1,1,0,'Blade-Scored Carapace'),
(65005,50802,0,1,1,1,0,'Gargoyle Spit Bracers'),
(65005,50803,0,1,1,1,0,'Saurfang''s Cold-Forged Band'),
(65005,50804,0,1,1,1,0,'Icecrown Spire Sandals'),
(65005,50805,0,1,1,1,0,'Mag''hari Chieftain''s Staff'),
(65005,50806,0,1,1,1,0,'Leggings of Unrelenting Blood'),
(65005,50807,0,1,1,1,0,'Thaumaturge''s Crackling Cowl'),
(65005,50808,0,1,1,1,0,'Deathforged Legplates'),
(65005,50809,0,1,1,1,0,'Soulcleave Pendant'),
(65006,51894,0,1,1,1,0,'Soulcleave Pendant heroic'),
(65006,51895,0,1,1,1,0,'Deathforged Legplates heroic'),
(65006,51896,0,1,1,1,0,'Thaumaturge''s Crackling Cowl heroic'),
(65006,51897,0,1,1,1,0,'Leggings of Unrelenting Blood heroic'),
(65006,51898,0,1,1,1,0,'Mag''hari Chieftain''s Staff heroic'),
(65006,51899,0,1,1,1,0,'Icecrown Spire Sandals heroic'),
(65006,51900,0,1,1,1,0,'Saurfang''s Cold-Forged Band heroic'),
(65006,51901,0,1,1,1,0,'Gargoyle Spit Bracers heroic'),
(65006,51902,0,1,1,1,0,'Blade-Scored Carapace heroic'),
(65006,51903,0,1,1,1,0,'Hauberk of a Thousand Cuts heroic'),
(65006,51904,0,1,1,1,0,'Scourge Stranglers heroic'),
(65006,51905,0,1,1,1,0,'Ramaladni''s Blade of Culling heroic'),
(65007,50014,0,1,1,1,0,'Greatcloak of the Turned Champion'),
(65007,50015,0,1,1,1,0,'Belt of the Blood Nova'),
(65007,50333,0,1,1,1,0,'Toskk''s Maximized Wristguards'),
(65007,50362,0,1,1,1,0,'Deathbringer''s Will'),
(65007,50412,0,1,1,1,0,'Bloodvenom Blade'),
(65008,50363,0,1,1,1,0,'Deathbringer''s Will heroic'),
(65008,50668,0,1,1,1,0,'Greatcloak of the Turned Champion heroic'),
(65008,50670,0,1,1,1,0,'Toskk''s Maximized Wristguards heroic'),
(65008,50671,0,1,1,1,0,'Belt of the Blood Nova heroic'),
(65008,50672,0,1,1,1,0,'Bloodvenom Blade heroic'),
(65009,52025,0,1,1,1,0,'Vanquisher''s Mark of Sanctification'),
(65009,52026,0,1,1,1,0,'Protector''s Mark of Sanctification'),
(65009,52027,0,1,1,1,0,'Conqueror''s Mark of Sanctification'),
(65010,52028,0,1,1,1,0,'Vanquisher''s Mark of Sanctification heroic'),
(65010,52029,0,1,1,1,0,'Protector''s Mark of Sanctification heroic'),
(65010,52030,0,1,1,1,0,'Conqueror''s Mark of Sanctification heroic');

REPLACE INTO `reference_loot_template_names` (`entry`,`name`) VALUES
(65005,'ICC Saurfang 10 Normal'),
(65006,'ICC Saurfang 10 Heroic'),
(65007,'ICC Saurfang 25 Normal'),
(65008,'ICC Saurfang 25 Heroic'),
(65009,'ICC Mark of Sanctification'),
(65010,'ICC Heroic Mark of Sanctification');

-- Reward-cache money is stored on the difficulty-specific GO templates.
UPDATE `gameobject_template` SET `mingold` = 800000,  `maxgold` = 900000  WHERE `entry` = 202239; -- 10 normal
UPDATE `gameobject_template` SET `mingold` = 2000000, `maxgold` = 2250000 WHERE `entry` = 202240; -- 25 normal
UPDATE `gameobject_template` SET `mingold` = 1000000, `maxgold` = 1200000 WHERE `entry` = 202238; -- 10 heroic
UPDATE `gameobject_template` SET `mingold` = 2000000, `maxgold` = 2250000 WHERE `entry` = 202241; -- 25 heroic

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (28046,28058,28074,28088);
INSERT INTO `gameobject_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(28046,65005,100,0,-65005,2,0,'Two items: Saurfang 10 normal'),
(28046,49426,100,0,2,2,0,'Emblem of Frost x2'),
(28058,65006,100,0,-65006,2,0,'Two items: Saurfang 10 heroic'),
(28058,65009,100,0,-65009,1,0,'One normal Sanctification mark'),
(28058,49426,100,0,2,2,0,'Emblem of Frost x2'),
(28058,49908,20,0,1,1,0,'Primordial Saronite'),
(28074,65007,100,0,-65007,1,0,'One item: Saurfang 25 normal'),
(28074,65009,100,0,-65009,2,0,'Two normal Sanctification marks'),
(28074,49426,100,0,2,2,0,'Emblem of Frost x2'),
(28074,49908,20,0,1,1,0,'Primordial Saronite'),
(28088,65008,100,0,-65008,1,0,'One item: Saurfang 25 heroic'),
(28088,65009,100,0,-65009,2,0,'Two normal Sanctification marks'),
(28088,65010,100,0,-65010,1,0,'One heroic Sanctification mark'),
(28088,49426,100,0,2,2,0,'Emblem of Frost x2'),
(28088,49908,20,0,1,1,0,'Primordial Saronite');

DELETE FROM `gameobject`
WHERE `map` = 631
  AND `id` IN (202238,202239,202240,202241);
DELETE FROM `gameobject` WHERE `guid` BETWEEN 6319109 AND 6319112;

INSERT INTO `gameobject`
(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecsmin`,`spawntimesecsmax`) VALUES
(6319109,202239,631,1,1,-489.72,2172.07,539.289,2.65289,0,0,0.970295,0.241925,-604800,-604800),
(6319110,202240,631,2,1,-489.72,2172.07,539.289,2.65289,0,0,0.970295,0.241925,-604800,-604800),
(6319111,202238,631,4,1,-489.72,2172.07,539.289,2.65289,0,0,0.970295,0.241925,-604800,-604800),
(6319112,202241,631,8,1,-489.72,2172.07,539.289,2.65289,0,0,0.970295,0.241925,-604800,-604800);

COMMIT;

-- High Overlord Saurfang, rather than Muradin, walks path 3 in the Alliance outro.
UPDATE `dbscripts_on_creature_movement`
SET `data_flags`=0
WHERE `id`=3720002
  AND `delay`=26000
  AND `command`=20
  AND `buddy_entry`=37187;

-- Final tested ICC data: saurfang
START TRANSACTION;

-- BroadcastText records absent from the base world database.
INSERT IGNORE INTO `broadcast_text`
(`Id`,`Text`,`Text1`,`ChatTypeID`,`LanguageID`,`ConditionID`,`EmotesID`,`Flags`,
 `SoundEntriesID1`,`SoundEntriesID2`,`EmoteID1`,`EmoteID2`,`EmoteID3`,
 `EmoteDelay1`,`EmoteDelay2`,`EmoteDelay3`,`VerifiedBuild`) VALUES
(37457,'Let\'s get a move on then! Move ou...','',1,0,0,0,0,16974,0,0,0,0,0,0,0,12340),
(37458,'For every Horde soldier that you killed -- for every Alliance dog that fell, the Lich King\'s armies grew. Even now the val\'kyr work to raise your fallen as Scourge.\n','',1,0,0,0,0,16701,0,0,0,0,0,0,0,12340),
(38508,'This is the beginning AND the end, mortals. None may enter the master\'s sanctum!','',1,0,0,0,0,16950,0,0,0,0,0,0,0,12340),
(38631,'%s\'s Blood Beasts gain the scent of blood!','',3,0,0,0,0,0,0,0,0,0,0,0,0,12340);

UPDATE `broadcast_text` SET `ChatTypeID`=0
WHERE `Id` IN (37503,37504,37524,37525,37526,37527,37528,37529,37530,37543,37545,37546,37547,37638,37640,37641,37642,37648,37649);

UPDATE `broadcast_text` SET `ChatTypeID`=1
WHERE `Id` IN (37457,37458,37459,37460,37461,37471,37477,37505,37634,37635,37639,37644,37991,37992,37994,37995,38464,38466,38508);

UPDATE `broadcast_text` SET `ChatTypeID`=2
WHERE `Id` IN (37502,37531,37542,37544,37643,37646,37647);

UPDATE `broadcast_text` SET `ChatTypeID`=3
WHERE `Id` IN (38630,38631);

UPDATE `broadcast_text`
SET `SoundEntriesID1` = CASE `Id`
    WHEN 37457 THEN 16974
    WHEN 37458 THEN 16701
    WHEN 37459 THEN 16702
    WHEN 37460 THEN 16970
    WHEN 37461 THEN 16971
    WHEN 37471 THEN 16703
    WHEN 37477 THEN 16697
    WHEN 37502 THEN 16975
    WHEN 37503 THEN 16976
    WHEN 37504 THEN 16977
    WHEN 37505 THEN 16978
    WHEN 37524 THEN 16972
    WHEN 37525 THEN 17094
    WHEN 37526 THEN 16973
    WHEN 37527 THEN 16690
    WHEN 37528 THEN 17096
    WHEN 37529 THEN 17095
    WHEN 37530 THEN 16691
    WHEN 37531 THEN 0
    WHEN 37542 THEN 16651
    WHEN 37543 THEN 16692
    WHEN 37544 THEN 0
    WHEN 37545 THEN 16693
    WHEN 37546 THEN 16652
    WHEN 37547 THEN 16979
    WHEN 37634 THEN 17103
    WHEN 37635 THEN 16704
    WHEN 37638 THEN 17097
    WHEN 37639 THEN 16705
    WHEN 37640 THEN 17098
    WHEN 37641 THEN 17099
    WHEN 37642 THEN 17100
    WHEN 37643 THEN 17104
    WHEN 37644 THEN 16706
    WHEN 37646 THEN 17105
    WHEN 37647 THEN 17106
    WHEN 37648 THEN 17101
    WHEN 37649 THEN 17102
    WHEN 37991 THEN 16695
    WHEN 37992 THEN 16696
    WHEN 37994 THEN 16698
    WHEN 37995 THEN 16699
    WHEN 38464 THEN 16694
    WHEN 38466 THEN 16700
    WHEN 38508 THEN 16950
    WHEN 38630 THEN 0
    WHEN 38631 THEN 0
    ELSE `SoundEntriesID1`
END
WHERE `Id` IN (37457,37458,37459,37460,37461,37471,37477,37502,37503,37504,37505,37524,37525,37526,37527,37528,37529,37530,37531,37542,37543,37544,37545,37546,37547,37634,37635,37638,37639,37640,37641,37642,37643,37644,37646,37647,37648,37649,37991,37992,37994,37995,38464,38466,38508,38630,38631);

UPDATE `broadcast_text` SET `LanguageID`=1 WHERE `Id`=37528;

-- Four-mode reward bindings and pools.
DELETE FROM `reference_loot_template` WHERE `entry` IN (34240,34252,34264,34276,34278,34279);
INSERT INTO `reference_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(34278,52025,0,1,1,1,0,'Vanquisher''s Mark of Sanctification'),
(34278,52026,0,1,1,1,0,'Protector''s Mark of Sanctification'),
(34278,52027,0,1,1,1,0,'Conqueror''s Mark of Sanctification'),
(34279,52028,0,1,1,1,0,'Vanquisher''s Mark of Sanctification'),
(34279,52029,0,1,1,1,0,'Protector''s Mark of Sanctification'),
(34279,52030,0,1,1,1,0,'Conqueror''s Mark of Sanctification'),
(34240,50798,0,1,1,1,0,'Ramaladni''s Blade of Culling'),
(34240,50799,0,1,1,1,0,'Scourge Stranglers'),
(34240,50800,0,1,1,1,0,'Hauberk of a Thousand Cuts'),
(34240,50801,0,1,1,1,0,'Blade-Scored Carapace'),
(34240,50802,0,1,1,1,0,'Gargoyle Spit Bracers'),
(34240,50803,0,1,1,1,0,'Saurfang''s Cold-Forged Band'),
(34240,50804,0,1,1,1,0,'Icecrown Spire Sandals'),
(34240,50805,0,1,1,1,0,'Mag''hari Chieftain''s Staff'),
(34240,50806,0,1,1,1,0,'Leggings of Unrelenting Blood'),
(34240,50807,0,1,1,1,0,'Thaumaturge''s Crackling Cowl'),
(34240,50808,0,1,1,1,0,'Deathforged Legplates'),
(34240,50809,0,1,1,1,0,'Soulcleave Pendant'),
(34252,50014,0,1,1,1,0,'Greatcloak of the Turned Champion'),
(34252,50015,0,1,1,1,0,'Belt of the Blood Nova'),
(34252,50333,0,1,1,1,0,'Toskk''s Maximized Wristguards'),
(34252,50362,0,1,1,1,0,'Deathbringer''s Will'),
(34252,50412,0,1,1,1,0,'Bloodvenom Blade'),
(34264,51894,0,1,1,1,0,'Soulcleave Pendant'),
(34264,51895,0,1,1,1,0,'Deathforged Legplates'),
(34264,51896,0,1,1,1,0,'Thaumaturge''s Crackling Cowl'),
(34264,51897,0,1,1,1,0,'Leggings of Unrelenting Blood'),
(34264,51898,0,1,1,1,0,'Mag''hari Chieftain''s Staff'),
(34264,51899,0,1,1,1,0,'Icecrown Spire Sandals'),
(34264,51900,0,1,1,1,0,'Saurfang''s Cold-Forged Band'),
(34264,51901,0,1,1,1,0,'Gargoyle Spit Bracers'),
(34264,51902,0,1,1,1,0,'Blade-Scored Carapace'),
(34264,51903,0,1,1,1,0,'Hauberk of a Thousand Cuts'),
(34264,51904,0,1,1,1,0,'Scourge Stranglers'),
(34264,51905,0,1,1,1,0,'Ramaladni''s Blade of Culling'),
(34276,50363,0,1,1,1,0,'Deathbringer''s Will'),
(34276,50668,0,1,1,1,0,'Greatcloak of the Turned Champion'),
(34276,50670,0,1,1,1,0,'Toskk''s Maximized Wristguards'),
(34276,50671,0,1,1,1,0,'Belt of the Blood Nova'),
(34276,50672,0,1,1,1,0,'Bloodvenom Blade');
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (28046,28058,28074,28088);
INSERT INTO `gameobject_loot_template`
(`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`,`condition_id`,`comments`) VALUES
(28046,34240,100,0,-34240,2,0,'Deathbringer''s Cache - (ReferenceTable)'),
(28046,49426,100,0,2,2,0,'Deathbringer''s Cache - Emblem of Frost'),
(28058,34264,100,0,-34264,2,0,'Deathbringer''s Cache - (ReferenceTable)'),
(28058,34278,100,0,-34278,1,0,'Deathbringer''s Cache - (ReferenceTable)'),
(28058,49426,100,0,2,2,0,'Deathbringer''s Cache - Emblem of Frost'),
(28058,49908,20,0,1,1,0,'Deathbringer''s Cache - Primordial Saronite'),
(28074,34252,100,0,-34252,1,0,'Deathbringer''s Cache - (ReferenceTable)'),
(28074,34278,100,0,-34278,2,0,'Deathbringer''s Cache - (ReferenceTable)'),
(28074,49426,100,0,2,2,0,'Deathbringer''s Cache - Emblem of Frost'),
(28074,49908,20,0,1,1,0,'Deathbringer''s Cache - Primordial Saronite'),
(28074,50274,-38,0,1,1,0,'Deathbringer''s Cache - Shadowfrost Shard'),
(28088,34276,100,0,-34276,1,0,'Deathbringer''s Cache - (ReferenceTable)'),
(28088,34278,100,0,-34278,2,0,'Deathbringer''s Cache - (ReferenceTable)'),
(28088,34279,100,0,-34279,1,0,'Deathbringer''s Cache - (ReferenceTable)'),
(28088,49426,100,0,2,2,0,'Deathbringer''s Cache - Emblem of Frost'),
(28088,49908,20,0,1,1,0,'Deathbringer''s Cache - Primordial Saronite'),
(28088,50274,-68,0,1,1,0,'Deathbringer''s Cache - Shadowfrost Shard');
REPLACE INTO `reference_loot_template_names` (`entry`,`name`) VALUES
(34240,'ICC Saurfang 10 Normal'),
(34252,'ICC Saurfang 25 Normal'),
(34264,'ICC Saurfang 10 Heroic'),
(34276,'ICC Saurfang 25 Heroic'),
(34278,'ICC Mark of Sanctification'),
(34279,'ICC Heroic Mark of Sanctification');

COMMIT;
