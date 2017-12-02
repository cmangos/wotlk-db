-- q.11256 'Sniff Out the Enemy'

-- Missing added - WoTLKDB FREE guids used
DELETE FROM gameobject WHERE guid = 15125;
DELETE FROM game_event_gameobject WHERE guid = 15125;
DELETE FROM gameobject_battleground WHERE guid = 15125;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(15125, 300166, 571, 1, 1, 1860.18, -6181.96, 24.4833, 5.32578, 0, 0, 0.512574, 0.858643, 300, 300, 0, 1);

-- Plaguehound Tracker
UPDATE creature_template SET ExtraFlags = ExtraFlags|4096, MovementType = 2 WHERE Entry = 24156; -- wont stop movement if player decide not fo follow him
DELETE FROM `creature_movement_template` WHERE `entry` = 24156;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`) VALUES
(24156, 1, 1859.74, -6178.15, 24.3033, 0, 5),
(24156, 2, 1866.06, -6172.81, 23.9216, 0, 0),
(24156, 3, 1876.43, -6167.42, 23.7332, 0, 0),
(24156, 4, 1903.37, -6167.9, 23.312, 0, 0),
(24156, 5, 1934.43, -6168.46, 23.7148, 0, 0),
(24156, 6, 1942.38, -6168.21, 23.7133, 0, 0),
(24156, 7, 1953.48, -6172.4, 24.2785, 0, 0),
(24156, 8, 1969.21, -6179.69, 23.8501, 0, 0),
(24156, 9, 1992.18, -6177.24, 21.3992, 0, 0),
(24156, 10, 2015.73, -6174.73, 15.3766, 0, 0),
(24156, 11, 2016.99, -6156.39, 12.5927, 0, 0),
(24156, 12, 2018.14, -6130.62, 6.31995, 0, 0),
(24156, 13, 2043.73, -6119.18, 5.17474, 0, 0),
(24156, 14, 2080.99, -6100.03, 7.72235, 0, 0),
(24156, 15, 2115.47, -6096.21, 5.36958, 0, 0),
(24156, 16, 2130.36, -6151.59, 1.24893, 0, 0),
(24156, 17, 2160.5, -6098.78, 3.14191, 0, 0),
(24156, 18, 2161.26, -6101.38, 2.81571, 0, 0),
(24156, 19, 2172.54, -6108.54, 2.26422, 0, 0),
(24156, 20, 2206.69, -6110.46, 0.787735, 0, 0),
(24156, 21, 2228.23, -6090.02, 1.17018, 0, 0),
(24156, 22, 2262.76, -6056.79, 1.82852, 0, 0),
(24156, 23, 2285.54, -6046.96, 1.6305, 0, 0),
(24156, 24, 2298.05, -6041.56, 2.01465, 0, 0),
(24156, 25, 2307.53, -6031.23, 2.93796, 0, 0),
(24156, 26, 2309.46, -6024.45, 3.65369, 5000, 1);
