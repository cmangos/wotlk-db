-- Plains of Nasam - Borean Tundra

-- Duplicates
-- c.25466 are summoned ...shouldnt be spawned on map
DELETE FROM creature WHERE guid IN (107200,107201,107202,107203,107204);
DELETE FROM creature_addon WHERE guid IN (107200,107201,107202,107203,107204);
DELETE FROM creature_movement WHERE id IN (107200,107201,107202,107203,107204);
DELETE FROM game_event_creature WHERE guid IN (107200,107201,107202,107203,107204);
DELETE FROM game_event_creature_data WHERE guid IN (107200,107201,107202,107203,107204);
DELETE FROM creature_battleground WHERE guid IN (107200,107201,107202,107203,107204);
DELETE FROM creature_linking WHERE guid IN (107200,107201,107202,107203,107204) 
OR master_guid IN (107200,107201,107202,107203,107204);

-- missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (91406,91407,91421,91422,91427,94971,94976,94980);
DELETE FROM creature_addon WHERE guid IN (91406,91407,91421,91422,91427,94971,94976,94980);
DELETE FROM creature_movement WHERE id IN (91406,91407,91421,91422,91427,94971,94976,94980);
DELETE FROM game_event_creature WHERE guid IN (91406,91407,91421,91422,91427,94971,94976,94980);
DELETE FROM game_event_creature_data WHERE guid IN (91406,91407,91421,91422,91427,94971,94976,94980);
DELETE FROM creature_battleground WHERE guid IN (91406,91407,91421,91422,91427,94971,94976,94980);
DELETE FROM creature_linking WHERE guid IN (91406,91407,91421,91422,91427,94971,94976,94980)
OR master_guid IN (91406,91407,91421,91422,91427,94971,94976,94980);
-- Undying Aggressor
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(91406,25333,571,1,1,0,0,2366.68,6433.57,42.4109,6.195919,120,0,0,7984,0,0,0),
(91407,25333,571,1,1,0,0,2482.9,6482.99,42.468,3.211406,120,0,0,7984,0,0,0),
(91421,25333,571,1,1,0,0,2450.97,6566.67,40.8309,4.677482,120,0,0,7984,0,0,0),
(91422,25333,571,1,1,0,0,2499.59,6450.23,42.4826,3.124139,120,0,0,7984,0,0,2),
(91427,25333,571,1,1,0,0,2499.81,6433.27,43.2077,3.124139,120,0,0,6986,0,0,0),
(94971,25333,571,1,1,0,0,2515.61,6433.25,43.1565,3.124139,120,0,0,6986,0,0,0),
(94976,25333,571,1,1,0,0,2517,6449.5,42.6249,3.124139,120,0,0,7984,0,0,2),
-- Stitched Warsong Horror
(94980,25332,571,1,1,0,0,2506.81,6424.52,43.3195,0.119039,120,0,0,9940,0,0,2);

