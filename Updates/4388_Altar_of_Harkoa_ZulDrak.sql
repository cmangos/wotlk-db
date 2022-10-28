-- Altar of Har'koa -  Zul'Drak

-- Har'koan Subduer 28403
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28403);
DELETE FROM creature_template_addon WHERE entry = 28403;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(28403,0,0,1,0,0,0,45846);
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 535115 AND 535128;
DELETE FROM creature_movement WHERE id BETWEEN 535115 AND 535128;
DELETE FROM game_event_creature WHERE guid BETWEEN 535115 AND 535128;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535115 AND 535128;
DELETE FROM creature_battleground WHERE guid BETWEEN 535115 AND 535128;
DELETE FROM creature_linking WHERE guid BETWEEN 535115 AND 535128
OR master_guid BETWEEN 535115 AND 535128;
DELETE FROM creature WHERE guid BETWEEN 535115 AND 535128;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(535115,28403,571,1,1,0,0,5277.245,-3619.667,363.3282,6.213372,300,300,0,0,0,0,0,0),
(535116,28403,571,1,1,0,0,5291.728,-3780.95,371.6594,6.248279,300,300,0,0,0,0,0,0),
(535117,28403,571,1,1,0,0,5316.537,-3755.717,371.5298,5.009095,300,300,0,0,0,0,0,0),
(535118,28403,571,1,1,0,0,5347.82,-3790.36,371.4579,2.80998,300,300,0,0,0,0,0,0),
(535119,28403,571,1,1,0,0,5323.46,-3813,371.9776,1.553343,300,300,0,0,0,0,0,0),
(535120,28403,571,1,1,0,0,5330.009,-3913.493,365.8797,4.694936,300,300,0,0,0,0,0,0),
(535121,28403,571,1,1,0,0,5382.776,-3799.292,372.6979,0.7853982,300,300,0,0,0,0,0,0),
(535122,28403,571,1,1,0,0,5477.654,-3878.015,361.0569,0.7679449,300,300,0,0,0,0,0,0),
(535123,28403,571,1,1,0,0,5422.518,-3822.243,363.2307,0.01745329,300,300,0,0,0,0,0,0),
(535124,28403,571,1,1,0,0,5335.817,-3846.023,370.8626,3.926991,300,300,0,0,0,0,0,0),
(535125,28403,571,1,1,0,0,5322.316,-3572.04,363.3229,4.834562,300,300,0,0,0,0,0,0),
(535126,28403,571,1,1,0,0,5410.39,-3718.896,362.0468,1.518436,300,300,0,0,0,0,0,0),
(535127,28403,571,1,1,0,0,5394.254,-3702.963,362.089,0.1570796,300,300,0,0,0,0,0,0),
(535128,28403,571,1,1,0,0,5434.8,-3919.141,361.1612,3.944444,300,300,0,0,0,0,0,0);
UPDATE creature SET position_x = 5308.591, position_y = -3722.388, position_z = 372.7375, orientation = 0.8028514 WHERE guid = 522567;
-- Prophet of Har'koa 28848
DELETE FROM `dbscript_random_templates` WHERE `id`=20299;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(20299, 0, 28948, 0, 'Prophet of Har\'koa - OOC Texts'),
(20299, 0, 28949, 0, 'Prophet of Har\'koa - OOC Texts'),
(20299, 0, 28950, 0, 'Prophet of Har\'koa - OOC Texts'),
(20299, 0, 28951, 0, 'Prophet of Har\'koa - OOC Texts');
UPDATE `broadcast_text` SET `ChatTypeID`= 2 WHERE `Id` BETWEEN 28948 AND 28951;

