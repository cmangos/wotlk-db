-- q.11265 'Of Keys and Cages' - H
DELETE FROM dbscripts_on_quest_end WHERE id = 11265;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11265,0,31,24127,101,0,0,0,0,0,0,0,0,0,0,0,0,'search for 24127'),
(11265,1,0,0,0,0,24127,100,0,2000001849,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 11265 WHERE entry = 11265;
DELETE FROM dbscript_string WHERE entry = 2000001849;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001849,'$R, a moment of your time?',0,4,0,0,NULL);

