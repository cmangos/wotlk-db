-- Snowblind Hills & K3 - Storm Peaks

-- Torseg the Exiled 29350
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 29350);
DELETE FROM creature_template_addon WHERE entry IN (29350);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(29350,0,3,0,0,0,0,NULL);

-- Savage Hill Mystic 29622
DELETE FROM creature_addon WHERE guid IN (520500,520501,520502,520503,520504,520506,524782);
DELETE FROM creature_movement WHERE id IN (520500,520501,520502,520503,520504,520506,524782);
DELETE FROM game_event_creature WHERE guid IN (520500,520501,520502,520503,520504,520506,524782);
DELETE FROM game_event_creature_data WHERE guid IN (520500,520501,520502,520503,520504,520506,524782);
DELETE FROM creature_battleground WHERE guid IN (520500,520501,520502,520503,520504,520506,524782);
DELETE FROM creature_linking WHERE guid IN (520500,520501,520502,520503,520504,520506,524782);
DELETE FROM creature where guid IN (520500,520501,520502,520503,520504,520506,524782);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(520500,29622,571,1,1,6153.221,-335.74414,436.44592,4.101523876190185546,300,300,0,0),
(520501,29622,571,1,1,6132.4106,-343.26282,436.40744,5.044001579284667968,300,300,0,0),
(520502,29622,571,1,1,6109.7734,-306.86514,445.20898,5.602506637573242187,300,300,0,0),
(520503,29622,571,1,1,6116.918,-357.32803,437.50894,5.148721218109130859,300,300,0,0),
(520504,29622,571,1,1,6161.471,-354.33865,436.35562,3.839724302291870117,300,300,0,0),
(520506,29622,571,1,1,6150.6484,-949.6699,396.60327,3.852902650833129882,300,300,0,0);

-- Savage Hill Brute 29623
DELETE FROM creature_addon WHERE guid IN (520508,520509);
DELETE FROM creature_movement WHERE id IN (520508,520509);
DELETE FROM game_event_creature WHERE guid IN (520508,520509);
DELETE FROM game_event_creature_data WHERE guid IN (520508,520509);
DELETE FROM creature_battleground WHERE guid IN (520508,520509);
DELETE FROM creature_linking WHERE guid IN (520508,520509);
DELETE FROM creature where guid IN (520508,520509);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(520508,29623,571,1,1,6140.8433,-365.70886,432.2323,5.11706,300,300,0,0),
(520509,29623,571,1,1,6020.554,-1004.9257,421.63257,0,300,300,7,1);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (525662,525767);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(525662,0,3,0,0,0,0,NULL),
(525767,0,0,0,0,173,0,NULL);
UPDATE creature SET  movementtype = 1, spawndist = 7 WHERE guid = 525758;
UPDATE creature SET position_x = 6290.01, position_y = -682.24805, position_z = 422.43042, movementtype = 4, spawndist = 0 WHERE guid = 525763; -- linear
UPDATE creature SET position_x = 6210.4136, position_y = -620.7528, position_z = 412.69675, movementtype = 4, spawndist = 0 WHERE guid = 525765; -- linear
UPDATE creature SET position_x = 6095.715, position_y = -418.4098, position_z = 418.57074, movementtype = 4, spawndist = 0 WHERE guid = 525772; -- linear
UPDATE creature SET position_x = 6253.041, position_y = -611.3906, position_z = 420.29767, movementtype = 4, spawndist = 0 WHERE guid = 525777; -- linear
UPDATE creature SET position_x = 6121.967, position_y = -880.2802, position_z = 383.96893, movementtype = 1, spawndist = 7 WHERE guid = 524787; -- linear
DELETE FROM creature_movement WHERE id IN (525763,525765,525772,525777);
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- 525763
(525763,1,6290.01,-682.24805,422.43042,100,1000,0),
(525763,2,6274.182,-684.59265,419.41293,100,0,0),
(525763,3,6248.7256,-679.16626,416.96008,100,0,0),
(525763,4,6225.566,-670.26184,414.48788,100,0,0),
-- 525765
(525765,1,6210.4136,-620.7528,412.69675,100,0,0),
(525765,2,6206.6025,-639.7648,412.11945,100,0,0),
(525765,3,6211.904,-661.95996,412.1566,100,1000,0),
-- 525772
(525772,1,6095.715,-418.4098,418.57074,100,1000,0),
(525772,2,6104.3276,-435.91895,413.4201,100,0,0),
(525772,3,6121.758,-444.52017,411.33832,100,0,0),
(525772,4,6137.434,-446.40717,411.83096,100,0,0),
-- 525777
(525777,1,6253.041,-611.3906,420.29767,100,0,0),
(525777,2,6237.213,-609.0156,417.8186,100,0,0),
(525777,3,6220.1543,-613.90155,414.56927,100,1000,0);

