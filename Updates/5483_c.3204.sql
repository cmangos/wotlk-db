-- Gazz'uz 3204
-- moved to spawn groups
DELETE FROM `spawn_group` WHERE id = 19894;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19894, 'Durotar - Skull Rock - Gazz\'uz 3204', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19894;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19894, 6439, -1),
(19894, 6456, -1),
(19894, 6499, -1),
(19894, 7202, -1);
-- clean up
DELETE FROM game_event_creature WHERE guid = 6499;