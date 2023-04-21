-- Giant Clam (o.19017)
-- Delete from old Pool SYSTEM
DELETE FROM pool_template WHERE entry BETWEEN 13984 AND 13988;
DELETE FROM pool_gameobject WHERE pool_entry BETWEEN 13984 AND 13988;
-- Moved to Spawn Groups
DELETE FROM `spawn_group` WHERE id BETWEEN 29991 AND 29995;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(29991, 'Bloodmyst Isle (The Crimson Reach) - Giant Clam (19017)', 1, 1, 0, 0),
(29992, 'Bloodmyst Isle (The Hidden Reef) - Giant Clam (19017)', 1, 2, 0, 0),
(29993, 'Bloodmyst Isle - Giant Clam (19017)', 1, 2, 0, 0),
(29994, 'Bloodmyst Isle (Blacksilt Shore) - Giant Clam (19017)', 1, 2, 0, 0),
(29995, 'Ghostlands - Giant Clam (19017)', 1, 4, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id BETWEEN 29991 AND 29995;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
-- 29991
(29991, 5309502, -1),
(29991, 5309503, -1),
-- 29992
(29992, 5309504, -1),
(29992, 5309505, -1),
(29992, 5309506, -1),
(29992, 5309507, -1),
-- 29993
(29993, 5309508, -1),
(29993, 5309509, -1),
(29993, 5309510, -1),
(29993, 5309511, -1),
-- 29994
(29994, 5309512, -1),
(29994, 5309513, -1),
(29994, 5309514, -1),
(29994, 5309515, -1),
-- 29995
(29995, 5309516, -1),
(29995, 5309517, -1),
(29995, 5309518, -1),
(29995, 5309519, -1),
(29995, 5309520, -1),
(29995, 5309521, -1),
(29995, 5309522, -1),
(29995, 5309523, -1);
