-- Northwind Cleft: Spawns, Paths, Pools, Texts and Emotes

-- ----------
-- Outside
-- ----------
-- Boulderfist Warrior
UPDATE creature SET position_x = -1250.516, position_y = 8017.893, position_z = -94.948, MovementType = 1, spawndist = 10 WHERE guid = 60102; -- ] Position: X: -1250.516 Y: 8017.893 Z: -94.948
UPDATE creature SET position_x = -1148.794, position_y = 8049.226, position_z = -83.90626, MovementType = 1, spawndist = 10 WHERE guid = 60103; -- ] Position: X: -1148.794 Y: 8049.226 Z: -83.90626
UPDATE creature SET position_x = -1213.357, position_y = 8018.376, position_z = -92.00548, MovementType = 1, spawndist = 10 WHERE guid = 60104; -- Pool 1 ] Position: X: -1213.357 Y: 8018.376 Z: -92.00548
-- Missing spawns
DELETE FROM creature_addon WHERE guid IN (105816,105835,105864,105865,106103,106111);
DELETE FROM creature_movement WHERE id IN (105816,105835,105864,105865,106103,106111);
DELETE FROM game_event_creature WHERE guid IN (105816,105835,105864,105865,106103,106111);
DELETE FROM game_event_creature_data WHERE guid IN (105816,105835,105864,105865,106103,106111);
DELETE FROM creature_battleground WHERE guid IN (105816,105835,105864,105865,106103,106111);
DELETE FROM creature_linking WHERE guid IN (105816,105835,105864,105865,106103,106111)
 OR master_guid IN (105816,105835,105864,105865,106103,106111);
DELETE FROM creature WHERE guid IN (105816,105835,105864,105865,106103,106111);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(105816,17136,530,1,0,0,-1214.913,8056.291,-84.8416,2.321288,300,300,0,0,5914,0,0,0), -- Pool 2, Pair 2 ] Position: X: -1214.913 Y: 8056.291 Z: -84.8416
(105835,17136,530,1,0,0,-1218.711,8059.714,-84.69444,5.654867,300,300,0,0,5914,0,0,0), -- Pool 3, Pair 2 ] Position: X: -1218.711 Y: 8059.714 Z: -84.69444
(105864,17136,530,1,0,0,-1160.49,8011.358,-79.72826,5.183628,300,300,0,0,5914,0,0,0), -- Pool 4, Pair 1 ] Position: X: -1160.49 Y: 8011.358 Z: -79.72826
(105865,17136,530,1,0,0,-1158.97,8007.8,-79.800888,1.884956,300,300,0,0,5914,0,0,0), -- Pool 5, Pair 1 ] Position: X: -1158.97 Y: 8007.8 Z: -78.53827
(106103,17136,530,1,0,0,-1183.691,8056.318,-84.41176,3.675043,300,300,10,0,5914,0,0,1), -- Pool 6 ] Position: X: -1183.691 Y: 8056.318 Z: -84.41176
(106111,17136,530,1,0,0,-1260.411,8031.677,-94.67106,0.01661398,300,300,0,0,5914,0,0,2); -- Pool 7, Pat 1 ] Position: X: -1260.411 Y: 8031.677 Z: -94.67106

