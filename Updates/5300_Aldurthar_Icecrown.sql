-- Aldur'thar - Icecrown

-- Bone Sentinel 32299
UPDATE creature SET position_x = 8163.7197, position_y = 2316.5386, position_z = 607.3064, spawndist = 0, MovementType = 4 WHERE guid = 532364; -- linear
UPDATE creature SET position_x = 7840.782, position_y = 2058.3586, position_z = 499.77698, spawndist = 0, MovementType = 4 WHERE guid = 532361; -- linear
UPDATE creature SET position_x = 7727.9956, position_y = 2059.3748, position_z = 499.91733, spawndist = 0, MovementType = 4 WHERE guid = 532359; -- linear
UPDATE creature SET position_x = 7599.019, position_y = 2060.56, position_z = 500.11172, spawndist = 0, MovementType = 4 WHERE guid = 532360; -- linear
DELETE FROM creature_movement WHERE id IN (532364,532361,532359,532360);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 532364
(532364,1,8163.7197,2316.5386,607.3064,100,1000,0),
(532364,2,8183.3413,2347.8872,606.9727,100,0,0),
(532364,3,8206.127,2385.4429,606.9728,100,0,0),
(532364,4,8227.331,2421.1917,606.9728,100,0,0),
(532364,5,8248.283,2456.6184,606.9728,100,1000,0),
-- 532361
(532361,1,7840.782,2058.3586,499.77698,100,1000,0),
(532361,2,7862.693,2058.197,499.7514,100,0,0),
(532361,3,7895.474,2057.9482,499.75546,100,0,0),
(532361,4,7913.7163,2057.8875,499.90268,100,1000,0),
-- 532359
(532359,1,7727.9956,2059.3748,499.91733,100,1000,0),
(532359,2,7763.329,2059.0479,499.75238,100,0,0),
(532359,3,7782.3315,2058.9265,499.7792,100,1000,0),
-- 532360
(532360,1,7599.019,2060.56,500.11172,100,1000,0),
(532360,2,7631.027,2060.287,499.7549,100,0,0),
(532360,3,7644.152,2059.9734,499.7587,100,0,0),
(532360,4,7663.4688,2059.8079,499.76282,100,0,0),
(532360,5,7676.7334,2059.73,499.78363,100,1000,0);

-- Aldur'thar Channel Bunny 32264
UPDATE creature_template SET InhabitType = 4 WHERE entry = 32264;

