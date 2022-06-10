/*
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 1.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 2.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 3.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 4.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 5.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 6.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 7.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 8.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 1927.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 2057.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 2395.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 3254.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 3513.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 5768.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 6883.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10000.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10001.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10002.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10003.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10004.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10005.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10006.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10007.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10008.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 10009.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 14872.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 18397.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 19001.`
Table `waypoint_path` has no defined name in `waypoint_path_name` for path 92287.`
*/


-- Path name added
DELETE FROM `waypoint_path_name` WHERE `PathId` IN (1,2,3,4,5,6,7,8,1927,2057,2395,3254,3513,5768,6883,10000,10001,10002,10003,10004,10005,10006,10007,10008,10009,14872,18397,19001,92287);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(1,'Stormwind - Kimberly Grant | Kelly Grant Patrol'),
(2,'Alterac Mountains - Frostwolf Battleguard (2) Patrol 000'),
(3,'Hillsbrad Foothills - Tarren Mill - Tarren Mill Deathguard (2) Patrol 000'),
(4,'Searing Gorge - Dark Iron Slaver (2) Patrol 000'),
(5,'Searing Gorge - Dark Iron Slaver (2) Patrol 001'),
(6,'Searing Gorge - Dark Iron Slaver (2) Patrol 002'),
(7,'Searing Gorge - Dark Iron Taskmaster | Dark Iron Slaver (3) Patrol 000'),
(8,'Eastern Plaguelands - Light\'s Hope Chapel - Argent Rider (2) Patrol 000'),
(1927,'Stranglethorn Vale (Ruins of Zul\'Kunda) - c.guid (1927,1926)'),
(2057,'Stranglethorn Vale (Ruins of Zul\'Kunda) - c.guid (2057,2056)'),
(2395,'Stranglethorn Vale (Ruins of Zul\'Kunda) - c.guid (2395,2396)'),
(3254,'Durotar - Raider Jhash and Raider Kerr'),
(3513,'Miss Danna - Fanned out behind formation - Stormwind tour w/ school children'),
(5768,'Searing Gorge - Shadowsilk Poacher <The Undermarket> Patrol (c.id 8442)'),
(6883,'Kargath Expeditionary Force c.entry 9082,9083,9084,9085,9086 & Linked to 9077 for RP'),
(10000,'Kalimdor - Mulgore - Galak Centaur | Galak Outrunner (2) Patrol 000'),
(10001,'Kalimdor - Mulgore - Galak Centaur | Galak Outrunner (2) Patrol 001'),
(10002,'Kalimdor - Mulgore - Galak Centaur | Galak Outrunner (2) Patrol 002'),
(10003,'Kalimdor - Mulgore - Kodo Calf | Kodo Bull | Kodo Matriarch (4) Patrol 000'),
(10004,'Kalimdor - Mulgore - Kodo Calf | Kodo Bull | Kodo Matriarch (4) Patrol 001'),
(10005,'Kalimdor - Mulgore - Kodo Calf | Kodo Bull | Kodo Matriarch (5) Patrol 000'),
(10006,'Kalimdor - Mulgore - Kodo Calf | Kodo Bull | Kodo Matriarch (5) Patrol 001'),
(10007,'Kalimdor - Mulgore - Kodo Calf | Kodo Bull | Kodo Matriarch (5) Patrol 002'),
(10008,'Silithus - Cenarion Hold - Cenarion Hold Infantry (2) Patrol 000'),
(10009,'Silithus - Cenarion Hold - Cenarion Hold Infantry (2) Patrol 001'),
(14872,'The Barrens - Trok and Swarm of bees'),
(18397,'Redridge Mountains (Stonewatch) - Tharil\'zun (486)'),
(19001,'Blasted Lands (The Tainted Scar) - Felguard Elite & Manahound (3) Patrol 000'),
(92287,'Eastern Plaguelands - Crimson Courier (c.id 13118, 12337)');

