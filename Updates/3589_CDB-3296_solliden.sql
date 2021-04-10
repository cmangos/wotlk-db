-- missing spawns added
DELETE FROM creature_addon WHERE guid IN (44653,44656,44948);
DELETE FROM creature_movement WHERE id IN (12158,12268);
DELETE FROM game_event_creature WHERE guid IN (12158,12268);
DELETE FROM game_event_creature_data WHERE guid IN (12158,12268);
DELETE FROM creature_battleground WHERE guid IN (12158,12268);
DELETE FROM creature_linking WHERE guid IN (12158,12268)
OR master_guid IN (12158,12268);
DELETE FROM creature WHERE guid IN (12158,12268);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(44653,1936,0,1,1,0,0,2267.568603515625, 1493.9810791015625, 33.41745758056640625, 5.078907966613769531,3600,7200,0,0,156,0,0,0),
(44656,1936,0,1,1,0,0,2347.559814453125, 1357.4378662109375, 33.41667556762695312, 2.30383467674255371,3600,7200,0,0,156,0,0,0),
(44948,1936,0,1,1,0,0,2264.660400390625, 1314.68798828125, 34.07053756713867187, 0.226892799139022827,3600,7200,0,0,156,0,0,0);
-- update
UPDATE creature SET position_x = 2342.921875, position_y = 1314.3148193359375, position_z = 34.11931991577148437, orientation = 3.193952560424804687 WHERE (guid = 44569);
-- POOLS
DELETE FROM `pool_creature_template` WHERE `id` = 1936;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('1936', '1143', '0', 'Farmer Solliden (1936)');
DELETE FROM `pool_template` WHERE `entry` = 1143;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1143', '1', 'Farmer Solliden (1936)');
