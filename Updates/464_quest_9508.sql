-- q.9508 'Call of Water'
-- event 10685
DELETE FROM dbscripts_on_event WHERE id = 10685;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- #1st group
(10685,0,13,0,0,181878,85506,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,0,13,0,0,181878,85507,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,0,13,0,0,181878,85508,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,0,13,0,0,181878,85510,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,0,13,0,0,181878,85516,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,0,13,0,0,181878,85521,1 | 0x10,0,0,0,0,0,0,0,0,''),
-- #2nd group
(10685,1,13,0,0,181878,85511,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,1,13,0,0,181878,85512,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,1,13,0,0,181878,85515,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,1,13,0,0,181878,85517,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,1,13,0,0,181878,85519,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,1,13,0,0,181878,85520,1 | 0x10,0,0,0,0,0,0,0,0,''),
-- #3rd group
(10685,2,13,0,0,181878,85509,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,2,13,0,0,181878,85513,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,2,13,0,0,181878,85514,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,2,13,0,0,181878,85518,1 | 0x10,0,0,0,0,0,0,0,0,''),
(10685,3,10,6748,60000,0,0,0,0,0,0,0,-1654.51,-10908.6,58.484,5.14168,''),
(10685,3,10,6748,60000,0,0,0,0,0,0,0,-1638.08,-10914.1,58.2585,3.5866,''),
(10685,4,22,1700,0x01 | 0x10 | 0x20 | 0x80,6748,100,7,0,0,0,0,0,0,0,0,'temp faction'),
(10685,6,10,17359,180000,0,0,0,0,0,0,0,-1649.41,-10921.6,58.8228,0.553385,''),
(10685,9,0,0,0,6748,100,7,2000000876,0,0,0,0,0,0,0,''),
(10685,10,31,17359,100,0,0,0,0,0,0,0,0,0,0,0,'search for 17359'), -- in case if someon kills him faster than 3secs
(10685,11,0,0,0,17359,100,7,2000000877,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000000876,2000000877);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000876,'Wrong!  It is YOU that will die, Tel\'athion the Impure!',0,0,0,0,NULL),
(2000000877,'It is YOU who are wrong!  I will deal with you two after I have slain this meddlesome shaman!',0,0,0,0,NULL);
DELETE FROM dbscripts_on_go_template_use WHERE id = 181699;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(181699,4,40,0,0,181878,10,0,0,0,0,0,0,0,0,0,'despawn');
-- check if any of summons is still alive (we have 2 here)
DELETE FROM dbscripts_on_creature_death WHERE id = 17359;
INSERT INTO dbscripts_on_creature_death VALUES 
(17359,0,31,6748,100,0,0,0,0,0,0,0,0,0,0,0,'search for 6748'), 
(17359,1,18,0,0,6748,100,0x04,0,0,0,0,0,0,0,0,''),
(17359,2,31,6748,100,0,0,0,0,0,0,0,0,0,0,0,'search for 6748'), 
(17359,3,18,0,0,6748,100,0x04,0,0,0,0,0,0,0,0,'');

-- Barrel of Filth - object should despawn after use
UPDATE gameobject_template SET data5 = 1 WHERE entry IN (181699,181878);
-- respawntime corrected
UPDATE gameobject SET spawntimesecs = 120 WHERE id IN (181699,181878);
