-- Brothers In Death(q.12725) 
DELETE FROM dbscripts_on_quest_start WHERE id = 12725;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12725,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Thassarian active'),
(12725,1,0,0,0,28914,20,7,2000000432,0,0,0,0,0,0,0,'Orbaz - text'),
(12725,8,28,0,0,28914,20,7,0,0,0,0,0,0,0,0,'STATE_STAND'),
(12725,9,3,0,0,28914,20,7,0,0,0,0,0,0,0,3.00062,''),
(12725,11,0,0,0,28914,20,7,2000000433,0,0,0,0,0,0,0,'Orbaz - text'),
(12725,15,0,0,0,28914,20,7,2000000434,0,0,0,0,0,0,0,'Orbaz - text'),
(12725,18,3,0,0,0,0,0,0,0,0,0,0,0,0,0.0962126,''),
(12725,20,0,0,0,0,0,0,2000000435,0,0,0,0,0,0,0,''),
(12725,25,0,0,0,0,0,0,2000000436,0,0,0,0,0,0,0,''),
(12725,30,0,0,0,0,0,0,2000000437,0,0,0,0,0,0,0,''),
(12725,37,0,0,0,0,0,0,2000000438,0,0,0,0,0,0,0,''),
(12725,40,3,0,0,0,0,0,0,0,0,0,0,0,0,5.48033,''),
(12725,41,0,0,0,28914,20,7,2000000439,0,0,0,0,0,0,0,'Orbaz - text'),
(12725,44,3,0,0,28914,20,7,0,0,0,0,0,0,0,5.23599,''),
(12725,45,28,8,0,28914,20,7,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(12725,47,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Thassarian unactive');
UPDATE quest_template SET StartScript = 12725 WHERE entry = 12725;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000432 AND 2000000439;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000432,'Why do you care, Thassarian?',0,0,0,6,NULL),
(2000000433,'His weakness led to his capture.',0,0,0,1,NULL),
(2000000434,'Only the strong should survive. Not to mention...',0,0,0,1,NULL),
(2000000435,'What, Orbaz? That he\'s a blood elf?',0,0,0,6,NULL),
(2000000436,'In life we were hated enemies - this is true...',0,0,0,1,NULL),
(2000000437,'But in death... We are the children of the damned. The orphaned sons and daughters of the Scourge.',0,0,0,1,NULL),
(2000000438,'In death we are brothers.',0,0,0,1,NULL),
(2000000439,'To hell with you, Thassarian.',0,0,0,25,NULL);