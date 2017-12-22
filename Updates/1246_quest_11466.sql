-- q.11466 'Jack Likes His Drink'

-- Olga, the Scalawag Wench
-- Option available only during q.
UPDATE gossip_menu_option SET condition_id = 1400 WHERE menu_id = 9015;
DELETE FROM conditions WHERE condition_entry = 1400;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1400, 9, 11466, 0);

-- Jack Adams
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 901301 WHERE menu_id = 9013;
DELETE FROM dbscripts_on_gossip WHERE id = 901301;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(901301,0,17,34116,1,0,0,0,0,0,0,0,0,0,0,0,0,'create 34116');

-- Script
UPDATE gossip_menu_option SET action_script_id = 901401 WHERE menu_id = 9014;
DELETE FROM dbscripts_on_gossip WHERE id = 901401;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(901401,0,31,24788,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 24788'),
(901401,1,0,0,0,0,0,0,0,2000001481,0,0,0,0,0,0,0,'whisper to player'),
(901401,1,20,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoints');
-- waypoints set by script
DELETE FROM creature_movement_template WHERE entry = 24639;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(24639,1,-91.81944,-3532.707,7.715481,1000,2463901,5.078908),
(24639,2,-89.88889,-3537.292,7.716694,0,2463902,0),
(24639,3,-85.94043,-3544.197,7.718675,33000,2463903,0.4014257),
(24639,4,-91.81944,-3532.707,7.715481,12000,2463904,5.078908);
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001481 AND 2000001486;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001481,'Keep quiet, will you?  If anyone catches on, we\'re both dead.',0,4,0,0,NULL),
(2000001482,'All right, fellas!  Who ordered the spiced rum?  Was it you, Jackie boy?',0,0,0,0,NULL),
(2000001483,'Sure thing, love.  Put it on Harry\'s tab, will ya?  He owes me a drink!',0,0,0,0,NULL),
(2000001484,'It\'s ok, sweetheart.  This one\'s on the house.',0,0,0,0,NULL),
(2000001485,'Free rum?  Why... that\'s me favorite kind!',0,0,0,0,NULL),
(2000001486,'Sweet Neptulon!  That was... one drink... too many!',0,0,0,0,NULL);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2463901 AND 2463904;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2463901,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2463901,0,21,1,0,0,24788,115895,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - active'),
(2463901,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,0,'quest flag removed'),
(2463902,0,0,0,0,0,0,0,0,2000001482,0,0,0,0,0,0,0,''),
(2463903,1,0,0,0,0,24788,115895,7 | 0x10,2000001483,0,0,0,0,0,0,0,'buddy - say'),
(2463903,4,42,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'equip removed'),
(2463903,8,0,0,0,0,0,0,0,2000001484,0,0,0,0,0,0,0,''),
(2463903,14,1,0,0,0,24788,115895,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - emote 0'),
(2463903,15,1,16,0,0,24788,115895,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - kneel'),
(2463903,16,42,0,0,0,24788,115895,7 | 0x10,2717,0,0,0,0,0,0,0,'buddy - equip'),
(2463903,16,0,0,0,0,24788,115895,7 | 0x10,2000001485,0,0,0,0,0,0,0,'buddy - say'),
(2463903,22,1,92,0,0,24788,115895,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - emote'),
(2463903,26,15,43391,0,0,24788,115895,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - self cast'),
(2463903,29,42,1,0,0,24788,115895,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - equip reseted'),
(2463903,30,0,0,0,0,24788,115895,7 | 0x10,2000001486,0,0,0,0,0,0,0,'buddy - say'),
(2463903,32,28,7,0,0,24788,115895,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - STATE_DEAD'),
(2463903,32,29,1,1,0,24788,115895,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - NpcFlag added'),
(2463904,2,42,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'equip reseted'),
(2463904,8,28,0,0,0,24788,115895,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - STATE_STAND'),
(2463904,8,1,10,0,0,24788,115895,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - emote 10'),
(2463904,8,29,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'quest flag added'),
(2463904,8,29,1,2,0,24788,115895,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - NpcFlag removed'),
(2463904,9,21,1,0,0,24788,115895,7 | 0x10,0,0,0,0,0,0,0,0,'buddy - unactive'),
(2463904,10,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2463904,11,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
