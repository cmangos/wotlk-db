-- Zim'Abwa - Zul'Drak

-- Drakkari Native 29211
-- missing added
DELETE FROM creature_addon WHERE guid IN (522004,526080,526525,530985,530986,534598,534797,534798,534799,534800,534801,534802,534803,534804,534805,534806,534807);
DELETE FROM creature_movement WHERE id IN (522004,526080,526525,530985,530986,534598,534797,534798,534799,534800,534801,534802,534803,534804,534805,534806,534807);
DELETE FROM game_event_creature WHERE guid IN (522004,526080,526525,530985,530986,534598,534797,534798,534799,534800,534801,534802,534803,534804,534805,534806,534807);
DELETE FROM game_event_creature_data WHERE guid IN (522004,526080,526525,530985,530986,534598,534797,534798,534799,534800,534801,534802,534803,534804,534805,534806,534807);
DELETE FROM creature_battleground WHERE guid IN (522004,526080,526525,530985,530986,534598,534797,534798,534799,534800,534801,534802,534803,534804,534805,534806,534807);
DELETE FROM creature_linking WHERE guid IN (522004,526080,526525,530985,530986,534598,534797,534798,534799,534800,534801,534802,534803,534804,534805,534806,534807)
 OR master_guid IN (522004,526080,526525,530985,530986,534598,534797,534798,534799,534800,534801,534802,534803,534804,534805,534806,534807);
DELETE FROM creature WHERE guid IN (522004,526080,526525,530985,530986,534598,534797,534798,534799,534800,534801,534802,534803,534804,534805,534806,534807);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(522004,29211,571,1,1,0,0,5201.886,-2415.856,290.1515,3.228859,300,300,0,0,0,0,0,0), -- 333
(526080,29211,571,1,1,0,0,5268.255,-2333.214,287.6096,5.235988,300,300,0,0,0,0,0,0), -- 10
(526525,29211,571,1,1,0,0,5227.549,-2376.171,287.6096,5.550147,300,300,0,0,0,0,0,0), -- 333
(530985,29211,571,1,1,0,0,5199.358,-2483.602,288.629,3.089233,300,300,0,0,0,0,0,0), -- 333
(530986,29211,571,1,1,0,0,5293.745,-2491.751,287.579,3.944444,300,300,0,0,0,0,0,0), -- 10
(534598,29211,571,1,1,0,0,5315.83,-2507.982,287.175,5.235988,300,300,0,0,0,0,0,0), -- 333
(534797,29211,571,1,1,0,0,5334.582,-2487.81,287.8864,1.553343,300,300,0,0,0,0,0,0), -- 333
(534798,29211,571,1,1,0,0,5271.053,-2391.643,288.1958,2.373648,300,300,0,0,0,0,0,0), -- 333
(534799,29211,571,1,1,0,0,5332.971,-2384.374,287.6096,4.502949,300,300,0,0,0,0,0,0), -- 333
(534800,29211,571,1,1,0,0,5211.971,-2453.859,288.4769,5.934119,300,300,0,0,0,0,0,0), -- 333
(534801,29211,571,1,1,0,0,5271.825,-2475.356,288.7498,3.996804,300,300,0,0,0,0,0,0), -- 333
(534802,29211,571,1,1,0,0,5245.849,-2447.668,290.1342,1.48353,300,300,0,0,0,0,0,0), -- 10
(534803,29211,571,1,1,0,0,5246.341,-2419.756,290.1342,4.642576,300,300,0,0,0,0,0,0), -- 10
(534804,29211,571,1,1,0,0,5311.823,-2426.094,287.6096,6.108652,300,300,0,0,0,0,0,0), -- 333
(534805,29211,571,1,1,0,0,5313.306,-2445.475,287.6096,0.01745329,300,300,0,0,0,0,0,0), -- 333
(534806,29211,571,1,1,0,0,5313.581,-2330.754,287.6096,4.782202,300,300,0,0,0,0,0,0), -- 10
(534807,29211,571,1,1,0,0,5305.759,-2374.623,287.5515,0.0460021,300,300,0,0,0,0,0,2); -- wp
-- individual addons
DELETE FROM creature_addon WHERE guid IN (523978,523977,523981);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(523978,0,0,1,0,333,0,''),
(523977,0,0,1,0,333,0,''),
(523981,0,0,1,0,333,0,''),
(522004,0,0,1,0,333,0,''),
(526080,0,0,1,0,10,0,''),
(526525,0,0,1,0,333,0,''),
(530985,0,0,1,0,333,0,''),
(530986,0,0,1,0,10,0,''),
(534598,0,0,1,0,333,0,''),
(534797,0,0,1,0,333,0,''),
(534798,0,0,1,0,333,0,''),
(534799,0,0,1,0,333,0,''),
(534800,0,0,1,0,333,0,''),
(534801,0,0,1,0,333,0,''),
(534802,0,0,1,0,10,0,''),
(534803,0,0,1,0,10,0,''),
(534804,0,0,1,0,333,0,''),
(534805,0,0,1,0,333,0,''),
(534806,0,0,1,0,10,0,'');
UPDATE creature SET position_x = 5338.834, position_y = -2572.138, position_z = 289.143, orientation = 4.782202 WHERE guid = 523978; -- 333
UPDATE creature SET position_x = 5346.502, position_y = -2523.463, position_z = 287.6096, orientation = 6.230825 WHERE guid = 523977; -- 333
UPDATE creature SET position_x = 5343.639, position_y = -2350.241, position_z = 287.7114, orientation = 6.248279 WHERE guid = 523981; -- 333
DELETE FROM `creature_movement` WHERE `id` IN (534807);
INSERT INTO `creature_movement` (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(534807,1,5327.782,-2373.237,287.5515,100,0,0),
(534807,2,5329.78,-2385.97,287.527,100,0,0),
(534807,3,5326.91,-2404.92,287.527,100,0,0),
(534807,4,5325.93,-2432.29,287.527,100,0,0),
(534807,5,5324.82,-2449.45,287.527,100,0,0),
(534807,6,5326.78,-2466.12,287.527,100,0,0),
(534807,7,5329.02,-2481.08,287.527,100,0,0),
(534807,8,5329.49,-2498.09,287.527,100,0,0),
(534807,9,5322.63,-2510.22,287.527,100,0,0),
(534807,10,5310.96,-2514.68,287.834,100,0,0),
(534807,11,5287.88,-2514.15,287.527,100,0,0),
(534807,12,5275.87,-2509.58,287.527,100,0,0),
(534807,13,5255.35,-2488.16,287.527,100,0,0),
(534807,14,5236.17,-2468.02,287.527,100,0,0),
(534807,15,5228.12,-2457.08,287.527,100,0,0),
(534807,16,5226.05,-2435.16,287.527,100,0,0),
(534807,17,5228.99,-2412.71,287.526,100,0,0),
(534807,18,5237.32,-2400.19,287.526,100,0,0),
(534807,19,5252.54,-2383.43,287.526,100,0,0),
(534807,20,5265.15,-2371.36,287.526,100,0,0),
(534807,21,5287.79,-2373.84,287.409,100,0,0),
(534807,22,5305.11,-2374.55,287.532,100,0,0);