-- Storm Peaks: Terrace of the Makers - part 1

-- See Quest Invisibility 1
-- Part with Thorim at Terrace of the Makers
DELETE FROM spell_area WHERE spell = 54502 AND area = 4446;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(54502,4446,0,0,0,21098,0,0,2,1); -- it may have end part
DELETE FROM conditions WHERE condition_entry BETWEEN 21096 AND 21098;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES
(21096,9,13057,0,0,0,0),
(21097,8,13057,0,0,0,0),
(21098,-2,21097,21096,0,0,0);

-- c.30295 Thorim
DELETE FROM creature_addon WHERE guid = 532842;
DELETE FROM creature_movement WHERE Id = 532842;
DELETE FROM game_event_creature WHERE guid = 532842;
DELETE FROM game_event_creature_data WHERE guid = 532842;
DELETE FROM creature_battleground WHERE guid = 532842;
DELETE FROM creature_linking WHERE guid = 532842
OR master_guid = 532842;
DELETE FROM creature WHERE guid = 532842;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(532842,30295,571,1,1,7762.389,-2159.5159,1233.4087,1.535889744758605957,180,180,0,0);
DELETE FROM creature_template_addon WHERE entry IN (30295);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(30295,0,0,1,0,0,0,'54500');
UPDATE creature_template SET UnitClass = 1, StaticFlags1 = 2147483648, MinLevel = 82, MaxLevel = 82, SpeedWalk = 2.5/2.5, SpeedRun = 6.666669845581054687/7.0, Faction = 35, UnitFlags = 0, EquipmentTemplateId = 1844, Expansion = 2, MovementType = 0 WHERE entry IN (30295);

-- c.29746 Databank
DELETE FROM creature_addon WHERE guid IN (527910,527911);
DELETE FROM creature_movement WHERE Id IN (527910,527911);
DELETE FROM game_event_creature WHERE guid IN (527910,527911);
DELETE FROM game_event_creature_data WHERE guid IN (527910,527911);
DELETE FROM creature_battleground WHERE guid IN (527910,527911);
DELETE FROM creature_linking WHERE guid IN (527910,527911)
OR master_guid IN (527910,527911);
DELETE FROM creature WHERE guid IN (527910,527911);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(527910,29746,571,1,1,8136.4707,-806.0868,963.00226,3.996803998947143554,300,300,0,0),
(527911,29746,571,1,1,8100.8228,-899.34247,961.3588,3.211405754089355468,300,300,0,0);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 29746;

-- c.29752 Databank Core
DELETE FROM creature_addon WHERE guid IN (527912,527913);
DELETE FROM creature_movement WHERE Id IN (527912,527913);
DELETE FROM game_event_creature WHERE guid IN (527912,527913);
DELETE FROM game_event_creature_data WHERE guid IN (527912,527913);
DELETE FROM creature_battleground WHERE guid IN (527912,527913);
DELETE FROM creature_linking WHERE guid IN (527912,527913)
OR master_guid IN (527912,527913);
DELETE FROM creature WHERE guid IN (527912,527913);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(527912,29752,571,1,1,8100.8413,-899.3507,961.3588,0,300,300,0,0),
(527913,29752,571,1,1,8136.489,-806.11285,963.00226,0,300,300,0,0);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 29752;
UPDATE creature_template SET InhabitType = 4, MovementType = 0 WHERE entry = 29752;

-- c.29806 SCRAP-E
UPDATE creature SET position_x = 7991.138, position_y = -842.72076, position_z = 968.33386, orientation = 2.059488534927368164, spawndist = 0, MovementType = 0 WHERE id = 29806;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 29806);
DELETE FROM creature_template_addon WHERE entry IN (29806);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(29806,0,1,1,0,0,0,NULL);

