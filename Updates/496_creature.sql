-- Arthur Moore
DELETE FROM creature WHERE guid = 61297;
DELETE FROM creature_addon WHERE guid = 61297;
DELETE FROM creature_movement WHERE id = 61297;
DELETE FROM game_event_creature WHERE guid = 61297;
DELETE FROM game_event_creature_data WHERE guid = 61297;
DELETE FROM creature_battleground WHERE guid = 61297;
DELETE FROM creature_linking WHERE guid = 61297 OR master_guid = 61297;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(61297,4588,0,1,1,0,0,1510.37,199.943,-62.1372,3.892084,300,0,0,1342,0,0,0);
