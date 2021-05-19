-- missing spawns added
DELETE FROM creature_addon WHERE guid IN (502,517,566);
DELETE FROM creature_movement WHERE id IN (502,517,566);
DELETE FROM game_event_creature WHERE guid IN (502,517,566);
DELETE FROM game_event_creature_data WHERE guid IN (502,517,566);
DELETE FROM creature_battleground WHERE guid IN (502,517,566);
DELETE FROM creature_linking WHERE guid IN (502,517,566)
OR master_guid IN (502,517,566);
DELETE FROM creature WHERE guid IN (502,517,566);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(502,3392,1,1,1,0,0,-4176.35449218750, -2235.1992187500000, 51.03125000000000000, 5.194896697998046875,275,275,0,0,600,618,0,0),
(517,3392,1,1,1,0,0,-4208.52392578125 , -2274.225341796875, 50.26688766479492187, 3.925816535949707031,275,275,0,0,600,618,0,0),
(566,3392,1,1,1,0,0,-4134.08740234375, -2190.5568847656250, 50.93259048461914062, 5.971350669860839843,275,275,0,0,600,618,0,0);
-- update
UPDATE creature SET position_x = -4181.31298828125, position_y = -2184.32763671875, position_z = 50.26645278930664062, orientation = 0.292324692010879516, spawndist = 5, MovementType = 1 WHERE (guid = 13984);
-- POOLS
DELETE FROM `pool_creature_template` WHERE `id` = 3392;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('3392', '1257', '0', 'Prospector Khazgorm (3392)');
DELETE FROM `pool_template` WHERE `entry` = 1257;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1257', '1', 'Prospector Khazgorm (3392)');
