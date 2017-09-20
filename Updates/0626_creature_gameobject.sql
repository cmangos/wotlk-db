-- Barricade
-- object summoned only be spells - we shouldnt have static objects
DELETE FROM game_event_gameobject WHERE guid IN (SELECT guid FROM gameobject WHERE id IN (193612,193613,193614));
DELETE FROM gameobject_battleground WHERE guid IN (SELECT guid FROM gameobject WHERE id IN (193612,193613,193614));
DELETE FROM gameobject WHERE id IN (193612,193613,193614);
-- Ebon Blade Marker 
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid = 129246;
DELETE FROM creature_addon WHERE guid = 129246;
DELETE FROM creature_movement WHERE id = 129246;
DELETE FROM game_event_creature WHERE guid = 129246;
DELETE FROM game_event_creature_data WHERE guid = 129246;
DELETE FROM creature_battleground WHERE guid = 129246;
DELETE FROM creature_linking WHERE guid = 129246 OR master_guid = 129246;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(129246,31887,571,1,1,0,0,7846.763,2174.779,369.6377,4.39823,300,0,0,12600,3994,0,0);
-- Ebon Blade Marker
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 31887;