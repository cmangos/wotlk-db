-- Westguard Keep - Howling Fjord

-- Gate 190192 - should be closed by default
UPDATE gameobject SET state = 1 WHERE guid = 61216;

-- Westguard Officer 23844
-- missing template added
DELETE FROM creature_equip_template WHERE entry = 2519;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2519, 21573, 21572, 2552);
UPDATE creature_template SET EquipmentTemplateId = 2519 WHERE Entry = 23844;
-- Updates
UPDATE creature SET orientation = 4.171337 WHERE guid = 99193;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 99195;
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (99193,99203,99206,99208,99209,99210,99211);
DELETE FROM creature_movement WHERE id IN (99193,99203,99206,99208,99209,99210,99211);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #99193
(99193,1,1342.009,-3449.283,176.2015,5000,2384401,4.171337),
-- #99203
(99203,1,1368.89,-3144.83,183.881,0,0,2.40073),
(99203,2,1362.91,-3142.58,183.881,0,0,3.80895),
(99203,3,1344.22,-3152.64,183.884,0,0,3.62202),
(99203,4,1322.8,-3164.24,183.881,0,0,3.64559),
(99203,5,1343.56,-3153.03,183.884,0,0,0.49614),
(99203,6,1362.86,-3142.65,183.881,0,0,0.472578),
(99203,7,1369.05,-3144.75,183.881,0,0,5.19439),
(99203,8,1376.31,-3165.74,183.884,0,0,5.11036),
(99203,9,1388.43,-3179.38,183.881,0,0,5.47557),
(99203,10,1376.34,-3166.33,183.884,0,0,2.27897),
-- #99206
(99206,1,1400.66,-3375.83,201.87,0,0,3.10094),
(99206,2,1431.33,-3376.31,201.793,0,0,6.24254),
(99206,3,1459.71,-3373.41,201.725,0,0,0.0810892),
(99206,4,1430.58,-3376.32,201.796,0,0,3.21875),
-- #99208
(99208,1,1363.9,-3179.09,161.791,0,0,4.47008),
(99208,2,1364.95,-3186.57,162.821,0,0,4.90047),
(99208,3,1365.52,-3189.88,162.822,0,0,5.16751),
(99208,4,1374.46,-3208.96,162.821,3000,0,5.14413),
(99208,5,1362.62,-3188.95,162.821,0,0,2.1282),
(99208,6,1355.32,-3183.18,161.79,0,0,3.05497),
(99208,7,1347.97,-3185.07,161.794,0,0,3.47909),
(99208,8,1339.73,-3189.51,162.817,0,0,3.46181),
(99208,9,1329.33,-3189.62,163.274,0,0,2.06694),
(99208,10,1326.46,-3184.03,166.944,0,0,2.03003),
(99208,11,1323.39,-3178.07,170.935,0,0,1.99468),
(99208,12,1322.46,-3175.95,170.935,0,0,1.18101),
(99208,13,1337.25,-3164.4,170.932,0,0,0.983874),
(99208,14,1341.54,-3149.59,172.175,7000,2384402,2.10801),
(99208,15,1347.48,-3150.3,170.93,0,0,6.19601),
(99208,16,1362.92,-3151.88,170.933,0,0,0.154904),
(99208,17,1373.73,-3147.18,170.934,0,0,5.61342),
(99208,18,1376.36,-3149.36,170.934,0,0,5.24664),
(99208,19,1379.81,-3155.87,166.838,0,0,5.21363),
(99208,20,1382.6,-3161.45,163.275,0,0,4.92067),
(99208,21,1382.71,-3163.58,163.274,0,0,3.98998),
(99208,22,1373.81,-3170.95,162.821,0,0,3.71509),
(99208,23,1367.81,-3174.35,161.794,0,0,3.62085),
-- #99209
(99209,1,1497.97,-3311.18,179.865,0,0,4.63533),
(99209,2,1500.21,-3284.05,179.865,0,0,1.54872),
-- #99210
(99210,1,1324.67,-3172.68,183.882,0,0,2.08823),
(99210,2,1336.14,-3186.07,183.884,0,0,5.20626),
(99210,3,1341.74,-3204.87,183.881,0,0,5.30448),
(99210,4,1349.56,-3208.15,183.881,0,0,5.92888),
(99210,5,1353.21,-3207.53,183.881,0,0,0.0855143),
(99210,6,1358.47,-3200.97,183.882,0,0,0.851277),
(99210,7,1371.86,-3193.36,183.884,0,0,0.474286),
(99210,8,1385.85,-3189.81,183.881,0,0,0.236519),
(99210,9,1372.15,-3193.22,183.883,0,0,3.38989),
(99210,10,1358.7,-3200.56,183.884,0,0,3.68006),
(99210,11,1352.96,-3207.74,183.881,0,0,3.95102),
(99210,12,1349.48,-3208.13,183.881,0,0,3.18918),
(99210,13,1342.27,-3204.99,183.881,0,0,2.65511),
(99210,14,1336.33,-3186.26,183.884,0,0,1.87078),
-- #99211
(99211,1,1313.77,-3345.36,206.424,0,0,5.62993),
(99211,2,1339.88,-3359.45,206.353,0,0,5.79094),
(99211,3,1313.67,-3345.41,206.424,0,0,2.60223),
(99211,4,1292.68,-3325.78,206.498,0,0,2.40195);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2384401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2384401,0,35,5,2,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVENT'),
(2384401,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'idle'),
(2384402,3,1,66,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Part of Westguard Officer 23844 EAI
DELETE FROM dbscript_random_templates WHERE id = 20060;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20060,1,20104,40,'23674 - Random Scripts'),
(20060,1,20105,40,'23674 - Random Scripts'),
(20060,1,20106,20,'23674 - Random Scripts');
-- Part of Westguard Officer 23844 EAI
DELETE FROM dbscripts_on_relay WHERE id IN (20104,20105,20106);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20104,1,0,0,0,0,0,0,0,2000001779,0,0,0,0,0,0,0,'Part of Westguard Officer 23844 EAI - Script 1'),
(20104,4,0,0,0,0,0,0,0,2000001781,0,0,0,0,0,0,0,'Part of Westguard Officer 23844 EAI - Script 1'),
(20104,8,0,0,0,0,0,0,0,2000001782,0,0,0,0,0,0,0,'Part of Westguard Officer 23844 EAI - Script 1'),
(20104,9,13,0,0,0,186449,57955,0x10 | 0x01,0,0,0,0,0,0,0,0,'Part of Westguard Officer 23844 EAI - Script 1 - use object'),
(20105,1,0,0,0,0,0,0,0,2000001780,0,0,0,0,0,0,0,'Part of Westguard Officer 23844 EAI - Script 2'),
(20105,4,0,0,0,0,0,0,0,2000001781,0,0,0,0,0,0,0,'Part of Westguard Officer 23844 EAI - Script 2'),
(20105,8,0,0,0,0,0,0,0,2000001782,0,0,0,0,0,0,0,'Part of Westguard Officer 23844 EAI - Script 2'),
(20105,9,13,0,0,0,186440,57751,0x10 | 0x01,0,0,0,0,0,0,0,0,'Part of Westguard Officer 23844 EAI - Script 1 - use object'),
(20106,0,31,23770,255,0,0,0,0,-17000,0,0,0,0,0,0,0,'Part of Westguard Officer 23844 EAI - Script 3 - search for 23770'),
(20106,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Westguard Officer 23844 EAI - Script 3 - Active'),
(20106,1,21,1,0,0,23770,100,7,0,0,0,0,0,0,0,0,'Part of Westguard Officer 23844 EAI - Script 3 - Buddy Active'),
(20106,2,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,6.03912,'Part of Westguard Officer 23844 EAI - Script 3 - move'),
(20106,3,0,0,0,0,0,0,0,2000001783,0,0,0,0,0,0,0,'Part of Westguard Officer 23844 EAI - Script 3'),
(20106,5,3,0,0,0,23770,100,7,0,0,0,0,0,0,0,2.79288,'Part of Westguard Officer 23844 EAI - Script 3 - Buddy move'),
(20106,6,0,0,0,0,0,0,0,2000001784,0,0,0,0,0,0,0,'Part of Westguard Officer 23844 EAI - Script 3'),
(20106,10,0,0,0,0,23770,100,3,2000001785,0,0,0,0,0,0,0,'Part of Westguard Officer 23844 EAI - Script 3 - Buddy say'),
(20106,15,0,0,0,0,0,0,0,2000001786,0,0,0,0,0,0,0,'Part of Westguard Officer 23844 EAI - Script 3'),
(20106,16,3,0,0,0,23770,100,7,0,0,0,0,0,0,0,5.148721,'Part of Westguard Officer 23844 EAI - Script 3 - Buddy move'),
(20106,18,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.171337,'Part of Westguard Officer 23844 EAI - Script 3 - move'),
(20106,19,21,1,0,0,23770,100,7,0,0,0,0,0,0,0,0,'Part of Westguard Officer 23844 EAI - Script 3 - Buddy unactive'),
(20106,20,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Westguard Officer 23844 EAI - Script 3 - unactive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001779 AND 2000001786;
INSERT INTO dbscript_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001779,'Center cannon, ready.',0,0,0,1,NULL),
(2000001780,'Right cannon, ready.',0,0,0,1,NULL),
(2000001781,'Range',0,0,0,1,NULL),
(2000001782,'Fire',0,0,0,25,NULL),
(2000001783,'Mr. Ely!',0,0,0,5,NULL),
(2000001784,'Where are my recovered cannonballs?',0,0,0,6,NULL),
(2000001785,'I have top men and women on it even as we speak, $gsir:madam;!',0,0,0,1,NULL),
(2000001786,'Very well.  Carry on Mr. Ely.',0,0,0,0,NULL);

-- Westguard Cannoneer 23839
-- missing spawns added -- WoTLK Range 571x Free guids used
DELETE FROM creature_addon WHERE guid BETWEEN 5711436 AND 5711438;
DELETE FROM creature_movement WHERE id BETWEEN 5711436 AND 5711438;
DELETE FROM creature_linking WHERE guid BETWEEN 5711436 AND 5711438;
DELETE FROM creature_linking WHERE master_guid BETWEEN 5711436 AND 5711438;
DELETE FROM creature WHERE guid BETWEEN 5711436 AND 5711438;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(5711436,23839,571,1,1,0,0,1337.798,-3148.621,183.9645,3.124139,300,300,0,0,6986,0,0,0),
(5711437,23839,571,1,1,0,0,1345.712,-3146.024,183.9654,0.9599311,300,300,0,0,6986,0,0,0),
(5711438,23839,571,1,1,0,0,1341.357,-3147.68,183.9659,1.919862,300,300,0,0,6986,0,0,0);
-- Updates
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 23839);
UPDATE creature_template SET EquipmentTemplateId = 512 WHERE Entry = 23839;
-- Part of Westguard Cannoneer 23839 EAI
DELETE FROM dbscripts_on_relay WHERE id IN (20107,20108);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20107,0,42,0,0,0,0,0,0,0,0,8188,0,0,0,0,0,'Part of Westguard Cannoneer 23839 EAI'),
(20108,0,42,0,0,0,0,0,0,0,2081,0,0,0,0,0,0,'Part of Westguard Cannoneer 23839 EAI');