-- Shadow Channeler 32262
DELETE FROM creature_addon WHERE guid BETWEEN 525723 AND 525727;
DELETE FROM creature_movement WHERE id BETWEEN 525723 AND 525727;
DELETE FROM game_event_creature WHERE guid BETWEEN 525723 AND 525727;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 525723 AND 525727;
DELETE FROM creature_battleground WHERE guid BETWEEN 525723 AND 525727;
DELETE FROM creature_linking WHERE guid BETWEEN 525723 AND 525727;
DELETE FROM creature where guid BETWEEN 525723 AND 525727;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(525723,32262,571,1,1,8164.2812,2059.0122,550.68005,3.708334,300,300,0,0),
(525724,32262,571,1,1,8139.309,2064.5034,550.6801,5.2969,300,300,0,0),
(525725,32262,571,1,1,8194.63,2063.6553,550.6801,0.6981316,300,300,0,0),
(525726,32262,571,1,1,8200.356,2050.9856,550.6801,1.4311699,300,300,0,0),
(525727,32262,571,1,1,8210.668,2058.8687,550.6801,1.8675,300,300,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 32262);
DELETE FROM creature_template_addon WHERE entry IN (32262);
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(32262,0,0,1,0,0,0,NULL);
DELETE FROM `creature_spawn_data` WHERE guid IN (532233,532237,525723,525724,532235,532236,532238,532240,532234,532239);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(532233,80),(532237,80),(525723,80),(525724,80),
(532234,81),(532235,81),(532236,81),(532238,81),(532239,81),(532240,81);
DELETE FROM dbscripts_on_relay WHERE id IN (20849,20850);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20849,1,31,32264,30,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Shadow Channeler 32262 EAI: search for 32264'),
(20849,100,15,60309,0,0,32264,30,1,0,0,0,0,0,0,0,0,'Part of Shadow Channeler 32262 EAI: cast 60309'),
(20850,1,31,32264,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Shadow Channeler 32262 EAI: search for 32264'),
(20850,100,15,60452,0,0,32264,20,1,0,0,0,0,0,0,0,0,'Part of Shadow Channeler 32262 EAI: cast 60452');

-- Void Summoner 32259 & Enslaved Minion 32260
DELETE FROM creature_addon WHERE guid BETWEEN 525728 AND 525732;
DELETE FROM creature_movement WHERE id BETWEEN 525728 AND 525732;
DELETE FROM game_event_creature WHERE guid BETWEEN 525728 AND 525732;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 525728 AND 525732;
DELETE FROM creature_battleground WHERE guid BETWEEN 525728 AND 525732;
DELETE FROM creature_linking WHERE guid BETWEEN 525728 AND 525732;
DELETE FROM creature where guid BETWEEN 525728 AND 525732;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(525728,32259,571,1,1,8176.857,2063.4253,550.72174,0,300,300,0,0),
(525729,32260,571,1,1,8176.857,2063.4253,550.72174,0,300,300,0,0),
(525730,32259,571,1,1,8263.768,2009.8583,550.72076,0,300,300,0,0),
(525731,32260,571,1,1,8263.768,2009.8583,550.72076,0,300,300,0,0),
(525732,32259,571,1,1,8252.332,2037.1814,550.7218,0,300,300,0,0);
-- Spawn GROUPS
-- Group 1
UPDATE creature SET position_x = 8116.693, position_y = 2026.9883, position_z = 550.1785, spawndist = 0, MovementType = 0 WHERE guid IN (532221,532228);
DELETE FROM `spawn_group` WHERE id IN (34065);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34065,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 1', 0, 0, 0, 0x10);
DELETE FROM `spawn_group_spawn` WHERE id IN (34065);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34065, 532221, 0),
(34065, 532228, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34065);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34065, 2, 5, 0, 34065, 4,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 1');
DELETE FROM `waypoint_path` WHERE PathId IN (34065);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34065,1,8116.693,2026.9883,550.1785,100,1000,0),
(34065,2,8121.8584,2023.6406,550.2983,100,0,0),
(34065,3,8126.011,2020.8351,550.4255,100,0,0),
(34065,4,8129.972,2018.5547,550.3111,100,0,0),
(34065,5,8135.454,2015.7837,550.33606,100,0,0),
(34065,6,8140.9443,2014.3942,550.5443,100,0,0),
(34065,7,8147.244,2014.0569,550.5045,100,0,0),
(34065,8,8153.4253,2014.5416,550.4634,100,0,0),
(34065,9,8162.424,2016.6979,550.5045,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34065);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34065,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 1');
-- Group 2
UPDATE creature SET position_x = 8108.461, position_y = 2076.0754, position_z = 550.477, spawndist = 0, MovementType = 0 WHERE guid IN (532220,532229);
DELETE FROM `spawn_group` WHERE id IN (34066);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34066,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 2', 0, 0, 0, 0x10);
DELETE FROM `spawn_group_spawn` WHERE id IN (34066);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34066, 532220, 0),
(34066, 532229, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34066);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34066, 2, 5, 0, 34066, 4,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 2');
DELETE FROM `waypoint_path` WHERE PathId IN (34066);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34066,1,8108.461,2076.0754,550.477,100,1000,0),
(34066,2,8105.8584,2069.9255,550.477,100,0,0),
(34066,3,8104.6035,2062.8098,550.33386,100,0,0),
(34066,4,8104.6743,2055.6694,550.3439,100,0,0),
(34066,5,8105.3447,2047.3438,550.4227,100,0,0),
(34066,6,8107.057,2041.3064,550.36316,100,0,0),
(34066,7,8109.6987,2036.1853,550.1953,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34066);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34066,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 2');
-- Group 3
DELETE FROM `spawn_group` WHERE id IN (34067);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34067,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 3', 0, 0, 0, 0x10);
DELETE FROM `spawn_group_spawn` WHERE id IN (34067);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34067, 525728, 0),
(34067, 525729, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34067);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34067, 2, 5, 0, 34067, 4,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 3');
DELETE FROM `waypoint_path` WHERE PathId IN (34067);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34067,1 ,8176.857,2063.4253,550.72174,100,1000,0),
(34067,2 ,8180.191,2054.4,550.72174    ,100,0,0),
(34067,3 ,8184.2056,2045.2583,550.72174,100,0,0),
(34067,4 ,8187.3604,2039.7383,550.72174,100,0,0),
(34067,5 ,8192.131,2031.7114,550.7089  ,100,0,0),
(34067,6 ,8196.663,2025.7448,550.7089  ,100,0,0),
(34067,7 ,8202.755,2024.8474,550.68463 ,100,0,0),
(34067,8 ,8208.84,2025.1805,550.68463  ,100,0,0),
(34067,9 ,8214.127,2026.2198,550.68463 ,100,0,0),
(34067,10,8218.952,2031.6007,550.68463 ,100,0,0),
(34067,11,8223.873,2037.0603,550.7218  ,100,0,0),
(34067,12,8227.532,2043.5237,550.7218  ,100,0,0),
(34067,13,8230.846,2051.932,550.7218   ,100,0,0),
(34067,14,8232.817,2059.5967,550.7218,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34067);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34067,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 3');
-- Group 4
UPDATE creature SET position_x = 8162.9316, position_y = 2019.9575, position_z = 550.5045, spawndist = 0, MovementType = 0 WHERE guid IN (532225,532230);
DELETE FROM `spawn_group` WHERE id IN (34068);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34068,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 4', 0, 0, 0, 0x10);
DELETE FROM `spawn_group_spawn` WHERE id IN (34068);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34068, 532225, 0),
(34068, 532230, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34068);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34068, 2, 5, 0, 34068, 4,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 4');
DELETE FROM `waypoint_path` WHERE PathId IN (34068);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34068,1,8162.9316,2019.9575,550.5045,100,1000,0),
(34068,2,8179.1484,2028.2057,550.7089,100,0,0),
(34068,3,8198.798,2034.2848,550.72174,100,0,0),
(34068,4,8220.967,2037.1755,550.7218 ,100,0,0),
(34068,5,8234.819,2039.8298,550.7218 ,100,0,0),
(34068,6,8244.023,2049.5806,550.7218,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34068);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34068,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 4');
-- Group 5
DELETE FROM `spawn_group` WHERE id IN (34069);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34069,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 5', 0, 0, 0, 0x10);
DELETE FROM `spawn_group_spawn` WHERE id IN (34069);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34069, 525730, 0),
(34069, 525731, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34069);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34069, 2, 5, 0, 34069, 4,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 5');
DELETE FROM `waypoint_path` WHERE PathId IN (34069);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34069,1,8263.768,2009.8583,550.72076,100,1000,0),
(34069,2,8259.325,2006.2224,550.72076,100,0,0),
(34069,3,8254.39,2003.3859,550.72076 ,100,0,0),
(34069,4,8247.904,2001.9241,550.72076,100,0,0),
(34069,5,8241.971,2003.6481,550.72076,100,0,0),
(34069,6,8236.626,2006.7654,550.72076,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34069);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34069,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 5');
-- Group 6
UPDATE creature SET position_x = 8252.332, position_y = 2037.1814, position_z = 550.7218, spawndist = 0, MovementType = 0 WHERE guid IN (532227);
DELETE FROM `spawn_group` WHERE id IN (34070);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34070,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 6', 0, 0, 0, 0x10);
DELETE FROM `spawn_group_spawn` WHERE id IN (34070);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34070, 525732, 0),
(34070, 532227, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34070);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34070, 2, 5, 0, 34070, 4,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 6');
DELETE FROM `waypoint_path` WHERE PathId IN (34070);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34070,1,8252.332,2037.1814,550.7218,100,1000,0),
(34070,2,8257.041,2035.5817,550.7218 ,100,0,0),
(34070,3,8260.2,2033.3755,550.7218   ,100,0,0),
(34070,4,8263.239,2031.202,550.72076 ,100,0,0),
(34070,5,8266.159,2026.6324,550.72076,100,0,0),
(34070,6,8267.055,2023.0458,550.72156,100,0,0),
(34070,7,8266.04,2018.4015,550.72076 ,100,0,0),
(34070,8,8263.367,2013.841,550.72076,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34070);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34070,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 6');
-- Group 7
UPDATE creature SET position_x = 8210.081, position_y = 2003.9506, position_z = 551.2875, spawndist = 0, MovementType = 0 WHERE guid IN (532223,532231);
DELETE FROM `spawn_group` WHERE id IN (34071);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34071,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 7', 0, 0, 0, 0x10);
DELETE FROM `spawn_group_spawn` WHERE id IN (34071);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34071, 532223, 0),
(34071, 532231, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34071);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34071, 2, 5, 0, 34071, 4,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 7');
DELETE FROM `waypoint_path` WHERE PathId IN (34071);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34071,1,8210.081,2003.9506,551.2875,100,1000,0),
(34071,2,8209.505,1978.4174,535.7703,100,0,0),
(34071,3,8208.381,1946.2731,514.8307,100,0,0),
(34071,4,8205.364,1937.7548,514.8307,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34071);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34071,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 7');
-- Group 8
UPDATE creature SET position_x = 8149.731, position_y = 1951.7028, position_z = 515.1524, spawndist = 0, MovementType = 0 WHERE guid IN (532222,532226);
DELETE FROM `spawn_group` WHERE id IN (34072);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34072,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 8', 0, 0, 0, 0x10);
DELETE FROM `spawn_group_spawn` WHERE id IN (34072);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34072, 532222, 0),
(34072, 532226, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34072);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34072, 2, 5, 0, 34072, 4,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 8');
DELETE FROM `waypoint_path` WHERE PathId IN (34072);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34072,1,8149.731,1951.7028,515.1524,100,1000,0),
(34072,2,8181.4673,1934.6803,514.8307,100,0,0),
(34072,3,8202.993,1917.2067,514.9169,100,0,0),
(34072,4,8217.148,1900.9015,514.7919,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34072);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34072,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 8');
-- Group 9
DELETE FROM `spawn_group` WHERE id IN (34073);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34073,'Icecrown - Aldur\'thar - Void Summoner 32259 & Enslaved Minion 32260 - Patrol 9 (static)', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id IN (34073);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34073, 532224, -1),
(34073, 532232, -1);

