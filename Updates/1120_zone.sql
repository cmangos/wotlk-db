-- Magister Sylastor
UPDATE creature_template SET SpeedWalk = (2.5/2.5), SpeedRun = (8/7) WHERE entry = 16237;
UPDATE creature SET position_x = 7482.902, position_y = -7272.874, position_z = 98.13393, orientation = 2.949606 WHERE id = 16237;

-- Night Elf Corpse
UPDATE creature_template SET ModelId1 = 16342, ModelId2 = 16344, ModelId3 = 16343, ModelId4 = 16345, UnitFlags = 537166080, SpeedWalk = (2.5/2.5), SpeedRun = (6/7) WHERE entry = 16804;
DELETE FROM creature_template_addon WHERE entry = 16804;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(16804,0,0,1,16,0,0,'29266');

DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 16804);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 16804);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 16804);
DELETE FROM creature_linking WHERE master_guid IN (SELECT guid FROM creature WHERE id = 16804);
DELETE FROM creature WHERE id = 16804;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(68117,16804,530,1,0,0,7481.936,-7297.634,96.9653,2.356194,300,300,0,0,247,0,0,0),
(79462,16804,530,1,0,0,7445.253,-7257.776,99.78194,5.811946,300,300,0,0,247,0,0,0),
(79464,16804,530,1,0,0,7443.807,-7294.272,94.89374,2.932153,300,300,0,0,247,0,0,0),
(86751,16804,530,1,0,0,7453.968,-7283.647,95.35357,4.310963,300,300,0,0,247,0,0,0),
(136980,16804,530,1,0,0,7455.294,-7261.923,99.46005,2.949606,300,300,0,0,247,0,0,0),
(136981,16804,530,1,0,0,7447.672,-7255.522,99.79431,4.939282,300,300,0,0,247,0,0,0),
(136982,16804,530,1,0,0,7427.914,-7321.065,99.22642,1.518436,300,300,0,0,247,0,0,0),
(136983,16804,530,1,0,0,7414.909,-7297.427,91.59268,3.682645,300,300,0,0,247,0,0,0),
(136984,16804,530,1,0,0,7414.596,-7250.003,101.5457,2.443461,300,300,0,0,247,0,0,0);

-- Tranquillien Scout
UPDATE creature_template SET ModelId1 = 16088, ModelId2 = 16090, ModelId3 = 16091, ModelId4 = 16092, SpeedWalk = (2.5/2.5), SpeedRun = (6/7) WHERE entry = 16242;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 16242);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 16242);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 16242);
DELETE FROM creature_linking WHERE master_guid IN (SELECT guid FROM creature WHERE id = 16242);
DELETE FROM creature WHERE id = 16242;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(136985,16242,530,1,0,0,7477.943,-7275.732,97.61311,2.007129,300,300,0,0,440,0,0,0),
(136986,16242,530,1,0,0,7477.285,-7269.216,98.09621,4.066617,300,300,0,0,440,0,0,0);

-- Smoke
DELETE FROM game_event_gameobject WHERE guid IN(SELECT guid FROM gameobject WHERE id = 181357);
DELETE FROM gameobject_battleground WHERE guid IN(SELECT guid FROM gameobject WHERE id = 181357);
DELETE FROM gameobject WHERE id = 181357;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(22490,181357,530,1,7489.563,-7303.608,97.66522,5.759588,0,0,-0.2588186,0.9659259,300,300,100,1),
(22491,181357,530,1,7471.529,-7271.107,97.46445,4.01426,0,0,-0.9063072,0.4226195,300,300,100,1),
(22492,181357,530,1,7457.446,-7281.841,95.35561,0.3141584,0,0,0.1564341,0.9876884,300,300,100,1),
(22493,181357,530,1,7441.55,-7297.337,94.75174,2.548179,0,0,0.9563046,0.2923723,300,300,100,1),
(22494,181357,530,1,7447.287,-7257.558,99.70141,0.4188786,0,0,0.2079115,0.9781476,300,300,100,1),
(22495,181357,530,1,7425.295,-7320.753,99.09068,5.759588,0,0,-0.2588186,0.9659259,300,300,100,1);

-- Campfire
DELETE FROM game_event_gameobject WHERE guid IN(SELECT guid FROM gameobject WHERE id = 94570);
DELETE FROM gameobject_battleground WHERE guid IN(SELECT guid FROM gameobject WHERE id = 94570);
DELETE FROM gameobject WHERE id = 94570;
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(94570,181362,530,1,6773.446,-7150.986,48.90046,3.141534,0.0436039,-0.02615166,0.9987059,0.001170857,300,300,100,1);
