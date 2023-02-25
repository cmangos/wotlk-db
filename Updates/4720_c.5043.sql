-- Defias Rioter 5043 - RP
-- event moved to spawn groups & corrected (not sure about aura `Uber Stealth` they have - couldn't find source of it)
DELETE FROM `game_event_creature` WHERE guid BETWEEN 138550 AND 138553;
DELETE FROM `creature_movement` WHERE id BETWEEN 138550 AND 138553;
UPDATE creature SET position_x = -8764.87, position_y = 847.11, position_z = 87.2577, spawndist = 0, MovementType = 0, spawntimesecsmin = 600, spawntimesecsmax = 600 WHERE guid IN (138550,138551,138552,138553); -- make sure they will spawn only once during 10min event
DELETE FROM `creature_spawn_data` WHERE guid BETWEEN 138550 AND 138553;
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(138550,9999),(138551,9999),(138552,9999),(138553,9999);
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (9999);
INSERT INTO `creature_spawn_data_template` (`entry`, `SpawnFlags`, `RelayId`) VALUES
(9999,1,30510);
DELETE FROM `spawn_group` WHERE id = 19981;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19981, 'Stormwind - Defias Rioter 5043 x4 - RP', 0, 0, 9109, 0x01 | 0x02 | 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 19981;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19981, 138550, 0),
(19981, 138551, 1),
(19981, 138552, 2),
(19981, 138553, 3);
DELETE FROM `spawn_group_formation` WHERE id = 19981;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19981, 4, 2, 0, 19981, 2, 'Stormwind - Defias Rioter 5043 x4 - RP');
DELETE FROM `waypoint_path_name` WHERE PathId = 19981;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19981,'Stormwind - Defias Rioter 5043 x4 - RP');
DELETE FROM `waypoint_path` WHERE PathId = 19981;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19981,1,-8764.87,847.11,87.2577,3.86765,1000,504301),
(19981,2,-8789.37,827.108,97.6443,100,1000,20);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 504301 AND 504305;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(504301,1,31,5043,50,0,0,0,0,0,0,0,0,0,0,0,0,'search for 5043'),
(504301,100,16,10836,0,0,4995,50,7,0,0,0,0,0,0,0,0,'buddy - Play Sound');
DELETE FROM dbscripts_on_creature_death WHERE id IN (5043);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5043,1,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(5043,2,31,5043,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 5043 - terminate if alive'),
(5043,100,16,10837,0,0,4995,50,7,0,0,0,0,0,0,0,0,'buddy - Play sound');
