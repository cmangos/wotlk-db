-- q.12916 'Our Only Hope'

-- Gymer 29647
-- gossip corrected
DELETE FROM gossip_menu WHERE entry IN (9852);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9852, 13639, 0, 0), -- default
(9852, 13640, 0, 20310);
DELETE FROM conditions WHERE condition_entry IN (20310);
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20310,8,12916,0,0);
DELETE FROM dbscripts_on_relay WHERE id = 20597;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20597,0,31,29647,10,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Gymer Lock Dummy 29928 EAI:search for 29647'),
(20597,100,0,0,0,0,29647,15,7,2000020948,0,0,0,0,0,0,0,'Part of Gymer Lock Dummy 29928 EAI: buddy Yell');
DELETE FROM dbscript_string WHERE entry = 2000020948;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020948,'FREE!!! Soon you will feel the wrath of the storm king!',0,1,0,0,NULL);
