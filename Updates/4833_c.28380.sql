-- Shattertusk Groups

-- Shattertusk Mammoth 28379
UPDATE creature SET position_x = 6235.268555, position_y = 4428.294922, position_z = -72.335945, spawndist = 10, MovementType = 1 WHERE guid = 522462;
-- Shattertusk Bull 28380
UPDATE creature SET position_x = 6192.281738, position_y = 4378.551758, position_z = -66.447495, spawndist = 10, MovementType = 1 WHERE guid = 522499;
-- group 1
UPDATE creature SET position_x = 6056.303, position_y = 4729.794, position_z = -94.52935, spawndist = 0, MovementType = 0 WHERE guid IN (522493,522470,522469,522508,522507);
DELETE FROM `spawn_group` WHERE id = 32515;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32515, 'Sholazar Basin - Shattertusk Bull 28380 & Shattertusk Mammoth 28379 x2 & Shattertusk Calf x2 - Patrol 1', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 32515;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32515, 522493, 0),
(32515, 522470, 1),
(32515, 522469, 2),
(32515, 522508, 3),
(32515, 522507, 4);
DELETE FROM `spawn_group_formation` WHERE id = 32515;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32515, 4, 8, 0, 32515, 2, 'Sholazar Basin - Shattertusk Bull 28380 & Shattertusk Mammoth 28379 x2 & Shattertusk Calf x2 - Patrol 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 32515;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32515,'Sholazar Basin - Shattertusk Bull 28380 & Shattertusk Mammoth 28379 x2 & Shattertusk Calf x2 - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId = 32515;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32515,1 ,6056.303,4729.794,-94.52935,100,0,0),
(32515,2 ,6068.398,4687.617,-94.44778,100,0,0),
(32515,3 ,6081.788,4642.59,-94.65627 ,100,0,0),
(32515,4 ,6062.226,4616.003,-94.95181,100,0,0),
(32515,5 ,6027.675,4624.241,-95.8339 ,100,0,0),
(32515,6 ,6010.457,4650.083,-95.79877,100,0,0),
(32515,7 ,5996.909,4690.276,-97.12824,100,0,0),
(32515,8 ,6005.116,4720.794,-96.4945 ,100,0,0),
(32515,9 ,5994.706,4744.885,-96.9305 ,100,0,0),
(32515,10,5967.039,4785.346,-105.4354,100,0,0),
(32515,11,5995.792,4788.895,-97.95299,100,0,0),
(32515,12,6034.237,4765.974,-95.03672,100,0,0),
(32515,13,6044.653,4748.893,-94.77636,100,0,0);
-- group 2
UPDATE creature SET position_x = 6302.45, position_y = 4574.37, position_z = -76.2014, spawndist = 0, MovementType = 0 WHERE guid IN (522489,522506,522478,522477,522505);
DELETE FROM `spawn_group` WHERE id = 32516;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32516, 'Sholazar Basin - Shattertusk Bull 28380 & Shattertusk Mammoth 28379 x2 & Shattertusk Calf x2 - Patrol 2', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 32516;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32516, 522489, 0),
(32516, 522506, 1),
(32516, 522478, 2),
(32516, 522477, 3),
(32516, 522505, 4);
DELETE FROM `spawn_group_formation` WHERE id = 32516;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32516, 4, 8, 0, 32516, 4, 'Sholazar Basin - Shattertusk Bull 28380 & Shattertusk Mammoth 28379 x2 & Shattertusk Calf x2 - Patrol 2');
DELETE FROM `waypoint_path_name` WHERE PathId = 32516;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32516,'Sholazar Basin - Shattertusk Bull 28380 & Shattertusk Mammoth 28379 x2 & Shattertusk Calf x2 - Patrol 2');
DELETE FROM `waypoint_path` WHERE PathId = 32516;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32516,1,6377.0005,4668.733,-77.948524,100,0,0),
(32516,2,6354.7197,4627.414,-75.42304,100,0,0),
(32516,3,6336.7603,4605.7065,-72.79536,100,0,0),
(32516,4,6308.3716,4583.8306,-74.53675,100,0,0),
(32516,5,6286.9385,4549.521,-81.24271,100,0,0),
(32516,6,6272.121,4528.0522,-78.81762,100,0,0),
(32516,7,6262.66,4494.806,-78.45145,100,0,0),
(32516,8,6253.721,4447.479,-73.67493,100,0,0);
