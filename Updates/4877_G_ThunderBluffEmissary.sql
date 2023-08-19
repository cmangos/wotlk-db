-- Thunder Bluff Emissary - Updated
-- Thunder Bluff Emissary Patrol
DELETE FROM creature_addon WHERE guid IN (115522,116081);
DELETE FROM creature_movement WHERE id IN (115522,116081);
DELETE FROM game_event_creature WHERE guid IN (115522,116081);
DELETE FROM game_event_creature_data WHERE guid IN (115522,116081);
DELETE FROM creature_battleground WHERE guid IN (115522,116081);
DELETE FROM creature_linking WHERE guid IN (115522,116081);
DELETE FROM creature where guid IN (115522,116081);
-- Make them sync with TDB
UPDATE creature SET guid = 190550, id = 15106 WHERE guid = 110231;
UPDATE creature SET guid = 190551, id = 15106 WHERE guid = 110232;
DELETE FROM game_event_creature WHERE guid IN (110231,110232);
DELETE FROM game_event_creature_data WHERE guid IN (190550,190551);
INSERT INTO game_event_creature_data (guid, event, `entry_id`) VALUES
-- https://www.wowhead.com/wotlk/npc=15106/frostwolf-emissary
(190550,18, 15106),
(190551,18, 15106),
-- https://www.wowhead.com/wotlk/npc=15105/warsong-emissary
(190550,19, 15105),
(190551,19, 15105),
-- https://www.wowhead.com/wotlk/npc=14990/defilers-emissary
(190550,20, 14990),
(190551,20, 14990),
-- https://www.wowhead.com/wotlk/npc=22015/eye-of-the-storm-envoy
(190550,21, 22015),
(190551,21, 22015),
-- Wotlk ONLY
-- https://www.wowhead.com/wotlk/npc=30567/strand-of-the-ancients-envoy
(190550,25, 30567),
(190551,25, 30567),
-- https://www.wowhead.com/wotlk/npc=34949/isle-of-conquest-envoy
-- https://www.wowhead.com/wotlk/npc=34951/isle-of-conquest-envoy
(190550,38, 34949),
(190551,38, 34949);
-- Spawn Groups
UPDATE creature SET position_x = -1391.53, position_y = -85.9722, position_z = 158.985, spawndist = 0, MovementType = 0 WHERE guid IN (190550,190551);
DELETE FROM `spawn_group` WHERE id = 19934;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19934, 'Thunder Bluff - Battleground Emissary x2 - Patrol', 0, 0, 20549, 0x02 | 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 19934;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19934, 190550, 0),
(19934, 190551, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19934;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19934, 2, 2, 0, 19934, 4, 'Thunder Bluff - Battleground Emissary x2 - Patrol'); -- linear
DELETE FROM `waypoint_path` WHERE PathId = 19934;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19934,1,-1391.53,-85.9722,158.985,100,0,0),
(19934,2,-1392.84,-70.6216,158.953,100,0,0),
(19934,3,-1397.17,-63.2994,158.48,100,0,0),
(19934,4,-1385.78,-48.623,160.41,100,0,0),
(19934,5,-1355.33,-12.8232,142.476,100,0,0),
(19934,6,-1329.13,16.6672,138.367,100,0,0),
(19934,7,-1322.95,27.8675,138.336,100,0,0),
(19934,8,-1317.07,29.013,137.436,100,0,0),
(19934,9,-1309.84,26.0727,137.436,100,0,0),
(19934,10,-1295.25,33.1151,129.209,100,0,0),
(19934,11,-1292.36,39.2755,129.209,100,0,0),
(19934,12,-1279.27,46.8591,128.935,100,0,0),
(19934,13,-1267.41,56.4666,127.176,100,0,0),
(19934,14,-1264.5,73.6123,127.693,100,0,0),
(19934,15,-1284.97,98.3124,130.204,100,0,0),
(19934,16,-1286.55,107.812,130.943,100,0,0),
(19934,17,-1277.37,119.394,131.171,100,0,0),
(19934,18,-1243.35,133.647,132.448,100,0,0),
(19934,19,-1224.07,134.804,133.206,100,0,0),
(19934,20,-1212.96,128.896,134.073,100,0,0),
(19934,21,-1206.33,117.248,134.406,100,0,0),
(19934,22,-1185.65,119.227,135.216,100,0,0),
(19934,23,-1144.61,116.924,135.302,100,0,0),
(19934,24,-1119.91,119.143,140.139,100,0,0),
(19934,25,-1097.18,112.477,141.61,100,0,0),
(19934,26,-1092.25,101.523,141.349,100,0,0),
(19934,27,-1095.62,77.6066,140.762,100,0,0),
(19934,28,-1080.86,54.2081,139.809,100,0,0),
(19934,29,-1070.34,43.3666,140.655,100,0,0),
(19934,30,-1064.75,33.6603,141.13,100,0,0),
(19934,31,-1062.9,20.0719,140.94,100,0,0),
(19934,32,-1066.26,-6.02389,140.792,100,0,0),
(19934,33,-1074.74,-15.8266,140.093,100,1000,0);
DELETE FROM `waypoint_path_name` WHERE PathId = 19934;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19934,'Thunder Bluff - Battleground Emissary x2 - Patrol');
-- missing added
-- duplicates
DELETE FROM creature_addon WHERE guid IN (190582,190583,190463,190462,54619,54718);
DELETE FROM creature_movement WHERE id IN (190582,190583,190463,190462,54619,54718);
DELETE FROM game_event_creature WHERE guid IN (190582,190583,190463,190462,54619,54718);
DELETE FROM game_event_creature_data WHERE guid IN (190582,190583,190463,190462,54619,54718);
DELETE FROM creature_battleground WHERE guid IN (190582,190583,190463,190462,54619,54718);
DELETE FROM creature_linking WHERE guid IN (190582,190583,190463,190462,54619,54718);
DELETE FROM creature where guid IN (190582,190583,190463,190462,54619,54718);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawndist, MovementType) VALUES
(190582,15106,1,1,1,-1384.86,-83.6998,159.726,4.7462,0,0),
(190583,15106,1,1,1,-1384.86,-83.6998,159.726,4.7462,0,0),
(190463,15106,1,1,1,-1051.35,236.734,134.64,5.35816,0,0),
(190462,15106,1,1,1,-1049.16,234.144,134.639,2.32129,0,0);
-- we can reduce spawn numbers for all static spawns
DELETE FROM creature_addon WHERE guid IN 
(110226,110225,116084,115475,116066);
DELETE FROM creature_movement WHERE Id IN 
(110226,110225,116084,115475,116066);
DELETE FROM game_event_creature WHERE guid IN 
(110226,110225,116084,115475,116066);
DELETE FROM game_event_creature_data WHERE guid IN 
(110226,110225,116084,115475,116066);
DELETE FROM creature_battleground WHERE guid IN 
(110226,110225,116084,115475,116066);
DELETE FROM creature_linking WHERE guid IN 
(110226,110225,116084,115475,116066)
 OR master_guid IN (110226,110225,116084,115475,116066);
