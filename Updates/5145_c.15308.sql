-- Twilight Prophet 15308

-- northern group
-- The northern prophet has a respawn timer that varies between 25 and 30 minutes.
UPDATE creature SET id = 15308, spawntimesecsmin = 1500, spawntimesecsmax = 1800 WHERE guid = 44305; -- no idea whay someone removed her id?
DELETE FROM creature_spawn_entry WHERE guid = 44305;
-- With TBC release group was reduced to 2 guards - TBC and WOTLK
DELETE FROM spawn_group_spawn WHERE guid IN (44308,44309);
-- Remove them from DB. 
DELETE FROM creature_addon WHERE guid IN (44308,44309);
DELETE FROM creature_movement WHERE id IN (44308,44309);
DELETE FROM game_event_creature WHERE guid IN (44308,44309);
DELETE FROM game_event_creature_data WHERE guid IN (44308,44309);
DELETE FROM creature_battleground WHERE guid IN (44308,44309);
DELETE FROM creature_linking WHERE guid IN (44308,44309);
DELETE FROM creature WHERE guid IN (44308,44309);

-- southern group
-- The southern prophet has a respawn timer that varies between 45 and 60 minutes.
UPDATE creature SET id = 15308, spawntimesecsmin = 2700, spawntimesecsmax = 3600, spawndist = 0, MovementType = 0 WHERE guid = 43322;
DELETE FROM creature_linking WHERE guid IN (42969,42965);
UPDATE creature SET position_x = -7549.471, position_y = 1734.0094, position_z = 11.4109 WHERE guid IN (43322,42969,42965);
DELETE FROM creature_movement WHERE id IN (43322);
-- move them to spawn_group
DELETE FROM `spawn_group` WHERE id = 19923;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19923, 'Silithus - Twilight Prophet | Twilight Avenger (2) Patrol 2', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19923;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19923, 43322, 0),
(19923, 42969, 1),
(19923, 42965, 2);
DELETE FROM `spawn_group_formation` WHERE id = 19923;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19923, 4, 4, 0, 19923, 4, 'Silithus - Twilight Prophet | Twilight Avenger (2) Patrol 2'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 19923;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19923,'Silithus - Twilight Prophet | Twilight Avenger (2) Patrol 2');
DELETE FROM `waypoint_path` WHERE PathId = 19923;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19923,1,-7549.471,1734.0094,11.4109,100,0,0),
(19923,2,-7556.26,1716.11,9.25794,100,0,0),
(19923,3,-7569.13,1700.23,5.26954,100,0,0),
(19923,4,-7573.76,1690.55,5.40412,100,0,0),
(19923,5,-7587.85,1663.39,4.58791,100,0,0),
(19923,6,-7604.52,1641.43,2.11644,100,0,0),
(19923,7,-7617.34,1597.31,4.82266,100,0,0),
(19923,8,-7642.94,1584.59,5.54352,100,0,0),
(19923,9,-7642.94,1584.59,5.54352,100,0,0),
(19923,10,-7681.44,1586.52,1.4506,100,0,0),
(19923,11,-7706.44,1616.31,5.15801,100,0,0),
(19923,12,-7718.95,1641.69,8.05339,100,0,0),
(19923,13,-7746.64,1658.38,6.22475,100,0,0),
(19923,14,-7759.46,1688.8,1.56703,100,0,0),
(19923,15,-7779.92,1727.28,2.39467,100,0,0),
(19923,16,-7794.41,1772.41,-0.182124,100,0,0),
(19923,17,-7828.77,1804.55,2.45615,100,0,0),
(19923,18,-7863.18,1824.98,3.85917,100,0,0),
(19923,19,-7895.75,1843.03,3.25615,100,2000,0);
