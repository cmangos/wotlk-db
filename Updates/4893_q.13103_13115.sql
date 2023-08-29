-- q.13115 'Cheese for Glowergold' - H
-- q.13103 'Cheese for Glowergold' - A
UPDATE quest_template SET ReqSourceCount2 = 6 WHERE entry IN (13103,13115);

-- o.192824 'Half Full Glass of Wine'
UPDATE gameobject SET spawntimesecsmin = 180, spawntimesecsmax = 180 WHERE id IN (192824);
DELETE FROM game_event_gameobject WHERE guid IN (502886);
DELETE FROM gameobject_battleground WHERE guid IN (502886);
DELETE FROM gameobject WHERE guid IN (502886);
-- moved to spawn groups
-- Alliance group
DELETE FROM `spawn_group` WHERE id = 33702;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33702, 'Dalaran - A Hero\'s Welcome - Half Full Glass of Wine 192824', 1, 5, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 33702;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33702, 504553, -1),(33702, 504560, -1),(33702, 504567, -1),(33702, 504568, -1),(33702, 512616, -1),
(33702, 512617, -1),(33702, 512618, -1),(33702, 512619, -1),(33702, 512620, -1),(33702, 512622, -1);
-- Hore Group
DELETE FROM `spawn_group` WHERE id = 33703;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33703, 'Dalaran - The Filthy Animal - Half Full Glass of Wine 192824', 1, 5, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 33703;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33703, 504530, -1),(33703, 504556, -1),(33703, 504557, -1),(33703, 504558, -1),(33703, 512598, -1),
(33703, 512599, -1),(33703, 512600, -1),(33703, 512603, -1),(33703, 512615, -1),(33703, 512623, -1);
-- Neutral Group
-- 1
DELETE FROM `spawn_group` WHERE id = 33704;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33704, 'Dalaran - The Legerdemain Lounge - Half Full Glass of Wine 192824', 1, 5, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 33704;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33704, 504563, -1),(33704, 504564, -1),(33704, 504565, -1),(33704, 504566, -1),(33704, 512609, -1),
(33704, 512610, -1),(33704, 512611, -1),(33704, 512612, -1),(33704, 512613, -1),(33704, 512621, -1);
-- 2
DELETE FROM `spawn_group` WHERE id = 33705;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33705, 'Dalaran - The Violet Hold - Half Full Glass of Wine 192824', 1, 3, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 33705;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33705, 504551, -1),(33705, 504554, -1),(33705, 512607, -1),(33705, 512608, -1);
-- 3
DELETE FROM `spawn_group` WHERE id = 33706;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33706, 'Dalaran - Cantrips & Crows - Half Full Glass of Wine 192824', 1, 3, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 33706;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33706, 504552, -1),(33706, 504555, -1),(33706, 512601, -1),(33706, 512614, -1);
-- 4
DELETE FROM `spawn_group` WHERE id = 33707;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33707, 'Dalaran - One More Glass - Half Full Glass of Wine 192824', 1, 3, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 33707;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33707, 504561, -1),(33707, 504562, -1),(33707, 512602, -1),
(33707, 512604, -1),(33707, 512605, -1),(33707, 512606, -1);
