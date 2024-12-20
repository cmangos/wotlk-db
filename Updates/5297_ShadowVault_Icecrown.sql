-- The Shadow Vault - Icecrown

-- Default Phase
DELETE FROM spell_area WHERE spell = 30181;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(30181,4477,0,0,12897,0,0,0,2,1); -- The Shadow Vault: Phase Shift I

-- Runeforge 191758
UPDATE gameobject SET phaseMask = 3 WHERE guid IN (508801,508798);
-- Bonfire 191756
UPDATE gameobject SET phaseMask = 3 WHERE guid IN (508796,508790,508793);

-- Morbid Carcass 29719
DELETE FROM creature_addon WHERE guid BETWEEN 500536 AND 500544;
DELETE FROM creature_movement WHERE id BETWEEN 500536 AND 500544;
DELETE FROM game_event_creature WHERE guid BETWEEN 500536 AND 500544;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 500536 AND 500544;
DELETE FROM creature_battleground WHERE guid BETWEEN 500536 AND 500544;
DELETE FROM creature_linking WHERE guid BETWEEN 500536 AND 500544;
DELETE FROM creature where guid BETWEEN 500536 AND 500544;
DELETE FROM creature_addon WHERE guid IN (525700,525701);
DELETE FROM creature_movement WHERE id IN (525700,525701);
DELETE FROM game_event_creature WHERE guid IN (525700,525701);
DELETE FROM game_event_creature_data WHERE guid IN (525700,525701);
DELETE FROM creature_battleground WHERE guid IN (525700,525701);
DELETE FROM creature_linking WHERE guid IN (525700,525701);
DELETE FROM creature where guid IN (525700,525701);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(500536,29719,571,1,2,8481.104,2684.4543,652.43665,2.75762,300,300,0,0),
(500537,29719,571,1,2,8419.114,2731.2087,656.82806,3.839724,300,300,0,0),
(500538,29719,571,1,2,8614.454,2711.1077,652.4367,3.52556,300,300,0,0),
(500539,29719,571,1,2,8417.327,2705.3042,759.94794,6.09846,300,300,10,1),
(500540,29719,571,1,2,8412.997,2643.3792,759.95715,0,300,300,10,1),
(500541,29719,571,1,2,8446.151,2744.1326,759.94794,5.97768,300,300,10,1),
(500542,29719,571,1,2,8441.454,2593.25,759.9572,5.31267,300,300,10,1),
(500543,29719,571,1,2,8538.935,2703.9333,652.35095,0.99747,300,300,10,1),
(500544,29719,571,1,2,8631.175,2620.9714,759.9462,1.11726,300,300,10,1),
(525700,29719,571,1,2,8529.988,2552.7175,759.9572,3.47596,300,300,10,1),
(525701,29719,571,1,2,8552.669,2773.1025,759.94464,4.39498,300,300,10,1);

