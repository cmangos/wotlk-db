-- q.11986 'The Damaged Journal' -- Alliance
-- q.12026 'The Damaged Journal' -- Horde
-- Player must be able to collect 8 of req items instead of 1
UPDATE quest_template SET ReqSourceCount3 = 8 WHERE entry = 11986;
UPDATE quest_template SET ReqSourceCount3 = 8 WHERE entry = 12026;
-- Scripts
DELETE FROM dbscripts_on_quest_end WHERE id IN (11986,12026);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 11986
(11986,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(11986,10,0,0,0,0,0,0,0,2000020870,0,0,0,0,0,0,0,''),
(11986,100,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(11986,5000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(11986,5100,0,0,0,0,0,0,0,2000020871,0,0,0,0,0,0,0,''),
(11986,9000,0,0,0,0,0,0,0,2000020872,0,0,0,0,0,0,0,''),
(11986,15000,0,0,0,0,0,0,0,2000020873,0,0,0,0,0,0,0,''),
(11986,21000,0,0,0,0,0,0,0,2000020874,0,0,0,0,0,0,0,''),
(11986,22000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
-- 12026
(12026,0,31,26666,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26666'),
(12026,10,21,1,0,0,26666,30,0x04,0,0,0,0,0,0,0,0,'buddy active'),
(12026,20,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(12026,100,0,0,0,0,0,0,0,2000020875,0,0,0,0,0,0,0,''),
(12026,6000,0,0,0,0,0,0,0,2000020876,0,0,0,0,0,0,0,''),
(12026,11000,0,0,0,0,26666,20,7,2000020877,0,0,0,0,0,0,0,''),
(12026,17000,0,0,0,0,26666,20,7,2000020878,0,0,0,0,0,0,0,''),
(12026,21000,0,0,0,0,26666,20,7,2000020879,0,0,0,0,0,0,0,''),
(12026,27000,0,0,0,0,26666,20,7,2000020880,0,0,0,0,0,0,0,''),
(12026,33000,0,0,0,0,0,0,0,2000020881,0,0,0,0,0,0,0,''),
(12026,38000,0,0,0,0,26666,20,7,2000020882,0,0,0,0,0,0,0,''),
(12026,43000,0,0,0,0,26666,20,7,2000020883,0,0,0,0,0,0,0,''),
(12026,44000,21,0,0,0,26666,30,0x04,0,0,0,0,0,0,0,0,'buddy unactive'),
(12026,44100,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 11986 WHERE entry = 11986;
UPDATE quest_template SET CompleteScript = 12026 WHERE entry = 12026;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020870 AND 2000020883;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020870,'%s reads through the most recent entries in Brann\'s journal.',0,2,0,0,NULL),
(2000020871,'Astounding! It says here that Brann discovered a mysterious runic plate deep in Thor Modan!',0,0,0,1,NULL),
(2000020872,'Brann writes that he was working on a guide to these runic symbols when the giants and their allies attacked.',0,0,0,1,NULL),
(2000020873,'He reports deciphering part of the writing on the runic plate, but it doesn\'t look like he recorded his translation.',0,0,0,1,NULL),
(2000020874,'By Magni\'s beard, we\'ve got to reconstruct the runic key he used to read the plate. We could be right on his heels!',0,0,0,5,NULL),
(2000020875,'This is an intriguing find, $n, but I don\'t know what to make of it.',0,0,0,6,NULL),
(2000020876,'The language is unfamiliar and for all we know, it\'s just some soldier\'s journal.',0,0,0,1,NULL),
(2000020877,'Let me take a look at that.',0,0,0,1,NULL),
(2000020878,'Hmm...',0,0,0,1,NULL),
(2000020879,'This journal is written in dwarven. I can\'t read this scrawl, but I can make out one thing.',0,0,0,1,NULL),
(2000020880,'\'Brann Bronzebeard.\' The brother of Ironforge\'s king? You may have spoken too soon, Paluna.',0,0,0,5,NULL),
(2000020881,'What do you mean?',0,0,0,6,NULL),
(2000020882,'Think about how valuable a member of the dwarven royal family would be as a hostage.',0,0,0,1,NULL),
(2000020883,'If he\'s in the area, we must find him. First, though, we\'ll need a way to decipher this journal.',0,0,0,1,NULL);
