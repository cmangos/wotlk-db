-- missing spawns added
DELETE FROM creature_addon WHERE guid IN (81016,81028,81029,81064);
DELETE FROM creature_movement WHERE id IN (81016,81028,81029,81064);
DELETE FROM game_event_creature WHERE guid IN (81016,81028,81029,81064);
DELETE FROM game_event_creature_data WHERE guid IN (81016,81028,81029,81064);
DELETE FROM creature_battleground WHERE guid IN (81016,81028,81029,81064);
DELETE FROM creature_linking WHERE guid IN (81016,81028,81029,81064)
OR master_guid IN (81016,81028,81029,81064);
DELETE FROM creature WHERE guid IN (81016,81028,81029,81064);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(81016,448,0,1,1,0,0,-9947.8779296875, 594.77252197265625, 39.60799789428710937, 5.193932056427001953,180,180,8,0,666,0,0,1),
(81028,448,0,1,1,0,0,-10107.1787109375, 618.212646484375, 38.20453262329101562, 3.78528451919555664,180,180,8,0,666,0,0,1),
(81029,448,0,1,1,0,0,-10085.3671875, 585.65655517578125, 39.27585601806640625, 1.303950071334838867,180,180,8,0,666,0,0,1),
(81064,448,0,1,1,0,0,-10018.634765625, 640.62945556640625, 39.06363296508789062, 1.332400083541870117,180,180,8,0,666,0,0,1);
-- update
UPDATE creature SET position_x = -10089.900390625, position_y = 667.13433837890625, position_z = 34.29605865478515625, orientation = 5.683063507080078125, spawndist=15, MovementType = 1 WHERE (guid = 80531);
-- POOLS
DELETE FROM `pool_creature_template` WHERE `id` = 448;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('448', '1265', '0', 'Elwynn Forest - Forest\'s Edge - Hogger (448)');
DELETE FROM `pool_template` WHERE `entry` = 1265;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1265', '1', 'Elwynn Forest - Forest\'s Edge - Hogger (448)');

