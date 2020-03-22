-- Acherus: Ebdon Hold

-- The Lich King 25462
UPDATE creature SET guid = 6090001 WHERE guid = 128738;

-- Val'kyr Battle-maiden 28487
UPDATE creature SET guid = 6090002 WHERE guid = 128515;
UPDATE creature SET guid = 6090003 WHERE guid = 128516;

-- Risen Drudge 29212
UPDATE creature SET guid = 6090004 WHERE guid = 128465;
UPDATE creature_addon SET guid = 6090004 WHERE guid = 128465;
UPDATE creature_movement SET id = 6090004 WHERE id = 128465;
UPDATE creature SET guid = 6090005 WHERE guid = 128466;
UPDATE creature_addon SET guid = 6090005 WHERE guid = 128466;
UPDATE creature SET guid = 6090006 WHERE guid = 128467;
UPDATE creature_addon SET guid = 6090006 WHERE guid = 128467;
UPDATE creature SET guid = 6090007 WHERE guid = 128468;
UPDATE creature_addon SET guid = 6090007 WHERE guid = 128468;
UPDATE creature SET guid = 6090008 WHERE guid = 128469;
UPDATE creature_addon SET guid = 6090008 WHERE guid = 128469;
UPDATE creature SET guid = 6090009 WHERE guid = 128471;
UPDATE creature_addon SET guid = 6090009 WHERE guid = 128471;
UPDATE creature SET guid = 6090010 WHERE guid = 128472;
UPDATE creature_addon SET guid = 6090010 WHERE guid = 128472;
UPDATE creature SET guid = 6090011 WHERE guid = 128473;
UPDATE creature_addon SET guid = 6090011 WHERE guid = 128473;
UPDATE creature SET guid = 6090012 WHERE guid = 128474;
UPDATE creature_addon SET guid = 6090012 WHERE guid = 128474;

-- Scarlet Crusade Prisoner 28385
UPDATE creature SET guid = 6090013 WHERE guid = 129392;
UPDATE creature_addon SET guid = 6090013 WHERE guid = 129392;
UPDATE creature SET guid = 6090014 WHERE guid = 129393;
UPDATE creature_addon SET guid = 6090014 WHERE guid = 129393;
UPDATE creature SET guid = 6090015 WHERE guid = 129394;
UPDATE creature_addon SET guid = 6090015 WHERE guid = 129394;
UPDATE creature SET guid = 6090016 WHERE guid = 129395;
UPDATE creature_addon SET guid = 6090016 WHERE guid = 129395;

-- Argent Dawn Prisoner 28386
UPDATE creature SET guid = 6090017 WHERE guid = 129401;
UPDATE creature_addon SET guid = 6090017 WHERE guid = 129401;
UPDATE creature SET guid = 6090018 WHERE guid = 129402;
UPDATE creature_addon SET guid = 6090018 WHERE guid = 129402;
UPDATE creature SET guid = 6090019 WHERE guid = 129403;
UPDATE creature_addon SET guid = 6090019 WHERE guid = 129403;
UPDATE creature SET guid = 6090020 WHERE guid = 129404;
UPDATE creature_addon SET guid = 6090020 WHERE guid = 129404;
UPDATE creature SET guid = 6090021 WHERE guid = 130252;
UPDATE creature_addon SET guid = 6090021 WHERE guid = 130252;
UPDATE creature SET guid = 6090022 WHERE guid = 130253;
UPDATE creature_addon SET guid = 6090022 WHERE guid = 130253;
UPDATE creature SET guid = 6090023 WHERE guid = 130254;
UPDATE creature_addon SET guid = 6090023 WHERE guid = 130254;
UPDATE creature SET guid = 6090024 WHERE guid = 130255;
UPDATE creature_addon SET guid = 6090024 WHERE guid = 130255;

-- Alchemist Karloff 29203
UPDATE creature SET guid = 6090025 WHERE guid = 128456;

-- Gangrenus 29207
UPDATE creature SET guid = 6090026 WHERE guid = 130411;

-- Fester 29208
UPDATE creature SET guid = 6090027 WHERE guid = 129818;

-- Corpulous 29205
UPDATE creature SET guid = 6090028 WHERE guid = 130410;

-- Master Siegesmith Corvus 28500
UPDATE creature SET guid = 6090029 WHERE guid = 128577;
UPDATE creature_addon SET guid = 6090029 WHERE guid = 128577;
UPDATE creature_movement SET id = 6090029 WHERE id = 128577;

-- Mindless Laborer 28506
UPDATE creature SET guid = 6090030 WHERE guid = 128580;
UPDATE creature_movement SET id = 6090030 WHERE id = 128580;

-- Enslaved Laborer 28505
UPDATE creature SET guid = 6090031 WHERE guid = 128579;
UPDATE creature_movement SET id = 6090031 WHERE id = 128579;