-- Westguard Crossbowman 23840
-- missing spawns added -- WoTLK Range 571x Free guids used
DELETE FROM creature_addon WHERE guid BETWEEN 5711439 AND 5711441;
DELETE FROM creature_movement WHERE id BETWEEN 5711439 AND 5711441;
DELETE FROM creature_linking WHERE guid BETWEEN 5711439 AND 5711441;
DELETE FROM creature_linking WHERE master_guid BETWEEN 5711439 AND 5711441;
DELETE FROM creature WHERE guid BETWEEN 5711439 AND 5711441;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(5711439,23840,571,1,1,0,0,1282.576,-3320.135,221.4218,3.717551,300,300,0,0,10635,0,0,0),
(5711440,23840,571,1,1,0,0,1326.8,-3185.993,183.9678,3.560472,300,300,0,0,10635,0,0,0),
(5711441,23840,571,1,1,0,0,1381.491,-3156.905,183.9678,0.4537856,300,300,0,0,10635,0,0,0);
-- Updates
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 23840);

-- Westguard Cavalryman 23851
-- missing spawns added -- WoTLK Range 571x Free guids used
DELETE FROM creature_addon WHERE guid BETWEEN 5711442 AND 5711444;
DELETE FROM creature_movement WHERE id BETWEEN 5711442 AND 5711444;
DELETE FROM creature_linking WHERE guid BETWEEN 5711442 AND 5711444;
DELETE FROM creature_linking WHERE master_guid BETWEEN 5711442 AND 5711444;
DELETE FROM creature WHERE guid BETWEEN 5711442 AND 5711444;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(5711442,23851,571,1,1,0,0,1456.19,-3235.68,162.508,2.68059,300,300,0,0,10635,0,0,0),
(5711443,23851,571,1,1,0,0,1457.16,-3234.79,162.215,2.68059,300,300,0,0,10635,0,0,0),
(5711444,23851,571,1,1,0,0,1456.31,-3236.99,162.626,2.68059,300,300,0,0,10635,0,0,0);
-- Updates
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 23851);
DELETE FROM creature_template_addon WHERE entry = 23851;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(23851,0,0,1,1,0,0,NULL);
UPDATE creature SET position_x = 1365.61, position_y = -3382.35, position_z = 185.825, orientation = 4.4619 WHERE guid = 100028;
UPDATE creature SET position_x = 1366.98, position_y = -3382.38, position_z = 185.761, orientation = 4.4619 WHERE guid = 100029;
UPDATE creature SET position_x = 1364.42, position_y = -3381.69, position_z = 185.924, orientation = 4.4619 WHERE guid = 100030;
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (100029,100030);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (100028,5711442);
DELETE FROM creature_movement WHERE id IN (100028);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #100028
(100028,1,1365.61,-3382.35,185.825,0,5,4.4619),
(100028,2,1363.16,-3392.5,184.746,0,0,4.54045),
(100028,3,1358.66,-3408.95,179.726,0,0,4.76742),
(100028,4,1360.99,-3420.79,177.639,0,0,4.87345),
(100028,5,1362.21,-3431.21,175.923,0,0,4.68103),
(100028,6,1360.92,-3445.43,174.711,0,0,4.74779),
(100028,7,1365.36,-3462.65,172.997,0,0,5.26615),
(100028,8,1375.43,-3476.81,171.279,0,0,5.36825),
(100028,9,1393.03,-3499.43,168.633,0,0,5.12871),
(100028,10,1395.68,-3513.4,165.786,0,0,4.84596),
(100028,11,1399.65,-3531.77,162.789,0,0,5.0266),
(100028,12,1408.01,-3547.72,158.277,0,0,5.14048),
(100028,13,1412.38,-3560.54,155.008,0,0,4.95199),
(100028,14,1416.6,-3580.19,148.068,0,0,4.9088),
(100028,15,1415.56,-3600.88,142.598,0,0,4.60642),
(100028,16,1413.94,-3623.97,138.266,0,0,4.66533),
(100028,17,1413.61,-3637.52,134.818,0,0,4.70067),
(100028,18,1413,-3658.31,133.345,0,0,4.67711),
(100028,19,1411.7,-3673.35,133.977,0,0,4.6614),
(100028,20,1418.94,-3692.04,133.178,0,0,4.93629),
(100028,21,1413.76,-3692.3,133.08,0,0,1.96827),
(100028,22,1411.74,-3673.78,133.956,0,0,1.66196),
(100028,23,1412.99,-3659.02,133.38,0,0,1.47739),
(100028,24,1413.55,-3638,134.74,0,0,1.50881),
(100028,25,1414.15,-3617.09,139.822,0,0,1.55986),
(100028,26,1415.5,-3600.67,142.636,0,0,1.46954),
(100028,27,1417.17,-3585.35,146.49,0,0,1.60698),
(100028,28,1413.64,-3568.03,152.769,0,0,1.85438),
(100028,29,1411.08,-3555.5,156.313,0,0,1.7994),
(100028,30,1405.07,-3542.01,160.007,0,0,2.07822),
(100028,31,1398.35,-3529.07,163.337,0,0,1.96434),
(100028,32,1395.77,-3513.66,165.746,0,0,1.66981),
(100028,33,1393.58,-3499.91,168.553,0,0,1.85831),
(100028,34,1375.13,-3476.47,171.312,0,0,2.2353),
(100028,35,1365.68,-3463.12,172.937,0,0,2.05073),
(100028,36,1361.1,-3445.39,174.702,0,0,1.70123),
(100028,37,1362.09,-3431.35,175.916,0,0,1.552),
(100028,38,1360.91,-3420.87,177.631,0,0,1.67767),
(100028,39,1358.59,-3409.3,179.651,0,0,1.37529),
(100028,40,1363.02,-3392.79,184.653,0,0,1.3046),
(100028,41,1365.68,-3382.18,185.82,0,0,1.34387),
(100028,42,1369.16,-3366.13,185.063,0,0,1.32817),
(100028,43,1371.4,-3356.11,180.955,0,0,1.36744),
(100028,44,1372.82,-3343.87,176.098,0,0,1.33209),
(100028,45,1376.82,-3332.79,173.339,0,0,1.30068),
(100028,46,1382.01,-3316.96,169.076,0,0,1.12396),
(100028,47,1392.65,-3300.65,165.828,0,0,1.22999),
(100028,48,1391.81,-3284.64,163.946,0,0,1.71301),
(100028,49,1393.42,-3266.62,162.416,0,0,1.37136),
(100028,50,1398.57,-3253.93,161.432,0,0,1.33602),
(100028,51,1400.66,-3240.99,160.974,0,0,1.63447),
(100028,52,1399.11,-3228.73,160.837,0,0,2.32169),
(100028,53,1386.83,-3223.48,160.558,0,0,3.2249),
(100028,54,1377.41,-3227.55,160.723,0,0,3.84537),
(100028,55,1373.34,-3233.51,160.901,0,0,4.37551),
(100028,56,1371.63,-3240.86,160.966,0,0,4.74857),
(100028,57,1375.87,-3253.84,161.063,0,0,5.28656),
(100028,58,1387.51,-3273.34,162.727,0,0,5.21195),
(100028,59,1391.79,-3284.52,163.933,0,0,4.96077),
(100028,60,1391.87,-3300.36,165.747,0,0,4.41884),
(100028,61,1382.36,-3315.61,168.712,0,0,4.11647),
(100028,62,1378.03,-3328.44,172.495,0,0,4.40706),
(100028,63,1372.68,-3344.05,176.161,0,0,4.4424),
(100028,64,1371.47,-3355.83,180.83,0,0,4.59163),
(100028,65,1369.38,-3365.79,184.939,0,0,4.48953),
(100028,66,1365.73,-3381.97,185.818,0,0,4.53665),
-- #5711442
(5711442,1,1452.77,-3234.14,163.101,0,5,2.77091),
(5711442,2,1436.44,-3227.5,163.146,0,0,2.66488),
(5711442,3,1430.01,-3222.09,163.053,0,0,2.22425),
(5711442,4,1421.51,-3207.2,161.757,0,0,1.97685),
(5711442,5,1420.68,-3191.43,162.238,0,0,1.65877),
(5711442,6,1418.07,-3180.3,162.867,0,0,1.8826),
(5711442,7,1411.63,-3165.16,162.838,0,0,1.92187),
(5711442,8,1407.27,-3149.08,162.951,0,0,2.03183),
(5711442,9,1395.98,-3136.75,163.766,0,0,2.36562),
(5711442,10,1383.36,-3124.42,163.964,0,0,2.36562),
(5711442,11,1376.38,-3118.21,164.049,0,0,2.7701),
(5711442,12,1364,-3115.87,164.952,0,0,3.04892),
(5711442,13,1352.48,-3116.67,165.113,0,0,3.36701),
(5711442,14,1342.07,-3121.37,164.983,0,0,3.68509),
(5711442,15,1330.05,-3128.89,162.926,0,0,3.79112),
(5711442,16,1323.5,-3135.54,160.258,0,0,3.96391),
(5711442,17,1314.22,-3143.63,157.978,0,0,3.85788),
(5711442,18,1323.38,-3135.34,160.233,0,0,0.743777),
(5711442,19,1329.72,-3128.97,162.842,0,0,0.728069),
(5711442,20,1341.83,-3121.48,164.97,0,0,0.484595),
(5711442,21,1355.79,-3115.02,165.176,0,0,0.17829),
(5711442,22,1372.17,-3117.82,164.305,0,0,5.96668),
(5711442,23,1390.66,-3131.1,163.907,0,0,5.57398),
(5711442,24,1404.41,-3144.23,163.266,0,0,5.39727),
(5711442,25,1410.67,-3160.99,162.647,0,0,5.01243),
(5711442,26,1415.75,-3174.42,163.072,0,0,5.13416),
(5711442,27,1420.31,-3187.31,162.484,0,0,5.00064),
(5711442,28,1420.78,-3197.55,161.948,0,0,4.7611),
(5711442,29,1423.01,-3210.32,161.993,0,0,5.09489),
(5711442,30,1429.53,-3221.98,163.048,0,0,5.48365),
(5711442,31,1438.54,-3228.91,163.283,0,0,5.76639),
(5711442,32,1451.73,-3233.92,163.252,0,0,5.9431),
(5711442,33,1468.75,-3239.35,160.02,0,0,6.03735),
(5711442,34,1482.5,-3241.26,154.298,0,0,6.11981),
(5711442,35,1500.39,-3246.16,154.01,0,0,5.78995),
(5711442,36,1516.23,-3257.92,153.5,0,0,5.36192),
(5711442,37,1522.05,-3281.9,152.163,0,0,4.86712),
(5711442,38,1523.65,-3299.31,152.67,0,0,4.7611),
(5711442,39,1524.5,-3316.79,152.903,0,0,4.7611),
(5711442,40,1525.74,-3330.72,151.965,0,0,4.84356),
(5711442,41,1526.41,-3344.66,151.033,0,0,4.6747),
(5711442,42,1522.49,-3359.01,152.026,0,0,4.36054),
(5711442,43,1515.89,-3372.71,153.167,0,0,4.12493),
(5711442,44,1507.08,-3384.39,153.727,0,0,4.01497),
(5711442,45,1500.53,-3392.87,161.752,0,0,3.991),
(5711442,46,1492.13,-3394.77,167.058,0,0,3.17419),
(5711442,47,1482.17,-3394.79,169.498,0,0,3.05638),
(5711442,48,1476.18,-3393.33,171.95,0,0,2.80898),
(5711442,49,1464.27,-3389.07,179.765,0,0,2.84825),
(5711442,50,1457.06,-3387.08,182.365,0,0,3.01643),
(5711442,51,1443.17,-3387.95,183.988,0,0,3.3463),
(5711442,52,1423.39,-3394.31,183.266,0,0,3.46018),
(5711442,53,1403.78,-3396.95,182.802,0,0,3.22456),
(5711442,54,1385.5,-3395.21,184.52,0,0,3.03214),
(5711442,55,1371.6,-3393.1,185.365,0,0,2.92611),
(5711442,56,1359.77,-3391.21,185.372,0,0,2.87113),
(5711442,57,1351.65,-3389.1,187.354,0,0,2.90647),
(5711442,58,1338.09,-3385.62,186.961,0,0,2.87113),
(5711442,59,1323.8,-3378.77,188.472,0,0,2.61195),
(5711442,60,1310.11,-3368.51,191.693,0,0,2.50985),
(5711442,61,1302.65,-3362.69,190.02,0,0,2.48236),
(5711442,62,1284.16,-3347.45,190.373,0,0,2.50985),
(5711442,63,1275.32,-3340.65,194.869,0,0,2.37633),
(5711442,64,1269.36,-3332.9,199.267,0,0,1.99148),
(5711442,65,1266.59,-3320.76,201.478,0,0,1.74016),
(5711442,66,1269.97,-3335.13,198.451,0,0,5.03489),
(5711442,67,1275.91,-3341.81,194.16,0,0,5.57681),
(5711442,68,1283.44,-3346.87,190.365,0,0,5.56896),
(5711442,69,1301.14,-3361.49,189.928,0,0,5.65535),
(5711442,70,1311.13,-3369.07,191.705,0,0,5.61608),
(5711442,71,1324.74,-3379.01,188.361,0,0,5.72604),
(5711442,72,1337.87,-3385.65,186.95,0,0,5.94987),
(5711442,73,1351.44,-3389.14,187.344,0,0,6.10695),
(5711442,74,1362.98,-3390.84,185.101,0,0,6.09517),
(5711442,75,1374.87,-3393.36,185.728,0,0,6.04412),
(5711442,76,1390.91,-3396.12,183.496,0,0,6.17763),
(5711442,77,1414.37,-3397.23,182.381,0,0,0.0279622),
(5711442,78,1427.66,-3395.38,183.384,0,0,0.247874),
(5711442,79,1441.26,-3390.38,183.939,0,0,0.243947),
(5711442,80,1453.25,-3387.52,182.961,0,0,0.157553),
(5711442,81,1461.24,-3387.77,181.23,0,0,5.93809),
(5711442,82,1476.45,-3393.48,171.788,0,0,5.97735),
(5711442,83,1491.82,-3394.97,167.207,0,0,0.137914),
(5711442,84,1499.79,-3393.44,162.46,0,0,0.430082),
(5711442,85,1506.98,-3384.62,153.735,0,0,0.908958),
(5711442,86,1515.97,-3372.82,153.167,0,0,0.979644),
(5711442,87,1522.57,-3358.98,152.021,0,0,1.19563),
(5711442,88,1527.08,-3340.98,151.191,0,0,1.59618),
(5711442,89,1524.45,-3317.64,152.856,0,0,1.68258),
(5711442,90,1523.68,-3299.18,152.657,0,0,1.65509),
(5711442,91,1522.1,-3282.64,152.131,0,0,1.67472),
(5711442,92,1516.7,-3257.87,153.451,0,0,2.44441),
(5711442,93,1499.33,-3246.35,154.016,0,0,2.81355),
(5711442,94,1482.34,-3241.14,154.311,0,0,2.85282),
(5711442,95,1473.68,-3239.6,158.631,0,0,3.0099),
(5711442,96,1456.9,-3235.96,162.368,0,0,2.74286);
-- Links
DELETE FROM creature_linking WHERE master_guid IN (100028,5711442);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
-- Group 1
(100029, 100028, 512),
(100030, 100028, 512),
-- Group 2
(5711443, 5711442, 512),
(5711444, 5711442, 512);
-- Part of Westguard Cavalryman 23851 EAI
DELETE FROM dbscripts_on_relay WHERE id IN (20109,20110);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20109,0,42,0,0,0,0,0,0,0,0,2552,0,0,0,0,0,'Part of Westguard Cavalryman 23851 EAI \ Westguard Defender 23842'),
(20110,0,42,0,0,0,0,0,0,2179,143,0,0,0,0,0,0,'Part of Westguard Cavalryman 23851 EAI');

