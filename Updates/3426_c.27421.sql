-- Fern Feeder Moth 27421
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 507807 AND 507810;
DELETE FROM creature_movement WHERE id BETWEEN 507807 AND 507810;
DELETE FROM game_event_creature WHERE guid BETWEEN 507807 AND 507810;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 507807 AND 507810;
DELETE FROM creature_battleground WHERE guid BETWEEN 507807 AND 507810;
DELETE FROM creature_linking WHERE guid BETWEEN 507807 AND 507810
OR master_guid BETWEEN 507807 AND 507810;
DELETE FROM creature WHERE guid BETWEEN 507807 AND 507810;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(507807,27421,571,1,1,0,0,4076.63,-3589.41,249.165,3.80122,300,300,5,0,9940,0,0,1),
(507808,27421,571,1,1,0,0,4158.6,-3583.23,253.995,0.408293,300,300,5,0,9940,0,0,1),
(507809,27421,571,1,1,0,0,4205.6,-3627.04,254.169,5.72544,300,300,5,0,9940,0,0,1),
(507810,27421,571,1,1,0,0,4256.89,-3635.63,250.618,4.52378,300,300,5,0,9940,0,0,1);
-- update
UPDATE creature SET position_x = 4288.615723, position_y = -3666.282227, position_z = 258.158112 WHERE guid = 518235;
UPDATE creature SET position_x = 4440.875488, position_y = -3819.111328, position_z = 209.504272 WHERE guid = 518270;
UPDATE creature SET spawndist = 10 WHERE id = 27421 AND MovementType = 1;
