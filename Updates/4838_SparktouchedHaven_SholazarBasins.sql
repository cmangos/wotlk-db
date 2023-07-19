-- Sparktouched Haven - Sholazar Basin

-- Duplicates
DELETE FROM creature WHERE guid IN 
(521022,521021,521030,521026,521025,521083,521103,521101,521077,521093,521098,521046,521052,520996,521091,
521023,521024,521097,521080,521087,521079,521038,521018,521019,521028,521005,521050,521051,521062,521011,521036,521035);
DELETE FROM creature_addon WHERE guid IN 
(521022,521021,521030,521026,521025,521083,521103,521101,521077,521093,521098,521046,521052,520996,521091,
521023,521024,521097,521080,521087,521079,521038,521018,521019,521028,521005,521050,521051,521062,521011,521036,521035);
DELETE FROM creature_movement WHERE Id IN 
(521022,521021,521030,521026,521025,521083,521103,521101,521077,521093,521098,521046,521052,520996,521091,
521023,521024,521097,521080,521087,521079,521038,521018,521019,521028,521005,521050,521051,521062,521011,521036,521035);
DELETE FROM game_event_creature WHERE guid IN 
(521022,521021,521030,521026,521025,521083,521103,521101,521077,521093,521098,521046,521052,520996,521091,
521023,521024,521097,521080,521087,521079,521038,521018,521019,521028,521005,521050,521051,521062,521011,521036,521035);
DELETE FROM game_event_creature_data WHERE guid IN 
(521022,521021,521030,521026,521025,521083,521103,521101,521077,521093,521098,521046,521052,520996,521091,
521023,521024,521097,521080,521087,521079,521038,521018,521019,521028,521005,521050,521051,521062,521011,521036,521035);
DELETE FROM creature_battleground WHERE guid IN 
(521022,521021,521030,521026,521025,521083,521103,521101,521077,521093,521098,521046,521052,520996,521091,
521023,521024,521097,521080,521087,521079,521038,521018,521019,521028,521005,521050,521051,521062,521011,521036,521035);
DELETE FROM creature_linking WHERE guid IN 
(521022,521021,521030,521026,521025,521083,521103,521101,521077,521093,521098,521046,521052,520996,521091,
521023,521024,521097,521080,521087,521079,521038,521018,521019,521028,521005,521050,521051,521062,521011,521036,521035)
 OR master_guid IN 
