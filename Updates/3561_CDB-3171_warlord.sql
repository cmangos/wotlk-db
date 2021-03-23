-- missing spawns added
DELETE FROM creature_addon WHERE guid IN (120,153);
DELETE FROM creature_movement WHERE id IN (120,153);
DELETE FROM game_event_creature WHERE guid IN (120,153);
DELETE FROM game_event_creature_data WHERE guid IN (120,153);
DELETE FROM creature_battleground WHERE guid IN (120,153);
DELETE FROM creature_linking WHERE guid IN (120,153)
OR master_guid IN (120,153);
DELETE FROM creature WHERE guid IN (120,153);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(120,5808,1,1,1,0,0,-976.3066406250000, -4417.45800781250, 29.34746742248535156, 3.124139308929443359,3600,7200,0,0,176,0,0,0),
(153,5808,1,1,1,0,0,-1032.831787109375, -4600.00146484375, 25.62066650390625000, 6.248278617858886718,3600,7200,0,0,176,0,0,0);
-- update
UPDATE creature SET position_x = -918.927978515625, position_y = -4494.03173828125, position_z = 29.67312431335449218, orientation = 3.019419670104980468 WHERE (guid = 12260);
-- POOLS
DELETE FROM `pool_creature_template` WHERE `id` = 5808;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('5808', '1253', '0', 'Warlord Kolkanis (5808)');
DELETE FROM `pool_template` WHERE `entry` = 1253;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1253', '1', 'Warlord Kolkanis (5808)');
