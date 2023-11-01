-- Crazed Indu'le Survivor 32409
-- spawn pos corrected
UPDATE creature SET position_x = 3447.11, position_y = 1763.55, position_z = 76.8316, spawndist = 30, movementType = 1 WHERE guid = 532442;
-- move them to spawn_group
DELETE FROM pool_creature_template WHERE id = 32409;
DELETE FROM pool_template WHERE entry = 1075;
DELETE FROM `spawn_group` WHERE id = 31005;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(31005,'Dragonblight - Crazed Indu\'le Survivor 32409',0,1,0,0);
DELETE FROM `spawn_group_spawn` WHERE id = 31005;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(31005, 532441, -1),
(31005, 532442, -1),
(31005, 532443, -1),
(31005, 532444, -1),
(31005, 532445, -1),
(31005, 532446, -1),
(31005, 532447, -1),
(31005, 532448, -1);
