-- Both creatures req. to be spawned on transport... but until this is not supported on CManGoS we need to use temp location.

-- Captain Ellis (TEMP SPAWN - NEEDED FOR Q. CHAIN TO CONTINUE) - REQ TRANSPORT SYSTEM IMPLEMENTED
-- missing added - WoTLK free guids reused
DELETE FROM creature_addon WHERE guid IN (139740);
DELETE FROM creature_movement WHERE id IN (139740);
DELETE FROM game_event_creature WHERE guid IN (139740);
DELETE FROM game_event_creature_data WHERE guid IN (139740);
DELETE FROM creature_battleground WHERE guid IN (139740);
DELETE FROM creature_linking WHERE guid IN (139740)
OR master_guid IN (139740);
DELETE FROM creature WHERE guid IN (139740);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(139740,24910,571,1,1,0,736,97.6751,-3679.95,0.210202,4.97153,300,300,0,0,8982,0,0,0);

-- Mutinous Sea Dog (TEMP SPAWN - NEEDED FOR Q. CHAIN TO CONTINUE) - REQ TRANSPORT SYSTEM IMPLEMENTED
-- missing added - WoTLK free guids reused
DELETE FROM creature_addon WHERE guid IN (139742,139743);
DELETE FROM creature_movement WHERE id IN (139742,139743);
DELETE FROM game_event_creature WHERE guid IN (139742,139743);
DELETE FROM game_event_creature_data WHERE guid IN (139742,139743);
DELETE FROM creature_battleground WHERE guid IN (139742,139743);
DELETE FROM creature_linking WHERE guid IN (139742,139743)
OR master_guid IN (139742,139743);
DELETE FROM creature WHERE guid IN (139742,139743);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(139742,25026,571,1,1,0,740,96.1964,-3681.35,0.0909254,5.40278,120,120,0,0,8982,0,0,0),
(139743,25026,571,1,1,0,740,99.4499,-3678.61,0.128381,4.98937,120,120,0,0,7984,0,0,0);