-- Undying Aggressor
UPDATE creature SET spawntimesecs = 120 WHERE id = 25333; -- event req.
UPDATE creature SET position_x = 2400.450928, position_y = 6532.732910, position_z = 42.256714, orientation = 4.642576, spawndist = 0, MovementType = 0 WHERE guid = 118990;
UPDATE creature SET position_x = 2399.639893, position_y = 6566.682129, position_z = 43.582409, orientation = 4.660029, spawndist = 0, MovementType = 0 WHERE guid = 118974;
UPDATE creature SET position_x = 2400.228027, position_y = 6550.959961, position_z = 42.483288, orientation = 4.625123, spawndist = 0, MovementType = 0 WHERE guid = 118971;
UPDATE creature SET position_x = 2418.299072, position_y = 6516.808105, position_z = 42.439766, orientation = 4.625123, spawndist = 0, MovementType = 0 WHERE guid = 118973;
UPDATE creature SET position_x = 2417.385010, position_y = 6533.505859, position_z = 41.641342, orientation = 4.677482, spawndist = 0, MovementType = 0 WHERE guid = 118987;
UPDATE creature SET position_x = 2417.113037, position_y = 6551.335938, position_z = 41.254147, orientation = 4.677482, spawndist = 0, MovementType = 0 WHERE guid = 118969;
UPDATE creature SET position_x = 2415.537109, position_y = 6566.570801, position_z = 42.215054, orientation = 4.729842, spawndist = 0, MovementType = 0 WHERE guid = 119020;
UPDATE creature SET position_x = 2433.262939, position_y = 6533.034180, position_z = 41.574234, orientation = 4.642576, spawndist = 0, MovementType = 0 WHERE guid = 118978;
UPDATE creature SET position_x = 2433.459961, position_y = 6516.857910, position_z = 42.020340, orientation = 4.572762, spawndist = 0, MovementType = 0 WHERE guid = 119018;
UPDATE creature SET position_x = 2466.668945, position_y = 6483.326172, position_z = 42.261280, orientation = 3.281219, spawndist = 0, MovementType = 0 WHERE guid = 119019;
UPDATE creature SET position_x = 2466.677979, position_y = 6466.485840, position_z = 41.814735, orientation = 3.263766, spawndist = 0, MovementType = 0 WHERE guid = 118979;
UPDATE creature SET position_x = 2450.653076, position_y = 6516.868164, position_z = 41.717129, orientation = 4.520403, spawndist = 0, MovementType = 0 WHERE guid = 118982;
UPDATE creature SET position_x = 2449.611084, position_y = 6533.338867, position_z = 41.447380, orientation = 4.380776, spawndist = 0, MovementType = 0 WHERE guid = 118985;
UPDATE creature SET position_x = 2449.730957, position_y = 6550.724121, position_z = 41.092464, orientation = 4.694936, spawndist = 0, MovementType = 0 WHERE guid = 119010;
UPDATE creature SET position_x = 2433.471924, position_y = 6550.702148, position_z = 41.117977, orientation = 4.642576, spawndist = 0, MovementType = 0 WHERE guid = 118986;
UPDATE creature SET position_x = 2500.052979, position_y = 6466.456055, position_z = 41.732510, orientation = 3.176499, spawndist = 0, MovementType = 2 WHERE guid = 119011;
UPDATE creature SET position_x = 2466.767090, position_y = 6449.277832, position_z = 42.521801, orientation = 3.089233, spawndist = 0, MovementType = 0 WHERE guid = 118983;
UPDATE creature SET position_x = 2466.599121, position_y = 6433.738770, position_z = 42.404766, orientation = 3.124139, spawndist = 0, MovementType = 0 WHERE guid = 118984;
UPDATE creature SET position_x = 2482.613037, position_y = 6466.825195, position_z = 42.130356, orientation = 3.211406, spawndist = 0, MovementType = 0 WHERE guid = 119009;
UPDATE creature SET position_x = 2482.766113, position_y = 6450.670898, position_z = 42.372356, orientation = 3.141593, spawndist = 0, MovementType = 0 WHERE guid = 118981;
UPDATE creature SET position_x = 2481.858887, position_y = 6433.353027, position_z = 42.334278, orientation = 3.124139, spawndist = 0, MovementType = 0 WHERE guid = 119022;
--
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (119016,94976,91422,119011,119017,119015);
DELETE FROM creature_movement WHERE id  IN (119016,94976,91422,119011,119017,119015);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #119016
(119016,1,2516.16,6466.49,41.4812, 10000, 0,3.1765, 0, 0),
(119016,2,2579.05,6466.81,43.2388, 0, 0,0.0582411, 0, 0),
(119016,3,2662.25,6465.81,41.633, 3000, 0,6.21956, 0, 0),
(119016,4,2578.49,6466.17,43.2381, 0, 0,3.15258, 0, 0),
(119016,5,2516.16,6466.49,41.4812, 290000, 0,3.1765, 0, 0),
-- #94976
(94976,1,2517,6449.5,42.6249, 15000, 0,3.12414, 0, 0),
(94976,2,2558.35,6451,42.832, 0, 0,6.28269, 0, 0),
(94976,3,2648.67,6450.71,41.9917, 3000, 0,0.023066, 0, 0),
(94976,4,2569.63,6450.3,42.8417, 0, 0,3.15288, 0, 0),
(94976,5,2517,6449.5,42.6249, 285000, 0,3.12414, 0, 0),
-- #91422
(91422,1,2499.59,6450.23,42.4826, 15000, 0,3.12414, 0, 0),
(91422,2,2558.35,6451,42.832, 0, 0,6.28269, 0, 0),
(91422,3,2648.67,6450.71,41.9917, 3000, 0,0.023066, 0, 0),
(91422,4,2569.63,6450.3,42.8417, 0, 0,3.15288, 0, 0),
(91422,5,2499.59,6450.23,42.4826, 285000, 0,3.12414, 0, 0),
-- #119011 
(119011,1,2500.05,6466.46,41.7325, 15000, 0,3.1765, 0, 0),
(119011,2,2579.05,6466.81,43.2388, 0, 0,0.0582411, 0, 0),
(119011,3,2662.25,6465.81,41.633, 3000, 0,6.21956, 0, 0),
(119011,4,2578.49,6466.17,43.2381, 0, 0,3.15258, 0, 0),
(119011,5,2500.05,6466.46,41.7325, 285000, 0,3.1765, 0, 0),
-- #119017
(119017,1,2516.04,6485.04,43.5338, 15000, 0,3.21141, 0, 0),
(119017,2,2570.12,6483.35,43.9797, 0, 0,6.19628, 0, 0),
(119017,3,2651.4,6479.37,41.8331, 3000, 0,0.254741, 0, 0),
(119017,4,2569.68,6483.6,43.9694, 0, 0,3.06254, 0, 0),
(119017,5,2516.04,6485.04,43.5338, 285000, 0,3.21141, 0, 0),
-- #119015
(119015,1,2500.39,6483.98,42.8537, 15000, 0,3.21141, 0, 0),
(119015,2,2570.12,6483.35,43.9797, 0, 0,6.19628, 0, 0),
(119015,3,2651.4,6479.37,41.8331, 3000, 0,0.254741, 0, 0),
(119015,4,2569.68,6483.6,43.9694, 0, 0,3.06254, 0, 0),
(119015,5,2500.39,6483.98,42.8537, 285000, 0,3.21141, 0, 0);

