-- Shadow Vault - Icecrown - Phase 1

-- access for both both factions
DELETE FROM spell_area WHERE spell = 30181;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(30181,4477,0,0,0,20755,0,0,2,1);
DELETE FROM conditions WHERE condition_entry BETWEEN 20753 AND 20755;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20753,8,12896,0,0,0,1),
(20754,8,12897,0,0,0,1),
(20755,-2,20754,20753,0,0,0);

-- Vile 30216
UPDATE creature SET position_x = 8415.534, position_y = 2712.3645, position_z = 655.1002, movementtype = 4, spawndist = 0 WHERE id = 30216;
UPDATE creature_template SET movementtype = 4 WHERE Entry = 30216;
DELETE FROM creature_movement_template WHERE Entry = 30216;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30216,1,8415.534,2712.3645,655.1002,100,1000,0),
(30216,2,8393.653,2726.3157,655.09436,100,0,0),
(30216,3,8376.663,2737.2456,655.09485,100,0,0),
(30216,4,8357.7705,2748.123,655.0945,100,0,0),
(30216,5,8341.129,2755.7468,655.0838,100,1000,0);
-- The Leaper 30074 - randomly jumps to 1 of 4 places
DELETE FROM dbscript_random_templates WHERE id = 20367;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20367,1,20983,0,'The Leaper 30074 - Random Script 1'),
(20367,1,20984,0,'The Leaper 30074 - Random Script 2'),
(20367,1,20985,0,'The Leaper 30074 - Random Script 3'),
(20367,1,20986,0,'The Leaper 30074 - Random Script 4');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20983 AND 20986;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(20983,500,0,20,15,30599,0,0,0,0x04,0,0,0,0,3,8396.295,2709.6511,655.4924,5.81969,20,0,'Part of The Leaper 30074 EAI: jump 1'),
(20984,500,0,20,15,30599,0,0,0,0x04,0,0,0,0,3,8376.55,2707.5217,655.1764,3.249,20,0,'Part of The Leaper 30074 EAI: jump 2 '),
(20985,500,0,20,15,30599,0,0,0,0x04,0,0,0,0,3,8380.474,2717.5586,655.17816,1.19812,20,0,'Part of The Leaper 30074 EAI: jump 3'),
(20986,500,0,20,15,30599,0,0,0,0x04,0,0,0,0,3,8368.86,2728.8877,655.3138,2.36858,20,0,'Part of The Leaper 30074 EAI: jump 4');
-- Keritose Bloodblade 30946
UPDATE creature_template SET GossipMenuId = 10110 WHERE entry IN(30946);
DELETE FROM gossip_menu WHERE entry IN(10110);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(10110,14037,0,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14037);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14037,1,32268);
DELETE FROM npc_text WHERE id IN (14037);
-- Eidolon Watcher 30947
UPDATE creature SET movementtype = 0, spawndist = 0 WHERE id = 30947;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 30947);
DELETE FROM creature_template_addon WHERE entry IN (30947);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(30947,0,0,1,0,0,0,58540);
-- Ebon Blade Vindicator 32488
UPDATE creature_template SET DamageMultiplier = 7 WHERE entry IN (32488);
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 32488;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 32488);
DELETE FROM creature_template_addon WHERE entry IN (32488);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(32488,0,0,1,0,375,0,58897);
-- Ebon Blade Geist 32469
UPDATE creature SET position_x = 8515.929, position_y = 2598.0776, position_z = 652.45734, spawndist = 0, MovementType = 4 WHERE guid = 532551; -- linear
UPDATE creature SET position_x = 8536.105, position_y = 2735.9128, position_z = 652.5269, spawndist = 0, MovementType = 4 WHERE guid = 532552; -- linear
UPDATE creature SET position_x = 8476.137, position_y = 2620.233, position_z = 652.45734, spawndist = 0, MovementType = 4 WHERE guid = 532553; -- linear
UPDATE creature SET position_x = 8541.262, position_y = 2579.7644, position_z = 652.58484, spawndist = 0, MovementType = 2 WHERE guid = 532554;
-- waypoints
DELETE FROM creature_movement WHERE Id IN (532551,532552,532553,532554);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 532551
(532551,1,8515.929,2598.0776,652.45734,100,1000,0),
(532551,2,8526.293,2626.6506,652.45734,100,0,0),
(532551,3,8534.904,2643.5613,652.4082,100,0,0),
(532551,4,8552.513,2688.9949,652.52686,100,1000,0),
-- 532552
(532552,1 ,8536.105,2735.9128,652.5269,100,1000,5),
(532552,2 ,8528.784,2714.1963,652.44116,100,0,0),
(532552,3 ,8525.385,2690.9563,652.44116,100,0,0),
(532552,4 ,8515.489,2678.8064,652.44116,100,0,0),
(532552,5 ,8503.46,2674.7366,652.4411,100,0,0),
(532552,6 ,8481.753,2680.773,652.4749,100,0,0),
(532552,7 ,8471.114,2686.9028,652.55414,100,0,0),
(532552,8 ,8447.173,2698.4055,656.77454,100,0,0),
(532552,9 ,8432.156,2705.2231,654.78015,100,0,0),
(532552,10,8417.629,2703.572,655.09424,100,0,0),
(532552,11,8410.324,2706.2883,655.09424,100,0,0),
(532552,12,8398.921,2697.1926,656.4667,100,0,0),
(532552,13,8408.622,2693.7998,655.09424,100,0,0),
(532552,14,8415.992,2698.8489,655.09424,100,0,0),
(532552,15,8412.909,2701.997,655.09424,100,0,0),
(532552,16,8403.715,2692.838,655.8928,100,0,0),
(532552,17,8402.48,2703.8909,655.6275,100,4000,0),
-- 532553
(532553,1 ,8476.137,2620.233,652.45734,100,1000,5),
(532553,2 ,8494.458,2620.656,652.45734 ,100,0,0),
(532553,3 ,8528.108,2623.5132,652.45734,100,0,0),
(532553,4 ,8547.958,2616.4377,652.45905,100,0,0),
(532553,5 ,8565.798,2615.317,652.50366 ,100,0,0),
(532553,6 ,8580.379,2625.341,652.4082  ,100,0,0),
(532553,7 ,8588.245,2645.5605,652.4082 ,100,0,0),
(532553,8 ,8593.814,2656.6013,652.4082 ,100,0,0),
(532553,9 ,8591.43,2674.6575,652.52686 ,100,0,0),
(532553,10,8600.47,2704.1067,652.6161  ,100,0,0),
(532553,11,8592.086,2714.3008,652.52686,100,0,0),
(532553,12,8577.247,2713.071,652.5269  ,100,0,0),
(532553,13,8576.68,2697.9817,652.5269  ,100,0,0),
(532553,14,8575.102,2673.8242,652.52686,100,0,0),
(532553,15,8569.552,2659.7812,652.4082,100,1000,0),
-- 532554
(532554,1 ,8541.262,2579.7644,652.58484,4.1364,45000,0),
(532554,2 ,8542.739,2594.0452,652.4411,100,0,0),
(532554,3 ,8553.977,2611.3535,652.4756,100,0,0),
(532554,4 ,8565.509,2615.4385,652.50433,100,0,0),
(532554,5 ,8574.945,2618.595,652.4686,100,0,0),
(532554,6 ,8588.833,2619.9458,652.4082,100,0,0),
(532554,7 ,8593.637,2619.7637,652.40814,100,45000,0),
(532554,8 ,8587.834,2621.4229,652.4082,100,0,0),
(532554,9 ,8576.767,2618.714,652.42236,100,0,0),
(532554,10,8567.9795,2611.2727,652.47894,100,0,0),
(532554,11,8550.491,2596.023,652.4327,100,0,0),
(532554,12,8543.156,2586.8738,652.515,100,0,0),
(532554,13,8541.262,2579.7644,652.58484,100,0,0);
-- Imhadria 30304
UPDATE creature_template SET GossipMenuId = 9821 WHERE entry IN(30304);
-- Ebon Blade Gargoyle 32472
UPDATE creature SET position_x = 8499.019, position_y = 2679.218, position_z = 652.3677, orientation = 2.8797931, spawndist = 0, MovementType = 0 WHERE guid = 532563;
UPDATE creature SET position_x = 8500.909, position_y = 2692.3347, position_z = 652.44116, orientation = 3.12413, spawndist = 0, MovementType = 0 WHERE guid = 532562;
UPDATE creature SET position_x = 8553.722, position_y = 2732.7573, position_z = 672.1373, orientation = 0, spawndist = 0, MovementType = 3 WHERE guid = 532560;
UPDATE creature SET position_x = 8487.13, position_y = 2648.5872, position_z = 661.32477, orientation = 0, spawndist = 0, MovementType = 3 WHERE guid = 532561;
-- waypoints
DELETE FROM creature_movement WHERE Id IN (532560,532561);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 532560
(532560,1 ,8553.722,2732.7573,672.1373 ,100,0,0),
(532560,2 ,8545.085,2736.8098,677.13055,100,0,0),
(532560,3 ,8538.377,2724.9968,676.7698 ,100,0,0),
(532560,4 ,8527.725,2701.1138,677.464  ,100,0,0),
(532560,5 ,8515.7295,2672.5261,676.4364,100,0,0),
(532560,6 ,8501.882,2638.7805,674.6306 ,100,0,0),
(532560,7 ,8492.601,2619.3118,672.9641 ,100,0,0),
(532560,8 ,8501.216,2604.3613,672.7973 ,100,0,0),
(532560,9 ,8509.95,2597.6433,672.464   ,100,0,0),
(532560,10,8516.437,2603.3364,670.7147 ,100,0,0),
(532560,11,8526.045,2624.9302,675.242  ,100,0,0),
(532560,12,8538.438,2654.096,677.46436 ,100,0,0),
(532560,13,8552.567,2688.4114,676.0737 ,100,0,0),
(532560,14,8561.252,2709.4397,676.1867 ,100,0,0),
(532560,15,8564.74,2718.3662,676.9643  ,100,0,0),
(532560,16,8586.875,2713.7576,677.43585,100,0,0),
(532560,17,8588.923,2702.7898,676.27014,100,0,0),
(532560,18,8580.09,2682.7375,673.3813  ,100,0,0),
(532560,19,8572.153,2664.4092,674.4087 ,100,0,0),
(532560,20,8559.122,2635.2305,674.5473 ,100,0,0),
(532560,21,8547.672,2610.9707,677.35284,100,0,0),
(532560,22,8547.112,2593.9265,677.77   ,100,0,0),
(532560,23,8556.546,2591.858,678.7695  ,100,0,0),
(532560,24,8566.203,2601.376,677.2705  ,100,0,0),
(532560,25,8576.512,2615.707,675.7764  ,100,0,0),
(532560,26,8585.419,2632.535,673.72076 ,100,0,0),
(532560,27,8596.079,2656.51,673.05444  ,100,0,0),
(532560,28,8594.222,2669.849,673.4442  ,100,0,0),
(532560,29,8595.935,2690.8997,673.47107,100,0,0),
(532560,30,8592.354,2705.9192,675.52576,100,0,0),
(532560,31,8571.288,2721.2998,668.02576,100,0,0),
-- 532561
(532561,1 ,8487.13,2648.5872,661.32477,100,0,0),
(532561,2 ,8489.394,2639.1875,661.9919,100,0,0),
(532561,3 ,8498.239,2633.0076,661.9919,100,0,0),
(532561,4 ,8514.016,2626.7751,661.9919,100,0,0),
(532561,5 ,8529.975,2622.438,661.9919 ,100,0,0),
(532561,6 ,8556.946,2621.2727,661.9919,100,0,0),
(532561,7 ,8576.765,2620.136,661.9919 ,100,0,0),
(532561,8 ,8584.989,2627.947,663.35266,100,0,0),
(532561,9 ,8590.352,2637.2637,664.2969,100,0,0),
(532561,10,8597.3125,2651.0725,666.04645,100,0,0),
(532561,11,8590.045,2668.0776,668.68555,100,0,0),
(532561,12,8577.5625,2672.175,668.68555,100,0,0),
(532561,13,8567.869,2653.686,668.68555 ,100,0,0),
(532561,14,8559.406,2635.763,668.68555 ,100,0,0),
(532561,15,8550.115,2624.132,664.60284 ,100,0,0),
(532561,16,8538.325,2625.4146,664.60284,100,0,0),
(532561,17,8531.294,2636.3438,664.60284,100,0,0),
(532561,18,8536.005,2650.634,664.60284 ,100,0,0),
(532561,19,8536.659,2661.5334,667.5744 ,100,0,0),
(532561,20,8528.161,2665.466,668.54675 ,100,0,0),
(532561,21,8521.834,2666.2336,668.9914 ,100,0,0),
(532561,22,8506.145,2657.1555,666.1024 ,100,0,0);
DELETE FROM creature_spawn_data WHERE guid IN(532560,532561);
INSERT INTO creature_spawn_data(Guid,Id) VALUES
(532560,1),(532561,1);
DELETE FROM creature_movement_template WHERE Entry = 32472;
INSERT INTO creature_movement_template (`Entry`,`Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- Path 1
(32472,1,1 ,8478.107,2683.2646,659.7421 ,100,0,0),
(32472,1,2 ,8450.533,2690.1118,674.55457,100,0,0),
(32472,1,3 ,8422.888,2700.1318,674.55457,100,0,0),
(32472,1,4 ,8404.46,2704.106,674.55457  ,100,0,0),
(32472,1,5 ,8397.51,2707.8923,674.55457 ,100,0,0),
(32472,1,6 ,8399.986,2718.4036,674.55457,100,0,0),
(32472,1,7 ,8421,2723.7532,671.91565    ,100,0,0),
(32472,1,8 ,8439.583,2709.768,671.1936  ,100,0,0),
(32472,1,9 ,8450.854,2700.0889,670.3049 ,100,0,0),
(32472,1,10,8476.602,2677.6936,661.24915,100,0,0),
(32472,1,11,8480.713,2659.871,661.24915 ,100,0,0),
(32472,1,12,8493.231,2642.1055,661.24915,100,0,0),
(32472,1,13,8502.208,2644.7349,661.24915,100,0,0),
(32472,1,14,8508.841,2658.0999,659.49927,100,0,0),
(32472,1,15,8505.423,2666.1094,658.2773 ,100,0,0),
(32472,1,16,8499.019,2679.218,652.3677,2.8797931,1000,3247201),
-- Path 2
(32472,2,1 ,8494.986,2697.1455,659.65894,100,0,0),
(32472,2,2 ,8508.55,2706.4036,659.65894 ,100,0,0),
(32472,2,3 ,8519.477,2702.9087,659.65894,100,0,0),
(32472,2,4 ,8534.967,2694.2922,659.65894,100,0,0),
(32472,2,5 ,8544.285,2686.2737,663.1581 ,100,0,0),
(32472,2,6 ,8545.572,2672.8318,662.96375,100,0,0),
(32472,2,7 ,8537.83,2665.012,661.3161   ,100,0,0),
(32472,2,8 ,8519.317,2665,662.3429      ,100,0,0),
(32472,2,9 ,8501.552,2675.601,659.2871  ,100,0,0),
(32472,2,10,8501.594,2686.8394,654.28735,100,0,0),
(32472,2,11,8500.909,2692.3347,652.44116,3.12413,1000,3247201);
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20987 AND 20989;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 20987
(20987,0,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ebon Blade Gargoyle 32472 EAI: idle'),
(20987,1,48,33554432,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ebon Blade Gargoyle 32472 EAI: add unitFlags'),
(20987,2,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ebon Blade Gargoyle 32472 EAI: fly off'),
(20987,500,1,429,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ebon Blade Gargoyle 32472 EAI: emote'),
-- 20988
(20988,0,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ebon Blade Gargoyle 32472 EAI: reset emote'),
(20988,1,48,33554432,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ebon Blade Gargoyle 32472 EAI: remove unitFlags'),
(20988,2,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ebon Blade Gargoyle 32472 EAI: fly on'),
(20988,2,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ebon Blade Gargoyle 32472 EAI: run on'),
(20988,1000,20,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ebon Blade Gargoyle 32472 EAI: Path 1'),
-- 20989
(20989,0,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ebon Blade Gargoyle 32472 EAI: reset emote'),
(20989,1,48,33554432,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ebon Blade Gargoyle 32472 EAI: remove unitFlags'),
(20989,2,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ebon Blade Gargoyle 32472 EAI: fly on'),
(20989,2,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ebon Blade Gargoyle 32472 EAI: run on'),
(20989,1000,20,3,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Ebon Blade Gargoyle 32472 EAI: Path 2');
DELETE FROM dbscripts_on_creature_movement WHERE id = 3247201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3247201,1,45,20987,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'START_RELAY_SCRIPT');
-- Ebon Blade Defender 31250
UPDATE creature_template SET DamageMultiplier = 5 WHERE entry IN (31250);
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 31250;
UPDATE creature SET position_x = 8286.037, position_y = 2777.023, position_z = 655.27045, orientation = 3.246, spawndist = 0, MovementType = 0 WHERE guid = 529938;
UPDATE creature SET position_x = 8285.005, position_y = 2768.2966, position_z = 655.21545, orientation = 3.176, spawndist = 0, MovementType = 0 WHERE guid = 529939;
UPDATE creature SET position_x = 8288.831, position_y = 2781.5881, position_z = 656.10834, orientation = 3.2114, spawndist = 0, MovementType = 0 WHERE guid = 529940;
UPDATE creature SET position_x = 8283.874, position_y = 2772.4644, position_z = 654.46326, orientation = 3.124139, spawndist = 0, MovementType = 0 WHERE guid = 529941;
UPDATE creature SET position_x = 8286.891, position_y = 2762.562, position_z = 656.10834, orientation = 3.14159, spawndist = 0, MovementType = 0 WHERE guid = 529942;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 31250);
DELETE FROM creature_template_addon WHERE entry IN (31250);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(31250,0,0,1,0,375,0,NULL);
-- Ebon Blade Winged Defender 31257
-- missing creature added 
DELETE FROM creature_addon WHERE guid IN (530029);
DELETE FROM creature_movement WHERE id IN (530029);
DELETE FROM game_event_creature WHERE guid IN (530029);
DELETE FROM game_event_creature_data WHERE guid IN (530029);
DELETE FROM creature_battleground WHERE guid IN (530029);
DELETE FROM creature_linking WHERE guid IN (530029);
DELETE FROM creature where guid IN (530029);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(530029,31257,571,1,1,8282.38,2777.7693,653.47955,3.0019,60,60,0,0);
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 31257;
UPDATE creature SET position_x = 8285.177, position_y = 2782.9685, position_z = 654.5582, orientation = 3.00196, spawndist = 0, MovementType = 0 WHERE guid = 529948;
UPDATE creature SET position_x = 8282.4795, position_y = 2762.6033, position_z = 654.2912, orientation = 3.03687, spawndist = 0, MovementType = 0 WHERE guid = 529949;
UPDATE creature SET position_x = 8280.718, position_y = 2768.3438, position_z = 653.158, orientation = 2.89724, spawndist = 0, MovementType = 0 WHERE guid = 529950;
-- Shadow Vault Abomination 31438
UPDATE creature_template SET Expansion = 0 WHERE entry IN (31438);
UPDATE creature SET spawntimesecsmin = 1, spawntimesecsmax = 15 WHERE id = 31438;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 31438);
DELETE FROM creature_template_addon WHERE entry IN (31438);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(31438,0,0,1,0,0,0,'28126 55027 58897');
DELETE FROM dbscripts_on_relay WHERE id = 20990;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20990,0,3,0,0,0,0,0,0x04,0,0,0,0,8298.48,2770.6,655.641,0,'Part of Shadow Vault Abomination 31438 EAI: move');
-- Shadow Vault Assaulter 31266
-- missing creature added 
DELETE FROM creature_addon WHERE guid IN (530030);
DELETE FROM creature_movement WHERE id IN (530030);
DELETE FROM game_event_creature WHERE guid IN (530030);
DELETE FROM game_event_creature_data WHERE guid IN (530030);
DELETE FROM creature_battleground WHERE guid IN (530030);
DELETE FROM creature_linking WHERE guid IN (530030);
DELETE FROM creature where guid IN (530030);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(530030,31266,571,1,1,8236.162,2778.018,638.0599,0.01904,10,20,0,0);
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 20 WHERE id = 31266;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 31266);
DELETE FROM creature_template_addon WHERE entry IN (31266);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(31266,0,0,1,0,0,0,'58897');
UPDATE creature SET position_x = 8239.473, position_y = 2785.8577, position_z = 639.47394, orientation = 5.934119, spawndist = 0, MovementType = 0 WHERE guid = 530068;
UPDATE creature SET position_x = 8238.038, position_y = 2769.5042, position_z = 639.8751, orientation = 6.21942, spawndist = 0, MovementType = 0 WHERE guid = 530069;
-- Shadow Vault Skirmisher 31251
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 20 WHERE id = 31251;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 31251);
DELETE FROM creature_template_addon WHERE entry IN (31251);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(31251,0,0,1,0,0,0,'58897');
UPDATE creature SET position_x = 8232.494, position_y = 2791.0598, position_z = 635.78345, orientation = 1.09833, spawndist = 0, MovementType = 2 WHERE guid = 529943;
UPDATE creature SET position_x = 8225.663, position_y = 2782.2764, position_z = 630.94916, orientation = 6.1497, spawndist = 0, MovementType = 2 WHERE guid = 529944;
UPDATE creature SET position_x = 8221.208, position_y = 2768.9758, position_z = 631.71216, orientation = 1.09833, spawndist = 0, MovementType = 2 WHERE guid = 529945;
UPDATE creature SET position_x = 8222.92, position_y = 2774.1313, position_z = 631.46967, orientation = 0.6675, spawndist = 0, MovementType = 2 WHERE guid = 529946;
-- waypoints
DELETE FROM creature_movement WHERE Id BETWEEN 529943 AND 529946;
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 529943
(529943,1,8232.494,2791.0598,635.78345,1.09833,100,5),
(529943,2,8248.242,2802.601,648.91724,100,100,3125101),
-- 529944
(529944,1,8225.663,2782.2764,630.94916,6.1497,100,5),
(529944,2,8250.222,2777.4597,641.41406,100,100,3125102),
-- 529945
(529945,1,8221.208,2768.9758,631.71216,1.09833,100,5),
(529945,2,8256.069,2766.5027,641.8402,100,100,3125103),
-- 529946
(529946,1,8222.92,2774.1313,631.46967,0.6675,100,5),
(529946,2,8245.165,2752.1016,641.9421,100,100,3125104);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3125101 AND 3125102;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(3125101,500,0,20,15,20990,0,0,0,0x04,0,0,0,0,7,8271.064,2782.2012,647.74976,100,20,0,'Part of Shadow Vault Skirmisher 31251 EAI: jump 1'),
(3125102,500,0,20,15,20990,0,0,0,0x04,0,0,0,0,7,8275.802,2773.0625,650.4808,100,20,0,'Part of Shadow Vault Skirmisher 31251 EAI: jump 2'),
(3125103,500,0,20,15,20990,0,0,0,0x04,0,0,0,0,7,8271.72,2768.19,648.768,100,20,0,'Part of Shadow Vault Skirmisher 31251 EAI: jump 3'),
(3125104,500,0,20,15,20990,0,0,0,0x04,0,0,0,0,7,8265.69,2766.69,645.954,100,20,0,'Part of Shadow Vault Skirmisher 31251 EAI: jump 4');
-- all involved with attacking event
UPDATE creature_template SET ExtraFlags = ExtraFlags|1048576 WHERE entry IN (31438,31257,31250,32488,31266,31251);
