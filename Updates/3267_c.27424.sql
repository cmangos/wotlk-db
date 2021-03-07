-- Conquest Hold Marauder 27424
-- missing added
DELETE FROM creature_addon WHERE guid IN (513421,513475,513533);
DELETE FROM creature_movement WHERE id IN (513421,513475,513533);
DELETE FROM game_event_creature WHERE guid IN (513421,513475,513533);
DELETE FROM game_event_creature_data WHERE guid IN (513421,513475,513533);
DELETE FROM creature_battleground WHERE guid IN (513421,513475,513533);
DELETE FROM creature_linking WHERE guid IN (513421,513475,513533)
 OR master_guid IN (513421,513475,513533);
DELETE FROM creature WHERE guid IN (513421,513475,513533);
-- missing added
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(513421,27424,571,1,1,0,0,4341.37,-2375.95,227.087,4.16888,300,300,0,0,0,0,0,0),
(513475,27424,571,1,1,0,0,4414.213,-2359.699,214.3771,4.45059,300,300,0,0,0,0,0,0),
(513533,27424,571,1,1,0,0,4392.6,-2404.48,229.677,4.75629,300,300,0,0,0,0,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (518286,518277,518283,513475,513533);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(518286,0,0,1,0,333,0,NULL),
(518277,0,0,1,0,333,0,NULL),
(518283,0,0,1,0,333,0,NULL),
(513475,0,0,1,0,333,0,NULL),
(513533,0,0,1,0,333,0,NULL);
-- Updates
UPDATE creature SET position_x = 4377.241, position_y = -2378.468, position_z = 228.1255, orientation = 4.24115, MovementType = 0, spawndist = 0 WHERE guid = 518286;
UPDATE creature SET position_x = 4296.554, position_y = -2358.045, position_z = 228.0481, orientation = 4.10152, MovementType = 0, spawndist = 0 WHERE guid = 518277;
UPDATE creature SET position_x = 4392.168, position_y = -2358.517, position_z = 218.5301, orientation = 4.67748, MovementType = 0, spawndist = 0 WHERE guid = 518283;
