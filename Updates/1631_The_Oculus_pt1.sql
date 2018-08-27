-- The Oculus

-- Azure Spellbinder
-- poss corrected
UPDATE creature SET position_x = 1116.514160, position_y = 1130.380493, position_z = 361.070221, spawndist = 2, MovementType = 1 WHERE guid = 100419;
UPDATE creature SET position_x = 1185.689575, position_y = 1070.270020, position_z = 361.070160, orientation = 4.65, spawndist = 2, MovementType = 1 WHERE guid = 100416;
UPDATE creature SET position_x = 1173.361328, position_y = 1069.329346, position_z = 361.070160, orientation = 4.85, spawndist = 2, MovementType = 1 WHERE guid = 100418;
-- missing spawn added -- Free WoTLKDB guids reused
DELETE FROM creature_addon WHERE guid IN (98029,111458,111517);
DELETE FROM creature_movement WHERE id IN (98029,111458,111517);
DELETE FROM creature_linking WHERE guid IN (98029,111458,111517);
DELETE FROM creature_linking WHERE master_guid IN (98029,111458,111517);
DELETE FROM creature WHERE guid IN (98029,111458,111517);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(98029,27635,578,3,1,0,0,1173.92,1002.57,361.07,4.07997,7200,7200,0,0,48700,19465,0,2),
(111458,27635,578,3,1,0,0,1181.7,1036.55,361.07,4.61873,7200,7200,3,0,50400,19970,0,1),
(111517,27635,578,3,1,0,0,1093.55,1129.06,361.07,6.27919,7200,7200,3,0,50400,19970,0,1);
-- waypoints 
DELETE FROM creature_movement WHERE id = 98029;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(98029,1,1166.95,993.672,361.07,0,0,3.92289),
(98029,2,1155.39,984.445,361.07,0,0,3.82079),
(98029,3,1144.2,977.808,361.07,0,0,3.5616),
(98029,4,1134.92,975.511,361.07,0,0,3.40845),
(98029,5,1123.42,972.44,361.07,0,0,3.4006),
(98029,6,1134.85,975.482,361.07,0,0,0.321836),
(98029,7,1145.87,978.168,361.07,0,0,0.361106),
(98029,8,1155.21,984.239,361.07,0,0,0.687046),
(98029,9,1166.76,993.589,361.07,0,0,0.742024),
(98029,10,1173.78,1002.16,361.07,0,0,1.09153),
(98029,11,1179.54,1014.42,361.07,0,0,1.37427),
(98029,12,1181.31,1026.78,361.07,0,0,1.49208),
(98029,13,1179.5,1014.78,361.07,0,0,4.42555),
(98029,14,1173.92,1002.97,361.07,0,0,4.12394);
-- should respawn every 2hrs
UPDATE creature SET spawntimesecsmin = 7200, spawntimesecsmax = 7200 WHERE id = 27635;

-- Azure Inquisitor
-- missing spawn added -- Free WoTLKDB guids reused
DELETE FROM creature_addon WHERE guid IN (111518);
DELETE FROM creature_movement WHERE id IN (111518);
DELETE FROM creature_linking WHERE guid IN (111518);
DELETE FROM creature_linking WHERE master_guid IN (111518);
DELETE FROM creature WHERE guid IN (111518);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(111518,27633,578,3,1,0,0,1116.514160,1130.380493,361.070221,6.22028,7200,7200,2,0,48700,0,0,1);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 100414;
DELETE FROM creature_movement WHERE id = 100414;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(100414,1,1166.95,993.672,361.07,0,0,3.92289),
(100414,2,1155.39,984.445,361.07,0,0,3.82079),
(100414,3,1144.2,977.808,361.07,0,0,3.5616),
(100414,4,1134.92,975.511,361.07,0,0,3.40845),
(100414,5,1123.42,972.44,361.07,0,0,3.4006),
(100414,6,1134.85,975.482,361.07,0,0,0.321836),
(100414,7,1145.87,978.168,361.07,0,0,0.361106),
(100414,8,1155.21,984.239,361.07,0,0,0.687046),
(100414,9,1166.76,993.589,361.07,0,0,0.742024),
(100414,10,1173.78,1002.16,361.07,0,0,1.09153),
(100414,11,1179.54,1014.42,361.07,0,0,1.37427),
(100414,12,1181.31,1026.78,361.07,0,0,1.49208),
(100414,13,1179.5,1014.78,361.07,0,0,4.42555),
(100414,14,1173.92,1002.97,361.07,0,0,4.12394);
-- should respawn every 2hrs
UPDATE creature SET spawntimesecsmin = 7200, spawntimesecsmax = 7200 WHERE id IN (27633,27635);

