-- q.11479 '"Crowleg" Dan'

-- "Crowleg" Dan
-- Option available only during q.
UPDATE gossip_menu_option SET action_script_id = 933501, condition_id = 1401 WHERE menu_id = 9335;
DELETE FROM conditions WHERE condition_entry = 1401;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1401, 9, 11479, 0);
-- Script
DELETE FROM dbscripts_on_gossip WHERE id = 933501;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(933501,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,0,'gossip removed'),
(933501,1,0,0,0,0,0,0,0,2000001499,0,0,0,0,0,0,0,'say to player'),
(933501,8,22,14,0x01 | 0x04,0,0,0,0,0,0,0,0,0,0,0,0,'temp faction'),
(933501,9,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'attack player');
DELETE FROM dbscript_string WHERE entry = 2000001499;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001499,'Curse that frog!  Yes, I joined the Southsea crew - you want to make something of it, mate?  I\'ll cut you down here and now!',0,0,0,0,NULL);