-- Vault Geist 29720
DELETE FROM creature_addon WHERE guid IN (525703);
DELETE FROM creature_movement WHERE id IN (525703);
DELETE FROM game_event_creature WHERE guid IN (525703);
DELETE FROM game_event_creature_data WHERE guid IN (525703);
DELETE FROM creature_battleground WHERE guid IN (525703);
DELETE FROM creature_linking WHERE guid IN (525703);
DELETE FROM creature where guid IN (525703);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(525703,29720,571,1,2,8639.048,2688.9973,759.94464,0,300,300,10,1);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 29329);
DELETE FROM creature_template_addon WHERE entry IN (29720);
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(29720,0,0,1,0,0,0,61894);
UPDATE creature SET position_x = 8284.024, position_y = 2701.8098, position_z = 656.1413, spawndist = 0, MovementType = 4 WHERE guid = 526178; -- linear
UPDATE creature SET position_x = 8236.973, position_y = 2769.3638, position_z = 639.5126, spawndist = 0, MovementType = 4 WHERE guid = 526169; -- linear
UPDATE creature SET position_x = 8244.788, position_y = 2786.8403, position_z = 641.0718, spawndist = 0, MovementType = 4 WHERE guid = 526168; -- linear
UPDATE creature SET position_x =8510.603 , position_y = 2619.5916, position_z = 652.3478, orientation = 4.82389, spawndist = 10, MovementType = 1 WHERE guid = 526167;
UPDATE creature SET position_x = 8404.075, position_y = 2751.1562, position_z = 666.43555, orientation = 3.595378, spawndist = 0, MovementType = 0 WHERE guid = 526176;
UPDATE creature SET position_x = 8536.52, position_y = 2681.4758, position_z = 654.22125, orientation = 1.483529, spawndist = 0, MovementType = 0 WHERE guid = 526172;
UPDATE creature SET position_x = 8526.629, position_y = 2647.6843, position_z = 654.174, orientation = 5.81194, spawndist = 0, MovementType = 0 WHERE guid = 526175;
UPDATE creature SET position_x = 8509.763, position_y = 2693.5283, position_z = 653.48303, orientation = 1.23918, spawndist = 0, MovementType = 0 WHERE guid = 526174;
UPDATE creature SET position_x = 8493.93, position_y = 2656.2908, position_z = 653.5371, orientation = 4.398229, spawndist = 0, MovementType = 0 WHERE guid = 526179;
UPDATE creature SET position_x = 8481.05, position_y = 2557.4, position_z = 759.957, orientation = 0.759788, spawndist = 10, MovementType = 1 WHERE guid = 526177;
DELETE FROM creature_movement WHERE id IN (526178,526169,526168);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 526178
(526178,1,8284.024,2701.8098,656.1413,100,1000,0),
(526178,2,8282.485,2711.1746,651.5982,100,0,0),
(526178,3,8271.127,2722.9832,648.1893,100,0,0),
(526178,4,8271.2,2734.5234,644.8327,100,0,0),
(526178,5,8260.757,2743.8284,643.8341,100,0,0),
(526178,6,8247.282,2752.8296,642.2594,100,0,0),
(526178,7,8233.943,2762.515,639.3417,100,1000,0),
-- 526169
(526169,1,8236.973,2769.3638,639.5126,100,1000,0),
(526169,2,8253.459,2782.312,641.83856,100,0,0),
(526169,3,8272.614,2769.1587,649.14716,100,0,0),
(526169,4,8304.285,2762.2036,655.21747,100,0,0),
(526169,5,8332.92,2771.744,655.19507,100,0,0),
(526169,6,8347.952,2754.2341,655.1684,100,0,0),
(526169,7,8370.888,2749.8196,655.21747,100,0,0),
(526169,8,8384.7,2727.1323,655.1914,100,1000,0),
-- 526168
(526168,1,8244.788,2786.8403,641.0718,100,1000,0),
(526168,2,8252.656,2778.4875,641.83856,100,0,0),
(526168,3,8271.348,2769.1318,648.54474,100,0,0),
(526168,4,8290.121,2777.1616,656.0067,100,0,0),
(526168,5,8309.358,2770.535,655.19507,100,0,0),
(526168,6,8325.054,2757.4,655.21747,100,0,0),
(526168,7,8353.186,2752.523,655.1684,100,0,0),
(526168,8,8374.563,2734.004,655.21747,100,0,0),
(526168,9,8408.802,2719.1233,655.1317,100,1000,0);
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20064);
INSERT INTO `creature_spawn_data_template` (`entry`, `SpawnFlags`, `RelayId`, `Name`) VALUES
(20064,1,30501,'- SPAWN FLAG RUN, Relayid 30501');
DELETE FROM `creature_spawn_data` WHERE guid IN (526178,526169,526168,526173,526166,526176);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(526178,1), -- run only
(526173,80),(526166,80),(526176,80),
(526169,20064),(526168,20064);
DELETE FROM dbscript_random_templates WHERE id = 20341;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20341,1,20841,0,'Part of Vault Geist 29720 EAI - Random Script 1'),
(20341,1,20842,0,'Part of Vault Geist 29720 EAI - Random Script 2'),
(20341,1,20843,0,'Part of Vault Geist 29720 EAI - Random Script 3');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20841 AND 20843;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20841,1,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20841,3000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20841,5000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20841,7000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20841,9000,1,25,0,0,0,0,0x04,20,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20842,1,1,431,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20842,9000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: reset emote'),
(20843,1,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20843,1000,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20843,2000,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20843,3000,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20843,4000,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20843,5000,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20843,6000,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20843,7000,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20843,8000,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20843,9000,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20844 AND 20847;
INSERT INTO dbscripts_on_relay (id,delay,priority,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,datafloat,x,y,z,o,speed,condition_id,comments) VALUES
(20844,1,0,32,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: pause wps'),
(20844,100,0,20,15,0,0,0,0,0x04,0,0,0,0,5,8342.181,2739.7979,655.72565,100,25,0,'Part of Vault Geist 29720 EAI: jump'),
(20844,4000,0,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20844,6000,0,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20844,8000,0,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20844,10000,0,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20844,12000,0,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20844,14000,0,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20844,16000,0,35,10,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: self send Event 10'),
(20844,16001,0,32,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: unpause wps'),
(20845,1,0,32,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: pause wps'),
(20845,100,0,20,15,0,0,0,0,0x04,0,0,0,0,5,8368.699,2720.1206,656.9396,100,25,0,'Part of Vault Geist 29720 EAI: jump'),
(20845,4000,0,1,20,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20845,6000,0,1,20,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20845,8000,0,1,20,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20845,10000,0,1,20,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20845,12000,0,1,20,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20845,14000,0,1,20,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20845,16000,0,32,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: unpause wps'),
(20845,16000,0,35,10,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: self send Event 10'),
(20845,16001,0,32,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: unpause wps'),
(20846,100,0,20,15,0,0,0,0,0x04,0,0,0,0,5,8244.223,2765.507,640.4247,100,25,0,'Part of Vault Geist 29720 EAI: jump'),
(20846,4000,0,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20846,6000,0,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20846,8000,0,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20846,10000,0,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20846,12000,0,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20846,14000,0,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20846,16000,0,35,10,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: self send Event 10'),
(20846,16001,0,32,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: unpause wps'),
(20847,1,0,32,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: pause wps'),
(20847,100,0,20,15,0,0,0,0,0x04,0,0,0,0,5,8393.867,2710.822,655.45087,100,25,0,'Part of Vault Geist 29720 EAI: jump'),
(20847,4000,0,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20847,6000,0,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20847,8000,0,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20847,10000,0,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20847,12000,0,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20847,14000,0,1,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: emote'),
(20847,16000,0,35,10,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: self send Event 10'),
(20847,16001,0,32,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Part of Vault Geist 29720 EAI: unpause wps');

-- Death Knight Master 29738
DELETE FROM creature_addon WHERE guid IN (525704,525705,525706);
DELETE FROM creature_movement WHERE id IN (525704,525705,525706);
DELETE FROM game_event_creature WHERE guid IN (525704,525705,525706);
DELETE FROM game_event_creature_data WHERE guid IN (525704,525705,525706);
DELETE FROM creature_battleground WHERE guid IN (525704,525705,525706);
DELETE FROM creature_linking WHERE guid IN (525704,525705,525706);
DELETE FROM creature where guid IN (525704,525705,525706);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(525704,29738,571,1,2,8534.325,2703.1604,652.35095,0,300,300,0,2),
(525705,29738,571,1,2,8520.606,2728.0947,652.43665,4.99164,300,300,0,0),
(525706,29738,571,1,2,8601.971,2689.993,652.4367,2.914699,300,300,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 29329);
DELETE FROM creature_template_addon WHERE entry IN (29738);
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(29738,0,0,1,0,0,0,NULL);
UPDATE creature SET position_x = 8351.677, position_y = 2762.8608, position_z = 655.538, spawndist = 0, MovementType = 2 WHERE guid = 526245;
DELETE FROM creature_movement WHERE id IN (526245,525704);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 526245
(526245,1 ,8351.677,2762.8608,655.538,100,0,0),
(526245,2 ,8337.344,2773.68,655.21747,100,0,0),
(526245,3 ,8324.131,2780.454,656.3706,100,0,0),
(526245,4 ,8309.555,2777.2605,655.19507,100,0,0),
(526245,5 ,8309.488,2758.0088,655.21747,100,0,0),
(526245,6 ,8315.677,2751.3481,655.21747,100,0,0),
(526245,7 ,8340.424,2744.3113,655.1684,100,0,0),
(526245,8 ,8358.269,2740.918,655.1684 ,100,0,0),
(526245,9 ,8368.39,2735.5596,655.21747,100,0,0),
(526245,10,8389.51,2724.9104,655.1914 ,100,0,0),
(526245,11,8408.075,2712.2834,655.1317,100,0,0),
(526245,12,8412.829,2717.3806,655.1317,100,0,0),
(526245,13,8412.573,2725.5542,655.203 ,100,0,0),
(526245,14,8402.836,2734.5808,655.2199,100,0,0),
(526245,15,8387.33,2741.26,655.157    ,100,0,0),
(526245,16,8375.882,2754.8743,655.2098,100,0,0),
(526245,17,8365.659,2758.064,655.1684 ,100,0,0),
-- 525704
(525704,1 ,8534.325,2703.1604,652.35095,100,0,0),
(525704,2 ,8544.861,2706.305,652.35095 ,100,0,0),
(525704,3 ,8553.296,2703.685,652.35095 ,100,0,0),
(525704,4 ,8554.353,2691.3599,652.3509 ,100,0,0),
(525704,5 ,8546.169,2672.4807,652.3509 ,100,0,0),
(525704,6 ,8539.952,2657.4438,652.35254,100,0,0),
(525704,7 ,8533.333,2643.5288,652.3524 ,100,0,0),
(525704,8 ,8524.584,2623.343,652.3478  ,100,0,0),
(525704,9 ,8510.068,2613.303,652.3478  ,100,0,0),
(525704,10,8499.549,2613.6477,652.3478 ,100,0,0),
(525704,11,8494.56,2623.2952,652.3478  ,100,0,0),
(525704,12,8501.728,2639.9407,652.3478 ,100,0,0),
(525704,13,8509.379,2657.9253,652.3478 ,100,0,0),
(525704,14,8517.044,2675.855,652.33856 ,100,0,0),
(525704,15,8522.518,2689.3113,652.3385 ,100,0,0);

-- Rabid Cannibal 29722
DELETE FROM creature_addon WHERE guid BETWEEN 525707 AND 525711;
DELETE FROM creature_movement WHERE id BETWEEN 525707 AND 525711;
DELETE FROM game_event_creature WHERE guid BETWEEN 525707 AND 525711;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 525707 AND 525711;
DELETE FROM creature_battleground WHERE guid BETWEEN 525707 AND 525711;
DELETE FROM creature_linking WHERE guid BETWEEN 525707 AND 525711;
DELETE FROM creature where guid BETWEEN 525707 AND 525711;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(525707,29722,571,1,2,8404.88,2799.94,717.571,0,300,300,10,1),
(525708,29722,571,1,2,8569.125,2691.9346,652.3508,0,300,300,10,1),
(525709,29722,571,1,2,8541.832,2609.059,652.3525,0,300,300,10,1),
(525710,29722,571,1,2,8590.21,2569.36,759.958,0,300,300,10,1),
(525711,29722,571,1,2,8596.999,2754.3938,759.94464,0,300,300,10,1);
DELETE FROM `creature_spawn_data` WHERE guid IN (526182,526181,526183);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(526182,80),
(526181,80),
(526183,80);
-- some share spawn points
UPDATE creature SET position_x = 8290.419922, position_y = 2676.291016, position_z = 689.547852, spawndist = 10, MovementType = 1 WHERE guid = 526160;
UPDATE creature SET position_x = 8335.121094, position_y = 2672.036621, position_z = 689.327576, spawndist = 10, MovementType = 1 WHERE guid = 526170;
UPDATE creature SET position_x = 8380.979492, position_y = 2823.763184, position_z = 717.403442, spawndist = 10, MovementType = 1 WHERE guid = 526164;
-- Morbid Carcass 29719 & Vault Geist 29720 & Rabid Cannibal 29722
DELETE FROM `creature_spawn_entry` WHERE `guid` IN (526165,526170,526160,526164,525707); 
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(526165, 29719),(526165, 29720),(526165, 29722),
(526170, 29719),(526170, 29720),(526170, 29722),
(526160, 29719),(526160, 29720),(526160, 29722),
(526164, 29719),(526164, 29720),(526164, 29722),
(525707, 29719),(525707, 29720),(525707, 29722);
UPDATE creature SET id = 0 WHERE guid IN (526165,526170,526160,526164,525707);

-- Lady Nightswood 29770
DELETE FROM dbscripts_on_relay WHERE id = 20848;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20848,1,31,29771,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Lady Nightswood 29770 EAI: search for 29771'),
(20848,100,15,55070,0,0,29771,20,1,0,0,0,0,0,0,0,0,'Part of Lady Nightswood 29770 EAI: cast 55070 on buddy');

-- The Leaper 29840
UPDATE creature_template SET MovementType = 4 WHERE entry IN (29840);
UPDATE creature SET position_x = 8453.749, position_y = 2749.2275, position_z = 759.948, spawndist = 0, MovementType = 4 WHERE id = 29840;
DELETE FROM `creature_movement_template` WHERE entry IN (29840);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
(29840,0,1 ,8453.749,2749.2275,759.948,100,1000,0),
(29840,0,2 ,8441.37,2736.2925,759.94794 ,100,0,0),
(29840,0,3 ,8429.084,2721.792,759.948   ,100,0,0),
(29840,0,4 ,8421.747,2700.9602,759.94794,100,0,0),
(29840,0,5 ,8416.356,2674.1365,759.94794,100,0,0),
(29840,0,6 ,8413.049,2645.3071,759.95715,100,0,0),
(29840,0,7 ,8420.523,2621.758,759.95715 ,100,0,0),
(29840,0,8 ,8430.813,2601.5027,759.9573 ,100,0,0),
(29840,0,9 ,8449.795,2583.4873,759.9572 ,100,0,0),
(29840,0,10,8472.171,2566.747,759.95715 ,100,0,0),
(29840,0,11,8496.161,2555.0674,759.9572 ,100,0,0),
(29840,0,12,8525.486,2549.781,759.95715 ,100,0,0),
(29840,0,13,8547.526,2551.0156,759.9462 ,100,0,0),
(29840,0,14,8569.89,2558.1067,759.9462  ,100,0,0),
(29840,0,15,8590.31,2568.3416,759.9463  ,100,0,0),
(29840,0,16,8609.169,2585.2646,759.9462 ,100,0,0),
(29840,0,17,8624.317,2607.431,759.9462  ,100,0,0),
(29840,0,18,8635.417,2631.3098,759.9462 ,100,0,0),
(29840,0,19,8640.665,2656.346,759.9462  ,100,0,0),
(29840,0,20,8640.003,2685.3503,759.94464,100,0,0),
(29840,0,21,8634.117,2707.531,759.94464 ,100,0,0),
(29840,0,22,8622.014,2729.3196,759.9447 ,100,0,0),
(29840,0,23,8599.771,2749.6663,759.9447 ,100,0,0),
(29840,0,24,8576.836,2764.4875,759.9446 ,100,0,0),
(29840,0,25,8558.643,2770.9543,759.94464,100,0,0),
(29840,0,26,8543.128,2773.3003,759.9446,100,1000,0);
DELETE FROM `creature_spawn_data` WHERE guid IN (526472);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(526472,1);

-- Shadow Cultist 29717
DELETE FROM creature_addon WHERE guid IN (525702,525712,525713,525714,525715,525716,525717,525718,525719,525720,525721,525722);
DELETE FROM game_event_creature WHERE guid IN (525702,525712,525713,525714,525715,525716,525717,525718,525719,525720,525721,525722);
DELETE FROM game_event_creature_data WHERE guid IN (525702,525712,525713,525714,525715,525716,525717,525718,525719,525720,525721,525722);
DELETE FROM creature_battleground WHERE guid IN (525702,525712,525713,525714,525715,525716,525717,525718,525719,525720,525721,525722);
DELETE FROM creature_linking WHERE guid IN (525702,525712,525713,525714,525715,525716,525717,525718,525719,525720,525721,525722);
DELETE FROM creature where guid IN (525702,525712,525713,525714,525715,525716,525717,525718,525719,525720,525721,525722);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(525702,29717,571,1,2,8375.953,2711.555,655.1832,4.581182,300,300,0,2),
(525712,29717,571,1,2,8416.89,2698.9497,655.17755,5.465497,300,300,0,2),
(525713,29717,571,1,2,8477.412,2632.1917,653.152,4.904375,300,300,0,0),
(525714,29717,571,1,2,487.493,2597.6555,652.3478,3.735004,300,300,0,0),
(525715,29717,571,1,2,8481.432,2626.0068,652.3478,2.4434609,300,300,0,2),
(525716,29717,571,1,2,8482,2594.251,653.2076,5.7246799,300,300,0,0),
(525717,29717,571,1,2,8538.903,2748.444,652.4367,1.7627825,300,300,0,0),
(525718,29717,571,1,2,8567.458,2722.8298,652.3508,1.288487,300,300,0,2),
(525719,29717,571,1,2,8556.981,2741.181,652.4367,1.6231561,300,300,0,0),
(525720,29717,571,1,2,8537.636,2577.0981,652.3525,3.829354,300,300,0,4), -- linear
(525721,29717,571,1,2,532.807,2573.926,653.22144,5.46288,300,300,0,0),
(525722,29717,571,1,2,592.398,2727.963,653.0756,3.246312,300,300,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 29717);
DELETE FROM creature_template_addon WHERE entry IN (29717);
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(29717,0,0,1,0,0,0,NULL);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (525713,525714,525716,525717,525719,525721,525722);
INSERT INTO creature_addon (guid,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(525713,0,0,1,0,233,0,NULL),
(525714,0,0,1,0,69,0,NULL),
(525716,0,0,1,0,233,0,NULL),
(525717,0,0,1,0,69,0,NULL),
(525719,0,0,1,0,69,0,NULL),
(525721,0,0,1,0,233,0,NULL),
(525722,0,0,1,0,69,0,NULL);
UPDATE creature SET position_x = 8313.91, position_y = 2802.6318, position_z = 655.19403, orientation = 3.49065, spawndist = 0, MovementType = 4 WHERE guid = 526157; -- linear
UPDATE creature SET position_x = 8335.015, position_y = 2815.4355, position_z = 655.21747, orientation = 1.91986, spawndist = 0, MovementType = 4 WHERE guid = 526156; -- linear
UPDATE creature SET position_x = 8353.955, position_y = 2806.3413, position_z = 655.21747, orientation = 3.759214, spawndist = 0, MovementType = 2 WHERE guid = 526155;
UPDATE creature SET position_x = 8379.28, position_y = 2778.249, position_z = 655.1795, orientation = 0.471238, spawndist = 0, MovementType = 2 WHERE guid = 526154;
DELETE FROM creature_movement WHERE id IN (526157,526156,526155,526158,525702,526154,525712,525715,525718,525720);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 526157
(526157,1,8313.91,2802.6318,655.19403,3.490650,40000,2971701),
(526157,2,8319.394,2801.0132,655.19403,100,0,0),
(526157,3,8328.075,2798.35,655.19507,100,70000,2971702),
-- 526156
(526156,1,8335.015,2815.4355,655.21747,1.91986,50000,2971701),
(526156,2,8337.358,2810.1995,655.21747,100,0,0),
(526156,3,8337.599,2803.88,655.21747,100,70000,2971702),
-- 526155
(526155,1,8353.955,2806.3413,655.21747,3.759214,60000,2971701),
(526155,2,8344.251,2799.4482,655.21747,100,70000,2971702),
-- 526158
(526158,1,8364.143,2701.918,656.46826,100,70000,2971702),
(526158,2,8364.143,2701.918,656.46826,100,5000,0),
-- 525702
(525702,1,8375.953,2711.555,655.1832,100,5000,0),
(525702,2,8375.953,2711.555,655.1832,100,70000,2971702),
-- 526154
(526154,1,8379.28,2778.249,655.1795,100,40000,2971701),
(526154,2,8379.28,2778.249,655.1795,100,0,0),
-- 525712
(525712,1,8416.89,2698.9497,655.17755,100,3000,0),
(525712,2,8416.89,2698.9497,655.17755,100,70000,2971702),
-- 525715
(525715,1,8481.432,2626.0068,652.3478,100,40000,2971701),
(525715,2,8477.231,2618.0708,652.3478,100,70000,2971702),
-- 525718
(525718,1,8567.458,2722.8298,652.3508,100,70000,2971702),
(525718,2,8590.565,2723.3267,652.3509,1.27409,40000,2971701),
-- 525720
(525720,1,8537.636,2577.0981,652.3525,3.829354,40000,2971701),
(525720,2,8547.895,2589.105,652.3525,100,0,0),
(525720,3,8553.81,2590.3862,652.3525,0.185383,70000,2971702);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2971701,2971702);
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) values
(2971701,1000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2971701,38000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote'),
(2971702,1000,31,29771,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 29771'),
(2971702,1100,15,55070,0,0,29771,20,1,0,0,0,0,0,0,0,0,'cast 55070 on buddy'),
(2971702,68000,47,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Interrupt Channelling');
