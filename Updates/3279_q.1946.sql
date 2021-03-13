-- q.1945 'Laughing Sisters'
DELETE FROM dbscripts_on_quest_end WHERE id = 1945;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1945,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1945,100,0,0,0,0,0,0,0,2000003238,0,0,0,0,0,0,0,''),
(1945,2000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1945,6000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(1945,8000,0,0,0,0,0,0,0,2000003239,0,0,0,0,0,0,0,''),
(1945,8100,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added');
UPDATE quest_template SET CompleteScript = 1945 WHERE entry = 1945;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003238 AND 2000003239;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003238,'I shall now begin the robe...',0,0,1,0,NULL),
(2000003239,'Your robe is complete, $n.',0,0,0,2,NULL);

-- missing in WotlkDB
-- Kil'hala 3484
UPDATE creature_template SET GossipMenuId = 4270 WHERE entry = 3484;
DELETE FROM gossip_menu WHERE entry IN (4270);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4270, 5440, 0, 0),
(4270, 5442, 0, 4),
(4270, 5441, 0, 49);
DELETE FROM conditions WHERE condition_entry IN (49);
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(49,7,197,300, 0);