-- q.11231 'Of Keys and Cages' - A
-- End script
DELETE FROM dbscripts_on_quest_end WHERE id = 11231;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11231,0,31,23888,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 23888'),
(11231,1,0,0,0,0,23888,50,0,2000001845,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 11231 WHERE entry = 11231;
DELETE FROM dbscript_string WHERE entry = 2000001845;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001845,'$n, I would have words with you.',0,4,0,0,NULL);
