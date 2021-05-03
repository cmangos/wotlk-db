-- q.12199 'Bringing Down the Iron Thane'
DELETE FROM dbscripts_on_quest_end WHERE id = 12199;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12199,0,31,27227,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27227'),
(12199,10,31,26666,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 26666'),
(12199,50,21,1,0,0,27227,55,7,0,0,0,0,0,0,0,0,'buddy1 active'),
(12199,60,21,1,0,0,26666,55,7,0,0,0,0,0,0,0,0,'buddy2 active'),
(12199,70,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(12199,80,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(12199,100,3,0,0,0,0,0,0x04,0,0,0,0,3861.092,-4529.929,209.481,0.73,''),
(12199,5000,0,0,0,0,0,0,0,2000020922,0,0,0,0,0,0,0,''),
(12199,10000,0,0,0,0,0,0,0,2000020923,0,0,0,0,0,0,0,''),
(12199,16000,0,0,0,0,27227,55,7,2000020924,0,0,0,0,0,0,0,'buddy1 say'),
(12199,16100,3,0,0,0,26666,55,7,0,0,0,0,3859.63,-4527.64,209.37,5.94097,'buddy2 move'),
(12199,21000,0,0,0,0,26666,55,7,2000020925,0,0,0,0,0,0,0,'buddy2 say'),
(12199,27000,0,0,0,0,26666,55,7,2000020926,0,0,0,0,0,0,0,'buddy2 say'),
(12199,34000,0,0,0,0,27227,55,7,2000020927,0,0,0,0,0,0,0,'buddy1 say'),
(12199,39000,0,0,0,0,26666,55,7,2000020928,0,0,0,0,0,0,0,'buddy2 say'),
(12199,45000,0,0,0,0,26666,55,7,2000020929,0,0,0,0,0,0,0,'buddy2 say'),
(12199,50000,0,0,0,0,0,0,0,2000020930,0,0,0,0,0,0,0,''),
(12199,53000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12199,56000,3,0,0,0,0,0,0x04,0,0,0,0,3853.87,-4536.55,209.374,2.80998,''),
(12199,57000,3,0,0,0,26666,55,7,0,0,0,0,3848.19,-4531.66,209.344,4.55531,''),
(12199,61000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,2.80998,''),
(12199,62000,3,0,0,0,26666,55,7,0,0,0,0,0,0,0,4.55531,''),
(12199,62100,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added'),
(12199,62101,21,0,0,0,27227,55,7,0,0,0,0,0,0,0,0,'buddy1 unactive'),
(12199,62102,21,0,0,0,26666,55,7,0,0,0,0,0,0,0,0,'buddy2 unactive'),
(12199,62200,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 12199 WHERE entry = 12199;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020922 AND 2000020930;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020922,'I\'ll admit, dwarf, I was pleasantly surprised to see your plan succeed.',0,0,0,0,NULL),
(2000020923,'We can\'t just let you return to your companions and we can\'t take you with us...',0,0,0,0,NULL),
(2000020924,'Wait a minute here! You promised to spare me if I helped you. I held up my end o\' the bargain!',0,0,0,5,NULL),
(2000020925,'Stay your blade, Chieftain. He may yet have value to us.',0,0,0,1,NULL),
(2000020926,'Remember the dwarven journal that was discovered? Well, this dwarf could be exactly what we need to track down Brann Bronzebeard and capture him.',0,0,0,1,NULL),
(2000020927,'By the Light, Brann\'s alive? I\'d never help you capture him!',0,0,0,1,NULL),
(2000020928,'You will if you wish to keep your head attached to your shoulders.',0,0,0,1,NULL),
(2000020929,'Does that satisfy you, Tormak?',0,0,0,6,NULL),
(2000020930,'He will live so long as he proves useful. I\'d be careful if I was you, dwarf.',0,0,0,273,NULL);
