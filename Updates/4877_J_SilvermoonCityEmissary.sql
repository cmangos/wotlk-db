-- Silvermoon City Emissary - Updated
-- Silvermoon City Emissary Patrol
-- Make them sync with TDB
-- missing added
DELETE FROM creature_addon WHERE guid IN (190536,190537,86723,54708,54709); -- 86723 - custom made ?
DELETE FROM creature_movement WHERE id IN (190536,190537,86723,54708,54709);
DELETE FROM game_event_creature WHERE guid IN (190536,190537,86723,54708,54709);
DELETE FROM game_event_creature_data WHERE guid IN (190536,190537,86723,54708,54709);
DELETE FROM creature_battleground WHERE guid IN (190536,190537,86723,54708,54709);
DELETE FROM creature_linking WHERE guid IN (190536,190537,86723,54708,54709);
DELETE FROM creature where guid IN (190536,190537,86723,54708,54709);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawndist, MovementType) VALUES
(190536,15106,530,1,1,9513.21,-7281.77,14.0154,3.16165,0,0),
(190537,15106,530,1,1,9513.21,-7281.77,14.0154,3.16165,0,0);
DELETE FROM game_event_creature_data WHERE guid IN (190536,190537);
INSERT INTO game_event_creature_data (guid, event, `entry_id`) VALUES
-- https://www.wowhead.com/wotlk/npc=15106/frostwolf-emissary
(190536,18, 15106),
(190537,18, 15106),
-- https://www.wowhead.com/wotlk/npc=15105/warsong-emissary
(190536,19, 15105),
(190537,19, 15105),
-- https://www.wowhead.com/wotlk/npc=14990/defilers-emissary
(190536,20, 14990),
(190537,20, 14990),
-- https://www.wowhead.com/wotlk/npc=22015/eye-of-the-storm-envoy
(190536,21, 22015),
(190537,21, 22015),
-- Wotlk ONLY
-- https://www.wowhead.com/wotlk/npc=30567/strand-of-the-ancients-envoy
(190536,25, 30567),
(190537,25, 30567),
-- https://www.wowhead.com/wotlk/npc=34949/isle-of-conquest-envoy
-- https://www.wowhead.com/wotlk/npc=34951/isle-of-conquest-envoy
(190536,38, 34949),
(190537,38, 34949);
-- Spawn Groups
UPDATE creature SET position_x = 9513.21, position_y = -7281.77, position_z = 14.0154, spawndist = 0, MovementType = 0 WHERE guid IN (190536,190537);
DELETE FROM `spawn_group` WHERE id = 19930;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19930, 'Silvermoon City - Battleground Emissary x2 - Patrol', 0, 0, 20549, 0x02 | 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 19930;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19930, 190536, 0),
(19930, 190537, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19930;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19930, 2, 2, 0, 19930, 2, 'Silvermoon City - Battleground Emissary x2 - Patrol');
DELETE FROM `waypoint_path` WHERE PathId = 19930;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19930,1,9513.21,-7281.77,14.0154,100,0,0),
(19930,2,9507.63,-7299.16,14.1154,100,0,0),
(19930,3,9515.57,-7319.61,14.1189,100,0,0),
(19930,4,9542.46,-7320.01,14.1007,100,0,0),
(19930,5,9585.5,-7322.02,14.111,100,0,0),
(19930,6,9599.2,-7335.31,14.0965,100,0,0),
(19930,7,9599.59,-7363.96,13.4386,100,0,0),
(19930,8,9618.38,-7369.91,14.3668,100,0,0),
(19930,9,9619.29,-7383.71,14.7318,100,0,0),
(19930,10,9590.54,-7383.63,13.4589,100,0,0),
(19930,11,9589.82,-7400.06,13.3031,100,0,0),
(19930,12,9595.09,-7419.61,13.3051,100,0,0),
(19930,13,9611.4,-7432.2,13.3069,100,0,0),
(19930,14,9647.76,-7431.5,13.294,100,0,0),
(19930,15,9662.46,-7434.24,13.2933,100,0,0),
(19930,16,9688.15,-7441.58,13.2933,100,0,0),
(19930,17,9719.5,-7424.93,13.2933,100,0,0),
(19930,18,9768.13,-7424.33,13.3861,100,0,0),
(19930,19,9768.68,-7441.7,14.3929,100,0,0),
(19930,20,9793.08,-7442.29,14.3767,100,0,0),
(19930,21,9794.43,-7424.12,13.5046,100,0,0),
(19930,22,9821.16,-7424.12,13.3038,100,0,0),
(19930,23,9867.97,-7425.04,13.2829,100,0,0),
(19930,24,9884.41,-7422.78,13.2651,100,0,0),
(19930,25,9890.15,-7413.51,13.2649,100,0,0),
(19930,26,9892.01,-7389.04,13.5591,100,0,0),
(19930,27,9895.59,-7384.54,15.3057,100,0,0),
(19930,28,9895.6,-7365.38,20.7113,100,0,0),
(19930,29,9895.52,-7319.92,23.2204,100,0,0),
(19930,30,9874.08,-7314.13,26.2839,100,0,0),
(19930,31,9855.79,-7311.02,26.2989,100,0,0),
(19930,32,9838.25,-7288.56,26.3157,100,0,0),
(19930,33,9815.98,-7278.05,26.3237,100,0,0),
(19930,34,9785.61,-7298.04,25.8062,100,0,0),
(19930,35,9757.03,-7316.12,24.411,100,0,0),
(19930,36,9733.63,-7326.16,24.4111,100,0,0),
(19930,37,9704.81,-7331.63,11.8255,100,0,0),
(19930,38,9685.28,-7334.18,12.3784,100,0,0),
(19930,39,9673.97,-7334.17,12.3667,100,0,0),
(19930,40,9671.04,-7311.83,13.9285,100,0,0),
(19930,41,9653.96,-7310.7,14.9551,100,0,0),
(19930,42,9653.58,-7297.51,14.9571,100,0,0),
(19930,43,9672.95,-7296.59,13.9357,100,0,0),
(19930,44,9673.49,-7280.96,14.0506,100,0,0),
(19930,45,9641.17,-7280.8,13.9914,100,0,0),
(19930,46,9600.86,-7280.09,13.987,100,0,0),
(19930,47,9575.57,-7279.78,13.9855,100,0,0),
(19930,48,9539.29,-7280.51,13.9941,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId = 19930;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19930,'Silvermoon City - Battleground Emissary x2 - Patrol');

