-- Storm Peaks: Garm & Garm's Rise - Phase 2
-- object
-- K3 Snow Runner 29546 - update
UPDATE gameobject SET phaseMask = 1+2 WHERE guid = 505390;
-- creatures
-- Ironwool Mammoth 29402 - missing added
DELETE FROM creature_addon WHERE guid IN (533119,533121,533125);
DELETE FROM creature_movement WHERE id IN (533119,533121,533125);
DELETE FROM game_event_creature WHERE guid IN (533119,533121,533125);
DELETE FROM game_event_creature_data WHERE guid IN (533119,533121,533125);
DELETE FROM creature_battleground WHERE guid IN (533119,533121,533125);
DELETE FROM creature_linking WHERE guid IN (533119,533121,533125);
DELETE FROM creature where guid IN (533119,533121,533125);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(533119,29402,571,1,2,6185.97,-1546.5,407.7929,1.309,300,300,7,1),
(533121,29402,571,1,2,6241.79,-1525.5699,416.928,5.56078,300,300,7,1),
(533125,29402,571,1,2,6268.5898,-1462.989,425.535,1.69269,300,300,7,1);
-- Garm Watcher 29553
-- duplicate
DELETE FROM creature_addon WHERE guid=525442;
DELETE FROM creature_movement WHERE Id=525442;
DELETE FROM game_event_creature WHERE guid=525442;
DELETE FROM game_event_creature_data WHERE guid=525442;
DELETE FROM creature_battleground WHERE guid=525442;
DELETE FROM creature_linking WHERE guid=525442
 OR master_guid=525442;
