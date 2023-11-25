-- Vigdis the War Maiden 32386
UPDATE creature_template SET EquipmentTemplateId = 569 WHERE Entry = 32386;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 32386);
DELETE FROM creature_template_addon WHERE entry IN (32386);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(32386,22657,0,0,0,0,0,42459);
UPDATE creature SET position_x = 750.243, position_y = -5544.876, position_z = 226.85025, movementtype = 4, spawndist = 0 WHERE guid = 532428; -- linear
DELETE FROM creature_movement WHERE id IN (532428);
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- 532428 -- path corrected
(532428,1 ,750.243,-5544.876,226.85025   ,100,1000,0),
(532428,2 ,745.32294,-5581.1216,230.16335,100,0,0),
(532428,3 ,768.90485,-5593.571,229.32587 ,100,0,0),
(532428,4 ,788.01324,-5590.2295,227.12914,100,0,0),
(532428,5 ,807.92053,-5600.087,227.427   ,100,0,0),
(532428,6 ,817.5386,-5626.1807,226.3602  ,100,0,0),
(532428,7 ,819.12274,-5661.3833,228.47473,100,0,0),
(532428,8 ,831.6447,-5676.5547,232.58838 ,100,0,0),
(532428,9 ,865.20105,-5687.153,228.79388 ,100,0,0),
(532428,10,886.93097,-5697.3184,230.09587,100,0,0),
(532428,11,911.21136,-5719.39,231.87204  ,100,0,0),
(532428,12,940.70294,-5717.991,229.6409  ,100,0,0),
(532428,13,969.9209,-5705.112,227.03456  ,100,0,0),
(532428,14,1005.3893,-5686.711,222.87486 ,100,0,0),
(532428,15,1030.4932,-5666.9194,222.18379,100,0,0),
(532428,16,1057.0797,-5648.8506,222.52275,100,0,0),
(532428,17,1081.9398,-5637.8643,217.53494,100,0,0),
(532428,18,1104.4995,-5629.6846,213.06432,100,0,0),
(532428,19,1127.101,-5613.5513,212.02306 ,100,0,0),
(532428,20,1140.7701,-5576.874,206.09909 ,100,0,0),
(532428,21,1157.6267,-5549.8643,202.447  ,100,0,0),
(532428,22,1190.8795,-5550.37,201.77837  ,100,0,0),
(532428,23,1214.2645,-5556.3306,203.54256,100,0,0),
(532428,24,1235.5396,-5530.718,201.46948 ,100,0,0),
(532428,25,1269.1866,-5522.426,196.83667 ,100,0,0),
(532428,26,1293.1079,-5503.6245,195.85268,100,1000,0);
-- Spawn Groups
DELETE FROM pool_creature_template WHERE id = 32386;
DELETE FROM pool_template WHERE entry = 1082;
DELETE FROM `spawn_group` WHERE id = 31500;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(31500, 'Howling Fjord - Vigdis the War Maiden 32386 - RARE', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 31500;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(31500, 532428, -1),
(31500, 532429, -1),
(31500, 532430, -1);

-- King Ping 32398
DELETE FROM pool_creature_template WHERE id = 32398;
DELETE FROM pool_template WHERE entry = 1080;
DELETE FROM `spawn_group` WHERE id = 31501;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(31501, 'Howling Fjord - King Ping 32398 - RARE', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 31501;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(31501, 532431, -1),
(31501, 532432, -1),
(31501, 532433, -1),
(31501, 532434, -1);

-- Perobas the Bloodthirster 32377
DELETE FROM pool_creature_template WHERE id = 32377;
DELETE FROM pool_template WHERE entry = 1081;
DELETE FROM `spawn_group` WHERE id = 31501;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(31502, 'Perobas the Bloodthirster 32377 - RARE', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 31502;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(31502, 532423, -1),
(31502, 532424, -1),
(31502, 532425, -1),
(31502, 532426, -1),
(31502, 532427, -1);