-- Make all static sync with TDB
UPDATE creature SET guid = 190065, id = 15106 WHERE guid = 54711;
UPDATE creature SET guid = 190064, id = 15106 WHERE guid = 54710;
UPDATE creature SET guid = 190089, id = 15106 WHERE guid = 54716;
UPDATE creature SET guid = 190088, id = 15106 WHERE guid = 54717;
UPDATE creature SET guid = 190056, id = 15106 WHERE guid = 54707;
UPDATE creature SET guid = 190057, id = 15106 WHERE guid = 54706;
UPDATE creature SET guid = 190080, id = 15106 WHERE guid = 54715;
UPDATE creature SET guid = 190081, id = 15106 WHERE guid = 54714;
UPDATE creature SET guid = 190072, id = 15106 WHERE guid = 54712;
UPDATE creature SET guid = 190073, id = 15106 WHERE guid = 54713;
DELETE FROM game_event_creature WHERE guid IN 
(54711,54710,54716,54717,54707,54706,54715,54714,54712,54713);
DELETE FROM game_event_creature_data WHERE guid IN 
(190065,190064,190089,190088,190056,190057,190080,190081,190072,190073);
INSERT INTO game_event_creature_data (guid, event, `entry_id`) VALUES
-- https://www.wowhead.com/wotlk/npc=15106/frostwolf-emissary
(190065,18, 15106),
(190064,18, 15106),
(190089,18, 15106),
(190088,18, 15106),
(190056,18, 15106),
(190057,18, 15106),
(190080,18, 15106),
(190081,18, 15106),
(190072,18, 15106),
(190073,18, 15106),
-- https://www.wowhead.com/wotlk/npc=15105/warsong-emissary
(190065,19, 15105),
(190064,19, 15105),
(190089,19, 15105),
(190088,19, 15105),
(190056,19, 15105),
(190057,19, 15105),
(190080,19, 15105),
(190081,19, 15105),
(190072,19, 15105),
(190073,19, 15105),
-- https://www.wowhead.com/wotlk/npc=14990/defilers-emissary
(190065,20, 14990),
(190064,20, 14990),
(190089,20, 14990),
(190088,20, 14990),
(190056,20, 14990),
(190057,20, 14990),
(190080,20, 14990),
(190081,20, 14990),
(190072,20, 14990),
(190073,20, 14990),
-- https://www.wowhead.com/wotlk/npc=22015/eye-of-the-storm-envoy
(190065,21, 22015),
(190064,21, 22015),
(190089,21, 22015),
(190088,21, 22015),
(190056,21, 22015),
(190057,21, 22015),
(190080,21, 22015),
(190081,21, 22015),
(190072,21, 22015),
(190073,21, 22015),
-- Wotlk ONLY
-- https://www.wowhead.com/wotlk/npc=30567/strand-of-the-ancients-envoy
(190065,25, 30567),
(190064,25, 30567),
(190089,25, 30567),
(190088,25, 30567),
(190056,25, 30567),
(190057,25, 30567),
(190080,25, 30567),
(190081,25, 30567),
(190072,25, 30567),
(190073,25, 30567),
-- https://www.wowhead.com/wotlk/npc=34949/isle-of-conquest-envoy
-- https://www.wowhead.com/wotlk/npc=34951/isle-of-conquest-envoy
(190065,38, 34949),
(190064,38, 34949),
(190089,38, 34949),
(190088,38, 34949),
(190056,38, 34949),
(190057,38, 34949),
(190080,38, 34949),
(190081,38, 34949),
(190072,38, 34949),
(190073,38, 34949);
-- Spawn Groups
DELETE FROM `spawn_group` WHERE id = 19929;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19929, 'Silvermoon City - Battleground Emissary x2 - Static 1', 0, 0, 20549, 0x02 | 0x08); -- TBC will have WorldState = 19998
DELETE FROM `spawn_group_spawn` WHERE id = 19929;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19929,190065, -1),
(19929,190064, -1),
(19929,190089, -1),
(19929,190088, -1),
(19929,190056, -1),
(19929,190057, -1),
(19929,190080, -1),
(19929,190081, -1),
(19929,190072, -1),
(19929,190073, -1);
