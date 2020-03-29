-- Cleanup
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`); -- 86241,86249,86258,86264,86265,86327,86358,86376,86387,86426,86716,86895,86898,90490,91117,91118,91750,91751,94513,94518,94553,94555,94556,94557,94575,94579,94580,94582,94603,94604,94605,94653,94655,94656,94696,94697,94701,94704,94711,94723,94724,94726,94734,94735,94739,94760,94761,94762,94765,94786,94796,94805,94808,94831,94839,94840,94882,94887,94888,94892,94899,94901,94950,94956,101386
DELETE FROM `game_event_creature_data` WHERE `guid` IN (56951);

-- Add missing Enraged Air Spirit 21060 Spawns and Netherskate 21901 Pooling
-- Enraged Air Spirit 21060 need static modelid due to empty modelid used for quest script but still present in SMSG_CREATURE_QUERY_RESPONSE
DELETE FROM `creature` WHERE `guid` BETWEEN 5309029 AND 5309038;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(5309029, 21060, 530, 1, 14515, 0, -4381.74, 353.922, 46.5179, 3.39443, 300, 300, 10, 0, 0, 0, 0, 1), -- 140496
(5309030, 21901, 530, 1, 0, 0, -4402.428, 333.0002, 68.8868, 0.5714838, 300, 300, 5, 0, 0, 0, 0, 1),
(5309031, 21060, 530, 1, 14515, 0, -4402.428, 333.0002, 68.8868, 0.5714838, 300, 300, 5, 0, 0, 0, 0, 1),
(5309032, 21060, 530, 1, 14515, 0, -4392.56, 285.814, 56.2566, 2.94234, 300, 300, 5, 0, 0, 0, 0, 1), -- 140499
(5309033, 21060, 530, 1, 14515, 0, -4425.07, 458.863, 117.462, 2.46324, 300, 300, 5, 0, 0, 0, 0, 1), -- 140498
(5309034, 21060, 530, 1, 14515, 0, -4464.07, 498.597, 118.197, 2.33244, 300, 300, 0, 0, 0, 0, 0, 2), -- 76630
(5309035, 21060, 530, 1, 14515, 0, -3917.088, 925.9523, 19.51486, 2.732123, 300, 300, 5, 0, 0, 0, 0, 1), -- single spawns missing
(5309036, 21060, 530, 1, 14515, 0, -4016.5, 679.1657, 12.45663, 3.014331, 300, 300, 5, 0, 0, 0, 0, 1),
(5309037, 21060, 530, 1, 14515, 0, -4239.033, 607.6746, 37.11983, 0.3365826, 300, 300, 5, 0, 0, 0, 0, 1),
(5309038, 21060, 530, 1, 14515, 0, -4283.492, 588.882, 54.76748, 2.844528, 300, 300, 0, 0, 0, 0, 0, 2);

DELETE FROM `pool_template` WHERE `entry` IN (16000, 16001, 16002, 16003,16004);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(16000, 1, 'Shadowmoon Valley - Netherskate (21901) / Enraged Air Spirit (21060) - #1'),
(16001, 1, 'Shadowmoon Valley - Netherskate (21901) / Enraged Air Spirit (21060) - #2'),
(16002, 1, 'Shadowmoon Valley - Netherskate (21901) / Enraged Air Spirit (21060) - #3'),
(16003, 1, 'Shadowmoon Valley - Netherskate (21901) / Enraged Air Spirit (21060) - #4'),
(16004, 1, 'Shadowmoon Valley - Netherskate (21901) / Enraged Air Spirit (21060) - #5');

DELETE FROM `pool_creature` WHERE `pool_entry` IN (16000, 16001, 16002, 16003, 16004);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(140496, 16000, 0, 'Shadowmoon Valley - Netherskate (21901) - #1'),
(5309029, 16000, 0, 'Shadowmoon Valley - Enraged Air Spirit (21060) - #1'),
(5309030, 16001, 0, 'Shadowmoon Valley - Netherskate (21901) - #2'),
(5309031, 16001, 0, 'Shadowmoon Valley - Enraged Air Spirit (21060) - #2'),
(140499, 16002, 0, 'Shadowmoon Valley - Netherskate (21901) - #3'),
(5309032, 16002, 0, 'Shadowmoon Valley - Enraged Air Spirit (21060) - #3'),
(140498, 16003, 0, 'Shadowmoon Valley - Netherskate (21901) - #4'),
(5309033, 16003, 0, 'Shadowmoon Valley - Enraged Air Spirit (21060) - #4'),
(76630, 16004, 0, 'Shadowmoon Valley - Netherskate (21901) - #5'),
(5309034, 16004, 0, 'Shadowmoon Valley - Enraged Air Spirit (21060) - #5');

DELETE FROM `creature_movement` WHERE `id` IN (5309034, 5309038);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(5309034, 1, -4463.36, 499.389, 118.25, 5.42337, 0, 0, NULL),
(5309034, 2, -4448.98, 481.272, 116.504, 5.42337, 0, 0, NULL),
(5309034, 3, -4432.95, 468.929, 117.529, 5.42337, 0, 0, NULL),
(5309034, 4, -4429, 448.862, 114.548, 4.76678, 0, 0, NULL),
(5309034, 5, -4425.46, 428.537, 110.398, 4.76678, 0, 0, NULL),
(5309034, 6, -4429.48, 449.238, 114.53, 1.83724, 0, 0, NULL),
(5309034, 7, -4433.84, 469.86, 117.5, 2.42472, 0, 0, NULL),
(5309034, 8, -4449.55, 481.839, 116.516, 2.32105, 0, 0, NULL),
(5309034, 9, -4463.2, 500.059, 118.428, 2.0603, 0, 0, NULL),
(5309034, 10, -4483.34, 520.781, 121.236, 2.42786, 0, 0, NULL),
(5309034, 11, -4497.46, 536.618, 121.573, 1.52465, 0, 0, NULL),
(5309034, 12, -4490.1, 546.15, 124.36, 1.15709, 0, 0, NULL),
(5309034, 13, -4483.47, 563.282, 128.209, 1.15709, 0, 0, NULL),
(5309034, 14, -4489.71, 545.77, 124.343, 4.03557, 0, 0, NULL),
(5309034, 15, -4497.36, 536.438, 121.556, 5.51762, 0, 0, NULL),
(5309034, 16, -4482.16, 520.113, 121.227, 5.51762, 0, 0, NULL),

(5309038, 1, -4283.492, 588.882, 54.76748, 2.844528, 0, 0, NULL),
(5309038, 2, -4279.04, 593.9119, 52.23018, 1.791402, 0, 0, NULL),
(5309038, 3, -4273.383, 592.5164, 49.35518, 1.602748, 0, 0, NULL),
(5309038, 4, -4273.144, 583.7015, 49.48018, 4.660584, 0, 0, NULL),
(5309038, 5, -4274.764, 579.1683, 49.62386, 4.683101, 0, 0, NULL),
(5309038, 6, -4281.688, 577.8565, 53.98061, 2.258037, 0, 0, NULL),
(5309038, 7, -4283.149, 583.8639, 55.07709, 2.320298, 0, 0, NULL);

