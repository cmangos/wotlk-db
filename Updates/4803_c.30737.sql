-- Nesingwary Game Warden 30737
-- Group 1
UPDATE creature SET position_x = 5598.858, position_y = 5814.943, position_z = -69.56468, spawndist = 0, MovementType = 0 WHERE id = 528421;
UPDATE creature SET position_x = 5598.858, position_y = 5814.943, position_z = -69.56468, spawndist = 0, MovementType = 0 WHERE id = 528422;
DELETE FROM `spawn_group` WHERE id = 32501;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32501, 'Sholazar Basin - Nesingwary Game Warden 30737 x2 - Patrol - 1', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 32501;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32501, 528421, 0),
(32501, 528422, 1);
DELETE FROM `spawn_group_formation` WHERE id = 32501;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32501, 3, 2, 0, 32501, 4, 'Sholazar Basin - Nesingwary Game Warden 30737 x2 - Patrol - 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 32501;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32501,'Sholazar Basin - Nesingwary Game Warden 30737 x2 - Patrol - 1');
DELETE FROM `waypoint_path` WHERE PathId = 32501;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32501,1,5598.858,5814.943,-69.56468,100,400,0),
(32501,2,5607.721,5815.843,-69.90916,100,0,0),
(32501,3,5613.182,5812.403,-70.332985,100,0,0),
(32501,4,5617.7344,5805.4897,-71.16245,100,0,0),
(32501,5,5628.9893,5805.254,-71.02451,100,0,0),
(32501,6,5638.5376,5802.1997,-71.319016,100,0,0),
(32501,7,5629.04,5804.4795,-71.111305,100,0,0),
(32501,8,5617.903,5804.749,-71.25132,100,0,0),
(32501,9,5612.793,5794.47,-72.02958,100,0,0),
(32501,10,5606.056,5786.5225,-71.911415,100,0,0),
(32501,11,5594.6675,5777.825,-71.92863,100,400,0);
-- Group 2
UPDATE creature SET position_x = 5572.568, position_y = 5732.9395, position_z = -75.675, spawndist = 0, MovementType = 0 WHERE id = 528415;
UPDATE creature SET position_x = 5572.568, position_y = 5732.9395, position_z = -75.675, spawndist = 0, MovementType = 0 WHERE id = 528416;
DELETE FROM `spawn_group` WHERE id = 32502;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32502, 'Sholazar Basin - Nesingwary Game Warden 30737 x2 - Patrol - 2', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 32502;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32502, 528415, 0),
(32502, 528416, 1);
DELETE FROM `spawn_group_formation` WHERE id = 32502;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32502, 3, 2, 0, 32502, 4, 'Sholazar Basin - Nesingwary Game Warden 30737 x2 - Patrol - 2');
DELETE FROM `waypoint_path_name` WHERE PathId = 32502;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32502,'Sholazar Basin - Nesingwary Game Warden 30737 x2 - Patrol - 2');
DELETE FROM `waypoint_path` WHERE PathId = 32502;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32502,1,5572.568,5732.9395,-75.675,100,400,0),
(32502,2,5579.9272,5721.426,-76.041336,100,0,0),
(32502,3,5582.7754,5709.5156,-77.47066,100,0,0),
(32502,4,5587.325,5696.804,-79.233086,100,0,0),
(32502,5,5583.651,5685.6997,-81.372856,100,400,0);
