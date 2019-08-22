-- Resolve DBScript Diff for swp
DELETE FROM `dbscript_string` WHERE `entry` IN (
2000005676, -- 2000020120 "May the light bless you."
2000005677, -- 2000020121 "Your wounds are severe, but you will live."
2000005678 --  2000020122 "Rest now, you have fought well today."
);

-- Add generic dbscripts
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1273,1375,1396);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1273, 0, 1, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - EMOTE_ONESHOT_YES'),
(1375, 0, 1, 375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - EMOTE_STATE_READY2H'),
(1396, 0, 1, 396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - EMOTE_ONESHOT_TALK_NO_SHEATHE');

