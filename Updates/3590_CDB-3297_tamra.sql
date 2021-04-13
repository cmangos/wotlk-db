-- missing spawns added
DELETE FROM creature_addon WHERE guid IN (90784,90786);
DELETE FROM creature_movement WHERE id IN (90784,90786);
DELETE FROM game_event_creature WHERE guid IN (90784,90786);
DELETE FROM game_event_creature_data WHERE guid IN (90784,90786);
DELETE FROM creature_battleground WHERE guid IN (90784,90786);
DELETE FROM creature_linking WHERE guid IN (90784,90786)
OR master_guid IN (90784,90786);
DELETE FROM creature WHERE guid IN (90784,90786);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(90784,14275,0,1,1,0,0,-1329.939453125,-1277.459228515625,49.98560333251953125,2.301288127899169921,18000,28800,3,0,2196,756,0,1),
(90786,14275,0,1,1,0,0,-1356.63818359375,-1247.211669921875,49.98707962036132812,3.446519136428833007,18000,28800,3,0,2196,756,0,1);
-- update
UPDATE creature SET position_x = -1265.12255859375,position_y = -1195.08447265625,position_z = 40.0485687255859375,orientation = 3.393389225006103515,spawndist = 3,MovementType = 1 WHERE (guid = 90783);
