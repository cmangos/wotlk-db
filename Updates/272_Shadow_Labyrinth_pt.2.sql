-- Shadow Labyrinth -- Part 2.

-- Duplicates
DELETE FROM creature WHERE guid IN (67133,67149,85584);
DELETE FROM creature_addon WHERE guid IN (67133,67149,85584);
DELETE FROM creature_movement WHERE id IN (67133,67149,85584);

-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (56058,56059);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(56058, 18848, 555, 3, 1, -429.269, -164.208, 12.8429, 1.46941, 7200, 68465, 9693, 0, 2), -- Malicious Instructor
(56059, 18796, 555, 3, 1, -429.269, -164.208, 12.8429, 1.46941, 7200, 83832, 0, 0, 2); -- Fel Overseer 
-- waypoints
DELETE FROM creature_movement WHERE id IN (56058,56059);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #56058
(56058,1,-429.292,-151.568,12.7285,0,0,1.08457,0,0),
(56058,2,-421.039,-139.61,13.5211,0,0,1.40737,0,0),
(56058,3,-418.878,-129.877,12.7572,0,0,1.52439,0,0),
(56058,4,-421.126,-120.375,12.7369,0,0,2.57133,0,0),
(56058,5,-428.992,-119.874,12.7277,0,0,4.1587,0,0),
(56058,6,-431.674,-129.208,12.8984,0,0,4.68177,0,0),
(56058,7,-430.502,-145.853,12.5057,0,0,4.65978,0,0),
(56058,8,-430.78,-163.413,12.4118,0,0,4.68727,0,0),
(56058,9,-431.827,-171.839,12.912,0,0,4.32207,0,0),
(56058,10,-438.555,-179.567,13.1316,0,0,4.33699,0,0),
(56058,11,-440.367,-186.258,12.6892,0,0,4.72261,0,0),
(56058,12,-436.943,-191.156,12.6892,0,0,5.87636,0,0),
(56058,13,-429.428,-191.682,12.6892,0,0,0.454692,0,0),
(56058,14,-424.702,-181.096,12.6892,0,0,1.6375,0,0),
(56058,15,-429.456,-163.267,12.7784,0,0,1.78437,0,0),
-- #56059
(56059,1,-429.292,-151.568,12.7285,0,0,1.08457,0,0),
(56059,2,-421.039,-139.61,13.5211,0,0,1.40737,0,0),
(56059,3,-418.878,-129.877,12.7572,0,0,1.52439,0,0),
(56059,4,-421.126,-120.375,12.7369,0,0,2.57133,0,0),
(56059,5,-428.992,-119.874,12.7277,0,0,4.1587,0,0),
(56059,6,-431.674,-129.208,12.8984,0,0,4.68177,0,0),
(56059,7,-430.502,-145.853,12.5057,0,0,4.65978,0,0),
(56059,8,-430.78,-163.413,12.4118,0,0,4.68727,0,0),
(56059,9,-431.827,-171.839,12.912,0,0,4.32207,0,0),
(56059,10,-438.555,-179.567,13.1316,0,0,4.33699,0,0),
(56059,11,-440.367,-186.258,12.6892,0,0,4.72261,0,0),
(56059,12,-436.943,-191.156,12.6892,0,0,5.87636,0,0),
(56059,13,-429.428,-191.682,12.6892,0,0,0.454692,0,0),
(56059,14,-424.702,-181.096,12.6892,0,0,1.6375,0,0),
(56059,15,-429.456,-163.267,12.7784,0,0,1.78437,0,0);
-- Pool -- only one should be spawned.
DELETE FROM pool_template WHERE entry = 25493;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25493,1,'SL - Malicious Instructor / Fel Overseer');
DELETE FROM pool_creature WHERE pool_entry = 25493;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(56058,25493,0,'SL - Malicious Instructor'),
(56059,25493,0,'SL - Fel Overseer');

-- Cabal Deathsworn
-- waypoints
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 66869;
DELETE FROM creature_movement WHERE id = 66869;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #66869
(66869,1,-453.685,-186.804,12.7725,14000,1863502,1.53589,0,0);

-- Cabal Acolyte
-- waypoints
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 66843;
DELETE FROM creature_movement WHERE id = 66843;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #66843
(66843,1,-454.315,-183.092,12.7725,11000,1863305,5.06145,0,0);

-- Tortured Skeleton
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (67145,67090,67093,67091,67092,67094,67095,67146,67099,67096,67098,67097,67147,67133);

