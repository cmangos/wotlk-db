-- creature delete
DELETE FROM `creature` WHERE `guid` IN (73987,73988) AND `id` = 21060; -- Positioned in Dragonmaw Fortress below Ground
DELETE FROM `creature` WHERE `guid` = 769 AND `id` = 6366; -- Kurzen Mindslave summoned by Mogh the Undying 1060
DELETE FROM `creature_addon` WHERE `guid` = 769; -- also remove creature_addon
DELETE FROM `creature` WHERE `guid` = 85563 AND `id` = 21312; -- not found in sniff

-- creature move
UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `id` = 705 AND `guid` = 1012;
DELETE FROM `creature_movement` WHERE `id` = 1012;

-- Aborius <Fury of Water> 18101
UPDATE `creature` SET `spawndist` = 2, `MovementType` = 1 WHERE `guid` = 64054 AND `id` = 18101;

-- The Crone 18168 - should not move on Spawn
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 18168;

-- Marshfang Ripper 18130
UPDATE `creature` SET `position_x` = 280.27, `position_y` = 5138.97, `position_z` = 23.17 WHERE `guid` = 64591 AND `id` = 18130;
UPDATE `creature` SET `position_x` = 355.37, `position_y` = 5130.52, `position_z` = 20.89 WHERE `guid` = 64593 AND `id` = 18130;
UPDATE `creature` SET `position_x` = 387.92, `position_y` = 5103.89, `position_z` = 22.70 WHERE `guid` = 64594 AND `id` = 18130;
UPDATE `creature` SET `position_x` = 875.22, `position_y` = 5822.14, `position_z` = 31.36 WHERE `guid` = 64603 AND `id` = 18130;

-- Marshfang Slicer 18131
UPDATE `creature` SET `position_x` = 21.76, `position_y` = 7924.19, `position_z` = 21.98 WHERE `guid` = 64643 AND `id` = 18131;

-- Count Ungula 18285
UPDATE `creature` SET `spawndist` = 10, `MovementType` = 1 WHERE `guid` = 65575 AND `id` = 18285;

-- go move
UPDATE `gameobject` SET `position_z` = -4.20 WHERE `guid` = 23109;
