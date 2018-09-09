-- Emissary of Hate 25003
UPDATE creature_template SET MovementType = 2 WHERE entry = 25003;
DELETE FROM `creature_movement_template` WHERE `entry` = 25003;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(25003, 1, 12612.62, -6916.943, 4.725943, 100, 0, 0),
(25003, 2, 12639.27, -6917.027, 4.725943, 100, 8000, 0),
(25003, 3, 12612.62, -6916.943, 4.725943, 100, 0, 0),
(25003, 4, 12589.8, -6916, 4.726335, 6.260564, 10000, 0);

-- Flame Wave II 22228
UPDATE `creature_template` SET `MinLevel` = 68, `MaxLevel` = 69, MinLevelHealth` = 3834, `MaxLevelHealth` = 3942, `UnitFlags` = 33554432, `SpeedRun` = (16 / 7), `SpeedWalk` = (2.5 / 2.5) WHERE `entry` = 22228;