-- Sanctum of Shadows
-- 1st group
-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (56062,56064);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(56062, 18638, 555, 3, 1, -367.967,-269.298, 12.6889, 0.0211422, 7200, 16767, 9465, 0, 0),
(56064, 18631, 555, 3, 1, -367.898224, -267.586578, 12.689170, 0.0211422, 7200, 18164, 0, 0, 2);
UPDATE creature SET position_x = -367.924713, position_y = -265.591736, position_z = 12.689170, orientation = 0.0211422, MovementType = 0, spawndist = 0 WHERE guid = 67244;
UPDATE creature SET position_x = -368.105591, position_y = -263.493958, position_z = 12.689170, orientation = 0.0211422, MovementType = 0, spawndist = 0 WHERE guid = 66876;
DELETE FROM creature_movement WHERE id = 56064;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(56064,1,-367.898224,-267.586578,12.689170,18000,1863103,0.0211422,0,0),
(56064,2,-354.834,-267.555,12.6874,18000,1863103,0.0211422,0,0);
-- link
DELETE FROM creature_linking WHERE master_guid = 56064;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(56062, 56064, 515),
(67244, 56064, 515),
(66876, 56064, 515);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1863103;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1863103,5,3,0,0,0,0,0,0,0,0,0,0,0,0,0.0211422,''),
(1863103,5,3,0,0,18638,56062,7 | 0x10,0,0,0,0,0,0,0,0.0211422,''),
(1863103,5,3,0,0,18830,67244,7 | 0x10,0,0,0,0,0,0,0,0.0211422,''),
(1863103,5,3,0,0,18638,66876,7 | 0x10,0,0,0,0,0,0,0,0.0211422,''),
(1863103,6,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1863103,6,28,8,0,18638,56062,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1863103,6,28,8,0,18830,67244,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1863103,6,28,8,0,18638,66876,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1863103,15,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1863103,15,28,0,0,18638,56062,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1863103,15,28,0,0,18830,67244,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1863103,15,28,0,0,18638,66876,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND');

-- 2nd group
UPDATE creature SET position_x = -313.243744, position_y = -268.244324, position_z = 12.683684, orientation = 3.256969 WHERE guid = 66880;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 66877;
DELETE FROM creature_movement WHERE id = 66877;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(66877,1,-288.638,-265.622,12.6827,18000,1863801,0.0211422,0,0),
(66877,2,-313.295,-263.085,12.6835,18000,1863801,0.0211422,0,0);
-- link
DELETE FROM creature_linking WHERE master_guid = 66877;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(66810, 66877, 515),
(67245, 66877, 515),
(66880, 66877, 515);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1863801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1863801,5,3,0,0,0,0,0,0,0,0,0,0,0,0,0.0211422,''),
(1863801,5,3,0,0,18631,66810,7 | 0x10,0,0,0,0,0,0,0,0.0211422,''),
(1863801,5,3,0,0,18830,67245,7 | 0x10,0,0,0,0,0,0,0,0.0211422,''),
(1863801,5,3,0,0,18638,66880,7 | 0x10,0,0,0,0,0,0,0,0.0211422,''),
(1863801,6,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1863801,6,28,8,0,18631,66810,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1863801,6,28,8,0,18830,67245,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1863801,6,28,8,0,18638,66880,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1863801,15,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1863801,15,28,0,0,18631,66810,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1863801,15,28,0,0,18830,67245,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1863801,15,28,0,0,18638,66880,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND');

-- 3rd group
UPDATE creature_addon SET bytes1 = 0 WHERE guid IN (66878,66879,67246,67247);
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 67246;
DELETE FROM creature_movement WHERE id = 67246;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(67246,1,-271.362,-265.765,12.7637,18000,1883001,0.11843,0,0);
-- link
DELETE FROM creature_linking WHERE master_guid = 67246;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(66878, 67246, 3),
(66879, 67246, 3),
(67247, 67246, 3);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1883001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1883001,6,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883001,6,28,8,0,18638,66878,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883001,6,28,8,0,18638,66879,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883001,6,28,8,0,18830,67247,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883001,15,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883001,15,28,0,0,18638,66878,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883001,15,28,0,0,18638,66879,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883001,15,28,0,0,18830,67247,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND');

-- 4th group
-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid = 56066;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, curhealth, curmana, spawndist, MovementType) VALUES
(56066, 18830, 555, 3, 1, -276.893, -266.896, 12.6807, 0.0211422, 7200, 20958, 0, 0, 0);
UPDATE creature SET position_x = -277.385162, position_y = -264.977478, position_z = 12.680085, orientation = 0.0211422 WHERE guid = 67248;
UPDATE creature SET position_x = -277.139832, position_y = -263.290375, position_z = 12.680609, orientation = 0.0211422 WHERE guid = 66812;
UPDATE creature SET position_x = -276.840057, position_y = -268.581909, position_z = 12.680760, orientation = 0.0211422 WHERE guid = 66811;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 67248;
DELETE FROM creature_movement WHERE id = 67248;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(67248,1,-277.385162,-264.977478,12.680085,18000,1883002,0.0211422,0,0),
(67248,2,-275.271,-270.603,12.681,0,0,5.49971,0,0),
(67248,3,-264.933,-276.956,12.681,0,0,5.91872,0,0),
(67248,4,-256.194,-279.953,13.1726,18000,1883003,1.39639,0,0),
(67248,5,-248.819,-280.789,16.7317,0,0,6.19124,0,0),
(67248,7,-241.553,-278.927,17.0864,0,0,0.71466,0,0),
(67248,8,-236.515,-274.199,17.0864,0,0,1.01547,0,0),
(67248,9,-234.851,-261.641,17.0864,18000,1883004,3.20202,0,0),
(67248,10,-234.427,-255.882,17.0864,0,0,1.83228,0,0),
(67248,11,-237.841,-251.432,17.0864,0,0,2.63339,0,0),
(67248,12,-246.472,-248.127,17.0864,0,0,3.06379,0,0),
(67248,13,-257.26,-247.805,12.6795,0,0,3.3049,0,0),
(67248,14,-264.555,-249.428,12.0578,0,0,3.4934,0,0),
(67248,15,-271.395,-252.176,12.6814,0,0,3.91516,0,0),
(67248,16,-276.107,-256.337,12.6814,0,0,4.26152,0,0),
(67248,17,-278.227,-260.905,12.6814,0,0,4.63536,0,0),
(67248,18,-277.385162,-264.977478,12.680085,0,0,0.0211422,0,0);
-- link
DELETE FROM creature_linking WHERE master_guid = 67248;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(56066, 67248, 515),
(66812, 67248, 515),
(66811, 67248, 515);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1883002,1883003,1883004);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1883002,2,3,0,0,0,0,0,0,0,0,0,0,0,0,0.0211422,''),
(1883002,2,3,0,0,18830,56066,7 | 0x10,0,0,0,0,0,0,0,0.0211422,''),
(1883002,2,3,0,0,18631,66812,7 | 0x10,0,0,0,0,0,0,0,0.0211422,''),
(1883002,2,3,0,0,18631,66811,7 | 0x10,0,0,0,0,0,0,0,0.0211422,''),
(1883002,6,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883002,6,28,8,0,18830,56066,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883002,6,28,8,0,18631,66812,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883002,6,28,8,0,18631,66811,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883002,15,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883002,15,28,0,0,18830,56066,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883002,15,28,0,0,18631,66812,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883002,15,28,0,0,18631,66811,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883003,2,3,0,0,0,0,0,0,0,0,0,0,0,0,1.39639,''),
(1883003,2,3,0,0,18830,56066,7 | 0x10,0,0,0,0,0,0,0,1.25343,''),
(1883003,2,3,0,0,18631,66812,7 | 0x10,0,0,0,0,0,0,0,1.45449,''),
(1883003,2,3,0,0,18631,66811,7 | 0x10,0,0,0,0,0,0,0,1.51104,''),
(1883003,6,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883003,6,28,8,0,18830,56066,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883003,6,28,8,0,18631,66812,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883003,6,28,8,0,18631,66811,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883003,15,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883003,15,28,0,0,18830,56066,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883003,15,28,0,0,18631,66812,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883003,15,28,0,0,18631,66811,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883004,2,3,0,0,0,0,0,0,0,0,0,0,0,0,3.20202,''),
(1883004,2,3,0,0,18830,56066,7 | 0x10,0,0,0,0,0,0,0,3.43762,''),
(1883004,2,3,0,0,18631,66812,7 | 0x10,0,0,0,0,0,0,0,3.09518,''),
(1883004,2,3,0,0,18631,66811,7 | 0x10,0,0,0,0,0,0,0,3.15173,''),
(1883004,6,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883004,6,28,8,0,18830,56066,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883004,6,28,8,0,18631,66812,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883004,6,28,8,0,18631,66811,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(1883004,15,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883004,15,28,0,0,18830,56066,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883004,15,28,0,0,18631,66812,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND'),
(1883004,15,28,0,0,18631,66811,7 | 0x10,0,0,0,0,0,0,0,0,'STATE_STAND');

-- Grandmaster Vorpil
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 67000;
DELETE FROM creature_movement WHERE id = 67000;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(67000,1,-253.06,-264.024,17.0864,13000,1873201,3.15559,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1873201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1873201,1,1,15,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1873201,5,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1873201,9,1,274,0,0,0,0,0,0,0,0,0,0,0,0,'');
