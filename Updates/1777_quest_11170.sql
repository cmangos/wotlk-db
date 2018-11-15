-- q.11170 'Test at Sea'
-- target corrected
UPDATE dbscripts_on_gossip SET data_flags = 6 WHERE id = 889401 AND command = 15;

-- End Script
DELETE FROM dbscripts_on_quest_end WHERE id = 11170;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11170,0,31,23782,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 23782 - only one allowed'),
(11170,1,10,23782,120000,0,0,0,0x08,0,0,0,0,1964.317,-6126.846,25.68964,3.271674,'summon: Apothecary Ravien');
UPDATE quest_template SET CompleteScript = 11170 WHERE entry = 11170;

-- Apothecary Ravien
UPDATE creature_template SET MovementType = 2 WHERE entry = 23782;
DELETE FROM creature_movement_template WHERE entry = 23782;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(23782,1,1960.09,-6127.59,25.6708,0,0,3.3091),
(23782,2,1954.41,-6129.31,24.9689,0,0,3.63111),
(23782,3,1947.25,-6136.67,24.3164,0,0,4.11806),
(23782,4,1945.73,-6140.13,24.189,0,0,5.12571),
(23782,5,1947.917,-6143.229,24.32758,55000,2378201,4.8147),
(23782,6,1946,-6140.92,24.1888,0,0,1.69841),
(23782,7,1946.85,-6137.29,24.2818,0,0,1.08266),
(23782,8,1954.01,-6129.77,24.9271,0,0,0.693885),
(23782,9,1959.33,-6127.71,25.4702,0,0,0.0577123),
(23782,10,1969.1,-6128.94,24.888,2000,1,6.11313);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2378201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2378201,0,31,24126,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for 24126'),
(2378201,1,21,1,0,0,24126,100,7,0,0,0,0,0,0,0,0,'buddy active'),
(2378201,1,3,0,0,0,24126,101906,7 | 0x10,0,0,0,0,0,0,0,1.88377,''),
(2378201,2,0,0,0,0,0,0,0,2000001740,0,0,0,0,0,0,0,''),
(2378201,7,0,0,0,0,24126,101906,7 | 0x10,2000001741,0,0,0,0,0,0,0,''),
(2378201,10,1,6,0,0,24126,101906,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2378201,12,0,0,0,0,0,0,0,2000001742,0,0,0,0,0,0,0,''),
(2378201,18,0,0,0,0,24126,101906,7 | 0x10,2000001743,0,0,0,0,0,0,0,''),
(2378201,23,0,0,0,0,0,0,0,2000001744,0,0,0,0,0,0,0,''),
(2378201,30,0,0,0,0,24126,101906,7 | 0x10,2000001745,0,0,0,0,0,0,0,''),
(2378201,35,0,0,0,0,24126,101906,7 | 0x10,2000001746,0,0,0,0,0,0,0,''),
(2378201,40,0,0,0,0,0,0,0,2000001747,0,0,0,0,0,0,0,''),
(2378201,46,0,0,0,0,24126,101906,7 | 0x10,2000001748,0,0,0,0,0,0,0,''),
(2378201,53,0,0,0,0,0,0,0,2000001749,0,0,0,0,0,0,0,''),
(2378201,53,3,0,0,0,24126,101906,7 | 0x10,0,0,0,0,0,0,0,2.89725,''),
(2378201,53,21,0,0,0,24126,100,7,0,0,0,0,0,0,0,0,'buddy unactive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001740 AND 2000001749;
INSERT INTO dbscript_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001740,'Reports from the test on the enemy fleet have come in, sir!',0,0,0,1,NULL),
(2000001741,'Excellent.  What\'s the lowdown?  Do we have a bodycount?',0,0,0,1,NULL),
(2000001742,'Well... the good news is we forced the reinforcements to turn back.',0,0,0,1,NULL),
(2000001743,'Well, spit it out!  What\'s the bad news?',0,0,0,5,NULL),
(2000001744,'The plague was not quite... fatal.  However, reports of harmful effects include nausea, loss of equilibrium and severe stomach pain.',0,0,0,1,NULL),
(2000001745,'Severe stomach pain?',0,0,0,6,NULL),
(2000001746,'SEVERE STOMACH PAIN?',0,1,0,5,NULL),
(2000001747,'We are the Royal Apothecary Society!  Inducing belly aches is not part of our job description!',0,0,0,0,NULL),
(2000001748,'Am I surrounded by amateurs?  I want a full analysis of the new strain by tomorrow morning!  Get on it, Ravien!',0,0,0,0,NULL),
(2000001749,'Yes, sir!',0,0,0,0,NULL);
