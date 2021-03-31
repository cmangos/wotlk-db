-- missing spawns added
DELETE FROM creature_addon WHERE guid IN (1723,1737,1741);
DELETE FROM creature_movement WHERE id IN (1723,1737,1741);
DELETE FROM game_event_creature WHERE guid IN (1723,1737,1741);
DELETE FROM game_event_creature_data WHERE guid IN (1723,1737,1741);
DELETE FROM creature_battleground WHERE guid IN (1723,1737,1741);
DELETE FROM creature_linking WHERE guid IN (1723,1737,1741)
OR master_guid IN (1723,1737,1741);
DELETE FROM creature WHERE guid IN (1723,1737,1741);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(1723,3473,1,1,1,0,0,-2379.904052734375, -2383.2734375, 91.75, 5.385590076446533203,275,275,40,0,664,0,0,1),
(1737,3473,1,1,1,0,0,-2616.596435546875, -2017.2301025390625, 93.0281982421875, 2.328437089920043945,275,275,40,0,664,0,0,1),
(1741,3473,1,1,1,0,0,-2584.930908203125, -1849.863525390625, 91.9208984375, 5.536968708038330078,275,275,40,0,664,0,0,1);
-- update
DELETE FROM creature_movement WHERE (id = '15082');
UPDATE creature SET position_x = -2515.481689453125, position_y = -2383.766845703125, position_z = 92.19029998779296875, orientation = 2.392263174057006835, spawndist = 40, MovementType = 1 WHERE (guid = 15082);
-- POOLS
DELETE FROM `pool_creature_template` WHERE `id` = 3473;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('3473', '1261', '0', 'Owatanka (3473)');
DELETE FROM `pool_template` WHERE `entry` = 1261;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1261', '1', 'Owatanka (3473)');