-- ------------------------------
-- WOTLKDB update ONLY
-- ------------------------------
-- Reapplied mixedup spawn_groups
DELETE FROM `creature` WHERE `guid` IN (42895, 42896);
DELETE FROM `creature_movement` WHERE (`id` = 42895);
DELETE FROM `creature_linking` WHERE (`guid` = 42896);
DELETE FROM `waypoint_path` WHERE `PathId` = 10008;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(10008, '01', '-6886.19433593750', '893.58953857421875', '29.85743141174316406', '100', '0', '0'),
(10008, '02', '-6885.69628906250', '875.66674804687500', '33.88318634033203125', '100', '0', '0'),
(10008, '03', '-6875.41162109375', '856.72509765625000', '36.65996551513671875', '100', '0', '0'),
(10008, '04', '-6865.23291015625', '835.85430908203125', '40.14589691162109375', '100', '0', '0'),
(10008, '05', '-6853.87207031250', '808.16729736328125', '42.77117919921875000', '100', '0', '0'),
(10008, '06', '-6842.17333984375', '789.61029052734375', '42.80141830444335937', '100', '0', '0'),
(10008, '07', '-6833.73046875000', '771.60076904296875', '43.68960189819335937', '100', '0', '0'),
(10008, '08', '-6827.97119140625', '750.58386230468750', '42.77940750122070312', '100', '0', '0'),
(10008, '09', '-6816.82275390625', '733.69891357421875', '41.72349929809570312', '100', '0', '0'),
(10008, '10', '-6808.96582031250', '716.48217773437500', '39.17466735839843750', '100', '0', '0'),
(10008, '11', '-6803.82812500000', '699.70977783203125', '34.71686935424804687', '100', '0', '0'),
(10008, '12', '-6802.73144531250', '671.53961181640625', '23.50117111206054687', '100', '0', '0');
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(42895, '0', '1', '1', '0', '0', '-6870.93603515625', '897.3962402343750', '30.20238304138183593', '3.490658521652221679', '300', '300', '0', '0', '1', '0', '0', '0'),
(42896, '0', '1', '1', '0', '0', '-6866.91259765625', '899.2886962890625', '31.40401268005371093', '3.560471534729003906', '300', '300', '0', '0', '1', '0', '0', '0');
DELETE FROM `creature_spawn_entry` WHERE `Guid` IN (42895,42896);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(42895, '15184'),
(42896, '15184');
DELETE FROM `spawn_group` WHERE `Id` = 10008;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(10008, 'Silithus - Cenarion Hold - Cenarion Hold Infantry (2) Patrol 000', '0', '0', '0', '0');
DELETE FROM `spawn_group_spawn` WHERE `Id` = 10008;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(10008, 42895, '0'),
(10008, 42896, '1');
DELETE FROM `spawn_group_formation` WHERE `Id` = 10008;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(10008, '1', '6', '0', 10008, 4, 'Silithus - Cenarion Hold - Cenarion Hold Infantry (2) Patrol 000');

