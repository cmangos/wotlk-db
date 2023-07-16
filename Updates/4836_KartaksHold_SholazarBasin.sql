-- Kartak's Hold - Sholazar Basin

-- Duplicates
DELETE FROM creature WHERE guid IN 
(20358,520498,520406,520494,520402,520501,520382,520380,520408,520500,520407,520502,520469,520471,520357,520327,520355,520509,520376,
520418,520470,520404,520497,520513,520426,520506,520417,520508,520409,520503,520411,520410,520504,520492,520430,520391,520425,520429,
520424,520387,520328,520419,520510,520428,520352,520484,520496,520486,520457,520512,520422,520420,520421,520511,520381,520390,520414,
520377,520364,520359,520488);
DELETE FROM creature_addon WHERE guid IN 
(20358,520498,520406,520494,520402,520501,520382,520380,520408,520500,520407,520502,520469,520471,520357,520327,520355,520509,520376,
520418,520470,520404,520497,520513,520426,520506,520417,520508,520409,520503,520411,520410,520504,520492,520430,520391,520425,520429,
520424,520387,520328,520419,520510,520428,520352,520484,520496,520486,520457,520512,520422,520420,520421,520511,520381,520390,520414,
520377,520364,520359,520488);
DELETE FROM creature_movement WHERE Id IN 
(20358,520498,520406,520494,520402,520501,520382,520380,520408,520500,520407,520502,520469,520471,520357,520327,520355,520509,520376,
520418,520470,520404,520497,520513,520426,520506,520417,520508,520409,520503,520411,520410,520504,520492,520430,520391,520425,520429,
520424,520387,520328,520419,520510,520428,520352,520484,520496,520486,520457,520512,520422,520420,520421,520511,520381,520390,520414,
520377,520364,520359,520488);
DELETE FROM game_event_creature WHERE guid IN 
(20358,520498,520406,520494,520402,520501,520382,520380,520408,520500,520407,520502,520469,520471,520357,520327,520355,520509,520376,
520418,520470,520404,520497,520513,520426,520506,520417,520508,520409,520503,520411,520410,520504,520492,520430,520391,520425,520429,
520424,520387,520328,520419,520510,520428,520352,520484,520496,520486,520457,520512,520422,520420,520421,520511,520381,520390,520414,
520377,520364,520359,520488);
DELETE FROM game_event_creature_data WHERE guid IN 
(20358,520498,520406,520494,520402,520501,520382,520380,520408,520500,520407,520502,520469,520471,520357,520327,520355,520509,520376,
520418,520470,520404,520497,520513,520426,520506,520417,520508,520409,520503,520411,520410,520504,520492,520430,520391,520425,520429,
520424,520387,520328,520419,520510,520428,520352,520484,520496,520486,520457,520512,520422,520420,520421,520511,520381,520390,520414,
520377,520364,520359,520488);
DELETE FROM creature_battleground WHERE guid IN 
(20358,520498,520406,520494,520402,520501,520382,520380,520408,520500,520407,520502,520469,520471,520357,520327,520355,520509,520376,
520418,520470,520404,520497,520513,520426,520506,520417,520508,520409,520503,520411,520410,520504,520492,520430,520391,520425,520429,
520424,520387,520328,520419,520510,520428,520352,520484,520496,520486,520457,520512,520422,520420,520421,520511,520381,520390,520414,
520377,520364,520359,520488);
DELETE FROM creature_linking WHERE guid IN 
(20358,520498,520406,520494,520402,520501,520382,520380,520408,520500,520407,520502,520469,520471,520357,520327,520355,520509,520376,
520418,520470,520404,520497,520513,520426,520506,520417,520508,520409,520503,520411,520410,520504,520492,520430,520391,520425,520429,
520424,520387,520328,520419,520510,520428,520352,520484,520496,520486,520457,520512,520422,520420,520421,520511,520381,520390,520414,
520377,520364,520359,520488)
 OR master_guid IN 
(20358,520498,520406,520494,520402,520501,520382,520380,520408,520500,520407,520502,520469,520471,520357,520327,520355,520509,520376,
520418,520470,520404,520497,520513,520426,520506,520417,520508,520409,520503,520411,520410,520504,520492,520430,520391,520425,520429,
520424,520387,520328,520419,520510,520428,520352,520484,520496,520486,520457,520512,520422,520420,520421,520511,520381,520390,520414,
520377,520364,520359,520488);

-- Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 28079);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 28078);
DELETE FROM creature_template_addon WHERE entry IN (28078,28079);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(28078,0,0,1,0,333,0,NULL),
(28079,0,0,2,0,376,0,NULL);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (520483,520477,520481,520479,520491,520485,520495,520499,520505);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(520483,0,0,1,0,0,0,NULL),
(520477,0,0,1,0,0,0,NULL),
(520481,0,0,1,0,0,0,NULL),
(520491,0,0,1,0,0,0,NULL),
(520485,0,0,1,0,0,0,NULL),
(520495,0,0,1,0,0,0,NULL),
(520499,0,0,1,0,0,0,NULL),
(520505,0,0,1,0,0,0,NULL);
-- Defender Groups
-- group 1
UPDATE creature SET position_x = 4860.6704, position_y = 5887.4644, position_z = -39.866787, spawndist = 0, MovementType = 0 WHERE guid IN (520479,520338,520337);
DELETE FROM `spawn_group` WHERE id = 32517;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32517, 'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 1', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32517;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32517, 520479, 0),
(32517, 520338, 1),
(32517, 520337, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32517;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32517, 3, 2, 0, 32517, 4, 'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 32517;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32517,'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId = 32517;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32517,1,4860.6704,5887.4644,-39.866787,100,1000,0),
(32517,2,4880.758,5891.941,-40.53789,100,0,0),
(32517,3,4895.771,5882.2056,-48.082935,100,0,0),
(32517,4,4912.2188,5875.0444,-55.421143,100,0,0),
(32517,5,4922.2954,5876.807,-57.24646,100,1000,0);
-- group 2
UPDATE creature SET position_x = 4844.0747, position_y = 5838.956, position_z = -49.39528, spawndist = 0, MovementType = 0 WHERE guid IN (520481,520336,520335);
DELETE FROM `spawn_group` WHERE id = 32518;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32518, 'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 2', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32518;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32518, 520481, 0),
(32518, 520336, 1),
(32518, 520335, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32518;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32518, 3, 2, 0, 32518, 4, 'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 2');
DELETE FROM `waypoint_path_name` WHERE PathId = 32518;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32518,'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 2');
DELETE FROM `waypoint_path` WHERE PathId = 32518;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32518,1,4844.0747,5838.956,-49.39528,100,1000,0),
(32518,2,4866.018,5831.4585,-51.377827,100,0,0),
(32518,3,4889.91,5827.73,-55.634125,100,0,0),
(32518,4,4907.3013,5843.346,-58.981483,100,0,0),
(32518,5,4906.355,5859.6504,-58.03666,100,1000,0);
-- group 3
UPDATE creature SET position_x = 4977.398, position_y = 5798.3286, position_z = -70.48527, spawndist = 0, MovementType = 0 WHERE guid IN (520477,520344,520345);
DELETE FROM `spawn_group` WHERE id = 32519;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32519, 'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 3', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32519;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32519, 520477, 0),
(32519, 520344, 1),
(32519, 520345, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32519;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32519, 3, 2, 0, 32519, 4, 'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 3');
DELETE FROM `waypoint_path_name` WHERE PathId = 32519;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32519,'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 3');
DELETE FROM `waypoint_path` WHERE PathId = 32519;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32519,1,4977.398,5798.3286,-70.48527,100,1000,0),
(32519,2,4949.83,5782.867,-69.345055,100,0,0),
(32519,3,4921.3896,5772.1997,-67.60197,100,0,0),
(32519,4,4895.3003,5766.4414,-62.26641,100,0,0),
(32519,5,4869.1704,5760.025,-58.636284,100,1000,0);
-- group 4
UPDATE creature SET position_x = 5006.6045, position_y = 5821.5083, position_z = -72.11667, spawndist = 0, MovementType = 0 WHERE guid IN (520483,520329,520330);
DELETE FROM `spawn_group` WHERE id = 32520;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32520, 'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 4', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32520;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32520, 520483, 0),
(32520, 520329, 1),
(32520, 520330, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32520;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32520, 3, 2, 0, 32520, 4, 'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 4');
DELETE FROM `waypoint_path_name` WHERE PathId = 32520;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32520,'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 4');
DELETE FROM `waypoint_path` WHERE PathId = 32520;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32520,1,5006.6045,5821.5083,-72.11667,100,1000,0),
(32520,2,5028.071,5838.8687,-73.62059,100,0,0),
(32520,3,5055.2866,5861.328,-71.8854 ,100,0,0),
(32520,4,5067.547,5883.4526,-72.19278,100,0,0),
(32520,5,5071.808,5925.338,-64.92712,100,0,0);
-- missing half