-- Claw of Har'koa 28402
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 535129 AND 535138;
DELETE FROM creature_movement WHERE id BETWEEN 535129 AND 535138;
DELETE FROM game_event_creature WHERE guid BETWEEN 535129 AND 535138;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535129 AND 535138;
DELETE FROM creature_battleground WHERE guid BETWEEN 535129 AND 535138;
DELETE FROM creature_linking WHERE guid BETWEEN 535129 AND 535138
OR master_guid BETWEEN 535129 AND 535138;
DELETE FROM creature WHERE guid BETWEEN 535129 AND 535138;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(535129,28402,571,1,1,0,0,5367.774,-3541.64,364.2363,0.7853982,300,300,0,0,0,0,0,0),
(535130,28402,571,1,1,0,0,5323.396,-3644.5,362.0438,5.707227,300,300,0,0,0,0,0,0),
(535131,28402,571,1,1,0,0,5368.791,-3862.889,373.6328,5.51524,300,300,0,0,0,0,0,0),
(535132,28402,571,1,1,0,0,5537.25,-3846.529,372.089,5.375614,300,300,0,0,0,0,0,0),
(535133,28402,571,1,1,0,0,5553.428,-3829.976,372.5273,5.654867,300,300,0,0,0,0,0,0),
(535134,28402,571,1,1,0,0,5585.777,-3799.415,366.2234,6.143559,300,300,0,0,0,0,0,0),
(535135,28402,571,1,1,0,0,5460.108,-3643,362.3764,0.9424778,300,300,0,0,0,0,0,0),
(535136,28402,571,1,1,0,0,5375.799,-3758.142,360.5291,0.7330383,300,300,0,0,0,0,0,0),
(535137,28402,571,1,1,0,0,5469.391,-3758.28,361.9951,4.05727,300,300,0,0,0,0,0,2), -- wp
(535138,28402,571,1,1,0,0,5503.387,-3912.114,362.0851,1.6043,300,300,0,0,0,0,0,2); -- wp
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28402);
DELETE FROM creature_template_addon WHERE entry = 28402;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(28402,0,0,2,0,376,0,54608);
-- waypoints
DELETE FROM creature_movement WHERE id IN (535137,535138);
INSERT INTO creature_movement (`id`,`point`,`positionx`,`positiony`,`positionz`,`orientation`,`waittime`,`scriptid`) VALUES
-- 535137
(535137,1,5469.391,-3758.28,361.9951,100,0,0),
(535137,2,5461.006,-3767.059,362.002,100,0,0),
(535137,3,5443.105,-3784.789,362.377,100,0,0),
(535137,4,5398.986,-3767.582,361.9875,100,0,0),
(535137,5,5370.875,-3741.746,360.0993,100,0,0),
(535137,6,5354.693,-3725.205,360.0981,100,0,0),
(535137,7,5326.64,-3697.498,362.2108,100,0,0),
(535137,8,5322.16,-3670.425,362.0858,100,0,0),
(535137,9,5339.967,-3653.359,362.057,100,0,0),
(535137,10,5374.366,-3619.417,362.0642,100,0,0),
(535137,11,5397.773,-3621.022,362.0642,100,0,0),
(535137,12,5425.11,-3645.25,361.961,100,0,0),
(535137,13,5458.887,-3675.254,362.0511,100,0,0),
(535137,14,5478.947,-3695.714,362.0853,100,0,0),
(535137,15,5494.24,-3712.14,362.567,100,0,0),
(535137,16,5485.63,-3737.67,361.965,100,0,0),
-- 535138
(535138,1,5503.387,-3912.114,362.0851,100,0,0),
(535138,2,5505.28,-3887.115,362.0851,100,0,0),
(535138,3,5494.8,-3865.94,361.96,100,0,0),
(535138,4,5474.92,-3854.984,362.0794,100,0,0),
(535138,5,5449.384,-3848.412,362.0686,100,0,0),
(535138,6,5430.85,-3852.39,361.968,100,0,0),
(535138,7,5409.766,-3868.374,361.9735,100,0,0),
(535138,8,5407.17,-3903.612,362.0776,100,0,0),
(535138,9,5407.908,-3925.006,362.0776,100,0,0),
(535138,10,5433.907,-3945.061,362.062,100,0,0),
(535138,11,5449.745,-3949.848,362.062,100,0,0),
(535138,12,5476.05,-3944.6,361.968,100,0,0),
(535138,13,5499.15,-3929.64,361.963,100,0,0);
UPDATE creature SET position_x = 5349.371, position_y = -3615.906, position_z = 363.8878, orientation = 5.462881 WHERE guid = 522556;
UPDATE creature SET position_x = 5195.255, position_y = -3707.885, position_z = 362.123, orientation = 2.600541 WHERE guid = 522557;
-- Cursed Offspring of Har'koa 28404
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 535139 AND 535146;
DELETE FROM creature_movement WHERE id BETWEEN 535139 AND 535146;
DELETE FROM game_event_creature WHERE guid BETWEEN 535139 AND 535146;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535139 AND 535146;
DELETE FROM creature_battleground WHERE guid BETWEEN 535139 AND 535146;
DELETE FROM creature_linking WHERE guid BETWEEN 535139 AND 535146
OR master_guid BETWEEN 535139 AND 535146;
DELETE FROM creature WHERE guid BETWEEN 535139 AND 535146;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(535139,28404,571,1,1,0,0,5339.73,-3950.802,362.678,3.748044,300,300,10,0,0,0,0,1),
(535140,28404,571,1,1,0,0,5366.69,-3823.7,371.5,2.35897,300,300,10,0,0,0,0,1),
(535141,28404,571,1,1,0,0,5394.85,-3879.55,362.1,0.152007,300,300,10,0,0,0,0,1),
(535142,28404,571,1,1,0,0,5514.95,-3924.07,361.964,5.75425,300,300,10,0,0,0,0,1),
(535143,28404,571,1,1,0,0,5424.89,-3792.03,361.961,0.998658,300,300,10,0,0,0,0,1),
(535144,28404,571,1,1,0,0,5500.404,-3793.833,359.6993,0.08722872,300,300,10,0,0,0,0,1),
(535145,28404,571,1,1,0,0,5410.39,-3944.02,362.163,6.28046,300,300,10,0,0,0,0,1),
(535146,28404,571,1,1,0,0,5431.38,-3730.58,361.961,5.90347,300,300,10,0,0,0,0,1);
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE id = 28404;
-- Har'koa 28401
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28401);
DELETE FROM creature_template_addon WHERE entry = 28401;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(28401,0,0,1,0,0,0,'52485 51666 25900');
-- individual addon
DELETE FROM creature_addon WHERE guid IN (522551);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(522551,0,0,1,0,0,0,'52483 25900');
-- ELM General Purpose Bunny (scale x0.01) Large 26298
-- individual addons
DELETE FROM creature_addon WHERE guid IN (513004,513008,513009,513011);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(513004,0,0,0,0,0,0,'52485 51666'),
(513008,0,0,0,0,0,0,'52485 51666'),
(513009,0,0,0,0,0,0,'52485 51666'),
(513011,0,0,0,0,0,0,'52485 51666');
-- target for spells
DELETE FROM spell_script_target WHERE entry IN(51577,45808,51579);
INSERT INTO spell_script_target VALUES
(51577,1,28401,0),
(45808,1,28401,0),
(51579,1,28401,0);
DELETE FROM creature_spawn_data WHERE guid IN (513011,513009,513008,513004);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(513011,20033),(513009,20034),(513008,20034),(513004,20035);
