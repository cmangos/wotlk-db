DELETE FROM `creature_spell_list` WHERE `Id` IN (3285700, 3286700, 3292700);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(3285700, 0, 61879,     0,     0,  2000,  2000, 2, 100, 0, 100, 0, 'Stormcaller Brundir (10) - Chain Lightning'),
(3285700, 1, 61869, 35000, 35000, 80000, 80000, 2,   0, 0, 100, 0, 'Stormcaller Brundir (10) - Overload'),
(3286700, 0, 61903, 15000, 15000, 15000, 15000, 0,   1, 0, 100, 0, 'Steelbreaker (10) - Fusion Punch'),
(3292700, 0, 61973, 15000, 15000, 45000, 45000, 3,   5, 0, 100, 0, 'Runemaster Molgeim (10) - Rune of Power'),
(3292700, 1, 62274, 25000, 25000, 40000, 40000, 2,   0, 0, 100, 0, 'Runemaster Molgeim (10) - Shield of Runes');

DELETE FROM `creature_spell_list` WHERE `Id` IN (3285701, 3286701, 3292701);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(3285701, 0, 61879,     0,     0,  2000,  2000, 2, 100, 0, 100, 0, 'Stormcaller Brundir (10) - Chain Lightning'),
(3285701, 1, 61869, 35000, 35000, 80000, 80000, 2,   0, 0, 100, 0, 'Stormcaller Brundir (10) - Overload'),
(3285701, 2, 61915,  4000,  4000, 30000, 30000, 2,   0, 0, 100, 0, 'Stormcaller Brundir (10) - Lightning Whirl'),
(3286701, 0, 61903, 15000, 15000, 15000, 15000, 0,   1, 0, 100, 0, 'Steelbreaker (10) - Fusion Punch'),
(3286701, 1, 64641, 15000, 15000, 10000, 15000, 0,   0, 0, 100, 0, 'Steelbreaker (10) - Static  Disruption'),
(3292701, 0, 61973, 15000, 15000, 45000, 45000, 3,   5, 0, 100, 0, 'Runemaster Molgeim (10) - Rune of Power'),
(3292701, 1, 62274, 25000, 25000, 40000, 40000, 2,   0, 0, 100, 0, 'Runemaster Molgeim (10) - Shield of Runes'),
(3292701, 2, 62269, 30000, 30000, 30000, 30000, 2, 100, 0, 100, 0, 'Runemaster Molgeim (10) - Rune of Death');

DELETE FROM `creature_spell_list` WHERE `Id` IN (3285702, 3286702, 3292702);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(3285702, 0, 61879,     0,     0,  2000,  2000, 2, 100, 0, 100, 0, 'Stormcaller Brundir (10) - Chain Lightning'),
(3285702, 1, 61869, 35000, 35000, 80000, 80000, 2,   0, 0, 100, 0, 'Stormcaller Brundir (10) - Overload'),
(3285702, 2, 61915,  4000,  4000, 30000, 30000, 2,   0, 0, 100, 0, 'Stormcaller Brundir (10) - Lightning Whirl'),
(3285702, 3, 61887, 60000, 60000, 90000, 90000, 2,   0, 0, 100, 0, 'Stormcaller Brundir (10) - Lightning Tendrils'),
(3286702, 0, 61903, 15000, 15000, 15000, 15000, 0,   1, 0, 100, 0, 'Steelbreaker (10) - Fusion Punch'),
(3286702, 1, 64641, 15000, 15000, 10000, 15000, 0,   0, 0, 100, 0, 'Steelbreaker (10) - Static  Disruption'),
(3286702, 2, 64637, 10000, 10000, 60000, 60000, 0,   1, 0, 100, 0, 'Steelbreaker (10) - Overwhelming Power'),
(3292702, 0, 61973, 15000, 15000, 45000, 45000, 3,   5, 0, 100, 0, 'Runemaster Molgeim (10) - Rune of Power'),
(3292702, 1, 62274, 25000, 25000, 40000, 40000, 2,   0, 0, 100, 0, 'Runemaster Molgeim (10) - Shield of Runes'),
(3292702, 2, 62269, 30000, 30000, 30000, 30000, 2, 100, 0, 100, 0, 'Runemaster Molgeim (10) - Rune of Death'),
(3292702, 3, 62273, 10000, 10000, 30000, 30000, 2, 100, 0, 100, 0, 'Runemaster Molgeim (10) - Rune of Summoning');

