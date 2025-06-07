-- Deathspeaker's Watch - Icecrown

-- OBJECT
-- Black Cage 195310
DELETE FROM gameobject_addon WHERE guid IN(SELECT guid FROM gameobject WHERE id = 195310);

-- Creature
-- Doctor Kohler 35113
UPDATE creature_template SET MovementType = 4 WHERE Entry = 35113;
UPDATE creature SET position_x = 8478.161, position_y = 1563.7257, position_z = 670.1203, spawndist = 0, MovementType = 4 WHERE id = 35113;
DELETE FROM creature_movement WHERE Id IN (534210);
DELETE FROM `creature_movement_template` WHERE `entry` = 35113;
INSERT INTO `creature_movement_template` (`entry`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(35113,1,8478.161,1563.7257,670.1203,100,100,0),
(35113,2,8482.664,1571.8923,670.1518,100,0,0),
(35113,3,8484.156,1582.3541,670.1218,100,0,0),
(35113,4,8483.3125,1595.3142,670.21216,100,0,0),
(35113,5,8479.798,1608.4567,670.38434,100,0,0),
(35113,6,8471.4,1621.8403,670.6885,100,100,0);

-- Dark Ritualist 34734
DELETE FROM creature_addon WHERE guid BETWEEN 535731 AND 535734;
DELETE FROM creature_movement WHERE id BETWEEN 535731 AND 535734;
DELETE FROM game_event_creature WHERE guid BETWEEN 535731 AND 535734;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535731 AND 535734;
DELETE FROM creature_battleground WHERE guid BETWEEN 535731 AND 535734;
DELETE FROM creature_linking WHERE guid BETWEEN 535731 AND 535734;
DELETE FROM creature where guid BETWEEN 535731 AND 535734;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(535731,34734,571,1,1,8606.196,1642.4254,645.622,0,300,300,0,4), -- linear
(535732,34734,571,1,1,8533.936,1563.1719,644.10376,0,300,300,0,4), -- linear
(535733,34734,571,1,1,8544.9795,1503.7986,642.17706,1.256637,300,300,0,0),
(535734,34734,571,1,1,8578.288,1524.4653,643.0058,3.6128,300,300,0,0);
-- individual addon
DELETE FROM creature_addon WHERE guid IN (535733);
INSERT INTO creature_addon (guid,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(535733,0,0,1,0,0,0,67040);
UPDATE creature SET position_x = 8594.516, position_y = 1681.4392, position_z = 645.4247, spawndist = 0, MovementType = 4 WHERE guid = 533923; -- linear
UPDATE creature SET position_x = 8499.16, position_y = 1651.4288, position_z = 649.0247, spawndist = 0, MovementType = 4 WHERE guid = 533911; -- linear
UPDATE creature SET position_x = 8527.557, position_y = 1636.0817, position_z = 642.7275, spawndist = 0, MovementType = 4 WHERE guid = 533914; -- linear
UPDATE creature SET position_x = 8559.43, position_y = 1405.3594, position_z = 643.6021, spawndist = 0, MovementType = 4 WHERE guid = 533925; -- linear
UPDATE creature SET position_x = 8508.912, position_y = 1423.3785, position_z = 642.1677, spawndist = 0, MovementType = 4 WHERE guid = 533915; -- linear
DELETE FROM creature_movement WHERE id IN (533923,533911,533914,535731,535732,533925,533915);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 533923
(533923,1,8594.516,1681.4392,645.4247,100,100,0),
(533923,2,8586.031,1695.1962,644.33264,100,0,0),
(533923,3,8584.355,1708.7743,644.18463,100,0,0),
(533923,4,8583.748,1721.5834,644.56635,100,0,0),
(533923,5,8577.305,1732.724,644.1534,100,0,0),
(533923,6,8570.837,1739.8507,643.8898,100,100,0),
-- 533911
(533911,1,8499.16,1651.4288,649.0247,100,100,0),
(533911,2,8504.302,1654.3767,647.65216,100,0,0),
(533911,3,8510.175,1661.0573,647.13556,100,0,0),
(533911,4,8514.877,1673.441,646.58936,100,0,0),
(533911,5,8518.864,1693.4844,645.4977,100,0,0),
(533911,6,8515.326,1712.4514,643.958,100,100,0),
-- 533914
(533914,1,8527.557,1636.0817,642.7275,100,100,0),
(533914,2,8543.526,1634.6979,642.6174,100,0,0),
(533914,3,8558.849,1638.2483,642.7181,100,0,0),
(533914,4,8569.741,1643.606,643.08356,100,0,0),
(533914,5,8580.118,1650.6528,643.52155,100,0,0),
(533914,6,8589.085,1655.2812,644.5976,100,100,0),
-- 535731
(535731,1,8606.196,1642.4254,645.622,100,100,0),
(535731,2,8618.094,1632.6146,644.68036,100,0,0),
(535731,3,8623.763,1619.7709,643.7879,100,0,0),
(535731,4,8624.997,1605.1163,643.4888,100,0,0),
(535731,5,8620.325,1586.9653,644.59326,100,0,0),
(535731,6,8614.869,1576.1406,644.0612,100,0,0),
(535731,7,8610.54,1569.5938,643.46094,100,100,0),
-- 535732
(535732,1,8533.936,1563.1719,644.10376,100,100,0),
(535732,2,8547.997,1560.4653,644.09393,100,0,0),
(535732,3,8560.535,1552.1823,643.61786,100,0,0),
(535732,4,8573.631,1544.8584,643.74927,100,0,0),
(535732,5,8583.548,1543.6979,643.7368,100,100,0),
-- 533925
(533925,1,8559.43,1405.3594,643.6021,100,100,0),
(533925,2,8561.401,1416.401,643.1947,100,0,0),
(533925,3,8559.165,1427.0868,642.582,100,0,0),
(533925,4,8558.565,1438.5435,642.76,100,0,0),
(533925,5,8563.757,1448.4879,643.133,100,100,0),
-- 533915
(533915,1,8508.912,1423.3785,642.1677,100,100,0),
(533915,2,8515.332,1430.2466,642.2927,100,0,0),
(533915,3,8523.013,1437.7882,642.3946,100,0,0),
(533915,4,8526.778,1446.5243,642.3687,100,0,0),
(533915,5,8530.59,1452.1493,642.35675,100,0,0),
(533915,6,8534.38,1456.1615,642.9715,100,100,0);

-- Dark Zealot 34728
DELETE FROM creature_addon WHERE guid = 533907;
DELETE FROM creature_movement WHERE id = 533907;
DELETE FROM game_event_creature WHERE guid = 533907;
DELETE FROM game_event_creature_data WHERE guid = 533907;
DELETE FROM creature_battleground WHERE guid = 533907;
DELETE FROM creature_linking WHERE guid = 533907;
DELETE FROM creature where guid = 533907;
DELETE FROM creature_addon WHERE guid BETWEEN 535735 AND 535738;
DELETE FROM creature_movement WHERE id BETWEEN 535735 AND 535738;
DELETE FROM game_event_creature WHERE guid BETWEEN 535735 AND 535738;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535735 AND 535738;
DELETE FROM creature_battleground WHERE guid BETWEEN 535735 AND 535738;
DELETE FROM creature_linking WHERE guid BETWEEN 535735 AND 535738;
DELETE FROM creature where guid BETWEEN 535735 AND 535738;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(535735,34728,571,1,1,8556.438,1586.2084,642.1891,3.0194196,300,300,0,0),
(535736,34728,571,1,1,8536.392,1540.2778,642.20856,3.7699,300,300,0,0),
(535737,34728,571,1,1,8465.594,1605.2517,670.0282,0,300,300,0,0),
(535738,34728,571,1,1,8462.169,1634.533,671.2938,5.4105,300,300,0,0);
-- individual addon
DELETE FROM creature_addon WHERE guid BETWEEN 535735 AND 535738;
INSERT INTO creature_addon (guid,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(535735,0,0,1,0,69,0,NULL),
(535736,0,0,1,0,69,0,NULL),
(535737,0,0,1,0,375,0,NULL),
(535738,0,0,1,0,375,0,NULL);

-- Black Knight Caster 35106
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 35106;
DELETE FROM dbscripts_on_relay WHERE id IN (20874,20875);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20874,1,31,35097,30,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Black Knight Caster 35106 EAI: search for 35097'),
(20874,100,15,60857,0,0,35097,534177,1|0x10,0,0,0,0,0,0,0,0,'Part of Black Knight Caster 35106 EAI: cast 60857'),
(20875,1,31,35097,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Black Knight Caster 35106 EAI: search for 35097'),
(20875,100,15,60857,0,0,35097,535741,1|0x10,0,0,0,0,0,0,0,0,'Part of Black Knight Caster 35106 EAI: cast 60857');

-- Sacrificed Aspirant 35097
DELETE FROM creature_addon WHERE guid BETWEEN 535739 AND 535741;
DELETE FROM creature_movement WHERE id BETWEEN 535739 AND 535741;
DELETE FROM game_event_creature WHERE guid BETWEEN 535739 AND 535741;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535739 AND 535741;
DELETE FROM creature_battleground WHERE guid BETWEEN 535739 AND 535741;
DELETE FROM creature_linking WHERE guid BETWEEN 535739 AND 535741;
DELETE FROM creature where guid BETWEEN 535739 AND 535741;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(535739,35097,571,1,1,8462.083,1570.5173,670.02826,5.2883477,300,300,0,0),
(535740,35097,571,1,1,8459.196,1611.2118,670.02826,3.89208,300,300,0,0),
(535741,35097,571,1,1,8462.1,1605.375,671.10657,0.314159,300,300,0,0);

-- The Black Knight 35444
DELETE FROM creature_addon WHERE guid = 535742;
DELETE FROM creature_movement WHERE id = 535742;
DELETE FROM game_event_creature WHERE guid = 535742;
DELETE FROM game_event_creature_data WHERE guid = 535742;
DELETE FROM creature_battleground WHERE guid = 535742;
DELETE FROM creature_linking WHERE guid = 535742;
DELETE FROM creature where guid = 535742;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(535742,35444,571,1,1,8464.755,1588.0851,673.1536,0.1745329,300,300,0,0);
UPDATE creature_template SET RegenerateStats = 0, MovementType = 0 WHERE entry = 35444;
DELETE FROM creature_template_addon WHERE entry IN (35444);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(35444,0,8,1,0,0,0,NULL);
DELETE FROM `creature_spawn_data` WHERE guid IN (535742);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(535742,20070);
DELETE FROM creature_spawn_data_template WHERE entry = 20070;
INSERT INTO creature_spawn_data_template (`Entry`,`CurHealth`,`Name`) VALUES 
(20070,3780,'- CurHealth = 3780');

-- Black Knight Shield Proxy 38751
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 38751;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 38751);
DELETE FROM creature_template_addon WHERE entry IN (38751);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(38751,0,0,0,0,0,0,66763);

-- Glacier Penguin 32498
DELETE FROM creature_addon WHERE guid BETWEEN 535743 AND 535757;
DELETE FROM creature_movement WHERE id  BETWEEN 535743 AND 535757;
DELETE FROM game_event_creature WHERE guid BETWEEN 535743 AND 535757;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535743 AND 535757;
DELETE FROM creature_battleground WHERE guid BETWEEN 535743 AND 535757;
DELETE FROM creature_linking WHERE guid BETWEEN 535743 AND 535757;
DELETE FROM creature where guid BETWEEN 535743 AND 535757;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(535743,32498,571,1,1,8645.068,1640.2899,643.22107,5.8468,300,300,1,1),
(535744,32498,571,1,1,8642.96,1629.0955,644.58356,4.782,300,300,1,1),
(535745,32498,571,1,1,8635.428,1622.4288,645.5374,3.8048,300,300,1,1),
(535746,32498,571,1,1,8636.94,1616.8385,645.32324,3.4208,300,300,1,1),
(535747,32498,571,1,1,8644.208,1617.6285,645.0182,1.13446,300,300,1,1),
(535748,32498,571,1,1,8650.104,1630.7692,643.8556,5.131268,300,300,1,1),
(535749,32498,571,1,1,8637.3125,1612.042,645.4253,2.8068,300,300,1,1),
(535750,32498,571,1,1,8641.199,1622.7898,644.839,3.7367,300,300,1,1),
(535751,32498,571,1,1,8647.996,1636.1248,643.79614,2.4997,300,300,1,1),
(535752,32498,571,1,1,8648.462,1624.9984,643.8241,0.85359,300,300,1,1),
(535753,32498,571,1,1,8640.026,1634.9237,645.02496,5.09945,300,300,1,1),
(535754,32498,571,1,1,8640.156,1612.6316,645.82074,1.4388,300,300,1,1),
(535755,32498,571,1,1,8609.31,1590.37,642.953,0,300,300,5,1),
(535756,32498,571,1,1,8606.36,1589.32,643.647,0,300,300,5,1),
(535757,32498,571,1,1,8600.86,1583.38,642.105,0,300,300,5,1);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 38751);
DELETE FROM creature_template_addon WHERE entry IN (32498);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(32498,0,0,0,0,0,0,51583);