DELETE FROM creature WHERE guid IN 
(110226,110225,116084,115475,116066);
-- Make them sync with TDB
UPDATE creature SET guid = 190455, id = 15106 WHERE guid = 110224;
UPDATE creature SET guid = 190454, id = 15106 WHERE guid = 110222;
UPDATE creature SET guid = 190446, id = 15106 WHERE guid = 110229;
UPDATE creature SET guid = 190447, id = 15106 WHERE guid = 110230;
UPDATE creature SET guid = 190111, id = 15106 WHERE guid = 88974;
UPDATE creature SET guid = 190110, id = 15106 WHERE guid = 88975;
UPDATE creature SET guid = 190438, id = 15106 WHERE guid = 110227;
UPDATE creature SET guid = 190439, id = 15106 WHERE guid = 110228;

DELETE FROM game_event_creature WHERE guid IN 
(110224,110222,110229,110230,88974,88975,110227,110228);
DELETE FROM game_event_creature_data WHERE guid IN 
(190455,190454,190446,190447,190111,190110,190438,190439);
INSERT INTO game_event_creature_data (guid, event, `entry_id`) VALUES
-- https://www.wowhead.com/wotlk/npc=15106/frostwolf-emissary
(190582,18, 15106),
(190583,18, 15106),
(190455,18, 15106),
(190454,18, 15106),
(190446,18, 15106),
(190447,18, 15106),
(190111,18, 15106),
(190110,18, 15106),
(190438,18, 15106),
(190439,18, 15106),
(190462,18, 15106),
(190463,18, 15106),
-- https://www.wowhead.com/wotlk/npc=15105/warsong-emissary
(190582,19, 15105),
(190583,19, 15105),
(190455,19, 15105),
(190454,19, 15105),
(190446,19, 15105),
(190447,19, 15105),
(190111,19, 15105),
(190110,19, 15105),
(190438,19, 15105),
(190439,19, 15105),
(190462,19, 15105),
(190463,19, 15105),
-- https://www.wowhead.com/wotlk/npc=14990/defilers-emissary
(190582,20, 14990),
(190583,20, 14990),
(190455,20, 14990),
(190454,20, 14990),
(190446,20, 14990),
(190447,20, 14990),
(190111,20, 14990),
(190110,20, 14990),
(190438,20, 14990),
(190439,20, 14990),
(190462,20, 14990),
(190463,20, 14990),
-- https://www.wowhead.com/wotlk/npc=22015/eye-of-the-storm-envoy
(190582,21, 22015),
(190583,21, 22015),
(190455,21, 22015),
(190454,21, 22015),
(190446,21, 22015),
(190447,21, 22015),
(190111,21, 22015),
(190110,21, 22015),
(190438,21, 22015),
(190439,21, 22015),
(190462,21, 22015),
(190463,21, 22015),
-- Wotlk ONLY
-- https://www.wowhead.com/wotlk/npc=30567/strand-of-the-ancients-envoy
(190582,25, 30567),
(190583,25, 30567),
(190455,25, 30567),
(190454,25, 30567),
(190446,25, 30567),
(190447,25, 30567),
(190111,25, 30567),
(190110,25, 30567),
(190438,25, 30567),
(190439,25, 30567),
(190462,25, 30567),
(190463,25, 30567),
-- https://www.wowhead.com/wotlk/npc=34949/isle-of-conquest-envoy
-- https://www.wowhead.com/wotlk/npc=34951/isle-of-conquest-envoy
(190582,38, 34949),
(190583,38, 34949),
(190455,38, 34949),
(190454,38, 34949),
(190446,38, 34949),
(190447,38, 34949),
(190111,38, 34949),
(190110,38, 34949),
(190438,38, 34949),
(190439,38, 34949),
(190462,38, 34949),
(190463,38, 34949);
-- Spawn Groups
DELETE FROM `spawn_group` WHERE id = 19933;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19933, 'Thunder Bluff - Battleground Emissary x2 - Static ', 0, 0, 20549, 0x02 | 0x08); -- TBC will have WorldState = 19998
DELETE FROM `spawn_group_spawn` WHERE id = 19933;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19933,190582, -1),
(19933,190583, -1),
(19933,190455, -1),
(19933,190454, -1),
(19933,190446, -1),
(19933,190447, -1),
(19933,190111, -1),
(19933,190110, -1),
(19933,190438, -1),
(19933,190439, -1),
(19933,190462, -1),
(19933,190463, -1);