INSERT INTO `creature_spell_list_entry` VALUES
(3285700, 'Ulduar - Stormcaller Brundir (10)', 100, 100),
(3292700, 'Ulduar - Runemaster Molgeim (10)', 100, 100),
(3286700, 'Ulduar - Steelbreaker (10)', 100, 100);

UPDATE `creature_template` SET `SpellList`=3285700 WHERE `entry`=32857;
UPDATE `creature_template` SET `SpellList`=3292700 WHERE `entry`=32927;
UPDATE `creature_template` SET `SpellList`=3286700 WHERE `entry`=32867;

DELETE FROM `creature_spell_list` WHERE `Id` IN (3369400, 3369300, 3369200);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(3369400, 0, 63479,     0,     0,  2000,  2000, 2, 100, 0, 100, 0, 'Stormcaller Brundir (25) - Chain Lightning'),
(3369400, 1, 61869, 35000, 35000, 80000, 80000, 2,   0, 0, 100, 0, 'Stormcaller Brundir (25) - Overload'),
(3369300, 0, 63493, 15000, 15000, 15000, 15000, 0,   1, 0, 100, 0, 'Steelbreaker (25) - Fusion Punch'),
(3369200, 0, 61973, 15000, 15000, 45000, 45000, 3,   5, 0, 100, 0, 'Runemaster Molgeim (25) - Rune of Power'),
(3369200, 1, 63489, 25000, 25000, 40000, 40000, 2,   0, 0, 100, 0, 'Runemaster Molgeim (25) - Shield of Runes');

DELETE FROM `creature_spell_list` WHERE `Id` IN (3369401, 3369301, 3369201);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(3369401, 0, 63479,     0,     0,  2000,  2000, 2, 100, 0, 100, 0, 'Stormcaller Brundir (25) - Chain Lightning'),
(3369401, 1, 61869, 35000, 35000, 80000, 80000, 2,   0, 0, 100, 0, 'Stormcaller Brundir (25) - Overload'),
(3369401, 2, 63483,  4000,  4000, 30000, 30000, 2,   0, 0, 100, 0, 'Stormcaller Brundir (25) - Lightning Whirl'),
(3369301, 0, 63493, 15000, 15000, 15000, 15000, 0,   1, 0, 100, 0, 'Steelbreaker (25) - Fusion Punch'),
(3369301, 1, 64641, 15000, 15000, 10000, 15000, 0,   0, 0, 100, 0, 'Steelbreaker (25) - Static  Disruption'),
(3369201, 0, 61973, 15000, 15000, 45000, 45000, 3,   5, 0, 100, 0, 'Runemaster Molgeim (25) - Rune of Power'),
(3369201, 1, 63489, 25000, 25000, 40000, 40000, 2,   0, 0, 100, 0, 'Runemaster Molgeim (25) - Shield of Runes'),
(3369201, 2, 63490, 30000, 30000, 30000, 30000, 2, 100, 0, 100, 0, 'Runemaster Molgeim (25) - Rune of Death');

