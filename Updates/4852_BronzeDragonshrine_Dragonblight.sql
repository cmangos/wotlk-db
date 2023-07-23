-- Bronze Dragonshrine - Dragonblight

-- Nozdormu 27925
DELETE FROM creature_spawn_data WHERE guid = 519855;
INSERT INTO creature_spawn_data (guid, Id) VALUES
(519855,20056);

-- Bronze Shrine Warden 26277
DELETE FROM creature_movement WHERE id IN (512749);
DELETE FROM creature_linking WHERE master_guid IN (512749,531856);
UPDATE creature SET position_x = 4036.618, position_y = -410.075, position_z = 155.0924, spawndist = 0, MovementType = 0 WHERE guid IN (512749,531859,531860,531857);
DELETE FROM `spawn_group` WHERE id = 31000;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(31000, 'Dragonblight - Bronze Shrine Warden 26277 & Tempus Wyrm 32180 x3 - Path 1', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 31000;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(31000, 512749, 0),
(31000, 531859, 1),
(31000, 531860, 2),
(31000, 531857, 3);
DELETE FROM `spawn_group_formation` WHERE id = 31000;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(31000, 4, 3, 0, 31000, 2, 'Stormwind - Stormwind Orphan 14496 x3 - Path 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 31000;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(31000,'Stormwind - Stormwind Orphan 14496 x3 - Path 1');
DELETE FROM `waypoint_path` WHERE PathId = 31000;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31000,1,4036.618,-410.075,155.0924,100,0,0),
(31000,2,4064.925,-360.9518,155.0924,100,0,0),
(31000,3,4130.639,-346.9796,155.0924,100,0,0),
(31000,4,4160.93,-381.8614,155.0924,100,0,0),
(31000,5,4142.985,-434.5384,155.0924,100,0,0),
(31000,6,4113.847,-457.3329,155.0924,100,0,0),
(31000,7,4064.386,-455.2153,155.0924,100,0,0);
DELETE FROM `creature_spawn_data` WHERE guid IN (512749,531859,531860,531857);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(512749,20056),(531859,20056),(531860,20056),(531857,20056);

-- Tempus Wyrm 32180
DELETE FROM creature_movement WHERE id IN (531856);
DELETE FROM creature_linking WHERE master_guid IN (531856);
UPDATE creature SET position_x = 4164.974, position_y = -399.6096, position_z = 142.6423, spawndist = 0, MovementType = 0 WHERE guid IN (531856,531855);
DELETE FROM `spawn_group` WHERE id = 31001;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(31001, 'Dragonblight - Tempus Wyrm 32180 x2 - Path 1', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 31001;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(31001, 531856, 0),
(31001, 531855, 1);
DELETE FROM `spawn_group_formation` WHERE id = 31001;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(31001, 3, 3, 0, 31001, 2, 'Dragonblight - Tempus Wyrm 32180 x2 - Path 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 31001;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(31001,'Dragonblight - Tempus Wyrm 32180 x2 - Path 1');
DELETE FROM `waypoint_path` WHERE PathId = 31001;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31001,1,4164.974,-399.6096,142.6423,100,0,0),
(31001,2,4167.08,-377.4431,142.6423,100,0,0),
(31001,3,4151.239,-361.0978,142.6423,100,0,0),
(31001,4,4130.046,-359.7336,142.6423,100,0,0),
(31001,5,4095.954,-386.6495,142.6423,100,0,0),
(31001,6,4053.72,-445.9019,142.6423,100,0,0),
(31001,7,4087.912,-488.7475,142.6423,100,0,0),
(31001,8,4121.044,-480.3546,142.6423,100,0,0),
(31001,9,4150.563,-429.6214,142.6423,100,0,0);
DELETE FROM `creature_spawn_data` WHERE guid IN (531856,531855);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(531856,20056),(531855,20056);

-- Infinite Timebreaker 32186
DELETE FROM creature_movement WHERE id IN (531866);
DELETE FROM `creature_linking` WHERE `master_guid` IN (531866,531864);
UPDATE creature SET position_x = 4118.228, position_y = -374.5273, position_z = 146.6842, spawndist = 0, MovementType = 0 WHERE guid IN (531866,531862,531861,531863);
DELETE FROM `spawn_group` WHERE id = 31002;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(31002, 'Dragonblight - Infinite Timebreaker 32186 & Infinite Eradicator 32185 x3 - Path 1', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 31002;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(31002, 531866, 0),
(31002, 531862, 1),
(31002, 531861, 2),
(31002, 531863, 3);
DELETE FROM `spawn_group_formation` WHERE id = 31002;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(31002, 3, 3, 0, 31002, 2, 'Dragonblight - Infinite Timebreaker 32186 & Infinite Eradicator 32185 x3 - Path 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 31002;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(31002,'Dragonblight - Infinite Timebreaker 32186 & Infinite Eradicator 32185 x3 - Path 1');
DELETE FROM `waypoint_path` WHERE PathId = 31002;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31002,1 ,4118.228,-374.5273,146.6842,100,0,0),
(31002,2 ,4158.644,-348.2169,146.6842,100,0,0),
(31002,3 ,4196.922,-384.4117,146.6842,100,0,0),
(31002,4 ,4193.283,-439.7143,146.6842,100,0,0),
(31002,5 ,4154.769,-467.2552,146.6842,100,0,0),
(31002,6 ,4110.876,-444.7473,146.6842,100,0,0),
(31002,7 ,4107.821,-390.3208,146.6842,100,0,0),
(31002,8 ,4094.354,-343.3002,146.6842,100,0,0),
(31002,9 ,4059.608,-343.805,146.6842,100,0,0),
(31002,10,4048.697,-372.1508,146.6842,100,0,0),
(31002,11,4050.198,-409.6317,146.6842,100,0,0),
(31002,12,4056.573,-444.7391,146.6842,100,0,0),
(31002,13,4089.472,-462.6982,146.6842,100,0,0),
(31002,14,4119.193,-438.8815,146.6842,100,0,0);
DELETE FROM `creature_spawn_data` WHERE guid IN (531866,531862,531861,531863);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(531866,20056),(531862,20056),(531861,20056),(531863,20056);

-- Tempus Wyrm 32180
DELETE FROM creature_movement WHERE id IN (531864);
DELETE FROM creature_linking WHERE master_guid IN (531864);
UPDATE creature SET position_x = 4097.044, position_y = -483.2576, position_z = 141.9557, spawndist = 0, MovementType = 0 WHERE guid IN (531864,531865);
DELETE FROM `spawn_group` WHERE id = 31003;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(31003, 'Dragonblight - Tempus Wyrm 32180 x2 - Path 1', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 31003;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(31003, 531864, 0),
(31003, 531865, 1);
DELETE FROM `spawn_group_formation` WHERE id = 31003;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(31003, 3, 3, 0, 31003, 2, 'Dragonblight - Tempus Wyrm 32180 x2 - Path 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 31003;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(31003,'Dragonblight - Tempus Wyrm 32180 x2 - Path 1');
DELETE FROM `waypoint_path` WHERE PathId = 31003;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31003,1 ,4097.044,-483.2576,141.9557,100,0,0),
(31003,2 ,4136.382,-500.8875,141.9557,100,0,0),
(31003,3 ,4166.104,-487.1107,141.9557,100,0,0),
(31003,4 ,4161.927,-462.8755,141.9557,100,0,0),
(31003,5 ,4133.968,-426.5483,141.9557,100,0,0),
(31003,6 ,4117.856,-402.0503,141.9557,100,0,0),
(31003,7 ,4136.213,-384.799,141.9557,100,0,0),
(31003,8 ,4145.955,-349.7704,141.9557,100,0,0),
(31003,9,4117.731,-334.0284,141.9557,100,0,0),
(31003,10,4081.651,-360.0752,141.9557,100,0,0),
(31003,11,4059.065,-427.9391,141.9557,100,0,0);
DELETE FROM `creature_spawn_data` WHERE guid IN (531864,531865);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(531864,20056),(531865,20056);
