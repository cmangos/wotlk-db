-- 7th Legion Front - Dragonblight

-- Duane 26978
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 26978;
DELETE FROM creature_movement_template WHERE entry = 26978;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26978,1,4590.211,11.59549,78.51102,5.183628,45000,0),
(26978,2,4580.24,10.703,77.5769,100,0,0),
(26978,3,4574.84,14.1675,77.8627,100,0,0),
(26978,4,4567.681,14.11399,78.13602,4.101524,45000,0);

-- "Wyrmbait" 27843
UPDATE creature_template SET InhabitType = 1 WHERE entry = 27843;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27843);
DELETE FROM creature_template_addon WHERE entry = 27843;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27843,24869,0,1,0,0,0,NULL);

-- 7th Legion Wyrm Hunter 26779
-- missing added
DELETE FROM creature_addon WHERE guid IN (517781,517783,517784,517796,517803,517807);
DELETE FROM creature_movement WHERE id IN (517781,517783,517784,517796,517803,517807);
DELETE FROM game_event_creature WHERE guid IN (517781,517783,517784,517796,517803,517807);
DELETE FROM game_event_creature_data WHERE guid IN (517781,517783,517784,517796,517803,517807);
DELETE FROM creature_battleground WHERE guid IN (517781,517783,517784,517796,517803,517807);
DELETE FROM creature_linking WHERE guid IN (517781,517783,517784,517796,517803,517807)
 OR master_guid IN (517781,517783,517784,517796,517803,517807);
DELETE FROM creature WHERE guid IN (517781,517783,517784,517796,517803,517807);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(517781,26779,571,1,1,0,0,4515.571,1.065538,72.51534,4.153883,300,300,0,0,9610,0,0,0),
(517783,26779,571,1,1,0,0,4533.604,11.22646,72.71339,1.308997,300,300,0,0,9610,0,0,0),
(517784,26779,571,1,1,0,0,4540.795,8.898655,72.59681,1.605703,300,300,0,0,9610,0,0,0),
(517796,26779,571,1,1,0,0,4543.537,10.49561,72.41348,1.64061,300,300,0,0,9610,0,0,0),
(517803,26779,571,1,1,0,0,4538.765,9.866535,72.95412,1.570796,300,300,0,0,9610,0,0,0),
(517807,26779,571,1,1,0,0,4536.905,11.07248,73.21642,1.64061,300,300,0,0,9610,0,0,0);
-- updates
UPDATE creature_model_info SET modelid_alternative = 24867 WHERE modelid = 24863;
UPDATE creature_model_info SET modelid_alternative = 24863 WHERE modelid = 24867;
UPDATE creature SET orientation = 2.740167 WHERE guid = 515649;
UPDATE creature SET position_x = 4527.045, position_y = -0.2189121, position_z = 72.68785, orientation = 2.670354 WHERE guid = 515651;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (515648);
DELETE FROM creature_movement WHERE id IN (515648);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(515648,1,4527.631,-2.537598,72.51534,100,100,11),
(515648,2,4527.631,-2.537598,72.51534,100,100,3);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (515647,515649,515651);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(515647,0,1,1,0,0,0,NULL),
(515649,0,1,1,0,0,0,NULL),
(515651,0,1,1,0,0,0,NULL);

-- 7th Legion Cleric 26780
-- missing added
DELETE FROM creature_addon WHERE guid IN (517808,517809,517810);
DELETE FROM creature_movement WHERE id IN (517808,517809,517810);
DELETE FROM game_event_creature WHERE guid IN (517808,517809,517810);
DELETE FROM game_event_creature_data WHERE guid IN (517808,517809,517810);
DELETE FROM creature_battleground WHERE guid IN (517808,517809,517810);
DELETE FROM creature_linking WHERE guid IN (517808,517809,517810)
 OR master_guid IN (517808,517809,517810);
DELETE FROM creature WHERE guid IN (517808,517809,517810);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(517808,26780,571,1,1,0,0,4539.449,5.572155,72.41366,1.518436,180,180,0,0,9610,3309,0,0),
(517809,26780,571,1,1,0,0,4535.654,8.584435,72.65968,1.48353,180,180,0,0,9610,3309,0,0),
(517810,26780,571,1,1,0,0,4530.319,8.727493,72.5278,1.361357,180,180,0,0,9610,3309,0,0);
-- updates
UPDATE creature_model_info SET modelid_alternative = 24865 WHERE modelid = 24864;
UPDATE creature_model_info SET modelid_alternative = 24866 WHERE modelid = 24865;
UPDATE creature_model_info SET modelid_alternative = 24864 WHERE modelid = 24866;
-- individual addons
DELETE FROM creature_addon WHERE guid IN (517808,517809,517810);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(517808,0,0,1,0,333,0,NULL),
(517809,0,0,1,0,333,0,NULL),
(517810,0,0,1,0,333,0,NULL);

-- Dragonbone Condor 26483
-- missing added
DELETE FROM creature_addon WHERE guid IN (518085,519571);
DELETE FROM creature_movement WHERE id IN (518085,519571);
DELETE FROM game_event_creature WHERE guid IN (518085,519571);
DELETE FROM game_event_creature_data WHERE guid IN (518085,519571);
DELETE FROM creature_battleground WHERE guid IN (518085,519571);
DELETE FROM creature_linking WHERE guid IN (518085,519571)
 OR master_guid IN (518085,519571);
DELETE FROM creature WHERE guid IN (518085,519571);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(518085,26483,571,1,1,0,0,4595.07,751.9404,98.3335,2.478368,300,300,0,0,9291,0,0,0),
(519571,26483,571,1,1,0,0,4453.883,130.9813,104.0855,0.93925,300,300,0,0,9291,0,0,0);
DELETE FROM creature_addon WHERE guid IN (518085);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(518085,0,1,1,0,0,0,NULL);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (519571);
DELETE FROM creature_movement WHERE id IN (519571);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 519571
(519571,1,4453.883,130.9813,104.0855,100,0,0),
(519571,2,4468.024,150.6863,104.0855,100,0,0),
(519571,3,4492.653,160.4251,104.0855,100,0,0),
(519571,4,4489.85,148.0308,104.0855,100,0,0),
(519571,5,4471.334,129.2614,104.0855,100,0,0),
(519571,6,4464.263,116.8436,104.0855,100,0,0),
(519571,7,4453.282,106.985,104.0855,100,0,0),
(519571,8,4444.663,107.8721,104.0855,100,0,0),
(519571,9,4443.907,115.8326,104.0855,100,0,0);
