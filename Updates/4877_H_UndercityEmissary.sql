-- Undercity Emissary - Updated
-- Undercity Emissary Patrol
-- Make them sync with TDB
UPDATE creature SET guid = 190552, id = 15106 WHERE guid = 110245;
UPDATE creature SET guid = 190553, id = 15106 WHERE guid = 110246;
DELETE FROM game_event_creature WHERE guid IN (110245,110246);
DELETE FROM game_event_creature_data WHERE guid IN (190552,190553);
INSERT INTO game_event_creature_data (guid, event, `entry_id`) VALUES
-- https://www.wowhead.com/wotlk/npc=15106/frostwolf-emissary
(190552,18, 15106),
(190553,18, 15106),
-- https://www.wowhead.com/wotlk/npc=15105/warsong-emissary
(190552,19, 15105),
(190553,19, 15105),
-- https://www.wowhead.com/wotlk/npc=14990/defilers-emissary
(190552,20, 14990),
(190553,20, 14990),
-- https://www.wowhead.com/wotlk/npc=22015/eye-of-the-storm-envoy
(190552,21, 22015),
(190553,21, 22015),
-- Wotlk ONLY
-- https://www.wowhead.com/wotlk/npc=30567/strand-of-the-ancients-envoy
(190552,25, 30567),
(190553,25, 30567),
-- https://www.wowhead.com/wotlk/npc=34949/isle-of-conquest-envoy
-- https://www.wowhead.com/wotlk/npc=34951/isle-of-conquest-envoy
(190552,38, 34949),
(190553,38, 34949);
-- Spawn Groups
UPDATE creature SET position_x = 1633.54, position_y = 180.941, position_z = -62.1792, spawndist = 0, MovementType = 0 WHERE guid IN (190552,190553);
DELETE FROM `spawn_group` WHERE id = 19932;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19932, 'Undercity - Battleground Emissary x2 - Patrol', 0, 0, 20549, 0x02 | 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 19932;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19932, 190552, 0),
(19932, 190553, 1);
DELETE FROM `spawn_group_formation` WHERE id = 19932;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19932, 2, 2, 0, 19932, 2, 'Undercity - Battleground Emissary x2 - Patrol');
DELETE FROM `waypoint_path` WHERE PathId = 19932;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(19932,1,1633.54,180.941,-62.1792,100,0,0),
(19932,2,1643.4,187.231,-62.1807,100,0,0),
(19932,3,1659.3,207.71,-62.1788,100,0,0),
(19932,4,1665.55,226.576,-62.1788,100,0,0),
(19932,5,1666.6,249.188,-62.1788,100,0,0),
(19932,6,1660.32,271.069,-62.1788,100,0,0),
(19932,7,1647.42,288.737,-62.1818,100,0,0),
(19932,8,1624.67,307.036,-62.1787,100,0,0),
(19932,9,1581.49,310.531,-62.1787,100,0,0),
(19932,10,1546.92,291.715,-62.1805,100,0,0),
(19932,11,1529.93,269.005,-62.1789,100,0,0),
(19932,12,1526.49,213.221,-62.1789,100,0,0),
(19932,13,1537.43,194.846,-62.1789,100,0,0),
(19932,14,1564.85,173.251,-62.1786,100,0,0),
(19932,15,1614.72,169.978,-62.1786,100,0,0);
DELETE FROM `waypoint_path_name` WHERE PathId = 19932;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(19932,'Undercity - Battleground Emissary x2 - Patrol');

-- Make all static sync with TDB
UPDATE creature SET guid = 190464, id = 15106 WHERE guid = 110244;
UPDATE creature SET guid = 190465, id = 15106 WHERE guid = 110243;
UPDATE creature SET guid = 190472, id = 15106 WHERE guid = 110242;
UPDATE creature SET guid = 190473, id = 15106 WHERE guid = 110241;
UPDATE creature SET guid = 190489, id = 15106 WHERE guid = 110240;
UPDATE creature SET guid = 190480, id = 15106 WHERE guid = 110239;
UPDATE creature SET guid = 190481, id = 15106 WHERE guid = 110248;
UPDATE creature SET guid = 190488, id = 15106 WHERE guid = 110247;
DELETE FROM game_event_creature WHERE guid IN 
(110244,110243,110242,110241,110240,110239,110248,110247);
DELETE FROM game_event_creature_data WHERE guid IN 
(190464,190465,190472,190473,190489,190480,190481,190488);
INSERT INTO game_event_creature_data (guid, event, `entry_id`) VALUES
-- https://www.wowhead.com/wotlk/npc=15106/frostwolf-emissary
(190464,18, 15106),
(190465,18, 15106),
(190472,18, 15106),
(190473,18, 15106),
(190489,18, 15106),
(190480,18, 15106),
(190481,18, 15106),
(190488,18, 15106),
-- https://www.wowhead.com/wotlk/npc=15105/warsong-emissary
(190464,19, 15105),
(190465,19, 15105),
(190472,19, 15105),
(190473,19, 15105),
(190489,19, 15105),
(190480,19, 15105),
(190481,19, 15105),
(190488,19, 15105),
-- https://www.wowhead.com/wotlk/npc=14990/defilers-emissary
(190464,20, 14990),
(190465,20, 14990),
(190472,20, 14990),
(190473,20, 14990),
(190489,20, 14990),
(190480,20, 14990),
(190481,20, 14990),
(190488,20, 14990),
-- https://www.wowhead.com/wotlk/npc=22015/eye-of-the-storm-envoy
(190464,21, 22015),
(190465,21, 22015),
(190472,21, 22015),
(190473,21, 22015),
(190489,21, 22015),
(190480,21, 22015),
(190481,21, 22015),
(190488,21, 22015),
-- Wotlk ONLY
-- https://www.wowhead.com/wotlk/npc=30567/strand-of-the-ancients-envoy
(190464,25, 30567),
(190465,25, 30567),
(190472,25, 30567),
(190473,25, 30567),
(190489,25, 30567),
(190480,25, 30567),
(190481,25, 30567),
(190488,25, 30567),
-- https://www.wowhead.com/wotlk/npc=34949/isle-of-conquest-envoy
-- https://www.wowhead.com/wotlk/npc=34951/isle-of-conquest-envoy
(190464,38, 34949),
(190465,38, 34949),
(190472,38, 34949),
(190473,38, 34949),
(190489,38, 34949),
(190480,38, 34949),
(190481,38, 34949),
(190488,38, 34949);
-- Spawn Groups
DELETE FROM `spawn_group` WHERE id = 19931;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19931, 'Undercity - Battleground Emissary x2 - Static 1', 0, 0, 20549, 0x02 | 0x08); -- TBC will have WorldState = 19998
DELETE FROM `spawn_group_spawn` WHERE id = 19931;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19931,190464, -1),
(19931,190465, -1),
(19931,190472, -1),
(19931,190473, -1),
(19931,190489, -1),
(19931,190480, -1),
(19931,190481, -1),
(19931,190488, -1);
