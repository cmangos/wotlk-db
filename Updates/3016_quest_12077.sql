-- q.12077 'Apply This Twice A Day'
DELETE FROM dbscripts_on_quest_end WHERE id = 12077;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12077,0,31,26659,70,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26659'),
(12077,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12077,11,21,1,0,0,26659,100,7,0,0,0,0,0,0,0,0,''),
(12077,12,3,0,0,0,0,0,0,0,0,0,0,0,0,0,4.16,''),
(12077,13,3,0,0,0,26659,100,7,0,0,0,0,0,0,0,0.83,''),
(12077,100,0,0,0,0,0,0,0,2000020521,0,0,0,0,0,0,0,''),
(12077,7000,0,0,0,0,0,0,0,2000020522,0,0,0,0,0,0,0,''),
(12077,12000,0,0,0,0,0,0,0,2000020523,0,0,0,0,0,0,0,''),
(12077,17000,0,0,0,0,26659,100,7,2000020524,0,0,0,0,0,0,0,''),
(12077,18000,3,0,0,0,26659,100,7,0,0,0,0,0,0,0,6.161,''),
(12077,19000,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0.733,''),
(12077,20000,21,0,0,0,26659,100,7,0,0,0,0,0,0,0,0,''),
(12077,20001,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 12077 WHERE entry = 12077;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020521 AND 2000020524;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020521,'Greenskin... I know why you\'ve come. You will not find allies in my kind for we do not trust you.',0,0,0,0,NULL),
(2000020522,'I will suffer your presence no longer. Begone. Find someone else to extort.',0,0,0,0,NULL),
(2000020523,'%s waves dismissively.',0,2,0,0,NULL),
(2000020524,'Bah! You\'re as dumb as a rock! I hope the worms eat all of you.',0,0,0,0,NULL);
