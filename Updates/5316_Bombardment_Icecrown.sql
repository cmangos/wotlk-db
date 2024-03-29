-- The Bombardment - Icecrown
-- The Valley of Lost Hope - Icecrown

-- Gargoyle Ambusher 32769
DELETE FROM creature_addon WHERE guid = 535717;
DELETE FROM creature_movement WHERE id = 535717;
DELETE FROM game_event_creature WHERE guid = 535717;
DELETE FROM game_event_creature_data WHERE guid = 535717;
DELETE FROM creature_battleground WHERE guid = 535717;
DELETE FROM creature_linking WHERE guid = 535717;
DELETE FROM creature where guid = 535717;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(535717,32769,571,1,1,7755.61,1732.04,501.751,0,300,300,0,0);
UPDATE creature_template SET StaticFlags1 = 2147483648 WHERE entry = 32769;
-- Group 1
UPDATE creature SET position_x = 7819.3135, position_y = 1613.2135, position_z = 469.37787, spawndist = 0, MovementType = 3 WHERE guid = 532946;
UPDATE creature SET position_x = 7801.68, position_y = 1610.03, position_z = 469.37787, spawndist = 0, MovementType = 0 WHERE guid = 532947;
DELETE FROM creature_movement WHERE id IN (532946,532947);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 532946 + 532947
(532946,1,7819.3135,1613.2135,469.37787,100,0,0),
(532946,2,7854.7993,1565.1547,469.3779,100,0,0),
(532946,3,7790.3003,1509.9995,469.37787,100,0,0),
(532946,4,7733.546,1578.0189,469.37787,100,0,0);
-- links (spawn groups do not support movementType = 3)
DELETE FROM creature_linking WHERE master_guid IN (532946);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(532947,532946,1+2+512);
DELETE FROM `creature_spawn_data` WHERE guid IN (532946,532947);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(532946,20056),(532947,20056);
-- Group 2
UPDATE creature SET position_x = 7848.636, position_y = 1704.4498, position_z = 469.37787, spawndist = 0, MovementType = 3 WHERE guid = 532948;
UPDATE creature SET position_x = 7847.15, position_y = 1715.9, position_z = 469.37787, spawndist = 0, MovementType = 0 WHERE guid = 532949;
DELETE FROM creature_movement WHERE id IN (532948,532949);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 532948 + 532949
(532948,1,7848.636,1704.4498,469.37787,100,0,0),
(532948,2,7852.71,1642.3629,469.3779,100,0,0),
(532948,3,7745.98,1713.5385,469.37787,100,0,0),
(532948,4,7596.7954,1801.3427,469.37787,100,0,0),
(532948,5,7703.2007,1822.8872,469.37787,100,0,0);
-- links (spawn groups do not support movementType = 3)
DELETE FROM creature_linking WHERE master_guid IN (532948);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(532949,532948,1+2+512);
DELETE FROM `creature_spawn_data` WHERE guid IN (532948,532949);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(532948,20056),(532949,20056);
-- Group 3
-- 532950 + 532951
UPDATE creature SET position_x = 7545.0347, position_y = 1634.5306, position_z = 488.04752, spawndist = 0, MovementType = 3 WHERE guid = 532950;
UPDATE creature SET position_x = 7552.72, position_y = 1645.08, position_z = 488.04752, spawndist = 0, MovementType = 0 WHERE guid = 532951;
DELETE FROM creature_movement WHERE id IN (532950,532951);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(532950,1,7545.0347,1634.5306,488.04752,100,0,0),
(532950,2,7495.1353,1560.0094,488.04755,100,0,0),
(532950,3,7674.9756,1450.9628,488.04752,100,0,0),
(532950,4,7758.1504,1528.1664,488.04752,100,0,0);
-- links (spawn groups do not support movementType = 3)
DELETE FROM creature_linking WHERE master_guid IN (532950);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(532951,532950,1+2+512);
DELETE FROM `creature_spawn_data` WHERE guid IN (532950,532951);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(532950,20056),(532951,20056);
-- Group 4
-- 532952 + 535717
UPDATE creature SET position_x = 7755.4575, position_y = 1735.9067, position_z = 502.23703, spawndist = 0, MovementType = 3 WHERE guid = 532952;
DELETE FROM creature_movement WHERE id IN (532952,535717);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(532952,1,7755.4575,1735.9067,502.23703,100,0,0),
(532952,2,7774.4365,1854.9224,502.23703,100,0,0),
(532952,3,7608.502,1869.4048,502.23703,100,0,0),
(532952,4,7577.059,1757.2704,502.23703,100,0,0);
-- links (spawn groups do not support movementType = 3)
DELETE FROM creature_linking WHERE master_guid IN (532952);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(535717,532952,1+2+512);
DELETE FROM `creature_spawn_data` WHERE guid IN (532952,535717);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(532952,20056),(535717,20056);

