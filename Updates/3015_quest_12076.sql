-- q.12076 'Messy Business'
DELETE FROM dbscripts_on_quest_start WHERE id = 12076;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12076,0,31,26473,70,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26473'),
(12076,10,0,0,0,0,26473,100,0,2000020520,0,0,0,0,0,0,0,'');
UPDATE quest_template SET StartScript = 12076 WHERE entry = 12076;
DELETE FROM dbscript_string WHERE entry = 2000020520;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020520,'Let us speak a moment, $r.',0,4,0,0,NULL);
-- spell script
DELETE FROM dbscripts_on_spell WHERE id = 47435;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(47435,0,14,47447,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