-- Cult Taskmaster 32268
UPDATE creature SET position_x = 8210.335, position_y = 1893.7001, position_z = 514.8924, spawndist = 0, MovementType = 2 WHERE guid IN (532256);
UPDATE creature SET position_x = 8198.0205, position_y = 1863.7213, position_z = 514.8924, spawndist = 0, MovementType = 2 WHERE guid IN (532257);
UPDATE creature SET position_x = 8178.547, position_y = 1875.983, position_z = 514.991, spawndist = 0, MovementType = 2 WHERE guid IN (532255);
UPDATE creature SET position_x = 8190.0645, position_y = 1839.0614, position_z = 515.0174, spawndist = 0, MovementType = 4 WHERE guid IN (532258); -- linear
DELETE FROM creature_movement WHERE id IN (532256,532257,532255,532258);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 532256
(532256,1,8210.335,1893.7001,514.8924,100,0,0),
(532256,2,8199.466,1884.1381,514.866 ,100,0,0),
(532256,3,8183.066,1882.4277,514.991 ,100,0,0),
(532256,4,8176.8047,1888.4403,514.91644,100,0,0),
(532256,5,8173.396,1898.8622,514.866 ,100,0,0),
(532256,6,8178.922,1908.8488,514.8924,100,0,0),
(532256,7,8186.151,1917.1617,514.8924,100,0,0),
(532256,8,8199.567,1914.127,514.8924 ,100,0,0),
(532256,9,8210.594,1907.1196,514.7919,100,0,0),
-- 532257
(532257,1,8198.0205,1863.7213,514.8924,100,0,0),
(532257,2,8197.531,1868.7656,514.991,100,0,0),
(532257,3,8203.055,1872.954,514.8924,100,0,0),
(532257,4,8212.02,1873.1211,514.8924,100,0,0),
(532257,5,8223.375,1868.313,514.8924,100,0,0),
(532257,6,8220.542,1859.1294,514.8924,100,0,0),
(532257,7,8216.583,1854.2252,514.8924,100,0,0),
(532257,8,8205.708,1849.2974,514.8924,100,0,0),
(532257,9,8199.297,1857.2648,514.8924,100,0,0),
-- 532255
(532255,1,8178.547,1875.983,514.991,100,0,0),
(532255,2,8166.4453,1870.8956,515.0226,100,0,0),
(532255,3,8162.4307,1860.1936,514.91394,100,0,0),
(532255,4,8165.2656,1848.1523,514.91394,100,0,0),
(532255,5,8175.6147,1844.0809,515.0174,100,0,0),
(532255,6,8186.041,1846.4216,515.0174,100,0,0),
(532255,7,8192.199,1854.6002,515.0174,100,0,0),
(532255,8,8193.554,1866.6007,515.0174,100,0,0),
(532255,9,8186.7524,1873.8856,514.991,100,0,0),
-- 532258
(532258,1,8190.0645,1839.0614,515.0174,100,1000,0),
(532258,2,8190.6216,1831.528,514.99115,100,0,0),
(532258,3,8191.384,1822.3932,514.86615,100,0,0),
(532258,4,8192.3955,1815.6769,514.86615,100,0,0),
(532258,5,8197.153,1811.2057,514.86615,100,0,0),
(532258,6,8203.674,1805.8356,514.8499,100,0,0),
(532258,7,8212.395,1800.9763,514.8499,100,1000,0);

