-- q.12094 'Latent Power'

-- Ancient Stone Marker 188469
-- missing added
DELETE FROM gameobject WHERE guid = 504313;
DELETE FROM game_event_gameobject WHERE guid = 504313;
DELETE FROM gameobject_battleground WHERE guid = 504313;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(504313,188469,571,1,1,4125.061,-4850.643,73.31113,0.9075702,0,0,0.4383707,0.8987942,300,300,100,1);

-- Iron Rune Aura 188473
-- missing added
DELETE FROM gameobject WHERE guid = 504314;
DELETE FROM game_event_gameobject WHERE guid = 504314;
DELETE FROM gameobject_battleground WHERE guid = 504314;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(504314,188473,571,1,1,4126.814,-4851.402,72.11513,-0.95993,0,0,-0.4617481,0.8870111,300,300,100,1);

-- must be static
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id IN (26855,26856,26857);