-- Westguard Defender 23842
-- missing spawns added -- WoTLK Range 571x Free guids used
DELETE FROM creature_addon WHERE guid BETWEEN 5711445 AND 5711470;
DELETE FROM creature_movement WHERE id BETWEEN 5711445 AND 5711470;
DELETE FROM creature_linking WHERE guid BETWEEN 5711445 AND 5711470;
DELETE FROM creature_linking WHERE master_guid BETWEEN 5711445 AND 5711470;
DELETE FROM creature WHERE guid BETWEEN 5711445 AND 5711470;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(5711445,23842,571,1,1,0,0,1331.24,-3163.38,170.934,0.421855,300,300,0,0,42540,0,0,0),
(5711446,23842,571,1,1,0,0,1317.38,-3166.95,170.933,5.253441,300,300,0,0,42540,0,0,0),
(5711447,23842,571,1,1,0,0,1366.52,-3153.45,162.799,5.235988,300,300,0,0,42540,0,0,0),
(5711448,23842,571,1,1,0,0,1340.13,-3153.89,163.565,1.954769,300,300,0,0,42540,0,0,0),
(5711449,23842,571,1,1,0,0,1364.19,-3155.89,170.934,3.630285,300,300,0,0,42540,0,0,0),
(5711450,23842,571,1,1,0,0,1337.77,-3168.17,162.805,5.218534,300,300,0,0,42540,0,0,0),
(5711451,23842,571,1,1,0,0,1359.81,-3147.95,170.934,3.630285,300,300,0,0,42540,0,0,0),
(5711452,23842,571,1,1,0,0,1346.41,-3150.21,165.502,5.340707,300,300,0,0,42540,0,0,0),
(5711453,23842,571,1,1,0,0,1376.38,-3146.93,170.936,3.665191,300,300,0,0,42540,0,0,0),
(5711454,23842,571,1,1,0,0,1343.5,-3159.35,163.369,5.201081,300,300,0,0,42540,0,0,0),
(5711455,23842,571,1,1,0,0,1363.1,-3146.34,170.934,0.4886922,300,300,0,0,42540,0,0,0),
(5711456,23842,571,1,1,0,0,1356.83,-3153.96,165.587,3.630285,300,300,0,0,42540,0,0,0),
(5711457,23842,571,1,1,0,0,1335.3,-3171.23,170.934,0.5061455,300,300,0,0,42540,0,0,0),
(5711458,23842,571,1,1,0,0,1340.54,-3153.49,165.5,5.166174,300,300,0,0,42540,0,0,0),
(5711459,23842,571,1,1,0,0,1361.29,-3160.96,153.577,2.042035,300,300,0,0,42540,0,0,0),
(5711460,23842,571,1,1,0,0,1370.62,-3151.22,162.799,5.148721,300,300,0,0,42540,0,0,0),
(5711461,23842,571,1,1,0,0,1329.83,-3152.26,172.168,6.213372,300,300,0,0,42540,0,0,0),
(5711462,23842,571,1,1,0,0,1330.65,-3145.01,172.162,5.707227,300,300,0,0,42540,0,0,0),
(5711463,23842,571,1,1,0,0,1351.86,-3146.19,165.509,0.4886922,300,300,0,0,42540,0,0,0),
(5711464,23842,571,1,1,0,0,1356.61,-3143.33,163.405,0.4886922,300,300,0,0,42540,0,0,0),
(5711465,23842,571,1,1,0,0,1351.32,-3140.63,172.166,4.171337,300,300,0,0,42540,0,0,0),
(5711466,23842,571,1,1,0,0,1419.13,-3142.17,163.997,3.874631,300,300,0,0,42540,0,0,0),
(5711467,23842,571,1,1,0,0,1407.07,-3131.2,162.798,4.049164,300,300,0,0,42540,0,0,0),
(5711468,23842,571,1,1,0,0,1344.62,-3137.21,172.166,4.729842,300,300,0,0,42540,0,0,0),
(5711469,23842,571,1,1,0,0,1386.04,-3096.93,164.916,3.961897,300,300,0,0,42540,0,0,0),
(5711470,23842,571,1,1,0,0,1407.52,-3108.69,166.042,0.8726646,300,300,0,0,42540,0,0,0);
-- Updates
UPDATE creature_template SET EquipmentTemplateId = 242 WHERE Entry = 23842;
-- individual addons
DELETE FROM creature_addon WHERE guid IN (99154,5711448,5711452,5711454,5711456,5711458,5711463,5711464);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(99154,0,0,1,1,0,0,42648),
(5711448,0,0,1,1,0,0,42648),
(5711452,0,0,1,1,0,0,42648),
(5711454,0,0,1,1,0,0,42648),
(5711456,0,0,1,1,0,0,42648),
(5711458,0,0,1,1,0,0,42648),
(5711463,0,0,1,1,0,0,42648),
(5711464,0,0,1,1,0,0,42648);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (99008,99009,99010,99011,99012,99013,99023,99024,99025,99026);
UPDATE creature SET position_x = 1386.631348, position_y = -3338.025146, position_z = 174.415314, orientation = 3.180859 WHERE guid = 99046;
UPDATE creature SET position_x = 1387.294800, position_y = -3337.999268, position_z = 174.295410, orientation = 3.180859 WHERE guid = 99047;
UPDATE creature SET position_x = 1405.43, position_y = -3106.81, position_z = 166.029, orientation = 0.8552113, spawndist = 0, MovementType = 0 WHERE guid = 99155;
UPDATE creature SET position_x = 1357.177, position_y = -3163.147, position_z = 153.6569, orientation = 2.024582, spawndist = 0, MovementType = 0 WHERE guid = 99157;
UPDATE creature SET position_x = 1327.609, position_y = -3173.95, position_z = 162.8819, orientation = 5.218534, spawndist = 0, MovementType = 0 WHERE guid = 99156;
UPDATE creature SET position_x = 1328.512, position_y = -3158.509, position_z = 165.5484, orientation = 3.717551, spawndist = 0, MovementType = 0 WHERE guid = 99154;
UPDATE creature SET position_x = 1331.594, position_y = -3171.935, position_z = 162.8819, orientation = 5.270895, spawndist = 0, MovementType = 0 WHERE guid = 99152;
UPDATE creature SET position_x = 1327.68, position_y = -3165.287, position_z = 171.0181, orientation = 3.682645, spawndist = 0, MovementType = 0 WHERE guid = 99153;
-- Part of Westguard Defender 23842 EAI
DELETE FROM dbscripts_on_relay WHERE id IN (20111);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20111,0,42,0,0,0,0,0,0,12944,143,0,0,0,0,0,0,'Part of Westguard Defender 23842 EAI');
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (99047);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (99046);
DELETE FROM creature_movement WHERE id IN (99046);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #99046
(99046,1,1374.75,-3338.87,174.632,0,0,3.20176),
(99046,2,1367.63,-3338.97,174.779,0,0,2.94258),
(99046,3,1357.01,-3335.17,173.891,0,0,2.69125),
(99046,4,1343.27,-3327.99,174.258,0,0,2.58915),
(99046,5,1335.46,-3322.42,174.299,0,0,2.30641),
(99046,6,1329.18,-3313.75,174.076,0,0,1.87837),
(99046,7,1328.47,-3306.65,174.076,0,0,1.23827),
(99046,8,1333.66,-3298.85,174.31,0,0,0.642935),
(99046,9,1339.42,-3297.27,174.445,0,0,6.28168),
(99046,10,1344.41,-3298.89,174.56,0,0,5.81978),
(99046,11,1348.52,-3303.76,175.16,0,0,5.20325),
(99046,12,1350.79,-3310.7,176.103,0,0,5.0226),
(99046,13,1353.87,-3320.82,174.809,0,0,5.26215),
(99046,14,1358.69,-3328.46,174.442,0,0,5.49384),
(99046,15,1365.37,-3331.74,174.035,0,0,6.1837),
(99046,16,1373.68,-3330.67,173.051,0,0,0.524902),
(99046,17,1379.29,-3322.2,170.686,0,0,1.10217),
(99046,18,1387.86,-3306.38,166.611,0,0,1.11788),
(99046,19,1390.12,-3299.2,165.648,0,0,1.4124),
(99046,20,1388.66,-3284.19,163.885,0,0,1.78369),
(99046,21,1380.53,-3264.43,162.27,0,0,1.97218),
(99046,22,1376.93,-3256.28,161.121,0,0,1.98789),
(99046,23,1373.51,-3246.2,161.004,0,0,1.86223),
(99046,24,1373.01,-3239.31,160.922,0,0,1.44597),
(99046,25,1375.68,-3230.64,160.804,0,0,1.0729),
(99046,26,1383.3,-3221.29,160.585,0,0,0.593809),
(99046,27,1392.21,-3218.25,160.828,0,0,0.0636652),
(99046,28,1398.56,-3219.46,160.85,0,0,5.98853),
(99046,29,1402.72,-3222.06,160.902,0,0,5.54871),
(99046,30,1412.13,-3233.84,161.596,0,0,5.31702),
(99046,31,1414.47,-3239.79,161.994,0,0,4.95181),
(99046,32,1414.3,-3256.29,163.05,0,0,4.61016),
(99046,33,1413.31,-3265.96,165.154,0,0,4.61016),
(99046,34,1405.79,-3279.45,166.21,0,0,4.20569),
(99046,35,1403.79,-3294.6,167.18,0,0,4.60624),
(99046,36,1403.85,-3300.15,167.212,0,0,5.0814),
(99046,37,1408.73,-3311.19,168.083,0,0,4.72404),
(99046,38,1406.42,-3322.87,168.618,0,0,4.35884),
(99046,39,1399.86,-3332.69,169.657,0,0,4.06432),
(99046,40,1387.11,-3337.91,174.328,0,0,3.61271);
-- Links
DELETE FROM creature_linking WHERE master_guid IN (99046);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99047, 99046, 512);

