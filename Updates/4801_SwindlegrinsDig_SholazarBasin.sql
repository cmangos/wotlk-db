-- Swindlegrin's Dig - Sholazar Basin

-- Meatpie 28188
UPDATE creature SET position_x = 5821.068, position_y = 5357.608, position_z = -67.16735, spawndist = 0, MovementType = 4 WHERE id = 28188; -- linear
DELETE FROM creature_movement WHERE Id=521447;
UPDATE creature_template SET MovementType = 4 WHERE Entry = 28188;
DELETE FROM creature_movement_template WHERE entry = 28188;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(28188,1,5821.068,5357.608,-67.16735,100,1000,0),
(28188,2,5823.153,5359.2563,-67.33406,100,0,0),
(28188,3,5826.9463,5363.212,-70.95672,100,0,0),
(28188,4,5831.1743,5367.3296,-74.85453,100,0,0),
(28188,5,5838.0884,5374.25,-74.823204,100,0,0),
(28188,6,5844.13,5380.215,-80.53371,100,1000,0);

-- Foreman Swindlegrin 28186
UPDATE creature SET position_x = 5821.068, position_y = 5357.608, position_z = -67.16735, spawndist = 0, MovementType = 4 WHERE id = 28186; -- linear
DELETE FROM creature_movement WHERE Id=521446;
UPDATE creature_template SET MovementType = 4 WHERE Entry = 28186;
DELETE FROM creature_movement_template WHERE entry = 28186;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(28186,1,5836.1675,5381.1865,-68.04324,100,0,0),
(28186,2,5831.324,5375.4976,-67.801575,100,0,0),
(28186,3,5826.9497,5371.253,-67.80337,100,0,0),
(28186,4,5820.7188,5365.0205,-67.39422,100,0,0);

-- Venture Co. Ruffian 28124
-- duplicates
DELETE FROM creature_addon WHERE guid=521207;
DELETE FROM creature_movement WHERE Id=521207;
DELETE FROM game_event_creature WHERE guid=521207;
DELETE FROM game_event_creature_data WHERE guid=521207;
DELETE FROM creature_battleground WHERE guid=521207;
DELETE FROM creature_linking WHERE guid=521207
 OR master_guid=521207;
