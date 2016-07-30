-- Warsong Hold Peon
-- Duplicate removed
DELETE FROM creature WHERE guid = 125391;
DELETE FROM creature_addon WHERE guid = 125391;
DELETE FROM creature_movement WHERE id = 125391;
DELETE FROM game_event_creature WHERE guid = 125391;
DELETE FROM game_event_creature_data WHERE guid = 125391;
DELETE FROM creature_battleground WHERE guid = 125391;
DELETE FROM creature_linking WHERE guid = 125391 OR master_guid = 125391;
-- Updates
UPDATE creature_addon SET auras = 25148 WHERE guid IN (125385,125388,125390);

UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 125386;
DELETE FROM creature_movement WHERE id = 125386;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(125386,1,2744.3,6134.8,77.6573,90000, 2743201,3.05433, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2743201; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2743201,5,1,36,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2743201,5,16,999,2,0,0,0,0,0,0,0,0,0,0,0,''),
(2743201,6,0,0,0,0,0,0,2000000985,0,0,0,0,0,0,0,''),
(2743201,6,31,27432,5,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2743201,7,0,0,0,27432,125387,7 | 0x10,2000000986,2000000987,2000000988,0,0,0,0,0,'');
-- texts
DELETE FROM db_script_string WHERE entry BETWEEN 2000000985 AND 2000000988;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000985, 'Your head like rock.', 0, 0, 0, 11, NULL),
(2000000986, 'What that sound?', 0, 0, 0, 0, NULL),
(2000000987, 'Stop it!', 0, 0, 0, 0, NULL),
(2000000988, 'That hurt.', 0, 0, 0, 0, NULL);
