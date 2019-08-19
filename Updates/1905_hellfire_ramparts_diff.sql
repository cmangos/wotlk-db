-- Used for working npcs in Hellfire Ramparts
DELETE FROM `creature_equip_template` WHERE `entry` IN (52512,52513);
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(52512, 2028, 11589, 0), -- 17259
(52513, 2028, 22215, 0); -- 17264

-- Delete dbscripts_on_creature_movement substituted by generic script
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (3195701,1725901,1725902,1726402,1173);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1173, 0, 1, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'GENERIC EMOTE - STATE_WORK');

-- Changed to tbc-range
DELETE FROM `dbscript_string` WHERE `entry` IN (2000000018,2000000033);

