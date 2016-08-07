-- Garrosh's Landing & Pal'ea - Borean Tundra

-- Duplicates
DELETE FROM creature WHERE guid IN (110287,108089);
DELETE FROM creature_addon WHERE guid IN (110287,108089);
DELETE FROM creature_movement WHERE id IN (110287,108089);
DELETE FROM game_event_creature WHERE guid IN (110287,108089);
DELETE FROM game_event_creature_data WHERE guid IN (110287,108089);
DELETE FROM creature_battleground WHERE guid IN (110287,108089);
DELETE FROM creature_linking WHERE guid IN (110287,108089) OR master_guid IN (110287,108089);

-- missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (84085,84124,84125,84126,84127,84128,84129,84130,84131,84132,84133);
DELETE FROM creature_addon WHERE guid IN (84085,84124,84125,84126,84127,84128,84129,84130,84131,84132,84133);
DELETE FROM creature_movement WHERE id IN (84085,84124,84125,84126,84127,84128,84129,84130,84131,84132,84133);
DELETE FROM game_event_creature WHERE guid IN (84085,84124,84125,84126,84127,84128,84129,84130,84131,84132,84133);
DELETE FROM game_event_creature_data WHERE guid IN (84085,84124,84125,84126,84127,84128,84129,84130,84131,84132,84133);
DELETE FROM creature_battleground WHERE guid IN (84085,84124,84125,84126,84127,84128,84129,84130,84131,84132,84133);
DELETE FROM creature_linking WHERE guid IN (84085,84124,84125,84126,84127,84128,84129,84130,84131,84132,84133)
OR master_guid IN (84085,84124,84125,84126,84127,84128,84129,84130,84131,84132,84133);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
-- Kvaldir Mist Lord
(110287,25496,571,1,2,0,0,2501.23,7003.17,-1.08857,0.778227,300,0,0,6986,0,0,0),
(108089,25496,571,1,2,0,527,2440.83,7009.36,-1.08863,2.83222,300,0,0,6986,0,0,0),
(84085,25496,571,1,2,0,0,2524.86,6788.9,3.82505,5.77704,300,0,0,7984,0,0,0),
(84124,25496,571,1,2,0,0,2511.96,6925.03,-1.08836,1.064651,300,0,0,7984,0,0,0),
(84125,25496,571,1,2,0,0,2532.8,6944.72,-1.08733,4.049164,300,0,0,7984,0,0,0),
(84126,25496,571,1,2,0,0,2595.63,6935.56,-1.08892,4.223697,300,0,0,7984,0,0,0),
(84127,25496,571,1,2,0,0,2474.68,6986.97,-1.03008,4.921828,300,0,0,6986,0,0,0),
(84128,25496,571,1,2,0,0,2914.38,6788.86,8.92242,4.520403,300,0,0,6986,0,0,0),
(84129,25496,571,1,2,0,0,2922.34,6887.66,1.62042,4.1938,300,0,0,7984,0,0,2),
(84130,25496,571,1,2,0,0,2984.42,6744.97,10.5981,1.69545,300,0,0,7984,0,0,0),
-- Kvaldir Mistweaver
(84131,25479,571,1,2,0,0,2514.72,6848.94,0.186152,1.343904,300,0,0,6986,2991,0,0),
(84132,25479,571,1,2,0,0,2675.84,6879.65,13.0785,0.6632251,300,0,0,7984,3080,0,0),
(84133,25479,571,1,2,0,0,2467.49,6866.01,-0.0669545,1.343904,300,0,0,7984,3080,0,0);