SET @PATH_ID := 19001;
SET @GROUP_ID := 19001;
SET @CREATURE_0 := 2791;
SET @CREATURE_1 := 2792;
SET @CREATURE_2 := 2793;
DELETE FROM `spawn_group` WHERE `Id` = @GROUP_ID;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@GROUP_ID, 'Blasted Lands (The Tainted Scar) - Felguard Elite & Manahound (3) Patrol 000', '0', '0', '0', '0');
DELETE FROM `spawn_group_spawn` WHERE `Id` = @GROUP_ID;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@GROUP_ID, @CREATURE_0, '0'),
(@GROUP_ID, @CREATURE_1, '1'),
(@GROUP_ID, @CREATURE_2, '2');
DELETE FROM `spawn_group_formation` WHERE `Id` = @GROUP_ID;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(@GROUP_ID, 3, 4, 0, @PATH_ID, 2, 'Blasted Lands (The Tainted Scar) - Felguard Elite & Manahound (3) Patrol 000');
DELETE FROM `waypoint_path` WHERE `PathId` = @PATH_ID;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(@PATH_ID, 1, -11924.9, -2665.26, -4.13615, 100, 0, 0),
(@PATH_ID, 2, -11909.2, -2663.06, -1.0627, 100, 0, 0),
(@PATH_ID, 3, -11895.7, -2655.5, -3.25965, 100, 0, 0),
(@PATH_ID, 4, -11870.4, -2635.81, -4.30517, 100, 0, 0),
(@PATH_ID, 5, -11859.3, -2624.18, -3.70689, 100, 0, 0),
(@PATH_ID, 6, -11838.4, -2615.14, -2.88186, 100, 0, 0),
(@PATH_ID, 7, -11825.5, -2608.6, 0.51049, 100, 0, 0),
(@PATH_ID, 8, -11816.3, -2589.04, -0.734763, 100, 0, 0),
(@PATH_ID, 9, -11802.1, -2572.28, -1.98653, 100, 0, 0),
(@PATH_ID, 10, -11788, -2564.39, -1.59518, 100, 0, 0),
(@PATH_ID, 11, -11766.8, -2552.84, 0.0904483, 100, 0, 0),
(@PATH_ID, 12, -11746.4, -2528.44, -1.45359, 100, 0, 0),
(@PATH_ID, 13, -11730.3, -2510.74, -2.84845, 100, 0, 0),
(@PATH_ID, 14, -11720.2, -2499.1, -3.38654, 100, 0, 0),
(@PATH_ID, 15, -11691.2, -2468.83, -3.09698, 100, 0, 0),
(@PATH_ID, 16, -11710.1, -2484.09, -4.26825, 100, 0, 0),
(@PATH_ID, 17, -11719.3, -2496.71, -3.6583, 100, 0, 0),
(@PATH_ID, 18, -11734.5, -2514.51, -2.24706, 100, 0, 0),
(@PATH_ID, 19, -11754.2, -2539.78, -0.342065, 100, 0, 0),
(@PATH_ID, 20, -11771.6, -2555.61, -0.526829, 100, 0, 0),
(@PATH_ID, 21, -11793, -2566.86, -2.02095, 100, 0, 0),
(@PATH_ID, 22, -11806.5, -2575.26, -1.93057, 100, 0, 0),
(@PATH_ID, 23, -11817, -2594.04, 0.0304065, 100, 0, 0),
(@PATH_ID, 24, -11829.8, -2611.83, -0.246485, 100, 0, 0),
(@PATH_ID, 25, -11843.8, -2615.82, -4.05847, 100, 0, 0),
(@PATH_ID, 26, -11862.8, -2628.29, -4.00317, 100, 0, 0),
(@PATH_ID, 27, -11880.8, -2643.74, -3.55695, 100, 0, 0),
(@PATH_ID, 28, -11899.5, -2658.56, -2.71281, 100, 0, 0),
(@PATH_ID, 29, -11914, -2663.74, -1.67681, 100, 0, 0),
(@PATH_ID, 30, -11936.6, -2669.59, -7.28362, 100, 0, 0),
(@PATH_ID, 31, -11952, -2669.04, -10.1938, 100, 0, 0),
(@PATH_ID, 32, -11958.3, -2665.27, -10.8756, 100, 0, 0),
(@PATH_ID, 33, -11976.6, -2651.97, -12.5223, 100, 0, 0),
(@PATH_ID, 34, -11989.2, -2648.87, -21.5704, 100, 0, 0),
(@PATH_ID, 35, -11997.1, -2647.67, -21.4651, 100, 0, 0),
(@PATH_ID, 36, -12010.6, -2650.97, -24.6536, 100, 0, 0),
(@PATH_ID, 37, -12016.5, -2664.62, -22.0722, 100, 0, 0),
(@PATH_ID, 38, -12012.6, -2690.81, -5.74008, 100, 0, 0),
(@PATH_ID, 39, -12013.3, -2712.04, 3.35226, 100, 0, 0),
(@PATH_ID, 40, -12023, -2722.75, 4.73668, 100, 0, 0),
(@PATH_ID, 41, -12058.6, -2725.86, 4.35547, 100, 0, 0),
(@PATH_ID, 42, -12042.8, -2727.22, 4.47039, 100, 0, 0),
(@PATH_ID, 43, -12021, -2721.75, 4.41762, 100, 0, 0),
(@PATH_ID, 44, -12012.9, -2709.81, 3.12055, 100, 0, 0),
(@PATH_ID, 45, -12015.4, -2677.05, -17.3785, 100, 0, 0),
(@PATH_ID, 46, -12016.3, -2662.64, -22.7659, 100, 0, 0),
(@PATH_ID, 47, -12014.8, -2655.16, -24.2672, 100, 0, 0),
(@PATH_ID, 48, -12002.5, -2647.93, -23.1457, 100, 0, 0),
(@PATH_ID, 49, -11987.5, -2649.12, -19.97, 100, 0, 0),
(@PATH_ID, 50, -11974.4, -2652.73, -12.2078, 100, 0, 0),
(@PATH_ID, 51, -11961.4, -2660.57, -11.5603, 100, 0, 0),
(@PATH_ID, 52, -11949.5, -2669.58, -9.83856, 100, 0, 0),
(@PATH_ID, 53, -11934.4, -2668.76, -6.60297, 100, 0, 0);