-- Cult Blackguard 32276
DELETE FROM creature_addon WHERE guid = 525733;
DELETE FROM creature_movement WHERE id = 525733;
DELETE FROM game_event_creature WHERE guid = 525733;
DELETE FROM game_event_creature_data WHERE guid = 525733;
DELETE FROM creature_battleground WHERE guid = 525733;
DELETE FROM creature_linking WHERE guid = 525733;
DELETE FROM creature where guid = 525733;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(525733,32276,571,1,1,8029.403,2172.713,499.81757,3.019419,300,300,0,0);
UPDATE creature SET position_x = 8102.0303, position_y = 1956.5829, position_z = 500.30652, spawndist = 0, MovementType = 4 WHERE guid IN (532281); -- linear
UPDATE creature SET position_x = 8085.9863, position_y = 1997.0736, position_z = 499.7285, spawndist = 0, MovementType = 4 WHERE guid IN (532285); -- linear
UPDATE creature SET position_x = 7997.5234, position_y = 2027.3275, position_z = 500.29648, spawndist = 0, MovementType = 4 WHERE guid IN (532274); -- linear
UPDATE creature SET position_x = 8058.8594, position_y = 2066.3855, position_z = 499.72913, spawndist = 0, MovementType = 4 WHERE guid IN (532286); -- linear
UPDATE creature SET position_x = 8037.5957, position_y = 2100.3743, position_z = 499.7269, spawndist = 0, MovementType = 4 WHERE guid IN (532284); -- linear
UPDATE creature SET position_x = 8010.762, position_y = 2236.626, position_z = 499.7207, spawndist = 0, MovementType = 4 WHERE guid IN (532279); -- linear
UPDATE creature SET position_x = 7965.012, position_y = 2193.5784, position_z = 500.30872, spawndist = 0, MovementType = 4 WHERE guid IN (532278); -- linear
UPDATE creature SET position_x = 7998.779785, position_y = 1946.473145, position_z = 502.233948, spawndist = 10, MovementType = 1 WHERE guid = 532276;
DELETE FROM creature_movement WHERE id IN (532281,532285,532274,532286,532284,532279,532278);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 532281
(532281,1,8102.0303,1956.5829,500.30652,100,1000,0),
(532281,2,8092.4844,1959.7986,500.3065,100,0,0),
(532281,3,8080.0254,1963.9777,500.3065,100,0,0),
(532281,4,8071.068,1967.4673,500.30646,100,0,0),
(532281,5,8061.685,1969.9106,500.30646,100,0,0),
(532281,6,8052.3457,1968.9419,500.30646,100,1000,0),
-- 532285
(532285,1,8085.9863,1997.0736,499.7285,100,1000,0),
(532285,2,8074.144,1997.3984,499.72797 ,100,0,0),
(532285,3,8075.6606,1989.3815,499.72803,100,0,0),
(532285,4,8083,1984.3568,500.09705     ,100,0,0),
(532285,5,8088.3784,1982.5686,500.03482,100,0,0),
(532285,6,8094.2285,1980.3208,500.05682,100,0,0),
(532285,7,8100.191,1977.8097,500.14746 ,100,0,0),
(532285,8,8105.1,1976.0973,500.11197,100,1000,0),
-- 532274
(532274,1,7997.5234,2027.3275,500.29648,100,1000,0),
(532274,2,8003.617,2021.3066,500.3065 ,100,0,0),
(532274,3,8010.778,2015.6852,500.3065 ,100,0,0),
(532274,4,8016.596,2010.6484,500.3065 ,100,0,0),
(532274,5,8023.455,2005.6445,500.3065 ,100,0,0),
(532274,6,8029.269,2002.0521,500.3065 ,100,0,0),
(532274,7,8033.8774,1999.8585,500.3065,100,0,0),
(532274,8,8042.678,1995.0367,500.30652,100,1000,0),
-- 532286
(532286,1,8058.8594,2066.3855,499.72913,100,1000,0),
(532286,2,8047.237,2070.9248,499.7267,100,0,0),
(532286,3,8041.808,2065.595,499.72577,100,0,0),
(532286,4,8033.993,2062.029,499.7287,100,0,0),
(532286,5,8026.258,2059.4285,499.72864,100,0,0),
(532286,6,8016.7554,2056.602,499.72824,100,0,0),
(532286,7,8009.4946,2056.0059,499.72827,100,0,0),
(532286,8,8000.7266,2053.3655,499.7283,100,1000,0),
-- 532284
(532284,1,8037.5957,2100.3743,499.7269,100,1000,0),
(532284,2,8024.7256,2094.007,499.7284,100,0,0),
(532284,3,8016.4272,2090.4236,499.72763,100,0,0),
(532284,4,8004.973,2084.1477,499.7286,100,0,0),
(532284,5,7996.752,2080.4597,499.71848,100,0,0),
(532284,6,7989.5635,2078.169,499.7184,100,0,0),
(532284,7,7984.335,2077.0835,499.71835,100,1000,0),
-- 532279
(532279,1 ,8010.762,2236.626,499.7207,100,1000,0),
(532279,2 ,8007.7676,2229.799,499.72058,100,0,0),
(532279,3 ,8004.568,2222.0828,499.72195,100,0,0),
(532279,4 ,8002.9453,2218.4421,499.72137,100,0,0),
(532279,5 ,8000.0894,2211.429,499.72073,100,0,0),
(532279,6 ,7997.4565,2204.9163,499.71506,100,0,0),
(532279,7 ,7994.518,2196.1055,499.71475,100,0,0),
(532279,8 ,7992.606,2189.338,499.7146,100,0,0),
(532279,9 ,7990.482,2181.9028,499.71442,100,0,0),
(532279,10,7987.979,2173.2405,499.7151,100,1000,0),
-- 532278
(532278,1,7965.012,2193.5784,500.30872,100,1000,0),
(532278,2,7967.752,2204.3499,500.30872,100,0,0),
(532278,3,7971.737,2215.132,500.30878,100,0,0),
(532278,4,7976.2544,2227.9954,500.30878,100,0,0),
(532278,5,7981.3003,2238.3655,500.30875,100,0,0),
(532278,6,7987.8306,2254.4304,500.30878,100,0,0),
(532278,7,7993.481,2267.3853,500.27618,100,1000,0);

