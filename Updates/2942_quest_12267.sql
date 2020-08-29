-- q.12267 'Neltharion's Flame'
DELETE FROM dbscripts_on_event WHERE id = 18248;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(18248,1,31,27355,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy - 27355'),
(18248,100,35,5,100,0,27355,50,7,0,0,0,0,0,0,0,0,'buddy - send Event A'),
(18248,1000,8,27450,1,0,0,0,0,0,0,0,0,0,0,0,0,'Q. Credit'),
(18248,3000,36,0,0,0,27355,50,3,0,0,0,0,0,0,0,0,'buddy - face Player'),
(18248,3200,0,0,0,0,27355,50,3,2000020456,0,0,0,0,0,0,0,'buddy - say to Player'), -- 10:30:12.000
(18248,8000,0,0,0,0,27355,50,3,2000020457,0,0,0,0,0,0,0,'buddy - say to Player'), -- 10:30:17.000
(18248,10000,14,48695,0,0,27355,50,7,0,0,0,0,0,0,0,0,'buddy - remove aura'),
(18248,10100,14,48685,0,0,27355,50,7,0,0,0,0,0,0,0,0,'buddy - remove aura'),
(18248,11000,26,0,0,0,27355,50,3,0,0,0,0,0,0,0,0,'buddy - attack Player');
DELETE FROM dbscript_string WHERE entry IN (2000020456,2000020457);
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020456,'No... NO! What have you done?! So many ancient wyrms wasted... what magic could do this?',0,1,0,0,NULL),
(2000020457,'Foolish errand $G boy:girl;... you will die for interrupting my work!',0,1,0,0,NULL);
