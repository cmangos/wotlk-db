-- Shadow Labyrinth -- Part 3.

-- Duplicates
DELETE FROM creature WHERE guid IN (68738,85585,68739,66849,66854,66855,66884);
DELETE FROM creature_addon WHERE guid IN (68738,85585,68739,66849,66854,66855,66884);
DELETE FROM creature_movement WHERE id IN (68738,85585,68739,66849,66854,66855,66884);

-- door should control when event will start
DELETE FROM dbscripts_on_go_template_use WHERE id = 183295;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(183295,1,20,2,0,18632,66813,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,1,20,2,0,18632,66814,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,1,20,2,0,18632,66815,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18632,66816,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18632,66817,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18632,66818,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,3,20,2,0,18632,66819,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,3,20,2,0,18632,66820,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
--
(183295,1,20,2,0,18634,66844,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,1,20,2,0,18634,66845,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,1,20,2,0,18634,66846,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18634,66847,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18634,66848,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18634,66850,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,3,20,2,0,18634,66851,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,3,20,2,0,18634,66853,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
--
(183295,1,20,2,0,18639,66881,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,1,20,2,0,18639,66882,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,1,20,2,0,18639,66885,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18639,66886,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18639,66888,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18639,66892,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(183295,2,20,2,0,18639,66893,7 | 0x10,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint');

-- Murmur
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 66952;
DELETE FROM creature_movement WHERE id = 66952;
UPDATE creature_template SET ExtraFlags = 4096, MovementType = 2 WHERE entry = 18708;
DELETE FROM creature_movement_template WHERE entry = 18708;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(18708,1,-157.895,-497.322,15.8651,5000,1870801,1.5708,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1870801); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1870801,1,35,5,500,0,0,0,0,0,0,0,0,0,0,0,'THROW_AI_EVENT');

-- Cabal Executioner
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 18632);
-- correct spawn point
UPDATE creature SET position_x = -171.642, position_y = -370.791, position_z = 17.0818, orientation = 0.5235988 WHERE guid = 66817;
UPDATE creature SET position_x = -173.133, position_y = -366.97, position_z = 17.0828, orientation = 5.916666 WHERE guid = 66818;
UPDATE creature SET position_x = -142.203, position_y = -390.029, position_z = 17.0806, orientation = 4.485496 WHERE guid = 66819;
UPDATE creature SET position_x = -140.54, position_y = -410.52, position_z = 17.079, orientation = 1.448623 WHERE guid = 66820;

DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1863201 AND 1863202;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1863201,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1863202,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1863202,1,1,376,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- waypoints will be set by script
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid IN (66813,66814,66815,66816,66817,66818,66819,66820);
DELETE FROM creature_movement WHERE id IN (66813,66814,66815,66816,66817,66818,66819,66820);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #66813
(66813,1,-172.173,-325.754,17.1697,2000,1863201,5.53269,0,0),
(66813,2,-160.339,-328.603,17.0869,5000,1863202,4.726873,0,0),
-- #66814
(66814,1,-168.532,-352.302,17.1662,2000,1863201,4.83456,0,0),
(66814,2,-162.415,-350.568,17.0835,5000,1863202,4.743177,0,0),
-- #66815
(66815,1,-135.771,-329.128,17.1687,2000,1863201,3.50811,0,0),
(66815,2,-152.625,-325.811,17.0865,5000,1863202,4.681669,0,0),
-- #66816
(66816,1,-174.082,-354.553,17.1667,2000,1863201,5.35816,0,0),
(66816,2,-149.628,-355.988,17.0834,5000,1863202,4.653963,0,0),
-- #66817
(66817,1,-171.642,-370.791,17.0818,2000,1863201,0.5235988,0,0),
(66817,2,-150.133,-378.117,17.0814,5000,1863202,4.647361,0,0),
-- #66818
(66818,1,-173.133,-366.97,17.0828,2000,1863201,5.916666,0,0),
(66818,2,-163.108,-374.718,17.0811,5000,1863202,4.754881,0,0),
-- #66819
(66819,1,-142.203,-390.029,17.0806,2000,1863201,4.485496,0,0),
(66819,2,-148.384,-417.065,17.0784,5000,1863202,4.594431,0,0),
-- #66820
(66820,1,-140.54,-410.52,17.079,2000,1863201,1.448623,0,0),
(66820,2,-162.943,-421.588,17.0776,5000,1863202,4.778943,0,0);

-- Cabal Summoner
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 18634);
-- correct spawn point
UPDATE creature SET orientation = 3.141593 WHERE guid = 66845;
UPDATE creature SET position_x = -135.201, position_y = -360.271, position_z = 17.0819, orientation = 3.490659 WHERE guid = 66846;
UPDATE creature SET position_x = -141.612, position_y = -363.212, position_z = 17.0827, orientation = 4.258604 WHERE guid = 66848;
UPDATE creature SET position_x = -171.826, position_y = -401.41, position_z = 17.0799, orientation = 0.8901179 WHERE guid = 66850;
UPDATE creature SET position_x = -143.49, position_y = -443.834, position_z = 17.0779, orientation = 3.15222 WHERE guid = 66853;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1863401 AND 1863403;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1863401,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1863402,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1863403,1,15,33331,0,18708,66952,3 | 0x08 | 0x10,0,0,0,0,0,0,0,0,'force buddy to cast 33329');
-- waypoints will be set by script
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid IN (66844,66845,66846,66847,66848,66850,66851,66853);
DELETE FROM creature_movement WHERE id IN (66844,66845,66846,66847,66848,66850,66851,66853);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #66844
(66844,1,-175.894,-349.783,17.166,7000,1863401,5.61996,0,0),
(66844,2,-156.496,-325.849,17.0865,5000,1863403,4.73628,0,0),
-- #66845
(66845,1,-156.498,-328.007,17.1696,4000,0,3.141593,0,0),
(66845,2,-156.498,-328.007,17.1696,2000,1863403,3.141593,0,0),
-- #66846
(66846,1,-135.201,-360.271,17.0819,2000,1863401,3.490659,0,0),
(66846,2,-157.038,-354.905,17.0836,5000,1863402,4.706368,0,0),
-- #66847
(66847,1,-136.037,-343.41,17.1648,2000,1863401,3.1765,0,0),
(66847,2,-162.127,-345.104,17.084,15000,0,4.740183,0,0),
(66847,3,-149.744,-341.401,17.0847,15000,0,4.660159,0,0),
(66847,4,-154.979,-338.741,17.0853,15000,0,4.66635,0,0),
(66847,5,-162.127,-345.104,17.084,15000,0,4.740183,0,0),
(66847,6,-149.744,-341.401,17.0847,15000,0,4.660159,0,0),
(66847,7,-154.979,-338.741,17.0853,15000,0,4.66635,0,0),
(66847,8,-162.127,-345.104,17.084,15000,1863402,4.740183,0,0),
-- #66848
(66848,1,-141.612,-363.212,17.0827,2000,1863401,4.258604,0,0),
(66848,2,-157.923,-374.597,17.0818,5000,1863402,4.712615,0,0),
-- #66850
(66850,1,-171.826,-401.41,17.0799,2000,1863401,0.8901179,0,0),
(66850,2,-158.9,-420.073,17.0777,5000,1863402,4.725399,0,0),
-- #66851
(66851,1,-134.274,-388.795,17.1657,2000,1863401,3.14159,0,0),
(66851,2,-145.634,-396.327,17.0802,15000,0,3.72706,0,0),
(66851,3,-164.682,-401.259,17.0797,15000,0,5.26035,0,0),
(66851,4,-155.47,-402.097,17.0795,15000,1863403,5.04987,0,0),
-- #66853
(66853,1,-143.49,-443.834,17.078,20000,1863401,3.15222,0,0),
(66853,2,-154.002,-443.803,17.0779,5000,1863403,4.60457,0,0);

