-- Add Generic dbscripts_on_creature_movement 1028 used in map 531
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1028;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (1028, 0, 1, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - STATE_WORK_SHEATHED');

