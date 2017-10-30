-- Insert Large Solid Chest Pools Dungeons
-- Solid Chest (74448, 75298)
-- Add pool templates for each zone
DELETE FROM `pool_template` WHERE `entry` IN (25883, 25884, 25885);

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (25883, 2, 'Gnomeregan - Large Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (25884, 1, 'Razorfen Kraul - Large Solid Chest Pool');
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (25885, 1, 'Stormwind Stockades - Large Solid Chest Pool');

-- Add all gameobjects to correct pool
DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (25883, 25884, 25885);

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (32399, 25883, 0, 'Gnomeregan - Large Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (32422, 25883, 0, 'Gnomeregan - Large Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (32440, 25883, 0, 'Gnomeregan - Large Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (92229, 25883, 0, 'Gnomeregan - Large Solid Chest Pool');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (87611, 25884, 0, 'Razorfen Kraul - Large Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (87612, 25884, 0, 'Razorfen Kraul - Large Solid Chest Pool');

INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (26178, 25885, 0, 'Stormwind Stockades - Large Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (26179, 25885, 0, 'Stormwind Stockades - Large Solid Chest Pool');
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES (31964, 25885, 0, 'Stormwind Stockades - Large Solid Chest Pool');
