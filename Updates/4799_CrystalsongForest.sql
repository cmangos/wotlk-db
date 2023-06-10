-- Crystalsong Forest - complete

-- Objects
-- Azure Focus 193202
DELETE FROM gameobject WHERE guid = 508126;
DELETE FROM game_event_gameobject WHERE guid = 508126;
DELETE FROM gameobject_battleground WHERE guid = 508126;
INSERT INTO gameobject VALUES (508126,193202,571,1,1,5451.078,814.34845,247.54645,3.2463472,0,0,-0.9986286,0.052353222,180,180);

-- Ancient Elven Masonry 192909 - 192912
DELETE FROM `spawn_group` WHERE id = 33600;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33600, 'Crystalsong Forest - Ancient Elven Masonry 192909 - 192912', 1, 30, 0, 0); -- 30max
DELETE FROM `spawn_group_spawn` WHERE id = 33600;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33600,506704,-1),(33600,506705,-1),(33600,506706,-1),(33600,506707,-1),(33600,506708,-1),(33600,506719,-1),
(33600,506720,-1),(33600,506721,-1),(33600,506722,-1),(33600,506723,-1),(33600,506731,-1),(33600,506732,-1),
(33600,506733,-1),(33600,506734,-1),(33600,506735,-1),(33600,506737,-1),(33600,506746,-1),(33600,506747,-1),
(33600,506748,-1),(33600,506749,-1),(33600,506750,-1),(33600,506751,-1),(33600,506752,-1),(33600,506753,-1),
(33600,506754,-1),(33600,506755,-1),(33600,506756,-1),(33600,506757,-1),(33600,506759,-1),(33600,512743,-1),
(33600,512744,-1),(33600,512745,-1),(33600,512746,-1),(33600,512747,-1),(33600,512748,-1),(33600,512749,-1),
(33600,512922,-1),(33600,513252,-1),(33600,513253,-1),(33600,513254,-1),(33600,513255,-1),(33600,513256,-1),
(33600,513257,-1),(33600,513258,-1),(33600,513259,-1),(33600,513260,-1),(33600,513261,-1),(33600,513262,-1),
(33600,513468,-1);

-- Crystalline Heartwood 192908
DELETE FROM `spawn_group` WHERE id = 33601;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33601, 'Crystalsong Forest - Crystalline Heartwood 192908', 1, 50, 0, 0); -- 50max
DELETE FROM `spawn_group_spawn` WHERE id = 33601;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33601,506664,-1),(33601,506665,-1),(33601,506666,-1),(33601,506667,-1),(33601,506668,-1),(33601,506669,-1),
(33601,506670,-1),(33601,506671,-1),(33601,506672,-1),(33601,506673,-1),(33601,506674,-1),(33601,506675,-1),
(33601,506676,-1),(33601,506677,-1),(33601,506678,-1),(33601,506679,-1),(33601,506680,-1),(33601,506681,-1),
(33601,506682,-1),(33601,506683,-1),(33601,506684,-1),(33601,506685,-1),(33601,506686,-1),(33601,506687,-1),
(33601,506688,-1),(33601,506689,-1),(33601,506690,-1),(33601,506691,-1),(33601,506692,-1),(33601,506693,-1),
(33601,506694,-1),(33601,506695,-1),(33601,506696,-1),(33601,506697,-1),(33601,512726,-1),(33601,512727,-1),
(33601,512728,-1),(33601,512729,-1),(33601,512730,-1),(33601,512731,-1),(33601,512732,-1),(33601,512733,-1),
(33601,512734,-1),(33601,512735,-1),(33601,512736,-1),(33601,512737,-1),(33601,512738,-1),(33601,512739,-1),
(33601,512740,-1),(33601,512741,-1),(33601,512742,-1),(33601,513225,-1),(33601,513226,-1),(33601,513227,-1),
(33601,513228,-1),(33601,513229,-1),(33601,513230,-1),(33601,513231,-1),(33601,513232,-1),(33601,513233,-1),
(33601,513234,-1),(33601,513235,-1),(33601,513236,-1),(33601,513237,-1),(33601,513238,-1),(33601,513239,-1),
(33601,513240,-1),(33601,513241,-1),(33601,513242,-1),(33601,513243,-1),(33601,513244,-1),(33601,513245,-1),
(33601,513246,-1),(33601,513247,-1),(33601,513248,-1),(33601,513249,-1),(33601,513250,-1),(33601,513251,-1);

-- Creatures
-- Duplicates
DELETE FROM creature_addon WHERE guid IN (529917,529424,528849,528856,528863,528865,528826,528822,528852,528939,528825,528829,528830,528929,528931,528828,528906);
DELETE FROM creature_movement WHERE Id IN (529917,529424,528849,528856,528863,528865,528826,528822,528852,528939,528825,528829,528830,528929,528931,528828,528906);
DELETE FROM game_event_creature WHERE guid IN (529917,529424,528849,528856,528863,528865,528826,528822,528852,528939,528825,528829,528830,528929,528931,528828,528906);
DELETE FROM game_event_creature_data WHERE guid IN (529917,529424,528849,528856,528863,528865,528826,528822,528852,528939,528825,528829,528830,528929,528931,528828,528906);
DELETE FROM creature_battleground WHERE guid IN (529917,529424,528849,528856,528863,528865,528826,528822,528852,528939,528825,528829,528830,528929,528931,528828,528906);
DELETE FROM creature_linking WHERE guid IN (529917,529424,528849,528856,528863,528865,528826,528822,528852,528939,528825,528829,528830,528929,528931,528828,528906) OR
 master_guid IN (529917,529424,528849,528856,528863,528865,528826,528822,528852,528939,528825,528829,528830,528929,528931,528828,528906);
DELETE FROM creature WHERE guid IN (529917,529424,528849,528856,528863,528865,528826,528822,528852,528939,528825,528829,528830,528929,528931,528828,528906);

-- Grove Walker 31228
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 527432 AND 527437;
DELETE FROM creature_movement WHERE Id BETWEEN 527432 AND 527437;
DELETE FROM game_event_creature WHERE guid BETWEEN 527432 AND 527437;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 527432 AND 527437;
DELETE FROM creature_battleground WHERE guid BETWEEN 527432 AND 527437;
DELETE FROM creature_linking WHERE guid BETWEEN 527432 AND 527437  
 OR master_guid BETWEEN 527432 AND 527437;
DELETE FROM creature WHERE guid BETWEEN 527432 AND 527437;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(527432,31228,571,1,1,6014.43,1027.49,166.882,0,300,300,15,1),
(527433,31228,571,1,1,5895.1,1022.69,185.539,0,300,300,15,1),
(527434,31228,571,1,1,5838.07,883.63,159.213,0,300,300,15,1),
(527435,31228,571,1,1,5608.73,923.122,165.778,0,300,300,15,1),
(527436,31228,571,1,1,5434.04,271.911,153.203,0,300,300,15,1),
(527437,31228,571,1,1,6040.72,817.526,167.702,0,300,300,15,1);
UPDATE creature SET spawndist = 15, MovementType = 1 WHERE id = 31228;

-- Sinewy Wolf 31233
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 527438 AND 527442;
DELETE FROM creature_movement WHERE Id BETWEEN 527438 AND 527442;
DELETE FROM game_event_creature WHERE guid BETWEEN 527438 AND 527442;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 527438 AND 527442;
DELETE FROM creature_battleground WHERE guid BETWEEN 527438 AND 527442;
DELETE FROM creature_linking WHERE guid BETWEEN 527438 AND 527442
 OR master_guid BETWEEN 527438 AND 527442;
DELETE FROM creature WHERE guid BETWEEN 527438 AND 527442;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(527439,31233,571,1,1,5517.46,537.5,160.064,0,300,300,15,1),
(527440,31233,571,1,1,5449.13,349.568,156.158,0,300,300,15,1),
(527441,31233,571,1,1,5372.72,157.505,161.721,0,300,300,15,1),
(527442,31233,571,1,1,6022.68,867.98,155.382,0,300,300,15,1);
UPDATE creature SET position_x = 5971.33, position_y = 1007.83, position_z = 168.269, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 529900;
UPDATE creature SET position_x = 5916.07, position_y = 948.518, position_z = 160.391, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 529909;
UPDATE creature SET position_x = 5545.08, position_y = 985.547, position_z = 176.659, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 529913;
UPDATE creature SET spawndist = 15, MovementType = 1 WHERE id = 31228;

-- Azure Spellweaver 31403 & Azure Manabeast 31404
-- Group 1
DELETE FROM creature_addon WHERE guid IN (527443,527444);
DELETE FROM creature_movement WHERE id IN (527443,527444);
DELETE FROM game_event_creature WHERE guid IN (527443,527444);
DELETE FROM game_event_creature_data WHERE guid IN (527443,527444);
DELETE FROM creature_battleground WHERE guid IN (527443,527444);
DELETE FROM creature_linking WHERE guid IN (527443,527444)
 OR master_guid IN (527443,527444);
DELETE FROM creature WHERE guid IN (527443,527444);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(527443,31403,571,1,1,5509.2476,866.61554,164.48833,0,300,300,0,0),
(527444,31404,571,1,1,5509.2476,866.61554,164.48833,0,300,300,0,0);
DELETE FROM `spawn_group` WHERE id = 33506;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33506, 'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 1', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 33506;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33506, 527443, 0),
(33506, 527444, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33506;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33506, 2, 3, 0, 33506, 4, 'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 33506;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33506,'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 1');
DELETE FROM `waypoint_path` WHERE PathId = 33506;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33506,1,5509.2476,866.61554,164.48833,100,2000,0),
(33506,2,5521.7866,879.84247,165.39017,100,0,0),
(33506,3,5531.623,900.7771,166.42143,100,0,0),
(33506,4,5538.4194,923.72156,170.1688,100,0,0),
(33506,5,5569.7095,929.1667,167.56163,100,0,0),
(33506,6,5604.423,928.5961,164.93893,100,2000,0);
-- Group 2
DELETE FROM creature_addon WHERE guid IN (527445,527446);
DELETE FROM creature_movement WHERE id IN (527445,527446);
DELETE FROM game_event_creature WHERE guid IN (527445,527446);
DELETE FROM game_event_creature_data WHERE guid IN (527445,527446);
DELETE FROM creature_battleground WHERE guid IN (527445,527446);
DELETE FROM creature_linking WHERE guid IN (527445,527446)
 OR master_guid IN (527445,527446);