-- c.29724 Library Guardian
DELETE FROM creature_addon WHERE guid IN (527914,527915,527916,527966,527967,527968,527969,527970,527971);
DELETE FROM creature_movement WHERE Id IN (527914,527915,527916,527966,527967,527968,527969,527970,527971);
DELETE FROM game_event_creature WHERE guid IN (527914,527915,527916,527966,527967,527968,527969,527970,527971);
DELETE FROM game_event_creature_data WHERE guid IN (527914,527915,527916,527966,527967,527968,527969,527970,527971);
DELETE FROM creature_battleground WHERE guid IN (527914,527915,527916,527966,527967,527968,527969,527970,527971);
DELETE FROM creature_linking WHERE guid IN (527914,527915,527916,527966,527967,527968,527969,527970,527971)
OR master_guid IN (527914,527915,527916,527966,527967,527968,527969,527970,527971);
DELETE FROM creature WHERE guid IN (527914,527915,527916,527966,527967,527968,527969,527970,527971);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(527914,29724,571,1,1,8378.93,-1029.4607,907.96497,0.01745329238474369,300,300,0,0),
(527915,29724,571,1,1,8378.701,-978.7164,909.21423,6.248278617858886718,300,300,0,0),
(527916,29724,571,1,1,8282.92,-1122.08,927.539,0,300,300,15,1),
(527966,29724,571,1,1,8237.459,-1133.4996,929.88434,0,300,300,15,1),
(527967,29724,571,1,1,8328,-1127.43,923.877,0,300,300,15,1),
(527968,29724,571,1,1,8155.28,-1105.64,923.874,0,300,300,15,1),
(527969,29724,571,1,1,8189.47,-1138.72,926.507,0,300,300,15,1),
(527970,29724,571,1,1,8323.99,-1180.75,926.035,0,300,300,15,1),
(527971,29724,571,1,1,8147.88,-1137.01,926.77,0,300,300,15,1);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 29724);
DELETE FROM creature_template_addon WHERE entry IN (29724);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(29724,9474,0,1,0,0,0,NULL);
UPDATE creature SET position_x = 8171.3306, position_y = -794.3757, position_z = 958.8041, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 526188; -- linear
UPDATE creature SET position_x = 8112.158, position_y = -927.5685, position_z = 957.5719, orientation = 0, spawndist = 10, MovementType = 1 WHERE guid = 526191;
UPDATE creature SET position_x = 8083.138, position_y = -848.2091, position_z = 971.74176, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 526202; -- linear
UPDATE creature SET position_x = 8170.6978, position_y = -882.9057, position_z = 955.74207, orientation = 1.48352980613708496, spawndist = 0, MovementType = 0 WHERE guid = 526184;
UPDATE creature SET position_x = 8175.269, position_y = -861.15515, position_z = 956.1461, orientation = 4.485496044158935546, spawndist = 0, MovementType = 0 WHERE guid = 526185;
UPDATE creature SET position_x = 8120.76, position_y = -911.662, position_z = 955.659, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 526186;
UPDATE creature SET position_x = 8117.5522, position_y = -838.9881, position_z = 957.31305, orientation = 6.230825424194335937, spawndist = 0, MovementType = 0 WHERE guid = 526187;
UPDATE creature SET position_x = 8187.4897, position_y = -805.47144, position_z = 958.1212, orientation = 4.660028934478759765, spawndist = 0, MovementType = 0 WHERE guid = 526189;
UPDATE creature SET position_x = 8168.096, position_y = -895.86896, position_z = 956.47864, orientation = 4.433136463165283203, spawndist = 0, MovementType = 0 WHERE guid = 526190;
UPDATE creature SET position_x = 8178.8037, position_y = -848.55145, position_z = 957.1109, orientation = 1.431169986724853515, spawndist = 0, MovementType = 0 WHERE guid = 526192;
UPDATE creature SET position_x = 8139.2554, position_y = -924.4198, position_z = 955.74207, orientation = 0.436332315206527709, spawndist = 0, MovementType = 0 WHERE guid = 526193;
UPDATE creature SET position_x = 8146.692, position_y = -814.55664, position_z = 955.95953, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 526194;
UPDATE creature SET position_x = 8165.3726, position_y = -812.071, position_z = 955.74207, orientation = 5.044001579284667968, spawndist = 0, MovementType = 0 WHERE guid = 526195;
UPDATE creature SET position_x = 8110.1226, position_y = -871.21625, position_z = 957.133, orientation = 6.126105785369873046, spawndist = 0, MovementType = 0 WHERE guid = 526196;
UPDATE creature SET position_x = 8058.8345, position_y = -854.98364, position_z = 971.8231, orientation = 0.628318548202514648, spawndist = 0, MovementType = 0 WHERE guid = 526197;
UPDATE creature SET position_x = 8064.0767, position_y = -831.6815, position_z = 971.8231, orientation = 5.427973747253417968, spawndist = 0, MovementType = 0 WHERE guid = 526198;
UPDATE creature SET position_x = 8190.3604, position_y = -737.6682, position_z = 926.8375, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 526199; -- linear
UPDATE creature SET position_x = 8233.503, position_y = -904.1147, position_z = 924.07745, orientation = 6.143558979034423828, spawndist = 0, MovementType = 0 WHERE guid = 526200;
UPDATE creature SET position_x = 8145.3604, position_y = -992.7884, position_z = 930.5936, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 526201; -- linear
UPDATE creature SET position_x = 8217.661, position_y = -947.25195, position_z = 924.0034, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 526203;
UPDATE creature SET position_x = 8234.901, position_y = -965.6941, position_z = 923.874, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 526204;
UPDATE creature SET position_x = 8283.687, position_y = -868.0722, position_z = 923.874, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 526205;
UPDATE creature SET position_x = 8274.32, position_y = -810.01, position_z = 923.874, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 526206;
UPDATE creature SET position_x = 8265.9375, position_y = -834.38824, position_z = 923.874, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 526207;
UPDATE creature SET position_x = 8264.218, position_y = -771.68274, position_z = 923.874, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 526208;
UPDATE creature SET position_x = 8225.41, position_y = -706.701, position_z = 926.275, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 526209;
UPDATE creature SET position_x = 8193.645, position_y = -697.6581, position_z = 928.6335, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 526210; -- linear
UPDATE creature SET position_x = 8262.36, position_y = -719.086, position_z = 924.264, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 526211;
UPDATE creature SET position_x = 8281.44, position_y = -735.515, position_z = 924.811, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 526212;
UPDATE creature SET position_x = 8310.272, position_y = -813.7907, position_z = 924.59924, orientation = 4.729842185974121093, spawndist = 0, MovementType = 0 WHERE guid = 526213;
UPDATE creature SET position_x = 8311.943, position_y = -909.5188, position_z = 923.95734, orientation = 1.710422635078430175, spawndist = 0, MovementType = 0 WHERE guid = 526214;
UPDATE creature SET position_x = 8319.946, position_y = -950.6236 , position_z = 923.95734, orientation = 4.799655437469482421, spawndist = 0, MovementType = 0 WHERE guid = 526215;
UPDATE creature SET position_x = 8269.34, position_y = -961.4213, position_z = 923.95734, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 526216;
UPDATE creature SET position_x = 8278.27, position_y = -943.735, position_z = 923.875, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 526217;
UPDATE creature SET position_x = 8293.651, position_y = -995.1488, position_z = 923.874, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 526218;
UPDATE creature SET position_x = 8332.812, position_y = -965.4884, position_z = 924.3306, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 526219; -- linear
UPDATE creature SET position_x = 8271.14, position_y = -1037, position_z = 923.874, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 526220;
UPDATE creature SET position_x = 8240.531, position_y = -870.07477, position_z = 925.8997, orientation = 6.038839340209960937, spawndist = 0, MovementType = 0 WHERE guid = 526221;
UPDATE creature SET position_x = 8195.23, position_y = -1028.33, position_z = 923.874, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 526222;
UPDATE creature SET position_x = 8191.82, position_y = -1076.37, position_z = 923.874, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 526223;
DELETE FROM creature_movement WHERE id IN (526188,526202,526199,526201,526210,526219);
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- 526188
(526188,1,8171.3306,-794.3757,958.8041,100,1000,0),
(526188,2,8162.144,-793.1456,958.91266,100,0,0),
(526188,3,8148.7534,-792.6301,958.4941,100,0,0),
(526188,4,8135.5493,-803.8393,959.04755,100,0,0),
(526188,5,8123.9062,-805.50684,959.0136,100,0,0),
(526188,6,8112.2915,-799.7026,960.48596,100,0,0),
(526188,7,8100.1963,-797.7119,962.3136,100,1000,0),
-- 526202
(526202,1,8083.138,-848.2091,971.74176,100,1000,0),
(526202,2,8088.299,-849.2833,970.79913,100,0,0),
(526202,3,8094.1157,-850.8065,967.07184,100,0,0),
(526202,4,8102.828,-852.83844,961.82697,100,0,0),
(526202,5,8111.458,-854.6922,956.37866,100,0,0),
(526202,6,8121.828,-857.1643,956.35156,100,0,0),
(526202,7,8134.4707,-860.50684,955.6382,100,1000,0),
-- 526199
(526199,1,8190.3604,-737.6682,926.8375,100,1000,0),
(526199,2,8202.859,-741.9821,926.8217,100,0,0),
(526199,3,8212.057,-751.2521,925.7616,100,0,0),
(526199,4,8219.107,-762.31964,925.9716,100,0,0),
(526199,5,8230.625,-764.6564,925.7374,100,0,0),
(526199,6,8242.505,-768.47974,924.41785,100,0,0),
(526199,7,8244.544,-773.38696,924.68604,100,0,0),
(526199,8,8242.655,-784.89703,925.57275,100,0,0),
(526199,9,8236.297,-799.7946,925.1995,100,0,0),
(526199,10,8232.041,-816.1723,925.6417,100,1000,0),
-- 526201
(526201,1,8145.3604,-992.7884,930.5936,100,1000,0),
(526201,2,8154.479,-994.8468,928.97833,100,0,0),
(526201,3,8163.151,-995.9502,927.4891,100,0,0),
(526201,4,8172.739,-997.916,926.4142,100,0,0),
(526201,5,8179.8813,-1000,926.3583,100,0,0),
(526201,6,8185.416,-999.988,926.07263,100,0,0),
(526201,7,8190.068,-996.3532,925.61835,100,0,0),
(526201,8,8191.798,-987.32855,925.4,100,0,0),
(526201,9,8194.6045,-976.19867,926.28784,100,0,0),
(526201,10,8197.583,-964.4847,927.8344,100,0,0),
(526201,11,8199.572,-949.27094,926.1637,100,0,0),
(526201,12,8201.841,-936.0269,927.08167,100,1000,0),
-- 526210
(526210,1,8193.645,-697.6581,928.6335,100,1000,0),
(526210,2,8211.841,-696.60114,926.84436,100,0,0),
(526210,3,8230.829,-690.6921,927.3327,100,0,0),
(526210,4,8245.974,-685.1829,926.75366,100,0,0),
(526210,5,8260.629,-694.13293,924.32556,100,0,0),
(526210,6,8274.278,-708.2596,923.874,100,0,0),
(526210,7,8283.163,-718.8153,923.8937,100,0,0),
(526210,8,8294.966,-737.15314,925.6896,100,0,0),
(526210,9,8300.865,-747.65704,925.30945,100,0,0),
(526210,10,8304.676,-756.04407,925.1627,100,0,0),
(526210,11,8307.073,-762.2387,925.19824,100,1000,0),
-- 526219
(526219,1,8332.812,-965.4884,924.3306,100,1000,0),
(526219,2,8328.767,-974.4223,924.0906,100,0,0),
(526219,3,8322.732,-987.85004,923.874,100,0,0),
(526219,4,8319.465,-1000.203,923.874,100,0,0),
(526219,5,8318.291,-1012.0021,923.874,100,0,0),
(526219,6,8318.046,-1022.6444,923.874,100,0,0),
(526219,7,8317.926,-1035.0238,923.874,100,0,0),
(526219,8,8317.032,-1051.2423,923.874,100,0,0),
(526219,9,8309.171,-1056.7537,923.874,100,0,0),
(526219,10,8296.5205,-1058.193,923.874,100,0,0),
(526219,11,8289.461,-1063.5159,923.874,100,0,0),
(526219,12,8289.499,-1070.7653,923.874,100,1000,0);
DELETE FROM creature_spawn_data WHERE guid IN (
526186,526194,526203,526204,526205,526206,526207,526208,526209,526211,526212,526216,526217,526218,526220,526222,526223,527916,527966,527967,527968,527969,527970,527971);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(526186,80),(526194,80),(526203,80),(526204,80),(526205,80),(526206,80),(526207,80),(526208,80),(526209,80),(526211,80),(526212,80),(526217,80),
(526218,80),(526220,80),(526222,80),(526223,80),(527916,80),(527966,80),(527967,80),(527968,80),(527969,80),(527970,80),(527971,80),(526216,80);
DELETE FROM dbscripts_on_relay WHERE id IN (21270,21271);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21270,1,31,29752,30,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Library Guardian 29724 EAI: search for 29752'),
(21270,100,21,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Library Guardian 29724 EAI: active'),
(21270,101,20,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Library Guardian 29724 EAI: idle'),
(21270,200,37,0,0,6,29752,35,1,0,0,0,0,0,0,0,0,'Part of Library Guardian 29724 EAI: move towards target'),
(21270,5000,1,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Library Guardian 29724 EAI: emote'),
(21270,5100,0,20393,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Library Guardian 29724 EAI: random say'),
(21270,8000,15,55134,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Library Guardian 29724 EAI: cast 55134'),
(21270,18000,3,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Library Guardian 29724 EAI: move spawn point'),
(21270,21000,20,1,15,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Library Guardian 29724 EAI: set wander 15y'),
(21270,21001,21,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Library Guardian 29724 EAI: unactive'),
(21271,0,20,1,15,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Library Guardian 29724 EAI: set wander 15y'),
(21271,1,21,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Library Guardian 29724 EAI: unactive');
DELETE FROM `dbscript_random_templates` WHERE `id`=20393;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(20393,0,30373,0,'Library Guardian 29724 - Random Text 1'),
(20393,0,30374,0,'Library Guardian 29724 - Random Text 2'),
(20393,0,30375,0,'Library Guardian 29724 - Random Text 3'),
(20393,0,30376,0,'Library Guardian 29724 - Random Text 4'),
(20393,0,30377,0,'Library Guardian 29724 - Random Text 5'),
(20393,0,30378,0,'Library Guardian 29724 - Random Text 6');
