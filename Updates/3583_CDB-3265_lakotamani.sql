-- missing spawns added
DELETE FROM creature_addon WHERE guid IN (1742,1789,1823);
DELETE FROM creature_movement WHERE id IN (1742,1789,1823);
DELETE FROM game_event_creature WHERE guid IN (1742,1789,1823);
DELETE FROM game_event_creature_data WHERE guid IN (1742,1789,1823);
DELETE FROM creature_battleground WHERE guid IN (1742,1789,1823);
DELETE FROM creature_linking WHERE guid IN (1742,1789,1823)
OR master_guid IN (1742,1789,1823);
DELETE FROM creature WHERE guid IN (1742,1789,1823);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(1742,3474,1,1,1,0,0,-1950.4051513671875, -1949.997802734375, 92.8021087646484375, 5.445427417755126953,275,275,40,0,573,0,0,1),
(1789,3474,1,1,1,0,0,-1981.5889892578125, -2452.464111328125, 93.39815521240234375, 3.926990747451782226,275,275,40,0,573,0,0,1),
(1823,3474,1,1,1,0,0,-1716.923583984375, -2051.568603515625, 91.8554840087890625, 0.872664630413055419,275,275,40,0,573,0,0,1);
-- update
DELETE FROM creature_movement WHERE (id = 15083);
UPDATE creature SET position_x = -1852.6673583984375, position_y = -2181.0439453125, position_z = 94.424713134765625, orientation = 0.837758064270019531, spawndist = 40, MovementType = 1 WHERE (guid = 15083);
-- POOLS
DELETE FROM `pool_creature_template` WHERE `id` = 3474;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('3474', '1262', '0', 'Lakota\'mani (3474)');
DELETE FROM `pool_template` WHERE `entry` = 1262;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1262', '1', 'Lakota\'mani (3474)');
