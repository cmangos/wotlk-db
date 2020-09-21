

-- *** Fix teleporter spells ***
-- Spell Targets for portals
DELETE FROM spell_script_target WHERE entry IN (66550,66551);
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
-- outside guids
(66550, 3, 6280009),
(66550, 3, 6280012),
(66550, 3, 6280007),
(66550, 3, 6280001),
(66550, 3, 6280006),
(66550, 3, 6280003),
-- inside guids
(66551, 3, 6280013),
(66551, 3, 6280010),
(66551, 3, 6280008),
(66551, 3, 6280005),
(66551, 3, 6280004),
(66551, 3, 6280002);

-- *** Fix accessories despawn ***
-- Specific accessories die/despawn on vehicle death/despawn
DELETE FROM creature_linking_template WHERE entry IN (28319,32629,36356,34777,34778,36355);
INSERT INTO creature_linking_template(entry, map, master_entry, flag, search_range) VALUES
(36356, 628, 34776, 8224, 5),
(34777, 628, 34776, 8224, 5),
(34778, 628, 35069, 8224, 5),
(36355, 628, 35069, 8224, 5),
(28319, 571, 28312, 8224, 5),
(32629, 571, 32627, 8224, 5);

-- *** Fix creature_template and go_template data ***
-- Creature fixes
UPDATE creature_template SET UnitFlags = UnitFlags|256 WHERE entry IN (35069, 34776, 35431, 35433);
-- honor triggers
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, UnitFlags = 33555200, MinLevelHealth = 4120, MaxLevelHealth = 4120, faction = 534 WHERE entry = 35379;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, UnitFlags = 33555200, MinLevelHealth = 4120, MaxLevelHealth = 4120, faction = 714 WHERE entry = 35380;
-- honor triggers 25 yards
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, UnitFlags = 33555200, MinLevelHealth = 4120, MaxLevelHealth = 4120, faction = 534 WHERE entry = 36349;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, UnitFlags = 33555200, MinLevelHealth = 4120, MaxLevelHealth = 4120, faction = 714 WHERE entry = 36350;
-- various creatures
UPDATE creature_template SET MinLevel=68, MaxLevel=68, UnitFlags = 33554432, MinLevelHealth = 20958, MaxLevelHealth = 20958, faction = 2038 WHERE entry = 36148;
UPDATE creature_template SET MinLevel=66, MaxLevel=66, UnitFlags = 33554432, MinLevelHealth = 6116, MaxLevelHealth = 6116, faction = 534 WHERE entry = 36154;

UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, UnitFlags = 33555200, MinLevelHealth = 4120, MaxLevelHealth = 4120, faction = 534 WHERE entry = 35377;
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, MinLevelHealth = 46165, MaxLevelHealth = 46165 WHERE entry = 35819;

UPDATE creature_template SET MovementType = 0 WHERE entry = 13000;
UPDATE creature_template SET EquipmentTemplateId = 361 WHERE entry = 36162;

-- gameobject fixes
UPDATE gameobject_template SET faction = 1735 WHERE entry = 195237;

-- honorable trigger auras in c_t_a
DELETE FROM creature_template_addon WHERE entry IN (35379,35380,36349,36350,35377);
INSERT INTO creature_template_addon (entry, auras) VALUES
(35379, 66157),
(35380, 66157),
(36349, 68652),
(36350, 68652),
(35377, 67359);