-- Death Knight Initiate 28390 / 28391 / 28392 / 28393 / 28394
UPDATE creature_template_addon SET bytes1 = 7, auras = NULL WHERE entry = 28390;
-- All Redone
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (28390,28391,28392,28393,28394));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (28390,28391,28392,28393,28394));
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id IN (28390,28391,28392,28393,28394));
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id IN (28390,28391,28392,28393,28394));
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id IN (28390,28391,28392,28393,28394));
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id IN (28390,28391,28392,28393,28394))
OR master_guid IN (SELECT guid FROM creature WHERE id IN (28390,28391,28392,28393,28394));
DELETE FROM creature WHERE id IN (28390,28391,28392,28393,28394);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(6090032,28390,609,1,69,25361,0,2483.3,-5545.52,420.727,4.79965,20,20,0,0,2614,0,0,0), -- script 1
(6090033,28390,609,1,69,0,0,2516.23,-5593.2,420.647,3.2567,20,20,0,0,2614,0,0,0), -- script 2
(6090034,28391,609,1,69,0,0,2520.24,-5599.18,420.727,3.71755,20,20,0,0,2614,0,0,0),
(6090035,28391,609,1,69,0,0,2479.96,-5542.2,420.727,4.4855,20,20,0,0,2614,0,0,0),
(6090036,28391,609,1,69,0,0,2487.12,-5539.81,420.727,2.23402,20,20,0,0,2614,0,0,0),
(6090037,28391,609,1,69,0,0,2520.34,-5588.22,420.727,1.0821,20,20,0,0,2614,0,0,0),
(6090038,28391,609,1,69,0,0,2523.57,-5591.07,421.484,3.82227,20,20,0,0,2614,0,0,0),
(6090039,28392,609,1,69,0,0,2508.49,-5626.18,420.727,0.663225,20,20,0,0,2614,0,0,0),
(6090040,28392,609,1,69,0,0,2487.9,-5549.49,420.727,3.10669,20,20,0,0,2614,0,0,0),
(6090041,28392,609,1,69,0,0,2529.05,-5594.43,420.735,5.86431,20,20,0,0,2614,0,0,0),
(6090042,28392,609,1,69,0,0,2487.9,-5549.49,420.727,3.10669,20,20,0,0,2614,0,0,0),
(6090043,28392,609,1,69,0,0,2490.95,-5550.02,420.727,5.79449,20,20,0,0,2614,0,0,0),
(6090044,28392,609,1,69,0,0,2525.41,-5583.9,420.735,3.31613,20,20,0,0,2614,0,0,0),
(6090045,28393,609,1,69,0,0,2482.54,-5539.44,420.727,1.41372,20,20,0,0,2614,0,0,0),
(6090046,28393,609,1,69,0,0,2480.1,-5532.43,420.733,3.9968,20,20,0,0,2614,0,0,0),
(6090047,28393,609,1,69,0,0,2484.87,-5535.15,421.47,3.89208,20,20,0,0,2614,0,0,0),
(6090048,28393,609,1,69,0,0,2515.49,-5580.58,420.727,3.03687,20,20,0,0,2614,0,0,0),
(6090049,28393,609,1,69,0,0,2516.38,-5584.72,421.47,0.10472,20,20,0,0,2614,0,0,0),
(6090050,28394,609,1,69,0,0,2513.98,-5614.97,420.727,3.15905,20,20,0,0,2614,0,0,0),
(6090051,28394,609,1,69,0,0,2525.87,-5595.92,420.727,2.87979,20,20,0,0,2614,0,0,0),
(6090052,28394,609,1,69,0,0,2489.18,-5545.59,421.477,3.87463,20,20,0,0,2614,0,0,0),
(6090053,28394,609,1,69,0,0,2507.27,-5621.15,420.727,1.13446,20,20,0,0,2614,0,0,0),
(6090054,28394,609,1,69,0,0,2489.81,-5536.31,420.727,0.558505,20,20,0,0,2614,0,0,0);
-- Waypoints
DELETE FROM creature_movement WHERE id IN (6090032,6090033);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(6090032,1,2453.87,-5545.37,420.643,100,0,0),
(6090032,2,2423.38,-5574.52,420.631,100,0,0),
(6090032,3,2423.38,-5610.59,420.6,100,0,0),
(6090032,4,2410.19,-5626.02,420.654,100,0,0),
(6090032,5,2381.18,-5637.17,420.858,100,0,0),
(6090032,6,2372.68,-5645.34,426.017,100,0,0),
(6090032,7,2348.25,-5666.51,426.029,100,11000,2839001),
(6090032,8,2373.07,-5652.69,426.126,100,0,0),
(6090032,9,2382.63,-5645.56,421.512,100,3000,2839002),
(6090033,1,2516.23,-5593.2,420.647,3.07005,100000,2839003);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2839001,2839002,2839003);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2839001,3000,0,1,66,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2839001,8000,0,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2839002,100,0,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN OFF'),
(2839002,200,0,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2839002,300,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Death Knight Initiate - unactive'),
(2839002,1000,0,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn'),
(2839003,100,1,10,28405,30000,1,0,0,0x08,0,0,0,0,2520.44,-5593.01,420.727,3.44,'summon 28405 - WP 1'),
(2839003,100,2,10,28405,30000,2,0,0,0x08,0,0,0,0,2516.65,-5596.68,420.727,1.39,'summon 28405 - WP 2'),
(2839003,100,3,10,28405,30000,3,0,0,0x08,0,0,0,0,2515.93,-5589.89,420.727,4.92,'summon 28405 - WP 3');
DELETE FROM dbscripts_on_creature_death WHERE id = 28390; 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(28390,2000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(28390,5000,18,5000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
-- not req anymore
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2839101,2839102,2839401);

-- Acherus Necromancer 28383
UPDATE creature SET guid = 6090056 WHERE guid = 129389;
UPDATE creature SET guid = 6090057 WHERE guid = 129390;
UPDATE creature_movement SET id = 6090057 WHERE id = 129390;
UPDATE creature SET guid = 6090058 WHERE guid = 129391;
UPDATE creature_movement SET id = 6090058 WHERE id = 129391;
UPDATE creature SET guid = 6090059 WHERE guid = 130223;

-- Acherus Ghoul 28405
DELETE FROM creature_addon WHERE guid IN (129480,129481,129482);
DELETE FROM creature_movement WHERE id IN (129480,129481,129482);
DELETE FROM creature_linking WHERE guid IN (129480,129481,129482);
DELETE FROM creature_linking WHERE master_guid IN (129480,129481,129482);
DELETE FROM creature WHERE guid IN (129480,129481,129482);
DELETE FROM creature_movement_template WHERE entry = 28405;
INSERT INTO creature_movement_template (entry, pathID, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(28405,1,1,2520.44,-5593.01,420.727,3.4383,60000,2840501),
(28405,2,1,2516.65,-5596.68,420.727,1.39626,60000,2840501),
(28405,3,1,2515.93,-5589.89,420.727,4.92183,60000,2840501);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 28405;
DELETE FROM dbscripts_on_creature_movement WHERE id = 2840501;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2840501,3000,22,2093,129,0,0,0,0,0,0,0,0,0,0,0,0,'temp faction');

-- Instructor Razuvious 28357
UPDATE creature SET guid = 6090060 WHERE guid = 129307;
DELETE FROM creature_movement_template WHERE entry = 28357;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(28357,1,2481.1,-5560.54,420.493,5.58015,70000,2835701),
(28357,2,2491.86,-5571.77,420.459,5.3508,0,0),
(28357,3,2497.91,-5588.32,420.462,4.9212,0,0),
(28357,4,2494.03,-5612.09,420.491,1.24868,0,0),
(28357,5,2498.68,-5591.69,420.494,1.78118,70000,2835702),
(28357,6,2492.94,-5573.05,420.475,2.14717,0,0),
(28357,7,2475.93,-5558.57,420.485,2.79199,0,0),
(28357,8,2455.66,-5554.78,420.508,0.040735,0,0),
(28357,9,2472.56,-5558.04,420.453,6.06788,0,0);
-- texts moved
UPDATE dbscript_string SET entry = 2000020355 WHERE entry = 2000000349;
UPDATE dbscript_string SET entry = 2000020356 WHERE entry = 2000000350;
UPDATE dbscript_string SET entry = 2000020357 WHERE entry = 2000000351;
UPDATE dbscript_string SET entry = 2000020358 WHERE entry = 2000000352;
UPDATE dbscript_string SET entry = 2000020359 WHERE entry = 2000000353;
UPDATE dbscript_string SET entry = 2000020360 WHERE entry = 2000000354;
UPDATE dbscript_string SET entry = 2000020361 WHERE entry = 2000000355;
UPDATE dbscript_string SET entry = 2000020362 WHERE entry = 2000000356;
UPDATE dbscript_string SET entry = 2000020363 WHERE entry = 2000000357;
UPDATE dbscript_string SET entry = 2000020364 WHERE entry = 2000000358;
UPDATE dbscript_string SET entry = 2000020365 WHERE entry = 2000000359;
UPDATE dbscript_string SET entry = 2000020366 WHERE entry = 2000000360;
UPDATE dbscript_string SET entry = 2000020367 WHERE entry = 2000000361;
UPDATE dbscript_string SET entry = 2000020368 WHERE entry = 2000000362;
UPDATE dbscript_string SET entry = 2000020369 WHERE entry = 2000000363;
UPDATE dbscript_string SET entry = 2000020370 WHERE entry = 2000000364;
UPDATE dbscript_string SET entry = 2000020371 WHERE entry = 2000000365;
UPDATE dbscript_string SET entry = 2000020372 WHERE entry = 2000000366;
UPDATE dbscript_string SET entry = 2000020373 WHERE entry = 2000000367;
UPDATE dbscript_string SET entry = 2000020374 WHERE entry = 2000000368;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2835701,2835702);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2835701,0,45,0,20160,0,0,0,0,0,0,0,0,0,0,0,0,'Start Random Script 1'),
(2835702,0,45,0,20161,0,0,0,0,0,0,0,0,0,0,0,0,'Start Random Script 2');
DELETE FROM dbscript_random_templates WHERE id BETWEEN 20160 AND 20161;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20160,1,20291,65,'28357 - Random Script - Base'),
(20160,1,20292,35,'28357 - Random Script - 1-2'),
(20161,1,20291,65,'28357 - Random Script - Base'),
(20161,1,20293,35,'28357 - Random Script - 2-2');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20291 AND 20293;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20291,0,31,1,1,0,0,0,0,-70000,0,0,0,0,0,0,0,'Part of Instructor Razuvious: Random Script - Base - must fail'),
(20292,0,31,28383,20,0,0,0,0,-70000,0,0,0,0,0,0,0,'search for 28383'),
(20292,100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(20292,200,3,0,0,0,0,0,0,0,0,0,0,2482.32,-5552.39,420.641,1.51,''),
(20292,3000,0,0,0,0,0,0,0x04,2000020355,0,0,0,0,0,0,0,''),
(20292,4000,20,2,0,0,28383,6090058,23,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(20293,0,31,28383,20,0,0,0,0,-70000,0,0,0,0,0,0,0,'search for 28383'),
(20293,100,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(20293,200,3,0,0,0,0,0,0,0,0,0,0,2510.38,-5592.75,420.643,6.19,''),
(20293,3000,0,0,0,0,0,0,0x04,2000020355,0,0,0,0,0,0,0,''),
(20293,4000,20,2,0,0,28383,6090057,23,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2838301,2838302);
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 2838301
(2838301,0,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Acherus Necromancer - active'),
(2838301,3000,0,15,51516,0,0,28390,10,1,0,0,0,0,0,0,0,0,''),
(2838301,10000,0,22,1770,129,0,28390,6090032,23,0,0,0,0,0,0,0,0,'temp faction'),
(2838301,11000,0,3,0,0,0,28390,6090032,23,0,0,0,0,0,0,0,4.16,''),
(2838301,11000,0,28,8,0,0,28390,6090032,23,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2838301,15000,0,0,0,0,0,28390,6090032,23,2000020358,0,0,0,0,0,0,0,''),
(2838301,20000,0,0,0,0,0,28357,15,7,2000020361,0,0,0,0,0,0,0,''),
(2838301,25000,0,3,0,0,0,28357,15,7,0,0,0,0,0,0,0,2.78367,''),
(2838301,28000,0,0,0,0,0,28357,15,7,2000020364,0,0,0,0,0,0,0,''),
(2838301,31000,0,3,0,0,0,28357,15,7,0,0,0,0,0,0,0,1.50472,''),
(2838301,31000,0,0,0,0,0,0,0,0,2000020366,2000020367,0,0,0,0,0,0,''),
(2838301,35000,0,3,0,0,0,0,0,0,0,0,0,0,2482.23,-5546.44,420.644,0.76,''),
(2838301,39000,0,1,133,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2838301,44000,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2838301,44000,0,15,51537,0,0,28390,6090032,23,0,0,0,0,0,0,0,0,''),
(2838301,46000,0,15,51519,0,0,28390,6090032,23,0,0,0,0,0,0,0,0,''),
(2838301,48000,0,28,0,0,0,28390,6090032,23,0,0,0,0,0,0,0,0,'STATE_STAND'),
(2838301,50000,0,3,0,0,0,0,0,0,0,0,0,0,2477.37,-5551,420.647,0.77,''),
(2838301,54000,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0.746414,''),
(2838301,55000,0,0,0,0,0,28357,15,7,2000020369,2000020370,0,0,0,0,0,0,''),
(2838301,60000,0,0,0,0,0,28390,6090032,23,2000020371,2000020372,0,0,0,0,0,0,''),
(2838301,61000,0,21,1,0,0,28390,6090032,23,0,0,0,0,0,0,0,0,'Death Knight Initiate - active'),
(2838301,61000,0,25,1,0,0,28390,6090032,23,0,0,0,0,0,0,0,0,'RUN ON'),
(2838301,62000,0,20,2,0,0,28390,6090032,23,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(2838301,63000,0,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2838301,64000,0,21,0,0,0,28357,100,7,0,0,0,0,0,0,0,0,'Instructor Razuvious - unactive'),
(2838301,65000,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Acherus Necromancer - unactive'),
-- 2838302
(2838302,0,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Acherus Necromancer - active'),
(2838302,1000,0,31,28390,15,0,0,0,0,0,0,0,0,0,0,0,0,''), 
(2838302,2000,0,21,1,0,0,28390,6090033,23,0,0,0,0,0,0,0,0,'Death Knight Initiate - active'),
(2838302,3000,0,15,51516,0,0,28390,6090033,1,0,0,0,0,0,0,0,0,''),
(2838302,10000,0,22,1770,129,0,28390,6090033,23,0,0,0,0,0,0,0,0,'temp faction'),
(2838302,11000,0,3,0,0,0,28390,6090033,23,0,0,0,0,0,0,0,3.07005,''),
(2838302,11000,0,28,8,0,0,28390,6090033,23,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2838302,15000,0,0,0,0,0,28390,6090033,23,2000020357,2000020356,2000020373,0,0,0,0,0,''),
(2838302,20000,0,0,0,0,0,28357,20,7,2000020359,2000020362,2000020360,2000020374,0,0,0,0,''),
(2838302,26000,0,0,0,0,0,28357,20,7,2000020363,0,0,0,0,0,0,0,''),
(2838302,31000,0,3,0,0,0,28357,20,7,0,0,0,0,0,0,0,1.26755,''),
(2838302,35000,0,0,0,0,0,28357,20,7,2000020365,0,0,0,0,0,0,0,''),
(2838302,41000,0,3,0,0,0,28357,20,7,0,0,0,0,0,0,0,6.19669,''),
(2838302,41000,0,0,0,0,0,0,0,0,2000020366,2000020367,0,0,0,0,0,0,''),
(2838302,46000,0,0,0,0,0,0,0,0,2000020368,0,0,0,0,0,0,0,''),
(2838302,48000,0,20,2,0,0,28390,6090033,23,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(2838302,60000,0,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2838302,61000,0,21,0,0,0,28357,100,7,0,0,0,0,0,0,0,0,'Instructor Razuvious - unactive'),
(2838302,62000,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cherus Necromancer - unactive');

-- Unworthy Initiate Anchor 29521
UPDATE creature SET guid = 6090061 WHERE guid = 128565;
UPDATE creature SET guid = 6090062 WHERE guid = 128566;
UPDATE creature SET guid = 6090063 WHERE guid = 128567;
UPDATE creature SET guid = 6090064 WHERE guid = 128568;
UPDATE creature SET guid = 6090065 WHERE guid = 128569;
UPDATE creature SET guid = 6090066 WHERE guid = 128570;
UPDATE creature SET guid = 6090067 WHERE guid = 128571;
UPDATE creature SET guid = 6090068 WHERE guid = 128572;
UPDATE creature SET guid = 6090069 WHERE guid = 128573;
UPDATE creature SET guid = 6090070 WHERE guid = 128574;
UPDATE creature SET guid = 6090071 WHERE guid = 128575;
UPDATE creature SET guid = 6090072 WHERE guid = 128576;

-- Unworthy Initiate 29519 / 29520 / 29565 / 29566 / 29567 
UPDATE creature SET guid = 6090073 WHERE guid = 128557;
UPDATE creature SET guid = 6090074 WHERE guid = 128558;
UPDATE creature SET guid = 6090075 WHERE guid = 128559;
UPDATE creature SET guid = 6090076 WHERE guid = 128561;
UPDATE creature SET guid = 6090077 WHERE guid = 128563;
UPDATE creature SET guid = 6090078 WHERE guid = 128740;
UPDATE creature SET guid = 6090079 WHERE guid = 128742;
UPDATE creature SET guid = 6090080 WHERE guid = 128743;
UPDATE creature SET guid = 6090081 WHERE guid = 128744;
UPDATE creature SET guid = 6090082 WHERE guid = 128747;
UPDATE creature SET guid = 6090083 WHERE guid = 128748;
UPDATE creature SET guid = 6090084 WHERE guid = 128749;

-- Scourge Gryphon 29488
UPDATE creature SET guid = 6090085 WHERE guid = 28556;
UPDATE creature SET guid = 6090086 WHERE guid = 76799;

-- Scourge Commander Thalanor 28510
UPDATE creature SET guid = 6090087 WHERE guid = 128582;
UPDATE creature_movement SET id = 6090087 WHERE id = 128582;

-- Siouxsie the Banshee 27928
DELETE FROM npc_gossip WHERE npc_guid = 125762;
UPDATE creature SET guid = 6090088 WHERE guid = 125762;
UPDATE creature SET guid = 6090089 WHERE guid = 128460;

-- Squire Edwards 28486
UPDATE creature SET guid = 6090090 WHERE guid = 125838;
UPDATE creature SET guid = 6090091 WHERE guid = 128514;

-- Thassarian 28449
UPDATE creature SET guid = 6090092 WHERE guid = 128483;

-- Orbaz Bloodbane 28448
UPDATE creature SET guid = 6090093 WHERE guid = 128482;

-- Koltira Deathweaver 28447
UPDATE creature SET guid = 6090094 WHERE guid = 128481;

-- Prince Keleseth 28356
UPDATE creature SET guid = 6090095 WHERE guid = 129306;

-- Highlord Darion Mograine 28444
UPDATE creature SET guid = 6090096 WHERE guid = 128470;

-- Baron Rivendare 28445
UPDATE creature SET guid = 6090097 WHERE guid = 128475;

-- Forgotten Servant 29232
-- summoned during event - not done yet
DELETE FROM creature_addon WHERE guid IN (128502,128503,128504);
DELETE FROM creature_movement WHERE id IN (128502,128503,128504);
DELETE FROM creature_linking WHERE guid IN (128502,128503,128504);
DELETE FROM creature_linking WHERE master_guid IN (128502,128503,128504);
DELETE FROM creature WHERE guid IN (128502,128503,128504);

-- Lady Alistra 28471
UPDATE creature SET guid = 6090098 WHERE guid = 129829;

-- Disciple of the Unholy 28491
UPDATE creature SET guid = 6090099 WHERE guid = 125860;
UPDATE creature SET guid = 6090100 WHERE guid = 125861;
UPDATE creature SET guid = 6090101 WHERE guid = 125862;
UPDATE creature SET guid = 6090102 WHERE guid = 125863;
UPDATE creature SET guid = 6090103 WHERE guid = 125864;
UPDATE creature SET guid = 6090104 WHERE guid = 125865;
UPDATE creature SET guid = 6090105 WHERE guid = 125866;
UPDATE creature SET guid = 6090106 WHERE guid = 125867;
UPDATE creature SET guid = 6090107 WHERE guid = 125868;
UPDATE creature SET guid = 6090108 WHERE guid = 128547;
UPDATE creature SET guid = 6090109 WHERE guid = 128550;
UPDATE creature SET guid = 6090110 WHERE guid = 128551;
UPDATE creature SET guid = 6090111 WHERE guid = 128552;
UPDATE creature SET guid = 6090112 WHERE guid = 129868;
UPDATE creature SET guid = 6090113 WHERE guid = 129869;
UPDATE creature SET guid = 6090114 WHERE guid = 129875;
UPDATE creature SET guid = 6090115 WHERE guid = 130458;
UPDATE creature SET guid = 6090116 WHERE guid = 130459;

-- Disciple of Blood 28489
UPDATE creature SET guid = 6090117 WHERE guid = 125843;
UPDATE creature SET guid = 6090118 WHERE guid = 125844;
UPDATE creature SET guid = 6090119 WHERE guid = 125845;
UPDATE creature SET guid = 6090120 WHERE guid = 125846;
UPDATE creature SET guid = 6090121 WHERE guid = 125847;
UPDATE creature SET guid = 6090122 WHERE guid = 125848;
UPDATE creature SET guid = 6090123 WHERE guid = 125849;
UPDATE creature SET guid = 6090124 WHERE guid = 125850;
UPDATE creature SET guid = 6090125 WHERE guid = 128527;
UPDATE creature SET guid = 6090126 WHERE guid = 128532;
UPDATE creature SET guid = 6090127 WHERE guid = 128533;
UPDATE creature SET guid = 6090128 WHERE guid = 128534;
UPDATE creature SET guid = 6090129 WHERE guid = 129852;
UPDATE creature SET guid = 6090130 WHERE guid = 129855;
UPDATE creature SET guid = 6090131 WHERE guid = 130440;
UPDATE creature SET guid = 6090132 WHERE guid = 130441;

-- Lord Thorval 28472
UPDATE creature SET guid = 6090133 WHERE guid = 129830;
-- texts moved
UPDATE dbscript_string SET entry = 2000020375 WHERE entry = 2000000510;
UPDATE dbscript_string SET entry = 2000020376 WHERE entry = 2000000511;
UPDATE dbscript_string SET entry = 2000020377 WHERE entry = 2000000512;
UPDATE dbscript_string SET entry = 2000020378 WHERE entry = 2000000513;
UPDATE dbscript_string SET entry = 2000020379 WHERE entry = 2000000514;
UPDATE dbscript_string SET entry = 2000020380 WHERE entry = 2000000515;
UPDATE dbscript_string SET entry = 2000020381 WHERE entry = 2000000516;
UPDATE dbscript_string SET entry = 2000020382 WHERE entry = 2000000517;
UPDATE dbscript_string SET entry = 2000020383 WHERE entry = 2000000518;
-- Script
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2847201 AND 2847207;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2847201,1000,0,0,0,0,0,0,0,0,2000020375,0,0,0,0,0,0,0,''),
(2847202,1000,0,0,0,0,0,0,0,0,2000020376,0,0,0,0,0,0,0,''),
(2847202,10000,0,0,0,0,0,0,0,0,2000020377,0,0,0,0,0,0,0,''),
(2847203,1000,0,0,0,0,0,0,0,0,2000020378,0,0,0,0,0,0,0,''),
(2847203,10000,0,0,0,0,0,0,0,0,2000020379,0,0,0,0,0,0,0,''),
(2847204,1000,0,0,0,0,0,0,0,0,2000020380,0,0,0,0,0,0,0,''),
(2847205,1000,0,0,0,0,0,0,0,0,2000020381,0,0,0,0,0,0,0,''),
(2847206,1000,0,0,0,0,0,0,0,0,2000020382,0,0,0,0,0,0,0,''),
(2847207,1000,0,0,0,0,0,0,0,0,2000020383,0,0,0,0,0,0,0,'');

-- Disciple of Frost 28490
UPDATE creature SET guid = 6090134 WHERE guid = 128540;
UPDATE creature SET guid = 6090135 WHERE guid = 128542;
UPDATE creature SET guid = 6090136 WHERE guid = 129861;
UPDATE creature SET guid = 6090137 WHERE guid = 129866;
UPDATE creature SET guid = 6090138 WHERE guid = 130446;
UPDATE creature SET guid = 6090139 WHERE guid = 130449;
UPDATE creature SET guid = 6090140 WHERE guid = 130450;
UPDATE creature SET guid = 6090141 WHERE guid = 130451;
UPDATE creature SET guid = 6090142 WHERE guid = 130452;
UPDATE creature SET guid = 6090143 WHERE guid = 125851;
UPDATE creature SET guid = 6090144 WHERE guid = 125852;
UPDATE creature SET guid = 6090145 WHERE guid = 125853;
UPDATE creature SET guid = 6090146 WHERE guid = 125854;
UPDATE creature SET guid = 6090147 WHERE guid = 125855;
UPDATE creature SET guid = 6090148 WHERE guid = 125856;
UPDATE creature SET guid = 6090149 WHERE guid = 125857;
UPDATE creature SET guid = 6090150 WHERE guid = 125858;
UPDATE creature SET guid = 6090151 WHERE guid = 125859;
UPDATE creature SET guid = 6090152 WHERE guid = 128536;

-- Frigid Bones 29210
-- summoned during event - not done yet
DELETE FROM creature_addon WHERE guid IN (128461,128462,128463,128464,129819,129820,129821);
DELETE FROM creature_movement WHERE id IN (128461,128462,128463,128464,129819,129820,129821);
DELETE FROM creature_linking WHERE guid IN (128461,128462,128463,128464,129819,129820,129821);
DELETE FROM creature_linking WHERE master_guid IN (128461,128462,128463,128464,129819,129820,129821);
DELETE FROM creature WHERE guid IN (128461,128462,128463,128464,129819,129820,129821);

-- Coldwraith 28488
UPDATE creature SET guid = 6090153 WHERE guid = 128524;
UPDATE creature_addon SET guid = 6090153 WHERE guid = 128524;
UPDATE creature SET guid = 6090154 WHERE guid = 128526;
UPDATE creature_addon SET guid = 6090154 WHERE guid = 128526;
UPDATE creature SET guid = 6090155 WHERE guid = 129846;
UPDATE creature_addon SET guid = 6090155 WHERE guid = 129846;
UPDATE creature SET guid = 6090156 WHERE guid = 130436;
UPDATE creature_addon SET guid = 6090156 WHERE guid = 130436;
UPDATE creature SET guid = 6090157 WHERE guid = 125839;
UPDATE creature_addon SET guid = 6090157 WHERE guid = 125839;
UPDATE creature SET guid = 6090158 WHERE guid = 125840;
UPDATE creature_addon SET guid = 6090158 WHERE guid = 125840;
UPDATE creature SET guid = 6090159 WHERE guid = 125841;
UPDATE creature_addon SET guid = 6090159 WHERE guid = 125841;
UPDATE creature SET guid = 6090160 WHERE guid = 125842;
UPDATE creature_addon SET guid = 6090160 WHERE guid = 125842;
UPDATE creature SET guid = 6090161 WHERE guid = 128523;
UPDATE creature_addon SET guid = 6090161 WHERE guid = 128523;

-- Amal'thazad 28474
UPDATE creature SET guid = 6090162 WHERE guid = 130425;

-- Death Knight Initiate 28406
-- pairs
UPDATE creature SET guid = 6090163 WHERE guid = 129492;
UPDATE creature_addon SET guid = 6090163 WHERE guid = 129492;
UPDATE creature_movement SET id = 6090163 WHERE id = 129492;
UPDATE creature SET guid = 6090164 WHERE guid = 129493;
UPDATE creature_addon SET guid = 6090164 WHERE guid = 129493;
UPDATE creature_movement SET id = 6090164 WHERE id = 129493;
UPDATE creature SET guid = 6090165 WHERE guid = 129494;
UPDATE creature_addon SET guid = 6090165 WHERE guid = 129494;
UPDATE creature_movement SET id = 6090165 WHERE id = 129494;
UPDATE creature SET guid = 6090166 WHERE guid = 129495;
UPDATE creature_addon SET guid = 6090166 WHERE guid = 129495;
UPDATE creature_movement SET id = 6090166 WHERE id = 129495;
UPDATE creature SET guid = 6090167 WHERE guid = 129496;
UPDATE creature_addon SET guid = 6090167 WHERE guid = 129496;
UPDATE creature_movement SET id = 6090167 WHERE id = 129496;
UPDATE creature SET guid = 6090168 WHERE guid = 129497;
UPDATE creature_addon SET guid = 6090168 WHERE guid = 129497;
UPDATE creature_movement SET id = 6090168 WHERE id = 129497;
UPDATE creature SET guid = 6090169 WHERE guid = 129498;
UPDATE creature_addon SET guid = 6090169 WHERE guid = 129498;
UPDATE creature_movement SET id = 6090169 WHERE id = 129498;
UPDATE creature SET guid = 6090170 WHERE guid = 129499;
UPDATE creature_addon SET guid = 6090170 WHERE guid = 129499;
UPDATE creature_movement SET id = 6090170 WHERE id = 129499;
-- running ones
UPDATE creature SET guid = 6090171 WHERE guid = 129517;
UPDATE creature_addon SET guid = 6090171 WHERE guid = 129517;
UPDATE creature_movement SET id = 6090171 WHERE id = 129517;
UPDATE creature SET guid = 6090172 WHERE guid = 129518;
UPDATE creature_addon SET guid = 6090172 WHERE guid = 129518;
UPDATE creature_movement SET id = 6090172 WHERE id = 129518;
UPDATE creature SET guid = 6090173 WHERE guid = 129529;
UPDATE creature_addon SET guid = 6090173 WHERE guid = 129529;
UPDATE creature_movement SET id = 6090173 WHERE id = 129529;
UPDATE creature SET guid = 6090174 WHERE guid = 129544;
UPDATE creature_addon SET guid = 6090174 WHERE guid = 129544;
UPDATE creature_movement SET id = 6090174 WHERE id = 129544;
UPDATE creature SET guid = 6090175 WHERE guid = 129546;
UPDATE creature_addon SET guid = 6090175 WHERE guid = 129546;
UPDATE creature_movement SET id = 6090175 WHERE id = 129546;
UPDATE creature SET guid = 6090176 WHERE guid = 129547;
UPDATE creature_addon SET guid = 6090176 WHERE guid = 129547;
UPDATE creature_movement SET id = 6090176 WHERE id = 129547;
UPDATE creature SET guid = 6090177 WHERE guid = 129550;
UPDATE creature_addon SET guid = 6090177 WHERE guid = 129550;
UPDATE creature_movement SET id = 6090177 WHERE id = 129550;
UPDATE creature SET guid = 6090178 WHERE guid = 129558;
UPDATE creature_addon SET guid = 6090178 WHERE guid = 129558;
UPDATE creature_movement SET id = 6090178 WHERE id = 129558;
UPDATE creature SET spawntimesecsmin = 120, spawntimesecsmax = 240 WHERE guid BETWEEN 6090171 AND 6090178;
-- texts moved
UPDATE dbscript_string SET entry = 2000020384 WHERE entry = 2000000409;
-- Script
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2840601 AND 2840608;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2840601,0,0,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(2840601,100,0,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(2840602,1000,0,24,26308,0,0,0,0,8,0,0,0,0,0,0,0,0,'mount'),
(2840602,2000,0,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'fly ON'),
(2840603,2000,0,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'fly OFF'),
(2840603,3000,0,24,0,0,0,0,0,8,0,0,0,0,0,0,0,0,'unmount'),
(2840604,4000,0,1,1,0,0,0,0,0,273,6,274,0,0,0,0,0,'random emote'),
(2840605,0,0,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(2840605,1000,0,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn'),
(2840606,1000,0,22,2084,49,0,0,0,0,0,0,0,0,0,0,0,0,'temp faction'),
(2840607,3000,0,1,66,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2840608,3000,0,1,66,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2840608,5000,0,31,28377,70,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2840608,6000,0,0,0,0,0,28377,15,7,2000020384,0,0,0,0,0,0,0,'force buddy to: say text');
DELETE FROM dbscripts_on_creature_death WHERE id = 28406; 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(28406,1000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(28406,5000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');

-- Acherus Necromancer 28889
-- This will stop whole zone to be active all the time (should reduce mem load)
UPDATE creature_template SET ExtraFlags = 0 WHERE entry = 28889;

-- Scarlet Gryphon 28614
-- Generic script used ... delay not needed anymore
DELETE FROM dbscripts_on_creature_movement WHERE id = 2861401;
UPDATE creature_movement SET waittime = 0, script_id = 5 WHERE id IN (129308,129309) AND point = 1;
DELETE FROM vehicle_accessory WHERE vehicle_entry = 28614;