DELETE FROM creature WHERE guid IN (527445,527446);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(527445,31403,571,1,1,5396.8145,831.028,183.33977,0,300,300,0,0),
(527446,31404,571,1,1,5396.8145,831.028,183.33977,0,300,300,0,0);
DELETE FROM `spawn_group` WHERE id = 33507;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33507, 'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 2', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 33507;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33507, 527445, 0),
(33507, 527446, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33507;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33507, 2, 3, 0, 33507, 4, 'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 2');
DELETE FROM `waypoint_path_name` WHERE PathId = 33507;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33507,'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 2');
DELETE FROM `waypoint_path` WHERE PathId = 33507;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33507,1,5396.8145,831.028,183.33977,100,2000,0),
(33507,2,5416.7793,826.8909,181.37091,100,0,0),
(33507,3,5422.2607,816.7275,181.5578,100,0,0),
(33507,4,5448.469,811.3294,177.5181,100,0,0),
(33507,5,5460.827,830.54297,174.58585,100,0,0),
(33507,6,5472.0825,846.8197,172.03975,100,0,0),
(33507,7,5459.1704,853.88153,173.832,100,0,0),
(33507,8,5458.4976,878.80414,175.13504,100,2000,0);
-- Group 3 - random movement
DELETE FROM creature_addon WHERE guid IN (535352,535353);
DELETE FROM creature_movement WHERE id IN (535352,535353);
DELETE FROM game_event_creature WHERE guid IN (535352,535353);
DELETE FROM game_event_creature_data WHERE guid IN (535352,535353);
DELETE FROM creature_battleground WHERE guid IN (535352,535353);
DELETE FROM creature_linking WHERE guid IN (535352,535353)
 OR master_guid IN (535352,535353);
DELETE FROM creature WHERE guid IN (535352,535353);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(535352,31403,571,1,1,5492.07,786.549,172.154,4.12852,300,300,10,1),
(535353,31404,571,1,1,5492.07,786.549,172.154,4.12852,300,300,10,1);
DELETE FROM `spawn_group` WHERE id = 33508;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33508, 'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 3', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 33508; 
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33508, 535352, 0),
(33508, 535353, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33508;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33508, 2, 3, 0, 33508, 1, 'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 3');
-- Group 4 - random movement
DELETE FROM creature_addon WHERE guid IN (535354,535355);
DELETE FROM creature_movement WHERE id IN (535354,535355);
DELETE FROM game_event_creature WHERE guid IN (535354,535355);
DELETE FROM game_event_creature_data WHERE guid IN (535354,535355);
DELETE FROM creature_battleground WHERE guid IN (535354,535355);
DELETE FROM creature_linking WHERE guid IN (535354,535355)
 OR master_guid IN (535354,535355);
DELETE FROM creature WHERE guid IN (535354,535355);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(535354,31403,571,1,1,5288.98,869.866,189.11,0,300,300,10,1),
(535355,31404,571,1,1,5288.98,869.866,189.11,0,300,300,10,1);
DELETE FROM `spawn_group` WHERE id = 33509;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33509, 'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 4', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 33509; 
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33509, 535354, 0),
(33509, 535355, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33509;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33509, 2, 3, 0, 33509, 1, 'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 4');
-- Group 5
DELETE FROM creature_addon WHERE guid IN (535356,535357);
DELETE FROM creature_movement WHERE id IN (535356,535357);
DELETE FROM game_event_creature WHERE guid IN (535356,535357);
DELETE FROM game_event_creature_data WHERE guid IN (535356,535357);
DELETE FROM creature_battleground WHERE guid IN (535356,535357);
DELETE FROM creature_linking WHERE guid IN (535356,535357)
 OR master_guid IN (535356,535357);
DELETE FROM creature WHERE guid IN (535356,535357);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(535356,31403,571,1,1,5520.7817,650.38245,163.73587,0,300,300,0,0),
(535357,31404,571,1,1,5520.7817,650.38245,163.73587,0,300,300,0,0);
DELETE FROM `spawn_group` WHERE id = 33510;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33510, 'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 5', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 33510;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33510, 535356, 0),
(33510, 535357, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33510;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33510, 2, 3, 0, 33510, 4, 'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 5');
DELETE FROM `waypoint_path_name` WHERE PathId = 33510;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33510,'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 5');
DELETE FROM `waypoint_path` WHERE PathId = 33510;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33510,1,5520.7817,650.38245,163.73587,100,2000,0),
(33510,2,5509.8774,664.94476,164.3874,100,0,0),
(33510,3,5494.0806,664.15735,167.74054,100,0,0),
(33510,4,5477.0054,658.6755,171.12274,100,0,0),
(33510,5,5473.9507,644.265,171.04193,100,0,0),
(33510,6,5466.7803,630.7592,170.80563,100,0,0),
(33510,7,5449.2876,622.9489,172.93936,100,0,0),
(33510,8,5434.981,636.56824,177.17761,100,0,0),
(33510,9,5423.9434,652.3285,181.94475,100,0,0),
(33510,10,5414.6255,666.2023,185.721,100,2000,0);
-- Group 6
DELETE FROM creature_addon WHERE guid IN (535358,535359);
DELETE FROM creature_movement WHERE id IN (535358,535359);
DELETE FROM game_event_creature WHERE guid IN (535358,535359);
DELETE FROM game_event_creature_data WHERE guid IN (535358,535359);
DELETE FROM creature_battleground WHERE guid IN (535358,535359);
DELETE FROM creature_linking WHERE guid IN (535358,535359)
 OR master_guid IN (535358,535359);
DELETE FROM creature WHERE guid IN (535358,535359);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(535358,31403,571,1,1,5355.951,614.56775,182.0483,0,300,300,0,0),
(535359,31404,571,1,1,5355.951,614.56775,182.0483,0,300,300,0,0);
DELETE FROM `spawn_group` WHERE id = 33511;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33511, 'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 6', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 33511;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33511, 535358, 0),
(33511, 535359, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33511;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33511, 2, 3, 0, 33511, 2, 'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 6');
DELETE FROM `waypoint_path_name` WHERE PathId = 33511;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33511,'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 6');
DELETE FROM `waypoint_path` WHERE PathId = 33511;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33511,1,5355.951,614.56775,182.0483,100,0,0),
(33511,2,5362.8906,594.09906,179.94266,100,0,0),
(33511,3,5385.46,589.8519,177.0538,100,0,0),
(33511,4,5386.4897,571.6219,174.96213,100,0,0),
(33511,5,5367.44,567.50323,177.13693,100,0,0),
(33511,6,5348.017,568.6433,180.50198,100,0,0),
(33511,7,5320.683,592.9329,183.90001,100,0,0),
(33511,8,5318.4644,620.8735,188.56856,100,0,0),
(33511,9,5319.3657,616.3592,187.51363,100,0,0),
(33511,10,5339.1157,617.96204,185.50252,100,0,0);
-- Group 7 - random movement
DELETE FROM creature_addon WHERE guid IN (535360,535361);
DELETE FROM creature_movement WHERE id IN (535360,535361);
DELETE FROM game_event_creature WHERE guid IN (535360,535361);
DELETE FROM game_event_creature_data WHERE guid IN (535360,535361);
DELETE FROM creature_battleground WHERE guid IN (535360,535361);
DELETE FROM creature_linking WHERE guid IN (535360,535361)
 OR master_guid IN (535360,535361);
DELETE FROM creature WHERE guid IN (535360,535361);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(535360,31403,571,1,1,5267.03,618.176,187.718,0,300,300,10,1),
(535361,31404,571,1,1,5267.03,618.176,187.718,0,300,300,10,1);
DELETE FROM `spawn_group` WHERE id = 33512;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33512, 'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 7', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 33512; 
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33512, 535360, 0),
(33512, 535361, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33512;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33512, 2, 3, 0, 33512, 1, 'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 7');
-- Group 8
UPDATE creature SET position_x = 5217.776, position_y = 658.35675, position_z = 197.30757, spawndist = 0, MovementType = 0 WHERE guid = 530490;
UPDATE creature SET position_x = 5217.776, position_y = 658.35675, position_z = 197.30757, spawndist = 0, MovementType = 0 WHERE guid = 530493;
DELETE FROM `spawn_group` WHERE id = 33513;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33513, 'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 8', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 33513;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33513, 530490, 0),
(33513, 530493, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33513;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33513, 2, 3, 0, 33513, 2, 'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 8');
DELETE FROM `waypoint_path_name` WHERE PathId = 33513;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33513,'Crystalsong Forest - Azure Spellweaver 31403 & Azure Manabeast 31404 - Patrol - 8');
DELETE FROM `waypoint_path` WHERE PathId = 33513;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33513,1,5217.776,658.35675,197.30757,100,2000,0),
(33513,2,5216.434,674.5471,199.87938,100,0,0),
(33513,3,5209.3774,686.3204,198.37303,100,0,0),
(33513,4,5201.7134,702.9078,194.9688,100,0,0),
(33513,5,5196.082,707.86053,196.38387,100,0,0),
(33513,6,5186.182,718.7038,201.32014,100,0,0),
(33513,7,5184.398,741.3065,205.3167,100,0,0),
(33513,8,5184.593,753.49243,205.28252,100,0,0),
(33513,9,5183.6733,769.7264,208.9421,100,0,0),
(33513,10,5183.205,779.26495,212.79878,100,2000,0);

