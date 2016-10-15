-- q.11681 'Rescuing Evanor'
DELETE FROM dbscripts_on_quest_start WHERE id = 11681;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11681,0,0,0,0,0,0,0,2000001024,0,0,0,0,0,0,0,''),
(11681,0,20,2,0,27888,118574,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(11681,0,20,2,0,25732,107998,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(11681,0,20,2,0,25733,108027,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(11681,0,20,2,0,25727,107602,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(11681,0,29,2,0,0,0,0,0,0,0,0,0,0,0,0,'npcflag removed');
UPDATE quest_template SET StartScript = 11681 WHERE entry = 11681;
DELETE FROM db_script_string WHERE entry IN (2000001024,2000001025);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001024, 'Mages! Take wing!', 0, 1, 0, 0, NULL),
(2000001025, 'For Dalaran! Attack!', 0, 1, 0, 0, NULL);

-- Warmage Archus
UPDATE creature_template SET SpeedRun = 3.6 WHERE entry = 27888;
-- movement will be corrected by Script
DELETE FROM creature_movement_template WHERE entry = 27888;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(27888,1,3457.75,5892.67,147.381, 1000, 2788801,0.750492, 0, 0),
(27888,2,3455.625,5893.702,147.4695, 0, 0,100, 0, 0),
(27888,3,3444.922,5897.168,149.6032, 0, 0,100, 0, 0),
(27888,4,3429.86,5901.557,152.0295, 0, 0,100, 0, 0),
(27888,5,3404.945,5908.628,156.3629, 0, 0,100, 0, 0),
(27888,6,3367.247,5916.663,161.724, 0, 0,100, 0, 0),
(27888,7,3340.2,5924.877,164.6962, 0, 0,100, 0, 0),
(27888,8,3313.727,5936.971,164.724, 0, 0,100, 0, 0),
(27888,9,3274.562,5960.16,163.1129, 0, 0,100, 0, 0),
(27888,10,3248.379,5984.673,155.3907, 0, 0,100, 0, 0),
(27888,11,3220.327,6007.317,146.0295, 0, 0,100, 0, 0),
(27888,12,3200.061,6032.292,137.2518, 0, 0,100, 0, 0),
(27888,13,3199.989,6061.957,123.2797, 2000, 0,100, 0, 0),
(27888,14,3200.99,6074.898,144.9736, 5000, 2788802,100, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2788801,2788802);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2788801,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2788801,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2788801,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,'FLY ON'),
(2788802,0,0,0,0,0,0,0,2000001025,0,0,0,0,0,0,0,''),
(2788802,2,15,45913,0,25724,107382,1 | 0x10,0,0,0,0,0,0,0,0,''),
(2788802,3,15,42726,0,25724,107382,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2788802,4,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2788802,5,15,5,0,25724,107382,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2788802,5,3,0,0,0,0,0x04 | 0x08,0,0,0,0,3457.75,5892.67,147.381,0.750492,'back to home'),
(2788802,7,29,2,1,25356,97508,7 | 0x10,0,0,0,0,0,0,0,0,'npcflag added'),
(2788802,8,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');

-- Warmage Preston
UPDATE creature_template SET SpeedRun = 3.7 WHERE entry = 25732;
-- movement will be corrected by Script
DELETE FROM creature_movement_template WHERE entry = 25732;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(25732,1,3460.5,5877.44,149.538, 1000, 2573201,1.0821, 0, 0),
(25732,2,3442.423,5890.586,151.8029, 0, 0,100, 0, 0),
(25732,3,3428.301,5898.258,152.0295, 0, 0,100, 0, 0),
(25732,4,3404.945,5908.628,156.3629, 0, 0,100, 0, 0),
(25732,5,3367.247,5916.663,161.724, 0, 0,100, 0, 0),
(25732,6,3340.2,5924.877,164.6962, 0, 0,100, 0, 0),
(25732,7,3313.727,5936.971,164.724, 0, 0,100, 0, 0),
(25732,8,3274.562,5960.16,163.1129, 0, 0,100, 0, 0),
(25732,9,3248.529,5977.78,155.3907, 0, 0,100, 0, 0),
(25732,10,3245.32,6007.739,146.0295, 0, 0,100, 0, 0),
(25732,11,3260.127,6034.221,131.4464, 0, 0,100, 0, 0),
(25732,12,3256.624,6055.67,131.4464, 0, 0,100, 0, 0),
(25732,13,3247.428,6068.304,130.3353, 0, 0,100, 0, 0),
(25732,14,3232.078,6079.069,124.5019, 2000, 0,100, 0, 0),
(25732,15,3224.749,6083.038,147.5568, 5000, 2573202,100, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2573201,2573202);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2573201,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2573201,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2573201,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,'FLY ON'),
(2573202,2,15,45913,0,25724,107383,1 | 0x10,0,0,0,0,0,0,0,0,''),
(2573202,3,15,42726,0,25724,107383,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2573202,4,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2573202,5,3,0,0,0,0,0x04 | 0x08,0,0,0,0,3460.5,5877.44,149.538,1.0821,'back to home'),
(2573202,5,15,5,0,25724,107383,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2573202,8,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');

-- Warmage Austin
UPDATE creature_template SET SpeedRun = 3.7 WHERE entry = 25733;
-- movement will be corrected by Script
DELETE FROM creature_movement_template WHERE entry = 25733;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(25733,1,3435.27,5889.9,151.063, 1000, 2573301,3.66519, 0, 0),
(25733,2,3423.048,5891.154,151.8027, 0, 0,100, 0, 0),
(25733,3,3414.578,5894.092,149.6032, 0, 0,100, 0, 0),
(25733,4,3399.283,5899.846,152.0295, 0, 0,100, 0, 0),
(25733,5,3383.558,5907.456,156.3629, 0, 0,100, 0, 0),
(25733,6,3363.46,5915.892,161.724, 0, 0,100, 0, 0),
(25733,7,3340.2,5924.877,164.6962, 0, 0,100, 0, 0),
(25733,8,3313.727,5936.971,164.724, 0, 0,100, 0, 0),
(25733,9,3274.562,5960.16,163.1129, 0, 0,100, 0, 0),
(25733,10,3248.379,5984.673,155.3907, 0, 0,100, 0, 0),
(25733,11,3242.205,6019.475,146.0295, 0, 0,100, 0, 0),
(25733,12,3258.153,6062.04,137.2518, 0, 0,100, 0, 0),
(25733,13,3268.793,6084.862,131.4464, 0, 0,100, 0, 0),
(25733,14,3266.567,6115.484,131.4464, 0, 0,100, 0, 0),
(25733,15,3249.319,6131.716,131.4464, 0, 0,100, 0, 0),
(25733,16,3230.532,6123.678,128.8631, 0, 0,100, 0, 0),
(25733,17,3225.493,6115.814,127.0297, 2000, 0,100, 0, 0),
(25733,18,3224.336,6105.71,146.7791, 5000, 2573302,100, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2573301,2573302);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2573301,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2573301,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2573301,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,'FLY ON'),
(2573302,2,15,45913,0,25724,107385,1 | 0x10,0,0,0,0,0,0,0,0,''),
(2573302,3,15,42726,0,25724,107385,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2573302,4,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2573302,5,3,0,0,0,0,0x04 | 0x08,0,0,0,0,3435.27,5889.9,151.063,3.66519,'back to home'),
(2573302,5,15,5,0,25724,107385,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2573302,8,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');

-- Warmage Moran
UPDATE creature_template SET SpeedRun = 3.9 WHERE entry = 25727;
-- movement will be corrected by Script
DELETE FROM creature_movement_template WHERE entry = 25727;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(25727,1,3437.1,5915.95,145.724, 1000, 2572701,2.74017, 0, 0),
(25727,2,3432.615,5915.464,147.4695, 0, 0,100, 0, 0),
(25727,3,3422.987,5912.326,149.6032, 0, 0,100, 0, 0),
(25727,4,3410.065,5909.573,152.0295, 0, 0,100, 0, 0),
(25727,5,3393.331,5909.92,156.3629, 0, 0,100, 0, 0),
(25727,6,3367.247,5916.663,161.724, 0, 0,100, 0, 0),
(25727,7,3340.2,5924.877,164.6962, 0, 0,100, 0, 0),
(25727,8,3313.727,5936.971,164.724, 0, 0,100, 0, 0),
(25727,9,3274.562,5960.16,163.1129, 0, 0,100, 0, 0),
(25727,10,3248.379,5984.673,155.3907, 0, 0,100, 0, 0),
(25727,11,3222.799,6007.353,146.0295, 0, 0,100, 0, 0),
(25727,12,3190.1,6031.661,134.9186, 0, 0,100, 0, 0),
(25727,13,3165.833,6043.715,131.4464, 0, 0,100, 0, 0),
(25727,14,3145.798,6060.325,131.4464, 0, 0,100, 0, 0),
(25727,15,3138.757,6079.489,131.4464, 0, 0,100, 0, 0),
(25727,16,3156.847,6108.715,131.4464, 0, 0,100, 0, 0),
(25727,17,3183.603,6109.254,126.8353, 0, 0,100, 0, 0),
(25727,18,3195.641,6102.673,147.5568, 5000, 2572702,100, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2572701,2572702);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2572701,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2572701,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2572701,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,'FLY ON'),
(2572702,2,15,45913,0,25724,107384,1 | 0x10,0,0,0,0,0,0,0,0,''),
(2572702,3,15,42726,0,25724,107384,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2572702,4,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2572702,5,3,0,0,0,0,0x04 | 0x08,0,0,0,0,3437.1,5915.95,145.724,2.74017,'back to home'),
(2572702,5,15,5,0,25724,107384,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2572702,8,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');

-- Ascended Mage Hunter
UPDATE creature SET spawntimesecs = 90, Spawndist = 0, MovementType = 2 WHERE guid BETWEEN 107382 AND 107385;
DELETE FROM creature_movement WHERE id BETWEEN 107382 AND 107385;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(107382,1,3205.99,6082.8,138.083,5000,2572401,1.16937,0,0),
(107383,1,3220.52,6086.24,138.083,5000,2572404,2.80998,0,0),
(107384,1,3203.23,6097.03,138.083,5000,2572402,5.68977,0,0),
(107385,1,3217.85,6099.47,138.083,5000,2572403,4.08407,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2572401 AND 2572404;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2572401,0,15,45940,0,25594,119582,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(2572401,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2572402,0,15,45940,0,25594,119579,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(2572402,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2572403,0,15,45940,0,25594,119580,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(2572403,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2572404,0,15,45940,0,25594,119581,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(2572404,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');
DELETE FROM dbscripts_on_creature_death WHERE id = 25724;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(25724,0,18,4000,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Evanor's Prison
DELETE FROM dbscripts_on_go_template_use WHERE id = 187884;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(187884,0,15,46013,0,24771,114368,7 | 0x10,0,0,0,0,0,0,0,0,''),
(187884,6,15,46018,0,0,0,0x02,0,0,0,0,0,0,0,0,'');

-- target for spell
DELETE FROM spell_script_target WHERE entry = 46013;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(46013,1,24771);

-- Archmage Evanor
UPDATE creature_template SET MovementType = 2 WHERE entry = 25784;
DELETE FROM creature_movement_template WHERE entry = 25784;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(25784,1,3211.72,6091.62,138.111, 300000, 2578401,4.93928, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2578401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2578401,2,0,0,0,0,0,0,2000001026,0,0,0,0,0,0,0,''),
(2578401,5,0,0,0,0,0,0,2000001027,0,0,0,0,0,0,0,''),
(2578401,5,15,46018,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000001026,2000001027);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001026, 'I thank you, friend of Dalaran.', 0, 0, 0, 0, NULL),
(2000001027, 'We mustn\'t tarry here... stay close - I\'ll take us somewhere safe.', 0, 0, 0, 0, NULL);