-- *** Add missing spawns ***
-- missing hawks
SET @CGUID := 6280083;
DELETE FROM creature WHERE guid BETWEEN @CGUID AND @CGUID + 18;
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecsmin,spawntimesecsmax,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(@CGUID, 25748, 628, 3, 1, 0, 0, 661.3611, -729.4566, 0.2378123, 2.164208, 300, 300, 0, 0, 8982, 0, 0, 0),
(@CGUID+1, 25748, 628, 3, 1, 0, 0, 560.8871, -575.3629, 0.6485073, 5.096361, 300, 300, 0, 0, 8982, 0, 0, 0),
(@CGUID+2, 25748, 628, 3, 1, 0, 0, 716.6493, -562.934, 1.780481, 4.258604, 300, 300, 0, 0, 8982, 0, 0, 0),
(@CGUID+3, 25748, 628, 3, 1, 0, 0, 784.5434, -546.9063, 1.641917, 4.45059, 300, 300, 0, 0, 8982, 0, 0, 0),
(@CGUID+4, 25748, 628, 3, 1, 0, 0, 694.9288, -589.5989, 2.620331, 2.164208, 300, 300, 0, 0, 8982, 0, 0, 0),
(@CGUID+5, 25748, 628, 3, 1, 0, 0, 772.7674, -570.3524, 0.3882063, 0, 300, 300, 0, 0, 8982, 0, 0, 0),
(@CGUID+6, 25748, 628, 3, 1, 0, 0, 885.0521, -509.7292, 5.066974, 4.45059, 300, 300, 0, 0, 8982, 0, 0, 0),
(@CGUID+7, 25748, 628, 3, 1, 0, 0, 605.941, -542.1198, 0.6087213, 3.612832, 300, 300, 0, 0, 8982, 0, 0, 0),
(@CGUID+8, 25748, 628, 3, 1, 0, 0, 1299.67, -409.2413, 0.2718323, 1.308997, 300, 300, 0, 0, 8982, 0, 0, 0),
(@CGUID+9, 25748, 628, 3, 1, 0, 0, 1273.113, -500.0851, 0.4494413, 1.151917, 300, 300, 0, 0, 8982, 0, 0, 0),
(@CGUID+10, 25748, 628, 3, 1, 0, 0, 579.2308, -601.1510, 1.0092443, 0, 300, 300, 0, 0, 8982, 0, 0, 0),
(@CGUID+11, 25748, 628, 3, 1, 0, 0, 928.2517, -589.4201, 0.7786872, 3.1415927, 300, 300, 0, 0, 8982, 0, 0, 0),
(@CGUID+12, 25748, 628, 3, 1, 0, 0, 676.1788, -626.0538, 1.2761423, 5.1138148, 300, 300, 0, 0, 8982, 0, 0, 0),
(@CGUID+13, 25748, 628, 3, 1, 0, 0, 885.9461, -531.1475, 0.3919453, 4.450589, 300, 300, 0, 0, 8982, 0, 0, 0),
(@CGUID+14, 25748, 628, 3, 1, 0, 0, 704.0590, -663.2951, 2.0978453, 0, 300, 300, 0, 0, 8982, 0, 0, 0),
(@CGUID+15, 25748, 628, 3, 1, 0, 0, 1349.1353, -439.1180, 0.259844, 5.550147, 300, 300, 0, 0, 8982, 0, 0, 0),
(@CGUID+16, 25748, 628, 3, 1, 0, 0, 1363.3697, -407.0191, 0.812617, 5.550147, 300, 300, 0, 0, 8982, 0, 0, 0),
(@CGUID+17, 25748, 628, 3, 1, 0, 0, 1337.3090, -367.4461, 0.230803, 5.689773, 300, 300, 0, 0, 8982, 0, 0, 0),
(@CGUID+18, 25748, 628, 3, 1, 0, 0, 1319.3663, -458.5503, 0.339978, 1.518436, 300, 300, 0, 0, 8982, 0, 0, 0);