-- Kvaldir Mist Lord
-- the have several diff. equipments
-- #110287
UPDATE creature SET equipment_id = 590 WHERE guid = 110287;
DELETE FROM creature_addon WHERE guid = 110287;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(110287,0,0,1,0,69,0,NULL);  -- individual
-- #108089
UPDATE creature SET equipment_id = 592 WHERE guid = 108089;
DELETE FROM creature_addon WHERE guid = 108089;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(108089,0,0,1,0,69,0,NULL);  -- individual
-- #110290 
UPDATE creature SET equipment_id = 593 WHERE guid = 110290;
DELETE FROM creature_addon WHERE guid = 110290;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(110290,0,0,1,0,27,0,NULL);  -- individual
-- #110288
UPDATE creature SET equipment_id = 591, spawndist = 0, MovementType = 2 WHERE guid = 110288;
DELETE FROM creature_movement WHERE id = 110288;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(110288,1,2863.89,6731.3,23.8708, 0, 0,1.18352, 0, 0),
(110288,2,2867.41,6736.39,20.575, 0, 0,6.15981, 0, 0),
(110288,3,2869.66,6736.03,20.5222, 0, 0,5.43018, 0, 0),
(110288,4,2874.35,6732.32,18.5034, 0, 0,0.284243, 0, 0),
(110288,5,2883.04,6735.44,13.9969, 0, 0,0.325868, 0, 0),
(110288,6,2885.34,6736.16,13.9969, 1000, 0,0.333722, 0, 0),
(110288,7,2883.08,6735.41,13.9969, 0, 0,3.40856, 0, 0),
(110288,8,2874.3,6732.46,18.5036, 0, 0,3.06062, 0, 0),
(110288,9,2872.37,6733.3,18.5034, 0, 0,2.23831, 0, 0),
(110288,10,2869.64,6735.94,20.5219, 0, 0,2.93418, 0, 0),
(110288,11,2867.35,6736.27,20.6393, 0, 0,3.9819, 0, 0),
(110288,12,2864.11,6731.54,23.8376, 0, 0,4.76336, 0, 0),
(110288,13,2866.32,6725.92,26.7276, 0, 0,5.59824, 0, 0),
(110288,14,2872.46,6725.05,29.5246, 0, 0,0.282659, 0, 0),
(110288,15,2876.68,6729.69,32.6966, 0, 0,1.16309, 0, 0),
(110288,16,2874.99,6735.57,32.849, 0, 0,2.47942, 0, 0),
(110288,17,2868.54,6737.26,32.8535, 0, 0,3.76826, 0, 0),
(110288,18,2864.44,6732.45,32.8519, 0, 0,4.48375, 0, 0),
(110288,19,2865.63,6727.69,32.8536, 2000, 0,5.10892, 0, 0),
(110288,20,2864.32,6731.98,32.8497, 0, 0,1.09554, 0, 0),
(110288,21,2868.42,6737.17,32.8527, 0, 0,6.07025, 0, 0),
(110288,22,2874.78,6735.95,32.8511, 0, 0,5.15998, 0, 0),
(110288,23,2876.97,6730.14,32.8511, 0, 0,4.40207, 0, 0),
(110288,24,2872.59,6724.92,29.5247, 0, 0,3.04098, 0, 0),
(110288,25,2866.39,6725.75,26.7279, 0, 0,2.34512, 0, 0);
-- #57072
UPDATE creature SET position_x = 2851.863037, position_y = 6747.980957, position_z = 14.633631, orientation = 4.787710, equipment_id = 594 WHERE guid = 57072;
DELETE FROM creature_addon WHERE guid = 57072;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(57072,0,0,1,0,69,0,NULL);  -- individual
-- #110301
UPDATE creature SET equipment_id = 593 WHERE guid = 110301;
-- #110285
UPDATE creature SET equipment_id = 593 WHERE guid = 110285;
DELETE FROM creature_addon WHERE guid = 110285;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(110285,0,0,1,0,27,0,NULL);  -- individual
-- #84085
UPDATE creature SET equipment_id = 592 WHERE guid = 84085;
DELETE FROM creature_addon WHERE guid = 84085;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(84085,0,0,1,0,27,0,NULL);  -- individual
-- #57068
UPDATE creature SET equipment_id = 525 WHERE guid = 57068;
DELETE FROM creature_addon WHERE guid = 57068;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(57068,0,0,1,0,234,0,NULL);  -- individual
-- #84124
UPDATE creature SET equipment_id = 525 WHERE guid = 84124;
DELETE FROM creature_addon WHERE guid = 84124;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(84124,0,0,1,0,234,0,NULL);  -- individual
-- #57067
UPDATE creature SET equipment_id = 525, position_x = 2461.469971, position_y = 6822.693848, position_z = 3.049853, orientation = 1.938851, spawndist = 0, MovementType = 0 WHERE guid = 57067;
DELETE FROM creature_addon WHERE guid = 57067;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(57067,0,0,1,0,234,0,NULL);  -- individual
-- #57065 
UPDATE creature SET equipment_id = 525, position_x = 2466.964111, position_y = 6840.045898, position_z = 0.911707, orientation = 4.243432, spawndist = 0, MovementType = 0 WHERE guid = 57065;
DELETE FROM creature_addon WHERE guid = 57065;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(57065,0,0,1,0,234,0,NULL);  -- individual
-- #84125
UPDATE creature SET equipment_id = 525 WHERE guid = 84125;
DELETE FROM creature_addon WHERE guid = 84125;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(84125,0,0,1,0,234,0,NULL);  -- individual
-- #84126
UPDATE creature SET equipment_id = 525 WHERE guid = 84126;
DELETE FROM creature_addon WHERE guid = 84126;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(84126,0,0,1,0,234,0,NULL);  -- individual
-- #57063
UPDATE creature SET equipment_id = 590, position_x = 2426.334961, position_y = 6838.904785, position_z = 2.879120, orientation = 3.922176, spawndist = 0, MovementType = 0  WHERE guid = 57063;
DELETE FROM creature_addon WHERE guid = 57063;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(57063,0,0,1,0,69,0,NULL);  -- individual
-- #57066
UPDATE creature SET equipment_id = 591, spawndist = 0, MovementType = 2 WHERE guid = 57066;
DELETE FROM creature_movement WHERE id = 57066;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(57066,1,2445.39,6858.84,0.786022, 0, 0,3.07711, 0, 0),
(57066,2,2436.16,6858.57,0.784739, 0, 0,3.89392, 0, 0),
(57066,3,2437.49,6839.29,2.02653, 0, 0,3.9332, 0, 0),
(57066,4,2431.96,6833.39,3.44154, 0, 0,4.36517, 0, 0),
(57066,5,2430.27,6826.38,4.33505, 0, 0,3.7879, 0, 0),
(57066,6,2411.51,6813.73,3.06081, 0, 0,3.80753, 0, 0),
(57066,7,2398.05,6801.81,0.948607, 0, 0,4.42799, 0, 0),
(57066,8,2397.14,6787.74,0.948607, 0, 0,4.83128, 0, 0),
(57066,9,2399.7,6773.69,0.946899, 0, 0,5.7384, 0, 0),
(57066,10,2412.55,6771.74,1.49103, 0, 0,6.1743, 0, 0),
(57066,11,2420.45,6771.36,3.19439, 0, 0,0.25632, 0, 0),
(57066,12,2434.06,6776.73,5.61699, 0, 0,0.389838, 0, 0),
(57066,13,2445.24,6782.23,6.21639, 0, 0,0.986741, 0, 0),
(57066,14,2449.67,6792.48,5.67687, 0, 0,1.36373, 0, 0),
(57066,15,2451.75,6801.68,5.6171, 0, 0,0.546918, 0, 0),
(57066,16,2471.97,6810.29,4.15044, 0, 0,0.802172, 0, 0),
(57066,17,2481.05,6827.04,1.35094, 0, 0,1.483, 0, 0),
(57066,18,2481.29,6845.97,0.785139, 0, 0,2.21342, 0, 0),
(57066,19,2472.31,6852.77,0.651933, 0, 0,2.65717, 0, 0),
(57066,20,2459.43,6857.18,0.786393, 0, 0,2.73571, 0, 0);
-- #84127
DELETE FROM creature_addon WHERE guid = 84127;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(84127,0,1,1,0,0,0,NULL);  -- individual
-- #57061
UPDATE creature SET equipment_id = 592, position_x = 2482.245117, position_y = 6743.026855, position_z = 6.292319, orientation = 5.689773 WHERE guid = 57061;
DELETE FROM creature_addon WHERE guid = 57061;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(57061,0,0,1,0,27,0,NULL);  -- individual
-- #57060
UPDATE creature SET equipment_id = 525, position_x = 2454.534912, position_y = 6767.269043, position_z = 6.639989, orientation = 4.258604 WHERE guid = 57060;
DELETE FROM creature_addon WHERE guid = 57060;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(57060,0,0,1,0,234,0,NULL);  -- individual
-- #84128
UPDATE creature SET equipment_id = 525 WHERE guid = 84128;
DELETE FROM creature_addon WHERE guid = 84128;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(84128,0,0,1,0,69,0,NULL);  -- individual
-- #57070
UPDATE creature SET equipment_id = 525, position_x = 2922.084961, position_y = 6740.190918, position_z = 13.658784, orientation = 4.764749 WHERE guid = 57070;
DELETE FROM creature_addon WHERE guid = 57070;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(57070,0,0,1,0,27,0,NULL);  -- individual
-- #110291
UPDATE creature SET equipment_id = 594, orientation = 3.874631 WHERE guid = 110291;
DELETE FROM creature_addon WHERE guid = 110291;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(110291,0,0,1,0,27,0,NULL);  -- individual
-- #110286
UPDATE creature SET equipment_id = 590 WHERE guid = 110286;
DELETE FROM creature_addon WHERE guid = 110286;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(110286,0,0,1,0,69,0,NULL);  -- individual
-- #110293
DELETE FROM creature_addon WHERE guid = 110293;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(110293,0,0,1,0,27,0,NULL);  -- individual
-- #110298
UPDATE creature SET equipment_id = 591, spawndist = 0, MovementType = 2 WHERE guid = 110298;
DELETE FROM creature_movement WHERE id = 110298;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(110298,1,2941.93,6812.23,6.81786, 0, 0,0.787534, 0, 0),
(110298,2,2948.96,6817.56,5.39133, 0, 0,0.196129, 0, 0),
(110298,3,2957.46,6817.58,4.88896, 0, 0,5.42767, 0, 0),
(110298,4,2962.71,6811.43,5.56925,10000, 2549601,3.37945, 0, 0),
(110298,5,2962.23,6800.14,6.39456, 0, 0,4.37269, 0, 0),
(110298,6,2957.23,6793.99,6.84955, 0, 0,3.80721, 0, 0),
(110298,7,2947.78,6793.53,7.08361, 0, 0,2.84117, 0, 0),
(110298,8,2942.1,6798.76,7.1646, 0, 0,2.04007, 0, 0),
(110298,9,2940.27,6807.79,6.80907, 0, 0,1.52956, 0, 0),
(110298,10,2948.4,6815.86,5.69612, 0, 0,0.327898, 0, 0),
(110298,11,2960.56,6815.09,5.19457, 0, 0,5.62149, 0, 0),
(110298,12,2964.1,6803.25,6.08544, 0, 0,4.56514, 0, 0),
(110298,13,2959.31,6795.34,6.94201, 0, 0,3.86221, 0, 0),
(110298,14,2951.07,6792.81,6.74749, 0, 0,3.1632, 0, 0),
(110298,15,2940.85,6796.72,7.52682, 0, 0,2.15004, 0, 0),
(110298,16,2940.43,6802.82,6.80983, 10000, 2549601,6.19091, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2549601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2549601,2,15,45667,0,0,0,0 | 0x08,0,0,0,0,0,0,0,0,''),
(2549601,5,1,53,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- targets for 45667
DELETE FROM spell_script_target WHERE entry = 45667;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45667, 1, 25242, 0),
(45667, 1, 25243, 0),
(45667, 1, 25275, 0);
-- #84129
UPDATE creature SET equipment_id = 593, spawndist = 0, MovementType = 2 WHERE guid = 84129;
DELETE FROM creature_movement WHERE id = 84129;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(84129,1,2922.64,6872.97,1.6273, 0, 0,4.74358, 0, 0),
(84129,2,2919.75,6911.47,1.91884, 0, 0,1.65304, 0, 0);
-- #84130
UPDATE creature SET equipment_id = 591 WHERE guid = 84130;
DELETE FROM creature_addon WHERE guid = 84130;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(84130,0,1,1,0,0,0,NULL);  -- individual
-- #110289
UPDATE creature SET equipment_id = 590 WHERE guid = 110289;
DELETE FROM creature_addon WHERE guid = 110289;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(110289,0,0,1,0,27,0,NULL);  -- individual
-- #110295
UPDATE creature SET equipment_id = 591 WHERE guid = 110295;
DELETE FROM creature_addon WHERE guid = 110295;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(110295,0,0,1,0,69,0,NULL);  -- individual
-- #110299
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 110299;
DELETE FROM creature_movement WHERE id = 110299;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(110299,1,3012.57,6702.13,13.1336, 30000, 2549602,4.58446, 0, 0),
(110299,2,3017.11,6709.98,12.4855, 10000, 0,0.778251, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2549602;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2549602,3,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2549602,6,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2549602,23,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2549602,24,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
-- #110292
UPDATE creature SET equipment_id = 594 WHERE guid = 110292;
DELETE FROM creature_addon WHERE guid = 110292;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(110292,0,0,1,0,69,0,NULL);  -- individual
-- #110294
UPDATE creature SET equipment_id = 525, spawndist = 0, MovementType = 2 WHERE guid = 110294;
DELETE FROM creature_movement WHERE id = 110294;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(110294,1,3098.28,6675.45,7.17692, 0, 0,1.86657, 0, 0),
(110294,2,3090.55,6685.74,5.81934, 0, 0,2.34566, 0, 0),
(110294,3,3072.94,6702.64,5.35951, 0, 0,2.38493, 0, 0),
(110294,4,3051.66,6718.56,6.28284, 0, 0,2.64019, 0, 0),
(110294,5,3032.65,6727.71,6.35829, 0, 0,3.4735, 0, 0),
(110294,6,3026.24,6723.73,8.55757, 0, 0,3.90939, 0, 0),
(110294,7,3022.5,6719.33,10.4858, 0, 0,4.0704, 0, 0),
(110294,8,3026,6723.71,8.60054, 0, 0,0.665696, 0, 0),
(110294,9,3032.93,6727.31,6.4156, 0, 0,6.14134, 0, 0),
(110294,10,3048.28,6722.25,5.80666, 0, 0,5.69983, 0, 0),
(110294,11,3073.62,6701.81,5.33805, 0, 0,5.5349, 0, 0),
(110294,12,3081.57,6694.43,5.43363, 0, 0,5.5349, 0, 0),
(110294,13,3093.54,6682.37,6.30896, 0, 0,5.32284, 0, 0),
(110294,14,3097.62,6675.71,7.20786, 0, 0,4.88303, 0, 0),
(110294,15,3097.67,6668.54,8.14377, 0, 0,4.40787, 0, 0),
(110294,16,3095.36,6661.26,9.65593, 0, 0,4.34504, 0, 0);
-- #110300
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 110300;
DELETE FROM creature_movement WHERE id = 110300;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(110300,1,3021.02,6741.91,6.52581, 0, 0,2.38241, 0, 0),
(110300,2,3010.48,6749.3,7.23272, 0, 0,2.58268, 0, 0),
(110300,3,2997.03,6758.48,7.91925, 0, 0,2.50807, 0, 0),
(110300,4,2979.1,6771.22,9.39447, 0, 0,2.4099, 0, 0),
(110300,5,2958.44,6787.6,7.43629, 0, 0,2.5552, 0, 0),
(110300,6,2939.15,6803.17,6.86939, 0, 0,2.39026, 0, 0),
(110300,7,2925.54,6814.19,6.82912, 0, 0,2.78296, 0, 0),
(110300,8,2913.82,6815.91,6.38716, 0, 0,3.02644, 0, 0),
(110300,9,2877.1,6820.96,3.6667, 2000, 0,2.99895, 0, 0),
(110300,10,2901.19,6817.25,5.75057, 0, 0,6.1209, 0, 0),
(110300,11,2926.57,6813.61,6.94207, 0, 0,5.64574, 0, 0),
(110300,12,2943.04,6799.52,7.02637, 0, 0,5.56327, 0, 0),
(110300,13,2960.98,6785.61,7.67487, 0, 0,5.62218, 0, 0),
(110300,14,2982.01,6768.89,9.38448, 0, 0,5.65752, 0, 0),
(110300,15,3001.97,6755.08,7.50181, 0, 0,5.68501, 0, 0),
(110300,16,3020.92,6741.82,6.54304, 0, 0,5.524, 0, 0),
(110300,17,3034.79,6725.14,6.59117, 0, 0,5.32373, 0, 0),
(110300,18,3043.52,6716.58,7.57515, 0, 0,5.68108, 0, 0),
(110300,19,3049.68,6715.08,7.27599, 0, 0,5.55777, 0, 0),
(110300,20,3053.17,6705.27,8.99453, 0, 0,5.18942, 0, 0),
(110300,21,3058.16,6699.36,8.85578, 0, 0,5.37006, 0, 0),
(110300,22,3052.55,6708.17,8.54366, 0, 0,1.94572, 0, 0),
(110300,23,3050.15,6714.6,7.34291, 0, 0,2.33842, 0, 0),
(110300,24,3041.72,6717.97,7.5574, 0, 0,2.37848, 0, 0),
(110300,25,3034.36,6725.98,6.47755, 0, 0,2.22847, 0, 0);
-- #110296
UPDATE creature SET equipment_id = 590, spawndist = 0, MovementType = 2 WHERE guid = 110296;
DELETE FROM creature_movement WHERE id = 110296;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(110296,1,2941.75,6729.29,14.6162, 0, 0,3.05395, 0, 0),
(110296,2,2931.91,6733.65,14.5301, 0, 0,1.93397, 0, 0),
(110296,3,2930.31,6747.69,13.4875, 0, 0,1.58054, 0, 0),
(110296,4,2932.82,6761.23,11.6047, 0, 0,1.19569, 0, 0),
(110296,5,2937.71,6779.43,9.30927, 0, 0,1.65515, 0, 0),
(110296,6,2932.22,6798.61,7.88517, 0, 0,1.88685, 0, 0),
(110296,7,2925.36,6814.17,6.82045, 0, 0,2.33845, 0, 0),
(110296,8,2902.12,6828.92,3.98589, 0, 0,2.42092, 0, 0),
(110296,9,2892.15,6839.71,2.37431, 0, 0,2.14995, 0, 0),
(110296,10,2884.04,6851.39,0.685719, 0, 0,2.06356, 0, 0),
(110296,11,2881.91,6859.7,0.675131, 0, 0,1.55698, 0, 0),
(110296,12,2884.33,6869.09,0.670529, 0, 0,0.760584, 0, 0),
(110296,13,2889.94,6872.86,0.650953, 0, 0,0.165252, 0, 0),
(110296,14,2908.76,6868.07,0.650953, 0, 0,5.7785, 0, 0),
(110296,15,2916.97,6863.59,0.727685, 0, 0,5.20749, 0, 0),
(110296,16,2920.29,6857.98,0.681858, 0, 0,5.68736, 0, 0),
(110296,17,2947.26,6842.71,0.682922, 0, 0,5.79202, 0, 0),
(110296,18,2970.27,6829.54,4.46176, 10000, 2549601,0.683005, 0, 0),
(110296,19,2992.89,6814.96,4.17031, 0, 0,5.12444, 0, 0),
(110296,20,3001.42,6795.31,4.43453, 0, 0,5.04197, 0, 0),
(110296,21,3004.41,6782.58,5.25466, 0, 0,4.83777, 0, 0),
(110296,22,3007.1,6770.66,6.82959, 0, 0,5.26188, 0, 0),
(110296,23,3025.14,6759.76,4.98861, 0, 0,5.41504, 0, 0),
(110296,24,3032.16,6744.36,5.52596, 0, 0,5.14015, 0, 0),
(110296,25,3038.13,6734.41,5.21797, 0, 0,5.62709, 0, 0),
(110296,26,3054.81,6723.31,5.7037, 0, 0,4.69641, 0, 0),
(110296,27,3051.86,6711.61,7.80472, 0, 0,3.78928, 0, 0),
(110296,28,3047.26,6709.79,8.853, 0, 0,3.0942, 0, 0),
(110296,29,3041.51,6710.88,9.22592, 0, 0,2.4753, 0, 0),
(110296,30,3023.42,6725.17,9.12107, 0, 0,2.03155, 0, 0),
(110296,31,3019.21,6731.05,9.72569, 0, 0,2.51143, 0, 0),
(110296,32,3005.1,6740.62,9.88448, 0, 0,2.67637, 0, 0),
(110296,33,2988.33,6747.19,9.96448, 0, 0,2.96304, 0, 0),
(110296,34,2977.32,6747.23,11.8005, 0, 0,3.38715, 0, 0),
(110296,35,2963.23,6742.76,12.1727, 0, 0,3.4814, 0, 0);
-- #57071
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 57071;
-- #57059 
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 57059;
DELETE FROM creature_movement WHERE id = 57059;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(57059,1,2430.68,6718.88,6.51284, 0, 0,0.388856, 0, 0),
(57059,2,2454.72,6721.72,5.58917, 0, 0,0.48703, 0, 0),
(57059,3,2465.09,6735.47,6.3643, 0, 0,0.887583, 0, 0),
(57059,4,2475.53,6748.48,6.96769, 0, 0,0.738358, 0, 0),
(57059,5,2500.41,6769.93,5.89244, 0, 0,1.01325, 0, 0),
(57059,6,2516.6,6796.28,3.60927, 0, 0,0.903291, 0, 0),
(57059,7,2532.22,6817.9,0.785526, 0, 0,0.867949, 0, 0),
(57059,8,2546.78,6838.25,0.785526, 0, 0,1.21352, 0, 0),
(57059,9,2548.83,6847.15,0.778024, 2000, 0,1.47039, 0, 0),
(57059,10,2546.49,6838.05,0.784948, 0, 0,4.15959, 0, 0),
(57059,11,2538.81,6826.61,0.784948, 0, 0,3.97581, 0, 0),
(57059,12,2527.74,6816.7,0.784948, 0, 0,4.01508, 0, 0),
(57059,13,2516.89,6800.08,3.21609, 0, 0,4.1643, 0, 0),
(57059,14,2505.6,6784.23,5.25974, 0, 0,3.88156, 0, 0),
(57059,15,2491.48,6770.88,5.80314, 0, 0,3.70878, 0, 0),
(57059,16,2480.05,6761.75,6.43068, 0, 0,3.2611, 0, 0),
(57059,17,2461.03,6773.94,6.36925, 0, 0,2.17331, 0, 0),
(57059,18,2448.65,6787.37,5.97813, 0, 0,3.32395, 0, 0),
(57059,19,2432.9,6774.61,5.53997, 0, 0,3.79471, 0, 0),
(57059,20,2418.49,6762.94,2.42447, 0, 0,4.31228, 0, 0),
(57059,21,2414.68,6747.37,1.72258, 0, 0,4.5801, 0, 0),
(57059,22,2412.63,6729.14,2.67653, 0, 0,4.65863, 0, 0),
(57059,23,2411.07,6696.46,7.32662, 0, 0,5.80295, 0, 0);
-- #57057
UPDATE creature SET equipment_id = 525, position_x = 2427.855957, position_y = 6736.025879, position_z = 3.783504, orientation = 0.8901179, spawndist = 0, MovementType = 0 WHERE guid = 57057;
DELETE FROM creature_addon WHERE guid = 57057;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(57057,0,0,1,0,234,0,NULL);  -- individual
-- #57058
UPDATE creature SET equipment_id = 525, position_x = 2430.875977, position_y = 6760.623047, position_z = 4.509389, orientation = 5.462881, spawndist = 0, MovementType = 0 WHERE guid = 57058;
DELETE FROM creature_addon WHERE guid = 57058;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(57058,0,0,1,0,234,0,NULL);  -- individual
-- #57055
UPDATE creature SET equipment_id = 593, position_x = 2445.123047, position_y = 6694.852051, position_z = 19.728373, orientation = 5.201081, spawndist = 0, MovementType = 0 WHERE guid = 57055;
DELETE FROM creature_addon WHERE guid = 57055;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(57055,0,0,1,0,27,0,NULL);  -- individual
-- #57056
UPDATE creature SET equipment_id = 525, position_x = 2394.644043, position_y = 6722.360840, position_z = 1.429463, orientation = 2.443461, spawndist = 0, MovementType = 0 WHERE guid = 57056;
DELETE FROM creature_addon WHERE guid = 57056;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(57056,0,0,1,0,234,0,NULL);  -- individual
-- #57062
UPDATE creature SET equipment_id = 525, position_x = 2389.451904, position_y = 6831.725098, position_z = 1.063403, orientation = 2.042035, spawndist = 0, MovementType = 0 WHERE guid = 57062;
DELETE FROM creature_addon WHERE guid = 57062;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(57062,0,0,1,0,69,0,NULL);  -- individual
-- #57064
UPDATE creature SET equipment_id = 525, position_x = 2398.532959, position_y = 6861.641113, position_z = 1.208818, orientation = 5.375614, spawndist = 0, MovementType = 0 WHERE guid = 57064;
DELETE FROM creature_addon WHERE guid = 57064;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(57064,0,0,1,0,234,0,NULL);  -- individual
-- #57054
UPDATE creature SET equipment_id = 594, position_x = 2409.111084, position_y = 6671.806152, position_z = 18.952681, orientation = 5.707227, spawndist = 0, MovementType = 0 WHERE guid = 57054;
DELETE FROM creature_addon WHERE guid = 57054;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(57054,0,0,1,0,27,0,NULL);  -- individual

-- Kvaldir Mistweaver
UPDATE creature_template SET InhabitType = 3 WHERE entry = 25479;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25479); 
DELETE FROM creature_template_addon WHERE entry = 25479;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(25479,0,0,1,0,0,0,45658);
-- #57052
UPDATE creature SET position_x = 2928.251953, position_y = 6768.493164, position_z = 10.798268, orientation = 0.06981317, spawndist = 0, MovementType = 0 WHERE guid = 57052;
-- #57048
UPDATE creature SET position_x = 2955.289063, position_y = 6867.646973, position_z = 0.647074, orientation = 1.32645, spawndist = 0, MovementType = 0 WHERE guid = 57048;
-- #57051
UPDATE creature SET position_x = 2945.754883, position_y = 6747.811035, position_z = 12.334637, orientation = 1.48353, spawndist = 0, MovementType = 0 WHERE guid = 57051;
-- #57049
UPDATE creature SET position_x = 2994.314941, position_y = 6847.702148, position_z = 4.030006, orientation = 0.9773844, spawndist = 0, MovementType = 0 WHERE guid = 57049;
-- #57050
UPDATE creature SET position_x = 3006.967041, position_y = 6808.356934, position_z = 1.501855, orientation = 0.6632251, spawndist = 0, MovementType = 0 WHERE guid = 57050;
-- #57053
UPDATE creature SET position_x = 2983.000977, position_y = 6708.738770, position_z = 23.387211, orientation = 4.049164, spawndist = 0, MovementType = 0 WHERE guid = 57053;
-- #108090
UPDATE creature SET position_x = 3080.667969, position_y = 6736.379883, position_z = 0.754203, orientation = 0.7330383, spawndist = 0, MovementType = 0 WHERE guid = 108090;
-- #108092
UPDATE creature SET position_x = 3127.373047, position_y = 6699.334961, position_z = 0.683067, orientation = 0.6108652, spawndist = 0, MovementType = 0 WHERE guid = 108092;
-- #57044
UPDATE creature SET position_x = 2555.111084, position_y = 6888.475098, position_z = -0.437868, orientation = 1.169371, spawndist = 0, MovementType = 0 WHERE guid = 57044;
-- #57045
UPDATE creature SET position_x = 2576.876953, position_y = 6901.295898, position_z = -0.460124, orientation = 3.403392, spawndist = 0, MovementType = 0 WHERE guid = 57045;
-- #57046
UPDATE creature SET position_x = 2556.409912, position_y = 6915.503906, position_z = -0.815911, orientation = 4.834562, spawndist = 0, MovementType = 0 WHERE guid = 57046;
-- #57036
UPDATE creature SET position_x = 2435.520020, position_y = 6790.433105, position_z = 5.548765, orientation = 2.722714, spawndist = 0, MovementType = 0 WHERE guid = 57036;
-- #57035
UPDATE creature SET position_x = 2410.760010, position_y = 6802.041992, position_z = 2.230152, orientation = 6.161012, spawndist = 0, MovementType = 0 WHERE guid = 57035;
-- #57034
UPDATE creature SET position_x = 2375.034912, position_y = 6768.880859, position_z = -2.867187, orientation = 3.089233, spawndist = 0, MovementType = 0 WHERE guid = 57034;
-- #108088
UPDATE creature SET position_x = 2347.168945, position_y = 6703.934082, position_z = -0.992477, orientation = 3.351032, spawndist = 0, MovementType = 0 WHERE guid = 108088;
-- #57042
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 57042;
DELETE FROM creature_movement WHERE id = 57042;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(57042,1,2487.23,6898.15,-0.459927, 0, 0,0.718031, 0, 0),
(57042,2,2496.9,6915.99,-0.528836, 0, 0,1.22461, 0, 0),
(57042,3,2502.06,6939.37,-1.08679, 0, 0,1.13822, 0, 0),
(57042,4,2517.22,6956.41,-1.08793, 0, 0,0.710177, 0, 0),
(57042,5,2533.73,6975.86,-1.08793, 0, 0,2.05321, 0, 0),
(57042,6,2515.38,6989.23,-1.08793, 0, 0,2.72387, 0, 0),
(57042,7,2492.89,6998.72,-1.08793, 0, 0,2.86524, 0, 0),
(57042,8,2473.28,7003.76,-1.08701, 0, 0,3.23831, 0, 0),
(57042,9,2441.43,7000.24,-1.08868, 0, 0,3.68598, 0, 0),
(57042,10,2422.64,6983.87,-1.08868, 0, 0,4.15722, 0, 0),
(57042,11,2408.09,6955.97,-1.08868, 0, 0,4.60097, 0, 0),
(57042,12,2407.5,6931.53,-1.08868, 0, 0,4.76982, 0, 0),
(57042,13,2409.12,6909.71,-0.467219, 0, 0,5.51987, 0, 0),
(57042,14,2422.97,6896.09,-0.460354, 0, 0,6.01466, 0, 0),
(57042,15,2454.21,6889.67,-0.460354, 0, 0,6.18352, 0, 0);

-- Warsong Blacksmith
UPDATE creature_addon SET bytes1 = 0, auras = 29266 WHERE guid = 113654;
UPDATE creature SET spawndist = 0, MovementType = 0, DeathState = 0 WHERE guid = 113654;
-- Warsong Battleguard
UPDATE creature_addon SET bytes1 = 0, auras = 29266 WHERE guid = 110371;
UPDATE creature SET spawndist = 0, MovementType = 0, DeathState = 0 WHERE guid = 110371;