-- Father Levariol 24038
-- position corrected
UPDATE creature SET position_x = 1343.999023, position_y = -3142.699951, position_z = 172.165527, orientation = 3.595378 WHERE guid = 88313;

-- Mage-Lieutenant Malister 23888
-- position corrected
UPDATE creature SET orientation = 0.4014257 WHERE guid = 88314;

-- Captain Adams 23749
UPDATE creature SET position_x = 1333.452026, position_y = -3143.483887, position_z = 172.164200, orientation = 0.629368, spawndist = 0, MovementType = 2 WHERE guid = 88312;
UPDATE creature_template SET MovementType = 2 WHERE entry = 23749;
DELETE FROM creature_movement_template WHERE entry = 23749;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(23749,1,1333.452,-3143.484,172.1642,0,0,100),
(23749,2,1340.917,-3139.544,172.1641,0,0,100);

-- Dragonflayer Vrykul Prisoner 24284
DELETE FROM creature_template_addon WHERE entry = 24284;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(24284,0,1,0,0,0,0,NULL);

-- Peppy Wrongnozzle 24283
DELETE FROM creature_template_addon WHERE entry = 24283;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(24283,0,0,1,1,0,0,35777);
-- Part of Peppy Wrongnozzle 24283 EAI
DELETE FROM dbscripts_on_relay WHERE id = 20112;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20112,0,31,24333,255,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Peppy Wrongnozzle 24283 EAI - search for 23770'),
(20112,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Peppy Wrongnozzle 24283 EAI - Active'),
(20112,1,21,1,0,0,24333,100,7,0,0,0,0,0,0,0,0,'Part of Peppy Wrongnozzle 24283 EAI - Buddy Active'),
(20112,3,0,20061,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Peppy Wrongnozzle 24283 EAI'),
(20112,9,0,20062,0,0,24333,100,7,0,0,0,0,0,0,0,0,'Part of Peppy Wrongnozzle 24283 EAI - Buddy say'),
(20112,10,21,1,0,0,24333,100,7,0,0,0,0,0,0,0,0,'Part of Peppy Wrongnozzle 24283 EAI - Buddy unactive'),
(20112,11,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Peppy Wrongnozzle 24283 EAI - unactive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001787 AND 2000001795;
INSERT INTO dbscript_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001787,'Hey, bartender, another round!',0,0,0,396,NULL),
(2000001788,'You done cleaning that mug yet ...hic?',0,0,0,396,NULL),
(2000001789,'I can whip up better than thish, Jashon.',0,0,0,396,NULL),
(2000001790,'You should... you should send thish shtuff over to Petrov for his bombs!',0,0,0,396,NULL),
(2000001791,'That\'s a pretty dressh, Celeste. You\'re sho pretty. I love you guys ...hic!',0,0,0,396,NULL),
(2000001792,'I think you\'ve had just about enough.',0,0,0,0,NULL),
(2000001793,'Uh huh.',0,0,0,0,NULL),
(2000001794,'Who\'s that talking? I can barely see the top of your head. Are you sure that you\'re old enough to be drinking?',0,0,0,0,NULL),
(2000001795,'Peppy, I swear you could drink a dwarf under the table.',0,0,0,0,NULL);
-- Part of Peppy Wrongnozzle 24283 EAI
DELETE FROM dbscript_random_templates WHERE id IN (20061,20062);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20061,0,2000001787,0,'24283 - Random OOC Texts'),
(20061,0,2000001788,0,'24283 - Random OOC Texts'),
(20061,0,2000001789,0,'24283 - Random OOC Texts'),
(20061,0,2000001790,0,'24283 - Random OOC Texts'),
(20061,0,2000001791,0,'24283 - Random OOC Texts'),
(20062,0,2000001792,0,'24333 - Random OOC Texts'),
(20062,0,2000001793,0,'24333 - Random OOC Texts'),
(20062,0,2000001794,0,'24333 - Random OOC Texts'),
(20062,0,2000001795,0,'24333 - Random OOC Texts');

-- Chef Kettleblack 23773
DELETE FROM creature_template_addon WHERE entry = 23773;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(23773,0,0,1,1,0,0,NULL);

-- Innkeeper Celeste Goodhutch 23937
DELETE FROM creature_template_addon WHERE entry = 23937;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(23937,0,0,0,1,0,0,NULL);

-- Stabled Westguard Eagle 23985
UPDATE creature SET position_x = 1447.854004, position_y = -3316.601563, position_z = 168.821106, spawndist = 5, MovementType = 1 WHERE guid = 112642;

-- Westguard Worker 23911
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 23911);
DELETE FROM creature_template_addon WHERE entry = 23911;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(23911,0,0,1,1,233,0,NULL);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (105163);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(105163,0,0,1,1,0,0,NULL);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (105163);
DELETE FROM creature_movement WHERE id IN (105163);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(105163,1,1308.05,-3281.8,177.028,0,0,4.97653),
(105163,2,1311.98,-3284.69,177.052,0,0,5.76585),
(105163,3,1320.62,-3288.23,177.056,0,0,6.25941),
(105163,4,1323.32,-3286.8,177.062,0,0,1.03651),
(105163,5,1319.65,-3281.79,177.065,0,0,1.87139),
(105163,6,1321.61,-3276.68,177.149,0,0,1.04042),
(105163,7,1327.93,-3273.19,177.919,0,0,5.96172),
(105163,8,1334.34,-3276.56,174.737,0,0,5.54076),
(105163,9,1335.05,-3285.61,174.581,0,0,4.6886),
(105163,10,1332.34,-3294.68,174.379,0,0,4.24486),
(105163,11,1326.05,-3300.64,174.076,0,0,3.65581),
(105163,12,1321.44,-3300.49,173.964,0,0,2.92932),
(105163,13,1321.76,-3298.63,174.023,10000,2391101,1.22893),
(105163,14,1314.5,-3296.13,173.958,0,0,2.61908),
(105163,15,1301.35,-3288.23,174.231,0,0,2.48557),
(105163,16,1298.16,-3284.26,173.978,0,0,2.12428),
(105163,17,1298.37,-3278.41,173.957,0,0,1.20929),
(105163,18,1300.93,-3274.78,177.834,0,0,0.951681),
(105163,19,1303.73,-3268.97,176.456,0,0,0.98938),
(105163,20,1308.46,-3263.95,175.558,0,0,0.694856),
(105163,21,1315.03,-3259.34,175.972,0,0,0.455309),
(105163,22,1320.65,-3257.87,175.536,0,0,0.185328),
(105163,23,1327.01,-3259.81,175.283,0,0,5.89125),
(105163,24,1334.65,-3263.95,175.887,0,0,5.40038),
(105163,25,1338.28,-3270.76,174.975,0,0,4.87832),
(105163,26,1335.25,-3274.84,174.751,0,0,3.02008),
(105163,27,1329.25,-3271.82,177.917,0,0,2.70199),
(105163,28,1322.84,-3270.63,177.189,0,0,3.44812),
(105163,29,1316.54,-3278.66,177.067,0,0,4.0568),
(105163,30,1308.49,-3276.73,177.076,10000,2391101,2.41925);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2391101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2391101,3,0,20065,0,0,0,0,0,0,0,0,0,0,0,0,0,'Random Text');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001796 AND 2000001803;
INSERT INTO dbscript_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000001796,'Watch it there.',0,0,0,0,NULL),
(2000001797,'Let\'s work smarter, people. The captain wants this done by the end of the week!',0,0,0,0,NULL),
(2000001798,'Break time\'s over, ladies.',0,0,0,0,NULL),
(2000001799,'Do you even know what you\'re doing?',0,0,0,0,NULL),
(2000001800,'Faster!',0,0,0,0,NULL),
(2000001801,'No! A little to the left... there, you have it.',0,0,0,0,NULL),
(2000001802,'Look out for that beam!',0,0,0,0,NULL),
(2000001803,'At the rate this is going, we\'re not going to finish on time.',0,0,0,0,NULL);
DELETE FROM dbscript_random_templates WHERE id = 20065;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20065,0,2000001796,0,'24283 - Random OOC Texts'),
(20065,0,2000001797,0,'24283 - Random OOC Texts'),
(20065,0,2000001798,0,'24283 - Random OOC Texts'),
(20065,0,2000001799,0,'24283 - Random OOC Texts'),
(20065,0,2000001800,0,'24283 - Random OOC Texts'),
(20065,0,2000001801,0,'24283 - Random OOC Texts'),
(20065,0,2000001802,0,'24283 - Random OOC Texts'),
(20065,0,2000001803,0,'24283 - Random OOC Texts');

