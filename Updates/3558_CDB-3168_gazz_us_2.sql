-- Gazzuz 3204
-- another missing spawn added
DELETE FROM creature_addon WHERE guid IN (7202);
DELETE FROM creature_movement WHERE id IN (7202);
DELETE FROM game_event_creature WHERE guid IN (7202);
DELETE FROM game_event_creature_data WHERE guid IN (7202);
DELETE FROM creature_battleground WHERE guid IN (7202);
DELETE FROM creature_linking WHERE guid IN (7202)
OR master_guid IN (7202);
DELETE FROM creature WHERE guid IN (7202);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(7202,3204,1,1,1,0,0,1465.775390625, -4683.74462890625, 6.625988483428955078, 5.715672969818115234,300,300,0,0,178,382,0,0);
