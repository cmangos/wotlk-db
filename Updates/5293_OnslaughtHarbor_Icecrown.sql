-- Onslaught Harbor - Icecrown

-- Onslaught Gryphon Rider 29333
DELETE FROM creature_addon WHERE guid IN (524846);
DELETE FROM creature_movement WHERE id IN (524846);
DELETE FROM game_event_creature WHERE guid IN (524846);
DELETE FROM game_event_creature_data WHERE guid IN (524846);
DELETE FROM creature_battleground WHERE guid IN (524846);
DELETE FROM creature_linking WHERE guid IN (524846);
DELETE FROM creature where guid IN (524846);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(524846,29333,571,1,1,7601.875,4783.1177,62.270447,0,300,300,0,0);
UPDATE creature_template SET StaticFlags1 = 2147483648 WHERE entry = 29333;
-- Spawn GROUPS
-- Group 1
UPDATE creature SET position_x = 7723.56, position_y = 4672.456, position_z = 44.70919, spawndist = 0, MovementType = 0 WHERE guid IN (524435,524434);
DELETE FROM `spawn_group` WHERE id IN (34048);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34048,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 1', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id IN (34048);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34048, 524435, 0),
(34048, 524434, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34048);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34048, 4, 5, 0, 34048, 2,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 1'); -- MovementType should be 3 - not supported yet 
DELETE FROM `waypoint_path` WHERE PathId IN (34048);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34048,1 ,7723.56,4672.456,44.70919    ,100,0,0),
(34048,2 ,7734.522,4831.7646,41.348072 ,100,0,0),
(34048,3 ,7733.6807,4925.565,41.348072 ,100,0,0),
(34048,4 ,7699.9634,5032.2266,41.348072,100,0,0),
(34048,5 ,7636.5713,5053.2964,41.348072,100,0,0),
(34048,6 ,7600.6313,4983.2705,52.709187,100,0,0),
(34048,7 ,7633.479,4848.625,44.70919   ,100,0,0),
(34048,8 ,7644.9663,4725.536,44.70919  ,100,0,0),
(34048,9 ,7626.343,4660.192,44.70919   ,100,0,0),
(34048,10,7644.2935,4612.1553,44.70919 ,100,0,0),
(34048,11,7696.241,4611.5054,44.70919  ,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34048);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34048,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 1');
DELETE FROM `creature_spawn_data` WHERE guid IN 
(524435,524434);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(524434,1),
(524435,1);
-- Group 2
UPDATE creature SET position_x = 7633.012, position_y = 5024.2275, position_z = 38.509106, spawndist = 0, MovementType = 0 WHERE guid IN (524415,524440);
DELETE FROM `spawn_group` WHERE id IN (34049);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34049,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 2', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id IN (34049);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34049, 524415, 0),
(34049, 524440, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34049);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34049, 4, 5, 0, 34049, 2,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 2'); -- MovementType should be 3 - not supported yet 
DELETE FROM `waypoint_path` WHERE PathId IN (34049);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34049,1 ,7633.012,5024.2275,38.509106 ,100,0,0),
(34049,2 ,7648.968,5215.5547,38.509106 ,100,0,0),
(34049,3 ,7746.061,5257.307,38.509106  ,100,0,0),
(34049,4 ,7822.8584,5173.9,38.509106   ,100,0,0),
(34049,5 ,7817.579,5012.8267,38.509106 ,100,0,0),
(34049,6 ,7813.25,4863.582,38.509106   ,100,0,0),
(34049,7 ,7820.4595,4757.349,38.509106 ,100,0,0),
(34049,8 ,7757.2935,4668.6694,38.509106,100,0,0),
(34049,9 ,7669.9507,4690.1562,38.509106,100,0,0),
(34049,10,7639.057,4787.122,38.509106  ,100,0,0),
(34049,11,7634.002,4946.0137,38.509106 ,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34049);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34049,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 2');
DELETE FROM `creature_spawn_data` WHERE guid IN 
(524415,524440);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(524415,1),
(524440,1);
-- Group 3
UPDATE creature SET position_x = 7628.154, position_y = 5029.245, position_z = 45.341614, spawndist = 0, MovementType = 0 WHERE guid IN (524437,524438);
DELETE FROM `spawn_group` WHERE id IN (34050);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34050,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 3', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id IN (34050);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34050, 524437, 0),
(34050, 524438, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34050);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34050, 4, 5, 0, 34050, 2,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 3'); -- MovementType should be 3 - not supported yet 
DELETE FROM `waypoint_path` WHERE PathId IN (34050);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34050,1,7628.154,5029.245,45.341614,100,0,0),
(34050,2,7631.4834,4814.289,45.341614,100,0,0),
(34050,3,7710.4565,4753.357,45.341614,100,0,0),
(34050,4,7809.7803,4773.802,45.341614,100,0,0),
(34050,5,7883.988,4865.787,45.341614,100,0,0),
(34050,6,7879.632,4974.2876,45.341614,100,0,0),
(34050,7,7788.151,5147.424,45.341614,100,0,0),
(34050,8,7664.401,5127.1655,45.341614,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34050);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34050,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 3');
DELETE FROM `creature_spawn_data` WHERE guid IN 
(524437,524438);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(524437,1),
(524438,1);
-- Group 4
UPDATE creature SET position_x = 7526.404, position_y = 4842.125, position_z = 105.29056, spawndist = 0, MovementType = 0 WHERE guid IN (524452,524453);
DELETE FROM `spawn_group` WHERE id IN (34051);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34051,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 4', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id IN (34051);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34051, 524452, 0),
(34051, 524453, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34051);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34051, 4, 5, 0, 34051, 2,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 4'); -- MovementType should be 3 - not supported yet 
DELETE FROM `waypoint_path` WHERE PathId IN (34051);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34051,1,7526.404,4842.125,105.29056 ,100,0,0),
(34051,2,7597.3066,4942.3223,88.20727,100,0,0),
(34051,3,7686.0366,4958.468,88.20727 ,100,0,0),
(34051,4,7828.5913,4903.7734,88.20727,100,0,0),
(34051,5,7864.0547,4787.2305,88.20727,100,0,0),
(34051,6,7764.718,4746.045,88.20727  ,100,0,0),
(34051,7,7639.416,4666.4478,88.20727 ,100,0,0),
(34051,8,7529.126,4763.968,106.37389 ,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34051);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34051,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 4');
DELETE FROM `creature_spawn_data` WHERE guid IN 
(524452,524453);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(524452,1),
(524453,1);
-- Group 5
UPDATE creature SET position_x = 7682.4375, position_y = 4823.625, position_z = 61.45449, spawndist = 0, MovementType = 0 WHERE guid IN (524406,524458);
DELETE FROM `spawn_group` WHERE id IN (34052);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34052,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 5', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id IN (34052);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34052, 524406, 0),
(34052, 524458, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34052);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34052, 4, 5, 0, 34052, 2,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 5'); -- MovementType should be 3 - not supported yet 
DELETE FROM `waypoint_path` WHERE PathId IN (34052);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34052,1 ,7682.4375,4823.625,61.45449 ,100,0,0),
(34052,2 ,7606.058,4916.253,62.043346 ,100,0,0),
(34052,3 ,7562.2065,4928.134,67.65444 ,100,0,0),
(34052,4 ,7488.3057,4910.2407,71.71012,100,0,0),
(34052,5 ,7414.4287,4884.145,83.293495,100,0,0),
(34052,6 ,7399.955,4834.252,93.26009  ,100,0,0),
(34052,7 ,7382.289,4798.512,93.26009  ,100,0,0),
(34052,8 ,7383.0347,4751.6997,93.26009,100,0,0),
(34052,9 ,7407.4775,4725.139,93.26009 ,100,0,0),
(34052,10,7460.499,4706.8438,93.26009 ,100,0,0),
(34052,11,7527.369,4719.665,93.26009  ,100,0,0),
(34052,12,7600.8647,4764.1,93.26009   ,100,0,0),
(34052,13,7661.607,4753.8394,83.871216,100,0,0),
(34052,14,7688.7153,4779.5083,74.81562,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34052);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34052,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 5');
DELETE FROM `creature_spawn_data` WHERE guid IN 
(524406,524458);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(524406,1),
(524458,1);
-- Group 6
UPDATE creature SET position_x = 7842.212, position_y = 4792.629, position_z = 45.266968, spawndist = 0, MovementType = 0 WHERE guid IN (524425,524421);
DELETE FROM `spawn_group` WHERE id IN (34053);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34053,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 6', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id IN (34053);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34053, 524425, 0),
(34053, 524421, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34053);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34053, 4, 5, 0, 34053, 2,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 6'); -- MovementType should be 3 - not supported yet 
DELETE FROM `waypoint_path` WHERE PathId IN (34053);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34053,1 ,7842.212,4792.629,45.266968 ,100,0,0),
(34053,2 ,7617.1562,4777.199,66.322586,100,0,0),
(34053,3 ,7477.8335,4792.776,77.9893  ,100,0,0),
(34053,4 ,7393.3447,4822.3125,83.51713,100,0,0),
(34053,5 ,7378.5435,4896.22,81.62823  ,100,0,0),
(34053,6 ,7456.955,4955.019,80.21153  ,100,0,0),
(34053,7 ,7585.252,4944.4316,80.21153 ,100,0,0),
(34053,8 ,7770.21,4915.2383,56.461483 ,100,0,0),
(34053,9 ,7857.3906,4891.483,50.128143,100,0,0),
(34053,10,7879.6235,4838.347,49.32259 ,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34053);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34053,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 6');
DELETE FROM `creature_spawn_data` WHERE guid IN 
(524425,524421);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(524425,1),
(524421,1);
-- Group 7
UPDATE creature SET position_x = 7637.9487, position_y = 4844.621, position_z = 41.713722, spawndist = 0, MovementType = 0 WHERE guid IN (524455,524420);
DELETE FROM `spawn_group` WHERE id IN (34054);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34054,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 7', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id IN (34054);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34054, 524455, 0),
(34054, 524420, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34054);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34054, 4, 5, 0, 34054, 2,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 7'); -- MovementType should be 3 - not supported yet 
DELETE FROM `waypoint_path` WHERE PathId IN (34054);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34054,1,7637.9487,4844.621,41.713722 ,100,0,0),
(34054,2,7640.33,4719.7583,41.713722  ,100,0,0),
(34054,3,7691.897,4671.6133,41.713722 ,100,0,0),
(34054,4,7785.655,4678.589,41.713722  ,100,0,0),
(34054,5,7835.718,4737.192,41.713722  ,100,0,0),
(34054,6,7846.2397,4855.4097,41.713722,100,0,0),
(34054,7,7792.731,4935.7817,41.713722 ,100,0,0),
(34054,8,7727.0103,4948.5063,41.713722,100,0,0),
(34054,9,7666.8975,4912.014,41.713722 ,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34054);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34054,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 7');
DELETE FROM `creature_spawn_data` WHERE guid IN 
(524455,524420);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(524455,1),
(524420,1);
-- Group 8
UPDATE creature SET position_x = 7574.2456, position_y = 4906.4946, position_z = 79.01079, spawndist = 0, MovementType = 0 WHERE guid IN (524457,524444);
DELETE FROM `spawn_group` WHERE id IN (34055);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34055,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 8', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id IN (34055);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34055, 524457, 0),
(34055, 524444, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34055);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34055, 4, 5, 0, 34055, 2,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 8'); -- MovementType should be 3 - not supported yet 
DELETE FROM `waypoint_path` WHERE PathId IN (34055);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34055,1 ,7574.2456,4906.4946,79.01079,100,0,0),
(34055,2 ,7649.4287,4859.3716,50.466652,100,0,0),
(34055,3 ,7712.5303,4858.281,37.02221 ,100,0,0),
(34055,4 ,7814.4565,4858.7607,37.02221,100,0,0),
(34055,5 ,7896.0547,4863.8936,37.02221,100,0,0),
(34055,6 ,7944.1963,4912.5444,37.02221,100,0,0),
(34055,7 ,7899.772,4993.8228,37.02221 ,100,0,0),
(34055,8 ,7814.8145,5039.2124,37.02221,100,0,0),
(34055,9 ,7708.269,5042.861,37.02221  ,100,0,0),
(34055,10,7605.143,5003.0376,52.96666 ,100,0,0),
(34055,11,7561.7754,4951.3145,77.70519,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34055);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34055,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 8');
DELETE FROM `creature_spawn_data` WHERE guid IN 
(524457,524444);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(524457,1),
(524444,1);
-- Group 9
UPDATE creature SET position_x = 7606.4463, position_y = 4714.4067, position_z = 80.92139, spawndist = 0, MovementType = 0 WHERE guid IN (524416,524417);
DELETE FROM `spawn_group` WHERE id IN (34056);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34056,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 9', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id IN (34056);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34056, 524416, 0),
(34056, 524417, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34056);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34056, 4, 5, 0, 34056, 2,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 9'); -- MovementType should be 3 - not supported yet 
DELETE FROM `waypoint_path` WHERE PathId IN (34056);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34056,1,7606.4463,4714.4067,80.92139,100,0,0),
(34056,2,7574.565,4866.362,80.92139  ,100,0,0),
(34056,3,7568.178,4957.929,80.92139  ,100,0,0),
(34056,4,7605.999,5016.699,80.92139  ,100,0,0),
(34056,5,7684.137,4997.0884,80.92139 ,100,0,0),
(34056,6,7726.422,4870.2915,80.92139 ,100,0,0),
(34056,7,7727.2676,4756.739,80.92139 ,100,0,0),
(34056,8,7671.7812,4691.2646,80.92139,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34056);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34056,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 9');
DELETE FROM `creature_spawn_data` WHERE guid IN 
(524416,524417);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(524416,1),
(524417,1);
-- Group 10
UPDATE creature SET position_x = 7684.243, position_y = 4929.285, position_z = 37.758945, spawndist = 0, MovementType = 0 WHERE guid IN (524409,524412);
DELETE FROM `spawn_group` WHERE id IN (34057);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34057,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 10', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id IN (34057);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34057, 524409, 0),
(34057, 524412, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34057);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34057, 4, 5, 0, 34057, 2,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 10'); -- MovementType should be 3 - not supported yet 
DELETE FROM `waypoint_path` WHERE PathId IN (34057);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34057,1,7684.243,4929.285,37.758945,100,0,0),
(34057,2,7495.4062,5071.83,37.758945,100,0,0),
(34057,3,7524.725,5146.899,37.758945,100,0,0),
(34057,4,7628.566,5193.747,37.758945,100,0,0),
(34057,5,7768.1147,5108.907,41.95343,100,0,0),
(34057,6,7810.283,5007.334,43.314518,100,0,0),
(34057,7,7765.849,4929.968,37.758945,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34057);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34057,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 10');
DELETE FROM `creature_spawn_data` WHERE guid IN 
(524409,524412);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(524409,1),
(524412,1);
-- Group 11
UPDATE creature SET position_x = 7588.4575, position_y = 4868.444, position_z = 70.57803, spawndist = 0, MovementType = 0 WHERE guid IN (524426,524433);
DELETE FROM `spawn_group` WHERE id IN (34058);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34058,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 11', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id IN (34058);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34058, 524426, 0),
(34058, 524433, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34058);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34058, 4, 5, 0, 34058, 2,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 11'); -- MovementType should be 3 - not supported yet 
DELETE FROM `waypoint_path` WHERE PathId IN (34058);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34058,1,7588.4575,4868.444,70.57803 ,100,0,0),
(34058,2,7610.2134,4826.1016,64.35597,100,0,0),
(34058,3,7626.9297,4789.0894,64.35597,100,0,0),
(34058,4,7594.6973,4768.742,68.38383 ,100,0,0),
(34058,5,7532.3213,4785.407,87.8282  ,100,0,0),
(34058,6,7509.0435,4838.0444,90.30045,100,0,0),
(34058,7,7516.335,4901.9634,84.078224,100,0,0),
(34058,8,7562.657,4907.559,77.96701  ,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34058);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34058,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 11');
DELETE FROM `creature_spawn_data` WHERE guid IN 
(524426,524433);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(524426,1),
(524433,1);
-- Group 12
UPDATE creature SET position_x = 7575.4097, position_y = 5131.406, position_z = 58.664883, spawndist = 0, MovementType = 0 WHERE guid IN (524456,524410);
DELETE FROM `spawn_group` WHERE id IN (34059);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34059,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 12', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id IN (34059);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34059, 524456, 0),
(34059, 524410, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34059);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34059, 4, 5, 0, 34059, 2,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 12'); -- MovementType should be 3 - not supported yet 
DELETE FROM `waypoint_path` WHERE PathId IN (34059);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34059,1,7575.4097,5131.406,58.664883,100,0,0),
(34059,2,7666.3438,4999.695,50.637077,100,0,0),
(34059,3,7715.9307,4962.004,50.637077,100,0,0),
(34059,4,7776.0923,4989.3394,50.637077,100,0,0),
(34059,5,7787.846,5081.015,50.637077,100,0,0),
(34059,6,7691.7734,5187.9873,50.637077,100,0,0),
(34059,7,7621.968,5223.096,53.41486,100,0,0),
(34059,8,7568.73,5187.808,57.970417,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34059);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34059,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 12');
DELETE FROM `creature_spawn_data` WHERE guid IN 
(524456,524410);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(524456,1),
(524410,1);
-- Group 13
UPDATE creature SET position_x = 7601.875, position_y = 4783.1177, position_z = 62.270447, spawndist = 0, MovementType = 0 WHERE guid IN (524454,524846);
DELETE FROM `spawn_group` WHERE id IN (34060);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34060,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 13', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id IN (34060);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34060, 524454, 0),
(34060, 524846, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34060);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34060, 4, 5, 0, 34060, 2,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 13'); -- MovementType should be 3 - not supported yet 
DELETE FROM `waypoint_path` WHERE PathId IN (34060);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34060,1 ,7601.875,4783.1177,62.270447,100,0,0),
(34060,2 ,7678.2554,4863.016,52.10374 ,100,0,0),
(34060,3 ,7671.981,4922.5825,52.10374 ,100,0,0),
(34060,4 ,7611.23,4999.8745,52.10374  ,100,0,0),
(34060,5 ,7452.869,5008.4517,52.10374 ,100,0,0),
(34060,6 ,7369.441,4938.0664,52.10374 ,100,0,0),
(34060,7 ,7333.335,4834.231,52.10374  ,100,0,0),
(34060,8 ,7406.0513,4674.5864,73.57596,100,0,0),
(34060,9 ,7507.761,4654.808,78.32597  ,100,0,0),
(34060,10,7570.1094,4747.7305,72.07596,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34060);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34060,'Icecrown - Onslaught Harbor - Onslaught Gryphon Rider 29333 x2 - Patrol 13');
DELETE FROM `creature_spawn_data` WHERE guid IN 
(524454,524846);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(524454,1),
(524846,1);

