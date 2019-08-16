-- Resolve remaining crossmap pooling issues
-- wotlk desync with classic/tbc on this guid causing cross map pooling issues
DELETE FROM `pool_gameobject` WHERE `guid` IN (55467,50673);
INSERT INTO `pool_gameobject` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(50673, 39907, 0, 'Loch Modan - Battered Chest (2849)'); -- 55467 in tbc/classic

DELETE FROM `pool_creature_template` WHERE `id` IN (6652,14344,22062);
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
(6652, 1213, 0, 'Master Feardred (6652)'),
(14344, 1212, 0, 'Mongress (14344)'),
(22062, 1198, 0, 'Dr. Whitherlimb (22062)');

DELETE FROM `pool_template` WHERE `entry` IN (1073,1198,1212,1213);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(1073, 1, 'Icehorn - 32361'), -- name was overwritten by Dr.
(1198, 1, 'Dr. Whitherlimb (22062)'),
(1212, 1, 'Mongress (14344)'),
(1213, 1, 'Master Feardred (6652)');

-- Sweet Home Alterac Mountain - pool 3155
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(74263, 1735, 0, 1, 1159.95, -677.549, 68.9691, 0.821705, 0, 0, 0, 0, 45, 90, 255, 1),
(74264, 1734, 0, 1, 1159.95, -677.549, 68.9691, 0.821705, 0, 0, 0, 0, 45, 90, 255, 1),
(74265, 1733, 0, 1, 1159.95, -677.549, 68.9691, 0.821705, 0, 0, 0, 0, 45, 90, 255, 1),

-- Sweet Home Duskwood - pool 4414
(73670, 1731, 0, 1, -11120.4, -599.825, 35.7858, 3.69488, 0, 0, 0, 0, 45, 90, 255, 1),
(73671, 1732, 0, 1, -11120.4, -599.825, 35.7858, 3.69488, 0, 0, 0, 0, 45, 90, 255, 1),
(73672, 1735, 0, 1, -11120.4, -599.825, 35.7858, 3.69488, 0, 0, 0, 0, 45, 90, 255, 1),
(73673, 1733, 0, 1, -11120.4, -599.825, 35.7858, 3.69488, 0, 0, 0, 0, 45, 90, 255, 1),
(73674, 1734, 0, 1, -11120.4, -599.825, 35.7858, 3.69488, 0, 0, 0, 0, 45, 90, 255, 1);