-- Bone Giant 31815
DELETE FROM creature_addon WHERE guid = 535718;
DELETE FROM creature_movement WHERE id = 535718;
DELETE FROM game_event_creature WHERE guid = 535718;
DELETE FROM game_event_creature_data WHERE guid = 535718;
DELETE FROM creature_battleground WHERE guid = 535718;
DELETE FROM creature_linking WHERE guid = 535718;
DELETE FROM creature where guid = 535718;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(535718,31815,571,1,1,7759.0957,1393.431,365.14722,0,300,300,0,4);
UPDATE creature_template SET StaticFlags1 = 2147483648 WHERE entry = 31815;
UPDATE creature SET position_x = 7443.1064, position_y = 1225.8574, position_z = 333.10806, spawndist = 0, MovementType = 4 WHERE guid = 531349;
UPDATE creature SET position_x = 7555.5757, position_y = 1573.1, position_z = 344.42715, spawndist = 0, MovementType = 4 WHERE guid = 531346;
UPDATE creature SET position_x = 7458.1787, position_y = 1535.4991, position_z = 350.3493, spawndist = 0, MovementType = 4 WHERE guid = 531348;
UPDATE creature SET position_x = 7561.007, position_y = 1287.0717, position_z = 333.35596, spawndist = 0, MovementType = 4 WHERE guid = 531347;
UPDATE creature SET position_x = 7716.1997, position_y = 1587.0931, position_z = 344.87228, spawndist = 0, MovementType = 4 WHERE guid = 531350;
DELETE FROM creature_movement WHERE id IN (531349,531346,531348,531347,531350,535718);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 531349
(531349,1,7443.1064,1225.8574,333.10806,100,100,0),
(531349,2,7440.7017,1378.1691,314.05035,100,0,0),
(531349,3,7418.5166,1355.1079,312.20776,100,0,0),
(531349,4,7400.014,1321.8967,312.22726,100,0,0),
(531349,5,7402.212,1292.1613,314.95172,100,0,0),
(531349,6,7414.587,1269.6384,319.41132,100,0,0),
(531349,7,7424.5566,1248.1451,325.86978,100,100,0),
-- 531346
(531346,1 ,7555.5757,1573.1,344.42715,100,100,0),
(531346,2 ,7582.349,1545.253,338.36148,100,0,0),
(531346,3 ,7575.8247,1521.2999,335.64505,100,0,0),
(531346,4 ,7556.913,1486.7202,331.35303,100,0,0),
(531346,5 ,7538.0415,1460.6945,326.37924,100,0,0),
(531346,6 ,7522.374,1445.8438,323.82196,100,0,0),
(531346,7 ,7488.8525,1420.1342,319.2531,100,0,0),
(531346,8 ,7441.783,1408.9994,315.61926,100,0,0),
(531346,9 ,7419.711,1393.1744,314.2456,100,0,0),
(531346,10,7391.96,1360.613,310.53058,100,100,0),
-- 531348
(531348,1 ,7458.1787,1535.4991,350.3493,100,100,0),
(531348,2 ,7461.1978,1514.5273,340.50726,100,0,0),
(531348,3 ,7468.954,1468.1699,325.66568,100,0,0),
(531348,4 ,7470.7837,1432.3234,320.20978,100,0,0),
(531348,5 ,7488.7144,1406.652,318.72247,100,0,0),
(531348,6 ,7529.311,1423.5885,322.88858,100,0,0),
(531348,7 ,7550.3613,1467.6793,327.3662,100,0,0),
(531348,8 ,7554.26,1504.3716,334.974,100,0,0),
(531348,9 ,7573.8438,1523.9464,336.23672,100,0,0),
(531348,10,7590.0645,1538.1022,336.32767,100,0,0),
(531348,11,7606.847,1554.39,336.4081,100,0,0),
(531348,12,7615.607,1571.6676,337.14938,100,0,0),
(531348,13,7615.8604,1592.3942,338.619,100,100,0),
-- 531347
(531347,1 ,7561.007,1287.0717,333.35596,100,100,0),
(531347,2 ,7539.6553,1315.8942,328.96362,100,0,0),
(531347,3 ,7526.8726,1346.2587,325.07117,100,0,0),
(531347,4 ,7526.1353,1378.926,322.41125,100,0,0),
(531347,5 ,7528.522,1411.9808,322.30875,100,0,0),
(531347,6 ,7542.5625,1434.6554,324.95102,100,0,0),
(531347,7 ,7563.248,1461.6494,327.65598,100,0,0),
(531347,8 ,7580.3813,1477.1016,329.04648,100,0,0),
(531347,9 ,7590.4517,1496.842,329.50485,100,0,0),
(531347,10,7591.577,1517.24,331.89005,100,0,0),
(531347,11,7587.276,1544.6245,337.5701,100,100,0),
-- 531350
(531350,1,7716.1997,1587.0931,344.87228,100,100,0),
(531350,2,7697.3228,1565.2281,342.77933,100,0,0),
(531350,3,7676.658,1539.8989,339.85062,100,0,0),
(531350,4,7655.0522,1516.5698,336.05228,100,0,0),
(531350,5,7625.56,1493.942,331.33517,100,0,0),
(531350,6,7591.135,1481.5471,328.92014,100,0,0),
(531350,7,7551.388,1489.8619,332.1322,100,0,0),
(531350,8,7523.0737,1503.2262,333.8378,100,100,0),
-- 535718
(535718,1,7759.0957,1393.431,365.14722,100,100,0),
(535718,2,7734.428,1405.0232,356.79556,100,0,0),
(535718,3,7710.2075,1410.214,351.609,100,0,0),
(535718,4,7665.7534,1419.3876,343.89465,100,0,0),
(535718,5,7650.1216,1438.3705,341.8414,100,0,0),
(535718,6,7620.9946,1456.444,333.04663,100,0,0),
(535718,7,7583.261,1455.8229,328.5118,100,0,0),
(535718,8,7540.885,1458.7365,326.2668,100,0,0),
(535718,9,7505.8345,1457.1682,324.72845,100,100,0);

