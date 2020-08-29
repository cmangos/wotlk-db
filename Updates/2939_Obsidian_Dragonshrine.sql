-- Obsidian Dragonshire - Dragonblight

-- Duplicates
DELETE FROM creature_addon WHERE guid IN (517895,517841,517888,517831,517896,517886,515340,517913,517840,517832,532768);
DELETE FROM creature_movement WHERE id IN (517895,517841,517888,517831,517896,517886,515340,517913,517840,517832,532768);
DELETE FROM game_event_creature WHERE guid IN (517895,517841,517888,517831,517896,517886,515340,517913,517840,517832,532768);
DELETE FROM game_event_creature_data WHERE guid IN (517895,517841,517888,517831,517896,517886,515340,517913,517840,517832,532768);
DELETE FROM creature_battleground WHERE guid IN (517895,517841,517888,517831,517896,517886,515340,517913,517840,517832,532768);
DELETE FROM creature_linking WHERE guid IN (517895,517841,517888,517831,517896,517886,515340,517913,517840,517832,532768)
 OR master_guid IN (517895,517841,517888,517831,517896,517886,515340,517913,517840,517832,532768);
DELETE FROM creature WHERE guid IN (517895,517841,517888,517831,517896,517886,515340,517913,517840,517832,532768);

-- Smoldering Skeleton 27360
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27360);
DELETE FROM creature_template_addon WHERE entry = 27360;
INSERT INTO creature_template_addon VALUES
(27360,0,0,1,0,0,0,'48454 51437');
UPDATE creature SET position_x = 4414.49, position_y = 1655.07, position_z = 128.423 WHERE guid = 517891;
UPDATE creature SET position_x = 4376.46, position_y = 1286.81, position_z = 155.555 WHERE guid = 517889;
UPDATE creature SET position_x = 4400.281738, position_y = 1492.963013, position_z = 126.939728 WHERE guid = 517887;
UPDATE creature SET position_x = 4370.901367, position_y = 1480.521729, position_z = 126.632332 WHERE guid = 517897;
UPDATE creature SET position_x = 4351.467773, position_y = 1512.489258, position_z = 124.906540 WHERE guid = 517883;
UPDATE creature SET position_x = 4423.940918, position_y = 1414.647339, position_z = 135.740479 WHERE guid = 517898;
UPDATE creature SET position_x = 4442.191406, position_y = 1437.344971, position_z = 138.184799 WHERE guid = 517899;
UPDATE creature SET position_x = 4434.597168, position_y = 1472.144287, position_z = 137.748154 WHERE guid = 517892;
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE id = 27360;

-- Smoldering Construct 27362
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27362);
DELETE FROM creature_template_addon WHERE entry = 27362;
INSERT INTO creature_template_addon VALUES
(27362,0,0,1,0,0,0,48460);
-- missing added -- removed guids reused
DELETE FROM creature_addon WHERE guid IN (517895,517841,517888,517831);
DELETE FROM creature_movement WHERE id IN (517895,517841,517888,517831);
DELETE FROM game_event_creature WHERE guid IN (517895,517841,517888,517831);
DELETE FROM game_event_creature_data WHERE guid IN (517895,517841,517888,517831);
DELETE FROM creature_battleground WHERE guid IN (517895,517841,517888,517831);
DELETE FROM creature_linking WHERE guid IN (517895,517841,517888,517831)
 OR master_guid IN (517895,517841,517888,517831);
DELETE FROM creature WHERE guid IN (517895,517841,517888,517831);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(517895,27362,571,1,1,0,0,4567.375,1724.495,168.1724,0.6806784,600,600,0,0,9940,0,0,0),
(517841,27362,571,1,1,0,0,4608.474,1721.618,170.9504,3.124139,600,600,0,0,9940,0,0,0),
(517888,27362,571,1,1,0,0,4573.852,1757.729,168.0696,3.909538,600,600,0,0,9940,0,0,0),
(517831,27362,571,1,1,0,0,4629.766,1740.667,182.7684,2.617994,600,600,0,0,9940,0,0,0);

-- Smoldering Geist 27363
-- missing added -- removed guids reused
DELETE FROM creature_addon WHERE guid IN (517896,517886,515340);
DELETE FROM creature_movement WHERE id IN (517896,517886,515340);
DELETE FROM game_event_creature WHERE guid IN (517896,517886,515340);
DELETE FROM game_event_creature_data WHERE guid IN (517896,517886,515340);
DELETE FROM creature_battleground WHERE guid IN (517896,517886,515340);
DELETE FROM creature_linking WHERE guid IN (517896,517886,515340)
 OR master_guid IN (517896,517886,515340);
