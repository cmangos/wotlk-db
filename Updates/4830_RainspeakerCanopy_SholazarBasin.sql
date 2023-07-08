-- Rainspeaker Canopy - Sholazar Basin

-- Rainspeaker Warrior 28024
UPDATE creature SET position_x = 5672.0767, position_y = 4604.538, position_z = -137.50513, orientation = 5.16617, spawndist = 0, MovementType = 0 WHERE guid = 520177;
-- individual addon
DELETE FROM creature_addon WHERE guid IN (520177);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(520177,0,0,1,0,0,0,'50917');

-- Rainspeaker Oracle 28025
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 28025);
DELETE FROM creature_template_addon WHERE entry IN (29124);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(29124,0,0,1,0,0,0,'50503');
-- individual addon
DELETE FROM creature_addon WHERE guid IN (520182);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(520182,0,0,1,0,0,0,'52102 50503');
-- updates
UPDATE creature SET position_x = 5709.959, position_y = 4562.794, position_z = -101.5733, orientation = 5.026548, spawndist = 0, MovementType = 0 WHERE guid = 520182;
UPDATE creature SET position_x = 5706.1963, position_y = 4580.593, position_z = -120.0493, orientation = 5.026548, spawndist = 0, MovementType = 2 WHERE guid = 520183;
-- waypoints
DELETE FROM creature_movement WHERE Id IN (520183);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(520183,1,5706.1963,4580.593,-120.0493,100,7000,0),
(520183,2,5675.826,4588.862,-134.00163,100,0,0),
(520183,3,5657.323,4585.6562,-136.7692,100,0,0),
(520183,4,5626.177,4573.352,-137.60526,100,7000,0),
(520183,5,5637.405,4574.912,-138.0193 ,100,0,0),
(520183,6,5650.549,4581.872,-137.3943 ,100,0,0),
(520183,7,5673.924,4588.482,-134.3886 ,100,0,0),
(520183,8,5696.927,4589.6963,-125.8884,100,0,0);

-- Gorloc Hatchling 28140
UPDATE creature SET position_x = 5649.3184, position_y = 4555.5156, position_z = -134.71796, spawndist = 0, MovementType = 0 WHERE guid IN (521267,521268);
-- group 1
DELETE FROM `spawn_group` WHERE id = 32513;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32513, 'Sholazar Basin - Gorloc Hatchling 28140 x2 - Patrol 1', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 32513;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32513, 521267, 0),
(32513, 521268, 1);
DELETE FROM `spawn_group_formation` WHERE id = 32513;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32513, 1, 2, 0, 32513, 2, 'Sholazar Basin - Gorloc Hatchling 28140 x2 - Patrol 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 32513;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32513,'Sholazar Basin - Gorloc Hatchling 28140 x2 - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId = 32513;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32513,1 ,5649.3184,4555.5156,-134.71796,100,5000,1001),
(32513,2 ,5643.046,4588.427,-137.96495,100,0,0),
(32513,3 ,5629.2256,4605.9443,-137.01764,100,0,0),
(32513,4 ,5644.53,4612.584,-134.32164,100,0,0),
(32513,5 ,5658.312,4612.5884,-132.71825,100,0,0),
(32513,6 ,5670.1855,4581.974,-136.05046,0.45378,5000,2814001),
(32513,7 ,5684.9507,4579.914,-133.757,100,0,0),
(32513,8 ,5699.506,4566.368,-128.68588,100,0,0),
(32513,9 ,5675.2964,4563.967,-134.65695,100,3000,0),
(32513,10,5649.3975,4579.5776,-137.51927,100,0,0),
(32513,11,5640.329,4575.754,-138.01927,100,0,0),
(32513,12,5637.1304,4568.415,-136.81395,100,0,0),
(32513,13,5646.5293,4562.9604,-134.82196,100,0,0);
DELETE FROM creature_spawn_data WHERE guid IN (521267,521268);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(521267,1),(521268,1);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2814001,2814002);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2814001,2000,1,193,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2814001,4000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote'),
(2814002,2000,1,173,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(2814002,8000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote');
-- group 2
UPDATE creature SET position_x = 5601.0957, position_y = 4587.3735, position_z = -140.46878, spawndist = 0, MovementType = 0 WHERE guid IN (521266,521269);
DELETE FROM `spawn_group` WHERE id = 32514;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32514, 'Sholazar Basin - Gorloc Hatchling 28140 x2 - Patrol 2', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 32514;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32514, 521266, 0),
(32514, 521269, 1);
DELETE FROM `spawn_group_formation` WHERE id = 32514;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32514, 1, 2, 0, 32514, 2, 'Sholazar Basin - Gorloc Hatchling 28140 x2 - Patrol 2');
DELETE FROM `waypoint_path_name` WHERE PathId = 32514;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32514,'Sholazar Basin - Gorloc Hatchling 28140 x2 - Patrol 2');
DELETE FROM `waypoint_path` WHERE PathId = 32514;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32514,1,5601.0957,4587.3735,-140.46878,100,0,0),
(32514,2,5614.7534,4600.907,-139.54353,100,0,0),
(32514,3,5628.2007,4600.7554,-136.87738,4.9567,5000,1025),
(32514,4,5632.377,4612.1323,-136.26556,100,0,0),
(32514,5,5637.607,4625.2915,-136.00133,100,0,0),
(32514,6,5605.97,4623,-136.77106,100,10000,2814002),
(32514,7,5580.905,4619.5747,-136.82103,100,0,0),
(32514,8,5565.7837,4619.731,-135.66608,100,0,0),
(32514,9,5549.4697,4605.319,-131.93842,100,0,0),
(32514,10,5550.658,4595.0225,-131.14592,100,0,0),
(32514,11,5555.3315,4592.4395,-132.82414,100,0,0),
(32514,12,5587.0923,4590.6426,-137.95805,100,3000,0),
(32514,13,5555.3315,4592.4395,-132.82414,100,0,0),
(32514,14,5576.0317,4575.377,-140.91118,100,0,0),
(32514,15,5602.6196,4561.788,-132.68953,2.3911,5000,1001),
(32514,16,5576.0317,4575.377,-140.91118,100,0,0),
(32514,17,5594.8696,4575.0654,-139.78471,100,0,0);
DELETE FROM creature_spawn_data WHERE guid IN (521266,521269);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(521266,1),(521269,1);
