-- Sapphire Hive & Wintergrasp River - Sholazar Basin

-- Hardknuckle Charger 28096 & Hardknuckle Forager 28098
-- duplicate
DELETE FROM creature_addon WHERE guid IN (520781,520752,520785,520284);
DELETE FROM creature_movement WHERE Id IN (520781,520752,520785,520284);
DELETE FROM game_event_creature WHERE guid IN (520781,520752,520785,520284);
DELETE FROM game_event_creature_data WHERE guid IN (520781,520752,520785,520284);
DELETE FROM creature_battleground WHERE guid IN (520781,520752,520785,520284);
DELETE FROM creature_linking WHERE guid IN (520781,520752,520785,520284) 
OR master_guid IN (520781,520752,520785,520284);
DELETE FROM creature WHERE guid IN (520781,520752,520785,520284);
-- missing added (removed guids reused)
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(520781,28098,571,1,1,5127.53,4142.92,-78.135,1.55332,300,300,0,0),
(520752,28098,571,1,1,5112.7,4139.2,-75.3655,3.92522,300,300,0,0),
(520785,28098,571,1,1,5123.48,4123.94,-72.5937,6.23036,300,300,0,0), -- 520785 was free
(520284,28096,571,1,1,5130.81,4007.76,-61.7342,5.29571,300,300,0,0); -- 520284 was free
-- moved
UPDATE creature SET position_x = 5234.623535, position_y = 4330.135742, position_z = -97.132874 WHERE guid = 520745;
UPDATE creature SET position_x = 5228.343750, position_y = 4162.728516, position_z = -87.455338 WHERE guid = 520744;
UPDATE creature SET position_x = 5199.089355, position_y = 4218.468750, position_z = -95.159576 WHERE guid = 520746;
UPDATE creature SET position_x = 5187.385254, position_y = 4267.666016, position_z = -96.475723 WHERE guid = 520748;
UPDATE creature SET position_x = 5229.636230, position_y = 4271.122559, position_z = -99.410294 WHERE guid = 520793;
UPDATE creature SET position_x = 5168.972656, position_y = 4122.989746, position_z = -77.480240 WHERE guid = 520747;
-- GLOBAL
UPDATE creature SET spawndist = 15, MovementType = 1 WHERE id = 28096;
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE id = 28098;
-- group with smaller randommovement distance
UPDATE creature SET position_x = 5119.538574, position_y = 4081.793945, position_z = -62.441174, spawndist = 7, MovementType = 1 WHERE guid = 520754;
UPDATE creature SET position_x = 5152.103516, position_y = 4034.897217, position_z = -61.894138, spawndist = 7, MovementType = 1 WHERE guid = 520749;
UPDATE creature SET position_x = 5142.741211, position_y = 4057.352783, position_z = -62.205948, spawndist = 7, MovementType = 1 WHERE guid = 520750;
UPDATE creature SET position_x = 5114.945312, position_y = 4031.840088, position_z = -61.837105, spawndist = 7, MovementType = 1 WHERE guid = 520755;
UPDATE creature SET position_x = 5178.960449, position_y = 4003.383545, position_z = -61.629902, spawndist = 7, MovementType = 1 WHERE guid = 520753;
UPDATE creature SET position_x = 5158.502930, position_y = 3988.499023, position_z = -61.798916, spawndist = 7, MovementType = 1 WHERE guid = 520751;
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE guid = 520284;

-- Softknuckle 28127
DELETE FROM dbscripts_on_relay WHERE id = 20780;
INSERT INTO dbscripts_on_relay (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20780,1,0,31,28213,255,0,0,0,0x08,0,0,0,0,0,0,0,0,'Part of Softknuckle 28127 EAI: script check - prevent double spawn'),
(20780,100,0,10,28213,300000,0,0,0,0x08,0,0,0,0,5114.435,3966.317,-56.11565,2.216568,'Part of Softknuckle 28127 EAI: summon 28213');

-- Hardknuckle Matriarch 28213
-- summoned
DELETE FROM creature_addon WHERE guid=521622;
DELETE FROM creature_movement WHERE Id=521622;
DELETE FROM game_event_creature WHERE guid=521622;
DELETE FROM game_event_creature_data WHERE guid=521622;
DELETE FROM creature_battleground WHERE guid=521622;
DELETE FROM creature_linking WHERE guid=521622
 OR master_guid=521622;
DELETE FROM creature WHERE guid=521622;
UPDATE creature_template SET MovementType = 2 WHERE entry IN (28213);
DELETE FROM creature_movement_template WHERE Entry IN (28213);
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(28213,1,5114.435,3966.317,-56.11565,2.216568,1,5),
(28213,2,5181.516,3972.203,-60.13863,100,0,0),
(28213,3,5177.994,4008.45,-61.42373,100,0,0),
(28213,4,5153.477,4032.832,-61.83991,100,0,0),
(28213,5,5138.581,4066.388,-61.46491,100,0,0),
(28213,6,5115.952,4065.072,-61.83991,100,0,0);

-- Sapphire Hive Queen 28087
UPDATE creature_template SET InhabitType = 4 WHERE entry = 28087;
UPDATE creature SET position_x = 4988.022, position_y = 4439.033, position_z = -131.7517, orientation = 2.932153, spawndist = 0, MovementType = 0 WHERE id = 28087;