-- Azure Scalebane 31402
DELETE FROM creature_addon WHERE guid BETWEEN 535362 AND 535369;
DELETE FROM creature_movement WHERE id BETWEEN 535362 AND 535369;
DELETE FROM game_event_creature WHERE guid BETWEEN 535362 AND 535369;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535362 AND 535369;
DELETE FROM creature_battleground WHERE guid BETWEEN 535362 AND 535369;
DELETE FROM creature_linking WHERE guid BETWEEN 535362 AND 535369
 OR master_guid BETWEEN 535362 AND 535369;
DELETE FROM creature WHERE guid BETWEEN 535362 AND 535369;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(535362,31402,571,1,1,5573.3433,862.8543,161.73859,1.48352980613708496,300,300,0,0),
(535363,31402,571,1,1,5434.6514,729.67755,186.69624,0,300,300,0,2),
(535364,31402,571,1,1,5362.5254,869.77344,182.784,0,300,300,0,4), -- linear
(535365,31402,571,1,1,5464.4077,716.29034,171.82031,2.652900457382202148,300,300,0,0),
(535366,31402,571,1,1,5411.6777,623.1622,178.35513,0.872664630413055419,300,300,0,0),
(535367,31402,571,1,1,5344.32,595.7,183.07399,4.991641521453857421,300,300,0,0),
(535368,31402,571,1,1,5232.5376,577.2203,186.01953,0,300,300,0,4), -- linear
(535369,31402,571,1,1,5557.5474,914.3631,227.91179,0,300,300,0,2);
UPDATE creature_template_addon SET auras = NULL WHERE entry = 31402;
-- individual addons
DELETE FROM creature_addon WHERE guid IN (530487,530488,530489,530491,530492);
INSERT INTO creature_addon (guid,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(530487,0,0,1,0,0,0,29266),
(530488,0,0,1,0,0,0,29266),
(530489,0,0,1,0,0,0,29266),
(530491,0,0,1,0,0,0,29266),
(530492,0,0,1,0,0,0,29266);
-- waypoints
DELETE FROM creature_movement WHERE Id IN (535363,535364,535368,535369);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 535363
(535363,1,5434.6514,729.67755,186.69624,100,0,0),
(535363,2,5424.2207,745.3154,189.07738,100,0,0),
(535363,3,5425.2295,759.6531,187.10838,100,0,0),
(535363,4,5424.1465,777.35364,184.54306,100,0,0),
(535363,5,5434.4033,783.9654,182.81616,100,0,0),
(535363,6,5450.2334,781.68274,181.09998,100,0,0),
(535363,7,5469.664,767.1058,178.77632,100,0,0),
(535363,8,5465.3926,745.0414,178.15956,100,0,0),
-- 535364
(535364,1,5362.5254,869.77344,182.784,100,0,0),
(535364,2,5349.606,876.76447,184.35431,100,0,0),
(535364,3,5334.7207,874.54596,185.72821,100,0,0),
(535364,4,5328.4756,889.2465,189.27284,100,0,0),
(535364,5,5314.742,900.71124,194.70587,100,0,0),
(535364,6,5294.577,908.59674,198.58363,100,0,0),
-- 535368
(535368,1,5232.5376,577.2203,186.01953,100,0,0),
(535368,2,5220.886,591.7798,188.15442,100,0,0),
(535368,3,5217.605,612.92786,191.57994,100,0,0),
(535368,4,5206.0957,622.09357,196.2097,100,0,0),
(535368,5,5207.4556,639.8265,196.15791,100,0,0),
(535368,6,5222.6284,648.2538,194.53792,100,0,0),
(535368,7,5231.276,657.504,194.96016,100,0,0),
-- 535369
(535369,1,5557.5474,914.3631,227.91179,100,0,0),
(535369,2,5544.703,910.54865,227.87708,100,0,0),
(535369,3,5531.7056,912.5208,227.91203,100,0,0),
(535369,4,5528.16,925.24054,227.87708,100,0,0),
(535369,5,5529.973,938.7063,227.9142,100,0,0),
(535369,6,5540.897,941.5965,227.87708,100,0,0),
(535369,7,5555.855,940.02844,227.89307,100,0,0),
(535369,8,5559.864,927.117,227.87708,100,0,0);

-- Crystal Wyrm 31393
DELETE FROM creature_addon WHERE guid = 535370;
DELETE FROM creature_movement WHERE id = 535370;
DELETE FROM game_event_creature WHERE guid = 535370;
DELETE FROM game_event_creature_data WHERE guid = 535370;
DELETE FROM creature_battleground WHERE guid = 535370;
DELETE FROM creature_linking WHERE guid = 535370
 OR master_guid = 535370;
DELETE FROM creature WHERE guid = 535370;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(535370,31393,571,1,1,5291.2993,818.4689,288.7756,0,300,300,0,3);
UPDATE creature SET position_x = 5438.815, position_y = 668.2655, position_z = 322.42108, spawndist = 0, MovementType = 3 WHERE guid = 530421;
-- waypoints
DELETE FROM creature_movement WHERE Id IN (530421,535370);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 530421
(530421,1,5438.815,668.2655,322.42108,100,0,0),
(530421,2,5451.159,709.10034,322.42108,100,0,0),
(530421,3,5476.8647,733.9802,322.42108,100,0,0),
(530421,4,5454.2964,810.34503,322.42108,100,0,0),
(530421,5,5427.173,886.34015,322.42108,100,0,0),
(530421,6,5387.578,929.3948,322.42108,100,0,0),
(530421,7,5333.851,919.97766,322.42108,100,0,0),
(530421,8,5253.631,889.6624,322.42108,100,0,0),
(530421,9,5204.9907,835.01697,322.42108,100,0,0),
(530421,10,5189.2383,746.423,322.42108,100,0,0),
(530421,11,5220.4736,645.9417,322.42108,100,0,0),
(530421,12,5256.108,601.68915,322.42108,100,0,0),
(530421,13,5306.3574,592.3024,322.42108,100,0,0),
(530421,14,5347.3755,604.81903,322.42108,100,0,0),
(530421,15,5413.7056,632.4085,322.42108,100,0,0),
-- 535370
(535370,1,5291.2993,818.4689,288.7756,100,0,0),
(535370,2,5291.472,818.68335,288.47034,100,0,0),
(535370,3,5302.6475,814.3542,299.387,100,0,0),
(535370,4,5338.491,803.68555,317.63696,100,0,0),
(535370,5,5368.569,787.5017,324.66476,100,0,0),
(535370,6,5383.143,751.4431,329.22006,100,0,0),
(535370,7,5375.0166,694.2756,315.08142,100,0,0),
(535370,8,5325.981,673.482,299.66476,100,0,0),
(535370,9,5267.1343,683.8737,299.41486,100,0,0),
(535370,10,5243.1304,711.9871,306.80365,100,0,0),
(535370,11,5237.7314,749.3507,305.6092,100,0,0),
(535370,12,5250.0005,786.5188,297.66476,100,0,0);
-- flying anim
DELETE FROM creature_spawn_data WHERE guid IN (530421,535370);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(530421,20056),
(535370,20056);

-- Azure Front Channel Stalker 31400
DELETE FROM creature_addon WHERE guid BETWEEN 535371 AND 535372;
DELETE FROM creature_movement WHERE id BETWEEN 535371 AND 535372;
DELETE FROM game_event_creature WHERE guid BETWEEN 535371 AND 535372;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535371 AND 535372;
DELETE FROM creature_battleground WHERE guid BETWEEN 535371 AND 535372;
DELETE FROM creature_linking WHERE guid BETWEEN 535371 AND 535372
 OR master_guid BETWEEN 535371 AND 535372;
DELETE FROM creature WHERE guid BETWEEN 535371 AND 535372;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(535371,31400,571,1,1,5450.9478,814.42535,261.76193,2.356194496154785156,300,300,0,0),
(535372,31400,571,1,1,5314.6763,749.915,222.19997,0.191986218094825744,300,300,0,0);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 31400;
DELETE FROM dbscripts_on_relay WHERE id IN (20735,20736,20737);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20735,1,15,59044,0,0,31400,530481,1|0x10,0,0,0,0,0,0,0,0,'Part of Azure Front Channel Stalker EAI: - Cast 59044 on buddy'),
(20736,1,15,59044,0,0,31400,530479,1|0x10,0,0,0,0,0,0,0,0,'Part of Azure Front Channel Stalker EAI: - Cast 59044 on buddy'),
(20737,1,15,59044,0,0,31400,530480,1|0x10,0,0,0,0,0,0,0,0,'Part of Azure Front Channel Stalker EAI: - Cast 59044 on buddy');

-- Azure Manashaper 31401
DELETE FROM creature_addon WHERE guid BETWEEN 535373 AND 535382;
DELETE FROM creature_movement WHERE id BETWEEN 535373 AND 535382;
DELETE FROM game_event_creature WHERE guid BETWEEN 535373 AND 535382;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535373 AND 535382;
DELETE FROM creature_battleground WHERE guid BETWEEN 535373 AND 535382;
DELETE FROM creature_linking WHERE guid BETWEEN 535373 AND 535382
 OR master_guid BETWEEN 535373 AND 535382;