-- Cabal Spellbinder
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 18639);
-- correct spawn point
UPDATE creature SET position_x = -140.42, position_y = -369.956, position_z = 17.0815, orientation = 3.036873 WHERE guid = 66882;
UPDATE creature SET position_x = -143.33, position_y = -397.343, position_z = 17.0801, orientation = 2.373648 WHERE guid = 66885;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1863901 AND 1863904;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1863901,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1863902,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1863902,1,1,5,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1863903,1,15,33331,0,18708,66952,3 | 0x08 | 0x10,0,0,0,0,0,0,0,0,'force buddy to cast 33329'),
(1863904,4,15,33331,0,18708,66952,3 | 0x08 | 0x10,0,0,0,0,0,0,0,0,'force buddy to cast 33329');
-- waypoints will be set by script
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE guid IN (66881,66882,66885,66886,66888,66892,66893);
DELETE FROM creature_movement WHERE id IN (66881,66882,66885,66886,66888,66892,66893);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #66881
(66881,1,-139.912,-353.917,17.1665,4000,1863901,5.75959,0,0),
(66881,2,-153.403,-352.024,17.0838,7000,1863902,4.70338,0,0),
-- #66882
(66882,1,-140.42,-369.956,17.0815,2000,1863901,3.036873,0,0),
(66882,2,-153.032,-375.78,17.0816,7000,1863902,4.672398,0,0),
-- #66885
(66885,1,-143.33,-397.343,17.0801,2000,1863901,2.3736483,0,0),
(66885,2,-153.364,-417.684,17.078,7000,1863902,4.655547,0,0),
-- #66886
(66886,1,-179.281,-350.271,17.1665,2000,1863901,5.98648,0,0),
(66886,2,-164.621,-364.47,17.0824,20000,0,4.77388,0,0),
(66886,3,-149.681,-366.439,17.0824,5000,1863903,4.61994,0,0),
-- #66888
(66888,1,-134.274,-388.795,17.1657,17000,1863901,3.72706,0,0),
(66888,2,-134.274,-388.795,17.1657,1000,1863904,3.72706,0,0),
(66888,3,-164.751,-400.857,17.0797,5000,1863902,4.51183,0,0),
-- #66892
(66892,1,-176.776,-434.265,17.1622,30000,1863901,0.279253,0,0),
(66892,2,-165.452,-432.216,17.0783,20000,0,4.61994,0,0),
(66892,3,-157.677,-431.365,17.0778,20000,0,4.61994,0,0),
(66892,4,-151.013,-429.674,17.0777,12000,0,4.61994,0,0),
(66892,5,-151.013,-429.674,17.0777,5000,1863903,4.61994,0,0),
-- #66893 
(66893,1,-130.551,-443.696,17.164,60000,1863901,3.14527,0,0),
(66893,2,-149.68,-443.899,17.0779,2000,1863904,4.60428,0,0);
