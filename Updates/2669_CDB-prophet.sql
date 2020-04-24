-- The Nameless Prophet 13718
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 13718);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 13718);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 13718);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 13718);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 13718);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 13718)
 OR master_guid IN (SELECT guid FROM creature WHERE id = 13718);
DELETE FROM creature WHERE id = 13718;
INSERT INTO creature (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(29070, 13718, 1, 0, 0, -1418.3810, 2967.5737, 124.25303, 0, 550, 550, 2, 0, 3804, 1332, 0, 1),
(29099, 13718, 1, 0, 0, -1472.3815, 2965.4753, 122.53663, 0, 550, 550, 2, 0, 3804, 1332, 0, 1),
(29104, 13718, 1, 0, 0, -1418.7195, 2940.6057, 95.403564, 3.72, 550, 550, 0, 0, 3804, 1332, 0, 0),
(29105, 13718, 1, 0, 0, -1440.6986, 3008.5134, 115.46087, 2.77, 550, 550, 0, 0, 3804, 1332, 0, 0);

-- pools
DELETE FROM `pool_creature_template` WHERE `id` = 13718;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(13718, 1219, 0, 'The Nameless Prophet (13718)');
DELETE FROM `pool_template` WHERE `entry` = 1219;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(1219, 1, 'The Nameless Prophet (13718)');