-- Scourge War Engineer 32161
UPDATE creature SET position_x = 7179.338, position_y = 1289.3989, position_z = 302.43744, spawndist = 0, MovementType = 4 WHERE guid = 531796;
UPDATE creature SET position_x = 7171.155, position_y = 1431.8702, position_z = 320.12643, spawndist = 0, MovementType = 4 WHERE guid = 531789;
UPDATE creature SET position_x = 7105.539, position_y = 1379.343, position_z = 309.9346, spawndist = 0, MovementType = 4 WHERE guid = 531798;
UPDATE creature SET position_x = 7072.232, position_y = 1347.3071, position_z = 306.81802, spawndist = 0, MovementType = 4 WHERE guid = 531792;
UPDATE creature SET position_x = 7112.694, position_y = 1300.825, position_z = 298.82767, spawndist = 0, MovementType = 4 WHERE guid = 531803;
UPDATE creature SET position_x = 7138.127, position_y = 1299.3512, position_z = 302.00604, spawndist = 0, MovementType = 4 WHERE guid = 531800;
UPDATE creature SET position_x = 7170.369, position_y = 1285.6387, position_z = 301.4749, spawndist = 0, MovementType = 4 WHERE guid = 531795;
UPDATE creature SET position_x = 7120.133, position_y = 1253.0167, position_z = 298.05695, spawndist = 0, MovementType = 4 WHERE guid = 531791;
UPDATE creature SET position_x = 7109.9497, position_y = 1204.816, position_z = 298.88864, spawndist = 0, MovementType = 4 WHERE guid = 531799;
UPDATE creature SET position_x = 7177.403, position_y = 1193.3151, position_z = 307.23688, spawndist = 0, MovementType = 4 WHERE guid = 531801;
UPDATE creature SET position_x = 7122.7993, position_y = 1173.7247, position_z = 298.71683, spawndist = 0, MovementType = 4 WHERE guid = 531797;
UPDATE creature SET position_x = 7168.393, position_y = 1185.8309, position_z = 308.04254, spawndist = 0, MovementType = 4 WHERE guid = 531802;
UPDATE creature SET position_x = 7137.1577, position_y = 1168.3712, position_z = 305.30618, spawndist = 0, MovementType = 4 WHERE guid = 531793;
UPDATE creature SET position_x = 7176.4004, position_y = 1195.095, position_z = 307.02338, spawndist = 0, MovementType = 4 WHERE guid = 531790;
UPDATE creature SET position_x = 7056.67, position_y = 1357.46, position_z = 304.656, spawndist = 0, MovementType = 4 WHERE guid = 531794;
-- random
UPDATE creature SET position_x = 7061.174805, position_y = 1297.557983, position_z = 303.115845, orientation = 4.487076, spawndist = 0, MovementType = 0 WHERE guid = 531804;
DELETE FROM creature_movement WHERE id IN (531796,531789,531798,531792,531803,531800,531795,531791,531799,531801,531797,531802,531793,531790,531794);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 531796
(531796,1,7179.338,1289.3989,302.43744,100,100,0),
(531796,2,7156.7207,1297.4375,302.2713,100,0,0),
(531796,3,7135.2456,1304.079,302.8118,100,100,0),
-- 531789
(531789,1,7171.155,1431.8702,320.12643,100,100,0),
(531789,2,7171.3276,1396.0631,314.93616,100,100,0),
-- 531798
(531798,1,7105.539,1379.343,309.9346,100,100,0),
(531798,2,7105.051,1399.3428,312.60098,100,0,0),
(531798,3,7106.2036,1356.3905,306.944,100,100,0),
-- 531792
(531792,1,7072.232,1347.3071,306.81802,100,100,0),
(531792,2,7099.5083,1349.8239,306.72562,100,100,0),
-- 531803
(531803,1,7112.694,1300.825,298.82767,100,100,0),
(531803,2,7108.429,1317.0404,298.82767,100,0,0),
(531803,3,7095.7026,1311.7295,298.82767,100,100,0),
-- 531800
(531800,1,7138.127,1299.3512,302.00604,100,100,0),
(531800,2,7133.0117,1278.8909,299.76877,100,0,0),
(531800,3,7126.2134,1258.518,298.57697,100,100,0),
-- 531795
(531795,1,7170.369,1285.6387,301.4749,100,100,0),
(531795,2,7166.6333,1250.0818,301.9416,100,100,0),
-- 531791
(531791,1,7120.133,1253.0167,298.05695,100,100,0),
(531791,2,7159.051,1244.2743,301.2635,100,100,0),
-- 531799
(531799,1,7109.9497,1204.816,298.88864,100,100,0),
(531799,2,7066.0635,1206.4825,297.86423,100,100,0),
-- 531801
(531801,1,7177.403,1193.3151,307.23688,100,100,0),
(531801,2,7157.762,1208.3356,304.32767,100,0,0),
(531801,3,7133.557,1224.0454,298.82767,100,100,0),
-- 531797
(531797,1,7122.7993,1173.7247,298.71683,100,100,0),
(531797,2,7142.033,1201.882,298.82767,100,100,0),
-- 531802
(531802,1,7168.393,1185.8309,308.04254,100,100,0),
(531802,2,7165.4487,1189.3962,307.08035,100,0,0),
(531802,3,7161.2104,1200.8612,305.4446,100,0,0),
(531802,4,7132.645,1213.3274,298.74814,100,100,0),
-- 531793
(531793,1,7137.1577,1168.3712,305.30618,100,100,0),
(531793,2,7153.602,1134.9402,310.62125,100,100,0),
-- 531790
(531790,1,7176.4004,1195.095,307.02338,100,100,0),
(531790,2,7201.672,1176.3033,311.21875,100,100,0),
-- 531794
(531794,1,7056.67,1357.46,304.656,100,100,0),
(531794,2,7056.37,1326.14,301.669,100,0,0),
(531794,3,7062.62,1303.9,302.726,100,100,0);

