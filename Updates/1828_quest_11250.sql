-- q.11250 'All Hail the Conqueror of Skorn!'
DELETE FROM dbscripts_on_quest_end WHERE id = 11250;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11250,0,31,24038,60,0,0,0,0,0,0,0,0,0,0,0,'search for 24038'),
(11250,1,0,0,0,24038,61,0,2000001808,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 11250 WHERE entry = 11250;
DELETE FROM dbscript_string WHERE entry = 2000001808;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001808,'$n, my child, come here, I have something to ask of you.', 0, 4, 0, 1, NULL);