DELETE FROM creature WHERE guid=521207;
-- updates
UPDATE creature SET position_x = 5950.7563, position_y = 5377.406, position_z = -97.685394, spawndist = 0, MovementType = 2 WHERE guid = 521193;
UPDATE creature SET position_x = 5930.1475, position_y = 5447.331, position_z = -92.91597, spawndist = 0, MovementType = 4 WHERE guid = 521194; -- linear
UPDATE creature SET position_x = 5882.442, position_y = 5454.144, position_z = -82.61929, spawndist = 0, MovementType = 4 WHERE guid = 521202; -- linear
UPDATE creature SET position_x = 5923.6016, position_y = 5481.182, position_z = -85.85863, spawndist = 0, MovementType = 4 WHERE guid = 521200; -- linear
UPDATE creature SET position_x = 5843.664, position_y = 5336.3804, position_z = -100.26752, spawndist = 0, MovementType = 4 WHERE guid = 521195; -- linear
UPDATE creature SET position_x = 5838.7646, position_y = 5366.5347, position_z = -88.00531, orientation = 6.038839340209960937, spawndist = 0, MovementType = 0 WHERE guid = 521203;
-- individual addons
DELETE FROM creature_addon WHERE guid IN (521192);
INSERT INTO creature_addon (guid,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(521192,0,0,1,0,375,0,NULL);
-- waypoints
DELETE FROM creature_movement WHERE Id IN (521193,521194,521202,521200,521195);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 521193
(521193,1,5950.7563,5377.406,-97.685394,100,0,0),
(521193,2,5949.595,5401.444,-96.945595,100,0,0),
(521193,3,5942.907,5416.3345,-94.9611,100,0,0),
(521193,4,5930.5,5438.4536,-93.20833,100,0,0),
(521193,5,5918.6997,5438.941,-91.93172,100,0,0),
(521193,6,5908.0957,5428.5933,-92.78114,100,0,0),
(521193,7,5902.732,5415.6655,-94.95741,100,0,0),
(521193,8,5888.524,5401.226,-95.06167,100,0,0),
(521193,9,5879.287,5388.183,-93.12784,100,0,0),
(521193,10,5877.7886,5377.7827,-94.472565,100,0,0),
(521193,11,5877.754,5361.637,-98.142426,100,0,0),
(521193,12,5886.632,5350.123,-99.76877,100,0,0),
(521193,13,5902.66,5342.08,-99.624,100,0,0),
(521193,14,5922.106,5346.408,-99.76907,100,0,0),
(521193,15,5934.639,5356.6646,-99.310394,100,0,0),
(521193,16,5942.2603,5365.612,-98.37448,100,0,0),
-- 521194
(521194,1,5930.1475,5447.331,-92.91597,100,1000,0),
(521194,2,5941.0635,5443.483,-93.5167,100,0,0),
(521194,3,5949.3735,5443.973,-93.5167,100,0,0),
(521194,4,5958.2017,5445.902,-91.01841,100,0,0),
(521194,5,5968.6943,5443.364,-90.71925,100,0,0),
(521194,6,5980.835,5435.6787,-90.65004,100,0,0),
(521194,7,5994.3804,5423.7246,-90.59502,100,1000,0),
-- 521202
(521202,1,5882.442,5454.144,-82.61929,100,1000,0),
(521202,2,5888.093,5454.749,-85.17789,100,0,0),
(521202,3,5895.018,5453.744,-87.630646,100,0,0),
(521202,4,5901.007,5451.0845,-89.22652,100,0,0),
(521202,5,5905.2324,5444.686,-90.50142,100,1000,0),
-- 521200
(521200,1,5923.6016,5481.182,-85.85863,100,1000,0),
(521200,2,5920.214,5489.627,-83.63768,100,0,0),
(521200,3,5914.311,5498.888,-80.88866,100,0,0),
(521200,4,5908.274,5508.9126,-79.49925,100,0,0),
(521200,5,5902.46,5524.1895,-78.791245,100,0,0),
(521200,6,5896.719,5548.241,-80.39247,100,1000,0),
-- 521195
(521195,1,5843.664,5336.3804,-100.26752,100,1000,0),
(521195,2,5853.557,5348.6978,-99.154236,100,0,0),
(521195,3,5863.639,5357.5493,-98.6546,100,0,0),
(521195,4,5834.7227,5325.6074,-99.140724,100,1000,0);
-- special scripts
DELETE FROM creature_spawn_data WHERE Guid IN (521193,521194,521202,521200,521195);
INSERT INTO creature_spawn_data (Guid, Id) VALUES
(521193,80),(521194,80),(521202,80),(521200,80),(521195,80);
DELETE FROM dbscripts_on_relay WHERE id IN (20741,20742);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20741,1,31,28123,30,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Venture Co. Ruffian 28124: search for 28123'),
(20741,100,32,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Venture Co. Ruffian 28124: pause WP'),
(20741,200,37,0,0,0,28123,35,1,0,0,0,0,0,0,0,0,'Part of Venture Co. Ruffian 28124: move towards target'),
(20741,6000,37,0,0,0,28123,35,1,0,0,0,0,0,0,0,0,'Part of Venture Co. Ruffian 28124: move towards target'),
(20741,9000,15,52908,0,0,28123,15,1,0,0,0,0,0,0,0,0,'Part of Venture Co. Ruffian 28124: cast 52908 on buddy'),
(20741,12000,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Venture Co. Ruffian 28124: unpause WP'),
(20742,1,31,28124,10,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Venture Co. Excavator 28123: search for 28124'),
(20742,100,0,0,0,0,28124,15,7,29206,0,0,0,0,0,0,0,'Part of Venture Co. Excavator 28123: buddy Say'),
(20742,1000,0,0,0,0,0,0,0x04,29211,0,0,0,0,0,0,0,'Part of Venture Co. Excavator 28123: Say'),
(20742,6000,0,0,0,0,0,0,0x04,29213,0,0,0,0,0,0,0,'Part of Venture Co. Excavator 28123: Say');

-- Venture Co. Excavator 28123
UPDATE creature SET spawndist = 3 WHERE id = 28123 AND spawndist = 5; -- req for RP with 28124
-- individual addons
DELETE FROM creature_addon WHERE guid IN (521188);
INSERT INTO creature_addon (guid,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(521188,0,0,1,0,233,0,NULL);
