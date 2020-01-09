-- Align wotlk-db q.1713 The Summoning with classic-db / tbc-db
-- Resolves https://github.com/cmangos/issues/issues/2068

-- dbscript_string alignment for another day
-- DELETE FROM `dbscript_string` WHERE `entry` IN ();
-- 2000000029 Follow, $N. I will soon begin the summoning... 2000005522
-- 2000000043 %s begins a spell of summoning... 2000005521

-- SpellEffects.cpp - case 8606:
DELETE FROM `dbscripts_on_event` WHERE `id` IN (1370);

DELETE FROM `dbscripts_on_quest_start` WHERE `id` IN (1713);
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1713, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bath\'rah the Windwatcher - Resume Waypoints'),
(1713, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bath\'rah the Windwatcher - Set Run On'),
(1713, 1, 0, 0, 0, 0, 0, 0, 0, 2000000029, 0, 0, 0, 0, 0, 0, 0, 'Bath\'rah the Windwatcher - Follow, $N. I will soon begin the summoning...'),
(1713, 1, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bath\'rah the Windwatcher - Remove NPCFlags');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (617601,617602,617608);
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(617601, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bath\'rah the Windwatcher - Pause Waypoints'),
(617601, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.39626, 'Bath\'rah the Windwatcher - Set orientation'),
(617601, 1, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bath\'rah the Windwatcher - Add NPCFlags'),
(617602, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.85259, 'Bath\'rah the Windwatcher - Set orientation'),
(617602, 2, 0, 0, 0, 0, 0, 0, 0, 2000000043, 0, 0, 0, 0, 0, 0, 0, 'Bath\'rah the Windwatcher - %s begins a spell of summoning...'),
(617602, 2, 15, 8606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bath\'rah the Windwatcher - Cast Summon Cyclonian'),
(617602, 10, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bath\'rah the Windwatcher - Set Run On');

DELETE FROM `creature_movement_template` WHERE `entry` IN (6176);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(6176, 0, 1, 250.84, -1470.58, 55.4491, 100, 1000, 617601, NULL),
(6176, 0, 2, 253.05, -1459.09, 52.09, 100, 2000, 0, NULL),
(6176, 0, 3, 256.87, -1440.35, 50.09, 100, 0, 0, NULL),
(6176, 0, 4, 273.74, -1433.18, 50.29, 100, 0, 0, NULL),
(6176, 0, 5, 297.77, -1436.7, 46.96, 100, 0, 0, NULL),
(6176, 0, 6, 329.59, -1442.08, 40.31, 100, 0, 0, NULL),
(6176, 0, 7, 332.73, -1455.6, 42.24, 100, 2000, 6, NULL),
(6176, 0, 8, 323.83, -1468.92, 42.24, 100, 14000, 617602, NULL),
(6176, 0, 9, 332.73, -1455.6, 42.24, 100, 0, 0, NULL),
(6176, 0, 10, 329.59, -1442.08, 40.31, 100, 0, 0, NULL),
(6176, 0, 11, 297.77, -1436.7, 46.96, 100, 0, 0, NULL),
(6176, 0, 12, 273.74, -1433.18, 50.29, 100, 0, 0, NULL),
(6176, 0, 13, 256.87, -1440.35, 50.09, 100, 0, 0, NULL),
(6176, 0, 14, 253.05, -1459.09, 52.09, 100, 0, 6, NULL);

-- Correct/New Coordinates for Cyclonian? https://youtu.be/yZ75kCyU--4?t=240

