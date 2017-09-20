-- ELM General Purpose Bunny 
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid = 75933;
DELETE FROM creature_addon WHERE guid = 75933;
DELETE FROM creature_movement WHERE id = 75933;
DELETE FROM game_event_creature WHERE guid = 75933;
DELETE FROM game_event_creature_data WHERE guid = 75933;
DELETE FROM creature_battleground WHERE guid = 75933;
DELETE FROM creature_linking WHERE guid = 75933 
OR master_guid = 75933;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(75933,24021,571,1,1,0,0,4386.42,5365.95,86.1184,3.85894,300,300,0,0,42,0,0,0);