-- Sapphire Hive Wasp 28086
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 28086; -- 90% of them are stationary .. everything else will be updated below
DELETE FROM creature_addon WHERE guid IN (520377,520380,520381,520382,520387,520390,520391);
DELETE FROM creature_movement WHERE Id IN (520377,520380,520381,520382,520387,520390,520391);
DELETE FROM game_event_creature WHERE guid IN (520377,520380,520381,520382,520387,520390,520391);
DELETE FROM game_event_creature_data WHERE guid IN (520377,520380,520381,520382,520387,520390,520391);
DELETE FROM creature_battleground WHERE guid IN (520377,520380,520381,520382,520387,520390,520391);
DELETE FROM creature_linking WHERE guid IN (520377,520380,520381,520382,520387,520390,520391) 
OR master_guid IN (520377,520380,520381,520382,520387,520390,520391);
DELETE FROM creature WHERE guid IN (520377,520380,520381,520382,520387,520390,520391);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(520377,28086,571,1,1,5102.547,4173.971,-74.29176,5.305801,300,300,0,0),
(520380,28086,571,1,1,5016.297,4076.915,-19.04415,0.2954216,300,300,0,0),
(520381,28086,571,1,1,5053.03,4141.298,-54.37347,3.700098,300,300,0,0),
(520382,28086,571,1,1,5025.812,4316.474,-35.76169,1.565143,300,300,0,0),
(520387,28086,571,1,1,4739.271,4395.413,-38.72338,3.281219,300,300,0,0),
(520390,28086,571,1,1,4730.643,4494.892,-40.30025,4.991642,300,300,0,0),
(520391,28086,571,1,1,5068.83,4153.258,-38.00907,0,300,300,0,3); -- CatmullRom
-- individual addons
DELETE FROM creature_addon WHERE guid IN (520627,520628,520629,520630,520631,520632,520633,520634);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES 
(520627,0,0,0,0,0,0,'29266'),
(520628,0,0,0,0,0,0,'29266'),
(520629,0,0,0,0,0,0,'29266'),
(520630,0,0,0,0,0,0,'29266'),
(520631,0,0,0,0,0,0,'29266'),
(520632,0,0,0,0,0,0,'29266'),
(520633,0,0,0,0,0,0,'29266'),
(520634,0,0,0,0,0,0,'29266');
UPDATE creature SET position_x = 5084.123, position_y = 4359.264, position_z = -65.12661, orientation = 5.497787, spawndist = 0, MovementType = 0 WHERE guid = 520650;
UPDATE creature SET position_x = 5083.101, position_y = 4287.411, position_z = -43.32595, spawndist = 0, MovementType = 3 WHERE guid = 520644; -- CatmullRom
UPDATE creature SET position_x = 4875.717, position_y = 4250.202, position_z = -40.13281, spawndist = 0, MovementType = 3 WHERE guid = 520651; -- CatmullRom
UPDATE creature SET position_x = 4939.598, position_y = 4139.068, position_z = -29.02286, spawndist = 0, MovementType = 3 WHERE guid = 520640; -- CatmullRom
-- waypoints
DELETE FROM creature_movement WHERE Id IN (520644,520391,520651,520640);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 520644
(520644,1,5083.101,4287.411,-43.32595,100,0,0),
(520644,2,5065.318,4258.768,-43.32595,100,0,0),
(520644,3,5007.839,4252.438,-43.32595,100,0,0),
(520644,4,4981.251,4276.26,-43.32595 ,100,0,0),
(520644,5,5008.417,4303.622,-43.32595,100,0,0),
(520644,6,5059.262,4306.766,-43.32595,100,0,0),
-- 520391
(520391,1,5068.83,4153.258,-38.00907,100,0,0),
(520391,2,5028.781,4160.93,-36.25915,100,0,0),
(520391,3,5023.019,4213.807,-35.5091,100,0,0),
(520391,4,5066.196,4244.922,-37.87021,100,0,0),
(520391,5,5102.799,4197.651,-40.89795,100,0,0),
-- 520651
(520651,1,4875.717,4250.202,-40.13281,100,0,0),
(520651,2,4892.114,4204.521,-39.68836,100,0,0),
(520651,3,4947.577,4217.527,-44.02172,100,0,0),
(520651,4,4964.918,4270.733,-44.02172,100,0,0),
(520651,5,4926.086,4306.289,-42.85502,100,0,0),
(520651,6,4875.699,4285.236,-43.07725,100,0,0),
-- 520640
(520640,1,4939.598,4139.068,-29.02286,100,0,0),
(520640,2,4896.458,4173.998,-30.38411,100,0,0),
(520640,3,4903.733,4207.013,-35.82854,100,0,0),
(520640,4,4940.302,4233.117,-35.82854,100,0,0),
(520640,5,4993.917,4224.557,-35.82854,100,0,0),
(520640,6,4998.557,4176.309,-32.49517,100,0,0),
(520640,7,4973.729,4146.288,-31.10626,100,0,0);
DELETE FROM creature_spawn_data WHERE guid IN (520644,520391,520651,520640);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(520644,1),(520391,1),(520651,1),(520640,1);

