-- q.11275 'Making the Horn'
DELETE FROM dbscripts_on_quest_end WHERE id = 11275;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11275,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(11275,0,0,0,0,0,0,0,0,2000001846,0,0,0,0,0,0,0,''),
(11275,6,0,0,0,0,0,0,0,2000001847,0,0,0,0,0,0,0,''),
(11275,7,1,133,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11275,11,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(11275,12,0,0,0,0,0,0,0,2000001848,0,0,0,0,0,0,0,''),
(11275,12,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 11275 WHERE entry = 11275;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001846 AND 2000001848;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001846,'These are all excellent. It\'s going to be hard to choose just one.',0,0,0,1,NULL),
(2000001847,'I think I\'ve found the one I\'ll use. Now I have to begin the task of carving it. I don\'t think it\'s going to be easy. I don\'t even know what a female yeti\'s mating call sounds like!',0,0,0,396,NULL),
(2000001848,'I\'ve got most of the basic carving done, but it needs to be tested before I can continue. Are you willing to help me with that, $n?',0,0,0,396,NULL);
