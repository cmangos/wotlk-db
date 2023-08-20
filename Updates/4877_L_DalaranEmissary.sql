-- Dalaran Emissary - Both Factions
DELETE FROM creature_addon WHERE guid IN (
500569,500570,500561,500562,501014,501015,528112,528111,534096,534098,
500565,500566,500564,500563,501013,501012,528109,528110,534095,534097);
DELETE FROM creature_movement WHERE id IN (
500569,500570,500561,500562,501014,501015,528112,528111,534096,534098,
500565,500566,500564,500563,501013,501012,528109,528110,534095,534097);
DELETE FROM game_event_creature WHERE guid IN (
500569,500570,500561,500562,501014,501015,528112,528111,534096,534098,
500565,500566,500564,500563,501013,501012,528109,528110,534095,534097);
DELETE FROM game_event_creature_data WHERE guid IN (
500569,500570,500561,500562,501014,501015,528112,528111,534096,534098,
500565,500566,500564,500563,501013,501012,528109,528110,534095,534097);
DELETE FROM creature_battleground WHERE guid IN (
500569,500570,500561,500562,501014,501015,528112,528111,534096,534098,
500565,500566,500564,500563,501013,501012,528109,528110,534095,534097);
DELETE FROM creature_linking WHERE guid IN (
500569,500570,500561,500562,501014,501015,528112,528111,534096,534098,
500565,500566,500564,500563,501013,501012,528109,528110,534095,534097);
DELETE FROM creature where guid IN (
500569,500570,500561,500562,501014,501015,528112,528111,534096,534098,
500565,500566,500564,500563,501013,501012,528109,528110,534095,534097);
DELETE FROM game_event_creature WHERE guid IN 
(500571,500572,500567,500568);
DELETE FROM game_event_creature_data WHERE guid IN 
(500571,500572,500567,500568);
INSERT INTO game_event_creature_data (guid, event, `entry_id`) VALUES
-- Horde
-- https://www.wowhead.com/wotlk/npc=15106/frostwolf-emissary
(500571,18, 15106),
(500572,18, 15106),
-- https://www.wowhead.com/wotlk/npc=15105/warsong-emissary
(500571,19, 15105),
(500572,19, 15105),
-- https://www.wowhead.com/wotlk/npc=14990/defilers-emissary
(500571,20, 14990),
(500572,20, 14990),
-- https://www.wowhead.com/wotlk/npc=22015/eye-of-the-storm-envoy
(500571,21, 22015),
(500572,21, 22015),
-- https://www.wowhead.com/wotlk/npc=30567/strand-of-the-ancients-envoy
(500571,25, 30567),
(500572,25, 30567),
-- https://www.wowhead.com/wotlk/npc=34949/isle-of-conquest-envoy
-- https://www.wowhead.com/wotlk/npc=34951/isle-of-conquest-envoy
(500571,38, 34949),
(500572,38, 34949),
-- Alliance
-- https://www.wowhead.com/tbc/npc=15103/stormpike-emissary
(500567,18, 15103),
(500568,18, 15103),
-- https://www.wowhead.com/tbc/npc=15102/silverwing-emissary
(500567,19, 15102),
(500568,19, 15102),
-- https://www.wowhead.com/tbc/npc=14991/league-of-arathor-emissary
(500567,20, 14991),
(500568,20, 14991),
-- https://www.wowhead.com/tbc/npc=22013/eye-of-the-storm-emissary
(500567,21, 22013),
(500568,21, 22013),
-- https://www.wowhead.com/wotlk/npc=30566/strand-of-the-ancients-emissary
(500567,25, 30566),
(500568,25, 30566),
-- https://www.wowhead.com/wotlk/npc=34950/isle-of-conquest-emissary
(500567,38, 30566),
(500568,38, 30566);
-- Spawn Groups
DELETE FROM `spawn_group` WHERE id = 33701;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33701, 'Dalaran - Battleground Emissary x2 - Static 1', 0, 0, 20549, 0x02 | 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 33701;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33701,500571, -1),
(33701,500572, -1),
(33701,500567, -1),
(33701,500568, -1);
