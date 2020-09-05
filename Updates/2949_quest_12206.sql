-- q.12206 'Blighted Last Rites'
DELETE FROM dbscripts_on_quest_end WHERE id = 12206;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12206,10,31,27250,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27250'),
(12206,100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(12206,101,21,1,0,0,27250,20,7,0,0,0,0,0,0,0,0,'buddy active'),
(12206,103,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote = 0'),
(12206,200,36,0,0,0,27250,20,1,0,0,0,0,0,0,0,0,''),
(12206,1000,0,0,0,0,0,0,0,2000020471,0,0,0,0,0,0,0,''),
(12206,3000,0,0,0,0,27250,20,7,2000020472,0,0,0,0,0,0,0,'buddy - say'),
(12206,8000,0,0,0,0,0,0,0,2000020473,0,0,0,0,0,0,0,''),
(12206,14000,0,0,0,0,27250,20,7,2000020474,0,0,0,0,0,0,0,'buddy - say'),
(12206,21000,0,0,0,0,0,0,0,2000020475,0,0,0,0,0,0,0,''),
(12206,25000,15,48201,0,0,27250,20,1,0,0,0,0,0,0,0,0,''),
(12206,28000,0,0,0,0,27250,20,7,2000020477,0,0,0,0,0,0,0,'buddy - say'),
(12206,35000,0,0,0,0,0,0,0,2000020476,0,0,0,0,0,0,0,''),
(12206,40000,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2.635447,''),
(12206,42000,0,0,0,0,0,0,0,2000020478,0,0,0,0,0,0,0,''),
(12206,42500,1,133,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote = 133'),
(12206,43000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 12206 WHERE entry = 12206;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020471 AND 2000020478;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020471,'Schlemiel!',0,0,0,5,NULL),
(2000020472,'Huh?',0,0,0,6,NULL),
(2000020473,'Apparently you flubbed this batch of blight. What do you have to say for yourself?',0,0,0,5,NULL),
(2000020474,'But... I followed your instructions precisely! Sorry?',0,0,0,6,NULL),
(2000020475,'Sorry? SORRY?! Here\'s sorry for you!',0,0,0,5,NULL),
(2000020476,'Oops. I guess it IS working! That\'s odd.',0,0,0,6,NULL),
(2000020477,'Eep!',0,0,0,0,NULL),
(2000020478,'I\'m gonna need a cleanup and a new assistant over here!',0,0,0,5,NULL);
-- spell target
DELETE FROM spell_script_target WHERE entry IN(48201);
INSERT INTO spell_script_target VALUES
(48201,1,27250,0);

-- Junior Apothecary Schlemiel 27250
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 27250;
DELETE FROM dbscripts_on_creature_death WHERE id = 27250;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(27250,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
