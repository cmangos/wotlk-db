-- Blackriver Logging Camp - Grizzly Hills

-- Amberpine Scout 27117
-- missing added
DELETE FROM creature_addon WHERE guid IN (514967,514974,514986,515000,515480,515481,515482);
DELETE FROM creature_movement WHERE id IN (514967,514974,514986,515000,515480,515481,515482);
DELETE FROM game_event_creature WHERE guid IN (514967,514974,514986,515000,515480,515481,515482);
DELETE FROM game_event_creature_data WHERE guid IN (514967,514974,514986,515000,515480,515481,515482);
DELETE FROM creature_battleground WHERE guid IN (514967,514974,514986,515000,515480,515481,515482);
DELETE FROM creature_linking WHERE guid IN (514967,514974,514986,515000,515480,515481,515482)
 OR master_guid IN (514967,514974,514986,515000,515480,515481,515482);
DELETE FROM creature WHERE guid IN (514967,514974,514986,515000,515480,515481,515482);
-- missing added
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(514967,27117,571,1,1,0,0,3167.26,-2581.26,54.287,1.92727,300,300,0,0,11928,0,0,0),
(514974,27117,571,1,1,0,0,3350.33,-2635.46,52.0887,1.64076,300,300,0,0,11928,0,0,0),
(514986,27117,571,1,1,0,0,3379.2,-2629.01,52.1119,2.72835,300,300,0,0,11928,0,0,2), -- waypoints
(515000,27117,571,1,1,0,0,3359.84,-2635.93,51.9186,1.91154,300,300,0,0,11928,0,0,2), -- waypoints
(515480,27117,571,1,1,0,0,3371.37,-2582.6,52.471,3.63816,300,300,0,0,11928,0,0,2), -- waypoints
(515481,27117,571,1,1,0,0,3142.16,-2563.69,55.4882,5.97881,300,300,0,0,11928,0,0,0),
(515482,27117,571,1,1,0,0,3159.24,-2559.13,54.4132,1.61563,300,300,0,0,11928,0,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (514967,514974,514986,515000,515480,515481,515482,516392,516395,516396,516399,516401,516403,516404,516406,516408,516411,516412,516413,516402,516397,516410,516405,516398,516407,516400,516409);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(514967,0,0,1,0,333,0,NULL),
(514974,0,0,1,0,333,0,NULL),
(514986,0,0,1,0,333,0,NULL),
(515000,0,0,1,0,333,0,NULL),
(515480,0,0,1,0,333,0,NULL),
(515481,0,0,1,0,333,0,NULL),
(515482,0,0,1,0,333,0,NULL),
(516392,0,0,1,0,333,0,NULL),
(516395,0,0,1,0,333,0,NULL),
(516396,0,0,1,0,333,0,NULL),
(516399,0,0,1,0,333,0,NULL),
(516401,0,0,1,0,333,0,NULL),
(516403,0,0,1,0,333,0,NULL),
(516404,0,0,1,0,333,0,NULL),
(516406,0,0,1,0,333,0,NULL),
(516408,0,0,1,0,333,0,NULL),
(516411,0,0,1,0,333,0,NULL),
(516412,0,0,1,0,333,0,NULL),
(516413,0,0,1,0,333,0,NULL),
(516402,0,0,1,0,333,0,NULL),
(516397,0,0,1,0,333,0,NULL),
(516410,0,0,1,0,333,0,NULL),
(516405,0,0,1,0,333,0,NULL),
(516398,0,0,1,0,333,0,NULL),
(516407,0,0,1,0,333,0,NULL),
(516400,0,0,1,0,333,0,NULL),
(516409,0,0,1,0,333,0,NULL);
-- Updates
UPDATE creature SET spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE id = 27117;
UPDATE creature SET position_x = 3116.783, position_y = -2574.446, position_z = 55.90608, orientation = 0.06981317, MovementType = 0, spawndist = 0 WHERE guid = 516399;
UPDATE creature SET position_x = 3292.255, position_y = -2540.285, position_z = 55.57509, orientation = 5.532694, MovementType = 0, spawndist = 0 WHERE guid = 516396;
UPDATE creature SET position_x = 3311.548, position_y = -2547.216, position_z = 55.57893, orientation = 3.735005, MovementType = 0, spawndist = 0 WHERE guid = 516392;
UPDATE creature SET position_x = 3374.81, position_y = -2636.289, position_z = 52.27051, orientation = 2.408554, MovementType = 0, spawndist = 0 WHERE guid = 516406;
UPDATE creature SET position_x = 3319.076, position_y = -2557.842, position_z = 54.59764, orientation = 2.441228, MovementType = 0, spawndist = 0 WHERE guid = 516408;
UPDATE creature SET position_x = 3322.991, position_y = -2635.773, position_z = 51.81268, orientation = 0.122173, MovementType = 0, spawndist = 0 WHERE guid = 516413;
UPDATE creature SET position_x = 3383.036, position_y = -2601.688, position_z = 52.2272, orientation = 3.368485, MovementType = 0, spawndist = 0 WHERE guid = 516411;
UPDATE creature SET position_x = 3353.441, position_y = -2600.492, position_z = 52.90913, orientation = 3.420845, MovementType = 0, spawndist = 0 WHERE guid = 516401;
UPDATE creature SET position_x = 3348.126, position_y = -2570.404, position_z = 52.65325, orientation = 2.792527, MovementType = 0, spawndist = 0 WHERE guid = 516403;
UPDATE creature SET position_x = 3368.217, position_y = -2638.539, position_z = 52.32513, orientation = 1.850049, MovementType = 0, spawndist = 0 WHERE guid = 516404;
UPDATE creature SET position_x = 3290.488, position_y = -2560.055, position_z = 57.0167, orientation = 4.29351, MovementType = 0, spawndist = 0 WHERE guid = 516395;
UPDATE creature SET position_x = 3269.552, position_y = -2534.573, position_z = 54.0676, orientation = 4.974188, MovementType = 0, spawndist = 0 WHERE guid = 516412;
UPDATE creature SET position_x = 3122.413574, position_y = -2554.171387, position_z = 54.754536, orientation = 4.745093, MovementType = 0, spawndist = 0 WHERE guid = 516402;
UPDATE creature SET position_x = 3135.237305, position_y = -2579.101074, position_z = 56.615555, orientation = 0.488235, MovementType = 0, spawndist = 0 WHERE guid = 516397;
UPDATE creature SET position_x = 3315.890625, position_y = -2596.498291, position_z = 52.671902, orientation = 2.654925, MovementType = 0, spawndist = 0 WHERE guid = 516410;
UPDATE creature SET position_x = 3309.082520, position_y = -2606.179688, position_z = 52.645294, orientation = 2.211174, MovementType = 0, spawndist = 0 WHERE guid = 516405;
UPDATE creature SET position_x = 3311.054443, position_y = -2613.382080, position_z = 52.988693, orientation = 2.220912, MovementType = 0, spawndist = 0 WHERE guid = 516398;
UPDATE creature SET position_x = 3317.586914, position_y = -2605.718750, position_z = 53.036373, orientation = 2.546852, MovementType = 0, spawndist = 0 WHERE guid = 516407;
UPDATE creature SET position_x = 3321.932129, position_y = -2595.537842, position_z = 52.666882, orientation = 3.241930, MovementType = 0, spawndist = 0 WHERE guid = 516400;
UPDATE creature SET position_x = 3329.655273, position_y = -2621.726807, position_z = 53.218063, orientation = 2.417257, MovementType = 0, spawndist = 0 WHERE guid = 516409;
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (514986,515000,515480);
DELETE FROM creature_movement WHERE id IN (514986,515000,515480);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 514986
(514986,1,3379.2,-2629.01,52.1119,2.72835,10000,5),
(514986,2,3354.75,-2619.17,52.4593,100,0,0),
(514986,3,3336.45,-2602.17,53.0415,100,0,0),
(514986,4,3317.42,-2592.26,52.5361,100,0,0),
(514986,5,3304.99,-2586.22,52.744,100,0,0),
(514986,6,3284.19,-2576.99,53.8591,100,0,0),
(514986,7,3268.65,-2569.3,53.1857,100,0,0),
(514986,8,3252.76,-2554.09,53.7184,100,5000,3),
-- 515000
(515000,1,3359.84,-2635.93,51.9186,1.91154,500,5),
(515000,2,3350.82,-2624.92,52.3896,100,0,0),
(515000,3,3341.01,-2617.04,53.2746,100,0,0),
(515000,4,3327.35,-2611.54,53.0455,100,0,0),
(515000,5,3315,-2609.5,52.8415,100,0,0),
(515000,6,3303.93,-2604.03,52.6656,100,5000,3),
-- 515480
(515480,1,3371.37,-2582.6,52.471,3.63816,2000,5),
(515480,2,3361.71,-2589.49,52.6809,100,0,0),
(515480,3,3346.47,-2592.19,52.5672,100,0,0),
(515480,4,3331.52,-2597.31,52.8414,100,0,0),
(515480,5,3316.79,-2597.13,52.7394,100,0,0),
(515480,6,3293.65,-2588.87,52.8776,100,0,0),
(515480,7,3275.48,-2591.61,53.1959,3.2219,5000,3);

-- Conquest Hold Raider 27118
-- missing added
DELETE FROM creature_addon WHERE guid IN (518237,518312,518313,518314);
DELETE FROM creature_movement WHERE id IN (518237,518312,518313,518314);
DELETE FROM game_event_creature WHERE guid IN (518237,518312,518313,518314);
DELETE FROM game_event_creature_data WHERE guid IN (518237,518312,518313,518314);
DELETE FROM creature_battleground WHERE guid IN (518237,518312,518313,518314);
DELETE FROM creature_linking WHERE guid IN (518237,518312,518313,518314)
 OR master_guid IN (518237,518312,518313,518314);
DELETE FROM creature WHERE guid IN (518237,518312,518313,518314);
-- missing added
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(518237,27118,571,1,1,0,0,3158.875,-2553.502,54.23032,3.420845,300,300,0,0,0,0,0,0),
(518312,27118,571,1,1,0,0,3229.778,-2560.103,52.29718,5.585053,300,300,0,0,0,0,0,0),
(518313,27118,571,1,1,0,0,3256.86,-2554.46,53.9446,4.69782,300,300,0,0,0,0,0,0),
(518314,27118,571,1,1,0,0,3262.32,-2555.76,54.2364,5.37146,300,300,0,0,0,0,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (516426,518237,518312,518313,518314,516428,516430,516432,516433,516431,516429,516434,516415,516425,516436,516414,516421,516423,516416,516422,516427,516419,516435,516420,516424,516417,516418);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(516426,0,0,1,0,333,0,NULL),
(518237,0,0,1,0,333,0,NULL),
(518312,0,0,1,0,333,0,NULL),
(518313,0,0,1,0,333,0,NULL),
(518314,0,0,1,0,333,0,NULL),
(516428,0,0,1,0,333,0,NULL),
(516430,0,0,1,0,333,0,NULL),
(516432,0,0,1,0,333,0,NULL),
(516433,0,0,1,0,333,0,NULL),
(516431,0,0,1,0,333,0,NULL),
(516429,0,0,1,0,333,0,NULL),
(516434,0,0,1,0,333,0,NULL),
(516415,0,0,1,0,333,0,NULL),
(516425,0,0,1,0,333,0,NULL),
(516436,0,0,1,0,333,0,NULL),
(516414,0,0,1,0,333,0,NULL),
(516421,0,0,1,0,333,0,NULL),
(516423,0,0,1,0,333,0,NULL),
(516416,0,0,1,0,333,0,NULL),
(516422,0,0,1,0,333,0,NULL),
(516427,0,0,1,0,333,0,NULL),
(516419,0,0,1,0,333,0,NULL),
(516420,0,0,1,0,333,0,NULL),
(516424,0,0,1,0,333,0,NULL),
(516435,0,0,1,0,333,0,NULL),
(516417,0,0,1,0,333,0,NULL),
(516418,0,0,1,0,333,0,NULL);
-- Updates
UPDATE creature SET spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE id = 27118;
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid IN (516420,516415);
UPDATE creature SET position_x = 3147.902, position_y = -2565.548, position_z = 55.43987, orientation = 2.792527, MovementType = 0, spawndist = 0 WHERE guid = 516433;
UPDATE creature SET position_x = 3140.571, position_y = -2575.892, position_z = 56.46122, orientation = 3.211406, MovementType = 0, spawndist = 0 WHERE guid = 516432;
UPDATE creature SET position_x = 3347.694336, position_y = -2602.333496, position_z = 52.666847, orientation = 0.280925, MovementType = 0, spawndist = 0 WHERE guid = 516426;
UPDATE creature SET position_x = 3123.344971, position_y = -2575.191162, position_z = 56.468761, orientation = 2.970099, MovementType = 0, spawndist = 0 WHERE guid = 516431;
UPDATE creature SET position_x = 3122.688477, position_y = -2560.453369, position_z = 55.381821, orientation = 1.505330, MovementType = 0, spawndist = 0 WHERE guid = 516429;
UPDATE creature SET position_x = 3377.091797, position_y = -2601.445557, position_z = 52.483322, orientation = 6.248030, MovementType = 0, spawndist = 0 WHERE guid = 516428;
UPDATE creature SET position_x = 3165.780029, position_y = -2577.311768, position_z = 54.384007, orientation = 5.042781, MovementType = 0, spawndist = 0 WHERE guid = 516430;
UPDATE creature SET position_x = 3286.308594, position_y = -2563.262207, position_z = 56.928493, orientation = 0.649577, MovementType = 0, spawndist = 0 WHERE guid = 516434;
UPDATE creature SET position_x = 3308.573730, position_y = -2540.422607, position_z = 55.492958, orientation = 5.016374, MovementType = 0, spawndist = 0 WHERE guid = 516425;
UPDATE creature SET position_x = 3325.500000, position_y = -2556.037109, position_z = 54.189117, orientation = 3.374891, MovementType = 0, spawndist = 0 WHERE guid = 516436;
UPDATE creature SET position_x = 3343.356934, position_y = -2574.127197, position_z = 52.320927, orientation = 0.653480, MovementType = 0, spawndist = 0 WHERE guid = 516414;
UPDATE creature SET position_x = 3261.473633, position_y = -2580.032959, position_z = 52.843594, orientation = 0.378914, MovementType = 0, spawndist = 0 WHERE guid = 516423;
UPDATE creature SET position_x = 3326.096191, position_y = -2616.211426, position_z = 52.824043, orientation = 5.719858, MovementType = 0, spawndist = 0 WHERE guid = 516421;
UPDATE creature SET position_x = 3309.557129, position_y = -2594.261963, position_z = 52.535042, orientation = 5.736088, MovementType = 0, spawndist = 0 WHERE guid = 516416;
UPDATE creature SET position_x = 3300.650635, position_y = -2603.913818, position_z = 52.719833, orientation = 5.888448, MovementType = 0, spawndist = 0 WHERE guid = 516422;
UPDATE creature SET position_x = 3294.254883, position_y = -2603.988525, position_z = 52.680248, orientation = 6.022743, MovementType = 0, spawndist = 0 WHERE guid = 516427;
UPDATE creature SET position_x = 3299.036377, position_y = -2597.041992, position_z = 52.587067, orientation = 5.745496, MovementType = 0, spawndist = 0 WHERE guid = 516419;
UPDATE creature SET position_x = 3308.187012, position_y = -2587.791260, position_z = 52.665867, orientation = 5.381571, MovementType = 0, spawndist = 0 WHERE guid = 516435;
UPDATE creature SET position_x = 3266.273926, position_y = -2536.572754, position_z = 53.695496, orientation = 5.182608, MovementType = 2, spawndist = 0 WHERE guid = 516424; -- waypoints
UPDATE creature SET position_x = 3242.623535, position_y = -2573.206055, position_z = 52.424629, orientation = 0.069651, MovementType = 2, spawndist = 0 WHERE guid = 516417; -- waypoints
UPDATE creature SET position_x = 3257.468262, position_y = -2596.364746, position_z = 51.865253, orientation = 0.306058, MovementType = 2, spawndist = 0 WHERE guid = 516418; -- waypoints
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (516417,516418,516424);
DELETE FROM creature_movement WHERE id IN (516417,516418,516424);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 516417
(516417,1,3242.623535,-2573.206055,52.424629,0.069651,20000,5),
(516417,2,3253.5,-2570.5,52.8562,100,0,0),
(516417,3,3263.9,-2572.51,52.6891,100,0,0),
(516417,4,3276.26,-2578.89,52.9414,100,0,0),
(516417,5,3292.6,-2586.26,53.0291,100,0,0),
(516417,6,3305.29,-2592.15,52.573,100,0,0),
(516417,7,3320.27,-2597.45,52.8113,100,0,0),
(516417,8,3333.48,-2603.33,53.1698,100,0,0),
(516417,9,3344.62,-2609.96,52.6999,100,0,0),
(516417,10,3358.91,-2624.3,52.1942,100,0,0),
(516417,11,3369.69,-2635.3,52.3373,100,5000,3),
-- 516418
(516418,1,3257.468262,-2596.364746,51.865253,0.306058,2000,5),
(516418,2,3270.94,-2593.85,53.0227,100,0,0),
(516418,3,3283.26,-2596.58,53.0475,100,0,0),
(516418,4,3300.26,-2605.94,52.8321,100,0,0),
(516418,5,3313.89,-2610.74,52.8078,100,0,0),
(516418,6,3332.6,-2613.36,53.2075,100,0,0),
(516418,7,3343.56,-2617.64,53.0786,100,0,0),
(516418,8,3349.02,-2631.91,52.2647,5.03023,5000,3),
-- 516424
(516424,1,3266.273926,-2536.572754,53.695496,5.182608,1000,5),
(516424,2,3271.44,-2553.71,54.6952,100,0,0),
(516424,3,3277.42,-2565.92,54.9292,100,0,0),
(516424,4,3288.74,-2575.52,54.5476,100,0,0),
(516424,5,3298.19,-2575.01,54.4351,100,0,0),
(516424,6,3311.87,-2572.05,53.1352,100,0,0),
(516424,7,3330.21,-2576.97,52.3815,100,0,0),
(516424,8,3343.83,-2582.58,52.6744,100,0,0),
(516424,9,3358.93,-2590.41,52.726,100,0,0),
(516424,10,3365.68,-2585.18,52.5784,100,5000,3);
