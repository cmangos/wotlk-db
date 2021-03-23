-- missing spawns added
DELETE FROM creature_addon WHERE guid IN (320,425);
DELETE FROM creature_movement WHERE id IN (320,425);
DELETE FROM game_event_creature WHERE guid IN (320,425);
DELETE FROM game_event_creature_data WHERE guid IN (320,425);
DELETE FROM creature_battleground WHERE guid IN (320,425);
DELETE FROM creature_linking WHERE guid IN (320,425)
OR master_guid IN (320,425);
DELETE FROM creature WHERE guid IN (320,425);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(320,5826,1,1,1,0,0,29.72135353088378906, -4278.99414062500, 69.91001129150390625, 0.785398185253143310,3600,7200,0,0,166,178,0,0),
(425,5826,1,1,1,0,0,50.82291793823242187, -4457.18603515625, 48.42325592041015625, 5.585053443908691406,3600,7200,0,0,166,178,0,0);
-- update
UPDATE creature SET position_x = 424.3211975097656250, position_y = -4245.12597656250, position_z = 26.34619140625000000, orientation = 1.745329260826110839 WHERE (guid = 12384);
-- POOLS
DELETE FROM `pool_creature_template` WHERE `id` = 5826;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('5826', '1255', '0', 'Geolord Mottle (5826)');
DELETE FROM `pool_template` WHERE `entry` = 1255;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1255', '1', 'Geolord Mottle (5826)');
