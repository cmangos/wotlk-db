-- missing spawns added
DELETE FROM creature_addon WHERE guid IN (51859);
DELETE FROM creature_movement WHERE id IN (51859);
DELETE FROM game_event_creature WHERE guid IN (51859);
DELETE FROM game_event_creature_data WHERE guid IN (51859);
DELETE FROM creature_battleground WHERE guid IN (51859);
DELETE FROM creature_linking WHERE guid IN (51859)
OR master_guid IN (51859);
DELETE FROM creature WHERE guid IN (51859);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(51859,5847,1,1,1,0,0,-4071.817626953125,-2163.270751953125,50.65045928955078125,3.089232683181762695,14400,21600,0,0,585,0,0,0);
-- POOLS
DELETE FROM `pool_creature_template` WHERE `id` = 5847;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('5847', '1258', '0', 'Heggin Stonewhisker (5847)');
DELETE FROM `pool_template` WHERE `entry` = 1258;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1258', '1', 'Heggin Stonewhisker (5847)');