DELETE FROM creature WHERE guid BETWEEN 535373 AND 535382;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(535373,31401,571,1,1,5468.4907,811.1656,247.36382,3.141592741012573242,300,300,0,0),
(535374,31401,571,1,1,5447.987,797.0879,247.36688,1.535889744758605957,300,300,0,0),
(535375,31401,571,1,1,5433.843,817.7853,247.36713,6.17846536636352539,300,300,0,0),
(535376,31401,571,1,1,5454.343,831.6531,247.366,4.517815113067626953,300,300,0,0),
(535377,31401,571,1,1,5406.1255,648.64984,248.93771,5.133200645446777343,300,300,0,0),
(535378,31401,571,1,1,5420.6123,616.1501,248.93828,2.076941728591918945,300,300,0,0),
(535379,31401,571,1,1,5429.7017,639.51294,248.93723,3.54853057861328125,300,300,0,0),
(535380,31401,571,1,1,5547.241,925.63855,227.87708,3.263765573501586914,300,300,0,0),
(535381,31401,571,1,1,5544.041,929.6109,227.87708,4.642575740814208984 ,300,300,0,0),
(535382,31401,571,1,1,5541.408,924.3255,227.87708,0.802851438522338867,300,300,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (535380,535381,535382);
INSERT INTO creature_addon (guid,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(535380,0,0,1,0,69,0,NULL),
(535381,0,0,1,0,69,0,NULL),
(535382,0,0,1,0,69,0,NULL);
DELETE FROM dbscripts_on_relay WHERE id IN (20738);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20738,1,31,31400,35,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Azure Manashaper 31401 EAI: - search for 31400'),
(20738,10,15,59069,0,0,31400,35,1,0,0,0,0,0,0,0,0,'Part of Azure Manashaper 31401 EAI: - Cast 59069 on buddy');

-- Skeletal Woodcutter 33499
DELETE FROM creature_addon WHERE guid BETWEEN 535383 AND 535384;
DELETE FROM creature_movement WHERE id BETWEEN 535383 AND 535384;
DELETE FROM game_event_creature WHERE guid BETWEEN 535383 AND 535384;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535383 AND 535384;
DELETE FROM creature_battleground WHERE guid BETWEEN 535383 AND 535384;
DELETE FROM creature_linking WHERE guid BETWEEN 535383 AND 535384
 OR master_guid BETWEEN 535383 AND 535384;
DELETE FROM creature WHERE guid BETWEEN 535383 AND 535384;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(535383,31401,571,1,1,5458.528,424.54004,163.88626,0.226892799139022827,300,300,0,0),
(535384,31401,571,1,1,5469.5107,374.17688,158.1148,4.206243515014648437,300,300,0,0);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 33499);
DELETE FROM creature_template_addon WHERE entry IN (33499);
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(33499,0,0,1,0,234,0,NULL);

-- Lost Shandaral Spirit 31231
DELETE FROM creature_addon WHERE guid BETWEEN 535385 AND 535387;
DELETE FROM creature_movement WHERE id BETWEEN 535385 AND 535387;
DELETE FROM game_event_creature WHERE guid BETWEEN 535385 AND 535387;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535385 AND 535387;
DELETE FROM creature_battleground WHERE guid BETWEEN 535385 AND 535387;
DELETE FROM creature_linking WHERE guid BETWEEN 535385 AND 535387
 OR master_guid BETWEEN 535385 AND 535387;
DELETE FROM creature WHERE guid BETWEEN 535385 AND 535387;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(535385,31231,571,1,1,5769.8164,931.39343,158.89339,1.087935209274291992,300,300,0,0),
(535386,31231,571,1,1,5695.859,918.4493,158.89339,1.86598360538482666,300,300,0,0),
(535387,31231,571,1,1,5414.4634,199.59201,154.06035,2.524814367294311523,300,300,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (529878,529892);
INSERT INTO creature_addon (guid,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(529878,0,0,1,0,426,0,NULL),
(529892,0,0,1,0,415,0,NULL);

-- Dappled Stag 31236
DELETE FROM creature_addon WHERE guid BETWEEN 535388 AND 535398;
DELETE FROM creature_movement WHERE id BETWEEN 535388 AND 535398;
DELETE FROM game_event_creature WHERE guid BETWEEN 535388 AND 535398;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535388 AND 535398;
DELETE FROM creature_battleground WHERE guid BETWEEN 535388 AND 535398;
DELETE FROM creature_linking WHERE guid BETWEEN 535388 AND 535398
 OR master_guid BETWEEN 535388 AND 535398;
DELETE FROM creature WHERE guid BETWEEN 535388 AND 535398;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(535388,31236,571,1,1,5934.7617,1073.3185,198.46371,2.711123943328857421,300,300,15,1),
(535389,31236,571,1,1,5590.8477,1021.7179,182.23457,5.510610580444335937,300,300,15,1),
(535390,31236,571,1,1,5689.8716,835.5428,156.7978,5.769731998443603515,300,300,15,1),
(535391,31236,571,1,1,5606.529,810.41113,159.7324,2.37000584602355957,300,300,15,1),
(535392,31236,571,1,1,5491.2974,720.9613,169.3073,2.973631858825683593,300,300,15,1),
(535393,31236,571,1,1,5275.79,98.5246,195.353,3.03919,300,300,15,1),
(535394,31236,571,1,1,5694.5977,256.7002,167.94258,4.219034671783447265,300,300,15,1),
(535395,31236,571,1,1,5657.916,397.9006,157.6909,3.874686241149902343,300,300,15,1),
(535396,31236,571,1,1,6037.0034,724.4918,173.56361,2.042307376861572265,300,300,15,1),
(535397,31236,571,1,1,5946.89,730.56396,165.81956,0.542519569396972656,300,300,15,1),
(535398,31236,571,1,1,5838,954.0131,167.2343,1.932081222534179687,300,300,15,1);
UPDATE creature SET spawndist = 15, MovementType = 1 WHERE id = 31236;

-- Unbound Seer 33422
DELETE FROM creature_addon WHERE guid BETWEEN 535399 AND 535401;
DELETE FROM creature_movement WHERE id BETWEEN 535399 AND 535401;
DELETE FROM game_event_creature WHERE guid BETWEEN 535399 AND 535401;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535399 AND 535401;
DELETE FROM creature_battleground WHERE guid BETWEEN 535399 AND 535401;
DELETE FROM creature_linking WHERE guid BETWEEN 535399 AND 535401
 OR master_guid BETWEEN 535399 AND 535401;
DELETE FROM creature WHERE guid BETWEEN 535399 AND 535401;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(535399,33422,571,1,1,5604.93,126.338,150.784,0.621701,300,300,7,1),
(535400,33422,571,1,1,5605.59,293.128,164.402,3.63763,300,300,7,1),
(535401,33422,571,1,1,5616.52,263.433,163.752,3.0957,300,300,7,1);
UPDATE creature SET position_x = 5787.065, position_y = 176.3719, position_z = 181.58337, spawndist = 0, MovementType = 4 WHERE guid = 533108; -- linear
DELETE FROM creature_movement WHERE Id IN (533108);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(533108,1,5787.065,176.3719,181.58337,100,1000,0),
(533108,2,5791.05,168.96956,181.61719,100,0,0),
(533108,3,5797.2793,156.74025,181.67137,100,0,0),
(533108,4,5802.1294,145.88313,181.79547,100,0,0),
(533108,5,5795.7456,138.03201,181.79634,100,0,0),
(533108,6,5788.6455,133.2283,181.80536,100,0,0),
(533108,7,5783.854,130.88922,181.82166,100,0,0),
(533108,8,5777.146,128.98535,181.83177,100,0,0),
(533108,9,5768.998,129.15865,181.86096,100,0,0),
(533108,10,5762.9165,131.73872,181.85443,100,1000,0);

-- Dispirited Ent 31041
DELETE FROM creature_addon WHERE guid BETWEEN 535402 AND 535409;
DELETE FROM creature_movement WHERE id BETWEEN 535402 AND 535409;
DELETE FROM game_event_creature WHERE guid BETWEEN 535402 AND 535409;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535402 AND 535409;
DELETE FROM creature_battleground WHERE guid BETWEEN 535402 AND 535409;
DELETE FROM creature_linking WHERE guid BETWEEN 535402 AND 535409
 OR master_guid BETWEEN 535402 AND 535409;
DELETE FROM creature WHERE guid BETWEEN 535402 AND 535409;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(535402,31041,571,1,1,5645.8696,-204.92175,168.7689,2.82384800910949707,300,300,15,1),
(535403,31041,571,1,1,5280.156,-131.02144,157.45224,2.262830257415771484,300,300,15,1),
(535404,31041,571,1,1,5178.0513,-262.5827,172.38243,0.173624366521835327,300,300,15,1),
(535405,31041,571,1,1,5130.07,-443.239,181.909,3.08502,300,300,15,1),
(535406,31041,571,1,1,5120.492,-550.4582,178.6816,1.186177253723144531,300,300,15,1),
(535407,31041,571,1,1,5302.81,-986.2019,180.915,2.52245187759399414,300,300,15,1),
(535408,31041,571,1,1,5349.4287,-1030.0558,182.77777,3.192345619201660156,300,300,15,1),
(535409,31041,571,1,1,5589.2227,-840.45685,174.55818,3.833547830581665039,300,300,15,1);
UPDATE creature SET position_x = 5424.3657, position_y = -82.6015, position_z = 147.36688, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 529425;
UPDATE creature SET position_x = 5585.6265, position_y = -104.238594, position_z = 152.35133, orientation = 0, spawndist = 15, MovementType = 1 WHERE guid = 529436;
UPDATE creature SET spawndist = 15, MovementType = 1 WHERE id = 31041;

-- Unbound Dryad 30860
DELETE FROM creature_addon WHERE guid BETWEEN 535410 AND 535415;
DELETE FROM creature_movement WHERE id BETWEEN 535410 AND 535415;
DELETE FROM game_event_creature WHERE guid BETWEEN 535410 AND 535415;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535410 AND 535415;
DELETE FROM creature_battleground WHERE guid BETWEEN 535410 AND 535415;
DELETE FROM creature_linking WHERE guid BETWEEN 535410 AND 535415
 OR master_guid BETWEEN 535410 AND 535415;
DELETE FROM creature WHERE guid BETWEEN 535410 AND 535415;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(535410,30860,571,1,1,5418.693,-191.4926,157.2382,0,300,300,0,4), -- linear
(535411,30860,571,1,1,5507.0938,-120.8362,146.90356,0.471238881349563598,300,300,0,0), -- idle
(535412,30860,571,1,1,5524.1274,-321.05634,167.6689,0,300,300,0,4), -- linear
(535413,30860,571,1,1,5401.539,-460.12402,179.00945,0,300,300,0,4), -- linear
(535414,30860,571,1,1,5384.146,-620.6209,165.12863,0,300,300,0,4), -- linear
(535415,30860,571,1,1,5241.302,-645.7933,161.2728,0,300,300,0,4); -- linear
UPDATE creature SET position_x = 5307.011, position_y = -216.61945, position_z = 163.44766, spawndist = 0, MovementType = 4 WHERE guid = 528845; -- linear
UPDATE creature SET position_x = 5379.013, position_y = -159.55243, position_z = 156.38242, spawndist = 0, MovementType = 4 WHERE guid = 528838; -- linear
UPDATE creature SET position_x = 5481.303, position_y = -137.50917, position_z = 149.9301, spawndist = 0, MovementType = 4 WHERE guid = 528843; -- linear
UPDATE creature SET position_x = 5527.398, position_y = -186.96512, position_z = 157.1667, spawndist = 0, MovementType = 4 WHERE guid = 528848; -- linear
UPDATE creature SET position_x = 5499.8813, position_y = -231.36331, position_z = 164.40018, spawndist = 0, MovementType = 4 WHERE guid = 528844; -- linear
UPDATE creature SET position_x = 5241.3477, position_y = -301.06445, position_z = 166.27321, spawndist = 0, MovementType = 4 WHERE guid = 528839; -- linear
UPDATE creature SET position_x = 5544.1025, position_y = -365.49493, position_z = 164.156, spawndist = 0, MovementType = 4 WHERE guid = 528847; -- linear
UPDATE creature SET position_x = 5379.81, position_y = -495.97955, position_z = 172.30595, spawndist = 0, MovementType = 4 WHERE guid = 528835; -- linear
UPDATE creature SET position_x = 5274.053, position_y = -534.50323, position_z = 165.32208, spawndist = 0, MovementType = 4 WHERE guid = 528842; -- linear
UPDATE creature SET position_x = 5332.131, position_y = -432.67538, position_z = 181.83513, spawndist = 0, MovementType = 4 WHERE guid = 528841; -- linear
UPDATE creature SET position_x = 5185.8574, position_y = -536.16016, position_z = 160.19061, spawndist = 0, MovementType = 4 WHERE guid = 528834; -- linear
UPDATE creature SET position_x = 5204.685, position_y = -603.22687, position_z = 160.12051, spawndist = 0, MovementType = 4 WHERE guid = 528846; -- linear
UPDATE creature SET position_x = 5330.3955, position_y = -733.9964, position_z = 162.5576, spawndist = 0, MovementType = 4 WHERE guid = 528840; -- linear
UPDATE creature SET position_x = 5359.7095, position_y = -839.49005, position_z = 162.37581, spawndist = 0, MovementType = 4 WHERE guid = 528836; -- linear
UPDATE creature SET position_x = 5373.85, position_y = -873.001, position_z = 164.092, spawndist = 0, MovementType = 4 WHERE guid = 528837; -- linear
DELETE FROM creature_movement WHERE Id IN (
528845,535410,528838,528843,528848,528844,535412,528839,528847,535413,528835,528842,535414,528841,528834,528846,535415,528840,528836,528837);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 528845
(528845,1,5307.011,-216.61945,163.44766,100,0,0),
(528845,2,5295.6465,-229.05315,164.30367,100,0,0),
(528845,3,5298.26,-246.3489,167.47626,100,0,0),
(528845,4,5316.754,-244.58315,169.25958,100,0,0),
(528845,5,5330.252,-227.67952,167.65848,100,0,0),
-- 535410
(535410,1,5418.693,-191.4926,157.2382,100,0,0),
(535410,2,5417.47,-229.98828,171.39986,100,0,0),
(535410,3,5420.066,-236.97604,174.16426,100,0,0),
(535410,4,5435.2607,-234.43202,172.95348,100,0,0),
(535410,5,5451.018,-222.50055,168.17574,100,0,0),
-- 528838
(528838,1,5379.013,-159.55243,156.38242,100,0,0),
(528838,2,5363.8154,-155.77988,155.89294,100,0,0),
(528838,3,5347.12,-150.27719,156.00952,100,0,0),
(528838,4,5345.818,-133.15074,153.69398,100,0,0),
(528838,5,5335.867,-126.09879,153.84755,100,0,0),
(528838,6,5323.2256,-142.43977,155.00993,100,0,0),
-- 528843
(528843,1,5481.303,-137.50917,149.9301,100,0,0),
(528843,2,5460.296,-162.47882,153.5459,100,0,0),
(528843,3,5452.6313,-162.66942,153.9701,100,0,0),
(528843,4,5439.572,-155.46196,152.28528,100,0,0),
-- 528848
(528848,1,5527.398,-186.96512,157.1667,100,0,0),
(528848,2,5544.2417,-243.41197,162.22066,100,0,0),
(528848,3,5550.625,-233.65059,160.41072,100,0,0),
(528848,4,5549.7227,-220.70459,159.49788,100,0,0),
(528848,5,5543.119,-202.98201,157.74617,100,0,0),
-- 528844
(528844,1,5499.8813,-231.36331,164.40018,100,0,0),
(528844,2,5504.0225,-258.0895,167.58047,100,0,0),
(528844,3,5518.8613,-262.5696,165.47452,100,0,0),
(528844,4,5523.1816,-250.32607,163.9866,100,0,0),
-- 535412
(535412,1,5524.1274,-321.05634,167.6689,100,0,0),
(535412,2,5549.0703,-308.90173,163.63548,100,0,0),
(535412,3,5553.703,-328.40857,164.07945,100,0,0),
(535412,4,5561.1436,-343.6163,162.73608,100,0,0),
-- 528839
(528839,1,5241.3477,-301.06445,166.27321,100,0,0),
(528839,2,5255.0415,-314.2378,168.31569,100,0,0),
(528839,3,5275.6245,-334.1307,172.77924,100,0,0),
(528839,4,5271.686,-359.30606,172.5379,100,0,0),
-- 528847
(528847,1,5544.1025,-365.49493,164.156,100,0,0),
(528847,2,5513.287,-394.09375,168.71964,100,0,0),
(528847,3,5528.8696,-413.58432,164.82956,100,0,0),
(528847,4,5516.689,-443.2979,162.87961,100,0,0),
-- 535413
(535413,1,5401.539,-460.12402,179.00945,100,0,0),
(535413,2,5416.1846,-463.10513,175.16301,100,0,0),
(535413,3,5431.4185,-459.0129,174.09953,100,0,0),
(535413,4,5459.4243,-465.26416,166.71043,100,0,0),
-- 528835
(528835,1,5379.81,-495.97955,172.30595,100,0,0),
(528835,2,5357.031,-493.3021,170.67702,100,0,0),
(528835,3,5338.8716,-480.35352,171.41505,100,0,0),
(528835,4,5325.456,-463.47488,175.99802,100,0,0),
(528835,5,5317.077,-461.89243,174.78867,100,0,0),
-- 528842
(528842,1,5274.053,-534.50323,165.32208,100,0,0),
(528842,2,5318.1157,-541.36426,165.77956,100,0,0),
(528842,3,5360.7085,-534.9578,165.57254,100,0,0),
-- 535414
(535414,1,5384.146,-620.6209,165.12863,100,0,0),
(535414,2,5368.302,-610.7715,163.55295,100,0,0),
(535414,3,5358.0938,-607.3965,162.0895,100,0,0),
(535414,4,5344.813,-605.41895,164.20607,100,0,0),
(535414,5,5328.5303,-599.9744,163.33125,100,0,0),
-- 528841
(528841,1,5332.131,-432.67538,181.83513,100,0,0),
(528841,2,5321.8223,-447.41843,178.03867,100,0,0),
(528841,3,5304.97,-457.13434,173.98715,100,0,0),
(528841,4,5285.2285,-453.0313,170.13437,100,0,0),
(528841,5,5266.8535,-431.8948,170.8232,100,0,0),
(528841,6,5260.8115,-410.79153,170.36758,100,0,0),
-- 528834
(528834,1,5185.8574,-536.16016,160.19061,100,0,0),
(528834,2,5210.681,-517.5727,158.92606,100,0,0),
(528834,3,5210.162,-498.57227,161.93225,100,0,0),
(528834,4,5231.5,-500.04678,162.14285,100,0,0),
(528834,5,5244.566,-505.78098,162.36752,100,0,0),
-- 528846
(528846,1,5204.685,-603.22687,160.12051,100,0,0),
(528846,2,5205.743,-570.8597,158.74911,100,0,0),
(528846,3,5194.543,-550.8167,158.19061,100,0,0),
-- 535415
(535415,1,5241.302,-645.7933,161.2728,100,0,0),
(535415,2,5248.528,-662.7642,161.93442,100,0,0),
(535415,3,5268.6323,-642.3764,163.2048,100,0,0),
(535415,4,5297.36,-639.8589,162.96579,100,0,0),
-- 528840
(528840,1,5330.3955,-733.9964,162.5576,100,0,0),
(528840,2,5351.5723,-737.0456,160.36937,100,0,0),
(528840,3,5391.0864,-732.8016,161.96445,100,0,0),
(528840,4,5412.8555,-751.49585,161.27727,100,0,0),
-- 528836
(528836,1,5359.7095,-839.49005,162.37581,100,0,0),
(528836,2,5374.5273,-824.62787,161.21304,100,0,0),
(528836,3,5375.6074,-817.07935,161.75418,100,0,0),
(528836,4,5375.962,-803.8167,161.5734,100,0,0),
(528836,5,5367.3853,-797.8976,162.40349,100,0,0),
(528836,6,5358.6973,-796.62897,163.91914,100,0,0),
-- 528837
(528837,1,5373.85,-873.001,164.092,100,0,0),
(528837,2,5399.047,-866.06836,163.01671,100,0,0),
(528837,3,5404.157,-853.8249,161.54834,100,0,0),
(528837,4,5410.21,-843.919,161.549,100,0,0),
(528837,5,5421.99,-843.062,159.882,100,0,0),
(528837,6,5432.22,-845.376,158.672,100,0,0),
(528837,7,5438.58,-865.244,159.002,100,0,0),
(528837,8,5445.33,-870.077,159.233,100,0,0),
(528837,9,5460.81,-857.641,157.924,100,0,0);

-- Unbound Ancient 30861
UPDATE creature SET position_x = 5176.466, position_y = -561.2797, position_z = 159.7138, spawndist = 0, MovementType = 4 WHERE guid = 528850; -- linear
UPDATE creature SET position_x = 5528.725, position_y = -236.91113, position_z = 162.59634, spawndist = 0, MovementType = 4 WHERE guid = 528851; -- linear
DELETE FROM creature_movement WHERE Id IN (528850,528851);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 528850
(528850,1,5176.466,-561.2797,159.7138,100,0,0),
(528850,2,5198.007,-526.8958,159.25449,100,0,0),
(528850,3,5207.997,-501.90668,161.30594,100,0,0),
(528850,4,5188.6187,-477.26828,164.76382,100,0,0),
(528850,5,5168.7896,-451.5974,168.14476,100,0,0),
(528850,6,5185.5103,-437.58038,163.26866,100,0,0),
(528850,7,5214.6064,-426.37955,164.16347,100,0,0),
(528850,8,5257.6055,-413.87735,169.95352,100,0,0),
(528850,9,5267.8384,-391.41177,171.98119,100,0,0),
(528850,10,5259.5215,-374.7864,172.06613,100,0,0),
(528850,11,5253.485,-332.85492,169.1288,100,0,0),
(528850,12,5270.757,-293.8442,170.7649,100,0,0),
(528850,13,5272.1167,-246.0318,165.30133,100,0,0),
(528850,14,5317.8735,-243.15555,169.05109,100,0,0),
(528850,15,5346.4478,-220.89618,168.4331,100,0,0),
(528850,16,5373.697,-208.04793,168.63197,100,0,0),
(528850,17,5404.139,-200.9286,163.21382,100,0,0),
(528850,18,5450.5845,-195.07295,163.64168,100,0,0),
(528850,19,5467.127,-194.05457,160.46455,100,0,0),
-- 528851
(528851,1,5528.725,-236.91113,162.59634,100,0,0),
(528851,2,5522.305,-249.00317,164.05814,100,0,0),
(528851,3,5514.391,-262.21603,166.05411,100,0,0),
(528851,4,5527.216,-278.65286,165.92816,100,0,0),
(528851,5,5551.5015,-281.92734,162.71786,100,0,0),
(528851,6,5570.937,-287.6421,158.94746,100,0,0),
(528851,7,5581.928,-290.26013,157.48494,100,0,0),
(528851,8,5570.0405,-309.9425,160.23975,100,0,0),
(528851,9,5576.621,-324.4771,159.77832,100,0,0),
(528851,10,5568.6978,-354.1642,161.37244,100,0,0),
(528851,11,5557.9834,-374.51367,161.88586,100,0,0),
(528851,12,5572.9062,-385.4298,161.31274,100,0,0),
(528851,13,5562.58,-405.64078,161.38739,100,0,0),
(528851,14,5538.481,-406.301,163.76886,100,0,0),
(528851,15,5526.668,-405.79572,166.13083,100,0,0),
(528851,16,5516.1084,-409.9916,167.01157,100,0,0),
(528851,17,5516.697,-435.19058,163.29196,100,0,0),
(528851,18,5537.0806,-454.84875,161.07404,100,0,0),
(528851,19,5530.372,-475.3635,162.06128,100,0,0),
(528851,20,5542.6675,-504.14957,159.16072,100,0,0),
(528851,21,5560.6196,-512.7498,159.12251,100,0,0),
(528851,22,5552.266,-525.492,159.1573,100,0,0),
(528851,23,5505.9663,-518.8379,160.72044,100,0,0),
(528851,24,5479.883,-491.77676,164.36543,100,0,0),
(528851,25,5474.4365,-462.0486,165.9697,100,0,0);

-- Unbound Ent 30862
DELETE FROM creature_addon WHERE guid BETWEEN 535416 AND 535421;
DELETE FROM creature_movement WHERE id BETWEEN 535416 AND 535421;
DELETE FROM game_event_creature WHERE guid BETWEEN 535416 AND 535421;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535416 AND 535421;
DELETE FROM creature_battleground WHERE guid BETWEEN 535416 AND 535421;
DELETE FROM creature_linking WHERE guid BETWEEN 535416 AND 535421
 OR master_guid BETWEEN 535416 AND 535421;
DELETE FROM creature WHERE guid BETWEEN 535416 AND 535421;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(535416,30862,571,1,1,5522.74,-182.916,156.994,0.316919,300,300,10,1),
(535417,30862,571,1,1,5549.15,-274.505,162.974,1.3245,300,300,10,1),
(535418,30862,571,1,1,5497.91,-379.652,173.199,3.03595,300,300,10,1),
(535419,30862,571,1,1,5463.79,-465.489,166.075,2.91421,300,300,10,1),
(535420,30862,571,1,1,5354.3,-504.689,168.786,4.11393,300,300,10,1),
(535421,30862,571,1,1,5460.85,-208.03,164.733,4.10489,300,300,10,1);
UPDATE creature SET position_x = 5546.574707, position_y = -355.872803, position_z = 164.024506 WHERE guid = 528866;
UPDATE creature SET position_x = 5530.943359, position_y = -314.945557, position_z = 166.268631 WHERE guid = 528877;
UPDATE creature SET position_x = 5234.867188, position_y = -463.371857, position_z = 166.161377 WHERE guid = 528862;
UPDATE creature SET spawndist = 15, MovementType = 1 WHERE id = 30862;

-- Shandaral Hunter Spirit 30864 & Shandaral Spirit Wolf 31123
-- Group 1
UPDATE creature SET position_x = 5543.315, position_y = -522.22394, position_z = 159.14021, spawndist = 0, MovementType = 0 WHERE guid = 528904;
UPDATE creature SET position_x = 5543.315, position_y = -522.22394, position_z = 159.14021, spawndist = 0, MovementType = 0 WHERE guid = 529561;
DELETE FROM `spawn_group` WHERE id = 33514;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33514, 'Crystalsong Forest - Shandaral Hunter Spirit 30864 & Shandaral Spirit Wolf 31123 - Patrol - 1', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 33514;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33514, 528904, 0),
(33514, 529561, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33514;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33514, 2, 3, 0, 33514, 4, 'Crystalsong Forest - Shandaral Hunter Spirit 30864 & Shandaral Spirit Wolf 31123 - Patrol - 1'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 33514;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33514,'Crystalsong Forest - Shandaral Hunter Spirit 30864 & Shandaral Spirit Wolf 31123 - Patrol - 1');
DELETE FROM `waypoint_path` WHERE PathId = 33514;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33514,1,5543.315,-522.22394,159.14021,100,2000,0),
(33514,2,5505.426,-519.4785,160.697,100,0,0),
(33514,3,5492.992,-505.6021,164.04689,100,0,0),
(33514,4,5478.925,-483.1222,164.467,100,0,0),
(33514,5,5468.003,-467.11642,165.50264,100,0,0),
(33514,6,5456.1777,-452.50992,169.5731,100,0,0),
(33514,7,5438.0923,-460.3023,172.10619,100,0,0),
(33514,8,5426.3286,-479.04184,171.21355,100,0,0),
(33514,9,5422.2183,-499.1059,169.08952,100,2000,0);
-- Group 2
UPDATE creature SET position_x = 5265.112, position_y = -715.23456, position_z = 167.05826, spawndist = 0, MovementType = 0 WHERE guid = 528898;
UPDATE creature SET position_x = 5265.112, position_y = -715.23456, position_z = 167.05826, spawndist = 0, MovementType = 0 WHERE guid = 529559;
DELETE FROM `spawn_group` WHERE id = 33515;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33515, 'Crystalsong Forest - Shandaral Hunter Spirit 30864 & Shandaral Spirit Wolf 31123 - Patrol - 2', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 33515;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33515, 528898, 0),
(33515, 529559, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33515;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33515, 2, 3, 0, 33515, 4, 'Crystalsong Forest - Shandaral Hunter Spirit 30864 & Shandaral Spirit Wolf 31123 - Patrol - 2'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 33515;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33515,'Crystalsong Forest - Shandaral Hunter Spirit 30864 & Shandaral Spirit Wolf 31123 - Patrol - 2');
DELETE FROM `waypoint_path` WHERE PathId = 33515;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33515,1,5265.112,-715.23456,167.05826,100,2000,0),
(33515,2,5239.076,-698.1352,165.2673,100,0,0),
(33515,3,5225.785,-675.7913,162.09357,100,0,0),
(33515,4,5222.5728,-648.01117,160.78284,100,0,0),
(33515,5,5220.1313,-612.3183,160.70474,100,0,0),
(33515,6,5238.053,-583.7121,160.159,100,0,0),
(33515,7,5235.5645,-549.7577,158.31961,100,0,0),
(33515,8,5241.815,-536.75555,159.69461,100,0,0),
(33515,9,5256.4756,-520.9168,161.55295,100,0,0),
(33515,10,5289.114,-514.0457,163.94778,100,2000,0);
-- Group 3
DELETE FROM creature_addon WHERE guid BETWEEN 535422 AND 535423;
DELETE FROM creature_movement WHERE id BETWEEN 535422 AND 535423;
DELETE FROM game_event_creature WHERE guid BETWEEN 535422 AND 535423;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535422 AND 535423;
DELETE FROM creature_battleground WHERE guid BETWEEN 535422 AND 535423;
DELETE FROM creature_linking WHERE guid BETWEEN 535422 AND 535423
 OR master_guid BETWEEN 535422 AND 535423;