-- missing static spawns (decorating npcs)
SET @CGUID := @CGUID+19;
DELETE FROM creature WHERE guid IN (@CGUID,@CGUID+1,@CGUID+2,@CGUID+3);
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecsmin,spawntimesecsmax,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(@CGUID, 36154, 628, 3, 1, 0, 0, 1157.227, -822.576, 53.097, 0, 300, 300, 0, 0, 6116, 0, 0, 0),
(@CGUID+1, 36154, 628, 3, 1, 0, 0, 1159.335, -817.395, 48.955, 0, 300, 300, 0, 0, 6116, 0, 0, 0),
(@CGUID+2, 36154, 628, 3, 1, 0, 0, 1188.600, -845.053, 49.083, 2.1293, 300, 300, 0, 0, 6116, 0, 0, 0),
(@CGUID+3, 36154, 628, 3, 1, 0, 0, 1158.706, -822.921, 49.039, 0.5585, 300, 300, 0, 0, 6116, 0, 0, 0);
SET @CGUID := @CGUID+4;
DELETE FROM creature WHERE guid BETWEEN @CGUID AND @CGUID+16;
INSERT INTO creature (guid,id,map,spawnMask,phaseMask,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecsmin,spawntimesecsmax,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(@CGUID, 36148, 628, 3, 1, 0, 0, 657.083, -314.550, 12.522, 3.0892, 300, 300, 0, 0, 20958, 0, 0, 0),
(@CGUID+1, 36148, 628, 3, 1, 0, 0, 805.083, -315.723, 12.748, 4.8345, 300, 300, 0, 0, 20958, 0, 0, 0),
(@CGUID+2, 36148, 628, 3, 1, 0, 0, 826.246, -345.774, 12.832, 3.3684, 300, 300, 0, 0, 20958, 0, 0, 0),
(@CGUID+3, 36148, 628, 3, 1, 0, 0, 696.526, -331.651, 12.784, 1.2217, 300, 300, 0, 0, 20958, 0, 0, 0),
(@CGUID+4, 36148, 628, 3, 1, 0, 0, 796.732, -329.826, 12.582, 6.0160, 300, 300, 0, 0, 20958, 0, 0, 0),
(@CGUID+5, 36148, 628, 3, 1, 0, 0, 628.085, -272.446, 11.103, 0.0523, 300, 300, 0, 0, 20958, 0, 0, 0),
(@CGUID+6, 36148, 628, 3, 1, 0, 0, 663.003, -259.880, 12.684, 3.8222, 300, 300, 0, 0, 20958, 0, 0, 0),
(@CGUID+7, 36148, 628, 3, 1, 0, 0, 753.057, -222.909, 12.504, 6.2133, 300, 300, 0, 0, 20958, 0, 0, 0),
(@CGUID+8, 36148, 628, 3, 1, 0, 0, 865.854, -296.245, 13.484, 4.5832, 300, 300, 0, 0, 20958, 0, 0, 0),
(@CGUID+9, 36148, 628, 3, 1, 0, 0, 887.498, -442.303, 18.976, 0.1396, 300, 300, 0, 0, 20958, 0, 0, 0),
(@CGUID+10, 36148, 628, 3, 1, 0, 0, 826.246, -345.774, 12.832, 3.3684, 300, 300, 0, 0, 20958, 0, 0, 0),
(@CGUID+11, 36148, 628, 3, 1, 0, 0, 866.993, -285.512, 13.501, 3.0892, 300, 300, 0, 0, 20958, 0, 0, 0),
(@CGUID+12, 36148, 628, 3, 1, 0, 0, 901.730, -427.984, 18.951, 3.3335, 300, 300, 0, 0, 20958, 0, 0, 0),
(@CGUID+13, 36148, 628, 3, 1, 0, 0, 827.812, -470.553, 25.721, 4.8345, 300, 300, 0, 0, 20958, 0, 0, 0),
(@CGUID+14, 36148, 628, 3, 1, 0, 0, 805.083, -315.723, 12.748, 4.8345, 300, 300, 0, 0, 20958, 0, 0, 0),
(@CGUID+15, 36148, 628, 3, 1, 0, 0, 825.760, -470.517, 25.667, 4.8345, 300, 300, 0, 0, 20958, 0, 0, 0),
(@CGUID+16, 36148, 628, 3, 1, 0, 0, 826.444, -474.291, 25.714, 1.7104, 300, 300, 0, 0, 20958, 0, 0, 0);


-- *** Event scripts ***
-- fires that start when gates are broken
DELETE FROM dbscripts_on_event WHERE id IN (22080,22082);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, x, y, z, o, comments) VALUES
-- front gate alliance
(22080, 0, 10, 35377, 0, 412.8299, -852.2292, 68.23322, 0, 'summon Door Fire on front alliance gate destroyed'),
(22080, 0, 10, 35377, 0, 415.901,  -852.3941, 87.59631, 0, 'summon Door Fire on front alliance gate destroyed'),
(22080, 0, 10, 35377, 0, 412.0677, -864.5746, 68.24164, 0, 'summon Door Fire on front alliance gate destroyed'),
(22080, 0, 10, 35377, 0, 413.1962, -811.158,  87.83065, 0, 'summon Door Fire on front alliance gate destroyed'),
-- west gate alliance
(22082, 0, 10, 35377, 0, 337.2813, -762.0278, 76.03584, 0, 'summon Door Fire on west alliance gate destroyed'),
(22082, 0, 10, 35377, 0, 373.9618, -769.5504, 88.71865, 0, 'summon Door Fire on west alliance gate destroyed'),
(22082, 0, 10, 35377, 0, 333.4219, -759.8004, 88.20628, 0, 'summon Door Fire on west alliance gate destroyed');

