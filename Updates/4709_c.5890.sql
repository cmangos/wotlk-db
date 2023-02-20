-- Redrock Earth Spirit 5890

-- missing added - guids free in all 3 DBs
DELETE FROM creature_addon WHERE guid IN (11499,11501,11502);
DELETE FROM creature_movement WHERE id IN (11499,11501,11502);
DELETE FROM game_event_creature WHERE guid IN (11499,11501,11502);
DELETE FROM game_event_creature_data WHERE guid IN (11499,11501,11502);
DELETE FROM creature_battleground WHERE guid IN (11499,11501,11502);
DELETE FROM creature_linking WHERE guid IN (11499,11501,11502)
 OR master_guid IN (11499,11501,11502);
DELETE FROM creature WHERE guid IN (11499,11501,11502);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(11499,5890,1,1,1,0,0,-859.742,-4292.95,76.9717,3.34654,120,120,15,0,0,0,0,1),
(11501,5890,1,1,1,0,0,-897.03937,-4289.772,74.21037,0,120,120,0,0,0,0,0,2), -- wps
(11502,5890,1,1,1,0,0,-903.60333,-4300.8774,77.24223,0,120,120,0,0,0,0,0,2); -- wps
UPDATE creature SET position_x = -871.287842, position_y = -4280.361816, position_z = 74.398758, spawndist = 7, MovementType = 1 WHERE guid = 3424;
-- waypoints
DELETE FROM creature_movement WHERE id IN (11501,11502);
INSERT INTO creature_movement (`id`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
-- 11501
(11501,1,-897.03937,-4289.772,74.21037,100,0,0),
(11501,2,-895.6474,-4301.155,75.4923,100,0,0),
(11501,3,-884.9755,-4310.0654,73.586296,100,0,0),
(11501,4,-873.24493,-4304.9277,73.67687,100,0,0),
(11501,5,-871.0301,-4294.7363,74.50212,100,0,0),
(11501,6,-876.71045,-4286.3955,72.550705,100,0,0),
(11501,7,-887.3818,-4282.6597,71.1635,100,0,0),
-- 11502
(11502,1,-903.60333,-4300.8774,77.24223,100,0,0),
(11502,2,-919.8714,-4302.1436,77.49931,100,0,0),
(11502,3,-929.0897,-4307.223,77.60771,100,0,0),
(11502,4,-930.82837,-4299.743,77.13126,100,0,0),
(11502,5,-917.3902,-4293.431,77.312416,100,0,0),
(11502,6,-902.50354,-4294.108,76.15421,100,0,0),
(11502,7,-894.4129,-4290.9673,72.75139,100,0,0),
(11502,8,-887.9431,-4285.1304,70.923996,100,0,0),
(11502,9,-861.79114,-4279.5586,78.71635,100,0,0),
(11502,10,-845.80396,-4263.4385,86.780685,100,0,0),
(11502,11,-846.78406,-4272.652,86.43095,100,0,0),
(11502,12,-853.77905,-4281.3296,82.43339,100,0,0),
(11502,13,-861.28595,-4291.5254,76.5723,100,0,0),
(11502,14,-861.2366,-4307.8457,76.09582,100,0,0),
(11502,15,-883.47296,-4308.9365,73.586296,100,0,0);
