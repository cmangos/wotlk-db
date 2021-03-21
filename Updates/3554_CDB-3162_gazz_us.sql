
-- Gazz'uz 3204
-- missing spawns added
DELETE FROM creature_addon WHERE guid IN (6439,6499);
DELETE FROM creature_movement WHERE id IN (6439,6499);
DELETE FROM game_event_creature WHERE guid IN (6439,6499);
DELETE FROM game_event_creature_data WHERE guid IN (6439,6499);
DELETE FROM creature_battleground WHERE guid IN (6439,6499);
DELETE FROM creature_linking WHERE guid IN (6439,6499)
OR master_guid IN (6439,6499);
DELETE FROM creature WHERE guid IN (6439,6499);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(6439,3204,1,1,1,0,0,1470.4882812500000, -4706.10791015625, 2.220372200012207031, 0.820304751396179199,300,300,0,0,178,382,0,0),
(6499,3204,1,1,1,0,0,1497.5399169921875, -4744.13720703125, 18.01207923889160156, 6.037305831909179687,300,300,0,0,178,382,0,0);
-- update
UPDATE creature SET position_x = 1454.1995849609375, position_y = -4701.81787109375, position_z = -2.62193179130554199, orientation = 4.572762489318847656, spawndist = 2, MovementType = 1 WHERE (guid = 6456);
-- POOLS
DELETE FROM `pool_creature_template` WHERE `id` = 3204;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(3204, 1202, 0, 'Gazz\'uz (3204)');
DELETE FROM `pool_template` WHERE `entry` = 1202;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(1202, 1, 'Gazz\'uz (3204)');