(521022,521021,521030,521026,521025,521083,521103,521101,521077,521093,521098,521046,521052,520996,521091,
521023,521024,521097,521080,521087,521079,521038,521018,521019,521028,521005,521050,521051,521062,521011,521036,521035);
-- Sparktouched Oracle 28112 & Sparktouched Warrior 28111
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 28112);
DELETE FROM creature_template_addon WHERE entry IN (28112);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(28112,0,0,1,0,0,0,'50726');
UPDATE creature SET position_x = 5212.1953, position_y = 5454.997, position_z = -83.677635, orientation = 1.204277, spawndist = 0, MovementType = 0 WHERE guid IN (521068);
UPDATE creature SET position_x = 5222.7886, position_y = 5429.5415, position_z = -80.13776, orientation = 3.6096692, spawndist = 5, MovementType = 1 WHERE guid IN (521070);
UPDATE creature SET position_x = 5155.56, position_y = 5463.98, position_z = -88.8639, orientation = 2.42507, spawndist = 0, MovementType = 0 WHERE guid IN (521037);
UPDATE creature SET position_x = 5242.616699, position_y = 5468.923340, position_z = -91.003181, orientation = 6.211381, spawndist = 0, MovementType = 0 WHERE guid = 520997;
-- defenders
-- group 1
UPDATE creature SET position_x = 4979.428, position_y = 5580.5283, position_z = -84.66245, spawndist = 0, MovementType = 0 WHERE guid IN (521109,521048,521049);
DELETE FROM `spawn_group` WHERE id = 32526;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32526, 'Sholazar Basin - Sparktouched Oracle 28112 & Sparktouched Warrior 28111 x2 - Patrol 1', 0, 0, 0, 3);
DELETE FROM `spawn_group_spawn` WHERE id = 32526;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32526, 521109, 0),
(32526, 521048, 1),
(32526, 521049, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32526;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32526, 3, 2, 0, 32526, 4, 'Sholazar Basin - Sparktouched Oracle 28112 & Sparktouched Warrior 28111 x2 - Patrol 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 32526;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32526,'Sholazar Basin - Sparktouched Oracle 28112 & Sparktouched Warrior 28111 x2 - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId = 32526;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32526,1,4979.428,5580.5283,-84.66245,100,1000,0),
(32526,2,4974.712,5553.886,-80.90069 ,100,0,0),
(32526,3,4976.718,5528.4263,-82.88611,100,0,0),
(32526,4,4985.66,5510.8306,-87.24841 ,100,0,0),
(32526,5,4988.9595,5483.232,-90.41785,100,0,0),
(32526,6,4988.911,5446.6797,-94.47176,100,1000,0);
-- group 2
UPDATE creature SET position_x = 5253.6914, position_y = 5453.319, position_z = -90.478676, spawndist = 0, MovementType = 0 WHERE guid IN (521092,520993,520994);
DELETE FROM `spawn_group` WHERE id = 32527;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32527, 'Sholazar Basin - Sparktouched Oracle 28112 & Sparktouched Warrior 28111 x2 - Patrol 2', 0, 0, 0, 3);
DELETE FROM `spawn_group_spawn` WHERE id = 32527;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32527, 521092, 0),
(32527, 520993, 1),
(32527, 520994, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32527;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32527, 3, 2, 0, 32527, 4, 'Sholazar Basin - Sparktouched Oracle 28112 & Sparktouched Warrior 28111 x2 - Patrol 2');
DELETE FROM `waypoint_path_name` WHERE PathId = 32527;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32527,'Sholazar Basin - Sparktouched Oracle 28112 & Sparktouched Warrior 28111 x2 - Patrol 2');
DELETE FROM `waypoint_path` WHERE PathId = 32527;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32527,1,5253.6914,5453.319,-90.478676,100,1000,0),
(32527,2,5278.886,5486.263,-101.290115,100,0,0),
(32527,3,5277.129,5531.9287,-99.43294 ,100,0,0),
(32527,4,5260.6084,5555.7515,-100.2653,100,0,0),
(32527,5,5268.3306,5597.5693,-96.69327,100,1000,0);
-- group 3 - poss there (missing)
-- group 4 - poss there (missing)

