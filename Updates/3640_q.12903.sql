-- Vargul Dummy 29459
DELETE FROM creature_addon WHERE guid IN (518605);
DELETE FROM creature_movement WHERE id IN (518605);
DELETE FROM game_event_creature WHERE guid IN (518605);
DELETE FROM game_event_creature_data WHERE guid IN (518605);
DELETE FROM creature_battleground WHERE guid IN (518605);
DELETE FROM creature_linking WHERE guid IN (518605)
 OR master_guid IN (518605);
DELETE FROM creature WHERE guid IN (518605);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(518605,29459,571,1,1,0,0,5750.43,-1483.46,235.714,0.786859,300,300,0,0,10635,0,0,2);
DELETE FROM creature_movement WHERE id IN (518605);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(518605,1,5750.43,-1483.46,235.714,0.786859,100,11),
(518605,2,5750.43,-1483.46,235.714,0.786859,100,3);
