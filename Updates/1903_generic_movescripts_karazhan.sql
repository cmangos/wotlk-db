-- Add Generic dbscripts_on_creature_movement used in map 532
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1001,1005,1006,1011,1025,1036,1043,1069);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1001, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - EMOTE_ONESHOT_TALK'),
(1005, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - ONESHOT_EXCLAMATION'),
(1006, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - EMOTE_ONESHOT_QUESTION'),
(1011, 0, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - EMOTE_ONESHOT_LAUGH'),
(1025, 0, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - ONESHOT_POINT'),
(1036, 0, 1, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - EMOTE_ONESHOT_ATTACK1H'),
(1043, 0, 1, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - ONESHOT_PARRYSHIELD'),
(1069, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - STATE_USESTANDING');

-- Delete Explicit dbscripts_on_creature_movement, which were subustited by Generic dbscripts_on_creature_movement
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1555101,1555102,1555103,1555104,1555105,1640701,1641001,1641401,1642401,1642402,1642501,1642502,1642602,1642603,1647201);

-- Moved to TBC Range
DELETE FROM `dbscript_string` WHERE `entry` IN (2000001063,2000001064,2000001065,2000001066,2000001067,2000001068,2000001069,2000001070,2000001071,2000001072,2000001073,2000001074,2000001075,2000001076);

