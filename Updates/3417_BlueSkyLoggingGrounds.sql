-- Blue Sky Logging Grounds - Grizzly Hills

-- Duplicates
DELETE FROM creature WHERE guid IN (518444,518502,518497,518448,518437,518504,518445,518451,518514);
DELETE FROM creature_addon WHERE guid IN (518444,518502,518497,518448,518437,518504,518445,518451,518514);
DELETE FROM creature_movement WHERE id IN (518444,518502,518497,518448,518437,518504,518445,518451,518514);
DELETE FROM game_event_creature WHERE guid IN (518444,518502,518497,518448,518437,518504,518445,518451,518514);
DELETE FROM game_event_creature_data WHERE guid IN (518444,518502,518497,518448,518437,518504,518445,518451,518514);
DELETE FROM creature_battleground WHERE guid IN (518444,518502,518497,518448,518437,518504,518445,518451,518514);
DELETE FROM creature_linking WHERE guid IN (518444,518502,518497,518448,518437,518504,518445,518451,518514)
 OR master_guid IN (518444,518502,518497,518448,518437,518504,518445,518451,518514);
DELETE FROM creature WHERE guid IN (518444,518502,518497,518448,518437,518504,518445,518451,518514);

-- Updates
UPDATE creature SET position_x = 4375.486816, position_y = -3096.807129, position_z = 326.456390, MovementType = 1, spawndist = 2 WHERE guid = 518443;
UPDATE creature SET position_x = 4363.590820, position_y = -3091.112061, position_z = 326.456390, MovementType = 1, spawndist = 2 WHERE guid = 518505;
UPDATE creature SET position_x = 4375.979492, position_y = -3095.348145, position_z = 339.850372, MovementType = 1, spawndist = 2 WHERE guid = 518438;
UPDATE creature SET position_x = 4378.649414, position_y = -3087.105957, position_z = 339.850555, MovementType = 1, spawndist = 2 WHERE guid = 518495;
UPDATE creature SET position_x = 4397.383301, position_y = -3040.395264, position_z = 328.632599, MovementType = 1, spawndist = 2 WHERE guid = 518453;
UPDATE creature SET position_x = 4389.934082, position_y = -3045.677734, position_z = 328.632599, MovementType = 1, spawndist = 2 WHERE guid = 518491;
UPDATE creature SET position_x = 4416.763184, position_y = -3052.588379, position_z = 328.632568, MovementType = 1, spawndist = 2 WHERE guid = 518426;
UPDATE creature SET position_x = 4414.602539, position_y = -3063.092529, position_z = 328.632568, MovementType = 1, spawndist = 2 WHERE guid = 518493;
