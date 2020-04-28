-- Doomwalker 17711 - missing added
DELETE FROM creature_addon WHERE guid=84633;
DELETE FROM creature_movement WHERE id=84633;
DELETE FROM game_event_creature WHERE guid=84633;
DELETE FROM game_event_creature_data WHERE guid=84633;
DELETE FROM creature_battleground WHERE guid=84633;
DELETE FROM creature_linking WHERE guid=84633 OR master_guid=84633;
DELETE FROM creature WHERE guid=84633;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(84633,17711,530,1,1,0,0,-3563.34,233.887,44.1936,4.7331,172800,345600,0,0,0,0,0,2);
