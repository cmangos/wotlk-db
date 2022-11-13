-- Narf 26647
-- readded - removd by mistake
DELETE FROM creature_addon WHERE guid = 535228;
DELETE FROM creature_movement WHERE id = 535228;
DELETE FROM game_event_creature WHERE guid = 535228;
DELETE FROM game_event_creature_data WHERE guid = 535228;
DELETE FROM creature_battleground WHERE guid = 535228;
DELETE FROM creature_linking WHERE guid = 535228
OR master_guid = 535228;
DELETE FROM creature WHERE guid = 535228;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(535228,26647,571,1,1,0,0,4691.45,571.628,119.784,5.63741,300,300,0,0,10635,0,0,0);
