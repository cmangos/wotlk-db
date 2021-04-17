-- q.12279 'A Bear of an Appetite'
DELETE FROM dbscripts_on_quest_end WHERE id = 12279;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12279,0,0,0,0,0,0,0,0,2000020857,0,0,0,0,0,0,0,''),
(12279,6000,0,0,0,0,0,0,0,2000020858,0,0,0,0,0,0,0,''),
(12279,12000,0,0,0,0,0,0,0,2000020859,0,0,0,0,0,0,0,''),
(12279,18000,0,0,0,0,0,0,0,2000020860,0,0,0,0,0,0,0,''),
(12279,22000,0,0,0,0,0,0,0,2000020861,0,0,0,0,0,0,0,''),
(12279,28000,0,0,0,0,0,0,0,2000020862,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 12279 WHERE entry = 12279;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020857 AND 2000020862;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020857,'By the Light, you killed Limpy Joe and took the meat! How did you know where to find us?',0,0,0,5,NULL),
(2000020858,'Well, if you\'ve come to kill me, too, can you at least wait until I\'ve fed Griselda? Poor girl hasn\'t eaten in days.',0,0,0,20,NULL),
(2000020859,'Here, girl. I\'ve got one last meal for you before Limpy Joe\'s killer does us in!',0,0,0,22,NULL),
(2000020860,'How could you kill poor, defenseless old Joe? And why did you bring the meat back?',0,0,0,6,NULL),
(2000020861,'You\'re an enigma, that\'s what you are... And let me tell you, enigmas and I don\'t get along....',0,0,0,1,NULL),
(2000020862,'I think you\'d best leave before Griselda decides she\'s in the mood for dessert.',0,0,0,25,NULL);
