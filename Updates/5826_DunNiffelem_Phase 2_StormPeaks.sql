-- Storm Peaks: Dun Niffelem - Phase 2
-- Son of Hodir 29809
UPDATE creature_template_addon SET auras = 55291 WHERE entry = 29809;
UPDATE creature SET position_x = 7347.097, position_y = -2770.4124, position_z = 767.1032, orientation = 1.55334, spawndist = 0, MovementType = 2 WHERE guid = 526461;
UPDATE creature SET position_x = 7297.7075, position_y = -2845.014, position_z = 792.54846, spawndist = 0, MovementType = 4 WHERE guid = 526446; -- linear
UPDATE creature SET position_x = 7406.4575, position_y = -2907.7556, position_z = 825.58984, spawndist = 0, MovementType = 4 WHERE guid = 526454; -- linear
UPDATE creature SET position_x = 7272.284, position_y = -2896.83, position_z = 823.9773, spawndist = 0, MovementType = 4 WHERE guid = 526452; -- linear
DELETE FROM creature_movement WHERE id IN (526461,526446,526454,526452);
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- 526461
(526461,1,7347.097,-2770.4124,767.1032,1.55334,20000,0), -- 00:46:26.326 - 00:46:37.654
(526461,2,7354.578,-2778.3733,770.0292,100,0,0),
(526461,3,7395.059,-2778.3342,770.95514,0.0465312,0,0),
(526461,4,7397.093,-2777.097,770.95764,3.176499,32000,0), -- 00:57:21.192 - 00:57:53.496
(526461,5,7360.8896,-2783.4583,770.17883,100,0,0),
-- 526446
(526446,1,7297.7075,-2845.014,792.54846,100,500,0),
(526446,2,7333.7485,-2849.251,800.3946,100,0,0),
(526446,3,7368.4634,-2842.7551,800.4326,100,0,0),
(526446,4,7400.7915,-2857.5942,800.3826,100,0,0),
(526446,5,7445.252,-2857.6511,799.8789,100,500,0),
-- 526454
(526454,1,7406.4575,-2907.7556,825.58984,100,500,0),
(526454,2,7377.579,-2916.9966,823.684,100,0,0),
(526454,3,7344.558,-2907.7627,823.04614,100,0,0),
(526454,4,7312.182,-2896.8877,823.37854,100,0,0),
(526454,5,7272.284,-2896.83,823.9773,100,500,0),
-- 526452 (copy of 526454) - it is correct
(526452,1,7272.284,-2896.83,823.9773,100,500,0),
(526452,2,7312.182,-2896.8877,823.37854,100,0,0),
(526452,3,7344.558,-2907.7627,823.04614,100,0,0),
(526452,4,7377.579,-2916.9966,823.684,100,0,0),
(526452,5,7406.4575,-2907.7556,825.58984,100,500,0);
-- spell targets
DELETE FROM spell_script_target WHERE entry IN (55524,55244);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(55524, 1, 29709, 0),
(55244, 1, 30442, 0);
-- Captive Proto-Drake 29708
UPDATE creature SET  spawndist = 0, MovementType = 0 WHERE id = 29708;
UPDATE creature_template SET InhabitType = 4 WHERE entry IN (29708);
DELETE FROM `creature_spawn_data` WHERE guid BETWEEN 526139 AND 526145; 
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(526139,20056),(526140,20056),(526141,20056),
(526142,20056),(526143,20056),(526144,20056),
(526145,20056);
-- Captive Proto Drake Beam Bunny 29805
-- part of vehicle accessory
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 29805);
DELETE FROM creature_movement WHERE id IN(SELECT guid FROM creature WHERE id = 29805);
DELETE FROM game_event_creature WHERE guid IN(SELECT guid FROM creature WHERE id = 29805);
DELETE FROM game_event_creature_data WHERE guid IN(SELECT guid FROM creature WHERE id = 29805);
DELETE FROM creature_battleground WHERE guid IN(SELECT guid FROM creature WHERE id = 29805);
DELETE FROM creature_linking WHERE guid IN(SELECT guid FROM creature WHERE id = 29805);
DELETE FROM creature WHERE id = 29805;
-- Phase 1 Generic Bunny 30442
UPDATE creature_template SET StaticFlags1 = StaticFlags1|0x80000000 WHERE entry IN (30442,29805,29708);
