-- Added completion script for quests 112 (Collecting Kelp) and 114 (The Escape)
DELETE FROM dbscripts_on_quest_start WHERE id = 114;
DELETE FROM dbscripts_on_quest_end WHERE id IN (112, 114);
INSERT INTO dbscripts_on_quest_end  (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(112, 0, 0, 0, 0, 0, 0, 0, 2000000080, 0, 0, 0, 0, 0, 0, 0, 'William Pestle - Initial Say'),
(112, 0, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'NpcFlag removed'),
(112, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.45219, 'William Pestle - Turn To Face Bookshelf'),
(112, 2, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'William Pestle - Emote Working on Bookshelf'),
(112, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'William Pestle - Stop Emote'),
(112, 5, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.98451, 'William Pestle - Turn to Face Original Direction'),
(112, 6, 0, 0, 0, 0, 0, 0, 2000000081, 0, 0, 0, 0, 0, 0, 0, 'William Pestle - Final Say'),
(112, 7, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,'NpcFlag added'),
(114, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.39307, 'Maybell Maclure - Turn To Face Wall'),
(114, 2, 0, 0, 0, 0, 0, 0, 2000000167, 0, 0, 0, 0, 0, 0, 0, 'Maybell Maclure - First Say'),
(114, 4, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Maybell Maclure - Emote Drinking Vial'),
(114, 8, 18, 0, 0, 0, 0, 0x04, 0, 0, 0, 0, 0, 0, 0, 0, 'Maybell Maclure - Despawn');
DELETE FROM db_script_string WHERE entry = 2000000167;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, comment) VALUES
(2000000167, 'Here goes nothing...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
UPDATE creature SET spawntimesecs = 20 WHERE id = 251;
UPDATE quest_template SET CompleteScript = 112 WHERE Entry = 112;
UPDATE quest_template SET StartScript = 0, CompleteScript = 114 WHERE Entry = 114;