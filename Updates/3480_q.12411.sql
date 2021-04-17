-- q.12411 'A Sister's Pledge'
DELETE FROM dbscripts_on_quest_end WHERE id = 12411;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12411,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(12411,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(12411,50,10,26935,60000,0,0,0,0x08,1,0,0,0,4001.592,-4554.077,196.4279,1.719485,'Summon: Sasha 26935'),
(12411,99,20,2,1,0,26935,100,7,0,0,0,0,0,0,0,0,''),
(12411,100,13,0,0,0,189977,10,1,0,0,0,0,0,0,0,0,'activate gobject'),
(12411,200,0,0,0,0,0,0,0,2000020851,0,0,0,0,0,0,0,''),
(12411,500,3,0,0,0,0,0,0x04,0,0,0,0,3996.337,-4516.717,196.3169,100,'move'),
(12411,50000,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(12411,50010,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(12411,50100,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');
UPDATE quest_template SET CompleteScript = 12411 WHERE entry = 12411;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020851 AND 2000020856;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020851,'You won\'t eat me, will you?',0,0,0,0,NULL),
(2000020852,'Anya!!  You\'re all right!',0,0,0,0,NULL),
(2000020853,'Sister!  The mean men were going to take me to Badmoon Isle.  They wanted to turn me into one of them.',0,0,0,0,NULL),
(2000020854,'Badmoon?  You mean Bloodmoon?',0,0,0,0,NULL),
(2000020855,'That\'s what I said!  Badmoon!  Sasha... don\'t ever leave me again!  First they took papa, then they took you... I don\'t want to be alone with them!',0,0,0,0,NULL),
(2000020856,'Don\'t worry, sister... no one can hurt you now.',0,0,0,0,NULL);

-- Anya 27646
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 27646;

-- Sasha 26935
-- Waypoints comes from script
DELETE FROM creature_movement_template WHERE entry = 26935;
INSERT INTO creature_movement_template (entry, pathID, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26935,1,1,4002.467,-4556.807,196.4988,100,0,0),
(26935,1,2,4001.879,-4555.998,196.4988,100,0,0),
(26935,1,3,3997.248,-4525.081,195.3569,100,0,0),
(26935,1,4,3996.828,-4519.888,195.6831,100,0,0),
(26935,1,5,3996.828,-4519.888,195.6831,100,0,0),
(26935,1,6,3996.828,-4519.888,195.6831,1.74733,60000,2693501);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2693501);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2693501,100,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'kneel'), -- 02:49:28.000
(2693501,1000,0,0,0,0,0,0,0x04,2000020852,0,0,0,0,0,0,0,'say'), -- 02:49:29.000
(2693501,9000,0,0,0,0,27646,30,0x04,2000020853,0,0,0,0,0,0,0,'buddy say'), -- 02:49:37.000
(2693501,16000,0,0,0,0,0,0,0x04,2000020854,0,0,0,0,0,0,0,'say'), -- 02:49:45.000
(2693501,24000,0,0,0,0,27646,30,0x04,2000020855,0,0,0,0,0,0,0,'buddy say'), -- 02:49:53.000
(2693501,32000,0,0,0,0,0,0,0x04,2000020856,0,0,0,0,0,0,0,'say'), -- 02:50:01.000
(2693501,40000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
