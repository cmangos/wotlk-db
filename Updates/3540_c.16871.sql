-- Bleeding Hollow Grunt 16871
-- readded (Removed by prev commit) - lets keep TDB guids > 150k 
DELETE FROM creature_addon WHERE guid = 150002;
DELETE FROM creature_movement WHERE id = 150002;
DELETE FROM game_event_creature WHERE guid = 150002;
DELETE FROM game_event_creature_data WHERE guid = 150002;
DELETE FROM creature_battleground WHERE guid = 150002;
DELETE FROM creature_linking WHERE guid = 150002
OR master_guid = 150002;
DELETE FROM creature WHERE guid = 150002;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(150002,16871,530,1,1,0,0,-886.86,1923.62,67.36,0.49,300,300,0,0,4979,0,0,0);