-- Attacker Groups
-- group 5
UPDATE creature SET position_x = 4976.631, position_y = 5570.1797, position_z = -83.14184, orientation = 2.194566, spawndist = 0, MovementType = 0 WHERE guid IN (521067,521006,521007);
DELETE FROM `spawn_group` WHERE id = 32530;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32530, 'Sholazar Basin - Sparktouched Oracle 28112 & Sparktouched Warrior 28111 x2 - Patrol 5', 0, 0, 0, 3);
DELETE FROM `spawn_group_spawn` WHERE id = 32530;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32530, 521067, 0),
(32530, 521006, 1),
(32530, 521007, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32530;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32530, 3, 2, 0, 32530, 2, 'Sholazar Basin - Sparktouched Oracle 28112 & Sparktouched Warrior 28111 x2 - Patrol 5');
DELETE FROM `waypoint_path_name` WHERE PathId = 32530;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32530,'Sholazar Basin - Sparktouched Oracle 28112 & Sparktouched Warrior 28111 x2 - Patrol 5');
DELETE FROM `waypoint_path` WHERE PathId = 32530;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32530,1,4955.9897,5598.8394,-79.21572,100,0,0),
(32530,2,4943.811,5624.867,-77.26019,100,0,0),
(32530,3,4930.136,5656.1533,-78.04661,100,0,0),
(32530,4,4917.482,5681.631,-69.29618,100,0,0),
(32530,5,4919.2554,5703.6357,-67.53985,100,0,0),
(32530,6,4915.4766,5733.4014,-66.12212,100,0,0),
(32530,7,4895.8657,5751.1294,-62.182793,100,0,0),
(32530,8,4885.952,5764.4146,-60.27764,100,20000,0),
(32530,9,4885.952,5764.4146,-60.27764,100,1000,2821801);
-- group 6
UPDATE creature SET position_x = 5025.869, position_y = 5605.6924, position_z = -93.1825, orientation = 5.06145, spawndist = 0, MovementType = 0 WHERE guid IN (521058,521008,521009);
DELETE FROM `spawn_group` WHERE id = 32531;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32531, 'Sholazar Basin - Sparktouched Oracle 28112 & Sparktouched Warrior 28111 x2 - Patrol 6', 0, 0, 0, 3);
DELETE FROM `spawn_group_spawn` WHERE id = 32531;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32531, 521058, 0),
(32531, 521008, 1),
(32531, 521009, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32531;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32531, 3, 2, 0, 32531, 2, 'Sholazar Basin - Sparktouched Oracle 28112 & Sparktouched Warrior 28111 x2 - Patrol 6');
DELETE FROM `waypoint_path_name` WHERE PathId = 32531;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32531,'Sholazar Basin - Sparktouched Oracle 28112 & Sparktouched Warrior 28111 x2 - Patrol 6');
DELETE FROM `waypoint_path` WHERE PathId = 32531;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32531,1,5028.5264,5651.522,-89.66501,100,0,0),
(32531,2,5044.816,5679.177,-89.78809,100,0,0),
(32531,3,5031.2183,5720.697,-88.57628,100,0,0),
(32531,4,5009.104,5745.7383,-81.3231,100,0,0),
(32531,5,4993.67,5767.84,-76.9075,100,0,0),
(32531,6,4988.49,5809.67,-72.3372,100,20000,0),
(32531,7,4988.49,5809.67,-72.3372,100,1000,2821801);
-- group 7
UPDATE creature SET position_x = 5028.603, position_y = 5500.718, position_z = -87.590256, orientation = 5.52359, spawndist = 0, MovementType = 0 WHERE guid IN (521064,521004,521013);
DELETE FROM `spawn_group` WHERE id = 32532;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32532, 'Sholazar Basin - Sparktouched Oracle 28112 & Sparktouched Warrior 28111 x2 - Patrol 7', 0, 0, 0, 3);
DELETE FROM `spawn_group_spawn` WHERE id = 32532;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32532, 521064, 0),
(32532, 521004, 1),
(32532, 521013, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32532;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32532, 3, 2, 0, 32532, 2, 'Sholazar Basin - Sparktouched Oracle 28112 & Sparktouched Warrior 28111 x2 - Patrol 7');
DELETE FROM `waypoint_path_name` WHERE PathId = 32532;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32532,'Sholazar Basin - Sparktouched Oracle 28112 & Sparktouched Warrior 28111 x2 - Patrol 7');
DELETE FROM `waypoint_path` WHERE PathId = 32532;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32532,1 ,5037.072,5527.1123,-92.08678,100,0,0),
(32532,2 ,5033.633,5540.035,-96.50719,100,0,0),
(32532,3 ,5014.3315,5529.226,-92.43488,100,0,0),
(32532,4 ,4998.8867,5519.942,-89.62732,100,0,0),
(32532,5 ,4971.5396,5521.6367,-82.33288,100,0,0),
(32532,6 ,4978.953,5540.689,-81.06927,100,0,0),
(32532,7 ,4957.8047,5536.174,-78.80046,100,0,0),
(32532,8 ,4945.5796,5556.012,-76.516525,100,0,0),
(32532,9 ,4933.3735,5571.158,-77.59817,100,0,0),
(32532,10,4934.7397,5600.46,-77.58002,100,0,0),
(32532,11,4948.4263,5640.9683,-76.60616,100,0,0),
(32532,12,4953.781,5659.4473,-76.818565,100,0,0),
(32532,13,4951.01,5686.37,-77.6644,100,0,0),
(32532,14,4948.63,5710.73,-76.6954,100,0,0),
(32532,15,4945.99,5731.56,-75.8867,100,0,0),
(32532,16,4939.25,5758.48,-72.3297,100,0,0),
(32532,17,4938.58,5797.49,-67.9722,100,20000,0),
(32532,18,4938.58,5797.49,-67.9722,100,1000,2821801);
-- group 8
UPDATE creature SET position_x = 5140.5947, position_y = 5638.793, position_z = -94.95357, orientation = 3.38399, spawndist = 0, MovementType = 0 WHERE guid IN (521085,521002,521003);
DELETE FROM `spawn_group` WHERE id = 32533;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32533, 'Sholazar Basin - Sparktouched Oracle 28112 & Sparktouched Warrior 28111 x2 - Patrol 8', 0, 0, 0, 3);
DELETE FROM `spawn_group_spawn` WHERE id = 32533;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32533, 521085, 0),
(32533, 521002, 1),
(32533, 521003, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32533;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32533, 3, 2, 0, 32533, 2, 'Sholazar Basin - Sparktouched Oracle 28112 & Sparktouched Warrior 28111 x2 - Patrol 8');
DELETE FROM `waypoint_path_name` WHERE PathId = 32533;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32533,'Sholazar Basin - Sparktouched Oracle 28112 & Sparktouched Warrior 28111 x2 - Patrol 8');
DELETE FROM `waypoint_path` WHERE PathId = 32533;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32533,1,5104.97,5659.77,-94.6208,100,0,0),
(32533,2,5076.991,5690.029,-91.409294,100,0,0),
(32533,3,5087.5,5765.751,-82.14889,100,0,0),
(32533,4,5081.9165,5812.281,-77.92876,100,0,0),
(32533,5,5075.428,5839.5635,-78.66514,100,0,0),
(32533,6,5067.986,5866.9214,-73.91629,100,0,0),
(32533,7,5064.04,5880.649,-72.049164,100,20000,0),
(32533,8,5064.04,5880.649,-72.049164,100,1000,2821801);