-- Savage Hill Scavenger 29404
DELETE FROM creature_addon WHERE guid IN (520510,520511,520512,520513,520996,521005,521011);
DELETE FROM creature_movement WHERE id IN (520510,520511,520512,520513,520996,521005,521011);
DELETE FROM game_event_creature WHERE guid IN (520510,520511,520512,520513,520996,521005,521011);
DELETE FROM game_event_creature_data WHERE guid IN (520510,520511,520512,520513,520996,521005,521011);
DELETE FROM creature_battleground WHERE guid IN (520510,520511,520512,520513,520996,521005,521011);
DELETE FROM creature_linking WHERE guid IN (520510,520511,520512,520513,520996,521005,521011);
DELETE FROM creature where guid IN (520510,520511,520512,520513,520996,521005,521011);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(520510,29404,571,1,1,6088.1245,-361.35757,454.50507,3.600873708724975585,300,300,7,1),
(520511,29404,571,1,1,6103.5254,-378.74405,432.51035,0.78539818525314331,300,300,7,1),
(520512,29404,571,1,1,6055.64,-870.32446,367.01462,0,300,300,7,1),
(520513,29404,571,1,1,6017.478,-893.8104,362.8837,0,300,300,7,1),
(520996,29404,571,1,1,6011.994,-838.32434,353.7024,0,300,300,7,1),
(521005,29404,571,1,1,5985.278,-874.78326,348.70624,0,300,300,7,1),
(521011,29404,571,1,1,6031.1787,-967.2848,404.86975,0.39020,300,300,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (524770,524777,524778,524779,524781);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(524770,0,3,0,0,0,0,NULL),
(524777,0,0,0,0,0,0,29266),
(524778,0,0,0,0,0,0,29266),
(524779,0,0,0,0,0,0,29266),
(524781,0,0,0,0,0,0,29266);
UPDATE creature SET movementtype = 0, spawndist = 0 WHERE guid IN (524777,524778,524779,524781);

-- Ironwool Mammoth 29402
DELETE FROM creature_addon WHERE guid IN (521018,521019,521021);
DELETE FROM creature_movement WHERE id IN (521018,521019,521021);
DELETE FROM game_event_creature WHERE guid IN (521018,521019,521021);
DELETE FROM game_event_creature_data WHERE guid IN (521018,521019,521021);
DELETE FROM creature_battleground WHERE guid IN (521018,521019,521021);
DELETE FROM creature_linking WHERE guid IN (521018,521019,521021);
DELETE FROM creature where guid IN (521018,521019,521021);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(521018,29402,571,1,1,6256.0464,-731.10236,416.8431,0,300,300,10,1),
(521019,29402,571,1,1,6463.512,-1279.3578,465.50757,0,300,300,0,0), -- part of formation
(521021,29402,571,1,1,6463.512,-1279.3578,465.50757,0,300,300,0,0); -- part of formation
UPDATE creature SET position_x = 6343.0825, position_y = -834.2845, position_z = 406.73734, orientation = 5.07891, movementtype = 0, spawndist = 0 WHERE guid = 524757;
UPDATE creature SET position_x = 6463.512, position_y = -1279.3578, position_z = 465.50757, orientation = 0, movementtype = 0, spawndist = 0 WHERE guid = 524753; -- part of formation
UPDATE creature SET position_x = 6463.512, position_y = -1279.3578, position_z = 465.50757, orientation = 0, movementtype = 0, spawndist = 0 WHERE guid = 524767; -- part of formation
UPDATE creature SET position_x = 6463.512, position_y = -1279.3578, position_z = 465.50757, orientation = 0, movementtype = 0, spawndist = 0 WHERE guid = 524768; -- part of formation
-- individual addons
DELETE FROM creature_addon WHERE guid IN (524757);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(524757,0,0,0,0,0,0,29266);
-- Spawn Groups
DELETE FROM `spawn_group` WHERE id = 33000;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33000, 'Storm Peaks - Ironwool Mammoth 29402 x5 - Patrol 1', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 33000;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33000, 524753, 0),
(33000, 524767, 1),
(33000, 524768, 2),
(33000, 521019, 3),
(33000, 521021, 4);
DELETE FROM `spawn_group_formation` WHERE id = 33000;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33000, 4, 8, 0, 33000, 4, 'Storm Peaks - Ironwool Mammoth 29402 x5 - Patrol 1'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 33000;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33000,'Storm Peaks - Ironwool Mammoth 29402 x5 - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId = 33000;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33000,1 ,6463.512,-1279.3578,465.50757,100,1000,0),
(33000,2 ,6440.4946,-1257.4896,452.18372,100,0,0),
(33000,3 ,6409.085,-1235.2928,436.35898,100,0,0),
(33000,4 ,6375.438,-1206.1858,426.0799,100,0,0),
(33000,5 ,6363.9272,-1161.5354,426.783,100,0,0),
(33000,6 ,6354.123,-1115.1406,421.38544,100,0,0),
(33000,7 ,6344.8003,-1071.1987,417.42166,100,0,0),
(33000,8 ,6331.2393,-1031.3102,415.88116,100,0,0),
(33000,9 ,6315.6895,-988.93427,410.8431,100,0,0),
(33000,10,6299.469,-952.7503,408.66592,100,0,0),
(33000,11,6282.9307,-916.1021,408.83356,100,0,0),
(33000,12,6256.5215,-885.0322,406.15576,100,0,0),
(33000,13,6230.8545,-853.1661,405.72232,100,0,0),
(33000,14,6211.615,-814.21387,402.77554,100,0,0),
(33000,15,6192.824,-777.3672,402.11597,100,0,0),
(33000,16,6172.7666,-734.86597,398.02872,100,0,0),
(33000,17,6166.607,-692.8994,396.78244,100,0,0),
(33000,18,6173.242,-658.1946,400.7632,100,0,0),
(33000,19,6186.2383,-621.1224,407.06387,100,0,0),
(33000,20,6173.9844,-589.391,404.8504,100,0,0),
(33000,21,6173.9844,-589.391,404.8504,100,0,0),
(33000,22,6151.4614,-553.6955,401.13678,100,0,0),
(33000,23,6125.9375,-521.41364,394.86545,100,0,0),
(33000,24,6091.678,-498.93692,388.83936,100,0,0),
(33000,25,6061.041,-503.66016,375.54282,100,0,0),
(33000,26,6019.838,-513.57306,354.828,100,0,0),
(33000,27,5979.056,-506.83725,337.8616,100,0,0),
(33000,28,5944.8843,-496.1722,319.5445,100,0,0),
(33000,29,5902.42,-485.17996,295.748,100,0,0),
(33000,30,5861.796,-469.4264,272.67136,100,0,0),
(33000,31,5819.359,-453.54764,252.62225,100,0,0),
(33000,32,5775.427,-454.01465,235.28256,100,0,0),
(33000,33,5760.2246,-415.32825,222.65192,100,1000,0);
DELETE FROM creature_spawn_data WHERE guid IN (524753,524767,524768,521019,521021);
INSERT INTO creature_spawn_data(Guid,Id) VALUES
(524753,1),(524767,1),(524768,1),(521019,1),(521021,1);