DELETE FROM creature WHERE guid IN (517896,517886,515340);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(517896,27363,571,1,1,0,0,4564.48,1681.43,169.907,0.64812,600,600,10,0,9940,0,0,1),
(517886,27363,571,1,1,0,0,4520.26,1690.86,160.552,2.98467,600,600,10,0,9940,0,0,1),
(515340,27363,571,1,1,0,0,4586.73,1749.31,168.663,5.19162,600,600,10,0,9940,0,0,1);
UPDATE creature SET position_x = 4432, position_y = 1701.97, position_z = 139.293 WHERE guid = 517915;
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (517920,517927);
DELETE FROM creature_movement WHERE id IN (517920,517927);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 517920
(517920,1,4524.98,1625.64,131.361,100,0,0),
(517920,2,4510.59,1640.22,130.865,100,0,0),
(517920,3,4517.42,1658.76,132.501,100,0,0),
(517920,4,4539.15,1647.58,134.547,100,0,0),
(517920,5,4537.45,1660.98,135.14,100,0,0),
(517920,6,4546.06,1671.28,136.779,100,3000,0),
(517920,7,4545.52,1662.66,135.597,100,0,0),
(517920,8,4530.73,1656.59,134.43,100,0,0),
(517920,9,4517.84,1658.89,132.523,100,0,0),
(517920,10,4507.49,1637.31,130.841,100,0,0),
(517920,11,4518.13,1625.77,130.665,100,0,0),
-- 517927
(517927,1,4419.944336,1788.538818,164.265839,100,60000,2736301),
(517927,2,4418.45,1776.6,163.865,100,0,0),
(517927,3,4415.12,1764.9,161.568,100,0,0),
(517927,4,4412.86,1753.28,159.624,100,0,0),
(517927,5,4409.28,1733.95,155.976,100,0,0),
(517927,6,4401.859,1719.95,151.9377,3.979351,10000,2736302),
(517927,7,4409.28,1733.95,155.976,100,0,0),
(517927,8,4412.86,1753.28,159.624,100,0,0),
(517927,9,4415.12,1764.9,161.568,100,0,0),
(517927,10,4418.45,1776.6,163.865,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2736301,2736302);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2736301,2000,20,1,7,58000,0,0,0x08,0,0,0,0,0,0,0,0,''),
(2736302,2000,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2736302,4000,1,11,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Bone Target Bunny 27402
UPDATE creature_template SET InhabitType = 4 WHERE entry = 27402;

-- Burning Depths Necrolyte 27356
UPDATE creature_model_info SET modelid_other_gender = 24583 WHERE modelid = 24581;
-- missing added -- removed guids reused
DELETE FROM creature_addon WHERE guid = 517913;
DELETE FROM creature_movement WHERE id = 517913;
DELETE FROM game_event_creature WHERE guid = 517913;
DELETE FROM game_event_creature_data WHERE guid = 517913;
DELETE FROM creature_battleground WHERE guid = 517913;
DELETE FROM creature_linking WHERE guid = 517913
 OR master_guid = 517913;
DELETE FROM creature WHERE guid = 517913;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(517913,27356,571,1,1,0,0,4499.64,1691.81,156.375,3.12099,480,480,0,0,9940,3387,0,0);
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (517836,517838,517843,517845,517913);
DELETE FROM creature_movement WHERE id IN (517836,517838,517843,517845,517913);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 517836
(517836,1,4390.39,1411.22,138.793,100,0,0),
(517836,2,4389.98,1414.57,136.479,100,0,0),
(517836,3,4389.55,1418.06,137.499,100,0,0),
(517836,4,4388.33,1425.08,135.922,100,0,0),
(517836,5,4389.52,1418.87,137.603,100,0,0),
(517836,6,4390.08,1415.05,136.318,100,0,0),
(517836,7,4390.64,1411.23,138.767,100,0,0),
(517836,8,4386.35,1388.88,141.751,100,0,0),
(517836,9,4388.26,1384.01,138.686,100,0,0),
(517836,10,4390.1,1376.55,144.008,100,0,0),
(517836,11,4388.93,1358.96,148.499,100,0,0),
(517836,12,4388.45,1353.72,146.183,100,0,0),
(517836,13,4388.04,1349.19,148.7,100,0,0),
(517836,14,4388.73,1329.48,147.026,100,0,0),
(517836,15,4388.79,1312.77,148.849,100,0,0),
(517836,16,4388.61,1327.83,147.1,100,0,0),
(517836,17,4388.41,1348.02,148.703,100,0,0),
(517836,18,4388.69,1353.28,146.263,100,0,0),
(517836,19,4388.81,1358.52,148.573,100,0,0),
(517836,20,4390.27,1376.12,144.132,100,3000,2735601), -- script
(517836,21,4388.7,1382.83,139.213,100,0,0),
(517836,22,4386.49,1388.93,141.719,100,0,0),
-- 517838
(517838,1,4417.57,1630.29,127.187,100,0,0),
(517838,2,4413.13,1614.8,128.235,100,0,0),
(517838,3,4406.3,1606.24,128.067,100,0,0),
(517838,4,4412.65,1613.58,128.418,100,0,0),
(517838,5,4417.14,1629.66,127.149,100,0,0),
(517838,6,4425.24,1633.04,126.407,100,0,0),
(517838,7,4441.47,1630.33,128.154,100,0,0),
(517838,8,4425.41,1633.44,126.449,100,0,0),
-- 517843
(517843,1,4379.84,1344.66,148.257,100,0,0),
(517843,2,4377.73,1354.11,148.683,100,0,0),
(517843,3,4376.78,1358.1,146.516,100,0,0),
(517843,4,4376.13,1362.85,147.951,100,0,0),
(517843,5,4375.33,1383.4,141.858,100,0,0),
(517843,6,4375.19,1388.06,138.862,100,0,0),
(517843,7,4375.21,1392.5,140.386,100,0,0),
(517843,8,4374.15,1406.36,137.769,100,0,0),
(517843,9,4373.76,1419.21,136.994,100,0,0),
(517843,10,4374.16,1407.3,137.651,100,0,0),
(517843,11,4375.33,1392.5,140.42,100,0,0),
(517843,12,4375.55,1388.42,138.949,100,0,0),
(517843,13,4375.78,1383.98,141.755,100,0,0),
(517843,14,4376.17,1362.14,147.897,100,0,0),
(517843,15,4376.41,1358.99,146.619,100,0,0),
(517843,16,4376.92,1354.34,148.656,100,0,0),
(517843,17,4379.22,1344.69,148.208,100,0,0),
(517843,18,4382.24,1333.4,147.389,100,0,0),
(517843,19,4380.48,1319.4,147.943,100,0,0),
(517843,20,4378.22,1306.75,150.335,100,0,0),
(517843,21,4380,1318.27,148.115,100,0,0),
(517843,22,4382.08,1332.86,147.35,100,0,0),
-- 517845
(517845,1,4389.04,1563.47,133.553,100,0,0),
(517845,2,4392.24,1578.07,130.091,100,0,0),
(517845,3,4393.92,1592.2,127.913,100,0,0),
(517845,4,4390.08,1601.86,126.976,100,0,0),
(517845,5,4393.68,1592.99,127.876,100,0,0),
(517845,6,4392.28,1577.88,130.113,100,0,0),
(517845,7,4389.17,1563.51,133.504,100,0,0),
(517845,8,4387.35,1545.27,138.672,100,3000,2735601), -- script
(517845,9,4385.23,1534.62,134.839,100,0,0),
(517845,10,4383.6,1523.64,135.397,100,0,0),
(517845,11,4381.28,1508.85,130.386,100,0,0),
(517845,12,4383.34,1522.73,135.142,100,0,0),
(517845,13,4385.09,1532.51,134.785,100,0,0),
(517845,14,4387.46,1546.93,138.83,100,0,0),
(517845,16,4389.06,1557.31,135.204,100,0,0),
-- 517913
(517913,1,4488.5,1691.73,154.559,100,0,0),
(517913,2,4475.77,1691.29,149.817,100,0,0),
(517913,3,4462.1,1694.93,145.744,100,0,0),
(517913,4,4447.49,1699.1,144.147,100,3000,2735601), -- script
(517913,5,4460.71,1695.17,145.501,100,0,0),
(517913,6,4475.06,1691.03,149.583,100,0,0),
(517913,7,4487.99,1691.5,154.407,100,0,0),
(517913,8,4499.2,1691.79,156.328,100,0,0),
(517913,9,4510.51,1692.19,157.99,100,0,0),
(517913,10,4521.85,1690.78,161.094,100,0,0),
(517913,11,4532.07,1687.49,165.076,100,0,0),
(517913,12,4543.22,1681.36,167.88,100,0,0),
(517913,13,4532.66,1687.14,165.321,100,0,0),
(517913,14,4521.4,1691.03,160.951,100,0,0),
(517913,15,4510.54,1692.49,158.014,100,0,0),
(517913,16,4499.12,1691.98,156.319,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2735601);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2735601,1000,15,48616,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Part of Burning Depths Necrolyte 27356 EAI:
DELETE FROM dbscripts_on_relay WHERE id IN (20327);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20327,500,31,27402,48,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Burning Depths Necrolyte 27356 EAI: search for 27402'),
(20327,1000,15,48627,0,0,27402,50,1,0,0,0,0,0,0,0,0,'Part of Burning Depths Necrolyte 27356 EAI: cast: Draw Power on Buddy');

-- Magmawyrm 26475
DELETE FROM creature_template_addon WHERE entry = 26475;
UPDATE creature_template SET UnitFlags = 0, MovementType = 2 WHERE entry = 26475;
UPDATE creature SET spawntimesecsmin = 180, spawntimesecsmax = 180 WHERE id = 26475;
-- Individual Addon
DELETE FROM creature_addon WHERE guid = 514336;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(514336,0,0,0,0,0,0,29266);
-- Waypoints -- only for event
DELETE FROM creature_movement_template WHERE entry = 26475;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26475,1,4364.633,1849.83,158.3973,100,2000,2647501),
(26475,2,4364.633,1849.83,168.3973,100,0,0),
(26475,3,4366.24,1878.4,170,6.195919,7000,2647502),
(26475,4,4332.347,1835.951,182.4538,100,0,0),
(26475,5,4303.902,1824.03,179.8987,100,0,0),
(26475,6,4253.23,1816.321,178.4263,100,0,0),
(26475,7,4224.183,1825.746,178.4263,100,3000,1);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2647501,2647502);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2647501,1000,39,1,0,0,0,0,0x04 | 0x08,0,0,0,0,0,0,0,0,'FLY ON'),
(2647502,500,31,27355,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27355'),
(2647502,1000,0,0,0,0,27355,100,7,2000020455,0,0,0,0,0,0,0,'Buddy - Say');
DELETE FROM dbscript_string WHERE entry = 2000020455;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020455,'You are a black wyrm no longer.  Go... go and serve the Scourge.',0,1,0,0,NULL);