-- Boulderfist Mage
UPDATE creature SET position_x = -1254.023, position_y = 8045.488, position_z = -95.56232, MovementType = 0, spawndist = 0 WHERE guid = 60118; -- ] Position: X: -1254.023 Y: 8045.488 Z: -95.56232
UPDATE creature SET position_x = -1214.913, position_y = 8056.291, position_z = -84.8416, MovementType = 0, spawndist = 0 WHERE guid = 60119; -- Pool 2, Pair 2 ] Position: X: -1214.913 Y: 8056.291 Z: -84.8416
UPDATE creature SET position_x = -1218.711, position_y = 8059.714, position_z = -84.69444, MovementType = 0, spawndist = 0 WHERE guid = 60120; -- Pool 3, Pair 2 ] Position: X: -1218.711 Y: 8059.714 Z: -84.69444
UPDATE creature SET position_x = -1160.49, position_y = 8011.358, position_z = -79.72826, MovementType = 0, spawndist = 0 WHERE guid = 60121; -- Pool 4, Pair 1 ] Position: X: -1160.49 Y: 8011.358 Z: -79.72826
UPDATE creature SET position_x = -1158.97, position_y = 8007.8, position_z = -79.800888, MovementType = 0, spawndist = 0 WHERE guid = 60122; -- Pool 5, Pair 1 ] Position: X: -1158.97 Y: 8007.8 Z: -78.53827
UPDATE creature SET position_x = -1184.809, position_y = 8018.766, position_z = -92.91023, MovementType = 1, spawndist = 10 WHERE guid = 60123; -- ] Position: X: -1184.809 Y: 8018.766 Z: -92.91023
UPDATE creature SET position_x = -1183.691, position_y = 8056.318, position_z = -84.41176, MovementType = 1, spawndist = 10 WHERE guid = 60124; -- Pool 6 ] Position: X: -1183.691 Y: 8056.318 Z: -84.41176
-- Missing spawns
DELETE FROM creature_addon WHERE guid IN (106180,107999);
DELETE FROM creature_movement WHERE id IN (106180,107999);
DELETE FROM game_event_creature WHERE guid IN (106180,107999);
DELETE FROM game_event_creature_data WHERE guid IN (106180,107999);
DELETE FROM creature_battleground WHERE guid IN (106180,107999);
DELETE FROM creature_linking WHERE guid IN (106180,107999)
 OR master_guid IN (106180,107999);
DELETE FROM creature WHERE guid IN (106180,107999);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(106180,17137,530,1,0,0,-1260.411,8031.677,-94.67106,0.01661398,300,300,0,0,4731,2790,0,2), -- Pool 7, Pat 1 ] Position: X: -1260.411 Y: 8031.677 Z: -94.67106
(107999,17137,530,1,0,0,-1213.357,8018.376,-92.00548,0.01661398,300,300,10,0,4731,2790,0,1); -- Pool 1 ] Position: X: -1213.357 Y: 8018.376 Z: -92.00548

-- ----------
-- Inside
-- ----------
-- Boulderfist Warrior
UPDATE creature SET position_x = -1091.971, position_y = 8086.149, position_z = -87.37159, MovementType = 1, spawndist = 2 WHERE guid = 60105; -- ] Position: X: -1091.971 Y: 8086.149 Z: -87.37159
UPDATE creature SET position_x = -1065.724, position_y = 8074.141, position_z = -92.04501, MovementType = 1, spawndist = 2 WHERE guid = 60106; -- Pool 12 ] Position: X: -1065.724 Y: 8074.141 Z: -92.04501
UPDATE creature SET position_x = -1038.612, position_y = 8072.057, position_z = -92.14009, MovementType = 1, spawndist = 2 WHERE guid = 60107; -- Pool 8 ] Position: X: -1038.612 Y: 8072.057 Z: -92.14009
UPDATE creature SET position_x = -1053.318, position_y = 8108.342, position_z = -89.53164, MovementType = 1, spawndist = 2 WHERE guid = 60108; -- ] Position: X: -1053.318 Y: 8108.342 Z: -89.53164
UPDATE creature SET position_x = -1029.142, position_y = 8106.844, position_z = -92.76311, MovementType = 1, spawndist = 2 WHERE guid = 60109; -- ] Position: X: -1029.142 Y: 8106.844 Z: -92.76311
UPDATE creature SET position_x = -974.2335, position_y = 8135.966, position_z = -93.81004, MovementType = 1, spawndist = 2 WHERE guid = 60777; -- ] Position: X: -974.2335 Y: 8135.966 Z: -93.81004
-- Missing spawns
DELETE FROM creature_addon WHERE guid IN (108000,108001,108002,108003,108004);
DELETE FROM creature_movement WHERE id IN (108000,108001,108002,108003,108004);
DELETE FROM game_event_creature WHERE guid IN (108000,108001,108002,108003,108004);
DELETE FROM game_event_creature_data WHERE guid IN (108000,108001,108002,108003,108004);
DELETE FROM creature_battleground WHERE guid IN (108000,108001,108002,108003,108004);
DELETE FROM creature_linking WHERE guid IN (108000,108001,108002,108003,108004)
 OR master_guid IN (108000,108001,108002,108003,108004);
