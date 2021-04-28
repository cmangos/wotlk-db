-- q.12180 'The Captive Prospectors'
-- Player must be able to collect multiple items instead of 1
UPDATE quest_template SET ReqSourceCount4 = 3 WHERE entry = 12180;

-- spell: 47978
DELETE FROM dbscripts_on_spell WHERE id = 47978;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(47978,4000,8,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'credit');
-- Dun Argol Cage 188554
DELETE FROM dbscripts_on_relay WHERE id IN (20579);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20579,0,43,0,0,0,188554,30,1,0,0,0,0,0,0,0,0,'reset object');

-- Prospector Gann 27113 
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 27113;
DELETE FROM creature_movement_template WHERE entry = 27113;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27113,1,3579.263,-5125.724,167.1187,100,4000,2711301),
(27113,2,3600.135,-5119.964,166.4891,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2711301;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2711301,100,0,0,0,0,0,0,0x04,2000020896,0,0,0,0,0,0,0,'Say'),
(2711301,200,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON');

-- Prospector Torgan 27114
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 27114;
DELETE FROM creature_movement_template WHERE entry = 27114;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27114,1,3467.921,-5114.096,236.9127,100,4000,2711401),
(27114,2,3489.064,-5102.472,236.8901,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2711401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2711401,100,0,0,0,0,0,0,0x04,2000020897,0,0,0,0,0,0,0,'Say'),
(2711401,200,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON');

-- Prospector Varana 27115
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 27115;
DELETE FROM creature_movement_template WHERE entry = 27115;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27115,1,3379.451,-5100.349,326.6245,100,4000,2711501),
(27115,2,3375.132,-5065.587,326.4583,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2711501;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2711501,100,0,0,0,0,0,0,0x04,2000020898,0,0,0,0,0,0,0,'Say'),
(2711501,200,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020896 AND 2000020898;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020896,'Thank you for rescuing me, but the others are still held on the tiers above!',0,0,0,1,NULL),
(2000020897,'Thank goodness! I was worried they were going to press me into service in their war against the stone giants!',0,0,0,1,NULL),
(2000020898,'These irons are crazy! They keep talking about serving their \'master Loken\' but from what I can tell, only a few receive orders from him.',0,0,0,1,NULL);