DELETE FROM creature WHERE guid BETWEEN 535422 AND 535423;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES 
(535422,30864,571,1,1,5407.7866,-1031.356,175.13638,0,300,300,0,0),
(535423,31123,571,1,1,5407.7866,-1031.356,175.13638,0,300,300,0,0);
DELETE FROM `spawn_group` WHERE id = 33516;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33516, 'Crystalsong Forest - Shandaral Hunter Spirit 30864 & Shandaral Spirit Wolf 31123 - Patrol - 3', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 33516;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33516, 535422, 0),
(33516, 535423, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33516;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33516, 2, 3, 0, 33516, 4, 'Crystalsong Forest - Shandaral Hunter Spirit 30864 & Shandaral Spirit Wolf 31123 - Patrol - 3'); -- linear
DELETE FROM `waypoint_path_name` WHERE PathId = 33516;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33516,'Crystalsong Forest - Shandaral Hunter Spirit 30864 & Shandaral Spirit Wolf 31123 - Patrol - 3');
DELETE FROM `waypoint_path` WHERE PathId = 33516;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33516,1,5407.7866,-1031.356,175.13638,100,2000,0),
(33516,2,5388.0415,-1014.7551,173.47734,100,0,0),
(33516,3,5367.467,-1002.1464,169.83391,100,0,0),
(33516,4,5373.2153,-981.0752,168.63574,100,0,0),
(33516,5,5368.0054,-960.0721,167.96118,100,0,0),
(33516,6,5356.063,-940.04926,168.27489,100,0,0),
(33516,7,5334.9595,-930.12274,169.92134,100,0,0),
(33516,8,5315.518,-921.26855,172.25314,100,0,0),
(33516,9,5296.7266,-912.7507,175.43773,100,0,0),
(33516,10,5277.918,-921.5883,177.90697,100,0,0),
(33516,11,5273.2056,-941.7913,179.76158,100,2000,0);
-- Group 4 -- missing path 
UPDATE creature SET position_x = 5470.13, position_y = -1014.58, position_z = 176.522, spawndist = 0, MovementType = 0 WHERE guid = 528901;
UPDATE creature SET position_x = 5470.13, position_y = -1014.58, position_z = 176.522, spawndist = 0, MovementType = 0 WHERE guid = 529560;
DELETE FROM `spawn_group` WHERE id = 33517;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33517, 'Crystalsong Forest - Shandaral Hunter Spirit 30864 & Shandaral Spirit Wolf 31123 - Patrol - 4', 0, 0, 0, 0x01);
DELETE FROM `spawn_group_spawn` WHERE id = 33517;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33517, 528901, 0),
(33517, 529560, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33517;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33517, 2, 3, 0, 33517, 4, 'Crystalsong Forest - Shandaral Hunter Spirit 30864 & Shandaral Spirit Wolf 31123 - Patrol - 4');
DELETE FROM `waypoint_path_name` WHERE PathId = 33517;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33517,'Crystalsong Forest - Shandaral Hunter Spirit 30864 & Shandaral Spirit Wolf 31123 - Patrol - 4');
DELETE FROM `waypoint_path` WHERE PathId = 33517;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33517,1,5470.13,-1014.58,176.522,100,2000,0), 
(33517,2,5481.08,-1027.12,182.045,100,0,0),
(33517,3,5493.24,-1068.22,193.444,100,2000,0); -- path not completed - missing data