-- Attacker Groups
-- group 5
UPDATE creature SET position_x = 4970.3354, position_y = 5901.975, position_z = -58.096783, spawndist = 0, MovementType = 0 WHERE guid IN (520491,520427,520389);
DELETE FROM `spawn_group` WHERE id = 32521;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32521, 'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 5', 0, 0, 0, 3);
DELETE FROM `spawn_group_spawn` WHERE id = 32521;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32521, 520491, 0),
(32521, 520427, 1),
(32521, 520389, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32521;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32521, 3, 2, 0, 32521, 2, 'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 5');
DELETE FROM `waypoint_path_name` WHERE PathId = 32521;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32521,'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 5');
DELETE FROM `waypoint_path` WHERE PathId = 32521;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32521,1 ,4963.764,5859.8716,-65.29767,100,0,0),
(32521,2 ,4969.09,5842.6797,-64.29386,100,0,0),
(32521,3 ,4983.93,5825.2236,-66.364426,100,0,0),
(32521,4 ,4994.954,5802.9546,-74.805466,100,0,0),
(32521,5 ,5009.69,5778.51,-78.8255,100,0,0),
(32521,6 ,5025.81,5745.54,-84.2604,100,0,0),
(32521,7 ,5039.249,5718.6143,-88.68754,100,0,0),
(32521,8 ,5046.0913,5660.6953,-90.46488,100,0,0),
(32521,9 ,5042.7227,5627.3794,-93.25783,100,0,0),
(32521,10,5033.267,5602.5386,-92.19558,100,0,0),
(32521,11,5032.98,5577.82,-94.961,100,0,0),
(32521,12,5040.19,5552.62,-97.8009,100,0,0),
(32521,13,5044.64,5532.11,-95.3245,100,0,0),
(32521,14,5041.15,5516.31,-90.7111,100,0,0),
(32521,15,5035.76,5497.04,-88.0743,100,20000,0),
(32521,16,5035.76,5497.04,-88.0743,100,1000,2821801);
-- group 6
UPDATE creature SET position_x = 5021.1104, position_y = 5898.0547, position_z = -63.282146, spawndist = 0, MovementType = 0 WHERE guid IN (520485,520356,520354);
DELETE FROM `spawn_group` WHERE id = 32522;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32522, 'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 6', 0, 0, 0, 3);
DELETE FROM `spawn_group_spawn` WHERE id = 32522;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32522, 520485, 0),
(32522, 520356, 1),
(32522, 520354, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32522;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32522, 3, 2, 0, 32522, 2, 'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 6');
DELETE FROM `waypoint_path_name` WHERE PathId = 32522;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32522,'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 6');
DELETE FROM `waypoint_path` WHERE PathId = 32522;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32522,1 ,5030.6924,5903.062,-66.26081,100,0,0),
(32522,2 ,5052.972,5905.581,-69.07503,100,0,0),
(32522,3 ,5064.5103,5894.961,-71.022675,100,0,0),
(32522,4 ,5074.984,5882.3994,-72.4169,100,0,0),
(32522,5 ,5080.7153,5867.6255,-77.40689,100,0,0),
(32522,6 ,5079.652,5851.738,-78.54014,100,0,0),
(32522,7 ,5078.61,5837.0654,-78.66514,100,0,0),
(32522,8 ,5087.678,5823.289,-78.333305,100,0,0),
(32522,9 ,5094.497,5804.1885,-77.00176,100,0,0),
(32522,10,5103.076,5786.9155,-80.97997,100,0,0),
(32522,11,5082.967,5775.281,-79.083855,100,0,0),
(32522,12,5087.753,5758.596,-83.09065,100,0,0),
(32522,13,5075.19,5740.7217,-84.53438,100,0,0),
(32522,14,5075.29,5717.17,-87.5118,100,0,0),
(32522,15,5085.2,5687.31,-92.7486 ,100,0,0),
(32522,16,5098.55,5670.13,-92.5406,100,0,0),
(32522,17,5124.75,5650.97,-96.9185,100,0,0),
(32522,18,5141.94,5634.72,-95.4272,100,0,0),
(32522,19,5149.52,5614.13,-96.8592,100,0,0),
(32522,20,5142.43,5604.92,-95.8258,100,0,0),
(32522,21,5124.83,5594.67,-91.3008,100,20000,0),
(32522,22,5124.83,5594.67,-91.3008,100,1000,2821801);
-- group 7
UPDATE creature SET position_x = 5046.5386, position_y = 5904.304, position_z = -68.42087, spawndist = 0, MovementType = 0 WHERE guid IN (520495,520403,520423);
DELETE FROM `spawn_group` WHERE id = 32523;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32523, 'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 7', 0, 0, 0, 3);
DELETE FROM `spawn_group_spawn` WHERE id = 32523;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32523, 520495, 0),
(32523, 520403, 1),
(32523, 520423, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32523;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32523, 3, 2, 0, 32523, 2, 'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 7');
DELETE FROM `waypoint_path_name` WHERE PathId = 32523;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32523,'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 7');
DELETE FROM `waypoint_path` WHERE PathId = 32523;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32523,1 ,5056.2524,5905.0557,-69.34395,100,0,0),
(32523,2 ,5071.2773,5880.987,-72.661896,100,0,0),
(32523,3 ,5082.7534,5835.926,-78.54014,100,0,0),
(32523,4 ,5095.144,5804.85,-77.00347,100,0,0),
(32523,5 ,5082.5728,5756.4917,-81.913895,100,0,0),
(32523,6 ,5080.482,5717.8877,-87.86588,100,0,0),
(32523,7 ,5090.619,5676.4194,-92.444725,100,0,0),
(32523,8 ,5126.3174,5646.3516,-97.42071,100,0,0),
(32523,9 ,5150.724,5625.857,-96.7104,100,0,0),
(32523,10,5155.202,5597.538,-97.34849,100,0,0),
(32523,11,5150.65,5574.87,-97.6329,100,0,0),
(32523,12,5132.51,5545.58,-98.0946,100,0,0),
(32523,13,5146.76,5515.35,-98.0946,100,20000,0),
(32523,14,5146.76,5515.35,-98.0946,100,1000,2821801);
-- group 8
UPDATE creature SET position_x = 4862.1274, position_y = 5846.911, position_z = -49.17479, spawndist = 0, MovementType = 0 WHERE guid IN (520499,520378,520379);
DELETE FROM `spawn_group` WHERE id = 32524;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32524, 'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 8', 0, 0, 0, 3);
DELETE FROM `spawn_group_spawn` WHERE id = 32524;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32524, 520499, 0),
(32524, 520378, 1),
(32524, 520379, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32524;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32524, 3, 2, 0, 32524, 2, 'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 8');
DELETE FROM `waypoint_path_name` WHERE PathId = 32524;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32524,'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 8');
DELETE FROM `waypoint_path` WHERE PathId = 32524;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32524,1 ,4891.645,5799.913,-56.536213,100,0,0),
(32524,2 ,4897.0967,5770.7324,-62.644855,100,0,0),
(32524,3 ,4922.0728,5745.09,-67.04449,100,0,0),
(32524,4 ,4936.59,5711.47,-74.1843,100,0,0),
(32524,5 ,4950.27,5691.16,-77.3949,100,0,0),
(32524,6 ,4968.1,5669.65,-79.9635 ,100,0,0),
(32524,7 ,4986.12,5648.23,-84.8732,100,0,0),
(32524,8 ,5000.32,5622.01,-88.2826,100,0,0),
(32524,9 ,5013.35,5601.34,-92.9507,100,0,0),
(32524,10,5028.78,5582.3,-94.6688 ,100,0,0),
(32524,11,5049.87,5561.35,-97.4134,100,0,0),
(32524,12,5077.52,5518.72,-98.095,100,20000,0),
(32524,13,5077.52,5518.72,-98.095,100,1000,2821801);
-- group 9
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (520505,520412,520413);
DELETE FROM `spawn_group` WHERE id = 32525;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32525, 'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 9', 0, 0, 0, 3);
DELETE FROM `spawn_group_spawn` WHERE id = 32525;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32525, 520505, 0),
(32525, 520412, 1),
(32525, 520413, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32525;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32525, 3, 2, 0, 32525, 2, 'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 9');
DELETE FROM `waypoint_path_name` WHERE PathId = 32525;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32525,'Sholazar Basin - Frenzyheart Hunter 28079 & Frenzyheart Ravager 28078 x2 - Patrol 9');
DELETE FROM `waypoint_path` WHERE PathId = 32525;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32525,1,4964.03,5779.17,-72.4596,100,0,0),
(32525,2,4960.39,5744.55,-75.0872,100,0,0),
(32525,3,4957.19,5719.84,-76.3184,100,0,0),
(32525,4,4964.81,5700.79,-77.4232,100,0,0),
(32525,5,4979.85,5678.28,-84.0826,100,0,0),
(32525,6,4994.97,5652.82,-87.439 ,100,0,0),
(32525,7,5010.44,5631.75,-91.6103,100,0,0),
(32525,8,5016.37,5601.02,-93.2894,100,20000,0),
(32525,9,5016.37,5601.02,-93.2894,100,1000,2821801);
-- spawn data
UPDATE `creature` SET spawntimesecsmin = 30, spawntimesecsmax =30 WHERE guid IN 
(520491,520427,520389,520485,520356,520354,520495,520403,520423,520499,520378,520379,520505,520412,520413);
DELETE FROM `creature_spawn_data` WHERE guid IN (520491,520427,520389,520485,520356,520354,520495,520403,520423,520499,520378,520379,520505,520412,520413);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(520491,20059),(520427,20059),(520389,20059),
(520485,20059),(520356,20059),(520354,20059),
(520495,20059),(520403,20059),(520423,20059),
(520499,20059),(520378,20059),(520379,20059),
(520505,20059),(520412,20059),(520413,20059);