-- Onslaught Raven Bishop 29338
DELETE FROM creature_addon WHERE guid IN (524848,524849,524852,524853,524854,524855,524857);
DELETE FROM creature_movement WHERE id IN (524848,524849,524852,524853,524854,524855,524857);
DELETE FROM game_event_creature WHERE guid IN (524848,524849,524852,524853,524854,524855,524857);
DELETE FROM game_event_creature_data WHERE guid IN (524848,524849,524852,524853,524854,524855,524857);
DELETE FROM creature_battleground WHERE guid IN (524848,524849,524852,524853,524854,524855,524857);
DELETE FROM creature_linking WHERE guid IN (524848,524849,524852,524853,524854,524855,524857);
DELETE FROM creature where guid IN (524848,524849,524852,524853,524854,524855,524857);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(524848,29338,571,1,1,7837.6016,5118.936,1.6906515,0,300,300,0,2),
(524849,29338,571,1,1,7744.1353,5041.415,3.979483,0,300,300,0,2),
(524852,29338,571,1,1,7806.8535,4711.1313,0.5801653,6.1959185,300,300,0,0),
(524853,29338,571,1,1,7363.4634,4903.082,1.6125793,0.0698,300,300,0,0),
(524854,29338,571,1,1,7369.866,4864.186,2.7695532,3.124139,300,300,0,0),
(524855,29338,571,1,1,7369.5693,4867.161,2.1674352,2.6529,300,300,0,0),
(524857,29338,571,1,1,7342.7925,4837.8813,1.1924694,3.6826,300,300,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 29338);
DELETE FROM creature_template_addon WHERE entry IN (29338);
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(29338,0,0,1,0,0,0,48154);
UPDATE creature SET position_x = 7774.2524, position_y = 5110.0566, position_z = 4.0467467, spawndist = 0, MovementType = 2 WHERE guid = 524501;
UPDATE creature SET position_x = 7738.173, position_y = 4953.8267, position_z = 3.374022, spawndist = 0, MovementType = 2 WHERE guid = 524498;
UPDATE creature SET position_x = 7810.868, position_y = 4959.466, position_z = 17.451872, spawndist = 0, MovementType = 4 WHERE guid = 524500; -- lineat
UPDATE creature SET position_x = 7865.079, position_y = 4908.8135, position_z = 3.654849, spawndist = 0, MovementType = 2 WHERE guid = 524499;
UPDATE creature SET position_x = 7902.73, position_y = 4822.3896, position_z = 2.2162628, spawndist = 0, MovementType = 4 WHERE guid = 524497; -- lineat
UPDATE creature SET position_x = 7738.7803, position_y = 4916.737, position_z = 3.3425074, spawndist = 0, MovementType = 2 WHERE guid = 524489;
UPDATE creature SET position_x = 7817.401, position_y = 4862.308, position_z = 4.356392, spawndist = 0, MovementType = 2 WHERE guid = 524488;
UPDATE creature SET position_x = 7674.7197, position_y = 4854.4116, position_z = 6.651861, spawndist = 0, MovementType = 2 WHERE guid = 524487;
UPDATE creature SET position_x = 7567.4165, position_y = 4895.1406, position_z = 43.532295, spawndist = 0, MovementType = 2 WHERE guid = 524490;
UPDATE creature SET position_x = 7545.8926, position_y = 4899.7456, position_z = 43.6182, spawndist = 0, MovementType = 4 WHERE guid = 524509; -- linear
UPDATE creature SET position_x = 7639.288, position_y = 4855.6016, position_z = 8.183636, spawndist = 0, MovementType = 2 WHERE guid = 524496;
UPDATE creature SET position_x = 7496.585, position_y = 4800.3477, position_z = 44.89422, spawndist = 0, MovementType = 4 WHERE guid = 524491; -- linear
DELETE FROM creature_movement WHERE id IN (528563,524501,524849,524498,524500,524499,524497,524489,524488,524487,524490,524509,524496,524491);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 524848
(524848,1 ,7837.6016,5118.936,1.6906515 ,100,0,0),
(524848,2 ,7839.56,5126.609,0.90439665  ,100,0,0),
(524848,3 ,7836.6035,5129.301,0.47519743,100,0,0),
(524848,4 ,7824.211,5115.8833,0.6420877 ,100,0,0),
(524848,5 ,7813.8975,5109.864,0.39269805,100,0,0),
(524848,6 ,7801.557,5107.5312,0.26769805,100,0,0),
(524848,7 ,7795.884,5106.2056,0.3442688 ,100,0,0),
(524848,8 ,7792.277,5098.4175,1.1811571 ,100,0,0),
(524848,9 ,7796.1704,5092.711,1.7110643 ,100,0,0),
(524848,10,7797.5757,5073.7734,3.771245 ,100,0,0),
(524848,11,7800.1235,5058.9946,4.211692 ,100,0,0),
(524848,12,7799.2544,5043.9126,4.3393345,100,0,0),
(524848,13,7796.6426,5030.7847,4.16304  ,100,0,0),
(524848,14,7792.1987,5019.1997,4.0645294,100,0,0),
(524848,15,7796.151,5009.6284,3.5218048 ,100,0,0),
(524848,16,7802.971,5005.9375,2.087882  ,100,0,0),
(524848,17,7814.139,5007.85,1.8569249   ,100,0,0),
(524848,18,7821.712,5016.1406,1.8569249 ,100,0,0),
(524848,19,7829.7446,5025.143,2.3954992 ,100,0,0),
(524848,20,7830.896,5038.447,1.1639626  ,100,0,0),
(524848,21,7828.857,5054.4263,0.9139626 ,100,0,0),
(524848,22,7829.994,5064.9106,1.0389626 ,100,0,0),
(524848,23,7824.5234,5076.5825,1.8946452,100,0,0),
(524848,24,7827.5024,5091.378,2.3892741 ,100,0,0),
(524848,25,7833.077,5106.8867,2.6744363 ,100,0,0),
-- 524501
(524501,1 ,7774.2524,5110.0566,4.0467467,100,0,0),
(524501,2 ,7769.462,5110.086,4.0383444  ,100,0,0),
(524501,3 ,7768.276,5103.7275,4.0293827 ,100,0,0),
(524501,4 ,7768.835,5087.687,4.0547843  ,100,0,0),
(524501,5 ,7769.51,5064.5337,4.0662856  ,100,0,0),
(524501,6 ,7770.319,5045.5815,3.9935486 ,100,0,0),
(524501,7 ,7770.797,5019.0503,4.0909615 ,100,0,0),
(524501,8 ,7771.2666,4999.518,4.134908  ,100,0,0),
(524501,9 ,7771.559,4981.0547,4.054659  ,100,0,0),
(524501,10,7774.01,4968.9595,4.2071323  ,100,0,0),
(524501,11,7778.2256,4968.958,4.2138352 ,100,0,0),
(524501,12,7780.2056,4982.0415,4.0562534,100,0,0),
(524501,13,7780.069,4999.911,4.1501493  ,100,0,0),
(524501,14,7779.0737,5019.884,4.0935287 ,100,0,0),
(524501,15,7778.783,5045.6294,3.9831343 ,100,0,0),
(524501,16,7778.311,5064.919,4.068481   ,100,0,0),
(524501,17,7777.7173,5087.7954,3.992991 ,100,0,0),
(524501,18,7776.9395,5103.5073,4.0299687,100,0,0),
-- 524849
(524849,1 ,7744.1353,5041.415,3.979483,100,0,0),
(524849,2 ,7758.278,5042.061,4.045553 ,100,0,0),
(524849,3 ,7770.558,5042.227,3.9840825,100,0,0),
(524849,4 ,7778.4087,5044.7095,3.9831326,100,0,0),
(524849,5 ,7778.358,5049.593,3.9902463 ,100,0,0),
(524849,6 ,7770.538,5051.01,4.0088134  ,100,0,0),
(524849,7 ,7758.238,5050.559,4.0429215 ,100,0,0),
(524849,8 ,7744.637,5050.251,3.9808774 ,100,0,0),
(524849,9 ,7728.819,5049.8384,3.8645756,100,0,0),
(524849,10,7715.039,5049.5522,3.8426993,100,0,0),
(524849,11,7701.7524,5048.962,3.8643544,100,0,0),
(524849,12,7695.08,5046.1177,3.8724356 ,100,0,0),
(524849,13,7695.127,5041.026,3.8733704 ,100,0,0),
(524849,14,7702.0454,5039.7827,3.8624213,100,0,0),
(524849,15,7715.01,5039.971,3.8413727,100,0,0),
(524849,16,7728.8657,5041.028,3.862256,100,0,0),
-- 524498
(524498,1 ,7738.173,4953.8267,3.374022,100,0,0),
(524498,2 ,7720.108,4953.6084,3.374007,100,0,0),
(524498,3 ,7705.2456,4955.1196,3.3733778,100,0,0),
(524498,4 ,7705.5723,4959.6626,3.373169,100,0,0),
(524498,5 ,7720.577,4961.6636,3.3737905,100,0,0),
(524498,6 ,7738.527,4962.4175,3.3765285,100,0,0),
(524498,7 ,7767.874,4961.939,3.4395938 ,100,0,0),
(524498,8 ,7789.731,4961.9272,3.9518821,100,0,0),
(524498,9 ,7798.488,4962.44,11.319307,100,0,0),
(524498,10,7811.953,4963.0586,17.451872,100,0,0),
(524498,11,7812.1587,4955.7954,17.451878,100,0,0),
(524498,12,7800.046,4955.046,12.412189,100,0,0),
(524498,13,7787.836,4954.3486,3.4577115,100,0,0),
(524498,14,7767.858,4954.0645,3.4391837,100,0,0),
-- 524500
(524500,1,7810.868,4959.466,17.451872,100,1000,0),
(524500,2,7823.493,4962.5825,18.892845,100,0,0),
(524500,3,7836.4053,4974.7485,21.774864,100,0,0),
(524500,4,7854.4756,4974.265,21.218468,100,0,0),
(524500,5,7862.4653,4977.5386,19.918663,100,0,0),
(524500,6,7871.528,4989.9595,16.874893,100,0,0),
(524500,7,7885.7466,4994.086,10.177261,100,0,0),
(524500,8,7898.708,4993.045,3.4375153,100,1000,0),
-- 524499
(524499,1 ,7865.079,4908.8135,3.654849  ,100,0,0),
(524499,2 ,7875.6235,4913.2915,1.6905025,100,0,0),
(524499,3 ,7886.257,4916.241,1.8269771  ,100,0,0),
(524499,4 ,7894.5034,4926.305,1.8155025 ,100,0,0),
(524499,5 ,7903.6895,4932.1206,1.3561783,100,0,0),
(524499,6 ,7909.9116,4928.746,1.3860855 ,100,0,0),
(524499,7 ,7915.901,4920.0366,1.5562515 ,100,0,0),
(524499,8 ,7922.8853,4906.3716,1.8394547,100,0,0),
(524499,9 ,7923.671,4887.2095,1.3958025 ,100,0,0),
(524499,10,7911.0444,4864.361,1.9654241 ,100,0,0),
(524499,11,7892.862,4856.7715,1.604742  ,100,0,0),
(524499,12,7873.2837,4853.924,2.0238094 ,100,0,0),
(524499,13,7855.327,4854.975,3.827818   ,100,0,0),
(524499,14,7847.0493,4864.5537,4.3041363,100,0,0),
(524499,15,7851.4316,4887.8267,4.748086 ,100,0,0),
(524499,16,7857.713,4903.768,6.946353   ,100,0,0),
-- 524497
(524497,1 ,7902.73,4822.3896,2.2162628,100,1000,0),
(524497,2 ,7894.145,4832.1626,1.9965589,100,0,0),
(524497,3 ,7872.6865,4844.099,2.5094051,100,0,0),
(524497,4 ,7857.9204,4846.291,3.9898052,100,0,0),
(524497,5 ,7848.501,4838.4634,7.138975 ,100,0,0),
(524497,6 ,7848.48,4825.148,11.051521  ,100,0,0),
(524497,7 ,7845.955,4807.0215,14.084236,100,0,0),
(524497,8 ,7842.935,4791.174,14.144353 ,100,0,0),
(524497,9 ,7833.2915,4777.2407,14.297963,100,0,0),
(524497,10,7811.28,4772.3306,14.3819475,100,0,0),
(524497,11,7791.904,4781.6685,14.418503,100,0,0),
(524497,12,7817.771,4748.803,7.2355328 ,100,0,0),
(524497,13,7820.0435,4737.385,3.282652 ,100,0,0),
(524497,14,7815.54,4721.1416,0.77219903,100,0,0),
(524497,15,7811.83,4706.45,0.54771173  ,100,0,0),
(524497,16,7815.6675,4694.7886,0.40626764,100,1000,0),
-- 524489
(524489,1 ,7738.7803,4916.737,3.3425074 ,100,0,0),
(524489,2 ,7738.9756,4892.497,3.3424983 ,100,0,0),
(524489,3 ,7739.3306,4871.607,3.26653   ,100,0,0),
(524489,4 ,7742.4897,4854.1484,4.481633 ,100,0,0),
(524489,5 ,7740.2397,4846.6304,4.9647875,100,0,0),
(524489,6 ,7731.657,4846.7,4.902543     ,100,0,0),
(524489,7 ,7727.3516,4854.819,4.902543  ,100,0,0),
(524489,8 ,7730.408,4869.888,4.02007    ,100,0,0),
(524489,9 ,7730.0054,4892.3833,3.3424904,100,0,0),
(524489,10,7730.119,4916.7915,3.3424947 ,100,0,0),
(524489,11,7729.7275,4943.443,3.34573   ,100,0,0),
(524489,12,7730.9976,4959.9453,3.3742192,100,0,0),
(524489,13,7736.173,4959.94,3.374433    ,100,0,0),
(524489,14,7738.5938,4944.276,3.3413107 ,100,0,0),
-- 524488
(524488,1 ,7817.401,4862.308,4.356392  ,100,0,0),
(524488,2 ,7817.1597,4856.163,4.217476 ,100,0,0),
(524488,3 ,7809.472,4854.2603,4.467476 ,100,0,0),
(524488,4 ,7784.154,4856.8545,7.6526027,100,0,0),
(524488,5 ,7770.796,4856.2197,7.7124286,100,0,0),
(524488,6 ,7745.6006,4853.5337,4.370183,100,0,0),
(524488,7 ,7722.797,4853.594,4.902543  ,100,0,0),
(524488,8 ,7697.8525,4855.2563,8.008168,100,0,0),
(524488,9 ,7684.5254,4855.149,7.8654017,100,0,0),
(524488,10,7659.5044,4851.8467,4.9878354,100,0,0),
(524488,11,7651.7524,4853.2734,5.5900083,100,0,0),
(524488,12,7651.404,4858.743,5.6317563 ,100,0,0),
(524488,13,7659.1084,4861.471,4.9878354,100,0,0),
(524488,14,7678.249,4859.9204,7.157669 ,100,0,0),
(524488,15,7690.874,4860.0283,8.011043 ,100,0,0),
(524488,16,7698.7065,4860.133,7.946078 ,100,0,0),
(524488,17,7723.3384,4862.965,4.902543 ,100,0,0),
(524488,18,7745.243,4862.9873,4.606633 ,100,0,0),
(524488,19,7771.0923,4860.7207,7.7170796,100,0,0),
(524488,20,7784.493,4861.3647,7.664408,100,0,0),
(524488,21,7809.511,4864.6772,4.467476,100,0,0),
-- 524487
(524487,1 ,7674.7197,4854.4116,6.651861,100,0,0),
(524487,2 ,7659.8535,4851.192,4.9878354,100,0,0),
(524487,3 ,7650.5723,4852.065,5.850384,100,0,0),
(524487,4 ,7647.377,4855.809,6.36723,100,0,0),
(524487,5 ,7650.9653,4860.5,5.8820004,100,0,0),
(524487,6 ,7659.6787,4861.1445,4.9878354,100,0,0),
(524487,7 ,7674.012,4859.2754,6.559359,100,0,0),
(524487,8 ,7692.6025,4859.7163,7.9978046,100,0,0),
(524487,9 ,7711.3013,4860.5728,6.0394974,100,0,0),
(524487,10,7725.757,4864.04,4.902543,100,0,0),
(524487,11,7748.147,4862.5415,4.731633,100,0,0),
(524487,12,7764.955,4860.6216,6.99974,100,0,0),
(524487,13,7777.3457,4861.125,7.739947,100,0,0),
(524487,14,7794.4175,4861.5645,6.195547,100,0,0),
(524487,15,7808.108,4863.904,4.467476,100,0,0),
(524487,16,7817.7476,4863.639,4.217476,100,0,0),
(524487,17,7824.0156,4858.8506,3.967476,100,0,0),
(524487,18,7818.0503,4853.7163,4.342476,100,0,0),
(524487,19,7807.9595,4854.9023,4.467476,100,0,0),
(524487,20,7794.0703,4856.6353,6.282682,100,0,0),
(524487,21,7776.4844,4856.3105,7.7406178,100,0,0),
(524487,22,7764.329,4856.191,6.92724,100,0,0),
(524487,23,7750.869,4853.71,4.4707193,100,0,0),
(524487,24,7725.883,4853.4106,4.902543,100,0,0),
(524487,25,7711.3994,4856.0884,6.0531335,100,0,0),
(524487,26,7693.6157,4855.283,8.002091,100,0,0),
-- 524490
(524490,1 ,7567.4165,4895.1406,43.532295,100,0,0),
(524490,2 ,7574.2554,4882.2095,43.334908,100,0,0),
(524490,3 ,7593.2563,4867.2856,43.532295,100,0,0),
(524490,4 ,7599.894,4850.061,43.589523  ,100,0,0),
(524490,5 ,7592.3647,4832.0537,43.45816 ,100,0,0),
(524490,6 ,7576.2065,4812.069,43.58316  ,100,0,0),
(524490,7 ,7563.5366,4788.2744,43.38146 ,100,0,0),
(524490,8 ,7574.1797,4778.1196,41.59821 ,100,0,0),
(524490,9 ,7587.3647,4779.367,36.813297 ,100,0,0),
(524490,10,7609.468,4805.994,24.737896  ,100,0,0),
(524490,11,7626.8247,4825.8667,16.125713,100,0,0),
(524490,12,7630.384,4852.656,9.884644   ,100,0,0),
(524490,13,7629.0522,4866.9653,12.214016,100,0,0),
(524490,14,7623.337,4882.315,18.198147  ,100,0,0),
(524490,15,7603.327,4896.845,26.500515  ,100,0,0),
(524490,16,7586.8066,4913.57,35.52841   ,100,0,0),
(524490,17,7576.104,4925.9062,40.50766  ,100,0,0),
(524490,18,7563.3145,4922.124,42.885544 ,100,0,0),
(524490,19,7559.7803,4910.819,43.545822 ,100,0,0),
-- 524509
(524509,1,7545.8926,4899.7456,43.6182,100,1000,0),
(524509,2,7536.828,4899.764,43.36828 ,100,0,0),
(524509,3,7523.28,4898.336,43.27328  ,100,0,0),
(524509,4,7510.663,4896.731,43.136074,100,0,0),
(524509,5,7498.487,4895.799,42.951195,100,0,0),
(524509,6,7482.6865,4892.4043,42.852684,100,0,0),
(524509,7,7469.401,4886.5845,43.98806,100,1000,0),
-- 524496
(524496,1 ,7639.288,4855.6016,8.183636,100,0,0),
(524496,2 ,7636.1562,4833.5635,12.531414,100,0,0),
(524496,3 ,7622.077,4801.9165,25.02354,100,0,0),
(524496,4 ,7606.416,4777.504,33.543495,100,0,0),
(524496,5 ,7592.7524,4769.5674,37.736515,100,0,0),
(524496,6 ,7572.174,4771.7114,41.19501,100,0,0),
(524496,7 ,7559.5693,4781.9604,43.101063,100,0,0),
(524496,8 ,7556.8413,4804.775,43.65118,100,0,0),
(524496,9 ,7569.049,4823.7886,43.45816,100,0,0),
(524496,10,7574.7446,4834.077,43.589523,100,0,0),
(524496,11,7576.132,4848.1216,43.589523,100,0,0),
(524496,12,7573.422,4866.1187,43.589523,100,0,0),
(524496,13,7566.0747,4879.708,43.49328,100,0,0),
(524496,14,7556.617,4891.983,43.61828,100,0,0),
(524496,15,7547.678,4915.8394,43.045822,100,0,0),
(524496,16,7556.4956,4929.845,42.795822,100,0,0),
(524496,17,7571.837,4935.193,41.273766,100,0,0),
(524496,18,7587.8125,4927.06,37.631073,100,0,0),
(524496,19,7600.2017,4915.8213,33.00334,100,0,0),
(524496,20,7612.613,4903.5796,26.568893,100,0,0),
(524496,21,7623.9263,4894.7354,21.793118,100,0,0),
(524496,22,7637.8516,4872.537,11.814096,100,0,0),
-- 524491
(524491,1,7496.585,4800.3477,44.89422,100,1000,0),
(524491,2,7508.6025,4792.018,44.803665,100,0,0),
(524491,3,7523.0815,4791.069,44.803665,100,0,0),
(524491,4,7536.462,4791.1,44.231556,100,0,0),
(524491,5,7547.869,4794.129,43.726063,100,1000,0);
DELETE FROM `creature_spawn_data` WHERE guid IN (528563,524501,524849,524498,524500,524499,524497,524489,524488,524487,524490,524509,524496,524491);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(528563,80),(524501,80),(524849,80),(524498,80),
(524500,80),(524499,80),(524497,80),(524489,80),
(524488,80),(524487,80),(524490,80),(524509,80),
(524496,80),(524491,80);
DELETE FROM dbscripts_on_relay WHERE id = 20838;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20838,1,21,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Onslaught Raven Bishop 29338 EAI: active'),
(20838,2,32,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Onslaught Raven Bishop 29338 EAI: pause waypoints'),
(20838,2,32,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Onslaught Raven Bishop 29338 EAI: pause waypoints'),
(20838,10,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Onslaught Raven Bishop 29338 EAI: move towards target'),
(20838,100,37,0,0,3,0,0,2,0,0,0,0,0,0,0,0,'Part of Onslaught Raven Bishop 29338 EAI: move towards target'),
(20838,7000,0,20340,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Onslaught Raven Bishop 29338 EAI: Random Say'),
(20838,7001,1,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Onslaught Raven Bishop 29338 EAI: emote'),
(20838,10000,15,54323,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Onslaught Raven Bishop 29338 EAI: Cast 54323 on Target'),
(20838,15000,32,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Onslaught Raven Bishop 29338 EAI: unpause waypoints'),
(20838,15001,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Onslaught Raven Bishop 29338 EAI: unpause waypoints'),
(20838,15002,35,9,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Onslaught Raven Bishop 29338 EAI: send event D'),
(20838,15010,21,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Onslaught Raven Bishop 29338 EAI: unactive');
DELETE FROM dbscript_random_templates WHERE id = 20340;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20340,0,30018,0,'Part of Onslaught Raven Bishop 29338 EAI - Random OOC Say 1'),
(20340,0,30019,0,'Part of Onslaught Raven Bishop 29338 EAI - Random OOC Say 2'),
(20340,0,30020,0,'Part of Onslaught Raven Bishop 29338 EAI - Random OOC Say 3'),
(20340,0,30021,0,'Part of Onslaught Raven Bishop 29338 EAI - Random OOC Say 4'),
(20340,0,30022,0,'Part of Onslaught Raven Bishop 29338 EAI - Random OOC Say 5'),
(20340,0,30023,0,'Part of Onslaught Raven Bishop 29338 EAI - Random OOC Say 6'),
(20340,0,30024,0,'Part of Onslaught Raven Bishop 29338 EAI - Random OOC Say 7'),
(20340,0,30025,0,'Part of Onslaught Raven Bishop 29338 EAI - Random OOC Say 8');
DELETE FROM spell_script_target WHERE entry IN (54323);
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(54323, 1, 29329, 0),
(54323, 1, 29330, 0);

-- Onslaught Paladin 29329
DELETE FROM creature_addon WHERE guid IN (524859,524974);
DELETE FROM creature_movement WHERE id IN (524859,524974);
DELETE FROM game_event_creature WHERE guid IN (524859,524974);
DELETE FROM game_event_creature_data WHERE guid IN (524859,524974);
DELETE FROM creature_battleground WHERE guid IN (524859,524974);
DELETE FROM creature_linking WHERE guid IN (524859,524974);
DELETE FROM creature where guid IN (524859,524974);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(524859,29329,571,1,1,7365.5903,4905.6216,1.7787883,4.46804,300,300,0,0),
(524974,29329,571,1,1,7342.569,4834.147,1.4965143,1.1868,300,300,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 29329);
DELETE FROM creature_template_addon WHERE entry IN (29329);
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(29329,19085,0,1,0,0,0,NULL);
UPDATE creature SET orientation = 3.383618 WHERE guid = 524291;
UPDATE creature SET position_x = 7836.377, position_y = 5118.6196, position_z = 1.6060568, spawndist = 0, MovementType = 4 WHERE guid = 524295; -- linear
UPDATE creature SET position_x = 7771.625, position_y = 5110.2524, position_z = 4.0469317, spawndist = 0, MovementType = 4 WHERE guid = 524294; -- linear
UPDATE creature SET position_x = 7696.608, position_y = 5043.163, position_z = 3.8740644, spawndist = 0, MovementType = 4 WHERE guid = 524299; -- linear
UPDATE creature SET position_x = 7787.367, position_y = 4957.27, position_z = 3.4602482, spawndist = 0, MovementType = 4 WHERE guid = 524293; -- linear
UPDATE creature SET position_x = 7816.443, position_y = 4712.8735, position_z = 0.70847833, spawndist = 0, MovementType = 4 WHERE guid = 524292; -- linear
UPDATE creature SET position_x = 7819.491, position_y = 4859.118, position_z = 3.9409866, spawndist = 0, MovementType = 4 WHERE guid = 524303; -- linear
UPDATE creature SET position_x = 7734.694, position_y = 4879.671, position_z = 3.342502, spawndist = 0, MovementType = 4 WHERE guid = 524288; -- linear
UPDATE creature SET position_x = 7634.033, position_y = 4857.5625, position_z = 9.466351, spawndist = 0, MovementType = 2 WHERE guid = 524289;
DELETE FROM creature_movement WHERE id IN (524295,524294,524299,524293,524292,524303,524288,524289);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 524295
(524295,1,7836.377,5118.6196,1.6060568,100,1000,0),
(524295,2,7819.473,5105.283,0.84545684,100,0,0),
(524295,3,7809.848,5090.251,0.8835368 ,100,0,0),
(524295,4,7807.0146,5072.135,2.3912272,100,0,0),
(524295,5,7804.799,5053.5127,3.9005349,100,0,0),
(524295,6,7808.174,5043.014,3.3706276 ,100,0,0),
(524295,7,7820.883,5024.7207,2.3294592,100,1000,0),
-- 524294
(524294,1 ,7771.625,5110.2524,4.0469317,100,1000,0),
(524294,2 ,7772.0166,5098.477,4.016214 ,100,0,0),
(524294,3 ,7772.651,5082.3394,4.0197115,100,0,0),
(524294,4 ,7773.1772,5067.046,4.080225 ,100,0,0),
(524294,5 ,7773.4673,5052.854,4.007739 ,100,0,0),
(524294,6 ,7773.3047,5038.0303,3.9720242,100,0,0),
(524294,7 ,7774.118,5023.908,4.038212  ,100,0,0),
(524294,8 ,7774.3203,5007.122,4.2320147,100,0,0),
(524294,9 ,7774.847,4988.8955,4.0110507,100,0,0),
(524294,10,7775.067,4969.78,4.198728,100,1000,0),
-- 524299
(524299,1,7696.608,5043.163,3.8740644,100,1000,0),
(524299,2,7712.5347,5043.678,3.8446,100,0,0),
(524299,3,7727.7056,5044.154,3.85468,100,0,0),
(524299,4,7744.7188,5045.08,3.998875,100,0,0),
(524299,5,7761.6978,5045.933,4.046302,100,1000,0),
-- 524293
(524293,1,7787.367,4957.27,3.4602482,100,1000,0),
(524293,2,7777.2056,4957.129,3.4630601,100,0,0),
(524293,3,7766.0825,4956.8804,3.4348083,100,0,0),
(524293,4,7754.808,4957.0264,3.4066682,100,0,0),
(524293,5,7743.744,4956.811,3.3739452,100,0,0),
(524293,6,7732.8325,4957.082,3.3734632,100,0,0),
(524293,7,7723.8613,4957.0464,3.3741605,100,0,0),
(524293,8,7714.317,4957.06,3.3737578,100,0,0),
(524293,9,7704.4907,4957.1743,3.373343,100,1000,0),
-- 524292
(524292,1 ,7816.443,4712.8735,0.70847833,100,1000,0),
(524292,2 ,7820.315,4728.9556,1.334577,100,0,0),
(524292,3 ,7821.5225,4744.9077,5.789854,100,0,0),
(524292,4 ,7819.7446,4761.7104,12.08856,100,0,0),
(524292,5 ,7831.172,4781.0557,14.172963,100,0,0),
(524292,6 ,7842.671,4803.1,14.095222   ,100,0,0),
(524292,7 ,7845.1,4831.785,8.907112    ,100,0,0),
(524292,8 ,7850.1743,4850.268,4.275572 ,100,0,0),
(524292,9 ,7888.5356,4850.864,1.3988094,100,0,0),
(524292,10,7916.4673,4859.5337,2.4019475,100,0,0),
(524292,11,7918.808,4886.1294,1.6968279,100,0,0),
(524292,12,7917.51,4907.902,1.8874283,100,1000,0),
-- 524303
(524303,1 ,7819.491,4859.118,3.9409866,100,1000,0),
(524303,2 ,7808.9272,4859.164,4.467476 ,100,0,0),
(524303,3 ,7799.4253,4859.098,5.256156 ,100,0,0),
(524303,4 ,7790.0366,4858.8745,6.8221097,100,0,0),
(524303,5 ,7778.828,4858.89,7.659146,100,0,0),
(524303,6 ,7767.4185,4858.689,7.151955,100,0,0),
(524303,7 ,7756.8647,4858.3633,5.8147984,100,0,0),
(524303,8 ,7744.3423,4858.2773,4.356633 ,100,0,0),
(524303,9 ,7733.499,4858.6396,4.481633  ,100,0,0),
(524303,10,7720.5923,4858.1304,4.9361124,100,0,0),
(524303,11,7710.1406,4857.9927,6.175105 ,100,0,0),
(524303,12,7700.3525,4857.768,7.553878  ,100,0,0),
(524303,13,7690.3516,4857.3813,7.9231687,100,0,0),
(524303,14,7681.0747,4857.2407,7.3267593,100,0,0),
(524303,15,7672.2524,4856.6533,6.254045 ,100,0,0),
(524303,16,7663.6978,4856.379,4.9066586 ,100,0,0),
(524303,17,7653.4087,4855.8887,5.29472,100,1000,0),
-- 524288
(524288,1,7734.694,4879.671,3.342502,100,1000,0),
(524288,2,7734.5,4890.651,3.3425024   ,100,0,0),
(524288,3,7734.539,4901.2705,3.3424988,100,0,0),
(524288,4,7734.461,4913.1353,3.3425033,100,0,0),
(524288,5,7734.4443,4925.032,3.3424957,100,0,0),
(524288,6,7734.251,4936.1606,3.3400326,100,0,0),
(524288,7,7734.155,4944.0938,3.3457167,100,1000,0),
-- 524289
(524289,1 ,7634.033,4857.5625,9.466351  ,100,0,0),
(524289,2 ,7633.6353,4872.9556,12.99354 ,100,0,0),
(524289,3 ,7625.9775,4887.2275,19.469875,100,0,0),
(524289,4 ,7613.099,4899.147,25.025784  ,100,0,0),
(524289,5 ,7596.2944,4914.7173,33.288788,100,0,0),
(524289,6 ,7582.532,4926.721,38.665985  ,100,0,0),
(524289,7 ,7563.7266,4928.4663,42.62639 ,100,0,0),
(524289,8 ,7552.0166,4917.7026,43.170822,100,0,0),
(524289,9 ,7555.117,4903.3857,43.420822 ,100,0,0),
(524289,10,7570.6313,4884.607,43.12275  ,100,0,0),
(524289,11,7583.5713,4874.5215,43.407295,100,0,0),
(524289,12,7593.475,4861.4614,43.4312   ,100,0,0),
(524289,13,7595.0176,4849.739,43.339523 ,100,0,0),
(524289,14,7594.644,4835.217,43.464523  ,100,0,0),
(524289,15,7585.5415,4819.25,43.58316   ,100,0,0),
(524289,16,7569.032,4803.295,43.554596  ,100,0,0),
(524289,17,7563.327,4787.6416,43.30553  ,100,0,0),
(524289,18,7571.25,4776.074,41.750553   ,100,0,0),
(524289,19,7587.1406,4774.246,37.875553 ,100,0,0),
(524289,20,7602.9844,4787.568,31.185831 ,100,0,0),
(524289,21,7617.71,4807.5444,23.315655  ,100,0,0),
(524289,22,7629.4556,4826.5435,15.441875,100,0,0),
(524289,23,7633.6772,4841.389,10.7006035,100,0,0);

-- Onslaught Harbor Guard 29330
DELETE FROM creature_addon WHERE guid IN (524975,524976,524977,524978,524979,524980,524981,525047,525056,525057,525058,525059,525667,525668,525669,525670);
DELETE FROM creature_movement WHERE id IN (524975,524976,524977,524978,524979,524980,524981,525047,525056,525057,525058,525059,525667,525668,525669,525670);
DELETE FROM game_event_creature WHERE guid IN (524975,524976,524977,524978,524979,524980,524981,525047,525056,525057,525058,525059,525667,525668,525669,525670);
DELETE FROM game_event_creature_data WHERE guid IN (524975,524976,524977,524978,524979,524980,524981,525047,525056,525057,525058,525059,525667,525668,525669,525670);
DELETE FROM creature_battleground WHERE guid IN (524975,524976,524977,524978,524979,524980,524981,525047,525056,525057,525058,525059,525667,525668,525669,525670);
DELETE FROM creature_linking WHERE guid IN (524975,524976,524977,524978,524979,524980,524981,525047,525056,525057,525058,525059,525667,525668,525669,525670);
DELETE FROM creature where guid IN (524975,524976,524977,524978,524979,524980,524981,525047,525056,525057,525058,525059,525667,525668,525669,525670);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(524975,29330,571,1,1,7807.553,4692.6343,0.31368333,4.625122,300,300,0,0),
(524976,29330,571,1,1,7662.9062,4885.3745,-0.5446607,3.263765,300,300,0,0),
(524977,29330,571,1,1,7820.768,5127.058,0.5946433,0.2268927,300,300,0,0),
(524978,29330,571,1,1,7846.225,5129.901,1.1690654,1.6580628,300,300,0,0),
(524979,29330,571,1,1,7848.5156,4728.922,0.26667634,5.63741,300,300,0,0),
(524980,29330,571,1,1,7824.8594,4706.5415,1.0008644,3.26376,300,300,0,0),
(524981,29330,571,1,1,7480.8604,4886.4644,43.56336,2.1467549,300,300,0,0),
(525047,29330,571,1,1,7368.685,4903.944,2.0356064,3.490658,300,300,0,0),
(525056,29330,571,1,1,7368.567,4900.803,1.8854693,2.6529,300,300,0,0),
(525057,29330,571,1,1,7365.5894,4900.5146,1.6013024,2.28638,300,300,0,0),
(525058,29330,571,1,1,7367.474,4870.4634,2.0861542,2.33874,300,300,0,0),
(525059,29330,571,1,1,7366.482,4866.265,2.1976252,2.914699,300,300,0,0),
(525667,29330,571,1,1,7367.847,4862.924,3.0054653,3.14159,300,300,0,0),
(525668,29330,571,1,1,7339.182,4835.028,1.3422453,0.680678,300,300,0,0),
(525669,29330,571,1,1,338.934,4839.393,0.9151193,5.916666,300,300,0,0),
(525670,29330,571,1,1,7345.241,4835.4844,1.4410094,3.595378,300,300,0,0);
UPDATE creature SET position_x = 7627.3613, position_y = 4913.651, position_z = 14.434386, spawndist = 0, MovementType = 4 WHERE guid = 524326; -- linear
UPDATE creature SET position_x = 7617.5376, position_y = 4935.0396, position_z = 14.247061, spawndist = 0, MovementType = 4 WHERE guid = 524332; -- linear
UPDATE creature SET position_x = 7718.8115, position_y = 4710.015, position_z = 13.959754, spawndist = 0, MovementType = 4 WHERE guid = 524366; -- linear
UPDATE creature SET position_x = 7738.021, position_y = 4754.811, position_z = 13.69046, spawndist = 0, MovementType = 4 WHERE guid = 524336; -- linear
UPDATE creature SET position_x = 7629.901, position_y = 4774.818, position_z = 14.561669, spawndist = 0, MovementType = 4 WHERE guid = 524337; -- linear
UPDATE creature SET position_x = 7635.4253, position_y = 4792.2144, position_z = 14.538044, spawndist = 0, MovementType = 4 WHERE guid = 524335; -- linear
UPDATE creature SET position_x = 7564.5444, position_y = 5061.983, position_z = 14.105755, spawndist = 0, MovementType = 4 WHERE guid = 524339; -- linear
UPDATE creature SET position_x = 7605.0156, position_y = 5088.9146, position_z = 14.389374, spawndist = 0, MovementType = 4 WHERE guid = 524338; -- linear
UPDATE creature SET position_x = 7595.33, position_y = 4976.03, position_z = 16.2824, spawndist = 0, MovementType = 4 WHERE guid = 524347; -- linear
UPDATE creature SET position_x = 7743.3926, position_y = 4867.4346, position_z = 4.5734615, orientation = 3.124139, spawndist = 0, MovementType = 0 WHERE guid = 524329;
UPDATE creature SET position_x = 7810.8926, position_y = 4868.233, position_z = 4.4941416, orientation = 0, spawndist = 0, MovementType = 0 WHERE guid = 524391;
UPDATE creature SET position_x = 7657.705, position_y = 4865.4727, position_z = 4.9053245, orientation = 3.2114057, spawndist = 0, MovementType = 0 WHERE guid = 524327;
UPDATE creature SET position_x = 7816.9443, position_y = 4965.4023, position_z = 17.676031, orientation = 4.112556, spawndist = 0, MovementType = 0 WHERE guid = 524357;
UPDATE creature SET position_x = 7842.672, position_y = 4972.6665, position_z = 22.53877, orientation = 4.886921, spawndist = 0, MovementType = 0 WHERE guid = 524356;
UPDATE creature SET position_x = 7787.665, position_y = 4997.7837, position_z = 5.5861154, orientation = 5.864306, spawndist = 0, MovementType = 0 WHERE guid = 524355;
UPDATE creature SET position_x = 7855.415, position_y = 4858.934, position_z = 4.0966187, orientation = 0.802851, spawndist = 0, MovementType = 0 WHERE guid = 524359;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 524353;
DELETE FROM `creature_spawn_data` WHERE guid IN (524364,524308,524304,524305,524325,524348,524349,525047,525056,525057,525668,525669,525670);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(524364,80),(524308,80),(524304,80),(524305,80),(524325,80),
(524348,80),(524349,80),(525047,80),(525056,80),(525057,80),
(525668,80),(525669,80),(525670,80);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (
524333,524329,524391,524976,524357,524354,524318,524340,524375,524388,524390,524977,524978,524979,524980,524981);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES 
(524333,0,0,1,0,69,0,NULL),
(524329,0,0,1,0,375,0,NULL),
(524391,0,0,1,0,375,0,NULL),
(524976,0,0,1,0,69,0,NULL),
(524357,0,0,1,0,375,0,NULL),
(524340,0,1,1,0,0,0,NULL),
(524375,0,0,2,0,214,0,NULL),
(524388,0,0,2,0,214,0,NULL),
(524390,0,0,2,0,214,0,NULL),
(524977,0,1,1,0,0,0,NULL),
(524978,0,0,1,0,69,0,NULL),
(524979,0,0,2,0,214,0,NULL),
(524980,0,1,1,0,0,0,NULL),
(524981,0,1,1,0,0,0,NULL);
DELETE FROM creature_movement WHERE id IN (524326,524332,524366,524336,524337,524335,524339,524338,524347);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 524326
(524326,1,7627.3613,4913.651,14.434386,100,1000,0),
(524326,2,7633.6753,4904.3154,14.436682,100,0,0),
(524326,3,7644.147,4888.691,14.436249,100,1000,0),
-- 524332
(524332,1,7617.5376,4935.0396,14.247061,100,1000,0),
(524332,2,7614.059,4944.254,14.243998,100,0,0),
(524332,3,7611.4263,4954.2812,14.236984,100,0,0),
(524332,4,7609.229,4963.9873,14.234959,100,1000,0),
-- 524366
(524366,1,7718.8115,4710.015,13.959754,100,1000,0),
(524366,2,7721.356,4719.363,13.959118,100,0,0),
(524366,3,7724.0547,4729.5156,13.961258,100,0,0),
(524366,4,7726.8247,4740.5747,13.968648,100,1000,0),
-- 524336
(524336,1,7738.021,4754.811,13.69046,100,1000,0),
(524336,2,7746.4253,4759.328,13.679985,100,0,0),
(524336,3,7756.114,4764.358,13.677761,100,0,0),
(524336,4,7765.155,4769.2095,13.679946,100,1000,0),
-- 524337
(524337,1,7629.901,4774.818,14.561669,100,1000,0),
(524337,2,7624.3804,4761.1,14.554606,100,0,0),
(524337,3,7622.5645,4753.749,14.553069,100,0,0),
(524337,4,7618.941,4744.675,14.551081,100,1000,0),
-- 524335
(524335,1,7635.4253,4792.2144,14.538044,100,1000,0),
(524335,2,7642.0503,4808.1143,14.534634,100,0,0),
(524335,3,7645.8506,4819.2905,14.545624,100,1000,0),
-- 524339
(524339,1,7564.5444,5061.983,14.105755,100,1000,0),
(524339,2,7574.0244,5066.2207,14.107579,100,0,0),
(524339,3,7585.135,5071.341,14.110071,100,0,0),
(524339,4,7592.703,5074.757,14.108124,100,1000,0),
-- 524338
(524338,1,7605.0156,5088.9146,14.389374,100,1000,0),
(524338,2,7607.9463,5097.9893,14.379135,100,0,0),
(524338,3,7611.5806,5109.029,14.376767,100,0,0),
(524338,4,7614.7397,5117.952,14.377269,100,1000,0),
-- 524347 - custom fix - blizz has him broken (goes underground)
(524347,1,7595.33,4976.03,16.2824,100,1000,0),
(524347,2,7587.28,4977.09,16.2824,100,0,0),
(524347,3,7578.88,4978.35,16.2836,100,0,0),
(524347,4,7567.63,4980.16,16.2892,100,1000,0);
DELETE FROM dbscripts_on_relay WHERE id = 20839;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20839,1000,1,423,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Onslaught Harbor Guard 29330 EAI: emote'),
(20839,10000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Onslaught Harbor Guard 29330 EAI: reset emote');

-- Ravenous Jaws 29392
DELETE FROM creature_addon WHERE guid BETWEEN 525671 AND 525691;
DELETE FROM creature_movement WHERE id BETWEEN 525671 AND 525691;
DELETE FROM game_event_creature WHERE guid BETWEEN 525671 AND 525691;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 525671 AND 525691;
DELETE FROM creature_battleground WHERE guid BETWEEN 525671 AND 525691;
DELETE FROM creature_linking WHERE guid BETWEEN 525671 AND 525691;
DELETE FROM creature where guid BETWEEN 525671 AND 525691;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(525671,29392,571,1,1,7774.166,4599.9907,-5.9413934,0.61086,300,300,20,1),
(525672,29392,571,1,1,7730.4634,4504.2646,-10.456424,5.332196,300,300,20,1),
(525673,29392,571,1,1,7691.09,4908.35,-8.30285,0.562387,300,300,20,1),
(525674,29392,571,1,1,7650.4956,5202.4844,-13.525286,4.12339,300,300,20,1),
(525675,29392,571,1,1,7575.0815,5245.488,-12.43939,0.56534,300,300,20,1),
(525676,29392,571,1,1,7659.0024,5290.332,-12.440424,3.2846,300,300,20,1),
(525677,29392,571,1,1,7747.5815,5233.307,-9.654042,5.92182,300,300,20,1),
(525678,29392,571,1,1,7772.2393,5309.1675,-8.287171,3.676029,300,300,20,1),
(525679,29392,571,1,1,7790.2915,5174.6914,-8.074091,2.8029,300,300,20,1),
(525680,29392,571,1,1,7846.8887,5242.6045,-12.139856,5.8059,300,300,20,1),
(525681,29392,571,1,1,7916.728,5165.5586,-12.467413,4.81038,300,300,20,1),
(525682,29392,571,1,1,7917.389,4725.7554,-12.42826,0.870826,300,300,20,1),
(525683,29392,571,1,1,7844.282,4657.688,-5.983942,1.39977,300,300,20,1),
(525684,29392,571,1,1,7955.34,4785.89,-12.398071,5.528278,300,300,20,1),
(525685,29392,571,1,1,7986.954,4938.3306,-12.456893,2.30357,300,300,20,1),
(525686,29392,571,1,1,7987.9116,4847.3677,-12.481479,5.13793,300,300,20,1),
(525687,29392,571,1,1,8014.59,5023.193,-12.41021,5.48638,300,300,20,1),
(525688,29392,571,1,1,7446.2114,5125.9683,-5.7643647,0.558,300,300,20,1),
(525689,29392,571,1,1,7477.7075,5189.6997,-6.917737,2.36879,300,300,20,1),
(525690,29392,571,1,1,7799.565,4450.1045,-4.6893406,5.1137,300,300,20,1),
(525691,29392,571,1,1,7828.071,4534.3076,-7.381578,4.8893,300,300,20,1);
UPDATE creature SET position_x = 7783.746, position_y = 4882.8657, position_z = -5.723314 WHERE guid = 524722;
UPDATE creature SET position_x = 7680.815430, position_y = 4799.715332, position_z = -9.791794 WHERE guid = 524729;
UPDATE creature SET position_x = 7638.813965, position_y = 5070.456055, position_z = -15.769608 WHERE guid = 524719;
UPDATE creature SET position_x = 7643.377441, position_y = 4960.939941, position_z = -12.782495 WHERE guid = 524724;
UPDATE creature SET position_x = 7912.701172, position_y = 5034.365723, position_z = -10.976919 WHERE guid = 524723;
UPDATE creature SET position_x = 7474.337891, position_y = 5076.833984, position_z = -12.751324 WHERE guid = 524717;
UPDATE creature SET spawndist = 20, MovementType = 1 WHERE id = 29392;

-- Captured Death's Rise Spy 29649
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 29649;
UPDATE creature_template SET InhabitType = 4 WHERE entry = 29649;

-- Grand Admiral Westwind 29621
UPDATE creature SET position_x = 7494.7163, position_y = 4871.9067, position_z = -12.591353, orientation = 1.3439, spawndist = 0, MovementType = 0 WHERE id = 29621;

-- Imp Minion 12922 & Succubus Minion 10928
-- summoned via spell
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id IN (12922,10928));
DELETE FROM creature_movement WHERE id IN(SELECT guid FROM creature WHERE id IN (12922,10928));
DELETE FROM game_event_creature WHERE guid IN(SELECT guid FROM creature WHERE id IN (12922,10928));
DELETE FROM game_event_creature_data WHERE guid IN(SELECT guid FROM creature WHERE id IN (12922,10928));
DELETE FROM creature_battleground WHERE guid IN(SELECT guid FROM creature WHERE id IN (12922,10928));
DELETE FROM creature_linking WHERE guid IN(SELECT guid FROM creature WHERE id IN (12922,10928));
DELETE FROM creature where id IN (12922,10928);

-- Onslaught Darkweaver 29614
DELETE FROM creature_addon WHERE guid BETWEEN 525692 AND 525695;
DELETE FROM creature_movement WHERE id BETWEEN 525692 AND 525695;
DELETE FROM game_event_creature WHERE guid BETWEEN 525692 AND 525695;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 525692 AND 525695;
DELETE FROM creature_battleground WHERE guid BETWEEN 525692 AND 525695;
DELETE FROM creature_linking WHERE guid BETWEEN 525692 AND 525695;
DELETE FROM creature where guid BETWEEN 525692 AND 525695;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(525692,29614,571,1,1,7431.289,4818.1685,-17.657095,0,300,300,0,0),
(525693,29614,571,1,1,7431.289,4818.1685,-17.657095,0,300,300,0,0),
(525694,29614,571,1,1,7441.1025,4838.6523,-17.265795,3.569417,300,300,0,0),
(525695,29614,571,1,1,7436.479,4840.539,-17.234318,5.09763,300,300,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 29614);
DELETE FROM creature_template_addon WHERE entry IN (29614);
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(29614,0,0,1,0,0,0,NULL);
UPDATE creature SET position_x = 7434.4565, position_y = 4835.4844, position_z = -17.204666, orientation = 0.460878, spawndist = 0, MovementType = 0 WHERE guid = 525664;
DELETE FROM `creature_spawn_data` WHERE guid IN (525651,525652,525653,525654,525655,525656,525659,525660,525661,525664,525694,525695);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(525651,81),(525652,81),(525653,81),
(525654,81),(525655,81),(525656,81),
(525659,81),(525660,81),(525661,81),
(525664,81),(525694,81),(525695,81);
DELETE FROM dbscripts_on_relay WHERE id = 20840;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20840,1,31,29649,7,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Onslaught Darkweaver 29614 EAI: search for 29649'),
(20840,100,15,33346,0,0,29649,10,1,0,0,0,0,0,0,0,0,'Part of Onslaught Darkweaver 29614 EAI: cast 29649');
DELETE FROM dbscript_random_templates WHERE id = 20340;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20340,0,30265,0,'Part of Onslaught Darkweaver 29614 EAI - Random Aggro Say 1'),
(20340,0,30266,0,'Part of Onslaught Darkweaver 29614 EAI - Random Aggro Say 2'),
(20340,0,30267,0,'Part of Onslaught Darkweaver 29614 EAI - Random Aggro Say 3'),
(20340,0,30268,0,'Part of Onslaught Darkweaver 29614 EAI - Random Aggro Say 4'),
(20340,0,30269,0,'Part of Onslaught Darkweaver 29614 EAI - Random Aggro Say 5');
-- Group 1
UPDATE creature SET position_x = 7479.3003, position_y = 4816.151, position_z = 7.1697974, spawndist = 0, MovementType = 0 WHERE guid IN (525657,525658);
DELETE FROM `spawn_group` WHERE id IN (34061);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34061,'Icecrown - Onslaught Harbor - Onslaught Darkweaver 29614 x2 - Patrol 1', 0, 0, 0, 0x10); -- mirrored
DELETE FROM `spawn_group_spawn` WHERE id IN (34061);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34061, 525657, 0),
(34061, 525658, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34061);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34061, 2, 3, 0, 34061, 4,'Icecrown - Onslaught Harbor - Onslaught Darkweaver 29614 x2 - Patrol 1'); -- linear
DELETE FROM `waypoint_path` WHERE PathId IN (34061);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34061,1,7479.3003,4816.151,7.1697974,100,1000,0),
(34061,2,7468.3037,4806.811,7.1744184,100,0,0),
(34061,3,7454.1206,4797.3506,7.1882863,100,0,0),
(34061,4,7442.0645,4801.9966,7.1853247,100,0,0),
(34061,5,7424.001,4813.178,6.2992363,100,0,0),
(34061,6,7413.251,4831.194,4.0238724,100,0,0),
(34061,7,7404.444,4848.0244,1.4745178,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34061);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34061,'Icecrown - Onslaught Harbor - Onslaught Darkweaver 29614 x2 - Patrol 1');
-- Group 2
DELETE FROM `spawn_group` WHERE id IN (34062);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34062,'Icecrown - Onslaught Harbor - Onslaught Darkweaver 29614 x2 - Patrol 2', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id IN (34062);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34062, 525692, 0),
(34062, 525693, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34062);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34062, 2, 3, 0, 34062, 4,'Icecrown - Onslaught Harbor - Onslaught Darkweaver 29614 x2 - Patrol 2'); -- linear
DELETE FROM `waypoint_path` WHERE PathId IN (34062);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34062,1,7431.289,4818.1685,-17.657095,100,1000,0),
(34062,2,7456.127,4814.1733,-12.920577,100,0,0),
(34062,3,7465.0566,4825.894,-7.6163063,100,0,0),
(34062,4,7467.9697,4838.5176,-7.8141327,100,0,0),
(34062,5,7464.4985,4854.518,-4.9804654,100,0,0),
(34062,6,7454.685,4867.244,-2.433825,100,0,0),
(34062,7,7438.1426,4871.414,0.76115876,100,0,0),
(34062,8,7424.0034,4869.5854,0.55090076,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34062);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34062,'Icecrown - Onslaught Harbor - Onslaught Darkweaver 29614 x2 - Patrol 2');
-- Group 3
UPDATE creature SET position_x = 7505.1196, position_y = 4899.514, position_z = -13.811109, spawndist = 0, MovementType = 0 WHERE guid IN (525665,525666);
DELETE FROM `spawn_group` WHERE id IN (34063);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34063,'Icecrown - Onslaught Harbor - Onslaught Darkweaver 29614 x2 - Patrol 3', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id IN (34063);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34063, 525665, 0),
(34063, 525666, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34063);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34063, 2, 3, 0, 34063, 4,'Icecrown - Onslaught Harbor - Onslaught Darkweaver 29614 x2 - Patrol 3'); -- linear
DELETE FROM `waypoint_path` WHERE PathId IN (34063);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34063,1,7505.1196,4899.514,-13.811109,100,1000,0),
(34063,2,7506.514,4922.942,-17.078001,100,0,0),
(34063,3,7490.647,4931.679,-20.220644,100,0,0),
(34063,4,7474.54,4921.0747,-22.158306,100,0,0),
(34063,5,7474.671,4900.776,-23.73893 ,100,0,0),
(34063,6,7477.991,4884.178,-23.342213,100,0,0),
(34063,7,7466.7563,4870.8027,-21.443857,100,0,0),
(34063,8,7451.762,4852.8613,-18.376963,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34063);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34063,'Icecrown - Onslaught Harbor - Onslaught Darkweaver 29614 x2 - Patrol 3');
-- Group 4
UPDATE creature SET position_x = 7434.888, position_y = 4792.1167, position_z = -15.700849, spawndist = 0, MovementType = 0 WHERE guid IN (525662,525663);
DELETE FROM `spawn_group` WHERE id IN (34064);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34064,'Icecrown - Onslaught Harbor - Onslaught Darkweaver 29614 x2 - Patrol 4', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id IN (34064);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34064, 525662, 0),
(34064, 525663, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34064);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34064, 2, 3, 0, 34064, 4,'Icecrown - Onslaught Harbor - Onslaught Darkweaver 29614 x2 - Patrol 4'); -- linear
DELETE FROM `waypoint_path` WHERE PathId IN (34064);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34064,1,7434.888,4792.1167,-15.700849,100,1000,0),
(34064,2,7437.4946,4780.4062,-14.239199,100,0,0),
(34064,3,7445.0645,4769.046,-14.004905,100,0,0),
(34064,4,7457.9297,4756.4844,-13.187244,100,0,0),
(34064,5,7474.7354,4748.352,-12.64049,100,0,0),
(34064,6,7486.9097,4750.312,-12.86756,100,0,0),
(34064,7,7497.934,4764.791,-12.936097,100,0,0),
(34064,8,7490.337,4789.397,-12.816616,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34064);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34064,'Icecrown - Onslaught Harbor - Onslaught Darkweaver 29614 x2 - Patrol 4');