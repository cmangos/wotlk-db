-- q.12028 'Spiritual Insight'
DELETE FROM dbscripts_on_event WHERE id BETWEEN 17605 AND 17609;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17605,0,21,1,0,0,26595,5712549,7 | 0x10,0,0,0,0,0,0,0,0,''),
(17605,100,0,0,0,0,26595,5712549,0x10,2000020295,0,0,0,0,0,0,0,''),
(17605,3000,0,0,0,0,26595,5712549,0x10,2000020296,0,0,0,0,0,0,0,''),
(17606,0,0,0,0,0,26595,5712549,0x10,2000020297,0,0,0,0,0,0,0,''),
(17607,0,0,0,0,0,26595,5712549,0x10,2000020298,0,0,0,0,0,0,0,''),
(17608,0,0,0,0,0,26595,5712549,0x10,2000020299,0,0,0,0,0,0,0,''),
(17609,0,0,0,0,0,26595,5712549,0x10,2000020300,0,0,0,0,0,0,0,''),
(17609,1000,21,0,0,0,26595,5712549,7 | 0x10,0,0,0,0,0,0,0,0,''),
(17609,26000,14,47189,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(17609,26000,7,12028,0,0,0,0,0,0,0,0,0,0,0,0,0,'credit');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020295 AND 2000020300;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020295,'You\'ve successfully freed your spirit! You can serve as my eyes. Together we\'ll get to the bottom of this.',0,4,0,0,NULL),
(2000020296,'You\'re coming up on the village now. Keep your eyes peeled.',0,4,0,0,NULL),
(2000020297,'What\'s happened to the lake bed? Strange power is pouring out of it.',0,4,0,0,NULL),
(2000020298,'No... no! My people are all dead spirits or deranged!',0,4,0,0,NULL),
(2000020299,'Elder Mana\'loa, the statue there, sees you. This is a good sign!',0,4,0,0,NULL),
(2000020300,'Come back, $N. If you\'re out of your body for too long, you run the risk of not being able to return. We have much to discuss.',0,4,0,0,NULL);