-- Stitched Brute 32771
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE id = 32771;

-- Frostskull Magus 31813
DELETE FROM creature_addon WHERE guid = 535719;
DELETE FROM creature_movement WHERE id = 535719;
DELETE FROM game_event_creature WHERE guid = 535719;
DELETE FROM game_event_creature_data WHERE guid = 535719;
DELETE FROM creature_battleground WHERE guid = 535719;
DELETE FROM creature_linking WHERE guid = 535719;
DELETE FROM creature where guid = 535719;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(535719,31813,571,1,1,7596.06,1704.24,343.627,0,300,300,10,1);

-- Enraged Fleshrender 32770
-- Spawn Groups
-- Group 1
DELETE FROM `spawn_group` WHERE id = 34089;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34089, 'Icecrown - The Bombardment - Enraged Fleshrender 32770 x2 - Patrol 1', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 34089;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34089, 532974, 0),
(34089, 532957, 1);
DELETE FROM `spawn_group_formation` WHERE id = 34089;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34089, 3, 5, 0, 34089, 2, 'Icecrown - The Bombardment - Enraged Fleshrender 32770 x2 - Patrol 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 34089;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34089,'Icecrown - The Bombardment - Enraged Fleshrender 32770 x2 - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId = 34089;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34089,1,7581.9756,1864.4258,371.49246,100,0,0),
(34089,2,7583.6304,1875.3624,372.15155,100,0,0),
(34089,3,7580.3647,1848.903,370.26627,100,0,0),
(34089,4,7568.961,1828.4918,367.58362,100,0,0),
(34089,5,7561.153,1815.46,365.2445,100,0,0),
(34089,6,7565.1753,1800.6587,362.8346,100,0,0),
(34089,7,7568.961,1828.4918,367.58362,100,0,0),
(34089,8,7577.4844,1839.1376,369.29483,100,0,0);
DELETE FROM `creature_spawn_data` WHERE guid IN (532974,532957);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(532974,1),(532957,1);
-- Group 2
UPDATE creature SET position_x = 7765.6895, position_y = 1943.1989, position_z = 367.22034, spawndist = 0, MovementType = 0 WHERE guid IN (532971,532961);
DELETE FROM `spawn_group` WHERE id = 34090;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34090, 'Icecrown - The Bombardment - Enraged Fleshrender 32770 x2 - Patrol 2', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 34090;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34090, 532971, 0),
(34090, 532961, 1);
DELETE FROM `spawn_group_formation` WHERE id = 34090;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34090, 3, 5, 0, 34090, 4, 'Icecrown - The Bombardment - Enraged Fleshrender 32770 x2 - Patrol 2'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 34090;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34090,'Icecrown - The Bombardment - Enraged Fleshrender 32770 x2 - Patrol 2');
DELETE FROM `waypoint_path` WHERE PathId = 34090;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34090,1,7765.6895,1943.1989,367.22034,100,100,0),
(34090,2,7759.0845,1932.4888,366.1816,100,0,0),
(34090,3,7760.5415,1920.1598,364.62473,100,0,0),
(34090,4,7760.532,1909.5406,363.55295,100,0,0),
(34090,5,7766.7144,1902.8494,362.436,100,0,0),
(34090,6,7780.112,1895.507,362.71548,100,0,0),
(34090,7,7787.8584,1884.087,363.0629,100,0,0),
(34090,8,7809.9204,1867.2268,363.40164,100,100,0);
DELETE FROM `creature_spawn_data` WHERE guid IN (532971,532961);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(532971,1),(532961,1);
-- Group 3
UPDATE creature SET position_x = 7812.5747, position_y = 1952.2242, position_z = 366.93835, spawndist = 0, MovementType = 0 WHERE guid IN (532954,532958);
DELETE FROM `spawn_group` WHERE id = 34091;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34091, 'Icecrown - The Bombardment - Enraged Fleshrender 32770 x2 - Patrol 3', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 34091;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34091, 532954, 0),
(34091, 532958, 1);
DELETE FROM `spawn_group_formation` WHERE id = 34091;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34091, 3, 5, 0, 34091, 4, 'Icecrown - The Bombardment - Enraged Fleshrender 32770 x2 - Patrol 3'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 34091;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34091,'Icecrown - The Bombardment - Enraged Fleshrender 32770 x2 - Patrol 3');
DELETE FROM `waypoint_path` WHERE PathId = 34091;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34091,1,7812.5747,1952.2242,366.93835,100,100,0),
(34091,2,7809.9243,1975.9403,367.82864,100,0,0),
(34091,3,7809.488,1992.7262,371.81003,100,0,0),
(34091,4,7811.002,2009.4531,378.48276,100,100,0);
DELETE FROM `creature_spawn_data` WHERE guid IN (532954,532958);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(532954,1),(532958,1);
-- Group 4
UPDATE creature SET position_x = 7908.9756, position_y = 1921.8883, position_z = 369.32837, spawndist = 0, MovementType = 0 WHERE guid IN (532968,532966);
DELETE FROM `spawn_group` WHERE id = 34092;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34092, 'Icecrown - The Bombardment - Enraged Fleshrender 32770 x2 - Patrol 4', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 34092;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34092, 532968, 0),
(34092, 532966, 1);
DELETE FROM `spawn_group_formation` WHERE id = 34092;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34092, 3, 5, 0, 34092, 2, 'Icecrown - The Bombardment - Enraged Fleshrender 32770 x2 - Patrol 4');
DELETE FROM `waypoint_path_name` WHERE PathId = 34092;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34092,'Icecrown - The Bombardment - Enraged Fleshrender 32770 x2 - Patrol 4');
DELETE FROM `waypoint_path` WHERE PathId = 34092;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34092,1,7908.9756,1921.8883,369.32837,100,100,0),
(34092,2,7903.5747,1918.6194,369.0725,100,0,0),
(34092,3,7931.218,1927.9626,372.01843,100,0,0),
(34092,4,7949.126,1943.2448,372.87158,100,0,0),
(34092,5,7958.4033,1959.833,368.4159,100,0,0),
(34092,6,7941.238,1932.181,372.7653,100,0,0),
(34092,7,7922.368,1926.5857,370.9934,100,100,0);
DELETE FROM `creature_spawn_data` WHERE guid IN (532968,532966);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(532968,1),(532966,1);

-- Ground Commander Xutjja 31834
UPDATE creature_template SET GossipMenuId = 10127 WHERE entry = 31834;
DELETE FROM gossip_menu WHERE entry IN(10127);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(10127,14061,0,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14061);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14061,1,32406);
DELETE FROM npc_text WHERE id IN (14061);

-- Decomposed Ghoul 31812
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE id = 31812;