-- Westguard Lumberjack 23836
-- missing spawns added -- WoTLK Range 571x Free guids used
DELETE FROM creature_addon WHERE guid BETWEEN 5711471 AND 5711472;
DELETE FROM creature_movement WHERE id BETWEEN 5711471 AND 5711472;
DELETE FROM creature_linking WHERE guid BETWEEN 5711471 AND 5711472;
DELETE FROM creature_linking WHERE master_guid BETWEEN 5711471 AND 5711472;
DELETE FROM creature WHERE guid BETWEEN 5711471 AND 5711472;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(5711471,23836,571,1,1,0,0,1295.42,-3425.06,178.79,4.485496,300,300,0,0,5914,0,0,0),
(5711472,23836,571,1,1,0,0,1306.25,-3399.25,183.904,3.473205,300,300,0,0,5914,0,0,0);
-- Updates
UPDATE creature SET position_x = 1331.578003, position_y = -3401.270996, position_z = 181.907791, orientation = 1.628966 WHERE guid = 98412;

-- Fjord Rat 24174
UPDATE creature SET spawndist = 30, MovementType = 1 WHERE guid IN (106037,106108);

-- Turkey
UPDATE creature SET position_x = 1468.348022, position_y = -3307.964355, position_z = 168.340271, spawndist = 15, MovementType = 1 WHERE guid = 119565;
UPDATE creature SET position_x = 1356.450806, position_y = -3240.762451, position_z = 162.854416, spawndist = 15, MovementType = 1 WHERE guid = 119536;
UPDATE creature SET position_x = 1348.328979, position_y = -3310.484375, position_z = 176.084671, spawndist = 15, MovementType = 1 WHERE guid = 119568;

-- Chicken
UPDATE creature SET position_x = 1388.132690, position_y = -3339.305176, position_z = 174.217697, spawndist = 15, MovementType = 1 WHERE guid = 105656;
UPDATE creature SET position_x = 1410.901611, position_y = -3289.803711, position_z = 168.133377, spawndist = 15, MovementType = 1 WHERE guid = 105797;
UPDATE creature SET position_x = 1424.790405, position_y = -3236.315918, position_z = 162.659180, spawndist = 15, MovementType = 1 WHERE guid = 105740;
