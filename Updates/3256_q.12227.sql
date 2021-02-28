-- q.12227 'Doing Your Duty'
DELETE FROM dbscripts_on_quest_end WHERE id = 12227;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12227,0,0,0,0,0,0,0,0,2000020788,0,0,0,0,0,0,0,''),
(12227,10,31,27071,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27071'),
(12227,100,20,2,0,0,27071,60,7,0,0,0,0,0,0,0,0,'buddy waypoints');
UPDATE quest_template SET CompleteScript = 12227 WHERE entry = 12227;
-- Benjamin Jacobs 27071
UPDATE creature SET spawntimesecsmin = 5, spawntimesecsmax = 5 WHERE id = 27071;
DELETE FROM creature_movement_template WHERE entry = 27071;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27071,1,3401.915,-2791.102,201.604,0.01745329,10,9),
(27071,2,3414.189,-2795.065,201.508,100,3000,2707101),
(27071,3,3414.189,-2795.065,201.508,100,0,0),
(27071,4,3416.017,-2788.995,201.5216,100,0,0),
(27071,5,3422.458,-2782.987,202.6076,100,0,0),
(27071,6,3427.043,-2779.222,202.652,100,0,0),
(27071,7,3431.137,-2779.687,202.6578,100,10000,2707102);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2707101,2707102);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2707101,0,0,0,0,0,0,0,0x04,2000020789,0,0,0,0,0,0,0,''),
(2707102,1000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2707102,7900,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2707102,8000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020788 AND 2000020789;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020788,'Alright Ben. We\'ve retrieved the amberseeds again. You know the drill.',0,0,0,0,NULL),
(2000020789,'I know, I know. Back in the bucket....',0,0,0,0,NULL);

-- object gossip
DELETE FROM gossip_menu_option WHERE menu_id = 9492 AND ID = 1;
UPDATE gossip_menu_option SET action_script_id = 949201, condition_id = 20268 WHERE menu_id = 9492;
DELETE FROM dbscripts_on_gossip WHERE id IN (9492,949201);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(949201,0,15,48323,0,0,0,0,4,0,0,0,0,0,0,0,0,'Player cast: Indisposed'),
(949201,3000,15,47533,0,0,27326,30,4,0,0,0,0,0,0,0,0,'buddy cast: Camera Shake - Small'),
(949201,5900,16,12671,0,0,0,0,4,0,0,0,0,0,0,0,0,'Player play Sound'),
(949201,6000,15,48329,0,0,27326,30,4,0,0,0,0,0,0,0,0,'buddy cast: Dust Field'),
(949201,7000,3,0,0,0,27326,30,0x08,0,0,0,0,3455.729,-2801.702,202.6097,5.637414,'buddy move'),
(949201,9900,16,12671,0,0,0,0,4,0,0,0,0,0,0,0,0,'Player play Sound'),
(949201,10000,15,48329,0,0,27326,30,4,0,0,0,0,0,0,0,0,'buddy cast: Dust Field'),
(949201,11000,3,0,0,0,27326,30,0x08,0,0,0,0,3455.729,-2801.702,202.6097,5.637414,'buddy move'),
(949201,13900,16,12671,0,0,0,0,4,0,0,0,0,0,0,0,0,'Player play Sound'),
(949201,14000,15,48329,0,0,27326,30,4,0,0,0,0,0,0,0,0,'buddy cast: Dust Field'),
(949201,15000,3,0,0,0,27326,30,0x08,0,0,0,0,3455.729,-2801.702,202.6097,5.637414,'buddy move'),
(949201,17900,16,12671,0,0,0,0,4,0,0,0,0,0,0,0,0,'Player play Sound'),
(949201,18000,15,48329,0,0,27326,30,4,0,0,0,0,0,0,0,0,'buddy cast: Dust Field'),
(949201,19000,3,0,0,0,27326,30,0x08,0,0,0,0,3455.729,-2801.702,202.6097,5.637414,'buddy move'),
(949201,20000,34,20266,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'terminate if true'),
(949201,20100,15,48330,0,0,0,0,4,0,0,0,0,0,0,0,0,'Player cast: Create Amberseeds');
-- add gender check
DELETE FROM dbscripts_on_gossip WHERE id = 949201 AND delay IN (5900,5910,9900,9910,13900,13910,17900,17910);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
(949201,5900,16,12670,0,0,0,0,4,0,0,0,0,0,0,0,0,20034,'Player play Sound - male'),
(949201,5910,16,12671,0,0,0,0,4,0,0,0,0,0,0,0,0,20035,'Player play Sound - femle'),
(949201,9900,16,12670,0,0,0,0,4,0,0,0,0,0,0,0,0,20034,'Player play Sound - male'),
(949201,9910,16,12671,0,0,0,0,4,0,0,0,0,0,0,0,0,20035,'Player play Sound - femle'),
(949201,13900,16,12670,0,0,0,0,4,0,0,0,0,0,0,0,0,20034,'Player play Sound - male'),
(949201,13910,16,12671,0,0,0,0,4,0,0,0,0,0,0,0,0,20035,'Player play Sound - femle'),
(949201,17900,16,12670,0,0,0,0,4,0,0,0,0,0,0,0,0,20034,'Player play Sound - male'),
(949201,17910,16,12671,0,0,0,0,4,0,0,0,0,0,0,0,0,20035,'Player play Sound - femle');

-- Move conditions to WoTLK range
-- 184 -- q.12227 'Doing Your Duty' active
-- 281 -- q.12227 'Doing Your Duty' rewarded
DELETE FROM conditions WHERE condition_entry IN (184,281,20266,20267,20268);
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20266, 9, 12227, 0, 0),
(20267, 8, 12227, 0, 0),
(20268, -2, 20267, 20266, 0);

-- Outhouse Bunny - Grizzly 27326
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 27326;