-- Stitched Warsong Horror
UPDATE creature SET spawntimesecs = 120 WHERE id = 25332; -- event req. 
UPDATE creature SET position_x = 2400.539063, position_y = 6525.629883, position_z = 42.182487, orientation = 3.098430 WHERE guid = 118866;
UPDATE creature SET position_x = 2474.097656, position_y = 6498.314453, position_z = 41.458015, orientation = 1.536699 WHERE guid = 118862;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (118863,118864,118866,118865,118862);
DELETE FROM creature_movement WHERE id  IN (118863,118864,118866,118865,118862);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #118863
(118863,1,2323.13,6513.5,46.3097, 0, 0,5.3185, 0, 0),
(118863,2,2325.13,6506.73,45.0583, 0, 0,4.75302, 0, 0),
(118863,3,2324.59,6474.77,42.8923, 0, 0,4.71002, 0, 0),
(118863,4,2325.01,6456,44.878, 0, 0,4.73358, 0, 0),
(118863,5,2325.49,6434.62,47.4925, 0, 0,4.66682, 0, 0),
(118863,6,2324.05,6423.66,47.044, 0, 0,3.7974, 0, 0),
(118863,7,2312.47,6421.44,49.6243, 0, 0,2.7646, 0, 0),
(118863,8,2308.18,6424.66,50.6739, 0, 0,1.68334, 0, 0),
(118863,9,2307.34,6436.98,50.4211, 0, 0,1.53391, 0, 0),
(118863,10,2308.09,6468.16,43.995, 0, 0,1.55355, 0, 0),
(118863,11,2308.53,6507.78,45.0348, 0, 0,1.49464, 0, 0),
-- #118864
(118864,1,2340.34,6444.63,43.965, 0, 0,4.67081, 0, 0),
(118864,2,2340.39,6422.4,42.9008, 0, 0,5.87639, 0, 0),
(118864,3,2350.35,6419.84,41.9667, 0, 0,0.228941, 0, 0),
(118864,4,2356.87,6426.62,42.2109, 0, 0,1.20663, 0, 0),
(118864,5,2358.4,6453.01,41.977, 0, 0,1.54828, 0, 0),
(118864,6,2358.42,6474.47,40.4472, 0, 0,1.57184, 0, 0),
(118864,7,2358.37,6498.84,42.632, 0, 0,1.57969, 0, 0),
(118864,8,2358.09,6513.03,43.8585, 0, 0,2.29132, 0, 0),
(118864,9,2348.54,6515.35,44.5956, 0, 0,3.33433, 0, 0),
(118864,10,2341.18,6507.81,44.0327, 0, 0,4.29016, 0, 0),
(118864,11,2340.96,6478.94,41.5146, 0, 0,4.7182, 0, 0),
-- #118866
(118866,1,2371.18,6525.98,44.7151, 0, 0,3.9231, 0, 0),
(118866,2,2367.71,6518.28,44.047, 0, 0,4.79394, 0, 0),
(118866,3,2373.05,6510.08,42.4685, 0, 0,5.86521, 0, 0),
(118866,4,2404.37,6509.72,42.3232, 0, 0,6.27912, 0, 0),
(118866,5,2431.33,6509.92,42.2579, 0, 0,6.27912, 0, 0),
(118866,6,2452.17,6510.12,41.3756, 0, 0,0.218198, 0, 0),
(118866,7,2460.25,6514.38,41.4937, 0, 0,0.995742, 0, 0),
(118866,8,2459.33,6522.9,41.7128, 0, 0,2.12672, 0, 0),
(118866,9,2446.73,6525.23,41.7604, 0, 0,3.1281, 0, 0),
(118866,10,2425,6525.54,41.919, 0, 0,3.12024, 0, 0),
(118866,11,2400.94,6525.71,42.1718, 0, 0,3.11713, 0, 0),
-- #118865
(118865,1,2457.02,6559.08,40.95, 0, 0,6.03094, 0, 0),
(118865,2,2457.47,6546.48,41.0983, 0, 0,4.08474, 0, 0),
(118865,3,2451.3,6541.82,41.1613, 0, 0,3.16896, 0, 0),
(118865,4,2423.09,6541.96,41.2467, 0, 0,3.09121, 0, 0),
(118865,5,2392.86,6541.91,43.2876, 0, 0,3.15404, 0, 0),
(118865,6,2369.46,6542.54,44.114, 0, 0,2.4354, 0, 0),
(118865,7,2367.62,6549.65,42.5742, 0, 0,1.42459, 0, 0),
(118865,8,2372.33,6559.04,43.1976, 0, 0,0.295191, 0, 0),
(118865,9,2406.79,6559.4,42.2997, 0, 0,0.0203013, 0, 0),
(118865,10,2443.71,6558.97,41.0823, 0, 0,0.00459337, 0, 0),
-- #118862
(118862,1,2474.46,6504.99,41.3696, 0, 0,0.757583, 0, 0),
(118862,2,2481.4,6508.9,41.5183, 0, 0,0.142616, 0, 0),
(118862,3,2490.05,6506.64,41.8711, 0, 0,5.3341, 0, 0),
(118862,4,2491.71,6483.65,42.6666, 0, 0,4.68223, 0, 0),
(118862,5,2491.48,6456.52,42.2372, 0, 0,4.71757, 0, 0),
(118862,6,2490.68,6425.08,42.9617, 0, 0,3.62116, 0, 0),
(118862,7,2481.14,6424.1,42.5644, 0, 0,3.00148, 0, 0),
(118862,8,2473.85,6427.5,42.3313, 0, 0,1.57991, 0, 0),
(118862,9,2473.97,6457.87,42.1271, 0, 0,1.56028, 0, 0),
(118862,10,2474.15,6498.2,41.4629, 0, 0,1.55635, 0, 0),
-- #94980
(94980,1,2520.87,6425.45,42.8507, 0, 0,1.18718, 0, 0),
(94980,2,2523.12,6439.53,42.6865, 0, 0,1.51312, 0, 0),
(94980,3,2522.77,6473.86,42.2597, 0, 0,1.55632, 0, 0),
(94980,4,2524.44,6506.25,43.0872, 0, 0,2.25218, 0, 0),
(94980,5,2516.55,6510.34,43.6404, 0, 0,3.07721, 0, 0),
(94980,6,2508.81,6508.11,44.1681, 0, 0,4.02754, 0, 0),
(94980,7,2508.29,6486.85,43.5851, 0, 0,4.6912, 0, 0),
(94980,8,2507.68,6450.88,42.4832, 0, 0,4.69512, 0, 0),
(94980,9,2506.58,6428.72,43.5775, 0, 0,5.24098, 0, 0);

