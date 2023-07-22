-- Frenzyheart Hill - Sholazar Basin

-- Frenzyheart Tracker 28077 & Frenzyheart Berserker 28076
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 520313;
-- individual addons
DELETE FROM creature_addon WHERE guid IN (520313);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(520313,0,0,1,0,0,0,52550);

-- spawn groups
UPDATE creature SET position_x = 5261.522, position_y = 4500.388, position_z = -84.72751, orientation = 3.24629, spawndist = 0, MovementType = 0 WHERE guid IN (520321,520306,520307);
DELETE FROM `spawn_group` WHERE id = 32536;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32536, 'Sholazar Basin - Frenzyheart Tracker 28077 & Frenzyheart Berserker x2 - Patrol 1', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32536;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32536, 520321, 0),
(32536, 520306, 1),
(32536, 520307, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32536;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32536, 3, 2, 0, 32536, 2, 'Sholazar Basin - Frenzyheart Tracker 28077 & Frenzyheart Berserker x2 - Patrol 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 32536;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32536,'Sholazar Basin - Frenzyheart Tracker 28077 & Frenzyheart Berserker x2 - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId = 32536;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32536,1 ,5237.407,4498.231,-83.60558   ,100,1000,9),
(32536,2 ,5225.712,4501.706,-84.38273   ,100,0,0),
(32536,3 ,5211.504,4488.3965,-90.65331  ,100,0,0),
(32536,4 ,5199.5835,4497.371,-90.040504 ,100,0,0),
(32536,5 ,5192.66,4519.1104,-89.59521   ,100,0,0),
(32536,6 ,5201.7876,4529.2993,-90.00773 ,100,0,0),
(32536,7 ,5216.264,4539.6714,-91.25245  ,100,0,0),
(32536,8 ,5208.2466,4560.5864,-96.03614 ,100,0,0),
(32536,9 ,5212.3354,4586.3335,-105.43218,100,0,0),
(32536,10,5196.173,4609.343,-118.87286  ,100,0,0),
(32536,11,5214.9575,4626.8247,-131.53712,100,0,0),
(32536,12,5205.572,4633.195,-133.30861  ,100,0,0),
(32536,13,5164.529,4641.627,-134.48355  ,100,0,0),
(32536,14,5138.5977,4653.1934,-133.88126,100,0,0),
(32536,15,5149.23,4697.0757,-135.12395  ,100,0,0),
(32536,16,5158.6665,4736.05,-134.52838  ,100,0,0),
(32536,17,5168.815,4758.739,-133.9202   ,100,0,0),
(32536,18,5205.0454,4757.1387,-133.47414,100,0,0),
(32536,19,5219.657,4734.272,-134.47072  ,100,0,0),
(32536,20,5245.096,4729.7456,-133.73775 ,100,0,0),
(32536,21,5280.796,4715.8164,-136.3699  ,100,0,0),
(32536,22,5291.501,4691.0312,-135.88737 ,100,0,0),
(32536,23,5290.764,4664.0684,-137.57233 ,100,0,0),
(32536,24,5332.1855,4653.1587,-134.74933,100,0,0),
(32536,25,5359.535,4638.019,-132.90288  ,100,0,0),
(32536,26,5366.3374,4609.0195,-133.21544,100,0,0),
(32536,27,5381.6577,4577.3384,-132.23647,100,0,0),
(32536,28,5368.25,4548.0737,-128.6599   ,100,0,0),
(32536,29,5385.333,4519.5923,-130.28052 ,100,0,0),
(32536,30,5374.3315,4495.367,-129.36307 ,100,0,0),
(32536,31,5378.87,4456.614,-134.29877   ,100,0,0),
(32536,32,5362.1636,4419.3574,-131.70828,100,0,0),
(32536,33,5343.3896,4392.515,-128.39433 ,100,0,0),
(32536,34,5318.098,4364.3223,-118.124565,100,0,0),
(32536,35,5282.065,4364.656,-101.43442  ,100,0,0),
(32536,36,5258.536,4395.363,-94.90724   ,100,0,0),
(32536,37,5252.396,4416.3984,-96.03437  ,100,0,0),
(32536,38,5278.482,4434.143,-95.97525   ,100,0,0),
(32536,39,5284.5884,4463.009,-95.60025  ,100,0,0),
(32536,40,5293.975,4478.993,-92.41382   ,100,0,0),
(32536,41,5297.3345,4486.682,-93.77661 ,100,3000,0),
(32536,42,5297.535,4500.268,-91.27948   ,100,0,0),
(32536,43,5279.456,4512.296,-86.87091   ,100,0,0),
(32536,44,5268.4556,4512.0117,-84.7016  ,100,0,0),
(32536,45,5261.3823,4501.2417,-84.8851  ,100,0,0),
(32536,46,5263.9507,4498.567,-84.049675,3.24629,3000,10),
(32536,47,5263.9507,4498.567,-84.049675,3.24629,1000,2821801);
DELETE FROM `creature_spawn_data` WHERE guid IN (520321,520306,520307);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(520321,80),(520306,80),(520307,80);
DELETE FROM dbscripts_on_creature_death WHERE id IN (28077);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(28077,1,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');

-- Hardknuckle Forager 28098
-- duplicate
DELETE FROM creature WHERE guid=520785;
DELETE FROM creature_addon WHERE guid=520785;
DELETE FROM creature_movement WHERE Id=520785;
DELETE FROM game_event_creature WHERE guid=520785;
DELETE FROM game_event_creature_data WHERE guid=520785;
DELETE FROM creature_battleground WHERE guid=520785;
DELETE FROM creature_linking WHERE guid=520785 OR master_guid=520785;
-- update
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid = 520780;
UPDATE creature SET position_x = 5168.475586, position_y = 4526.965332, position_z = -96.633057, spawndist = 10, MovementType = 1 WHERE guid = 520774;
UPDATE creature SET position_x = 5263.148926, position_y = 4288.066406, position_z = -94.665100, spawndist = 10, MovementType = 1 WHERE guid = 520795;
UPDATE creature SET position_x = 5253.935547, position_y = 4273.780273, position_z = -97.645576, spawndist = 10, MovementType = 1 WHERE guid = 520804;
UPDATE creature SET position_x = 5252.385742, position_y = 4292.001953, position_z = -95.943718, spawndist = 10, MovementType = 1 WHERE guid = 520801;
UPDATE creature SET position_x = 5241.379395, position_y = 4286.957520, position_z = -96.624298, spawndist = 10, MovementType = 1 WHERE guid = 520794;
UPDATE creature SET position_x = 5141.130371, position_y = 4415.971680, position_z = -95.716774, spawndist = 10, MovementType = 1 WHERE guid = 520803;
UPDATE creature SET position_x = 5170.231934, position_y = 4385.525879, position_z = -95.316734, spawndist = 10, MovementType = 1 WHERE guid = 520800;
UPDATE creature SET position_x = 5162.480469, position_y = 4441.697754, position_z = -95.408043, spawndist = 10, MovementType = 1 WHERE guid = 520805;
UPDATE creature SET position_x = 5169.442871, position_y = 4412.216309, position_z = -95.156311, spawndist = 10, MovementType = 1 WHERE guid = 520781;
UPDATE creature SET position_x = 5189.265625, position_y = 4419.234375, position_z = -93.912315, spawndist = 10, MovementType = 1 WHERE guid = 520802;
UPDATE creature SET position_x = 5213.038574, position_y = 4376.349609, position_z = -95.071037, spawndist = 10, MovementType = 1 WHERE guid = 520796;
UPDATE creature SET position_x = 5255.670898, position_y = 4343.965332, position_z = -98.004753, spawndist = 10, MovementType = 1 WHERE guid = 520743;
UPDATE creature SET position_x = 5249.863281, position_y = 4341.375488, position_z = -97.314262, spawndist = 10, MovementType = 1 WHERE guid = 520745;
UPDATE creature SET position_x = 5219.97, position_y = 4410.82, position_z = -96.1016, spawndist = 10, MovementType = 1 WHERE guid = 520797;
