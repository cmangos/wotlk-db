-- Spirit Healer mising added
DELETE FROM creature_addon WHERE guid=102347;
DELETE FROM creature_movement WHERE id=102347;
DELETE FROM game_event_creature WHERE guid=102347;
DELETE FROM game_event_creature_data WHERE guid=102347;
DELETE FROM creature_battleground WHERE guid=102347;
DELETE FROM creature_linking WHERE guid=102347
 OR master_guid=102347;
DELETE FROM creature WHERE guid=102347;
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, MovementType) VALUES
(102347, 6491, 530, 1, 0, 0, -2438.87, 4665.47, 161.979, 4.64829, 300, 300, 0, 0, 0, 0, 0);
