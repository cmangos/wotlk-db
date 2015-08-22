-- Mana Tombs

-- Ethereal Darkcaster
UPDATE creature SET position_x = -223.980988, position_y = -203.967545, position_z = -0.436449, orientation = 5.690035, MovementType = 0, spawndist = 0 WHERE guid = 83345;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 83344;
DELETE FROM creature_movement WHERE id = 83344;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(83344,1,-208.172,-210.751,0.903686,0,0,0,0,0),
(83344,2,-204.231,-217.482,-0.111034,0,0,0,0,0),
(83344,3,-201.505,-257.165,-0.959805,3000,0,0,0,0),
(83344,4,-205.784,-254.577,-1.06834,0,0,0,0,0),
(83344,5,-207.901,-218.211,-0.215018,0,0,0,0,0),
(83344,6,-211.192,-211.565,0.673288,0,0,0,0,0),
(83344,7,-236.121,-196.07,-0.952327,3000,0,0,0,0),
(83344,8,-230.744,-195.317,-0.953007,0,0,0,0,0);
-- link
DELETE FROM creature_linking WHERE guid = 83345;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(83345, 83344, 515);

-- Nexus Stalker
UPDATE creature SET position_x = -375.374268, position_y = -197.648071, position_z = -0.960078, orientation = 4.735300 WHERE guid = 83331;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 83329;
DELETE FROM creature_movement WHERE id = 83329;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(83329,1,-372.874,-237.685,-0.957908,0,0,0,0,0),
(83329,2,-373.266,-189.421,-0.959992,0,0,0,0,0);
-- links
DELETE FROM creature_linking WHERE guid IN (83330,83331);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(83330, 83329, 515),
(83331, 83329, 515);

-- Nexus Terror
UPDATE creature SET position_x = -283.658905, position_y = -4.813263, position_z = 16.685390, orientation = 4.643475, MovementType = 2, spawndist = 0 WHERE guid = 91201;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 91194;
DELETE FROM creature_movement WHERE id IN (91201,91194);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(91201,1,-278.857,9.17837,16.7958,0,0,0,0,0),
(91201,2,-273.323,23.9944,21.3366,0,0,0,0,0),
(91201,3,-271.953,34.1728,26.0065,0,0,0,0,0),
(91201,4,-273.504,22.6042,20.8346,0,0,0,0,0),
(91201,5,-279.271,8.99804,16.7877,0,0,0,0,0),
(91201,6,-283.195,-4.9794,16.6853,2000,0,0,0,0),
-- #2
(91194,1,-193.705,9.06087,16.7627,2000,0,0,0,0),
(91194,2,-242.656,9.1325,16.789,2000,0,0,0,0);

-- Ethereal Spellbinder 
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE guid = 91204;
UPDATE creature SET spawndist = 2, MovementType = 1 WHERE guid = 91205;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 91203;
UPDATE creature SET position_x = -306.308014, position_y = 4.561267, position_z = 16.790335, orientation = 0.095032, spawndist = 0, MovementType = 2 WHERE guid = 91202;
DELETE FROM creature_movement WHERE id IN (91203,91202);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(91202,1,-261.468,6.85981,16.7853,0,0,0,0,0),
(91202,2,-266.375,9.69355,17.001,2000,0,3.05009,0,0),
(91202,3,-322.067,10.8099,16.835,0,0,0,0,0),
(91202,4,-318.001,6.78594,16.7929,2000,0,0,0,0);
-- link
DELETE FROM creature_linking WHERE guid = 91203;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(91203, 91202, 515);