-- Sapphire Hive Drone 28085
DELETE FROM creature_addon WHERE guid IN (520402,520404,520406,520407,520408,520409,520410,520411,520414,520417,520418,520419,520420,520424,520425,520426);
DELETE FROM creature_movement WHERE Id IN (520402,520404,520406,520407,520408,520409,520410,520411,520414,520417,520418,520419,520420,520424,520425,520426);
DELETE FROM game_event_creature WHERE guid IN (520402,520404,520406,520407,520408,520409,520410,520411,520414,520417,520418,520419,520420,520424,520425,520426);
DELETE FROM game_event_creature_data WHERE guid IN (520402,520404,520406,520407,520408,520409,520410,520411,520414,520417,520418,520419,520420,520424,520425,520426);
DELETE FROM creature_battleground WHERE guid IN (520402,520404,520406,520407,520408,520409,520410,520411,520414,520417,520418,520419,520420,520424,520425,520426);
DELETE FROM creature_linking WHERE guid IN (520402,520404,520406,520407,520408,520409,520410,520411,520414,520417,520418,520419,520420,520424,520425,520426) 
OR master_guid IN (520402,520404,520406,520407,520408,520409,520410,520411,520414,520417,520418,520419,520420,520424,520425,520426);
DELETE FROM creature WHERE guid IN (520402,520404,520406,520407,520408,520409,520410,520411,520414,520417,520418,520419,520420,520424,520425,520426);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(520402,28085,571,1,1,5002.637,4325.293,-48.9155,0,300,300,0,0),
(520404,28085,571,1,1,5002.637,4325.293,-48.9155,0,300,300,0,0),
(520406,28085,571,1,1,5002.637,4325.293,-48.9155,0,300,300,0,0),
(520407,28085,571,1,1,5102.682,4198.218,-81.27229,0,300,300,0,0),
(520408,28085,571,1,1,5102.682,4198.218,-81.27229,0,300,300,0,0),
(520409,28085,571,1,1,5102.682,4198.218,-81.27229,0,300,300,0,0),
(520410,28085,571,1,1,4998.407,4288.053,-40.37927,0,300,300,0,0),
(520411,28085,571,1,1,4998.407,4288.053,-40.37927,0,300,300,0,0),
(520414,28085,571,1,1,4998.407,4288.053,-40.37927,0,300,300,0,0),
(520417,28085,571,1,1,4980.448,4074.755,-4.027405,0,300,300,0,0),
(520418,28085,571,1,1,4980.448,4074.755,-4.027405,0,300,300,0,0),
(520419,28085,571,1,1,4980.448,4074.755,-4.027405,0,300,300,0,0),
(520420,28085,571,1,1,5010.887,4242.565,-24.38045,0,300,300,0,0),
(520424,28085,571,1,1,5028.78,4680.979,1.861765,0,300,300,0,0),
(520425,28085,571,1,1,5028.78,4680.979,1.861765,0,300,300,0,0),
(520426,28085,571,1,1,5028.78,4680.979,1.861765,0,300,300,0,0);
-- Spawn Groups
-- group 1
DELETE FROM `spawn_group` WHERE id = 32541;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32541, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 1', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32541;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32541, 520402, 0),
(32541, 520404, 1),
(32541, 520406, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32541;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32541, 3, 2, 0, 32541, 2, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 32541;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32541,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId = 32541;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32541,1 ,5002.637,4325.293,-48.9155 ,100,0,0),
(32541,2 ,5002.199,4326.192,-48.9155 ,100,0,0),
(32541,3 ,5006.778,4316.222,-48.73987,100,0,0),
(32541,4 ,5040.143,4275.319,-53.57321,100,0,0),
(32541,5 ,5099.93,4263.995,-40.62877 ,100,0,0),
(32541,6 ,5169.019,4355.886,-66.351  ,100,0,0),
(32541,7 ,5196.381,4358.717,-66.96212,100,0,0),
(32541,8 ,5241.487,4305.265,-66.96212,100,0,0),
(32541,9 ,5254.937,4247.185,-66.96212,100,0,0),
(32541,10,5254.781,4276.123,-65.46691,100,0,0),
(32541,11,5222.763,4286.479,-63.91553,100,0,0),
(32541,12,5146.983,4277.513,-60.44317,100,0,0),
(32541,13,5087.189,4270.749,-45.88769,100,0,0),
(32541,14,5020.289,4289.139,-48.9155 ,100,0,0),
(32541,15,5002.199,4326.192,-48.9155 ,100,0,0);
-- group 2
UPDATE creature SET position_x = 5020.779, position_y = 4319.441, position_z = -52.85098, spawndist = 0, MovementType = 0 WHERE guid IN (520556,520557,520558);
DELETE FROM `spawn_group` WHERE id = 32542;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32542, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 2', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32542;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32542, 520556, 0),
(32542, 520557, 1),
(32542, 520558, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32542;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32542, 3, 2, 0, 32542, 2, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 2');
DELETE FROM `waypoint_path_name` WHERE PathId = 32542;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32542,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 2');
DELETE FROM `waypoint_path` WHERE PathId = 32542;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32542,1 ,5020.779,4319.441,-52.85098,100,0,0),
(32542,2 ,5044.975,4311.095,-53.57321,100,0,0),
(32542,3 ,5070.199,4375.286,-40.62877,100,0,0),
(32542,4 ,5099.526,4423.799,-66.351  ,100,0,0),
(32542,5 ,5118.942,4481.29,-66.96212 ,100,0,0),
(32542,6 ,5090.995,4449.904,-67.18697,100,0,0),
(32542,7 ,5071.371,4403.331,-54.93696,100,0,0),
(32542,8 ,5060.991,4346.471,-46.15918,100,0,0),
(32542,9 ,5053.147,4312.71,-54.79807 ,100,0,0),
(32542,10,5014.968,4325.505,-53.18696,100,0,0);
-- group 3
UPDATE creature SET position_x = 5017.462, position_y = 4300.402, position_z = -84.96822, spawndist = 0, MovementType = 0 WHERE guid IN (520609,520610,520611);
DELETE FROM `spawn_group` WHERE id = 32543;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32543, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 3', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32543;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32543, 520609, 0),
(32543, 520610, 1),
(32543, 520611, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32543;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32543, 3, 2, 0, 32543, 4, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 3'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 32543;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32543,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 3');
DELETE FROM `waypoint_path` WHERE PathId = 32543;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32543,1,5017.462,4300.402,-84.96822,100,0,0),
(32543,2,5048.723,4326.588,-84.27931,100,0,0),
(32543,3,5054.09,4331.078,-85.02931 ,100,0,0),
(32543,4,5054.856,4331.721,-85.02931,100,0,0),
(32543,5,5050.241,4352.208,-79.84698,100,0,0),
(32543,6,5043.462,4384.828,-74.17358,100,0,0);
-- group 4
UPDATE creature SET position_x = 5072.827, position_y = 4250.31, position_z = -49.97196, spawndist = 0, MovementType = 0 WHERE guid IN (520567,520568,520569);
DELETE FROM `spawn_group` WHERE id = 32544;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32544, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 4', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32544;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32544, 520567, 0),
(32544, 520568, 1),
(32544, 520569, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32544;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32544, 3, 2, 0, 32544, 2, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 4');
DELETE FROM `waypoint_path_name` WHERE PathId = 32544;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32544,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 4');
DELETE FROM `waypoint_path` WHERE PathId = 32544;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32544,1,5072.827,4250.31,-49.97196 ,100,0,0),
(32544,2,5031.521,4190.533,-49.97196,100,0,0),
(32544,3,4993.202,4226.004,-49.97196,100,0,0),
(32544,4,5001.688,4292.706,-49.97196,100,0,0);
-- group 5
UPDATE creature SET position_x = 5075.234, position_y = 4325.642, position_z = -82.71622, spawndist = 0, MovementType = 0 WHERE guid IN (520606,520607,520608);
DELETE FROM `spawn_group` WHERE id = 32545;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32545, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 5', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32545;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32545, 520606, 0),
(32545, 520607, 1),
(32545, 520608, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32545;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32545, 3, 2, 0, 32545, 4, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 5'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 32545;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32545,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 5');
DELETE FROM `waypoint_path` WHERE PathId = 32545;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32545,1,5075.234,4325.642,-82.71622,100,0,0),
(32545,2,5072.703,4298.773,-75.84122,100,0,0),
(32545,3,5082.053,4270.725,-75.46622,100,0,0),
(32545,4,5076.808,4246.818,-76.0026 ,100,0,0),
(32545,5,5087.134,4233.321,-72.32821,100,0,0),
(32545,6,5095.87,4221.915,-76.82821 ,100,0,0);
-- group 6
UPDATE creature SET position_x = 5079.613, position_y = 4277.886, position_z = -44.38786, spawndist = 0, MovementType = 0 WHERE guid IN (520573,520574,520575);
DELETE FROM `spawn_group` WHERE id = 32546;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32546, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 6', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32546;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32546, 520573, 0),
(32546, 520574, 1),
(32546, 520575, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32546;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32546, 3, 2, 0, 32546, 2, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 6');
DELETE FROM `waypoint_path_name` WHERE PathId = 32546;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32546,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 6');
DELETE FROM `waypoint_path` WHERE PathId = 32546;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32546,1,5079.613,4277.886,-44.38786,100,0,0),
(32546,2,5080.277,4205.226,-36.27674,100,0,0),
(32546,3,5020.093,4211.659,-36.36007,100,0,0),
(32546,4,5011.027,4273.704,-44.38786,100,0,0);
-- group 7
UPDATE creature SET position_x = 5110.503, position_y = 4310.772, position_z = -41.37334, spawndist = 0, MovementType = 0 WHERE guid IN (520550,520551,520552);
DELETE FROM `spawn_group` WHERE id = 32547;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32547, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 7', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32547;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32547, 520550, 0),
(32547, 520551, 1),
(32547, 520552, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32547;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32547, 3, 2, 0, 32547, 2, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 7');
DELETE FROM `waypoint_path_name` WHERE PathId = 32547;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32547,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 7');
DELETE FROM `waypoint_path` WHERE PathId = 32547;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32547,1,5110.503,4310.772,-41.37334,100,0,0),
(32547,2,5107.401,4261.192,-45.09555,100,0,0),
(32547,3,5075.264,4186.481,-41.37334,100,0,0),
(32547,4,5019.273,4278.96,-51.59556,100,0,0),
(32547,5,5080.073,4318.104,-41.37334,100,0,0);
-- group 8
UPDATE creature SET position_x = 5102.682, position_y = 4198.218, position_z = -81.27229, spawndist = 0, MovementType = 0 WHERE guid IN (520407,520408,520409);
DELETE FROM `spawn_group` WHERE id = 32548;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32548, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 8', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32548;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32548, 520407, 0),
(32548, 520408, 1),
(32548, 520409, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32548;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32548, 3, 2, 0, 32548, 4, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 8'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 32548;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32548,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 8');
DELETE FROM `waypoint_path` WHERE PathId = 32548;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32548,1,5102.682,4198.218,-81.27229,100,0,0),
(32548,2,5088.62,4197.392,-82.27351,100,0,0),
(32548,3,5064.66,4204.033,-82.35399,100,0,0),
(32548,4,5036.595,4209.761,-83.47899,100,0,0),
(32548,5,5003.932,4210.67,-83.59311,100,0,0);
-- group 9
UPDATE creature SET position_x = 5014.761, position_y = 4273.954, position_z = -84.59322, spawndist = 0, MovementType = 0 WHERE guid IN (520612,520613,520614);
DELETE FROM `spawn_group` WHERE id = 32549;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32549, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 9', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32549;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32549, 520612, 0),
(32549, 520613, 1),
(32549, 520614, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32549;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32549, 3, 2, 0, 32549, 2, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 9');
DELETE FROM `waypoint_path_name` WHERE PathId = 32549;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32549,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 9');
DELETE FROM `waypoint_path` WHERE PathId = 32549;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32549,1,5014.761,4273.954,-84.59322,100,0,0),
(32549,2,5020.323,4242.454,-81.3795 ,100,0,0),
(32549,3,5049.475,4239.045,-83.0117 ,100,0,0),
(32549,4,5055.183,4275.399,-82.79951,100,0,0),
(32549,5,5043.205,4295.906,-83.04951,100,0,0);
-- group 10
UPDATE creature SET position_x = 4907.31, position_y = 4267.417, position_z = -78.42643, spawndist = 0, MovementType = 0 WHERE guid IN (520603,520604,520605);
DELETE FROM `spawn_group` WHERE id = 32550;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32550, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 10', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32550;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32550, 520603, 0),
(32550, 520604, 1),
(32550, 520605, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32550;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32550, 3, 2, 0, 32550, 4, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 10'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 32550;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32550,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 10');
DELETE FROM `waypoint_path` WHERE PathId = 32550;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32550,1,4907.31,4267.417,-78.42643,100,0,0),
(32550,2,4915.276,4291.992,-82.92643,100,0,0),
(32550,3,4937.795,4288.363,-83.81261,100,0,0),
(32550,4,4949.672,4289.955,-82.81261,100,0,0),
(32550,5,4970.487,4292.745,-83.42213,100,0,0),
(32550,6,4979.983,4313.242,-83.51762,100,0,0);
-- group 11
UPDATE creature SET position_x = 4973.933, position_y = 4446.575, position_z = -129.3822, spawndist = 0, MovementType = 0 WHERE guid IN (520546,520547,520576);
DELETE FROM `spawn_group` WHERE id = 32551;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32551, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 11', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32551;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32551, 520546, 0),
(32551, 520547, 1),
(32551, 520576, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32551;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32551, 3, 2, 0, 32551, 4, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 11'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 32551;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32551,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 11');
DELETE FROM `waypoint_path` WHERE PathId = 32551;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32551,1,4973.933,4446.575,-129.3822,100,0,0),
(32551,2,4943.6,4445.485,-124.722,100,0,0),
(32551,3,4927.523,4431.369,-124.4701,100,0,0),
(32551,4,4934.78,4411.275,-122.3451,100,0,0),
(32551,5,4940.698,4410.76,-121.4944,100,0,0),
(32551,6,4951.856,4409.788,-119.1264,100,0,0),
(32551,7,4957.872,4409.264,-119.9521,100,0,0),
(32551,8,4962.393,4408.87,-120.2451,100,0,0),
(32551,9,4964.136,4408.718,-120.3657,100,0,0);
-- group 12
UPDATE creature SET position_x = 4933.589, position_y = 4435.456, position_z = -72.40157, spawndist = 0, MovementType = 0 WHERE guid IN (520594,520595,520596);
DELETE FROM `spawn_group` WHERE id = 32552;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32552, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 12', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32552;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32552, 520594, 0),
(32552, 520595, 1),
(32552, 520596, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32552;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32552, 3, 2, 0, 32552, 4, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 12'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 32552;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32552,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 12');
DELETE FROM `waypoint_path` WHERE PathId = 32552;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32552,1,4933.589,4435.456,-72.40157,100,0,0),
(32552,2,4938.618,4388.009,-66.45499,100,0,0),
(32552,3,4942.885,4365.414,-61.82888,100,0,0),
(32552,4,4945.761,4350.115,-61.20388,100,0,0),
(32552,5,4927.946,4321.715,-73.06843,100,0,0),
(32552,6,4944.643,4309.708,-78.5439 ,100,0,0);
-- group 13
UPDATE creature SET position_x = 4911.274, position_y = 4206.232, position_z = -24.60511, spawndist = 0, MovementType = 0 WHERE guid IN (520553,520554,520555);
DELETE FROM `spawn_group` WHERE id = 32553;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32553, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 13', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32553;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32553, 520553, 0),
(32553, 520554, 1),
(32553, 520555, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32553;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32553, 3, 2, 0, 32553, 2, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 13');
DELETE FROM `waypoint_path_name` WHERE PathId = 32553;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32553,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 13');
DELETE FROM `waypoint_path` WHERE PathId = 32553;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32553,1,4911.274,4206.232,-24.60511,100,0,0),
(32553,2,4926.756,4111.928,-5.29955,100,0,0),
(32553,3,5023.579,4161.569,-25.63288,100,0,0),
(32553,4,5049.39,4185.145,-27.46622,100,0,0),
(32553,5,4999.664,4228.146,-39.85511,100,0,0);
-- group 14
UPDATE creature SET position_x = 4936.084, position_y = 4219.787, position_z = -81.23304, spawndist = 0, MovementType = 0 WHERE guid IN (520600,520601,520602);
DELETE FROM `spawn_group` WHERE id = 32554;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32554, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 14', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32554;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32554, 520600, 0),
(32554, 520601, 1),
(32554, 520602, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32554;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32554, 3, 2, 0, 32554, 2, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 14');
DELETE FROM `waypoint_path_name` WHERE PathId = 32554;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32554,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 14');
DELETE FROM `waypoint_path` WHERE PathId = 32554;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32554,1,4936.084,4219.787,-81.23304,100,0,0),
(32554,2,4976.206,4238.374,-81.89825,100,0,0),
(32554,3,4987.537,4257.544,-84.14825,100,0,0),
(32554,4,4961.461,4275.754,-84.06261,100,0,0),
(32554,5,4933.544,4245.99,-81.39619 ,100,0,0);
-- group 15
DELETE FROM `spawn_group` WHERE id = 32555;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32555, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 15', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32555;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32555, 520410, 0),
(32555, 520411, 1),
(32555, 520414, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32555;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32555, 3, 2, 0, 32555, 2, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 15');
DELETE FROM `waypoint_path_name` WHERE PathId = 32555;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32555,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 15');
DELETE FROM `waypoint_path` WHERE PathId = 32555;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32555,1,4998.407,4288.053,-40.37927,100,0,0),
(32555,2,5070.737,4264.85,-38.87926 ,100,0,0),
(32555,3,5028.22,4207.275,-34.76815 ,100,0,0),
(32555,4,4965.372,4190.627,-34.76815,100,0,0),
(32555,5,4943.978,4244.221,-34.76815,100,0,0);
-- group 16
DELETE FROM `spawn_group` WHERE id = 32556;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32556, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 16', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32556;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32556, 520417, 0),
(32556, 520418, 1),
(32556, 520419, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32556;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32556, 3, 2, 0, 32556, 2, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 16');
DELETE FROM `waypoint_path_name` WHERE PathId = 32556;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32556,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 16');
DELETE FROM `waypoint_path` WHERE PathId = 32556;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32556,1 ,4980.448,4074.755,-4.027405,100,0,0),
(32556,2 ,4994.831,4109.579,-2.414357,100,0,0),
(32556,3 ,5010.439,4162.144,-2.414357,100,0,0),
(32556,4 ,4993.8,4226.438,-38.13657  ,100,0,0),
(32556,5 ,4992.137,4278.705,-46.46992,100,0,0),
(32556,6 ,4987.289,4324.862,-45.44215,100,0,0),
(32556,7 ,4990.415,4315.515,-49.54962,100,0,0),
(32556,8 ,5014.45,4253.967,-50.49408 ,100,0,0),
(32556,9 ,5050.807,4174.558,-17.60515,100,0,0),
(32556,10,5017.929,4103.535,-7.072595,100,0,0);
-- group 17
UPDATE creature SET position_x = 5010.887, position_y = 4242.565, position_z = -24.38045, spawndist = 0, MovementType = 0 WHERE guid IN (520562,520563,520420);
DELETE FROM `spawn_group` WHERE id = 32557;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32557, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 17', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32557;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32557, 520562, 0),
(32557, 520563, 1),
(32557, 520420, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32557;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32557, 3, 2, 0, 32557, 2, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 17');
DELETE FROM `waypoint_path_name` WHERE PathId = 32557;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32557,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 17');
DELETE FROM `waypoint_path` WHERE PathId = 32557;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32557,1,5010.887,4242.565,-24.38045,100,0,0),
(32557,2,4888.21,4272.306,-24.38045 ,100,0,0),
(32557,3,4893.202,4224.808,-24.38045,100,0,0),
(32557,4,4921.955,4177.2,-24.38045  ,100,0,0),
(32557,5,4988.135,4165.612,-24.38045,100,0,0);
-- group 18
UPDATE creature SET position_x = 4844.565, position_y = 4272.218, position_z = -42.23193, spawndist = 0, MovementType = 0 WHERE guid IN (520597,520598,520599);
DELETE FROM `spawn_group` WHERE id = 32558;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32558, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 18', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32558;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32558, 520597, 0),
(32558, 520598, 1),
(32558, 520599, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32558;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32558, 3, 2, 0, 32558, 2, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 18');
DELETE FROM `waypoint_path_name` WHERE PathId = 32558;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32558,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 18');
DELETE FROM `waypoint_path` WHERE PathId = 32558;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32558,1,4844.565,4272.218,-42.23193,100,0,0),
(32558,2,4856.214,4296.021,-49.10693,100,0,0),
(32558,3,4856.946,4321.676,-51.99996,100,0,0),
(32558,4,4870.038,4345.854,-56.74276,100,0,0),
(32558,5,4876.217,4358.418,-57.49276,100,0,0),
(32558,6,4880.631,4367.393,-58.22227,100,0,0),
(32558,7,4883.222,4372.657,-58.72227,100,0,0),
(32558,8,4885.065,4406.69,-60.73599 ,100,0,0);
-- group 19
UPDATE creature SET position_x = 4916.618, position_y = 4681.096, position_z = -32.7159, spawndist = 0, MovementType = 0 WHERE guid IN (520564,520565,520566);
DELETE FROM `spawn_group` WHERE id = 32559;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32559, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 19', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32559;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32559, 520564, 0),
(32559, 520565, 1),
(32559, 520566, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32559;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32559, 3, 2, 0, 32559, 2, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 19');
DELETE FROM `waypoint_path_name` WHERE PathId = 32559;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32559,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 19');
DELETE FROM `waypoint_path` WHERE PathId = 32559;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32559,1 ,4916.618,4681.096,-32.7159,100,0,0),
(32559,2 ,4969.025,4708.955,-46.43816,100,0,0),
(32559,3 ,5025.48,4692.735,-60.02157,100,0,0),
(32559,4 ,5053.596,4680.749,-68.99379,100,0,0),
(32559,5 ,5084.707,4640.418,-80.54938,100,0,0),
(32559,6 ,5096.221,4584.704,-78.6883,100,0,0),
(32559,7 ,5070.799,4530.558,-54.16037,100,0,0),
(32559,8 ,5014.469,4495.913,-42.52145,100,0,0),
(32559,9 ,4952.527,4486.896,-38.24366,100,0,0),
(32559,10,4893.802,4503.269,-32.88253,100,0,0),
(32559,11,4858.266,4561.13,-31.66031,100,0,0),
(32559,12,4867.447,4629.522,-30.1881,100,0,0);
-- group 20
UPDATE creature SET position_x = 4804.26, position_y = 4470.69, position_z = -58.03729, spawndist = 0, MovementType = 0 WHERE guid IN (520582,520583,520584);
DELETE FROM `spawn_group` WHERE id = 32560;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32560, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 20', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32560;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32560, 520582, 0),
(32560, 520583, 1),
(32560, 520584, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32560;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32560, 3, 2, 0, 32560, 2, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 20');
DELETE FROM `waypoint_path_name` WHERE PathId = 32560;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32560,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 20');
DELETE FROM `waypoint_path` WHERE PathId = 32560;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32560,1 ,4804.26,4470.69,-58.03729,100,0,0),
(32560,2 ,4826.972,4425.921,-57.03728,100,0,0),
(32560,3 ,4830.703,4383.079,-55.17613,100,0,0),
(32560,4 ,4819.916,4350.413,-50.25944,100,0,0),
(32560,5 ,4795.706,4321.648,-47.6856 ,100,0,0),
(32560,6 ,4803.614,4330.432,-46.81986,100,0,0),
(32560,7 ,4819.557,4355.022,-48.95877,100,0,0),
(32560,8 ,4830.708,4394.117,-53.04214,100,0,0),
(32560,9 ,4818.15,4446.595,-54.95887 ,100,0,0),
(32560,10,4789.123,4500.799,-53.59771,100,0,0);
-- group 21
UPDATE creature SET position_x = 4822.417, position_y = 4563.569, position_z = -62.45734, spawndist = 0, MovementType = 0 WHERE guid IN (520591,520592,520593);
DELETE FROM `spawn_group` WHERE id = 32561;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32561, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 21', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32561;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32561, 520591, 0),
(32561, 520592, 1),
(32561, 520593, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32561;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32561, 3, 2, 0, 32561, 4, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 21'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 32561;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32561,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 21');
DELETE FROM `waypoint_path` WHERE PathId = 32561;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32561,1,4822.417,4563.569,-62.45734,100,0,0),
(32561,2,4827.738,4528.068,-63.62299,100,0,0),
(32561,3,4848.827,4494.432,-64.42863,100,0,0),
(32561,4,4888.949,4472.828,-66.5888 ,100,0,0),
(32561,5,4921.898,4468.713,-71.08053,100,0,0);
-- group 22
UPDATE creature SET position_x = 4740.17, position_y = 4246.344, position_z = -16.02317, spawndist = 0, MovementType = 0 WHERE guid IN (520548,520577,520578);
DELETE FROM `spawn_group` WHERE id = 32562;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32562, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 22', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32562;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32562, 520548, 0),
(32562, 520577, 1),
(32562, 520578, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32562;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32562, 3, 2, 0, 32562, 4, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 22'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 32562;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32562,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 22');
DELETE FROM `waypoint_path` WHERE PathId = 32562;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32562,1 ,4740.17,4246.344,-16.02317 ,100,0,0),
(32562,2 ,4756.937,4258.651,-21.27317,100,0,0),
(32562,3 ,4757.28,4286.005,-27.66216 ,100,0,0),
(32562,4 ,4751.892,4313.786,-43.70028,100,0,0),
(32562,5 ,4759.365,4341.533,-47.79268,100,0,0),
(32562,6 ,4759.822,4347.516,-46.91768,100,0,0),
(32562,7 ,4760.051,4350.507,-46.16768,100,0,0),
(32562,8 ,4760.279,4353.498,-45.41768,100,0,0),
(32562,9 ,4761.041,4363.469,-44.79268,100,0,0),
(32562,10,4761.422,4368.454,-44.16256,100,0,0),
(32562,11,4762.117,4377.584,-47.41256,100,0,0),
(32562,12,4749.611,4398.264,-47.28756,100,0,0);
-- group 23
DELETE FROM `spawn_group` WHERE id = 32563;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32563, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 23', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32563;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32563, 520424, 0),
(32563, 520425, 1),
(32563, 520426, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32563;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32563, 3, 2, 0, 32563, 2, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 23');
DELETE FROM `waypoint_path_name` WHERE PathId = 32563;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32563,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 23');
DELETE FROM `waypoint_path` WHERE PathId = 32563;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32563,1 ,5028.78,4680.979,1.861765 ,100,0,0),
(32563,2 ,5002.378,4686.915,1.861765,100,0,0),
(32563,3 ,4943.917,4684.968,1.861765,100,0,0),
(32563,4 ,4900.949,4649.646,1.861765,100,0,0),
(32563,5 ,4875.145,4611.798,1.861765,100,0,0),
(32563,6 ,4865.788,4553.84,1.861765 ,100,0,0),
(32563,7 ,4913.313,4493.152,1.861765,100,0,0),
(32563,8 ,4969.278,4492.751,1.861765,100,0,0),
(32563,9 ,5045.389,4523.042,1.861765,100,0,0),
(32563,10,5078.478,4576.022,1.861765,100,0,0),
(32563,11,5077.286,4650.569,1.861765,100,0,0);
-- group 24
UPDATE creature SET position_x = 4789.149, position_y = 4572.695, position_z = -59.65247, spawndist = 0, MovementType = 0 WHERE guid IN (520585,520586,520587);
DELETE FROM `spawn_group` WHERE id = 32564;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32564, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 24', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32564;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32564, 520585, 0),
(32564, 520586, 1),
(32564, 520587, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32564;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32564, 3, 2, 0, 32564, 4, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 24'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 32564;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32564,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 24');
DELETE FROM `waypoint_path` WHERE PathId = 32564;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32564,1,4789.149,4572.695,-59.65247,100,0,0),
(32564,2,4792.582,4594.102,-58.71836,100,0,0),
(32564,3,4800.17,4630.251,-58.71836 ,100,0,0),
(32564,4,4799.065,4675.612,-59.88504,100,0,0),
(32564,5,4789.401,4732.325,-62.24615,100,0,0),
(32564,6,4789.802,4786.182,-62.57954,100,0,0),
(32564,7,4822.999,4807.211,-63.35728,100,0,0);
-- group 25
UPDATE creature SET position_x = 4756.107, position_y = 4818.278, position_z = -67.38346, spawndist = 0, MovementType = 0 WHERE guid IN (520618,520545,520549);
DELETE FROM `spawn_group` WHERE id = 32565;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32565, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 25', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32565;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32565, 520618, 0),
(32565, 520545, 1),
(32565, 520549, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32565;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32565, 3, 2, 0, 32565, 4, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 25'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 32565;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32565,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 25');
DELETE FROM `waypoint_path` WHERE PathId = 32565;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32565,1,4756.107,4818.278,-67.38346,100,0,0),
(32565,2,4761.855,4801.228,-68.63346,100,0,0),
(32565,3,4762.726,4785.685,-69.06566,100,0,0),
(32565,4,4757.821,4764.469,-68.38517,100,0,0),
(32565,5,4766.37,4744.67,-68.7674,100,0,0),
(32565,6,4762.64,4715.14,-66.7573,100,0,0),
(32565,7,4752.358,4695.661,-61.61516,100,0,0),
(32565,8,4754.085,4669.825,-61.99016,100,0,0),
(32565,9,4760.934,4648.48,-61.62798,100,0,0);
-- group 26
UPDATE creature SET position_x = 4835.101, position_y = 4639.826, position_z = -64.60135, spawndist = 0, MovementType = 0 WHERE guid IN (520579,520580,520581);
DELETE FROM `spawn_group` WHERE id = 32566;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32566, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 26', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32566;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32566, 520579, 0),
(32566, 520580, 1),
(32566, 520581, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32566;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32566, 3, 2, 0, 32566, 4, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 26'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 32566;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32566,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 26');
DELETE FROM `waypoint_path` WHERE PathId = 32566;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32566,1,4835.101,4639.826,-64.60135,100,0,0),
(32566,2,4833.268,4604.254,-63.50662,100,0,0),
(32566,3,4839.412,4578.991,-63.69352,100,0,0),
(32566,4,4844.993,4559.014,-65.79906,100,0,0);
-- group 27
UPDATE creature SET position_x = 4920.82, position_y = 4762.737, position_z = -81.82165, spawndist = 0, MovementType = 0 WHERE guid IN (520588,520589,520590);
DELETE FROM `spawn_group` WHERE id = 32567;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32567, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 27', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32567;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32567, 520588, 0),
(32567, 520589, 1),
(32567, 520590, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32567;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32567, 3, 2, 0, 32567, 4, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 27'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 32567;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32567,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 27');
DELETE FROM `waypoint_path` WHERE PathId = 32567;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32567,1,4920.82,4762.737,-81.82165 ,100,0,0),
(32567,2,4890.551,4743.261,-75.68582,100,0,0),
(32567,3,4893.712,4720.615,-73.63714,100,0,0),
(32567,4,4884.702,4694.276,-71.26365,100,0,0),
(32567,5,4867.192,4671.278,-68.26365,100,0,0);
-- group 28
UPDATE creature SET position_x = 4941.599, position_y = 4812.828, position_z = -91.48145, spawndist = 0, MovementType = 0 WHERE guid IN (520570,520571,520572);
DELETE FROM `spawn_group` WHERE id = 32568;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32568, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 28', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32568;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32568, 520570, 0),
(32568, 520571, 1),
(32568, 520572, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32568;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32568, 3, 2, 0, 32568, 4, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 28'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 32568;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32568,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 28');
DELETE FROM `waypoint_path` WHERE PathId = 32568;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32568,1,4941.599,4812.828,-91.48145,100,0,0),
(32568,2,4946.243,4831.114,-90.65855,100,0,0),
(32568,3,4954.081,4862.177,-93.31429,100,0,0),
(32568,4,4957.731,4876.543,-95.41595,100,0,0),
(32568,5,4970.125,4911.411,-100.8458,100,0,0),
(32568,6,4994.251,4926.262,-103.7208,100,0,0),
(32568,7,5014.409,4951.733,-108.3815,100,0,0);
-- group 29
UPDATE creature SET position_x = 4758.094, position_y = 4454.147, position_z = -60.52105, spawndist = 0, MovementType = 0 WHERE guid IN (520615,520616,520617);
DELETE FROM `spawn_group` WHERE id = 32569;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32569, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 29', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32569;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32569, 520615, 0),
(32569, 520616, 1),
(32569, 520617, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32569;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32569, 3, 2, 0, 32569, 4, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 29'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 32569;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32569,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 29');
DELETE FROM `waypoint_path` WHERE PathId = 32569;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32569,1,4758.094,4454.147,-60.52105,100,0,0),
(32569,2,4758.125,4495.637,-61.22179,100,0,0),
(32569,3,4753.512,4516.009,-58.20261,100,0,0),
(32569,4,4751.44,4525.563,-57.03389 ,100,0,0),
(32569,5,4757.662,4562.866,-57.81196,100,0,0),
(32569,6,4742.79,4587.09,-51.7034,100,0,0);
-- group 30
UPDATE creature SET position_x = 5034.852, position_y = 5045.786, position_z = -111.2647, spawndist = 0, MovementType = 0 WHERE guid IN (520559,520560,520561);
DELETE FROM `spawn_group` WHERE id = 32570;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32570, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 30', 0, 0, 0, 1);
DELETE FROM `spawn_group_spawn` WHERE id = 32570;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32570, 520559, 0),
(32570, 520560, 1),
(32570, 520561, 2);
DELETE FROM `spawn_group_formation` WHERE id = 32570;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(32570, 3, 2, 0, 32570, 4, 'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 30'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 32570;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(32570,'Sholazar Basin - Sapphire Hive Drone 28085 x3 - Patrol 30');
DELETE FROM `waypoint_path` WHERE PathId = 32570;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(32570,1 ,5034.852,5045.786,-111.2647,100,0,0),
(32570,2 ,5022.82,5064.22,-107.2884,100,0,0),
(32570,3 ,4991.313,5043.729,-103.7621,100,0,0),
(32570,4 ,4949.784,5035.696,-101.3626,100,0,0),
(32570,5 ,4917.63,5033.36,-97.712,100,0,0),
(32570,6 ,4904.84,5006.67,-95.272,100,0,0),
(32570,7 ,4891.03,4988.17,-93.6083,100,0,0),
(32570,8 ,4882.73,4972.05,-94.1083,100,0,0),
(32570,9 ,4874.2,4929.75,-94.199,100,0,0),
(32570,10,4861.93,4897.41,-86.8722,100,0,0);

-- Serfex the Reaver 28083
DELETE FROM creature_addon WHERE guid IN (520428,520429,520430);
DELETE FROM creature_movement WHERE Id IN (520428,520429,520430);
DELETE FROM game_event_creature WHERE guid IN (520428,520429,520430);
DELETE FROM game_event_creature_data WHERE guid IN (520428,520429,520430);
DELETE FROM creature_battleground WHERE guid IN (520428,520429,520430);
DELETE FROM creature_linking WHERE guid IN (520428,520429,520430) 
OR master_guid IN (520428,520429,520430);
DELETE FROM creature WHERE guid IN (520428,520429,520430);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(520428,28083,571,1,1,4775.083,4684.838,-68.16202,0.8925187,300,300,0,0),
(520429,28083,571,1,1,4856.273,4394.056,-61.92804,0.5759587,300,300,0,0),
(520430,28083,571,1,1,4820.1,4760.937,-75.98487,3.298672,300,300,0,0);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 520544; -- idle
DELETE FROM `spawn_group` WHERE id = 32571;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32571, 'Sholazar Basin - Serfex the Reaver 28083', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 32571;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32571, 520544, -1),
(32571, 520428, -1),
(32571, 520429, -1),
(32571, 520430, -1);