-- Attacking Summoned Squad
-- Relay
DELETE FROM dbscripts_on_relay WHERE id IN (20756,20757,20758,30602,30603,30604,30605,30606);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- squad 1
(20756,1,10,28079,300000,1,0,0,0x08,0,0,0,88,4975.0728,5798.9443,-69.50098,5.2,'Part of Lightningcaller Soo-met 28017 EAI: summon squad 1'),
(20756,2,10,28078,300000,1,0,0,0x08,0,0,0,88,4971.53,5799.48,-68.2242,5.2,'Part of Lightningcaller Soo-met 28017 EAI: summon squad 1'),
(20756,3,10,28078,300000,2,0,0,0x08,0,0,0,102,4976.6,5801.98,-69.5441,5.2,'Part of Lightningcaller Soo-met 28017 EAI: summon squad 1'),
-- squad 2
(20757,1,10,28079,300000,2,0,0,0x08,0,0,0,102,5012.9624,5828.2544,-72.449745,5.86,'Part of Lightningcaller Soo-met 28017 EAI: summon squad 2'),
(20757,2,10,28078,300000,3,0,0,0x08,0,0,0,103,5010.69,5827.7,-72.1604,5.86,'Part of Lightningcaller Soo-met 28017 EAI: summon squad 2'),
(20757,3,10,28078,300000,4,0,0,0x08,0,0,0,104,5013.24,5830.98,-72.414,5.86,'Part of Lightningcaller Soo-met 28017 EAI: summon squad 2'),
-- squad 3
(20758,1,10,28079,300000,3,0,0,0x08,0,0,0,103,4931.1655,5775.858,-69.05195,5.098,'Part of Lightningcaller Soo-met 28017 EAI: summon squad 3'),
(20758,2,10,28078,300000,5,0,0,0x08,0,0,0,105,4928.79,5776.12,-68.6743,5.098,'Part of Lightningcaller Soo-met 28017 EAI: summon squad 3'),
(20758,3,10,28078,300000,6,0,0,0x08,0,0,0,106,4931.86,5777.5,-69.0396,5.098,'Part of Lightningcaller Soo-met 28017 EAI: summon squad 3'),
-- NEW GENERICS
(30602,1,20,2,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'SET waypoints - Path 2'),
(30603,1,20,2,3,0,0,0,0x04,0,0,0,0,0,0,0,0,'SET waypoints - Path 3'),
(30604,1,20,2,4,0,0,0,0x04,0,0,0,0,0,0,0,0,'SET waypoints - Path 4'),
(30605,1,20,2,5,0,0,0,0x04,0,0,0,0,0,0,0,0,'SET waypoints - Path 5'),
(30606,1,20,2,6,0,0,0,0x04,0,0,0,0,0,0,0,0,'SET waypoints - Path 6');
DELETE FROM creature_spawn_data_template WHERE `Entry` BETWEEN 102 AND 106;
INSERT INTO creature_spawn_data_template (Entry,SpawnFlags,RelayId,Name) VALUES
(102,1,30602,'- SPAWN FLAG RUN, Relayid 30602'),
(103,1,30603,'- SPAWN FLAG RUN, Relayid 30603'),
(104,1,30604,'- SPAWN FLAG RUN, Relayid 30604'),
(105,1,30605,'- SPAWN FLAG RUN, Relayid 30605'),
(106,1,30606,'- SPAWN FLAG RUN, Relayid 30606');
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2807801);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2807801,1,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self'),
(2807801,2,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM dbscripts_on_creature_death WHERE id IN (28078,28079);
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(28078,1,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(28079,1,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');

DELETE FROM `creature_movement_template` WHERE entry IN (28078,28079);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `PositionX`, `PositionY`, `PositionZ`, `orientation`, `waittime`, `ScriptId`) VALUES
-- squad 1a
(28079,1,1 ,5010.189,5747.2026,-81.7653,100,0,0),
(28079,1,2 ,5034.03,5711.2915,-89.68998,100,0,0),
(28079,1,3 ,5039.89,5691.72,-89.0622,100,0,0),
(28079,1,4 ,5041.98,5674.42,-89.2669,100,0,0),
(28079,1,5 ,5032.69,5648.81,-90.3879,100,0,0),
(28079,1,6 ,5020.81,5627.75,-91.7939,100,0,0),
(28079,1,7 ,5016.43,5601.5,-93.2939,100,0,0),
(28079,1,8 ,5024.26,5586.17,-94.3269,100,0,0),
(28079,1,9 ,5035.16,5568.22,-95.3445,100,0,0),
(28079,1,10,5061.01,5546.51,-98.0948,100,0,0),
(28079,1,11,5090.01,5533.58,-98.0948,100,0,0),
(28079,1,12,5111.91,5510.55,-97.1065,100,0,0),
(28079,1,13,5112.26,5490.14,-94.1832,100,5000,21),
(28079,1,14,5112.26,5490.14,-94.1832,100,1000,2807801),
-- squad 1b
(28078,1,1 ,5007.4,5747.86,-81.0133 ,100,0,0),
(28078,1,2 ,5031.75,5712.3,-89.7895 ,100,0,0),
(28078,1,3 ,5039.77,5675.72,-89.0222,100,0,0),
(28078,1,4 ,5031.35,5651.35,-90.0993,100,0,0),
(28078,1,5 ,5019.18,5629.16,-91.9061,100,0,0),
(28078,1,6 ,5013.88,5601.99,-93.005 ,100,0,0),
(28078,1,7 ,5021.85,5587.5,-94.1259 ,100,0,0),
(28078,1,8 ,5032.55,5568.28,-95.0314,100,0,0),
(28078,1,9 ,5058.58,5546.28,-98.0948,100,0,0),
(28078,1,10,5087.59,5533.51,-98.0948,100,0,0),
(28078,1,11,5110.02,5512.47,-97.3147,100,0,0),
(28078,1,12,5110.16,5491.84,-94.2339,100,5000,21),
(28078,1,13,5110.16,5491.84,-94.2339,100,1000,2807801),
-- squad 1c
(28078,2,1 ,5010.66,5749.42,-81.9344,100,0,0),
(28078,2,2 ,5036.47,5712.61,-89.9505,100,0,0),
(28078,2,3 ,5044.41,5675.03,-89.6629,100,0,0),
(28078,2,4 ,5034.91,5649.03,-90.809 ,100,0,0),
(28078,2,5 ,5022.89,5628.34,-91.5635,100,0,0),
(28078,2,6 ,5018.4,5602.64,-93.477  ,100,0,0),
(28078,2,7 ,5025.58,5587.82,-94.4388,100,0,0),
(28078,2,8 ,5036.4,5570.3,-95.2968  ,100,0,0),
(28078,2,9 ,5061.88,5548.48,-98.0948,100,0,0),
(28078,2,10,5090.27,5535.4,-98.0948 ,100,0,0),
(28078,2,11,5113.97,5512.02,-97.2308,100,0,0),
(28078,2,12,5114.18,5491.24,-94.1606,100,5000,21),
(28078,2,13,5114.18,5491.24,-94.1606,100,1000,2807801),
-- squad 2a
(28079,2,1 ,5016.8535,5782.2324,-78.91247,100,0,0),
(28079,2,2 ,5030.299,5756.413,-80.22349,100,0,0),
(28079,2,3 ,5048.251,5731.135,-84.43754,100,0,0),
(28079,2,4 ,5070.6235,5699.403,-91.64687,100,0,0),
(28079,2,5 ,5085.89,5680.87,-93.3689,100,0,0),
(28079,2,6 ,5100,5665.34,-93.4373,100,0,0),
(28079,2,7 ,5121.46,5646.35,-96.4228,100,0,0),
(28079,2,8 ,5136.538,5631.0522,-95.63826,100,0,0),
(28079,2,9 ,5149.54,5614.63,-96.8531,100,0,0),
(28079,2,10,5158.09,5591.7,-97.0979,100,0,0),
(28079,2,11,5170.94,5587.09,-94.6989,100,0,0),
(28079,2,12,5192.86,5577.93,-91.201,100,5000,21),
(28079,2,13,5192.86,5577.93,-91.201,100,1000,2807801),
-- squad 2b
(28078,3,1 ,5014.49,5782.62,-78.9024,100,0,0),
(28078,3,2 ,5027.9,5755.88,-80.993,100,0,0),
(28078,3,3 ,5045.93,5730.66,-84.7073,100,0,0),
(28078,3,4 ,5068.22,5699.18,-91.743,100,0,0),
(28078,3,5 ,5083.34,5681.22,-93.6134,100,0,0),
(28078,3,6 ,5097.51,5664.49,-93.5835,100,0,0),
(28078,3,7 ,5118.77,5645.24,-96.4081,100,0,0),
(28078,3,8 ,5134.15,5630.57,-95.9605,100,0,0),
(28078,3,9 ,5147.53,5615.62,-96.8336,100,0,0),
(28078,3,10,5156.06,5591.59,-97.2928,100,0,0),
(28078,3,11,5169.37,5585.2,-95.0914,100,0,0),
(28078,3,13,5193.85,5576.19,-91.0794,100,5000,21),
(28078,3,14,5193.85,5576.19,-91.0794,100,1000,2807801),
-- squad 2c
(28078,4,1 ,5018.65,5784.12,-78.9393,100,0,0),
(28078,4,2 ,5031.5,5758.4,-79.5156  ,100,0,0),
(28078,4,3 ,5049.38,5733.51,-83.738 ,100,0,0),
(28078,4,4 ,5071.62,5701.65,-91.0879,100,0,0),
(28078,4,5 ,5086.46,5683.29,-92.9575,100,0,0),
(28078,4,6 ,5099.94,5667.44,-93.0252,100,0,0),
(28078,4,7 ,5121.27,5648.74,-96.7674,100,0,0),
(28078,4,8 ,5137.57,5633.59,-95.5056,100,0,0),
(28078,4,9 ,5151.08,5616.2,-96.8471 ,100,0,0),
(28078,4,10,5159.23,5592.96,-96.9142,100,0,0),
(28078,4,11,5169.9,5588.15,-94.7836 ,100,0,0),
(28078,4,12,5194.82,5578.73,-91.2073,100,5000,21),
(28078,4,13,5194.82,5578.73,-91.2073,100,1000,2807801),
-- squad 3a
(28079,3,1,4949.093,5731.731,-75.84883,100,0,0),
(28079,3,2,4964.6104,5700.3535,-77.34883,100,0,0),
(28079,3,3,4986.1973,5663.435,-85.312355,100,0,0),
(28079,3,4,5016.645,5605.6104,-93.163315,100,5000,21),
(28079,3,5,5016.645,5605.6104,-93.163315,100,1000,2807801),
-- squad 3b
(28078,5,1,4946.42,5732.53,-75.855 ,100,0,0),
(28078,5,2,4961.85,5700.64,-77.4331,100,0,0),
(28078,5,3,4984.03,5664.54,-84.8642,100,0,0),
(28078,5,4,5014.25,5605.41,-92.9409,100,5000,21),
(28078,5,5,5014.25,5605.41,-92.9409,100,1000,2807801),
-- squad 3c
(28078,6,1,4950.81,5734.27,-75.8255,100,0,0),
(28078,6,2,4965.5,5702.49,-77.1995 ,100,0,0),
(28078,6,3,4987.78,5666.13,-85.8988,100,0,0),
(28078,6,4,5017.57,5607.68,-93.2907,100,5000,21),
(28078,6,5,5017.57,5607.68,-93.2907,100,1000,2807801);
