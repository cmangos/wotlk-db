-- q.12323 'Smoke 'Em Out' - Alliance
-- q.12324 'Smoke 'Em Out' - Horde
UPDATE creature SET spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE id = 27570;
DELETE FROM dbscripts_on_relay WHERE id = 20583;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20583,0,48,256,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Venture Co. Straggler 27570 EAI: change UnitFlags'),
(20583,10,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Venture Co. Straggler 27570 EAI: Send Event AI 5'),
(20583,100,0,20288,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Venture Co. Straggler 27570 EAI: Random Say'),
(20583,600,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Venture Co. Straggler 27570 EAI: Run ON'),
(20583,1000,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Venture Co. Straggler 27570 EAI: Set Waypoints');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020906 AND 2000020911;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020906,'Back to the ship!',0,0,0,5,NULL),
(2000020907,'Forget this! I\'m going home!',0,0,0,5,NULL),
(2000020908,'Gotta get out of here!',0,0,0,5,NULL),
(2000020909,'I didn\'t sign up for this!',0,0,0,5,NULL),
(2000020910,'No way I\'m stickin\' around!',0,0,0,5,NULL),
(2000020911,'We\'re all gonna die!',0,0,0,5,NULL);
DELETE FROM dbscript_random_templates WHERE id = 20288;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20288,0,2000020906,0,'27570 - Random Text 1'),
(20288,0,2000020907,0,'27570 - Random Text 2'),
(20288,0,2000020908,0,'27570 - Random Text 3'),
(20288,0,2000020909,0,'27570 - Random Text 4'),
(20288,0,2000020910,0,'27570 - Random Text 5'),
(20288,0,2000020911,0,'27570 - Random Text 6');
DELETE FROM creature_movement_template WHERE entry = 27570;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27570,1,2825.445,-1916.865,8.726185,100,0,0),
(27570,2,2801.146,-1912.819,4.976185,100,0,0),
(27570,3,2771.221,-1915.673,4.514911,100,0,0),
(27570,4,2763.449,-1929.757,5.202124,100,0,0),
(27570,5,2746.424,-1935.679,4.603652,100,0,0),
(27570,6,2728.851,-1948.775,4.096633,100,1000,1);