DELETE FROM creature WHERE guid IN (108000,108001,108002,108003,108004);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(108000,17136,530,1,0,0,-1053.719,8145.687,-85.71714,1.694214,300,300,2,0,5914,0,0,1), -- Pool 9 ] Position: X: -1053.719 Y: 8145.687 Z: -85.71714
(108001,17136,530,1,0,0,-1037.624,8149.927,-89.86308,2.509007,300,300,2,0,5914,0,0,1), -- ] Position: X: -1037.624 Y: 8149.927 Z: -89.86308
(108002,17136,530,1,0,0,-974.0775,8119.219,-94.81471,0.9870771,300,300,2,0,5914,0,0,1), -- Pool 10 ] Position: X: -974.0775 Y: 8119.219 Z: -94.81471
(108003,17136,530,1,0,0,-976.0233,8127.272,-94.35486,3.93982,300,300,0,0,5914,0,0,2), -- Pool 11, Pat 2 ] Position: X: -976.0233 Y: 8127.272 Z: -94.35486
(108004,17136,530,1,0,0,-1037.624,8149.927,-89.86308,2.509007,300,300,2,0,5914,0,0,1); -- ] Position: X: -1037.624 Y: 8149.927 Z: -89.86308

-- Boulderfist Mage
UPDATE creature SET position_x = -1101.717, position_y = 8049.368, position_z = -85.80847, MovementType = 1, spawndist = 2 WHERE guid = 60125; -- ] Position: X: -1101.717 Y: 8049.368 Z: -85.80847
UPDATE creature SET position_x = -1088.45, position_y = 8119.136, position_z = -87.34202, MovementType = 1, spawndist = 2 WHERE guid = 60126; -- ] Position: X: -1088.45 Y: 8119.136 Z: -87.34202
UPDATE creature SET position_x = -1033.548, position_y = 8057.624, position_z = -92.34128, MovementType = 1, spawndist = 2 WHERE guid = 60127; -- ] Position: X: -1033.548 Y: 8057.624 Z: -92.34128
UPDATE creature SET position_x = -1040.609, position_y = 8090.499, position_z = -93.52757, MovementType = 1, spawndist = 2 WHERE guid = 60128; -- ] Position: X: -1040.609 Y: 8090.499 Z: -93.52757
UPDATE creature SET position_x = -974.0775, position_y = 8119.219, position_z = -94.81471, MovementType = 1, spawndist = 2 WHERE guid = 60780; -- Pool 10 ] Position: X: -974.0775 Y: 8119.219 Z: -94.81471
-- Missing spawns
DELETE FROM creature_addon WHERE guid IN (108005,108006,108007,108008,108009);
DELETE FROM creature_movement WHERE id IN (108005,108006,108007,108008,108009);
DELETE FROM game_event_creature WHERE guid IN (108005,108006,108007,108008,108009);
DELETE FROM game_event_creature_data WHERE guid IN (108005,108006,108007,108008,108009);
DELETE FROM creature_battleground WHERE guid IN (108005,108006,108007,108008,108009);
DELETE FROM creature_linking WHERE guid IN (108005,108006,108007,108008,108009)
 OR master_guid IN (108005,108006,108007,108008,108009);
