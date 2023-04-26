-- Windrunner's Overlook - Crystalsong Forest

-- Silver Covenant Scout 30238
-- 2 individuals
DELETE FROM `creature_spawn_data` WHERE `Guid` IN (527473,527466);
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES
(527473,20033),(527466,20033);

-- Silver Covenant Horseman 30263
-- spawn groups
-- Group 1
UPDATE creature SET position_x = 5092.993, position_y = -499.9115, position_z = 200.743, spawndist = 0, MovementType = 0 WHERE guid IN (527644,527646);
DELETE FROM `spawn_group` WHERE id = 33500;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33500, 'Crystalsong Forest - Silver Covenant Horseman 30263 x2 - Patrol - 1', 0, 0, 0, 0x01 | 0x02);
DELETE FROM `spawn_group_spawn` WHERE id = 33500;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33500, 527644, 0),
(33500, 527646, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33500;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33500, 3, 2, 0, 33500, 4, 'Crystalsong Forest - Silver Covenant Horseman 30263 x2 - Patrol - 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 33500;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33500,'Crystalsong Forest - Silver Covenant Horseman 30263 x2 - Patrol - 1');
DELETE FROM `waypoint_path` WHERE PathId = 33500;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33500,1,5092.993,-499.9115,200.743,100,1000,0),
(33500,2,5077.662,-508.0535,209.832,100,0,0),
(33500,3,5056.561,-522.8265,219,100,0,0),
(33500,4,5055.311,-529.9973,219.625,100,0,0),
(33500,5,5062.516,-538.6329,220.0076,100,1000,0);
-- Group 2
UPDATE creature SET position_x = 5067.506, position_y = -553.8201, position_z = 219.9299, spawndist = 0, MovementType = 0 WHERE guid IN (527647,527645);
DELETE FROM `spawn_group` WHERE id = 33501;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33501, 'Crystalsong Forest - Silver Covenant Horseman 30263 x2 - Patrol - 2', 0, 0, 0, 0x01 | 0x02);
DELETE FROM `spawn_group_spawn` WHERE id = 33501;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33501, 527647, 0),
(33501, 527645, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33501;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33501, 3, 2, 0, 33501, 4, 'Crystalsong Forest - Silver Covenant Horseman 30263 x2 - Patrol - 2');
DELETE FROM `waypoint_path_name` WHERE PathId = 33501;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33501,'Crystalsong Forest - Silver Covenant Horseman 30263 x2 - Patrol - 2');
DELETE FROM `waypoint_path` WHERE PathId = 33501;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33501,1,5067.506,-553.8201,219.9299,100,1000,0),
(33501,2,5062.632,-572.1309,220.0737,100,0,0),
(33501,3,5064.448,-593.1968,220.0737,100,0,0),
(33501,4,5065.115,-602.8953,219.8304,100,0,0),
(33501,5,5061.571,-616.8125,218.0804,100,0,0),
(33501,6,5069.671,-625.4606,215.156,100,1000,0);
-- Group 3
UPDATE creature SET position_x = 5101.13, position_y = -709.184, position_z = 181.1589, spawndist = 0, MovementType = 0 WHERE guid IN (527642,527643);
DELETE FROM `spawn_group` WHERE id = 33502;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33502, 'Crystalsong Forest - Silver Covenant Horseman 30263 x2 - Patrol - 3', 0, 0, 0, 0x01 | 0x02);
DELETE FROM `spawn_group_spawn` WHERE id = 33502;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33502, 527642, 0),
(33502, 527643, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33502;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33502, 3, 2, 0, 33502, 4, 'Crystalsong Forest - Silver Covenant Horseman 30263 x2 - Patrol - 3');
DELETE FROM `waypoint_path_name` WHERE PathId = 33502;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33502,'Crystalsong Forest - Silver Covenant Horseman 30263 x2 - Patrol - 3');
DELETE FROM `waypoint_path` WHERE PathId = 33502;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33502,1,5101.13,-709.184,181.1589,100,1000,0),
(33502,2,5093.307,-705.5516,183.7482,100,0,0),
(33502,3,5081.934,-691.0207,189.3324,100,0,0),
(33502,4,5079.436,-681.121,193.0824,100,0,0),
(33502,5,5080.045,-661.0487,200.3002,100,0,0),
(33502,6,5076.288,-638.3586,210.4252,100,1000,0);
