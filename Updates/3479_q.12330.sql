-- q.12330 'Anatoly Will Talk'

-- Tatjana\'s Horse 27626
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 27626;
-- Waypoints comes from EAI script
DELETE FROM creature_movement_template WHERE entry = 27626;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27626,1,4053.908,-4378.754,260.7082,100,0,5),
(27626,2,4084.778,-4374.353,261.3611,100,0,0),
(27626,3,4093.047,-4339.481,261.3763,100,0,0),
(27626,4,4093.91,-4326.36,260.974,100,0,0),
(27626,5,4102.08,-4310.55,255.849,100,0,0),
(27626,6,4112.15,-4294.331,251.6709,100,0,0),
(27626,7,4122.05,-4276.49,251.52,100,0,0),
(27626,8,4125.99,-4260.97,251.389,100,0,0),
(27626,9,4127.083,-4250,249.4924,100,0,0),
(27626,10,4122.72,-4242.43,247.379,100,0,0),
(27626,11,4109.63,-4233.39,242.748,100,0,0),
(27626,12,4096.807,-4222.81,236.4216,100,0,0),
(27626,13,4088.75,-4212.12,231.809,100,0,0),
(27626,14,4084.66,-4196.56,226.858,100,0,0),
(27626,15,4081.434,-4179.625,220.6524,100,0,0),
(27626,16,4079.61,-4166.31,215.094,100,0,0),
(27626,17,4074.37,-4157.72,212.235,100,0,0),
(27626,18,4057.18,-4146.94,211.426,100,100,2762601), -- script
(27626,19,4036.82,-4134.25,210.767,100,5000,1);
-- Relay
DELETE FROM dbscripts_on_relay WHERE id = 20562;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20562,0,25,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,'RUN ON'),
(20562,10,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Set Waypoints');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2762601);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2762601,5,14,49138,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Remove aura'),
(2762601,10,14,46598,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Remove aura'),
(2762601,15,35,8,60,0,0,0,0x04,0,0,0,0,0,0,0,0,'Send Event AI C');
-- spell script
DELETE FROM dbscripts_on_spell WHERE id IN (28471);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(28471,0,14,49135,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Remove aura'),
(28471,10,3,0,0,0,0,0,0x04|0x08,0,0,0,0,4055.913,-4142.91,211.4181,1.200577,'teleport'),
(28471,100,28,7,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Anatoly 26971
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 26971;
-- Waypoints comes from EAI script
DELETE FROM creature_movement_template WHERE entry = 26971;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26971,1,4065.668,-4131.509,211.287,0.174533,100,5),
(26971,2,4057.442,-4140.824,211.1911,100,100000,2697101);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2697101);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2697101,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Anatoly 26971 EAI: Active'),
(2697101,10,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Anatoly 26971 EAI: Kneel'),
(2697101,100,0,0,0,0,0,0,0x04,2000020845,0,0,0,0,0,0,0,'Part of Anatoly 26971 EAI: say'),
(2697101,11000,0,0,0,0,0,0,0x04,2000020847,0,0,0,0,0,0,0,'Part of Anatoly 26971 EAI: say'),
(2697101,22000,0,0,0,0,0,0,0x04,2000020849,0,0,0,0,0,0,0,'Part of Anatoly 26971 EAI: say'),
(2697101,22100,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Anatoly 26971 EAI: Stand'),
(2697101,24000,0,0,0,0,0,0,0x04,2000020850,0,0,0,0,0,0,0,'Part of Anatoly 26971 EAI: say'),
(2697101,24500,15,47457,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Anatoly 26971 EAI: cast'),
(2697101,26000,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Anatoly 26971 EAI: RUN ON'),
(2697101,27000,3,0,700,0,0,0,0x04,0,0,0,0,4072.56,-4130.48,211.73,100,'Part of Anatoly 26971 EAI: move');

-- Sasha 26935
-- Relay
DELETE FROM dbscripts_on_relay WHERE id = 20563;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20563,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Sasha 26935 EAI: Active'),
(20563,10,0,0,0,0,0,0,0x04,2000020844,0,0,0,0,0,0,0,'Part of Sasha 26935 EAI: say'),
(20563,9000,0,0,0,0,0,0,0x04,2000020846,0,0,0,0,0,0,0,'Part of Sasha 26935 EAI: say'),
(20563,21000,0,0,0,0,0,0,0x04,2000020848,0,0,0,0,0,0,0,'Part of Sasha 26935 EAI: say'),
(20563,29000,31,26971,60,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Sasha 26935 EAI: search for 26971'),
(20563,29100,15,48815,0,0,26971,70,1,0,0,0,0,0,0,0,0,'Part of Sasha 26935 EAI: cast 48815 on buddy'),
(20563,30000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Sasha 26935 EAI: UnActive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020844 AND 2000020850;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020844,'Surprise, you scum!  You\'re going to tell me where my sister is or I\'ll put a bucketful of truesilver bullets through your wife\'s heart.',0,0,0,0,NULL),
(2000020845,'Stop!  Do not shoot!  Do not hurt Tatjana!',0,0,0,0,NULL),
(2000020846,'Where is Anya?',0,0,0,0,NULL),
(2000020847,'The brat\'s held prisoner in the wolf den on the other side of the mountain.  She was to be taken to Arugal.  Are we free to go now?',0,0,0,0,NULL),
(2000020848,'There is one last thing.  I need to know where Arugal is.',0,0,0,0,NULL),
(2000020849,'Forgive me, Tatjana...',0,0,0,0,NULL),
(2000020850,'Nothing you can do can compare to what Arugal can do to us!  I will tear you apart myself!',0,0,0,0,NULL);
