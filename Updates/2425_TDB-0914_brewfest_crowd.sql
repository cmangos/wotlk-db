DELETE FROM `creature` WHERE `id` IN (23488) AND `guid` IN (88901, 88902, 88903, 88904, 88905, 88906);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(88901, 23488, 1, 1, 0, 0, 1210.87, -4289.486, 21.63643, 0.5585054, 120, 120, 0, 0, 0, 0, 0), -- 23488 (Area: 1296 - Difficulty: 0)
(88902, 23488, 1, 1, 0, 0, 1206.117, -4251.711, 24.29962, 3.979351, 120, 120, 0, 0, 0, 0, 0), -- 23488 (Area: 1296 - Difficulty: 0)
(88903, 23488, 1, 1, 0, 0, 1245.652, -4280.512, 25.05864, 2.234021, 120, 120, 0, 0, 0, 0, 0), -- 23488 (Area: 1296 - Difficulty: 0)
(88904, 23488, 0, 1, 0, 0, -5175.604, -597.0005, 397.7565, 0.5585054, 120, 120, 0, 0, 0, 0, 0), -- 23488 (Area: 0 - Difficulty: 0)
(88905, 23488, 0, 1, 0, 0, -5122.557, -633.5287, 399.5836, 3.979351, 120, 120, 0, 0, 0, 0, 0), -- 23488 (Area: 0 - Difficulty: 0)
(88906, 23488, 0, 1, 0, 0, -5105.744, -624.4401, 412.1684, 2.234021, 120, 120, 0, 0, 0, 0, 0); -- 23488 (Area: 0 - Difficulty: 0)

DELETE FROM `game_event_creature` WHERE `guid` IN (88901, 88902, 88903, 88904, 88905, 88906) AND `event`=26;
INSERT INTO `game_event_creature` (`event`,`guid`) VALUES
(26,88901),(26,88902),(26,88903),(26,88904),(26,88905),(26,88906);