-- Rothin the Decaying 27355
UPDATE creature_template SET InhabitType = 3 WHERE entry = 27355;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27355);
DELETE FROM creature_template_addon WHERE entry = 27355;
INSERT INTO creature_template_addon VALUES
(27355,0,0,1,0,0,0,48695);
-- Part of Rothin the Decaying 27355 EAI:
DELETE FROM dbscripts_on_relay WHERE id IN (20328);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20328,500,31,26475,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Burning Depths Necrolyte 27356 EAI: search for 26475'),
(20328,1000,20,2,0,0,26475,100,7,0,0,0,0,0,0,0,0,'Part of Burning Depths Necrolyte 27356 EAI: Buddy set waypoints');

-- Burning Depths Necromancer 27358
UPDATE creature_model_info SET modelid_other_gender = 24584 WHERE modelid = 24582;
-- Updates
UPDATE creature SET position_x = 4523.158203, position_y = 1832.339966, position_z = 164.018906, spawndist = 7, MovementType = 1 WHERE guid = 517857;
UPDATE creature SET position_x = 4433.384277, position_y = 1789.669189, position_z = 164.222809, spawndist = 7, MovementType = 1 WHERE guid = 517861;
UPDATE creature SET position_x = 4589.27, position_y = 1709.63, position_z = 171.344, spawndist = 7, MovementType = 1 WHERE guid = 517855;
UPDATE creature SET position_x = 4575.15, position_y = 1736.79, position_z = 167.869, spawndist = 7, MovementType = 1 WHERE guid = 517859;
UPDATE creature SET position_x = 4623.31, position_y = 1751.64, position_z = 182.077, spawndist = 7, MovementType = 1 WHERE guid = 517858;

-- Cinder Cloud 32522
-- only one should be present in same time
-- POOLS
DELETE FROM pool_template WHERE entry = 30156;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(30156, 1, 'Dragonblight - Cinder Cloud');
DELETE FROM pool_creature WHERE pool_entry = 30156;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(532769, 30156, 0, 'Dragonblight - Cinder Cloud #1'),
(532770, 30156, 0, 'Dragonblight - Cinder Cloud #2'),
(532775, 30156, 0, 'Dragonblight - Cinder Cloud #4'),
(532776, 30156, 0, 'Dragonblight - Cinder Cloud #5');

-- Update description for pool 30155
UPDATE pool_template SET description = 'Dragonblight - Ruby Keeper' WHERE entry = 30155;

-- Destructive Ward 27430
UPDATE creature_template SET MinLevel=73, MaxLevel=73, RegenerateStats = 0, UnitFlags = 264 WHERE Entry = 27430;