-- Attacking Summoned Squad
-- Relay
DELETE FROM dbscripts_on_relay WHERE id IN (20759,20760,20761);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- squad 1
(20759,1,10,28112,300000,1,0,0,0x08,0,0,0,88,5158.4355,5632.8345,-95.86459,1.5747,'Part of Shaman Jakjek 28106 EAI: summon squad 1'),
(20759,2,10,28111,300000,1,0,0,0x08,0,0,0,88,5630.67,-96.0222,2.35848,1.5747,'Part of Shaman Jakjek 28106 EAI: summon squad 1'),
(20759,3,10,28111,300000,2,0,0,0x08,0,0,0,102,5160.54,5633.41,-95.4152,1.5747,'Part of Shaman Jakjek 28106 EAI: summon squad 1'),
-- squad 2
(20760,1,10,28112,300000,2,0,0,0x08,0,0,0,102,5007.89,5599.07,-91.1492,1.77686,'Part of Shaman Jakjek 28106 EAI: summon squad 2'),
(20760,2,10,28111,300000,3,0,0,0x08,0,0,0,103,5005.92,5595.88,-90.0367,1.77686,'Part of Shaman Jakjek 28106 EAI: summon squad 2'),
(20760,3,10,28111,300000,4,0,0,0x08,0,0,0,104,5009.79,5597.76,-91.8718,1.77686,'Part of Shaman Jakjek 28106 EAI: summon squad 2'),
-- squad 3
(20761,1,10,28112,300000,3,0,0,0x08,0,0,0,103,5091.99,5596.07,-90.448,0.0539488,'Part of Shaman Jakjek 28106 EAI: summon squad 3'),
(20761,2,10,28111,300000,5,0,0,0x08,0,0,0,105,5089.77,5597.56,-90.4065,0.0539488,'Part of Shaman Jakjek 28106 EAI: summon squad 3'),
(20761,3,10,28111,300000,6,0,0,0x08,0,0,0,106,5090.56,5593.53,-90.3376,0.0539488,'Part of Shaman Jakjek 28106 EAI: summon squad 3');
DELETE FROM dbscripts_on_creature_death WHERE id IN (28111,28112);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(28111,1,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(28111,2,18,10000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn'),
(28112,1,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(28112,2,18,10000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');
DELETE FROM `creature_movement_template` WHERE entry IN (28111,28112);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
-- squad 1a
(28112,1,1,5158.2104,5690.4443,-93.48431,100,0,0),
(28112,1,2,5150.358,5714.733,-91.63453,100,0,0),
(28112,1,3,5120.2603,5724.604,-90.86758,100,0,0),
(28112,1,4,5094.272,5753.8965,-86.692825,100,0,0),
(28112,1,5,5086.174,5773.8833,-80.217766,100,0,0),
(28112,1,6,5083.172,5798.1875,-76.43615,100,0,0),
(28112,1,7,5056.06,5827.2,-79.3232,100,0,0),
(28112,1,8,5028.71,5849.53,-72.9542,100,5000,21),
(28112,1,9,5028.71,5849.53,-72.9542,100,1000,2807801),
-- squad 1b
(28111,1,1,5156.38,5688.07,-93.5082,100,0,0),
(28111,1,2,5149.13,5711.23,-91.4933,100,0,0),
(28111,1,3,5119.77,5721.92,-90.6638,100,0,0),
(28111,1,4,5092.93,5752.18,-87.0152,100,0,0),
(28111,1,5,5083.57,5772.37,-79.8667,100,0,0),
(28111,1,6,5081.11,5796.44,-76.2429,100,0,0),
(28111,1,7,5055.61,5824.37,-79.414 ,100,0,0),
(28111,1,8,5031.84,5850.67,-73.1306,100,5000,21),
(28111,1,9,5031.84,5850.67,-73.1306,100,1000,2807801),
-- squad 1c
(28111,2,1,5159.76,5689.72,-94.0444,100,0,0),
(28111,2,2,5153.06,5714.86,-91.9141,100,0,0),
(28111,2,3,5122.24,5724.36,-90.9086,100,0,0),
(28111,2,4,5096.05,5754.09,-87.3425,100,0,0),
(28111,2,5,5087.6,5772.49,-81.0196 ,100,0,0),
(28111,2,6,5084.41,5797.19,-76.6552,100,0,0),
(28111,2,7,5058.34,5827.5,-79.2848 ,100,0,0),
(28111,2,8,5027.9,5846.99,-73.1637 ,100,5000,21),
(28111,2,9,5027.9,5846.99,-73.1637 ,100,1000,2807801),
-- squad 2a
(28112,2,1 ,4998.84,5618.34,-87.55,100,0,0),
(28112,2,2 ,4989.46,5643.58,-85.6969,100,0,0),
(28112,2,3 ,4981.07,5662.8,-83.9076,100,0,0),
(28112,2,4 ,4975.17,5682.94,-82.4352,100,0,0),
(28112,2,5 ,4969.59,5703.18,-77.4842,100,0,0),
(28112,2,6 ,4963.35,5729.33,-75.1633,100,0,0),
(28112,2,7 ,4954.38,5755.79,-75.3212,100,0,0),
(28112,2,8 ,4945.2,5778.49,-70.3525,100,0,0),
(28112,2,9 ,4937.88,5796.39,-68.0904,100,0,0),
(28112,2,10,4931.06,5815.2,-65.9552,100,5000,21),
(28112,2,11,4931.23,5840.6,-63.6952,100,1000,2807801),
-- squad 2b
(28111,3,1 ,4998.21,5615.13,-87.2522,100,0,0),
(28111,3,2 ,4988.67,5639.06,-85.317 ,100,0,0),
(28111,3,3 ,4980.32,5659.43,-83.549 ,100,0,0),
(28111,3,4 ,4974.41,5679.68,-82.8281,100,0,0),
(28111,3,5 ,4967.8,5700,-77.7371    ,100,0,0),
(28111,3,6 ,4962.24,5725.04,-75.1811,100,0,0),
(28111,3,7 ,4953.07,5752.64,-75.2585,100,0,0),
(28111,3,8 ,4944.16,5775.08,-70.8496,100,0,0),
(28111,3,9 ,4937.05,5792.8,-68.3533 ,100,0,0),
(28111,3,10,4929.96,5810.79,-66.2104,100,0,0),
(28111,3,11,4928.4,5837.16,-63.6768 ,100,5000,21),
(28111,3,12,4928.4,5837.16,-63.6768 ,100,1000,2807801),
-- squad 2c
(28111,4,1 ,5001.19,5617.75,-88.6121,100,0,0),
(28111,4,2 ,4992.36,5642.23,-86.4859,100,0,0),
(28111,4,3 ,4984.23,5661.3,-84.8107 ,100,0,0),
(28111,4,4 ,4977.77,5681.28,-83.2641,100,0,0),
(28111,4,5 ,4972.61,5701.05,-78.1998,100,0,0),
(28111,4,6 ,4966.96,5726.73,-74.9743,100,0,0),
(28111,4,7 ,4957.14,5754.95,-75.5516,100,0,0),
(28111,4,8 ,4948.39,5776.53,-70.6365,100,0,0),
(28111,4,9 ,4941.54,5794.62,-68.052 ,100,0,0),
(28111,4,10,4933.5,5811.97,-66.5912 ,100,0,0),
(28111,4,11,4933.57,5837.87,-64.2413,100,5000,21),
(28111,4,12,4933.57,5837.87,-64.2413,100,1000,2807801),
-- squad 3a
(28112,3,1 ,5128.75,5596.75,-91.7447,100,0,0),
(28112,3,2 ,5145.35,5610.64,-96.6778,100,0,0),
(28112,3,3 ,5137.9,5637.63,-95.2815 ,100,0,0),
(28112,3,4 ,5114.86,5653.65,-96.2949,100,0,0),
(28112,3,5 ,5093.26,5673.41,-92.2957,100,0,0),
(28112,3,6 ,5072.63,5688.85,-90.9931,100,0,0),
(28112,3,7 ,5040.39,5721.44,-87.7703,100,0,0),
(28112,3,8 ,5023.42,5743.7,-85.5463 ,100,0,0),
(28112,3,9 ,5012.71,5779.42,-79.2022,100,0,0),
(28112,3,10,4997.52,5802.94,-75.7446,100,0,0),
(28112,3,11,4989.5,5815.78,-71.298  ,100,0,0),
(28112,3,12,4981.77,5833.65,-65.5869,100,5000,21),
(28112,3,13,4959.51,5857.18,-65.2063,100,1000,2807801),
-- squad 3b
(28111,5,1 ,5126.06,5597.84,-91.4222,100,0,0),
(28111,5,2 ,5141.64,5608.86,-96.2042,100,0,0),
(28111,5,3 ,5137.85,5634.09,-95.4714,100,0,0),
(28111,5,4 ,5117.26,5649.11,-96.9816,100,0,0),
(28111,5,5 ,5094.76,5670.42,-92.5798,100,0,0),
(28111,5,6 ,5072.99,5685.58,-91.1959,100,0,0),
(28111,5,7 ,5040.04,5717.94,-88.825 ,100,0,0),
(28111,5,8 ,5022.96,5740.44,-86.3804,100,0,0),
(28111,5,9 ,5013.12,5774.2,-79.2535 ,100,0,0),
(28111,5,10,4996.9,5799.24,-76.6927 ,100,0,0),
(28111,5,11,4988.97,5812.39,-71.9638,100,0,0),
(28111,5,12,4982.42,5830.19,-65.7885,100,0,0),
(28111,5,13,4957.74,5853.49,-64.8705,100,5000,21),
(28111,5,14,4957.74,5853.49,-64.8705,100,1000,2807801),
-- squad 3c
(28111,6,1 ,5127.86,5593.37,-91.5075,100,0,0),
(28111,6,2 ,5145.52,5606.73,-96.5298,100,0,0),
(28111,6,3 ,5141.96,5636.61,-95.228 ,100,0,0),
(28111,6,4 ,5119.67,5652.45,-96.443 ,100,0,0),
(28111,6,5 ,5096.78,5673.66,-92.0491,100,0,0),
(28111,6,6 ,5075.74,5688.36,-91.3341,100,0,0),
(28111,6,7 ,5043.89,5720.4,-87.9529 ,100,0,0),
(28111,6,8 ,5026.81,5742.04,-85.3159,100,0,0),
(28111,6,9 ,5017.04,5777.01,-78.98  ,100,0,0),
(28111,6,10,5000.57,5801.98,-76.9584,100,0,0),
(28111,6,11,4992.8,5814.36,-71.9945 ,100,0,0),
(28111,6,12,4985.12,5834.03,-66.3472,100,0,0),
(28111,6,13,4962.4,5854.3,-65.2739  ,100,5000,21),
(28111,6,14,4962.4,5854.3,-65.2739  ,100,1000,2807801);
-- spawn data
UPDATE `creature` SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE guid IN 
(521067,521006,521007,521058,521008,521009,521064,521004,521013,521085,521002,521003);
DELETE FROM `creature_spawn_data` WHERE guid IN (521067,521006,521007,521058,521008,521009,521064,521004,521013,521085,521002,521003);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(521067,20059),(521006,20059),(521007,20059),
(521058,20059),(521008,20059),(521009,20059),
(521064,20059),(521004,20059),(521013,20059),
(521085,20059),(521002,20059),(521003,20059);