-- Pools
-- Pool Templates - Pool 1
DELETE FROM pool_template WHERE entry = 25886;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25886, 1, 'The Oculus - Azure Spellbinder/Azure Inquisitor - Pool 1');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25886;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(98029, 25886, 0, 'The Oculus - Azure Spellbinder'),
(100414, 25886, 0, 'The Oculus - Azure Inquisitor');
-- Pool Templates - Pool 2
DELETE FROM pool_template WHERE entry = 25887;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25887, 1, 'The Oculus - Azure Spellbinder/Azure Inquisitor - Pool 2');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25887;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(111458, 25887, 0, 'The Oculus - Azure Spellbinder'),
(100415, 25887, 0, 'The Oculus - Azure Inquisitor');
-- Pool Templates - Pool 3
DELETE FROM pool_template WHERE entry = 25888;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25888, 1, 'The Oculus - Azure Spellbinder/Azure Inquisitor - Pool 3');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25888;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(111517, 25888, 0, 'The Oculus - Azure Spellbinder'),
(100411, 25888, 0, 'The Oculus - Azure Inquisitor');
-- Pool Templates - Pool 4
DELETE FROM pool_template WHERE entry = 25889;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25889, 1, 'The Oculus - Azure Spellbinder/Azure Inquisitor - Pool 4');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 25889;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(100419, 25889, 0, 'The Oculus - Azure Spellbinder'),
(111518, 25889, 0, 'The Oculus - Azure Inquisitor');

-- Azure Ley-Whelp
-- should respawn every 2hrs
UPDATE creature SET spawndist = 3, MovementType = 1, spawntimesecsmin = 7200, spawntimesecsmax = 7200 WHERE id = 27636;
UPDATE creature SET position_x = 1124.608154, position_y = 967.882568, position_z = 361.070221 WHERE guid = 100852;
UPDATE creature SET position_x = 1123.887695, position_y = 976.379700, position_z = 361.070221 WHERE guid = 100853;
UPDATE creature SET position_x = 1118.325073, position_y = 972.061646, position_z = 361.070221 WHERE guid = 100848;
UPDATE creature SET position_x = 1180.649902, position_y = 1031.098755, position_z = 361.070465 WHERE guid = 100580;
UPDATE creature SET position_x = 1187.296997, position_y = 1037.927856, position_z = 361.070465 WHERE guid = 100768;
UPDATE creature SET position_x = 1175.004272, position_y = 1042.105469, position_z = 361.070465 WHERE guid = 100838;
UPDATE creature SET position_x = 1171.434692, position_y = 1099.987061, position_z = 361.070129 WHERE guid = 100468;
UPDATE creature SET position_x = 1164.901245, position_y = 1108.599121, position_z = 361.070129 WHERE guid = 100467;
UPDATE creature SET position_x = 1145.066284, position_y = 1122.606079, position_z = 361.070129 WHERE guid = 100471;
UPDATE creature SET position_x = 1137.391357, position_y = 1126.283081, position_z = 361.070129 WHERE guid = 100479;
UPDATE creature SET position_x = 1109.622681, position_y = 1123.748779, position_z = 361.070374 WHERE guid = 100439;
UPDATE creature SET position_x = 1108.747070, position_y = 1132.629272, position_z = 361.070374 WHERE guid = 100466;
UPDATE creature SET position_x = 1097.219482, position_y = 1135.205444, position_z = 361.070374 WHERE guid = 100465;
UPDATE creature SET position_x = 1096.931396, position_y = 1122.495117, position_z = 361.070374 WHERE guid = 100449;
UPDATE creature SET position_x = 1084.607300, position_y = 1125.674927, position_z = 361.070374 WHERE guid = 100463;

-- Centrifuge Construct / Ring-Lord Sorcerress
-- should respawn every 2hrs
UPDATE creature SET spawntimesecsmin = 7200, spawntimesecsmax = 7200 WHERE id IN (27640,27641);
-- links
DELETE FROM creature_linking WHERE master_guid IN (101902,101916,101917,101919,101937,101918);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
-- 1st group
(101922, 101902, 1+2),
(101924, 101902, 1+2),
(101933, 101902, 1+2),
-- 2nd group
(101967, 101916, 1+2),
(101974, 101916, 1+2),
(102064, 101916, 1+2),
-- 3rd group
(101907, 101917, 1+2),
(101895, 101917, 1+2),
(101896, 101917, 1+2),
-- 4th group
(101899, 101919, 1+2),
(101900, 101919, 1+2),
(101912, 101919, 1+2),
(101910, 101919, 1+2),
-- 5th group
(101914, 101937, 1+2),
(101904, 101937, 1+2),
(101915, 101937, 1+2),
(101903, 101937, 1+2),
-- 6th group
(101897, 101918, 1+2),
(101909, 101918, 1+2),
(101898, 101918, 1+2);
