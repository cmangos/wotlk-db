-- Respawn Shadow Sight
DELETE FROM `gameobject` WHERE `id` IN (184663,184664);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(90107, 184663, 559, 1, 4008.8, 2895.022, 13.05303, 2.460913, 0, 0, 0.9426413, 0.3338076, 150, 150, 100, 1),
(90108, 184664, 559, 1, 4103.73, 2946.175, 13.05133, -2.967041, 0, 0, -0.9961939, 0.08716504, 150, 150, 100, 1),
(90113, 184663, 562, 1, 6249.04, 275.324, 11.2203, -1.44862, 0, 0, -0.662619, 0.748957, 150, 150, 100, 1),
(90114, 184664, 562, 1, 6228.26, 249.566, 11.21812, -0.06981169, 0, 0, -0.03489876, 0.9993908, 150, 150, 100, 1),
(90117, 184663, 572, 1, 1328.624, 1632.804, 36.28329, 0.5759573, 0, 0, 0.2840147, 0.9588199, 150, 150, 100, 1),
(90118, 184664, 572, 1, 1243.874, 1699.29, 34.8613, 0.122173, 0, 0, 0.06104851, 0.9981348, 150, 150, 100, 1);

-- Shadow Sight 184663
UPDATE `gameobject_template` SET `faction` = 114, `data2` = 5 WHERE `entry` = 184663;
-- Shadow Sight 184664
UPDATE `gameobject_template` SET `faction` = 114, `data2` = 5 WHERE `entry` = 184664;
