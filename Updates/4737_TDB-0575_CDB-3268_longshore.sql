-- 17108 block the guids, move them to tdb range
-- guids: 15576,15577,15702,15703,15705
DELETE FROM `creature` WHERE `id` = 17108;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(191368, 17108, 0, 1, 0, -352.33, -718.192, 62.5891, 3.7001, 300, 300, 0, 0),
(191367, 17108, 0, 1, 0, -358.834, -725.124, 57.7258, 5.48576, 300, 300, 0, 2),
(191369, 17108, 0, 1, 0, -325.077, -699.664, 57.7713, 0.820305, 300, 300, 0, 0),
(191370, 17108, 0, 1, 0, -338.303, -711.022, 57.7319, 5.59193, 300, 300, 0, 0),
(191371, 17108, 0, 1, 0, -344.927, -692.467, 57.8126, 1.65806, 300, 300, 0, 0);

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 17108);
INSERT INTO `creature_addon` (`guid`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(191371, 0, 0, 1, 173, 0, NULL),
(191370, 0, 0, 1, 0, 0, NULL),
(191369, 0, 0, 1, 173, 0, NULL),
(191368, 0, 0, 1, 173, 0, NULL),
(191367, 0, 0, 1, 0, 0, NULL);

DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` = 17108);
INSERT INTO `creature_movement` (`Id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(191367, 10, -359.883, -724.049, 57.7183, 100, 0, 0, NULL),
(191367, 9, -362.481, -716.362, 57.6297, 100, 0, 0, NULL),
(191367, 8, -351.548, -697.48, 57.643, 100, 0, 0, NULL),
(191367, 7, -345.356, -695.147, 57.7716, 100, 0, 0, NULL),
(191367, 6, -331.109, -698.344, 57.2849, 100, 0, 0, NULL),
(191367, 5, -323.048, -707.553, 57.6992, 100, 0, 0, NULL),
(191367, 4, -325.698, -725.506, 57.6861, 100, 0, 0, NULL),
(191367, 3, -333.018, -731.967, 57.6508, 100, 0, 0, NULL),
(191367, 2, -342.941, -734.252, 57.7326, 100, 0, 0, NULL),
(191367, 1, -354.634, -729.427, 57.6428, 100, 0, 0, NULL);

-- 1263 misused for other pooling
DELETE FROM `pool_creature_template` WHERE `pool_entry` IN (1266,1263);
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (730, 1266, 0, 'Tethis (730)');
DELETE FROM `pool_template` WHERE `entry` IN (1266,1263);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (1266, 1, 'Tethis (730)');

-- original 3467 spawn
UPDATE `creature` SET `position_x` = '-1571.4483642578125', `position_y` = '-3883.865478515625', `position_z` = '16.21256446838378906', `orientation` = '0.593411922454833984', `spawndist` = '2', `MovementType` = '1' WHERE (`guid` = '15066');

INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(15577, 3467, 1, 1, 0, -1707.47, -3817.54, 13.3079, 5.20385, 275, 275, 2, 1),
(15702, 3467, 1, 1, 0, -1748.19, -3721.45, 14.2703, 1.21897, 275, 275, 2, 1);

INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES
('3467', '1263', '0', 'Baron Longshore (3467)');

INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
('1263', '1', 'Baron Longshore (3467)');

