-- Sunreaver's Command - Crystalsong Forest
-- Sunreaver Hawkrider 30265
UPDATE creature_template_addon SET mount = 28889 WHERE entry = 30265; -- mount updated in 3.1
-- Group 1
UPDATE creature SET position_x = 5615.299, position_y = -711.0152, position_z = 206.286, spawndist = 0, MovementType = 0 WHERE guid IN (527653,527648);
DELETE FROM `spawn_group` WHERE id = 33503;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33503, 'Crystalsong Forest - Sunreaver Hawkrider 30265 x2 - Patrol - 1', 0, 0, 0, 0x01 | 0x02);
DELETE FROM `spawn_group_spawn` WHERE id = 33503;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33503, 527653, 0),
(33503, 527648, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33503;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33503, 3, 2, 0, 33503, 4, 'Crystalsong Forest - Sunreaver Hawkrider 30265 - Patrol - 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 33503;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33503,'Crystalsong Forest - Sunreaver Hawkrider 30265 x2 - Patrol - 1');
DELETE FROM `waypoint_path` WHERE PathId = 33503;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33503,1,5615.299,-711.0152,206.286,100,1000,0),
(33503,2,5608.708,-695.2381,206.6548,100,0,0),
(33503,3,5596.993,-682.9376,206.6474,100,0,0),
(33503,4,5595.053,-672.2057,206.6474,100,0,0),
(33503,5,5589.645,-664.4355,205.7191,100,1000,0);
-- Group 2
UPDATE creature SET position_x = 5586.633, position_y = -658.4381, position_z = 204.5941, spawndist = 0, MovementType = 0 WHERE guid IN (527651,527652);
DELETE FROM `spawn_group` WHERE id = 33504;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33504, 'Crystalsong Forest - Sunreaver Hawkrider 30265 x2 - Patrol - 2', 0, 0, 0, 0x01 | 0x02);
DELETE FROM `spawn_group_spawn` WHERE id = 33504;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33504, 527651, 0),
(33504, 527652, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33504;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33504, 3, 2, 0, 33504, 4, 'Crystalsong Forest - Sunreaver Hawkrider 30265 - Patrol - 2');
DELETE FROM `waypoint_path_name` WHERE PathId = 33504;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33504,'Crystalsong Forest - Sunreaver Hawkrider 30265 x2 - Patrol - 2');
DELETE FROM `waypoint_path` WHERE PathId = 33504;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33504,1,5586.633,-658.4381,204.5941,100,1000,0),
(33504,2,5584.156,-653.1344,203.3441,100,0,0),
(33504,3,5585.13,-643.4475,202.0941,100,0,0),
(33504,4,5591.086,-630.2233,200.4345,100,0,0),
(33504,5,5598.13,-621.1475,198.3095,100,1000,0);
-- Group 3
UPDATE creature SET position_x = 5618.354, position_y = -717.699, position_z = 205.661, spawndist = 0, MovementType = 0 WHERE guid IN (527649,527650);
DELETE FROM `spawn_group` WHERE id = 33505;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33505, 'Crystalsong Forest - Sunreaver Hawkrider 30265 x2 - Patrol - 3', 0, 0, 0, 0x01 | 0x02);
DELETE FROM `spawn_group_spawn` WHERE id = 33505;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33505, 527649, 0),
(33505, 527650, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33505;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33505, 3, 2, 0, 33505, 4, 'Crystalsong Forest - Sunreaver Hawkrider 30265 - Patrol - 3');
DELETE FROM `waypoint_path_name` WHERE PathId = 33505;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33505,'Crystalsong Forest - Sunreaver Hawkrider 30265 x2 - Patrol - 3');
DELETE FROM `waypoint_path` WHERE PathId = 33505;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33505,1,5618.354,-717.699,205.661,100,1000,0),
(33505,2,5618.254,-724.0965,205.036,100,0,0),
(33505,3,5615.712,-733.5529,204.1016,100,0,0),
(33505,4,5611.259,-742.498,202.2266,100,0,0),
(33505,5,5603.461,-753.2111,198.3516,100,1000,0);
