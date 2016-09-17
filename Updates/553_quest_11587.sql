-- q.11587 'Prison Break'
DELETE FROM dbscripts_on_spell WHERE id = 45449; 
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(45449,0,15,45446,0,0,0,0,0,0,0,0,0,0,0,0,''),
(45449,2,36,0,0,25318,50,3,0,0,0,0,0,0,0,0,'buddy - Face player'),
(45449,2,0,0,0,25318,50,3,2000001004,2000001005,2000001006,0,0,0,0,0,''),
(45449,2,15,45456,0,0,0,0x02,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001004 AND 2000001006;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001004,'Thank you, $r. Without your help I would have become one of them!',0,0,0,0,NULL),
(2000001005,'You\'ve saved me, $c. Thank you!',0,0,0,0,NULL),
(2000001006,'Thank you, $r. I shall not forget your kindness.',0,0,0,0,NULL);