-- Unbound Trickster 30856
DELETE FROM dbscripts_on_relay WHERE id IN (20739);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20739,1,31,30862,25,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Unbound Trickster 30856 EAI: - search for 30862'),
(20739,10,15,58438,0,0,30862,30,1,0,0,0,0,0,0,0,0,'Part of Unbound Trickster 30856 EAI: - Cast 30862 on buddy');

-- Shandaral Druid Spirit 30863
-- Shandaral Hunter Spirit 30864
-- Shandaral Warrior Spirit 30865
UPDATE creature SET orientation = 5.251, spawndist = 0, MovementType = 0 WHERE guid = 528884;
UPDATE creature SET position_x = 5432.538086, position_y = -521.662048, position_z = 165.011688, spawndist = 7, MovementType = 1 WHERE guid = 528924;
UPDATE creature SET position_x = 5317.49, position_y = -615.572, position_z = 164.093, spawndist = 7, MovementType = 1 WHERE guid = 528917;
UPDATE creature SET position_x = 5340.57, position_y = -560.297, position_z = 163.971, spawndist = 7, MovementType = 1 WHERE guid = 528899;
UPDATE creature SET position_x = 5297.298340, position_y = -765.943237, position_z = 162.903214, spawndist = 5, MovementType = 1 WHERE guid = 528925; -- small radius
UPDATE creature SET position_x = 5337.801758, position_y = -824.359985, position_z = 165.435959, spawndist = 5, MovementType = 1 WHERE guid = 528894; -- small radius
UPDATE creature SET position_x = 5286.673, position_y = -553.34503, position_z = 166.73868, orientation = 4.9757, spawndist = 0, MovementType = 0 WHERE guid = 528907;
-- individual addons
DELETE FROM creature_addon WHERE guid IN (528905,528913,528881,528889,528902,528918);
INSERT INTO creature_addon (guid,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(528905,0,0,1,0,415,0,NULL),
(528913,0,0,1,0,415,0,NULL),
(528881,0,0,1,0,415,0,NULL),
(528889,0,0,1,0,426,0,NULL),
(528902,0,0,1,0,426,0,NULL),
(528918,0,0,1,0,426,0,NULL);
-- waypoints
UPDATE creature SET position_x = 5530.471, position_y = -549.70557, position_z = 157.97676, spawndist = 0, MovementType = 4 WHERE guid = 528897; -- linear
UPDATE creature SET position_x = 5276.4453, position_y = -588.74506, position_z = 165.67499, spawndist = 0, MovementType = 4 WHERE guid = 528915; -- linear
UPDATE creature SET position_x = 5372.725, position_y = -755.605, position_z = 156.75551, spawndist = 0, MovementType = 4 WHERE guid = 528916; -- linear
UPDATE creature SET position_x = 5417.608887, position_y = -942.468262, position_z = 163.753021, spawndist = 0, MovementType = 4 WHERE guid = 528923; -- linear
UPDATE creature SET position_x = 5314.03, position_y = -796.7652, position_z = 165.48558, spawndist = 0, MovementType = 2 WHERE guid = 528895;
UPDATE creature SET position_x = 5360.1025, position_y = -819.0045, position_z = 165.53181, spawndist = 0, MovementType = 2 WHERE guid = 528887;
UPDATE creature SET position_x = 5307.885, position_y = -680.0257, position_z = 163.01816, spawndist = 0, MovementType = 2 WHERE guid = 528882;
UPDATE creature SET position_x = 5309.43, position_y = -741.21, position_z = 162.904, spawndist = 0, MovementType = 2 WHERE guid = 528909;
UPDATE creature SET position_x = 5389.4272, position_y = -905.4484, position_z = 164.14134, spawndist = 0, MovementType = 2 WHERE guid = 529806;
DELETE FROM creature_movement WHERE Id IN (528897,528915,528916,528895,528887,528882,528909,529806,528923);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 528897
(528897,1,5530.471,-549.70557,157.97676,100,2000,0),
(528897,2,5529.841,-559.5335,157.3426,100,0,0),
(528897,3,5521.088,-570.40607,155.36043,100,0,0),
(528897,4,5506.772,-576.10333,155.74312,100,0,0),
(528897,5,5493.6113,-577.1097,156.85867,100,0,0),
(528897,6,5478.178,-580.38196,157.65457,100,0,0),
(528897,7,5458.776,-578.7349,159.64879,100,2000,0),
-- 528915
(528915,1,5276.4453,-588.74506,165.67499,100,2000,0),
(528915,2,5288.0913,-579.4436,165.36249,100,0,0),
(528915,3,5290.417,-575.4884,165.35527,100,0,0),
(528915,4,5290.475,-573.7107,166.22186,100,0,0),
(528915,5,5289.9785,-565.18896,166.64372,100,0,0),
(528915,6,5286.481,-554.202,166.64372,100,0,0),
(528915,7,5321.6567,-554.36664,166.64445,100,0,0),
(528915,8,5330.402,-554.79834,166.64738,100,0,0),
(528915,9,5345.9907,-556.65265,163.46082,100,0,0),
(528915,10,5353.6914,-558.4887,162.75029,100,0,0),
(528915,11,5357.235,-572.1251,165.6732,100,0,0),
(528915,12,5348.9014,-577.91797,165.65654,100,0,0),
(528915,13,5331.661,-584.1468,162.21944,100,0,0),
(528915,14,5318.5073,-588.9816,165.37782,100,2000,0),
-- 528916
(528916,1,5372.725,-755.605,156.75551,100,2000,0),
(528916,2,5388.5547,-757.1473,156.75551,100,0,0),
(528916,3,5388.493,-770.9094,156.80217,100,0,0),
(528916,4,5404.0044,-785.308,156.41849,100,0,0),
(528916,5,5385.1104,-781.92413,156.80217,100,0,0),
(528916,6,5363.545,-771.5294,156.83443,100,0,0),
(528916,7,5358.3823,-762.1309,156.7534,100,0,0),
(528916,8,5332.699,-763.8851,162.00987,100,2000,0),
-- 528895
(528895,1,5314.03,-796.7652,165.48558,100,0,0),
(528895,2,5319.744,-811.3045,165.55498,100,0,0),
(528895,3,5324.917,-830.2284,165.80498,100,0,0),
(528895,4,5337.1934,-822.40137,165.53181,100,0,0),
(528895,5,5356.827,-824.35266,165.53181,100,0,0),
(528895,6,5357.43,-813.11847,165.53181,100,0,0),
(528895,7,5338.444,-809.18286,165.53181,100,0,0),
(528895,8,5338.5366,-803.8273,165.53181,100,0,0),
(528895,9,5336.906,-793.1082,165.45943,100,0,0),
(528895,10,5328.731,-791.71783,165.48558,100,0,0),
-- 528909
(528909,1,5309.43,-741.21,162.904,100,0,0),
(528909,2,5308.71,-722.579,162.904,100,0,0),
(528909,3,5309.1,-703.25,162.904,100,0,0),
(528909,4,5295.75,-699.225,162.904,100,0,0),
(528909,5,5285.48,-707.884,162.904,100,0,0),
(528909,6,5283.85,-727.763,162.904,100,0,0),
(528909,7,5282.97,-749.952,162.904,100,0,0),
(528909,8,5296.57,-766.492,162.904,100,0,0),
(528909,9,5312.37,-756.607,162.913,100,0,0),
-- 528923
(528923,1,5417.608,-942.468,163.753,100,2000,0),
(528923,2,5419.03,-930.07,163.993,100,2000,0),
(528923,3,5418.47,-918.998,165.857,100,0,0),
(528923,4,5412.83,-912.7,165.857,100,0,0),
(528923,5,5412.34,-897.677,165.857,100,0,0),
(528923,6,5426.32,-895.401,165.332,100,0,0),
(528923,7,5433.3,-888.139,164.058,100,0,0),
(528923,8,5417.87,-878.314,164.058,100,0,0),
(528923,9,5399.9,-877.988,164.058,100,0,0),
(528923,10,5394.58,-891.022,164.058,100,0,0),
(528923,11,5393.96,-905.103,164.06,100,2000,0),
-- Jumpers
-- 528887
(528887,1,5360.1025,-819.0045,165.53181,1.500983119010925292,2000,0),
(528887,2,5360.1025,-819.0045,165.53181,1.500983119010925292,100,3086301),
-- 528882
(528882,1,5307.885,-680.0257,163.01816,5.672319889068603515,2000,0),
(528882,2,5307.885,-680.0257,163.01816,5.672319889068603515,100,3086302),
-- 529806
(529806,1,5389.4272,-905.4484,164.14134,4.781221866607666015,2000,0),
(529806,2,5389.4272,-905.4484,164.14134,4.781221866607666015,100,3086303);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3086301 AND 3086303;
INSERT INTO dbscripts_on_creature_movement (id,delay,priority,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,datafloat,x,y,z,o,speed,condition_id,comments) VALUES
-- 3086301
(3086301,1,0,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Run ON'),
(3086301,2,0,20,15,0,0,0,0,0x04,0,0,0,0,1.8,5360.655,-815.09174,166.68712,100,17,0,'jump 1'),
(3086301,400,0,3,0,0,0,0,0,0x04,0,0,0,0,0,5360.49,-812.712,166.711,100,0,0,'move'),
(3086301,700,0,20,15,0,0,0,0,0x04,0,0,0,0,1.8,5359.313,-809.99677,166.94325,100,17,0,'jump 2'),
(3086301,1500,0,20,15,30600,0,0,0,0x04,0,0,0,0,1.8,5354.398,-809.8303,165.43495,100,17,0,'jump 3'),
(3086301,1501,0,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Run OFF'),
-- 3086302
(3086302,1,0,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Run ON'),
(3086302,2,0,20,15,0,0,0,0,0x04,0,0,0,0,1.8,5313.8535,-680.46423,164.22122,100,17,0,'jump 1'),
(3086302,400,0,20,15,0,0,0,0,0x04,0,0,0,0,0,5315.96,-678.148,164.156,100,17,0,'jump 1.5'),
(3086302,700,0,20,15,0,0,0,0,0x04,0,0,0,0,1.8,5313.751,-674.8944,163.99696,100,17,0,'jump 2'),
(3086302,1500,0,20,15,30600,0,0,0,0x04,0,0,0,0,1.8,5311.729,-671.7586,164.56024,100,17,0,'jump 3'),
(3086302,1900,0,3,0,0,0,0,0,0x04,0,0,0,0,0,5308.83,-671.628,164.411,100,0,0,'move'),
(3086302,2200,0,20,15,30600,0,0,0,0x04,0,0,0,0,1.8,5305.551,-676.56604,162.90202,100,17,0,'jump 4'),
(3086302,2201,0,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Run OFF'),
-- 3086303
(3086303,1,0,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Run ON'),
(3086303,2,0,20,15,0,0,0,0,0x04,0,0,0,0,1.8,5389.456,-910.71625,165.33638,100,17,0,'jump 1'),
(3086303,400,0,20,15,0,0,0,0,0x04,0,0,0,0,0,5391.616,-913.0387,165.40662,100,17,0,'jump 1.5'),
(3086303,700,0,20,15,0,0,0,0,0x04,0,0,0,0,1.8,5394.777,-913.86115,164.97685,100,17,0,'jump 2'),
(3086303,1500,0,20,15,30600,0,0,0,0x04,0,0,0,0,1.8,5399.104,-913.6858,165.29282,100,17,0,'jump 3'),
(3086303,1900,0,3,0,0,0,0,0,0x04,0,0,0,0,0,5400.614,-910.1753,165.42584,100,0,0,'move'),
(3086303,2200,0,20,15,30600,0,0,0,0x04,0,0,0,0,1.8,5400.1235,-906.66473,164.05887,100,17,0,'jump 4'),
(3086303,2201,0,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'Run OFF');
-- they sharing spawn point (except 4 with Shandaral Spirit Wolf)
DELETE FROM creature_spawn_entry WHERE guid IN (
528905,528907,528909,528924,528902,528903,528897,528919,528917,528910,528911,528889,528884,528899,528915,528888,528913,528922,528886,528879,
528883,528918,528925,528912,528894,528916,528914,528885,528895,528887,528882,528881,528892,528921,528920,528893,529806,528923,528891);
INSERT INTO creature_spawn_entry (guid,entry) VALUES
(528905,30863),(528905,30864),(528905,30865),(528907,30863),(528907,30864),(528907,30865),(528909,30863),(528909,30864),(528909,30865),
(528924,30863),(528924,30864),(528924,30865),(528902,30863),(528902,30864),(528902,30865),(528903,30863),(528903,30864),(528903,30865),
(528897,30863),(528897,30864),(528897,30865),(528919,30863),(528919,30864),(528919,30865),(528910,30863),(528910,30864),(528910,30865),
(528911,30863),(528911,30864),(528911,30865),(528889,30863),(528889,30864),(528889,30865),(528884,30863),(528884,30864),(528884,30865),
(528917,30863),(528917,30864),(528917,30865),(528899,30863),(528899,30864),(528899,30865),(528915,30863),(528915,30864),(528915,30865),
(528888,30863),(528888,30864),(528888,30865),(528913,30863),(528913,30864),(528913,30865),(528922,30863),(528922,30864),(528922,30865),
(528886,30863),(528886,30864),(528886,30865),(528879,30863),(528879,30864),(528879,30865),(528883,30863),(528883,30864),(528883,30865),
(528918,30863),(528918,30864),(528918,30865),(528925,30863),(528925,30864),(528925,30865),(528912,30863),(528912,30864),(528912,30865),
(528894,30863),(528894,30864),(528894,30865),(528916,30863),(528916,30864),(528916,30865),(528914,30863),(528914,30864),(528914,30865),
(528885,30863),(528885,30864),(528885,30865),(528895,30863),(528895,30864),(528895,30865),(528887,30863),(528887,30864),(528887,30865),
(528882,30863),(528882,30864),(528882,30865),(528881,30863),(528881,30864),(528881,30865),(528892,30863),(528892,30864),(528892,30865),
(528893,30863),(528893,30864),(528893,30865),(528921,30863),(528921,30864),(528921,30865),(528920,30863),(528920,30864),(528920,30865),
(529806,30863),(529806,30864),(529806,30865),(528923,30863),(528923,30864),(528923,30865),(528891,30863),(528891,30864),(528891,30865);
UPDATE creature SET id = 0 WHERE guid IN (
528905,528907,528909,528924,528902,528903,528897,528919,528917,528910,528911,528889,528884,528899,528915,528888,528913,528922,528886,528879,
528883,528918,528925,528912,528894,528916,528914,528885,528895,528887,528882,528881,528892,528921,528920,528893,529806,528923,528891);
-- special scripts
DELETE FROM creature_spawn_data WHERE Guid IN (528897,528915,528916,528895,528909,528923);
INSERT INTO creature_spawn_data (Guid, Id) VALUES
(528897,80),(528915,80),(528916,80),(528895,80),(528909,80),(528923,80);
DELETE FROM dbscripts_on_relay WHERE id IN (20740);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20740,1,32,1,0,0,0,0,2,0,0,0,0,0,0,0,0,'pause WP'),
(20740,100,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'move towards target'),
(20740,5000,1,396,0,0,0,0,2,0,0,0,0,0,0,0,0,'emote'),
(20740,8000,1,153,0,0,0,0,2,0,0,0,0,0,0,0,0,'emote'),
(20740,11000,32,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'unpause WP');