-- Dim Flathoof 29642
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 29642);
DELETE FROM creature_template_addon WHERE entry IN (29642);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(29642,0,0,1,0,0,0,55466);
UPDATE creature SET position_x = 6137.1, position_y = -968.3606, position_z = 399.17963, spawndist = 0, MovementType = 2 WHERE id = 29642;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 29642;
DELETE FROM creature_movement WHERE Id IN (525845);
DELETE FROM creature_movement_template WHERE Entry = 29642;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(29642,1 ,6137.1,-968.3606,399.17963,100,0,0),
(29642,2 ,6131.456,-966.2101,397.91742,100,0,0),
(29642,3 ,6115.1855,-944.1455,391.48544,100,0,0),
(29642,4 ,6117,-935.97723,389.88422,100,0,0),
(29642,5 ,6110.1,-932.50476,388.781,100,0,0),
(29642,6 ,6095.847,-957.7369,388.2526,100,0,0),
(29642,7 ,6079.687,-942.17883,386.33374,100,0,0),
(29642,8 ,6079.533,-934.2778,384.90942,100,0,0),
(29642,9 ,6064.0195,-926.6992,380.3984,100,0,0),
(29642,10,6052.85,-942.67786,386.2174,100,0,0),
(29642,11,6059.6753,-944.61993,388.07913,100,0,0),
(29642,12,6051.3906,-963.8965,397.25006,100,0,0),
(29642,13,6065.7236,-965.9004,391.6595,100,0,0),
(29642,14,6057.479,-973.93524,399.3578,100,0,0),
(29642,15,6047.7915,-977.01337,404.50122,100,0,0),
(29642,16,6049.7188,-991.5117,408.13968,100,0,0),
(29642,17,6067.3213,-996.17664,400.91205,100,0,0),
(29642,18,6062.4033,-983.05774,400.7986,100,0,0),
(29642,19,6070.951,-973.7719,392.5401,100,0,0),
(29642,20,6084.177,-988.83984,396.72443,100,0,0),
(29642,21,6100,-985.08093,399.0381,100,0,0),
(29642,22,6105.1997,-989.47345,402.25537,100,0,0),
(29642,23,6125.0146,-978.8251,401.49887,100,0,0),
(29642,24,6132.627,-980.8977,401.5427,100,0,0);

