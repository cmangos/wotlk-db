-- q.12007 'Sacrifices Must be Made'
DELETE FROM dbscripts_on_quest_start WHERE id = 12007;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12007,1000,0,0,0,0,0,0,0,2000020803,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 12007 WHERE entry = 12007;
DELETE FROM dbscript_string WHERE entry = 2000020803;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020803,'I\'ll be waitin\' for ya, mon.',0,4,0,0,NULL);
