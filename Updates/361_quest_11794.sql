-- q.11794 'The hunt is On'
-- conditions
-- gossip should be available only while player has aura = 46078
DELETE FROM conditions WHERE condition_entry IN (1053,1054);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1053, 1, 46078, 0),
(1054, -1, 1053, 274);

-- "Salty" John Thorpe
UPDATE gossip_menu_option SET action_menu_id = 0, action_script_id = 921801, condition_id = 1054 WHERE menu_id = 9218 AND id = 0;
DELETE FROM dbscripts_on_gossip WHERE id = 921801; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(921801,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(921801,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(921801,4,0,0,0,0,0,0,2000000800,0,0,0,0,0,0,0,''),
(921801,9,36,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(921801,10,0,0,0,0,0,0,2000000801,0,0,0,0,0,0,0,''),
(921801,13,22,16,0x01,0,0,0,0,0,0,0,0,0,0,0,''),
(921801,14,26,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000800 AND 2000000801;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000800,'Well...',0,0,0,0,NULL),
(2000000801,'I suppose this is it, then? I won\'t go down quietly!',0,0,0,0,NULL);
UPDATE creature SET spawntimesecs = 120 WHERE id = 25248;

-- Tom Hegger
UPDATE gossip_menu_option SET action_menu_id = 0, action_script_id = 921701, condition_id = 1054  WHERE menu_id = 9217;
DELETE FROM dbscripts_on_gossip WHERE id = 921701; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(921701,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(921701,2,36,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(921701,3,0,0,0,0,0,0,2000000802,0,0,0,0,0,0,0,''),
(921701,7,22,16,0x01,0,0,0,0,0,0,0,0,0,0,0,''),
(921701,8,26,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000000802;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000802,'You don\'t know who you\'re messing with, $c! Death beckons!',0,0,0,0,NULL);
UPDATE creature SET spawntimesecs = 120 WHERE id = 25827;

-- Guard Mitchells
UPDATE gossip_menu_option SET action_menu_id = 0, action_script_id = 921901, condition_id = 1054  WHERE menu_id = 9219;
DELETE FROM dbscripts_on_gossip WHERE id = 921901; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(921901,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(921901,2,36,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(921901,3,0,0,0,0,0,0,2000000803,0,0,0,0,0,0,0,''),
(921901,7,22,16,0x01,0,0,0,0,0,0,0,0,0,0,0,''),
(921901,8,26,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000000803;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000803,'Finally! This charade is over... Arthas give me strength!',0,0,0,0,NULL);
UPDATE creature SET spawntimesecs = 120 WHERE id = 25828;
