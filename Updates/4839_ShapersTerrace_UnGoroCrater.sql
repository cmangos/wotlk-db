-- The Shaper's Terrace - Un'Goro Crater
-- Wotlk Only

-- The Etymidian 28092
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 28092);
DELETE FROM creature_template_addon WHERE entry IN (28092);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(28092,0,0,1,0,0,0,'16245 25900');

-- High Cultist Herenn 28601
UPDATE creature SET position_x = -6028.0815, position_y = -1249.0177, position_z = -146.68127, orientation = 3.054326, spawndist = 0, MovementType = 0 WHERE guid = 84069;

-- Death's Hand Acolyte 28602
DELETE FROM creature_addon WHERE guid = 520327;
DELETE FROM creature_movement WHERE Id= 520327;
DELETE FROM game_event_creature WHERE guid = 520327;
DELETE FROM game_event_creature_data WHERE guid = 520327;
DELETE FROM creature_battleground WHERE guid = 520327;
DELETE FROM creature_linking WHERE guid = 520327  
 OR master_guid = 520327;
DELETE FROM creature WHERE guid = 520327;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(520327,28602,1,1,1,-6105.942,-1249.7822,-143.15865,0,300,300,0,4); -- linear
UPDATE creature SET position_x = -6122.5464, position_y = -1249.9878, position_z = -143.15865, spawndist = 0, MovementType = 4 WHERE guid = 105952; -- linear
UPDATE creature SET position_x = -6104.9653, position_y = -1243.6011, position_z = -143.19208, orientation = 3.12413, spawndist = 0, MovementType = 0 WHERE guid = 105856;
UPDATE creature SET position_x = -6104.698, position_y = -1256.3138, position_z = -143.19208, orientation = 3.054326, spawndist = 0, MovementType = 0 WHERE guid = 105860;
UPDATE creature SET position_x = -6065.164, position_y = -1256.2112, position_z = -143.34604, orientation = 3.10668, spawndist = 0, MovementType = 0 WHERE guid = 105482;
UPDATE creature SET position_x = -6065.2676, position_y = -1242.8015, position_z = -143.34604, orientation = 3.14159, spawndist = 0, MovementType = 0 WHERE guid = 105649;
UPDATE creature SET position_x = -6036.1035, position_y = -1255.3839, position_z = -146.81877, orientation = 1.1519, spawndist = 0, MovementType = 0 WHERE guid = 105527;
UPDATE creature SET position_x = -6037.475, position_y = -1243.3755, position_z = -146.8158, orientation = 5.986479, spawndist = 0, MovementType = 0 WHERE guid = 105530;
UPDATE creature SET position_x = -6121.083008, position_y = -1241.739624, position_z = -143.275650, orientation = 3.282253, spawndist = 0, MovementType = 0 WHERE guid = 105910;
UPDATE creature SET position_x = -6121.150879, position_y = -1258.214233, position_z = -143.275650, orientation = 2.909253, spawndist = 0, MovementType = 0 WHERE guid = 105874;
-- individual addons
DELETE FROM creature_addon WHERE guid IN (105527,105530);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(105527,0,8,1,0,0,0,NULL),
(105530,0,8,1,0,0,0,NULL);
-- waypoints
DELETE FROM creature_movement WHERE Id IN (105952,520327);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 105952
(105952,1,-6122.5464,-1249.9878,-143.15865,100,1000,0),
(105952,2,-6138.5444,-1249.1758,-145.89084,100,0,0),
(105952,3,-6152.918,-1249.7925,-154.39339,100,0,0),
(105952,4,-6167.854,-1249.36,-162.65091,100,0,0),
(105952,5,-6152.918,-1249.7925,-154.39339,100,1000,0),
-- 520327
(520327,1,-6105.942,-1249.7822,-143.15865,100,1000,0),
(520327,2,-6083.673,-1249.4623,-143.2926,100,0,0),
(520327,3,-6063.0107,-1249.4069,-143.35864,100,0,0),
(520327,4,-6043.02,-1249.4241,-146.75867,100,1000,0);