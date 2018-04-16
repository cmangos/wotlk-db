-- q.11658 'Plan B'
DELETE FROM dbscripts_on_quest_end WHERE id = 11658;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11658,0,1,69,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11658,5,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11658,6,0,0,0,0,0,0,0,2000001611,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 11658 WHERE entry = 11658;
DELETE FROM dbscript_string WHERE entry = 2000001611;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001611,'Alrighty then, $n, here we go: one illusory-enhanced, Warsong orc disguise, complete with Smell-A-Vision!',0,0,0,1,NULL);