-- Scourge Plague Spreader
UPDATE creature SET position_x = 2472.812988, position_y = 6577.919922, position_z = 69.390450, orientation = 4.823977, spawndist = 0, MovementType = 2 WHERE guid = 97129;
UPDATE creature SET position_x = 2253.572021, position_y = 6508.299805, position_z = 74.566643, orientation = 2.518876, spawndist = 0, MovementType = 2 WHERE guid = 97130;
UPDATE creature SET position_x = 2545.441895, position_y = 6444.028809, position_z = 69.799377, orientation = 5.639998, spawndist = 0, MovementType = 2 WHERE guid = 97137;
DELETE FROM creature_movement WHERE id  IN (97129,97130,97137);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #97129
(97129,1,2453.88,6550.05,69.3905, 0, 0,100, 0, 0),
(97129,2,2481.13,6507.44,69.3905, 0, 0,100, 0, 0),
(97129,3,2504.4,6516.2,69.3905, 15000, 2534901,100, 0, 0),
(97129,4,2516.1,6552.25,69.3905, 0, 0,100, 0, 0),
(97129,5,2497.7,6576.23,69.3905, 0, 0,100, 0, 0),
(97129,6,2469,6575.17,69.3905, 0, 0,100, 0, 0),
(97129,7,2453.88,6550.05,69.3905, 0, 0,100, 0, 0),
(97129,8,2481.13,6507.44,69.3905, 0, 0,100, 0, 0),
(97129,9,2504.4,6516.2,69.3905, 0, 0,100, 0, 0),
(97129,10,2516.1,6552.25,69.3905, 0, 0,100, 0, 0),
(97129,11,2497.7,6576.23,69.3905, 15000, 2534901,100, 0, 0),
(97129,12,2469,6575.17,69.3905, 0, 0,100, 0, 0),
-- #97130
(97130,1,2226.819,6459.979,77.15816, 0, 0,100, 0, 0),
(97130,2,2240.729,6389.831,80.18594, 0, 0,100, 0, 0),
(97130,3,2281.264,6376.211,79.63039, 15000, 2534901,100, 0, 0),
(97130,4,2348.826,6374.928,78.07484, 0, 0,100, 0, 0),
(97130,5,2323.587,6405.851,77.8526, 0, 0,100, 0, 0),
(97130,6,2280.504,6417.013,79.35261, 0, 0,100, 0, 0),
(97130,7,2269.28,6466.983,79.35261, 0, 0,100, 0, 0),
(97130,8,2310.317,6539.752,77.51926, 0, 0,100, 0, 0),
(97130,9,2285.843,6558.607,75.26927, 0, 0,100, 0, 0),
(97130,10,2254.897,6510.446,74.51927, 0, 0,100, 0, 0),
(97130,11,2226.819,6459.979,77.15816, 0, 0,100, 0, 0),
(97130,12,2240.729,6389.831,80.18594, 0, 0,100, 0, 0),
(97130,13,2281.264,6376.211,79.63039, 0, 0,100, 0, 0),
(97130,14,2348.826,6374.928,78.07484, 0, 0,100, 0, 0),
(97130,15,2323.587,6405.851,77.8526, 0, 0,100, 0, 0),
(97130,16,2280.504,6417.013,79.35261, 0, 0,100, 0, 0),
(97130,17,2269.28,6466.983,79.35261, 0, 0,100, 0, 0),
(97130,18,2310.317,6539.752,77.51926, 15000, 2534901,100, 0, 0),
(97130,19,2285.843,6558.607,75.26927, 0, 0,100, 0, 0),
(97130,20,2254.897,6510.446,74.51927, 0, 0,100, 0, 0),
-- #97137
(97137,1,2546.6,6472.96,69.7994, 0, 0,100, 0, 0),
(97137,2,2581.82,6521.98,69.7994, 15000, 2534901,100, 0, 0),
(97137,3,2612.84,6538.87,69.7994, 0, 0,100, 0, 0),
(97137,4,2630.86,6470.62,69.7994, 0, 0,100, 0, 0),
(97137,5,2610.81,6435.42,69.7994, 0, 0,100, 0, 0),
(97137,6,2590.59,6406.94,69.7994, 0, 0,100, 0, 0),
(97137,7,2550.29,6433.42,69.7994, 0, 0,100, 0, 0),
(97137,8,2546.6,6472.96,69.7994, 0, 0,100, 0, 0),
(97137,9,2581.82,6521.98,69.7994, 0, 0,100, 0, 0),
(97137,10,2612.84,6538.87,69.7994, 0, 0,100, 0, 0),
(97137,11,2630.86,6470.62,69.7994, 0, 0,100, 0, 0),
(97137,12,2610.81,6435.42,69.7994, 15000, 2534901,100, 0, 0),
(97137,13,2590.59,6406.94,69.7994, 0, 0,100, 0, 0),
(97137,14,2550.29,6433.42,69.7994, 0, 0,100, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2534901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2534901,1,15,45612,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2534901,4,15,45609,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Mindless Aberration
UPDATE creature_template SET MovementType = 1 WHERE entry = 25469;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25469);
DELETE FROM creature WHERE id = 25469;

-- Injured Warsong Engineer 
UPDATE creature SET position_x = 2661.665771, position_y = 6445.310547, position_z = 41.657398, orientation = 3.451014 WHERE guid = 117822;

-- Undying Aggressor
DELETE FROM creature_template_addon WHERE entry = 25333;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(25333,0,0,0,0,93,0,NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25333);

-- Kel'Thuzad
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 107121;
DELETE FROM creature_movement WHERE id = 107121;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(107121,1,2418.64,6456.1,54.5562, 20000, 2546501,5.84679, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2546501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2546501,1,16,8818,2,0,0,0,0,0,0,0,0,0,0,0,''),
(2546501,1,15,50312,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- spell should have target
DELETE FROM spell_script_target WHERE entry = 50312;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(50312,1,25332),
(50312,1,25333);