DELETE FROM `creature_spell_list` WHERE `Id` IN (3369402, 3369302, 3369202);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(3369402, 0, 63479,     0,     0,  2000,  2000, 2, 100, 0, 100, 0, 'Stormcaller Brundir (25) - Chain Lightning'),
(3369402, 1, 61869, 35000, 35000, 80000, 80000, 2,   0, 0, 100, 0, 'Stormcaller Brundir (25) - Overload'),
(3369402, 2, 63483,  4000,  4000, 30000, 30000, 2,   0, 0, 100, 0, 'Stormcaller Brundir (25) - Lightning Whirl'),
(3369402, 3, 63486, 60000, 60000, 90000, 90000, 2,   0, 0, 100, 0, 'Stormcaller Brundir (25) - Lightning Tendrils'),
(3369302, 0, 63493, 15000, 15000, 15000, 15000, 0,   1, 0, 100, 0, 'Steelbreaker (25) - Fusion Punch'),
(3369302, 1, 64641, 15000, 15000, 10000, 15000, 0,   0, 0, 100, 0, 'Steelbreaker (25) - Static  Disruption'),
(3369302, 2, 61888, 10000, 10000, 35000, 35000, 0,   1, 0, 100, 0, 'Steelbreaker (25) - Overwhelming Power'),
(3369202, 0, 61973, 15000, 15000, 45000, 45000, 3,   5, 0, 100, 0, 'Runemaster Molgeim (25) - Rune of Power'),
(3369202, 1, 63489, 25000, 25000, 40000, 40000, 2,   0, 0, 100, 0, 'Runemaster Molgeim (25) - Shield of Runes'),
(3369202, 2, 63490, 30000, 30000, 30000, 30000, 2, 100, 0, 100, 0, 'Runemaster Molgeim (25) - Rune of Death'),
(3369202, 3, 62273, 10000, 10000, 30000, 30000, 2, 100, 0, 100, 0, 'Runemaster Molgeim (25) - Rune of Summoning');

INSERT INTO `creature_spell_list_entry` VALUES
(3369400, 'Ulduar - Stormcaller Brundir (25)', 100, 100),
(3369200, 'Ulduar - Runemaster Molgeim (25)', 100, 100),
(3369300, 'Ulduar - Steelbreaker (25)', 100, 100);

UPDATE `creature_template` SET `SpellList`=3369400 WHERE `entry`=33694;
UPDATE `creature_template` SET `SpellList`=3369200 WHERE `entry`=33692;
UPDATE `creature_template` SET `SpellList`=3369300 WHERE `entry`=33693;

UPDATE `creature_addon` SET `emote`=0 WHERE `guid`=6030087;
UPDATE `creature_model_info` SET `bounding_radius`=0.62,`combat_reach`=2 WHERE `modelid`=28381;
UPDATE `creature_template` SET `UnitFlags`=`UnitFlags`|33554432 WHERE `entry` IN (33705, 32866, 33051);

UPDATE `creature_template` SET `HoverHeight`=10 WHERE `entry` IN (32857, 33694);

UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15684 WHERE Id=34314;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15687 WHERE Id=33962;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15689 WHERE Id=34318;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15690 WHERE Id=34319;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15685 WHERE Id=34315;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15686 WHERE Id=34316;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15691 WHERE Id=34320;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15688 WHERE Id=34317;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15657 WHERE Id=34328;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15662 WHERE Id=34333;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15663 WHERE Id=34334;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15660 WHERE Id=34331;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15661 WHERE Id=34332;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15658 WHERE Id=34329;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15659 WHERE Id=34330;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15664 WHERE Id=34335;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15674 WHERE Id=34321;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15678 WHERE Id=34325;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15679 WHERE Id=34326;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15675 WHERE Id=34322;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15676 WHERE Id=34323;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15677 WHERE Id=34324;
UPDATE `broadcast_text` SET ChatTypeId=1,SoundEntriesID1=15680 WHERE Id=34327;

DELETE FROM worldstate_name WHERE Id IN(4198);
INSERT INTO worldstate_name VALUES
(4198,'Iron Council Last Alive boss');

DELETE FROM achievement_criteria_requirement WHERE criteria_id IN(10083,10086,10082,10085,10084,10087) AND type=18;
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN(10083,10086,10082,10085,10084,10087) AND type=26;
INSERT INTO achievement_criteria_requirement(criteria_id,type,value1) VALUES
(10083,26,6971), -- uses 4198
(10086,26,6971), -- uses 4198
(10082,26,6971),
(10085,26,6971),
(10084,26,6971),
(10087,26,6971);

DELETE FROM game_tele WHERE Id IN(1535,1536) AND map=603;
INSERT INTO game_tele(id, position_x, position_y, position_z, orientation, map, name) VALUES
('1535', '1620.279053', '119.782654', '427.275482', '3.0795', '603', 'AssemblyOfIron'),
('1536', '-914.041','-148.98','463.137','6.28', '603', 'TheUlduar');