DELETE FROM dbscripts_on_spell WHERE id IN (55465);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(55465,1,31,0,20,0,33001,20,0x800,0,0,0,0,0,0,0,0,'search for string id = 33001 - terminate if not found'), -- fix this - otherwise he fires script every 8secs (req. core fix)
(55465,100,32,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'pause waypoints'),
(55465,1000,1,428,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(55465,4000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote'),
(55465,5000,32,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unpause waypoints');
DELETE FROM dbscripts_on_relay WHERE id IN (20808);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20808,1,32,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Dim Flathoof EAI: pause waypoints'),
(20808,1000,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Dim Flathoof EAI: emote'),
(20808,4000,0,20335,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Dim Flathoof EAI: Random Say'),
(20808,8000,32,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Dim Flathoof EAI: unpause waypoints');
DELETE FROM `dbscript_random_templates` WHERE `id`=20335;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(20335,0,30512,0,'Dim Flathoof 29642 - Random Text 1'),
(20335,0,30513,0,'Dim Flathoof 29642 - Random Text 2'),
(20335,0,30514,0,'Dim Flathoof 29642 - Random Text 3'),
(20335,0,30515,0,'Dim Flathoof 29642 - Random Text 4'),
(20335,0,30516,0,'Dim Flathoof 29642 - Random Text 5'),
(20335,0,30517,0,'Dim Flathoof 29642 - Random Text 6'),
(20335,0,30518,0,'Dim Flathoof 29642 - Random Text 7'),
(20335,0,30519,0,'Dim Flathoof 29642 - Random Text 8');

-- object:
-- Charred Wreckage 191530 - 191537
UPDATE gameobject SET spawntimesecsmin = 180, spawntimesecsmax = 180 WHERE id BETWEEN 191530 AND 191537;
-- Spawn Groups
DELETE FROM `spawn_group` WHERE id = 33001;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`, `StringId`) VALUES
(33001, 'Storm Peaks - Charred Wreckage 191530 - 191537', 1, 15, 0, 0, 33001);
DELETE FROM `spawn_group_spawn` WHERE id = 33001;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33001, 504280,-1),
(33001, 504303,-1),
(33001, 504304,-1),
(33001, 504320,-1),
(33001, 504327,-1),
(33001, 504328,-1),
(33001, 504340,-1),
(33001, 504341,-1),
(33001, 504384,-1),
(33001, 504385,-1),
(33001, 513079,-1),
(33001, 513080,-1),
(33001, 513081,-1),
(33001, 513082,-1),
(33001, 513083,-1),
(33001, 513084,-1),
(33001, 513085,-1),
(33001, 513086,-1),
(33001, 513087,-1),
(33001, 513088,-1),
(33001, 513089,-1);
DELETE FROM `string_id` WHERE id = 33001;
INSERT INTO `string_id` (`Id`, `Name`) VALUES
(33001,'Storm Peaks - Charred Wreckage 191530 - 191537');

-- Roxi Ramrocket 31247
UPDATE creature SET position_x = 6178.9326, position_y = -1053.0673, position_z = 411.08798, orientation = 4.2411, spawndist = 0, MovementType = 2 WHERE id = 31247;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 31247;
DELETE FROM creature_movement WHERE Id IN (529937);
DELETE FROM creature_movement_template WHERE Entry = 31247;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31247,1 ,6178.9326,-1053.0673,411.08798,4.2411,6000,3124702),
(31247,2 ,6173.2407,-1055.0393,411.09146,100,0,0),
(31247,3 ,6174.3057,-1056.0739,411.12646,5.8992,6000,3124701),
(31247,4 ,6172.6436,-1055.5867,411.13287,100,0,0),
(31247,5 ,6171.1436,-1057.3367,411.13287,100,0,0),
(31247,6 ,6171.8936,-1059.0867,411.13287,100,0,0),
(31247,7 ,6174.4814,-1059.0994,411.13928,100,6000,3124701),
(31247,8 ,6173.3667,-1059.5577,411.2589,100,0,0),
(31247,9 ,6173.6167,-1062.0577,411.5089,100,0,0),
(31247,10,6179.1167,-1063.3077,411.5089,100,0,0),
(31247,11,6180.8667,-1059.3077,411.0089,100,0,0),
(31247,12,6179.252,-1058.5161,410.87854,100,6000,3124701);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3124701,3124702);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3124701,1000,15,58925,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 58925'),
(3124701,5000,14,58925,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove 58925'),
(3124702,1000,15,52148,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 52148');

-- Fargon Mortalak 29909
-- vendor list corrected
UPDATE npc_vendor SET Slot = 0 WHERE entry IN (29909) AND item = 8928; -- Instant Poison VI
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (29909) AND item = 21927; -- Instant Poison VII
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (29909) AND item = 43230; -- Instant Poison VIII
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (29909) AND item = 43231; -- Instant Poison IX
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (29909) AND item = 22053; -- Deadly Poison VI
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (29909) AND item = 22054; -- Deadly Poison VII
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (29909) AND item = 43232; -- Deadly Poison VIII
UPDATE npc_vendor SET Slot = 7 WHERE entry IN (29909) AND item = 43233; -- Deadly Poison IX
UPDATE npc_vendor SET Slot = 8 WHERE entry IN (29909) AND item = 22055; -- Wound Poison V
UPDATE npc_vendor SET Slot = 9 WHERE entry IN (29909) AND item = 43234; -- Wound Poison VI
UPDATE npc_vendor SET Slot = 10 WHERE entry IN (29909) AND item = 43235; -- Wound Poison VII
UPDATE npc_vendor SET Slot = 11 WHERE entry IN (29909) AND item = 21835; -- Anesthetic Poison
UPDATE npc_vendor SET Slot = 12 WHERE entry IN (29909) AND item = 43237; -- Anesthetic Poison II
UPDATE npc_vendor SET Slot = 13 WHERE entry IN (29909) AND item = 3775; -- Crippling Poison
UPDATE npc_vendor SET Slot = 14 WHERE entry IN (29909) AND item = 5237; -- Mind-numbing Poison
UPDATE npc_vendor SET Slot = 15 WHERE entry IN (29909) AND item = 17037; -- Hornbeam Seed
UPDATE npc_vendor SET Slot = 16 WHERE entry IN (29909) AND item = 17038; -- Ironwood Seed
UPDATE npc_vendor SET Slot = 17 WHERE entry IN (29909) AND item = 22147; -- Flintweed Seed
UPDATE npc_vendor SET Slot = 18 WHERE entry IN (29909) AND item = 44614; -- Starleaf Seed
UPDATE npc_vendor SET Slot = 19 WHERE entry IN (29909) AND item = 17031; -- Rune of Teleportation
UPDATE npc_vendor SET Slot = 20 WHERE entry IN (29909) AND item = 17032; -- Rune of Portals
UPDATE npc_vendor SET Slot = 21 WHERE entry IN (29909) AND item = 17020; -- Arcane Powder
UPDATE npc_vendor SET Slot = 22 WHERE entry IN (29909) AND item = 17030; -- Ankh
UPDATE npc_vendor SET Slot = 23 WHERE entry IN (29909) AND item = 17033; -- Symbol of Divinity
UPDATE npc_vendor SET Slot = 24 WHERE entry IN (29909) AND item = 17028; -- Holy Candle
UPDATE npc_vendor SET Slot = 25 WHERE entry IN (29909) AND item = 17029; -- Sacred Candle
UPDATE npc_vendor SET Slot = 26 WHERE entry IN (29909) AND item = 44615; -- Devout Candle
UPDATE npc_vendor SET Slot = 27 WHERE entry IN (29909) AND item = 17021; -- Wild Berries
UPDATE npc_vendor SET Slot = 28 WHERE entry IN (29909) AND item = 17026; -- Wild Thornroot
UPDATE npc_vendor SET Slot = 29 WHERE entry IN (29909) AND item = 22148; -- Wild Quillvine
UPDATE npc_vendor SET Slot = 30 WHERE entry IN (29909) AND item = 44605; -- Wild Spineleaf
UPDATE npc_vendor SET Slot = 31 WHERE entry IN (29909) AND item = 5565; -- Infernal Stone
UPDATE npc_vendor SET Slot = 32 WHERE entry IN (29909) AND item = 16583; -- Demonic Figurine
UPDATE npc_vendor SET Slot = 33 WHERE entry IN (29909) AND item = 21177; -- Symbol of Kings
UPDATE npc_vendor SET Slot = 34 WHERE entry IN (29909) AND item = 37201; -- Corpse Dust
UPDATE npc_vendor SET Slot = 35 WHERE entry IN (29909) AND item = 3371; -- Empty Vial
UPDATE npc_vendor SET Slot = 36 WHERE entry IN (29909) AND item = 3372; -- Leaded Vial
UPDATE npc_vendor SET Slot = 37 WHERE entry IN (29909) AND item = 8925; -- Crystal Vial
UPDATE npc_vendor SET Slot = 38 WHERE entry IN (29909) AND item = 18256; -- Imbued Vial
UPDATE npc_vendor SET Slot = 39 WHERE entry IN (29909) AND item = 40411; -- Enchanted Vial

-- Plip Fatpurse 29908
-- vendor list corrected
UPDATE npc_vendor SET Slot = 0 WHERE entry IN (29908) AND item = 28056; -- Blackflight Arrow
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (29908) AND item = 41586; -- Terrorshaft Arrow
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (29908) AND item = 28061; -- Ironbite Shell
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (29908) AND item = 41584; -- Frostbite Bullets
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (29908) AND item = 29014; -- Blacksteel Throwing Dagger
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (29908) AND item = 29013; -- Jagged Throwing Axe
-- this item was removed from her in 3.x.x
DELETE FROM npc_vendor WHERE item = 4470 AND entry = 29908; -- Simple Wood

-- Smilin' Slirk Brassknob 29904
-- vendor list corrected
UPDATE npc_vendor SET Slot = 0 WHERE entry IN (29904) AND item = 35954; -- Sweetened Goat\'s Milk
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (29904) AND item = 33444; -- Pungent Seal Whey
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (29904) AND item = 33445; -- Honeymint Tea
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (29904) AND item = 33449; -- Crusty Flatbread
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (29904) AND item = 35950; -- Sweet Potato Bread

-- Goblin Sapper 29433 & Goblin Sapper Backpack 29440
UPDATE creature_template SET UnitFlags = 33554432 WHERE entry = 29440;
-- duplicates
DELETE FROM creature WHERE guid IN (524975,524980,524981,524974,524977,524978,524979,524976,524973,524858);
DELETE FROM creature_addon WHERE guid IN (524975,524980,524981,524974,524977,524978,524979,524976,524973,524858);
DELETE FROM creature_movement WHERE Id IN (524975,524980,524981,524974,524977,524978,524979,524976,524973,524858);
DELETE FROM game_event_creature WHERE guid IN (524975,524980,524981,524974,524977,524978,524979,524976,524973,524858);
DELETE FROM game_event_creature_data WHERE guid IN (524975,524980,524981,524974,524977,524978,524979,524976,524973,524858);
DELETE FROM creature_battleground WHERE guid IN (524975,524980,524981,524974,524977,524978,524979,524976,524973,524858);
DELETE FROM creature_linking WHERE guid IN (524975,524980,524981,524974,524977,524978,524979,524976,524973,524858) OR 
master_guid IN (524975,524980,524981,524974,524977,524978,524979,524976,524973,524858);
-- Updates
UPDATE creature SET position_x = 6093.8726, position_y = -1059.7396, position_z = 404.3966, orientation = 2.18166, spawndist = 0, MovementType = 0 WHERE id = 524925;
UPDATE creature SET position_x = 6096.5537, position_y = -1046.2643, position_z = 404.84586, orientation = 4.276, spawndist = 0, MovementType = 0 WHERE id = 524926;
UPDATE creature SET position_x = 6088.8003, position_y = -1058.373, position_z = 404.2163, orientation = 4.468, spawndist = 0, MovementType = 0 WHERE id = 524920;
UPDATE creature SET position_x = 6085.0063, position_y = -1054.3629, position_z = 404.99512, orientation = 6.02138, spawndist = 0, MovementType = 0 WHERE id = 524924;
UPDATE creature SET position_x = 6089.6045, position_y = -1048.7673, position_z = 404.5344, orientation = 1.6406, spawndist = 0, MovementType = 0 WHERE id = 524921;
UPDATE creature SET position_x = 6097.405, position_y = -1057.2266, position_z = 404.22418, orientation = 2.60054, spawndist = 0, MovementType = 0 WHERE id = 524922;
UPDATE creature SET position_x = 6088.319, position_y = -1059.7291, position_z = 404.4536, orientation = 1.4137, spawndist = 0, MovementType = 0 WHERE id = 524927;
UPDATE creature SET position_x = 6090.604, position_y = -1048.4088, position_z = 404.54297, orientation = 2.1991, spawndist = 0, MovementType = 0 WHERE id = 524919;
UPDATE creature SET position_x = 6089.645, position_y = -1047.2047, position_z = 404.7671, orientation = 5.14872, spawndist = 0, MovementType = 0 WHERE id = 524923;
-- individual addons
DELETE FROM creature_addon WHERE guid IN (524925,524926,524924,524927);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(524925,0,0,1,0,415,0,NULL),
(524926,0,0,1,0,415,0,NULL),
(524924,0,0,1,0,426,0,NULL),
(524927,0,0,1,0,415,0,NULL);
