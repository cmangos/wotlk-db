-- q.11671 'A Race Against Time'

-- object should be only spawned by spell (static spawn - 60441 removed)
-- missing spell focus added
DELETE FROM gameobject WHERE guid = 60441;
INSERT INTO gameobject VALUES ( 60441, 300176, 571, 1,1,3392.85, 6161.09, 79.8313, 0.31656, 0, 0, 0.15762, 0.9875, 300, 255, 1);
-- spell focus should have radius ~60
UPDATE gameobject_template SET data1 = 60 WHERE entry = 300176;
-- Beryl Shield - respawntime updated
UPDATE gameobject SET spawntimesecs = 120 WHERE guid = 59218;

-- creatures removed
DELETE FROM creature WHERE guid IN (119583,119584,119585,119586,119587,119588);
DELETE FROM creature_addon WHERE guid IN (119583,119584,119585,119586,119587,119588);
DELETE FROM creature_movement WHERE id IN (119583,119584,119585,119586,119587,119588);
DELETE FROM game_event_creature WHERE guid IN (119583,119584,119585,119586,119587,119588);
DELETE FROM game_event_creature_data WHERE guid IN (119583,119584,119585,119586,119587,119588);
DELETE FROM creature_battleground WHERE guid IN (119583,119584,119585,119586,119587,119588);
DELETE FROM creature_linking WHERE guid IN (119583,119584,119585,119586,119587,119588)
 OR master_guid IN (119583,119584,119585,119586,119587,119588);

-- Beryl Point InvisMan
-- waypoints will be set by script
UPDATE creature SET spawntimesecs = 10 WHERE guid = 119575;
DELETE FROM creature_movement_template WHERE entry = 25594;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(25594,1,3394.03,6157.93,79.9142,15000,2559401,0.663225,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2559401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2559401,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2559401,6,15,45796,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2559401,6,39,0,0,25584,118575,0x10,0,0,0,0,0,0,0,0,''),
(2559401,7,40,0,0,187773,100,7,0,0,0,0,0,0,0,0,''),
(2559401,8,3,0,0,25584,118575,0x08 | 0x10,0,0,0,0,3392.85,6161.09,79.8313,3.00498,''),
(2559401,8,22,14,0x01 | 0x10 | 0x20,25584,118575,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2559401,8,14,45775,0,25584,118575,0x10,0,0,0,0,0,0,0,0,''),
(2559401,9,0,0,0,25584,118575,0x10,2000001022,0,0,0,0,0,0,0,''),
(2559401,9,0,0,0,25584,118575,0x10,2000001023,0,0,0,0,0,0,0,''),
(2559401,9,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2559401,10,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2559401,11,15,5,0,0,0,0x04,0,0,0,0,0,0,0,0,'die');
DELETE FROM db_script_string WHERE entry IN (2000001022,2000001023);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001022, 'What is the meaning of this disturbance?!', 0, 1, 0, 0, NULL),
(2000001023, 'Who dares interrupt my work!? Show yourself, coward!', 0, 1, 0, 0, NULL);

-- target for spell
DELETE FROM spell_script_target WHERE entry = 45780;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(45780,1,25594);

-- Inquisitor Salrand
UPDATE creature SET position_z = 79.8313, spawntimesecs = 120, Spawndist = 0, MovementType = 2 WHERE guid = 118575;
UPDATE creature_template_addon SET auras = NULL WHERE entry = 25584;
DELETE FROM creature_movement WHERE id = 118575;
UPDATE creature_template SET MovementType = 2 WHERE entry = 25584;
DELETE FROM creature_movement_template WHERE entry = 25584;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(25584,1,3392.85,6161.09,79.8313,5000,2558401,3.00498,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2558401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2558401,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2558401,0,3,0,0,0,0,0x08,0,0,0,0,3392.85,6161.09,89.1226,3.00498,''),
(2558401,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');
