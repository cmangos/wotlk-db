-- q.11796 'Emergency Protocol: Section 8.2, Paragraph D' - update
-- East Crash 25847 
-- removed - Player should not get credit there
DELETE FROM creature WHERE guid=511903;
DELETE FROM creature_addon WHERE guid=511903;
DELETE FROM creature_movement WHERE Id=511903;
DELETE FROM game_event_creature WHERE guid=511903;
DELETE FROM game_event_creature_data WHERE guid=511903;
DELETE FROM creature_battleground WHERE guid=511903;
DELETE FROM creature_linking WHERE guid=511903 OR master_guid=511903;
-- add 1 more target for spell 46171
DELETE FROM spell_script_target WHERE `entry`=46171 AND targetEntry = 25807;
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(46171, 1, 25807, 0);
-- Crashed Flying Machine 188019
-- missing objects added
DELETE FROM `gameobject` WHERE `guid` BETWEEN 520993 AND 520994;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(520993,188019,571,1,3517.06,5016.63,-1.01204,2.06398,0,0,0.858322,0.513112,300,300,255,1);