DELETE FROM creature WHERE guid=525442;
UPDATE creature_template SET EquipmentTemplateId = 860 WHERE Entry = 29553;
UPDATE creature SET position_x = 6340.3076, position_y = -1568.6227, position_z = 425.5451, orientation = 2.67035, spawndist = 0, MovementType = 0 WHERE guid = 525438;
UPDATE creature SET position_x = 6327.002, position_y = -1595.2551, position_z = 426.23584, orientation = 2.5830, spawndist = 0, MovementType = 0 WHERE guid = 525434;
UPDATE creature SET position_x = 6416.0083, position_y = -1646.5062, position_z = 420.40817, orientation = 3.647738, spawndist = 0, MovementType = 2 WHERE guid = 525437;
UPDATE creature SET position_x = 6381.168, position_y = -1648.4836, position_z = 420.09222, orientation = 1.16937, spawndist = 0, MovementType = 2 WHERE guid = 525432;
UPDATE creature SET position_x = 6503.104, position_y = -1677.3916, position_z = 432.95078, orientation = 3.56047, spawndist = 0, MovementType = 0 WHERE guid = 525436;
UPDATE creature SET position_x = 6480.647, position_y = -1717.4011, position_z = 434.57297, orientation = 2.007128, spawndist = 0, MovementType = 0 WHERE guid = 525439;
UPDATE creature SET position_x = 6544.34, position_y = -1675.4536, position_z = 452.67438, orientation = 3.63028, spawndist = 0, MovementType = 0 WHERE guid = 525435;
UPDATE creature SET position_x = 6525.3784, position_y = -1732.871, position_z = 436.68793, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 525440; -- linear
UPDATE creature SET position_x = 6479.1626, position_y = -1642.6989, position_z = 465.3743, orientation = 1.535889, spawndist = 0, MovementType = 2 WHERE guid = 525433;
UPDATE creature SET position_x = 6429.0625, position_y = -1736.2483, position_z = 479.3528, orientation = 0.85521, spawndist = 0, MovementType = 0 WHERE guid = 525441;
DELETE FROM creature_movement WHERE id IN (525432,525433,525437,525440);
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- 525432
(525432,1,6381.168,-1648.4836,420.09222,1.16937,12000,0),
(525432,2,6391.35,-1636.2599,418.84433,100,0,0),
(525432,3,6407.4517,-1619.2946,419.4151,100,0,0),
(525432,4,6424.8657,-1613.9282,422.07385,100,0,0),
(525432,5,6424.8657,-1613.9282,422.07385,3.228859,13000,0),
(525432,6,6410.433,-1613.4407,421.45953,100,0,0),
(525432,7,6398.467,-1625.4421,418.50284,100,0,0),
(525432,8,6381.168,-1648.4836,420.09222,100,0,0),
-- 525433
(525433,1,6479.1626,-1642.6989,465.3743,1.535889,11000,0),
(525433,2,6476.884,-1645,465.32507,100,0,0),
(525433,3,6456.115,-1661.1779,468.7859,100,0,0),
(525433,4,6446.307,-1676.7568,470.76825,100,0,0),
(525433,5,6434.0137,-1674.118,470.98685,100,11000,0),
(525433,6,6452.03,-1666.2972,469.67935,100,0,0),
(525433,7,6467.475,-1655.0768,466.50238,100,0,0),
(525433,8,6475.7666,-1651.5393,465.63083,100,0,0),
(525433,9,6479.1626,-1642.6989,465.3743,100,0,0),
-- 525437
(525437,1,6416.0083,-1646.5062,420.40817,3.647738,18000,0),
(525437,2,6429.8677,-1640.23,419.0299,100,0,0),
(525437,3,6459.069,-1637.0057,423.54245,100,0,0),
(525437,4,6486.7446,-1637.0325,428.41742,100,0,0),
(525437,5,6502.8696,-1622.1284,427.72147,100,0,0),
(525437,6,6502.8696,-1622.1284,427.72147,3.94444,11000,0),
(525437,7,6491.085,-1633.7384,428.41132,100,0,0),
(525437,8,6462.9175,-1636.7076,424.90927,100,0,0),
(525437,9,6446.1313,-1641.8655,418.72052,100,0,0),
(525437,10,6425.219,-1639.195,419.14062,100,0,0),
(525437,11,6416.0083,-1646.5062,420.40817,100,0,0),
-- 525440
(525440,1,6525.3784,-1732.871,436.68793,100,1000,0),
(525440,2,6512.951,-1741.664,435.9907,100,0,0),
(525440,3,6494.622,-1749.1736,435.54706,100,0,0),
(525440,4,6478.243,-1747.9951,435.12442,100,0,0),
(525440,5,6461.981,-1738.845,434.7754,100,0,0),
(525440,6,6446.336,-1720.4426,435.41138,100,1000,0);
-- Snowblind Devotee 29554
DELETE FROM creature_addon WHERE guid IN (525451,533126,533142,533128,533135,533136,533140,533141);
DELETE FROM creature_movement WHERE id IN (525451,533126,533142,533128,533135,533136,533140,533141);
DELETE FROM game_event_creature WHERE guid IN (525451,533126,533142,533128,533135,533136,533140,533141);
DELETE FROM game_event_creature_data WHERE guid IN (525451,533126,533142,533128,533135,533136,533140,533141);
DELETE FROM creature_battleground WHERE guid IN (525451,533126,533142,533128,533135,533136,533140,533141);
DELETE FROM creature_linking WHERE guid IN (525451,533126,533142,533128,533135,533136,533140,533141);
DELETE FROM creature where guid IN (525451,533126,533142,533128,533135,533136,533140,533141);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(525451,29554,571,1,2,6297.12011,-1425.5999,426.1679,2.2863,300,300,0,0),
(533126,29554,571,1,2,6289.9717,-1599.2523,425.88257,4.57276,300,300,0,0),
(533142,29554,571,1,2,6273.5146,-1604.3503,424.53247,5.550147,300,300,0,0),
(533128,29554,571,1,2,6428.219,-1705.4536,434.1284,0.48869,300,300,0,0),
(533135,29554,571,1,2,6278.49023,-1425.38,425.55499,1.0297,300,300,0,0),
(533136,29554,571,1,2,6297.2597,-1406.9899,425.5759,3.6651,300,300,0,0),
(533140,29554,571,1,2,6292.4087,-1374.1494,425.35034,1.796,300,300,0,2),
(533141,29554,571,1,2,6293.24023,-1367.45996,425.360,3.455,300,300,0,0);
UPDATE creature_template SET EquipmentTemplateId = 36 WHERE Entry = 29554;
-- individual spawn effects
DELETE FROM creature_spawn_data WHERE guid IN(525451,533126,533142,525447,525448,525449,525450,533135,533136,533141);
INSERT INTO creature_spawn_data(Guid,Id) VALUES
(533126,80),(533142,80),(525447,80),
(525448,80),(525449,80),(525450,80),
(525451,80),(533135,80),(533136,80),
(533141,80);
UPDATE creature SET position_x = 6471.0273, position_y = -1753.738, position_z = 432.73804, orientation = 1.18682, spawndist = 0, MovementType = 0 WHERE guid = 525452;
UPDATE creature SET position_x = 6514.1733, position_y = -1749.587, position_z = 436.20166, orientation = 5.8643064, spawndist = 0, MovementType = 0 WHERE guid = 525455;
UPDATE creature SET position_x = 6519.5625, position_y = -1747.1263, position_z = 436.25183, orientation = 4.41568, spawndist = 0, MovementType = 0 WHERE guid = 525454;
UPDATE creature SET position_x = 6541.6245, position_y = -1654.4752, position_z = 453.66162, orientation = 5.969026, spawndist = 0, MovementType = 0 WHERE guid = 525447;
UPDATE creature SET position_x = 6483.0615, position_y = -1634.2147, position_z = 464.79443, orientation = 2.373647, spawndist = 0, MovementType = 0 WHERE guid = 525448;
UPDATE creature SET position_x = 6475.382, position_y = -1631.874, position_z = 464.8164, orientation = 0.2792526, spawndist = 0, MovementType = 0 WHERE guid = 525449;
UPDATE creature SET position_x = 6425.828, position_y = -1670.4092, position_z = 471.51862, orientation = 2.25147, spawndist = 0, MovementType = 0 WHERE guid = 525450;
UPDATE creature SET position_x = 6518.887, position_y = -1646.072, position_z = 426.10498, orientation = 5.11381, spawndist = 0, MovementType = 0 WHERE guid = 525453;
UPDATE creature SET position_x = 6434.242, position_y = -1737.5137, position_z = 432.21686, orientation = 5.46288, spawndist = 0, MovementType = 0 WHERE guid = 525446;
UPDATE creature SET position_x = 6441.1904, position_y = -1758.5399, position_z = 432.21686, orientation = 3.2637, spawndist = 0, MovementType = 0 WHERE guid = 525459;
UPDATE creature SET position_x = 6459.8833, position_y = -1762.2482, position_z = 432.21683, orientation = 0.92502, spawndist = 0, MovementType = 0 WHERE guid = 525458;
UPDATE creature SET position_x = 6421.423, position_y = -1717.4196, position_z = 432.18518, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 525456; -- linear
DELETE FROM creature_movement WHERE id IN (525456,533140);
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- 525456
(525456,1,6421.423,-1717.4196,432.18518,100,1000,0),
(525456,2,6432.0703,-1707.455,434.24442,100,0,0),
(525456,3,6442.7446,-1688.5979,435.78708,100,0,0),
(525456,4,6457.5356,-1683.6208,435.41132,100,0,0),
(525456,5,6473.1304,-1690.2207,432.071,100,0,0),
(525456,6,6484.248,-1694.5758,431.61447,100,1000,0),
-- 533140
(533140,1,6292.4087,-1374.1494,425.35034,100,10000,0),
(533140,2,6292.485,-1391.9673,425.38745,100,0,0),
(533140,3,6284.8022,-1401.1826,425.82092,100,0,0),
(533140,4,6273.712,-1410.401,425.28894,100,0,0),
(533140,5,6272.301,-1424.4998,425.3662,100,0,0),
(533140,6,6283.4004,-1431.8845,426.31485,100,0,0),
(533140,7,6297.0825,-1430.0002,426.6161,100,0,0),
(533140,8,6303.1187,-1419.5105,426.3042,100,0,0),
(533140,9,6300.9453,-1409.2196,425.79654,100,0,0),
(533140,10,6295.247,-1402.3287,425.27213,100,0,0),
(533140,11,6292.485,-1391.9673,425.38745,100,0,0);
-- Gino 29432
UPDATE creature SET position_x = 6326.1567, position_y = -1749.0746, position_z = 458.30524, orientation = 3.24631, spawndist = 0, MovementType = 4 WHERE id = 29432;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 29432;
DELETE FROM creature_movement_template WHERE Entry = 29432;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(29432,1,6326.1567,-1749.0746,458.30524,3.24631,180000,0),
(29432,2,6326.1567,-1749.0746,458.30524,100,0,0),
(29432,3,6321.47021,-1738.6899,457.08401,100,0,0),
(29432,4,6320.986,-1727.9723,455.98883,100,0,0),
(29432,5,6320.9316,-1715.145,455.52435,100,0,0),
(29432,6,6320.9316,-1715.145,455.52435,0.2,60000,0);
-- K3 Snow Runner 29546 -- update
UPDATE creature SET phaseMask = 1+2 WHERE id = 29546;
-- K3 Perimeter Turret 29483 -- update
UPDATE creature SET phaseMask = 1+2 WHERE id = 29483;
-- Goblin Sapper 29555
-- wave 1
-- Creatures
-- missing spawns added
DELETE FROM creature_addon WHERE guid IN (533143,533144,533146);
DELETE FROM creature_movement WHERE id IN (533143,533144,533146);
DELETE FROM game_event_creature WHERE guid IN (533143,533144,533146);
DELETE FROM game_event_creature_data WHERE guid IN (533143,533144,533146);
DELETE FROM creature_battleground WHERE guid IN (533143,533144,533146);
DELETE FROM creature_linking WHERE guid IN (533143,533144,533146);
DELETE FROM creature WHERE guid IN (533143,533144,533146);                                                           
INSERT INTO creature (guid, id, map, spawnMask, phaseMask,  position_x ,position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(533143,29555,571,1,2,6318.07,-1760.49,457.22003,0.771660,120,180,0,0), 
(533144,29555,571,1,2,6318.07,-1760.49,457.22003,0.771660,120,180,0,0),
(533146,29555,571,1,2,6318.07,-1760.49,457.22003,0.771660,120,180,0,0);
DELETE FROM creature_template_addon WHERE entry = 29555;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(29555,0,0,1,0,0,0,57462);
DELETE FROM `spawn_group` WHERE id =33007;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33007, 'Storm Peaks - Garm\'s Rise Phase 2 - Goblin Sapper 29555 x3 - Patrol 1', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 33007;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33007, 533143, 0),
(33007, 533144, 1),
(33007, 533146, 2);
DELETE FROM creature_spawn_data WHERE guid IN (533143,533144,533146);
INSERT INTO creature_spawn_data(Guid,Id) VALUES
(533143,1),(533144,1),(533146,1);
DELETE FROM `spawn_group_formation` WHERE id = 33007;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33007, 3, 2, 0, 33007, 2, 'Storm Peaks - Garm\'s Rise Phase 2 - Goblin Sapper 29555 x3 - Patrol 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 33007;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33007,'Storm Peaks - Garm\'s Rise Phase 2 - Goblin Sapper 29555 x3 - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId = 33007;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33007,1,6318.07,-1760.49,457.22003,0.771660,2000,0),
(33007,2,6316.526,-1737.9498,456.67862,100,0,0),
(33007,3,6317.8945,-1715.3488,455.6283,100,0,0),
(33007,4,6310.9683,-1688.7084,455.29626,100,0,0),
(33007,5,6299.8135,-1659.837,449.9582,100,0,0),
(33007,6,6293.4287,-1636.1139,440.9803,100,100,2955501), -- jump
(33007,7,6307.18,-1603.19,426.494,100,0,0),
(33007,8,6346.1587,-1590.0626,428.1323,100,0,0),
(33007,9,6381.7954,-1618.082,418.5552,100,0,0),
(33007,10,6405.8125,-1636.0768,418.72214,100,0,0),
(33007,11,6439.4463,-1635.1715,418.6145,100,0,0),
(33007,12,6476.907,-1639.3251,427.49173,100,0,0),
(33007,13,6464.0303,-1656.0717,433.1907,100,0,0),
(33007,14,6451.28,-1669.36,435.994,100,0,0),
(33007,15,6441.28,-1692.28,435.566,100,0,0),
(33007,16,6434.21,-1705.83,434.956,100,0,0),
(33007,17,6423.76,-1715.23,432.391,100,0,0),
(33007,18,6408,-1736.34,432.131,100,5000,2955502);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2955501,2955502);
INSERT INTO dbscripts_on_creature_movement (id,delay,priority,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,datafloat,x,y,z,o,speed,condition_id,comments) VALUES
(2955501,0,0,20,15,0,0,0,0,0x004,0,0,0,0,5,6307.18,-1603.19,426.494,100,19,0,'jump'),
(2955502,1000,0,18,0,0,0,33007,33007,0x100|0x200|0x001,0,0,0,0,0,0,0,0,0,0,0,'despawn group');
-- wave 2
-- Creatures
-- missing spawns added
DELETE FROM creature_addon WHERE guid IN (533147,533150,533151);
DELETE FROM creature_movement WHERE id IN (533147,533150,533151);
DELETE FROM game_event_creature WHERE guid IN (533147,533150,533151);
DELETE FROM game_event_creature_data WHERE guid IN (533147,533150,533151);
DELETE FROM creature_battleground WHERE guid IN (533147,533150,533151);
DELETE FROM creature_linking WHERE guid IN (533147,533150,533151);
DELETE FROM creature WHERE guid IN (533147,533150,533151);                                                           
INSERT INTO creature (guid, id, map, spawnMask, phaseMask,  position_x ,position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(533147,29555,571,1,2,6311.2026,-1719.9783,456.1765,1.64063,120,180,0,0), 
(533150,29555,571,1,2,6311.2026,-1719.9783,456.1765,1.64063,120,180,0,0),
(533151,29555,571,1,2,6311.2026,-1719.9783,456.1765,1.64063,120,180,0,0);
DELETE FROM `spawn_group` WHERE id =33008;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33008, 'Storm Peaks - Garm\'s Rise Phase 2 - Goblin Sapper 29555 x3 - Patrol 2', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 33008;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33008, 533147, 0),
(33008, 533150, 1),
(33008, 533151, 2);
DELETE FROM creature_spawn_data WHERE guid IN (533147,533150,533151);
INSERT INTO creature_spawn_data(Guid,Id) VALUES
(533147,1),(533150,1),(533151,1);
DELETE FROM `spawn_group_formation` WHERE id = 33008;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33008, 3, 2, 0, 33008, 2, 'Storm Peaks - Garm\'s Rise Phase 2 - Goblin Sapper 29555 x3 - Patrol 2');
DELETE FROM `waypoint_path_name` WHERE PathId = 33008;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33008,'Storm Peaks - Garm\'s Rise Phase 2 - Goblin Sapper 29555 x3 - Patrol 2');
DELETE FROM `waypoint_path` WHERE PathId = 33008;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33008,1,6311.2026,-1719.9783,456.1765,1.64063,2000,0),
(33008,2,6301.128,-1684.758,454.61987,100,0,0),
(33008,3,6289.407,-1645.1007,441.2068,100,0,0),
(33008,4,6291.9077,-1633.6527,439.8108,100,0,0),
(33008,5,6296.611,-1609.0116,426.0891,100,0,0),
(33008,6,6324.723,-1583.9806,425.35373,100,0,0),
(33008,7,6349.82,-1586.76,428.133,100,0,0),
(33008,8,6378.22,-1607.1,419.856,100,0,0),
(33008,9,6410.46,-1626.75,418.537,100,0,0),
(33008,10,6444.11,-1632.65,418.539,100,0,0),
(33008,11,6469.51,-1639.62,426.57,100,0,0),
(33008,12,6467.2,-1653.03,431.129,100,0,0),
(33008,13,6453.66,-1668,435.901,100,0,0),
(33008,14,6442.21,-1689.43,435.637,100,0,0),
(33008,15,6441.75,-1711.73,435.232,100,0,0),
(33008,16,6451.23,-1727.47,435.333,100,0,0),
(33008,17,6464.67,-1745.66,433.565,100,0,0),
(33008,18,6461.8,-1766.8,432.135,100,5000,2955502);
