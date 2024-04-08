-- Argent Watchman 33780
-- part of vehicle
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 33780);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 33780);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 33780);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 33780);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 33780);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 33780);
DELETE FROM creature where id = 33780;
DELETE FROM creature_template_addon WHERE entry = 33780;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33780,0,0,1,0,0,0,NULL);

-- Tournament Hippogryph 33778
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 33778);
DELETE FROM creature_template_addon WHERE entry = 33778;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33778,0,0,1,0,0,0,'43775');
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 33778;
DELETE FROM creature_addon WHERE guid BETWEEN 535758 AND 535767;
DELETE FROM creature_movement WHERE id BETWEEN 535758 AND 535767;
DELETE FROM game_event_creature WHERE guid BETWEEN 535758 AND 535767;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535758 AND 535767;
DELETE FROM creature_battleground WHERE guid BETWEEN 535758 AND 535767;
DELETE FROM creature_linking WHERE guid BETWEEN 535758 AND 535767;
DELETE FROM creature where guid BETWEEN 535758 AND 535767;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(535758,33778,571,1,1,8487.766,1183.8993,604.3854,4.084,180,180,0,0),
(535759,33778,571,1,1,8484.2295,1196.6875,604.3854,3.351,180,180,0,0),
(535760,33778,571,1,1,8510.154,1191.1423,604.3854,0.0349,180,180,0,0),
(535761,33778,571,1,1,8390.29,910.97156,547.792,0,180,180,0,0),
(535762,33778,571,1,1,8635.692,583.783,586.35034,1.32645,180,180,0,0),
(535763,33778,571,1,1,8616.11,570.3524,586.3507,3.5081,180,180,0,0),
(535764,33778,571,1,1,8643.236,572.309,586.3508,0.349,180,180,0,0),
(535765,33778,571,1,1,8343.985,846.92017,586.30994,0.1745329,180,180,0,0),
(535766,33778,571,1,1,8316.489,846.3889,586.3093,3.403392,180,180,0,0),
(535767,33778,571,1,1,8323.397,834.73267,586.3102,4.433136,180,180,0,0);
