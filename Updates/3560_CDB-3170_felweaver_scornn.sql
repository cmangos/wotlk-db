-- missing spawns added
DELETE FROM creature_addon WHERE guid IN (12158,12268);
DELETE FROM creature_movement WHERE id IN (12158,12268);
DELETE FROM game_event_creature WHERE guid IN (12158,12268);
DELETE FROM game_event_creature_data WHERE guid IN (12158,12268);
DELETE FROM creature_battleground WHERE guid IN (12158,12268);
DELETE FROM creature_linking WHERE guid IN (12158,12268)
OR master_guid IN (12158,12268);
DELETE FROM creature WHERE guid IN (12158,12268);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(12158,5822,1,1,1,0,0,1470.1867675781250, -4695.2880859375, 6.530092716217041015, 4.153883457183837890,5400,9000,0,0,624,308,0,0),
(12268,5822,1,1,1,0,0,1552.7408447265625, -4767.2910156250, 12.93703556060791015, 3.752457857131958007,5400,9000,0,0,624,308,0,0);
-- update
UPDATE creature SET position_x = 1492.4405517578125, position_y = -4753.36767578125, position_z = 21.102783203125, orientation = 4.049163818359375 WHERE (guid = 12209);
-- POOLS
DELETE FROM `pool_creature_template` WHERE `id` = 5822;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('5822', '1250', '0', 'Felweaver Scornn (5822)');
DELETE FROM `pool_template` WHERE `entry` = 1250;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1250', '1', 'Felweaver Scornn (5822)');