DELETE FROM creature WHERE guid IN (108005,108006,108007,108008,108009);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(108005,17137,530,1,0,0,-976.0233,8127.272,-94.35486,3.93982,300,300,0,0,4731,2790,0,2), -- Pool 11, Pat 2 ] Position: X: -976.0233 Y: 8127.272 Z: -94.35486
(108006,17137,530,1,0,0,-985.1443,8106.613,-93.15791,4.453781,300,300,2,0,4731,2790,0,1), -- ] Position: X: -985.1443 Y: 8106.613 Z: -93.15791
(108007,17137,530,1,0,0,-1065.724,8074.141,-92.04501,1.844028,300,300,2,0,4731,2790,0,1), -- Pool 12 ] Position: X: -1065.724 Y: 8074.141 Z: -92.04501
(108008,17137,530,1,0,0,-1038.612,8072.057,-92.14009,3.106686,300,300,2,0,4731,2790,0,1), -- Pool 8 ] Position: X: -1038.612 Y: 8072.057 Z: -92.14009
(108009,17137,530,1,0,0,-1053.719,8145.687,-85.71714,6.248279,300,300,2,0,4731,2790,0,1); -- Pool 9 ] Position: X: -1053.719 Y: 8145.687 Z: -85.71714

-- ---------------------------
-- Pools
-- ---------------------------
DELETE FROM pool_template WHERE entry BETWEEN 25712 AND 25723;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25712, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(25713, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(25714, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(25715, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(25716, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(25717, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(25718, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(25719, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(25720, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(25721, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(25722, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1'),
(25723, 1, 'Northwind Cleft - Boulderfist Mage/Warrior 1');
DELETE FROM pool_creature WHERE pool_entry BETWEEN 25712 AND 25723;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(60104, 25712, 50, 'Northwind Cleft - Boulderfist Warrior 1'),
(107999, 25712, 50, 'Northwind Cleft - Boulderfist Mage 1'),
(105816, 25713, 50, 'Northwind Cleft - Boulderfist Warrior 2'),
(60119, 25713, 50, 'Northwind Cleft - Boulderfist Mage 2'),
(105835, 25714, 50, 'Northwind Cleft - Boulderfist Warrior 3'),
(60120, 25714, 50, 'Northwind Cleft - Boulderfist Mage 3'),
(105864, 25715, 50, 'Northwind Cleft - Boulderfist Warrior 4'),
(60121, 25715, 50, 'Northwind Cleft - Boulderfist Mage 4'),
(105865, 25716, 50, 'Northwind Cleft - Boulderfist Warrior 5'),
(60122, 25716, 50, 'Northwind Cleft - Boulderfist Mage 5'),
(106103, 25717, 50, 'Northwind Cleft - Boulderfist Warrior 6'),
(60124, 25717, 50, 'Northwind Cleft - Boulderfist Mage 6'),
(106111, 25718, 50, 'Northwind Cleft - Boulderfist Warrior 7'),
(106180, 25718, 50, 'Northwind Cleft - Boulderfist Mage 7'),
(60107, 25719, 50, 'Northwind Cleft - Boulderfist Warrior 8'),
(108008, 25719, 50, 'Northwind Cleft - Boulderfist Mage 8'),
(108000, 25720, 50, 'Northwind Cleft - Boulderfist Warrior 9'),
(108009, 25720, 50, 'Northwind Cleft - Boulderfist Mage 9'),
(108002, 25721, 50, 'Northwind Cleft - Boulderfist Warrior 10'),
(60780, 25721, 50, 'Northwind Cleft - Boulderfist Mage 10'),
(108003, 25722, 50, 'Northwind Cleft - Boulderfist Warrior 11'),
(108005, 25722, 50, 'Northwind Cleft - Boulderfist Mage 11'),
(60106, 25723, 50, 'Northwind Cleft - Boulderfist Warrior 12'),
(108007, 25723, 50, 'Northwind Cleft - Boulderfist Mage 12');

-- ---------------------------
-- Waypoints
-- ---------------------------
DELETE FROM dbscripts_on_creature_movement WHERE id = 1713601;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,dataint,dataint2,dataint3,dataint4,buddy_entry,search_radius,data_flags,comments,x,y,z,o) VALUES
(1713601,0,35,6,0,0,0,0,0,0,0,0,0,'Boulderfist Warrior/Mage - Throw AI Event Type 6 (B)',0,0,0,0),
(1713601,0,20,0,0,0,0,0,0,0,0,0,0,'Boulderfist Warrior/Mage - Set Idle Movement',0,0,0,0);
UPDATE creature SET MovementType = 2 WHERE guid IN(105816,60119,105835,60120,105864,60121,105865,60122);
DELETE FROM creature_movement WHERE id IN(105816,60119,105835,60120,105864,60121,105865,60122);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
-- 105816
(105816,1,-1214.91,8056.29,-84.8416,1000,1713601,2.32129),
-- 60119
(60119,1,-1214.91,8056.29,-84.8416,1000,1713601,2.32129),
-- 105835
(105835,1,-1218.71,8059.71,-84.6944,1000,1713601,5.65487),
-- 60120
(60120,1,-1218.71,8059.71,-84.6944,1000,1713601,5.65487),
-- 105864
(105864,1,-1160.49,8011.36,-79.7283,1000,1713601,5.18363),
-- 60121
(60121,1,-1160.49,8011.36,-79.7283,1000,1713601,5.18363),
-- 105865
(105865,1,-1158.97,8007.8,-79.800888,1000,1713601,1.88496),
-- 60122
(60122,1,-1158.97,8007.8,-79.800888,1000,1713601,1.88496);
DELETE FROM creature_movement WHERE id = 106111;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(106111,1,-1223.135,8032.314,-94.08955,0,0,100),
(106111,2,-1261.037,8033.37,-94.80727,0,0,100),
(106111,3,-1223.135,8032.314,-94.08955,0,0,100),
(106111,4,-1196.305,8023.011,-93.1621,0,0,100),
(106111,5,-1164.77,8035.224,-88.99334,0,0,100),
(106111,6,-1132.224,8043.066,-83.1275,0,0,100),
(106111,7,-1105.093,8045.477,-83.741,0,0,100),
(106111,8,-1095.761,8062.179,-87.76753,0,0,100),
(106111,9,-1090.441,8080.195,-87.54075,0,0,100),
(106111,10,-1102.059,8100.922,-86.45218,0,0,100),
(106111,11,-1099.039,8115.658,-88.04202,0,0,100),
(106111,12,-1082.514,8127.637,-85.10381,0,0,100),
(106111,13,-1056.677,8141.524,-85.80424,0,0,100),
(106111,14,-1082.514,8127.637,-85.10381,0,0,100),
(106111,15,-1099.039,8115.658,-88.04202,0,0,100),
(106111,16,-1102.059,8100.922,-86.45218,0,0,100),
(106111,17,-1090.441,8080.195,-87.54075,0,0,100),
(106111,18,-1095.761,8062.179,-87.76753,0,0,100),
(106111,19,-1105.027,8045.595,-83.74055,0,0,100),
(106111,20,-1132.291,8042.708,-83.19806,0,0,100),
(106111,21,-1164.77,8035.224,-88.99334,0,0,100),
(106111,22,-1196.305,8023.011,-93.1621,0,0,100);
DELETE FROM creature_movement WHERE id = 106180;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(106180,1,-1223.135,8032.314,-94.08955,0,0,100),
(106180,2,-1261.037,8033.37,-94.80727,0,0,100),
(106180,3,-1223.135,8032.314,-94.08955,0,0,100),
(106180,4,-1196.305,8023.011,-93.1621,0,0,100),
(106180,5,-1164.77,8035.224,-88.99334,0,0,100),
(106180,6,-1132.224,8043.066,-83.1275,0,0,100),
(106180,7,-1105.093,8045.477,-83.741,0,0,100),
(106180,8,-1095.761,8062.179,-87.76753,0,0,100),
(106180,9,-1090.441,8080.195,-87.54075,0,0,100),
(106180,10,-1102.059,8100.922,-86.45218,0,0,100),
(106180,11,-1099.039,8115.658,-88.04202,0,0,100),
(106180,12,-1082.514,8127.637,-85.10381,0,0,100),
(106180,13,-1056.677,8141.524,-85.80424,0,0,100),
(106180,14,-1082.514,8127.637,-85.10381,0,0,100),
(106180,15,-1099.039,8115.658,-88.04202,0,0,100),
(106180,16,-1102.059,8100.922,-86.45218,0,0,100),
(106180,17,-1090.441,8080.195,-87.54075,0,0,100),
(106180,18,-1095.761,8062.179,-87.76753,0,0,100),
(106180,19,-1105.027,8045.595,-83.74055,0,0,100),
(106180,20,-1132.291,8042.708,-83.19806,0,0,100),
(106180,21,-1164.77,8035.224,-88.99334,0,0,100),
(106180,22,-1196.305,8023.011,-93.1621,0,0,100);
DELETE FROM creature_movement WHERE id = 108003;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(108003,1,-985.1895,8117.868,-95.33659,0,0,100),
(108003,2,-1014.167,8114.149,-94.21143,0,0,100),
(108003,3,-1029.322,8107.333,-92.93415,0,0,100),
(108003,4,-1054.723,8109.319,-89.3298,0,0,100),
(108003,5,-1087.885,8115.932,-88.18234,0,0,100),
(108003,6,-1055.289,8108.182,-89.30984,0,0,100),
(108003,7,-1051.73,8094.701,-92.11335,0,0,100),
(108003,8,-1063.125,8084.988,-91.62275,0,0,100),
(108003,9,-1065.03,8072.453,-91.92705,0,0,100),
(108003,10,-1079.593,8071.368,-91.32253,0,0,100),
(108003,11,-1082.857,8086.323,-87.87098,0,0,100),
(108003,12,-1079.227,8070.579,-91.32788,0,0,100),
(108003,13,-1062.193,8072.824,-92.02679,0,0,100),
(108003,14,-1038.218,8071.441,-92.23001,0,0,100),
(108003,15,-1038.748,8090.177,-93.8027,0,0,100),
(108003,16,-1026.982,8105.88,-93.05724,0,0,100),
(108003,17,-1014.283,8114.667,-94.26337,0,0,100),
(108003,18,-981.1702,8118.537,-95.24087,0,0,100),
(108003,19,-978.0334,8113.03,-95.13991,0,0,100),
(108003,20,-987.8517,8105.976,-93.55549,0,0,100),
(108003,21,-971.8125,8106.554,-91.57378,0,0,100),
(108003,22,-987.8517,8105.976,-93.55549,0,0,100),
(108003,23,-978.0681,8112.963,-95.13623,0,0,100),
(108003,24,-981.1702,8118.537,-95.24087,0,0,100),
(108003,25,-1014.283,8114.667,-94.26337,0,0,100),
(108003,26,-1026.875,8106.022,-93.08327,0,0,100),
(108003,27,-1038.751,8090.285,-93.78622,0,0,100),
(108003,28,-1038.218,8071.441,-92.23001,0,0,100),
(108003,29,-1062.193,8072.824,-92.02679,0,0,100),
(108003,30,-1079.227,8070.579,-91.32788,0,0,100),
(108003,31,-1082.857,8086.323,-87.87098,0,0,100),
(108003,32,-1079.593,8071.368,-91.32253,0,0,100),
(108003,33,-1065.03,8072.453,-91.92705,0,0,100),
(108003,34,-1063.125,8084.988,-91.62275,0,0,100),
(108003,35,-1051.73,8094.701,-92.11335,0,0,100),
(108003,36,-1055.032,8108.121,-89.37637,0,0,100),
(108003,37,-1087.885,8115.932,-88.18234,0,0,100),
(108003,38,-1054.723,8109.319,-89.3298,0,0,100),
(108003,39,-1029.322,8107.333,-92.93415,0,0,100),
(108003,40,-1014.167,8114.149,-94.21143,0,0,100),
(108003,41,-985.1895,8117.868,-95.33659,0,0,100),
(108003,42,-976.7285,8127.519,-94.49461,0,0,100);
DELETE FROM creature_movement WHERE id = 108005;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(108005,1,-985.1895,8117.868,-95.33659,0,0,100),
(108005,2,-1014.167,8114.149,-94.21143,0,0,100),
(108005,3,-1029.322,8107.333,-92.93415,0,0,100),
(108005,4,-1054.723,8109.319,-89.3298,0,0,100),
(108005,5,-1087.885,8115.932,-88.18234,0,0,100),
(108005,6,-1055.289,8108.182,-89.30984,0,0,100),
(108005,7,-1051.73,8094.701,-92.11335,0,0,100),
(108005,8,-1063.125,8084.988,-91.62275,0,0,100),
(108005,9,-1065.03,8072.453,-91.92705,0,0,100),
(108005,10,-1079.593,8071.368,-91.32253,0,0,100),
(108005,11,-1082.857,8086.323,-87.87098,0,0,100),
(108005,12,-1079.227,8070.579,-91.32788,0,0,100),
(108005,13,-1062.193,8072.824,-92.02679,0,0,100),
(108005,14,-1038.218,8071.441,-92.23001,0,0,100),
(108005,15,-1038.748,8090.177,-93.8027,0,0,100),
(108005,16,-1026.982,8105.88,-93.05724,0,0,100),
(108005,17,-1014.283,8114.667,-94.26337,0,0,100),
(108005,18,-981.1702,8118.537,-95.24087,0,0,100),
(108005,19,-978.0334,8113.03,-95.13991,0,0,100),
(108005,20,-987.8517,8105.976,-93.55549,0,0,100),
(108005,21,-971.8125,8106.554,-91.57378,0,0,100),
(108005,22,-987.8517,8105.976,-93.55549,0,0,100),
(108005,23,-978.0681,8112.963,-95.13623,0,0,100),
(108005,24,-981.1702,8118.537,-95.24087,0,0,100),
(108005,25,-1014.283,8114.667,-94.26337,0,0,100),
(108005,26,-1026.875,8106.022,-93.08327,0,0,100),
(108005,27,-1038.751,8090.285,-93.78622,0,0,100),
(108005,28,-1038.218,8071.441,-92.23001,0,0,100),
(108005,29,-1062.193,8072.824,-92.02679,0,0,100),
(108005,30,-1079.227,8070.579,-91.32788,0,0,100),
(108005,31,-1082.857,8086.323,-87.87098,0,0,100),
(108005,32,-1079.593,8071.368,-91.32253,0,0,100),
(108005,33,-1065.03,8072.453,-91.92705,0,0,100),
(108005,34,-1063.125,8084.988,-91.62275,0,0,100),
(108005,35,-1051.73,8094.701,-92.11335,0,0,100),
(108005,36,-1055.032,8108.121,-89.37637,0,0,100),
(108005,37,-1087.885,8115.932,-88.18234,0,0,100),
(108005,38,-1054.723,8109.319,-89.3298,0,0,100),
(108005,39,-1029.322,8107.333,-92.93415,0,0,100),
(108005,40,-1014.167,8114.149,-94.21143,0,0,100),
(108005,41,-985.1895,8117.868,-95.33659,0,0,100),
(108005,42,-976.7285,8127.519,-94.49461,0,0,100);
