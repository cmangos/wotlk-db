-- q.10097 'Brother Against Brother'

-- Lakka - correct gossip script
-- wrong submenus removed (they belong to Isfar.)
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 7868, condition_id = 1013 WHERE menu_id = 7868;
DELETE FROM dbscripts_on_gossip WHERE id = 7868;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7868,1,8,18956,1,0,0,0,0,0,0,0,0,0,0,0,''),
(7868,1,0,0,0,18956,132569,0x10,2000000600,0,0,0,0,0,0,0,''),
(7868,4,13,0,0,183051,50,1,0,0,0,0,0,0,0,0,''),
(7868,4,20,2,0,18956,132569,0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
-- gossip should be available only with q. active
DELETE FROM conditions WHERE condition_entry = 1013; 
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1013, 9, 10097, 0);
-- Lakka and Cage should be available also in heroic mode
UPDATE creature SET spawnmask = 3, spawntimesecs = 10800 WHERE id = 18956;
UPDATE gameobject SET spawnmask = 3 WHERE guid = 67620;
-- movement will be set by script
DELETE FROM creature_movement_template WHERE entry = 18956;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18956,1,-160.813,157.043,0.094095,2000,1895601,1.0821,0,0),
(18956,2,-155.998,160.411,0.0106601,0,0,0.343763,0,0),
(18956,3,-117.237,173.875,0.0106601,0,0,6.23975,0,0),
(18956,4,-80.6773,172.487,0.00989608,0,0,5.85883,0,0),
(18956,5,-71.2708,164.192,0.00886592,0,0,4.81269,0,0),
(18956,6,-69.2754,127.699,0.00747229,5000,1895602,5.26037,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1895601,1895602); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1895601,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Lakka - active'),
(1895602,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1895602,2,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Lakka - unactive'),
(1895602,3,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'Lakka - despawn');
DELETE FROM db_script_string WHERE entry IN (2000000600,2000000601);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000600, 'Thank you for freeing me, $n! I\'m going to make my way to Shattrath!', 0, 0, 0, 0, NULL),
(2000000601, 'Well done! Hurry, though, we don\'t want to be caught!', 0, 1, 0, 0, NULL);
-- Lakka must yell after Darkweaver Syth's death
DELETE FROM dbscripts_on_creature_death WHERE id = 18472;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(18472,1,0,0,0,18956,132569,0x10,2000000601,0,0,0,0,0,0,0,'');