-- !BIG NOTE!: following coords are guesswork or made up
DELETE FROM dbscripts_on_event WHERE id IN (22078,22079,22081,22083);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, x, y, z, o, comments) VALUES
-- east gate alliance
(22078, 0, 10, 35377, 0, 369.5700, -902.3808, 68.42002, 0, 'summon Door Fire on east alliance gate destroyed'),
(22078, 0, 10, 35377, 0, 368.9431, -903.0549, 87.90176, 0, 'summon Door Fire on east alliance gate destroyed'),
(22078, 0, 10, 35377, 0, 330.4990, -901.8975, 88.64622, 0, 'summon Door Fire on east alliance gate destroyed'),
-- front horde
(22079, 0, 10, 35377, 20000, 1138.7783, -773.1696, 48.57696, 0, 'summon Door Fire on front horde gate destroyed'),
(22079, 0, 10, 35377, 20000, 1162.5317, -753.8282, 48.62722, 0, 'summon Door Fire on front horde gate destroyed'),
(22079, 0, 10, 35377, 20000, 1161.8109, -770.3510, 48.62722, 0, 'summon Door Fire on front horde gate destroyed'),
-- west horde
(22083, 0, 10, 35377, 20000, 1208.0107, -688.5151, 48.80675, 0, 'summon Door Fire on west horde gate destroyed'),
(22083, 0, 10, 35377, 20000, 1207.5378, -666.9844, 49.06026, 0, 'summon Door Fire on west horde gate destroyed'),
(22083, 0, 10, 35377, 20000, 1227.3540, -670.9146, 48.44815, 0, 'summon Door Fire on west horde gate destroyed'),
-- east horde
(22081, 0, 10, 35377, 20000, 1209.4190, -858.9687, 49.11448, 0, 'summon Door Fire on east horde gate destroyed'),
(22081, 0, 10, 35377, 20000, 1228.9729, -843.1778, 48.94345, 0, 'summon Door Fire on east horde gate destroyed'),
(22081, 0, 10, 35377, 20000, 1208.0471, -843.0504, 48.92275, 0, 'summon Door Fire on east horde gate destroyed');


-- *** Relay scripts scripts for siege engine ***
-- relay script to move the siege engine of the the workshop
DELETE FROM dbscripts_on_relay WHERE id IN (20501,20502);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, x, y, z, o, comments) VALUES
(20501, 0, 29, 16777216, 2, 0, 0, 0, 0, 'remove npc flag spellclick'),
(20502, 1, 3, 0, 0, 772.602, -852.394, 12.48976, 1.58825, 'move to position'),
(20502, 8, 29, 16777216, 1, 0, 0, 0, 0, 'add npc flag spellclick');
