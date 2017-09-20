-- q.11244 'Rescuing the Rescuers'

-- Impaled Valgarde Scout
UPDATE creature SET spawntimesecs = 180 WHERE id = 24077;
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid BETWEEN 105683 AND 105688;
DELETE FROM creature_addon WHERE guid BETWEEN 105683 AND 105688;
DELETE FROM creature_movement WHERE id BETWEEN 105683 AND 105688;
DELETE FROM game_event_creature WHERE guid BETWEEN 105683 AND 105688;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 105683 AND 105688;
DELETE FROM creature_battleground WHERE guid BETWEEN 105683 AND 105688;
DELETE FROM creature_linking WHERE guid BETWEEN 105683 AND 105688 OR master_guid BETWEEN 105683 AND 105688;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(105683,24077,571,1,1,0,0,842.7,-4895.42,6.22827,3.647738,180,0,0,7984,0,0,0),
(105684,24077,571,1,1,0,0,851.599,-4864.68,1.59204,0.1745329,180,0,0,6986,0,0,0),
(105685,24077,571,1,1,0,0,864.151,-4841.3,5.2843,5.096361,180,0,0,8982,0,0,0),
(105686,24077,571,1,1,0,0,852.126,-4828.14,6.05917,2.234021,180,0,0,6986,0,0,0),
(105687,24077,571,1,1,0,0,826.387,-4844.54,3.74888,0.4014257,180,0,0,7984,0,0,0),
(105688,24077,571,1,1,0,0,862.393,-4804.23,5.07262,1.745329,180,0,0,8982,0,0,0);
-- Updates
UPDATE creature SET position_x = 835.8493, position_y = -4953.165, position_z = 4.226573, orientation = 2.6529 WHERE guid = 97638;
UPDATE creature SET position_x = 818.5562, position_y = -4962.686, position_z = 1.761329, orientation = 0.1396263 WHERE guid = 97642;
UPDATE creature SET position_x = 864.3038, position_y = -4930.572, position_z = 5.039468, orientation = 3.490659 WHERE guid = 97644;
UPDATE creature SET position_x = 815.715, position_y = -4930.802, position_z = 2.157435, orientation = 4.485496 WHERE guid = 97645;

-- Ceremonial Dragonflayer Harpoon
UPDATE gameobject SET spawntimesecs = 185 WHERE id = 186565;
-- missing added - WoTLKDB free guids reused
DELETE FROM gameobject WHERE guid IN (21114,21115,21116,21156,22022,22023);
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
(21114, 186565, 571, 1,1,851.594, -4864.62, 1.59704, 6.0912, 0, 0, -0.09584522, 0.9953963, 185, 100, 1),
(21115, 186565, 571, 1,1,842.715, -4895.31, 6.08477, 3.38594, 0, 0, -0.9925461, 0.12187, 185, 100, 1),
(21116, 186565, 571, 1,1,864.201, -4841.3, 5.28486, 3.700105, 0, 0, -0.9612608, 0.2756405, 185, 100, 1),
(21156, 186565, 571, 1,1,852.043, -4827.96, 6.06121, 1.780234, 0, 0, 0.7771454, 0.6293211, 185, 100, 1),
(22022, 186565, 571, 1,1,826.747, -4844.5, 3.76042, 3.979355, 0, 0, -0.9135447, 0.4067384, 185, 100, 1),
(22023, 186565, 571, 1,1,862.548, -4803.7, 5.16579, 1.343901, 0, 0, 0.6225138, 0.7826088, 185, 100, 1);
