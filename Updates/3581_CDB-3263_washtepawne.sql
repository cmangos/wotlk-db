-- missing spawns added
DELETE FROM creature_addon WHERE guid IN (15215,15217,567);
DELETE FROM creature_movement WHERE id IN (15215,15217,567);
DELETE FROM game_event_creature WHERE guid IN (15215,15217,567);
DELETE FROM game_event_creature_data WHERE guid IN (15215,15217,567);
DELETE FROM creature_battleground WHERE guid IN (15215,15217,567);
DELETE FROM creature_linking WHERE guid IN (15215,15217,567)
OR master_guid IN (15215,15217,567);
DELETE FROM creature WHERE guid IN (15215,15217,567);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(15215,3472,1,1,1,0,0,-3716.850830078125, -1917.6165771484375, 91.7601318359375, 5.458455085754394531,275,275,40,0,713,0,0,1),
(15217,3472,1,1,1,0,0,-3449.927001953125, -1917.60009765625, 95.30474090576171875, 1.559170365333557128,275,275,40,0,713,0,0,1),
(567,3472,1,1,1,0,0,-3783.507080078125, -2184.351318359375, 93.82526397705078125, 0.88516998291015625,275,275,40,0,713,0,0,1);
-- update
UPDATE creature SET position_x = -3849.838623046875, position_y = -1749.7476806640625, position_z = 93.97516632080078125, orientation = 2.186831951141357421, spawndist = 40, MovementType = 1 WHERE (guid = 15081);
-- POOLS
DELETE FROM `pool_creature_template` WHERE `id` = 3472;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('3472', '1260', '0', 'Washte Pawne (3472)');
DELETE FROM `pool_template` WHERE `entry` = 1260;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1260', '1', 'Washte Pawne (3472)');
