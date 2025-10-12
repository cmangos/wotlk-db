-- q.12819 'Just Around The Corner'
-- Land Mine 191502
UPDATE gameobject SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE id IN (191502);
-- Bellinger 29644
-- correct path
UPDATE creature SET position_x = 6035.0146, position_y = -750.43536, position_z = 369.83606, orientation = 1.501, spawndist = 0, MovementType = 2 WHERE id = 29644;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 29644;
DELETE FROM creature_movement_template WHERE Entry = 29644;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(29644,1,6035.0146,-750.43536,369.83606,1.501,60000,0),
(29644,2,6041.9736,-751.16016,371.08704,100,0,0),
(29644,3,6044.92,-751.19995,371.65646,100,0,0),
(29644,4,6048.8506,-751.0001,372.4885,100,0,0),
(29644,5,6052.7773,-750.7988,373.31415,100,0,0),
(29644,6,6056.706,-750.6035,374.22858,100,0,0),
(29644,7,6060.207,-750.0676,375.04208,100,0,0),
(29644,8,6064.077,-749.11865,376.01065,100,0,0),
(29644,9,6067.8257,-748.1993,376.96213,100,0,0),
(29644,10,6071.2827,-747.14166,377.84573,100,0,0),
(29644,11,6080.2314,-745.9247,380.0413,2.009,5000,1001),
(29644,12,6085.7983,-741.2621,381.27078,100,0,0),
(29644,13,6089.438,-739.616,382.0154,100,0,0),
(29644,14,6092.856,-737.8551,382.6709,100,0,0),
(29644,15,6096.3916,-735.9897,383.30475,100,0,0),
(29644,16,6099.843,-734.16797,383.79605,100,0,0),
(29644,17,6103.375,-732.3047,384.56274,100,0,0),
(29644,18,6105.3594,-729.6194,384.68744,100,0,0),
(29644,19,6107.8926,-726.45276,384.9994,100,0,0),
(29644,20,6109.2637,-724.7374,385.13498,2.37364,2000,0),
(29644,21,6109.44,-727.4209,385.32095,2.41668,25000,2964401),
(29644,22,6108.9097,-731.1201,385.45618,100,0,0),
(29644,23,6105.64,-734.14264,385.04837,100,0,0),
(29644,24,6102.316,-736.3823,384.56226,100,0,0),
(29644,25,6099.0005,-738.6159,384.04016,100,0,0),
(29644,26,6095.6763,-740.85565,383.4771,100,0,0),
(29644,27,6092.452,-743.0215,382.81537,100,0,0),
(29644,28,6088.112,-744.7311,381.9082,100,0,0),
(29644,29,6084.32,-745.69446,381.0224,100,0,0),
(29644,30,6080.5576,-746.6504,380.15417,100,0,0),
(29644,31,6076.667,-747.6384,379.13483,100,0,0),
(29644,32,6072.854,-748.6071,378.1574,100,0,0),
(29644,33,6069.0693,-749.56836,377.23706,100,0,0),
(29644,34,6065.5703,-750.7795,376.24615,100,0,0),
(29644,35,6061.915,-752.10944,375.2711,100,0,0),
(29644,36,6058.1606,-753.47534,374.31323,100,0,0),
(29644,37,6039.856,-755.2907,370.56192,100,0,0),
(29644,38,6035.0146,-750.43536,369.83606,1.501,180000,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2964401);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2964401,3000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2964401,13000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Janks 29429
DELETE FROM creature_template_addon WHERE entry = 29429;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(29429,0,1,1,0,0,0,NULL);
DELETE FROM dbscripts_on_relay WHERE id IN (20144);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20144,1,21,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Janks 29429 EAI: active'),
(20144,10,28,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Janks 29429 EAI: atand'),
(20144,2000,3,0,0,0,0,0,0,0,0,0,0,0,0,0,4.5303111,'Part of Janks 29429 EAI: face target'),
(20144,2100,0,0,0,0,0,0,0,30198,0,0,0,0,0,0,0,'Part of Janks 29429 EAI: say'),
(20144,7000,0,0,0,0,0,0,0,30199,0,0,0,0,0,0,0,'Part of Janks 29429 EAI: say'),
(20144,12000,0,0,0,0,0,0,0,30200,0,0,0,0,0,0,0,'Part of Janks 29429 EAI: say'),
(20144,17000,0,0,0,0,0,0,0,30201,0,0,0,0,0,0,0,'Part of Janks 29429 EAI: say'),
(20144,20000,28,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Janks 29429 EAI: sit'),
(20144,20001,21,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Janks 29429 EAI: unactive');
UPDATE `broadcast_text` SET `ChatTypeID` = 2 WHERE `Id` IN (30201);

-- Land Mine Bunny 29397
-- summoned
DELETE FROM creature_addon WHERE guid BETWEEN 524737 AND 524741;
DELETE FROM creature_movement WHERE Id BETWEEN 524737 AND 524741;
DELETE FROM game_event_creature WHERE guid BETWEEN 524737 AND 524741;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 524737 AND 524741;
DELETE FROM creature_battleground WHERE guid BETWEEN 524737 AND 524741;
DELETE FROM creature_linking WHERE guid BETWEEN 524737 AND 524741
 OR master_guid BETWEEN 524737 AND 524741;
DELETE FROM creature WHERE guid BETWEEN 524737 AND 524741;
UPDATE creature_template SET unitFlags = 33554432 WHERE entry = 29397;
DELETE FROM creature_immunities WHERE Entry IN (29397,29429);
INSERT INTO creature_immunities (Entry, SetId, Type, Value) VALUES
(29397,0,2,1),
(29429,0,2,1);
