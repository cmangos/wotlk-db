-- q.12195 'The Unexpected 'Guest''
DELETE FROM dbscripts_on_quest_end WHERE id = 12195;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(12195,0,31,27227,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27227'),
(12195,50,21,1,0,0,27227,55,7,0,0,0,0,0,0,0,0,'buddy active'),
(12195,51,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(12195,100,0,0,0,0,0,0,0,2000020912,0,0,0,0,0,0,0,''),
(12195,101,3,0,0,0,0,0,0x04,0,0,0,0,3861.092,-4529.929,209.481,0.73,''),
(12195,5000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'kneel'),
(12195,6000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12195,7000,28,0,0,0,27227,20,7,0,0,0,0,0,0,0,0,''),
(12195,8000,1,64,0,0,27227,20,7,0,0,0,0,0,0,0,0,''),
(12195,9000,0,0,0,0,27227,20,7,2000020913,0,0,0,0,0,0,0,'buddy say'),
(12195,12000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12195,13000,0,0,0,0,0,0,0,2000020914,0,0,0,0,0,0,0,''),
(12195,17000,0,0,0,0,0,0,0,2000020915,0,0,0,0,0,0,0,''),
(12195,22000,0,0,0,0,0,0,0,2000020916,0,0,0,0,0,0,0,''),
(12195,22010,1,0,0,0,27227,20,7,0,0,0,0,0,0,0,0,'buddy reset emote'),
(12195,23000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(12195,24000,28,1,0,0,27227,20,7,0,0,0,0,0,0,0,0,'buddy sit'),
(12195,24100,3,0,0,0,0,0,0x04,0,0,0,0,3853.87,-4536.55,209.374,2.80998,''),
(12195,29000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,2.80998,''),
(12195,30000,21,0,0,0,27227,55,7,0,0,0,0,0,0,0,0,'buddy unactive'),
(12195,30100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
UPDATE quest_template SET CompleteScript = 12195 WHERE entry = 12195;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020912 AND 2000020916;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020912,'Let\'s see if this works.',0,0,0,1,NULL),
(2000020913,'Where... where am I?',0,0,0,0,NULL),
(2000020914,'You are among the Taunka of Camp Oneqwah, dwarf.',0,0,0,1,NULL),
(2000020915,'If you agree to help us against our mutual enemy, you will come to no harm here.',0,0,0,1,NULL),
(2000020916,'Think about it, prospector, but make up your mind swiftly. We must act soon.',0,0,0,25,NULL);
