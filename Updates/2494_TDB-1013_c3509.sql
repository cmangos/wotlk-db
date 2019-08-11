-- Add missing Geoff 3509
-- wotlk spawn removed
DELETE FROM creature_addon WHERE guid=110069;
DELETE FROM creature_movement WHERE id=110069;
DELETE FROM game_event_creature WHERE guid=110069;
DELETE FROM game_event_creature_data WHERE guid=110069;
DELETE FROM creature_battleground WHERE guid=110069;
DELETE FROM creature_linking WHERE guid=110069 OR master_guid=110069;
DELETE FROM creature WHERE guid=110069;
-- use TDB guid - readded
DELETE FROM `creature` WHERE `guid` = 87023;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnmask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(87023, 3509, 0, 1, -8839.57, 666.54, 97.95, 0.48, 300, 300, 0, 0); -- TDB guid

-- Port Linking to creature_linking_template
DELETE FROM `creature_linking` WHERE `master_guid` = 84028;
DELETE FROM `creature_linking_template` WHERE `master_entry` = 3513;
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(3512, 0, 3513, 512, 0),
(3511, 0, 3513, 512, 0),
(3510, 0, 3513, 512, 0),
(3509, 0, 3513, 512, 0),
(3508, 0, 3513, 512, 0),
(3507, 0, 3513, 512, 0),
(3505, 0, 3513, 512, 0);
