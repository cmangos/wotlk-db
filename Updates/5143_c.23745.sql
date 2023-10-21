-- Garg 23745
-- Grizzly Hills - spawn
UPDATE creature SET movementType = 0 WHERE guid = 502661;
-- Ghostlands - spawn
-- Amphitheater Vendor 30098
DELETE FROM creature_addon WHERE guid IN (191024);
DELETE FROM creature_movement WHERE id IN (191024);
DELETE FROM game_event_creature WHERE guid IN (191024);
DELETE FROM game_event_creature_data WHERE guid IN (191024);
DELETE FROM creature_battleground WHERE guid IN (191024);
DELETE FROM creature_linking WHERE guid IN (191024);
DELETE FROM creature where guid IN (191024);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(191024,23745,530,1,1,6774.36,-7632.23,127.482,4.01426,300,300,0,2);
