-- q.11998 'Softening the Blow'
DELETE FROM dbscripts_on_quest_end WHERE id = 11998;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11998,0,0,0,0,0,0,0,0,2000020863,0,0,0,0,0,0,0,''),
(11998,4000,0,0,0,0,0,0,0,2000020864,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 11998 WHERE entry = 11998;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020863 AND 2000020864;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020863,'He wants me to do WHAT?',0,0,0,5,NULL),
(2000020864,'Well, he\'d better keep the moonshine flowing if he wants my men to stop their research to serve the military\'s purposes!',0,0,0,1,NULL);
