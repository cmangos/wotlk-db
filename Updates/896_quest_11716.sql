-- q.11916 'Hellscream's Champion'

-- Player must finish 3 quests first (all part of chains):
-- q.11652 - The Plains of Nasam
-- q.11705 - Foolish Endeavors
-- q.11722 - Trophies of Gammoth
DELETE FROM conditions WHERE condition_entry BETWEEN 1215 AND 1219;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1215, 8, 11652, 0),
(1216, 8, 11705, 0),
(1217, 8, 11722, 0),
(1218, -1, 1216, 1215),
(1219, -1, 1218, 1217);
UPDATE quest_template SET RequiredCondition = 1219 WHERE entry = 11916;

-- Q. Scripted
-- *NOTE* salute & kneel reQ. for all summoned
DELETE FROM dbscripts_on_quest_start WHERE id = 11916;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11916,0,10,25243,120000,0,0,0,0,0,0,0,0,2814.75,6208,86.0197,0.0876989,'summon - Warsong Honor Guard'),
(11916,0,10,25243,120000,0,0,0,0,0,0,0,0,2825.76,6204.55,85.7077,3.33313,'summon - Warsong Honor Guard'),
(11916,0,10,25243,120000,0,0,0,0,0,0,0,0,2829.05,6198.21,85.6946,3.44702,'summon - Warsong Honor Guard'),
(11916,0,10,25243,120000,0,0,0,0,0,0,0,0,2818.68,6218.52,86.0182,3.41927,'summon - Warsong Honor Guard'),
(11916,0,10,25243,120000,0,0,0,0,0,0,0,0,2822.21,6211.23,85.7272,3.44026,'summon - Warsong Honor Guard'),
(11916,0,10,25243,120000,0,0,0,0,0,0,0,0,2815.65,6224.45,85.782,3.10646,'summon - Warsong Honor Guard'),
(11916,0,10,25243,120000,0,0,0,0,0,0,0,0,2811.33,6217,85.9265,0.0844748,'summon - Warsong Honor Guard'),
(11916,0,10,25243,120000,0,0,0,0,0,0,0,0,2817.13,6200.88,85.6935,0.239977,'summon - Warsong Honor Guard'),
(11916,0,10,25243,120000,0,0,0,0,0,0,0,0,2819.8,6194.5,85.6652,0.313256,'summon - Warsong Honor Guard'),
(11916,3,0,0,0,0,25243,100,7,2000001232,0,0,0,0,0,0,0,''),
(11916,5,3,0,0,0,25243,100,7,0,0,0,0,0,0,0,2.0332,''),
(11916,7,1,29,0,0,25243,100,7,0,0,0,0,0,0,0,0,''),
(11916,9,1,66,0,0,25243,100,7,0,0,0,0,0,0,0,0,''),
(11916,11,28,8,0,0,25243,100,7,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 11916 WHERE entry = 11916;
DELETE FROM db_script_string WHERE entry = 2000001232;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001232,'This way, $g sir:ma\'am;.',0,0,0,2,NULL);

-- Durkot Wolfbrother
DELETE FROM gossip_menu_option WHERE menu_id = 9212;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES 
(9212, 0, 0, 'I am ready to leave, Durkot.', 1, 1, -1, 0, 921201, 0, 0, NULL, 1220);
DELETE FROM dbscripts_on_gossip WHERE id = 921201;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(921201,1,15,46621,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast on player');
DELETE FROM conditions WHERE condition_entry = 1220;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
-- only if q.11916 is active
(1220, 9, 11916, 0); -- already in DB

-- Warsong Honor Guard
UPDATE creature SET position_x = 2824.917969, position_y = 6217.945313, position_z = 85.748428, orientation = 3.986249 WHERE guid = 125511;