-- Vile Torturer 32279
UPDATE creature SET position_x = 7993.4473, position_y = 2116.9043, position_z = 499.71884, spawndist = 0, MovementType = 4 WHERE guid IN (532300); -- linear
UPDATE creature SET position_x = 8019.0244, position_y = 2139.4807, position_z = 499.73276, orientation = 3.9968, spawndist = 0, MovementType = 4 WHERE guid IN (532293); -- linear
UPDATE creature SET position_x = 7963.429199, position_y = 2117.129639, position_z = 500.311401, spawndist = 0, MovementType = 4 WHERE guid = 532301;
UPDATE creature SET position_x = 8029.8604, position_y = 2037.007, position_z = 499.72836, orientation = 6.21337, spawndist = 0, MovementType = 4 WHERE guid = 532299;
UPDATE creature SET position_x = 8068.0547, position_y = 2029.2537, position_z = 499.72885, orientation = 3.63028, spawndist = 0, MovementType = 4 WHERE guid = 532296;
UPDATE creature SET position_x = 8040.462, position_y = 2021.681, position_z = 499.72836, orientation = 1.256637, spawndist = 0, MovementType = 4 WHERE guid = 532295;
DELETE FROM creature_movement WHERE id IN (532300,532293,532301,532299,532296,532295);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 532300
(532300,1,7993.4473,2116.9043,499.71884,100,1000,0),
(532300,2,7998.02,2123.4485,499.71927,100,0,0),
(532300,3,7996.869,2133.673,499.71524,100,0,0),
(532300,4,7996.915,2143.904,499.7151,100,0,0),
(532300,5,7998.338,2150.2485,499.7151,100,0,0),
(532300,6,7997.4517,2157.1384,499.71558,100,0,0),
(532300,7,7994.269,2162.4482,499.71512,100,0,0),
(532300,8,7998.509,2170.764,499.71555,100,0,0),
(532300,9,8001.4185,2178.7393,499.7228,100,1000,0),
-- 532293
(532293,1,8019.0244,2139.4807,499.73276,3.9968,120000,0),
(532293,2,8009.5205,2142.4812,499.98254,100,0,0),
(532293,3,8011.7705,2151.7312,499.98254,100,0,0),
(532293,4,8014.5166,2149.9817,499.73236,100,10000,3227902),
-- 532301
(532301,1,7963.429199,2117.129639,500.311401,100,1000,3227901),
(532301,2,7977.342,2099.7922,499.71866,100,10000,3227902),
-- 532299
(532299,1,8029.8604,2037.007,499.72836,6.21337,180000,0),
(532299,2,8037.0967,2037.1624,499.97836,100,0,0),
(532299,3,8038.0967,2045.6624,499.97836,100,0,0),
(532299,4,8023.5967,2046.6624,499.97836,100,0,0),
(532299,5,8010.3325,2042.8177,499.72836,4.15093,10000,3227902),
-- 532296
(532296,1,8068.0547,2029.2537,499.72885,3.63028,2400000,0),
(532296,2,8063.13,2027.85,499.729,100,0,0),
(532296,3,8063.56,2022.17,499.729,100,0,0),
(532296,4,8079.22,2017.63,499.729,100,10000,3227902),
-- 532295
(532295,1,8040.462,2021.681,499.72836,1.256637,190000,0),
(532295,2,8043.21,2026.26,499.728,100,0,0),
(532295,3,8049.41,2024.93,499.728,100,0,0),
(532295,4,8049.66,2009.78,499.728,100,10000,3227902);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3227901,3227902);
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) values
(3227901,1000,20,1,10,110000,0,0,12,0,0,0,0,0,0,0,0,'temp randommovent around currect loc'),
(3227902,1000,1,153,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3227902,5000,31,32275,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 32275'),
(3227902,5100,0,0,0,0,32275,20,7,32622,0,0,0,0,0,0,0,'buddy say'),
(3227902,7000,1,153,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote');
UPDATE `broadcast_text` SET `ChatTypeID` = 2 WHERE `Id` IN (32622);

-- Wracked Prisoner 32275
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (532273,532264,532265);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (532273,532264,532265);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES 
(532273,0,0,1,0,0,0,'29266'),
(532264,0,0,1,0,0,0,'29266'),
(532265,0,0,1,0,0,0,'29266');

-- Cult Alchemist 32290
UPDATE creature SET position_x = 8052.474121, position_y = 2363.937256, position_z = 484.616882, spawndist = 10, MovementType = 1 WHERE guid = 532340;
UPDATE creature SET position_x = 8106.8794, position_y = 2348.6748, position_z = 484.8203, spawndist = 0, MovementType = 4 WHERE guid = 532342; -- linear
UPDATE creature SET position_x = 8041.849, position_y = 2371.6265, position_z = 484.92923, orientation = 2.43, spawndist = 0, MovementType = 2 WHERE guid = 532339;
UPDATE creature SET position_x = 8000.244629, position_y = 2345.050049, position_z = 483.883484, spawndist = 10, MovementType = 1 WHERE guid = 532341;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 532345;
DELETE FROM creature_movement WHERE id IN (532342,532339,532345);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 532342
(532342,1,8106.8794,2348.6748,484.8203,100,1000,0),
(532342,2,8091.8423,2353.7837,484.79807,100,0,0),
(532342,3,8080.53,2353.6218,484.79807,100,0,0),
(532342,4,8067.85,2346.2632,484.67307,100,0,0),
(532342,5,8055.657,2342.0527,484.72754,100,1000,0),
-- 532339
(532339,1,8041.849,2371.6265,484.92923,2.43,9000,3229001),
(532339,2,8031.0537,2391.862,483.87805,100,10000,3229002),
-- 532345
(532345,1,7992.8398,2367.6699,483.93499,6.166,10000,3229001),
(532345,2,7974.8647,2369.7834,483.93457,100,10000,3229002);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3229001,3229002);
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) values
(3229001,1000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3229001,7000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote'),
(3229002,1000,20,1,10,300000,0,0,12,0,0,0,0,0,0,0,0,'temp randommovent around currect loc');

-- Dark Subjugator 32236
DELETE FROM creature_addon WHERE guid IN (525734,525735);
DELETE FROM creature_movement WHERE id IN (525734,525735);
DELETE FROM game_event_creature WHERE guid IN (525734,525735);
DELETE FROM game_event_creature_data WHERE guid IN (525734,525735);
DELETE FROM creature_battleground WHERE guid IN (525734,525735);
DELETE FROM creature_linking WHERE guid IN (525734,525735);
DELETE FROM creature where guid IN (525734,525735);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(525734,32236,571,1,1,7485.3696,2115.4849,500.29648,4.2,300,300,0,4),
(525735,32236,571,1,1,7472.5894,2079.7898,499.7283,2.7227,300,300,0,4);
UPDATE creature SET position_x = 7499.9707, position_y = 2003.2338, position_z = 500.29645, spawndist = 0, MovementType = 4 WHERE guid = 531932; -- linear
UPDATE creature SET position_x = 7521.9365, position_y = 2061.7473, position_z = 499.72836, spawndist = 0, MovementType = 4 WHERE guid = 531935; -- linear
UPDATE creature SET position_x = 7550.007, position_y = 2084.2034, position_z = 500.29648, spawndist = 0, MovementType = 4 WHERE guid = 531940; -- linear
UPDATE creature SET position_x = 7496.99, position_y = 2058.46, position_z = 499.71838, orientation = 6.01083, spawndist = 0, MovementType = 4 WHERE guid = 531931; -- linear
UPDATE creature SET position_x = 7520.605, position_y = 2110.6636, position_z = 500.3112, orientation = 0.78539, spawndist = 0, MovementType = 4 WHERE guid = 531933; -- linear
DELETE FROM creature_movement WHERE id IN (531932,531935,525734,531940,531931,531933,525735);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 531932
(531932,1,7499.9707,2003.2338,500.29645,100,1000,0),
(531932,2,7505.9575,2013.7604,500.29648,100,0,0),
(531932,3,7515.5356,2023.8416,500.2965,100,0,0),
(531932,4,7525.5938,2035.933,500.29645,100,0,0),
(531932,5,7535.9194,2043.8268,500.29654,100,0,0),
(531932,6,7543.585,2048.667,500.2965,100,1000,0),
-- 531935
(531935,1,7521.9365,2061.7473,499.72836,6.1959,15000,3223601),
(531935,2,7512.1777,2058.636,499.97336,100,0,0),
(531935,3,7494.4277,2043.886,499.97336,100,0,0),
(531935,4,7492.4185,2040.5248,499.72836,5.96902,15000,3223601),
-- 525734
(525734,1,7485.3696,2115.4849,500.29648,100,1000,0),
(525734,2,7478.1865,2121.3757,500.29648,100,0,0),
(525734,3,7466.1865,2128.5781,500.3005,100,0,0),
(525734,4,7455.143,2135.6567,500.29758,100,0,0),
(525734,5,7449.605,2139.287,500.29758,100,0,0),
(525734,6,7447.152,2141.534,500.29758,100,0,0),
(525734,7,7442.4834,2143.836,500.29758,100,0,0),
(525734,8,7433.6353,2148.387,500.29758,100,0,0),
(525734,9,7426.5947,2151.204,500.29758,100,1000,0),
-- 531940
(531940,1,7550.007,2084.2034,500.29648,100,1000,0),
(531940,2,7536.1,2092.7449,500.29648,100,0,0),
(531940,3,7524.7754,2093.7166,500.29648,100,0,0),
(531940,4,7515.2676,2094.22,500.29648,100,0,0),
(531940,5,7502.9497,2095.7673,500.29645,100,0,0),
(531940,6,7492.3716,2094.803,499.71832,100,1000,0),
-- 531931
(531931,1,7496.99,2058.46,499.71838,6.01083,15000,0),
(531931,2,7473.691,2064.967,499.7283,3.2288,18000,3223602),
-- 531933
(531933,1,7520.605,2110.6636,500.3112,0.78539,15000,3223601),
(531933,2,7510.1377,2111.2397,500.5612,100,0,0),
(531933,3,7481.8877,2131.2397,500.5612,100,0,0),
(531933,4,7481.671,2136.8157,500.3112,100,15000,3223601),
-- 525735
(525735,1,7472.5894,2079.7898,499.7283,2.7227,15000,3223601),
(525735,2,7475.783,2084.359,499.9783,100,0,0),
(525735,3,7470.283,2095.859,499.9783,100,0,0),
(525735,4,7458.533,2106.609,499.9783,100,0,0),
(525735,5,7452.4775,2105.4277,499.7283,4.18879,15000,3223601);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3223601,3223602);
INSERT INTO dbscripts_on_creature_movement(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) values
(3223601,1000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3223601,3000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3223602,1000,1,16,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3223602,3000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote');

-- Bitter Initiate 32238
DELETE FROM creature_addon WHERE guid BETWEEN 525736 AND 525741;
DELETE FROM creature_movement WHERE id BETWEEN 525736 AND 525741;
DELETE FROM game_event_creature WHERE guid BETWEEN 525736 AND 525741;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 525736 AND 525741;
DELETE FROM creature_battleground WHERE guid BETWEEN 525736 AND 525741;
DELETE FROM creature_linking WHERE guid BETWEEN 525736 AND 525741;
DELETE FROM creature where guid BETWEEN 525736 AND 525741;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(525736,32238,571,1,1,7487.41,2105.02,499.92,4.15361,300,300,10,1),
(525737,32238,571,1,1,7451.116,2102.4253,499.8117,1.22173,300,300,0,0),
(525738,32238,571,1,1,7445.625,2119.3958,499.81165,5.183627,300,300,0,0),
(525739,32238,571,1,1,7482.309,2139.7751,500.39453,4.62512,300,300,0,0),
(525740,32238,571,1,1,7439.402,2162.2356,500.39453,1.972222,300,300,0,0),
(525741,32238,571,1,1,7416.3213,2154.9734,500.39453,2.93215,300,300,0,0);
-- individual addon
DELETE FROM creature_addon WHERE guid IN (525740,525741);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES 
(525740,0,0,1,0,69,0,NULL),
(525741,0,0,1,0,69,0,NULL);
UPDATE creature SET position_x = 7530.331055, position_y = 2023.724731, position_z = 500.296509, spawndist = 10, MovementType = 1 WHERE guid = 531945;

-- Cult Researcher 32297
DELETE FROM creature_addon WHERE guid BETWEEN 525742 AND 525751;
DELETE FROM creature_movement WHERE id BETWEEN 525742 AND 525751;
DELETE FROM game_event_creature WHERE guid BETWEEN 525742 AND 525751;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 525742 AND 525751;
DELETE FROM creature_battleground WHERE guid BETWEEN 525742 AND 525751;
DELETE FROM creature_linking WHERE guid BETWEEN 525742 AND 525751;
DELETE FROM creature where guid BETWEEN 525742 AND 525751;

DELETE FROM creature_addon WHERE guid BETWEEN 527823 AND 527834;
DELETE FROM creature_movement WHERE id BETWEEN 527823 AND 527834;
DELETE FROM game_event_creature WHERE guid BETWEEN 527823 AND 527834;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 527823 AND 527834;
DELETE FROM creature_battleground WHERE guid BETWEEN 527823 AND 527834;
DELETE FROM creature_linking WHERE guid BETWEEN 527823 AND 527834;
DELETE FROM creature where guid BETWEEN 527823 AND 527834;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(525742,32297,571,1,1,8130.5806,2144.5227,499.82007,6.2657318,300,300,0,0),
(525743,32297,571,1,1,8138.077,2142.1206,499.82007,2.51327,300,300,0,0),
(525744,32297,571,1,1,8136.771,2149.1987,499.82007,4.450589,300,300,0,0),
(525745,32297,571,1,1,8144.9697,2100.359,499.8201,4.7822,300,300,0,0),
(525746,32297,571,1,1,8133.1885,2100.5093,499.8201,4.66,300,300,0,0),
(525747,32297,571,1,1,8151.7666,2128.0554,499.82007,1.658,300,300,0,0),
(525748,32297,571,1,1,8156.588,2134.484,499.82007,4.93928,300,300,0,0),
(525749,32297,571,1,1,8174.973,2127.87,499.82007,1.6057,300,300,0,0),
(525750,32297,571,1,1,8168.382,2100.198,499.8201,4.72984,300,300,0,0),
(525751,32297,571,1,1,8170.9365,2134.5718,499.82007,4.76474,300,300,0,0),
(527823,32297,571,1,1,8163.0537,2127.6848,499.82007,1.658,300,300,0,0),
(527824,32297,571,1,1,8157.473,2102.372,499.82007,3.0892,300,300,0,0),
(527825,32297,571,1,1,8183.988,2100.4504,499.8201,4.59,300,300,0,0),
(527826,32297,571,1,1,8196.1875,2150.9573,499.82007,5.5676,300,300,0,0),
(527827,32297,571,1,1,8197.961,2144.2952,499.82007,1.2566,300,300,0,0),
(527828,32297,571,1,1,8192.901,2100.593,499.8201,4.817,300,300,0,0),
(527829,32297,571,1,1,8172.3403,2100.431,499.8201,4.67748,300,300,0,0),
(527830,32297,571,1,1,8202.518,2103.616,499.8201,0.104719,300,300,0,0),
(527831,32297,571,1,1,8214,2126.4885,499.82007,6.2657,300,300,0,0),
(527832,32297,571,1,1,8203.703,2149.177,499.8201,3.246312,300,300,0,0),
(527833,32297,571,1,1,8199.307,2133.207,499.7368,1.59,300,300,0,0),
(527834,32297,571,1,1,8199.307,2133.207,499.7368,1.59,300,300,0,0);
-- individual addon
DELETE FROM creature_addon WHERE guid IN (527828,527831);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES 
(527828,0,0,1,0,69,0,NULL),
(527831,0,0,1,0,69,0,NULL);
DELETE FROM `creature_spawn_data` WHERE guid IN (532350,532353,532354,525742,525743,525744,527826,527827);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(532350,80),(532353,80),(532354,80),(525742,80),
(525743,80),(525744,80),(527826,80),(527827,80);
-- Group 1
DELETE FROM `spawn_group` WHERE id IN (34074);
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34074,'Icecrown - Aldur\'thar - Cult Researcher 32297 x2 - Patrol 1', 0, 0, 0, 0x10); -- linear mirrored
DELETE FROM `spawn_group_spawn` WHERE id IN (34074);
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34074, 527833, 0),
(34074, 527834, 1);
DELETE FROM `spawn_group_formation` WHERE id IN (34074);
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34074, 2, 5, 0, 34074, 4,'Icecrown - Aldur\'thar - Cult Researcher 32297 x2 - Patrol 1'); -- linear mirrored
DELETE FROM `waypoint_path` WHERE PathId IN (34074);
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34074,1,8199.307,2133.207,499.7368,100,1000,0),
(34074,2,8199.452,2122.333,499.7368,100,0,0),
(34074,3,8199.764,2117.577,499.7368,100,0,0),
(34074,4,8184.605,2117.717,499.7368,100,0,0),
(34074,5,8164.474,2117.992,499.7368,100,0,0),
(34074,6,8146.368,2118.325,499.7368,100,0,0),
(34074,7,8130.035,2118.855,499.7368,100,0,0),
(34074,8,8129.895,2126.771,499.7368,100,0,0),
(34074,9,8129.643,2135.155,499.7368,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId IN (34074);
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34074,'Icecrown - Aldur\'thar - Cult Researcher 32297 x2 - Patrol 1');
