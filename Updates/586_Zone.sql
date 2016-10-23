-- Newman's Landing

-- High Admiral "Shelly" Jorrik
UPDATE creature_template SET FactionAlliance = 120, FactionHorde = 120 WHERE entry = 26081;
-- link
DELETE FROM creature_linking WHERE guid IN (84601, 84602);
INSERT INTO creature_linking VALUES
(84601, 84599, 3),
(84602, 84599, 3);

-- missing sign added
DELETE FROM gameobject WHERE guid = 89080;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES 
( 89080, 38927, 0, 1,1,-6383.69, 1252.43, 8.26695, 4.57277, 0, 0, 0.754707, -0.656062, 300, 255, 1);