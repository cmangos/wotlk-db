-- Dirkee 32500 - RARE
DELETE FROM creature_addon WHERE guid = 530004;
DELETE FROM creature_movement WHERE id = 530004;
DELETE FROM game_event_creature WHERE guid = 530004;
DELETE FROM game_event_creature_data WHERE guid = 530004;
DELETE FROM creature_battleground WHERE guid = 530004;
DELETE FROM creature_linking WHERE guid = 530004;
DELETE FROM creature where guid = 530004;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(530004,32630,571,1,1,7922.0225,-3004.2124,1131.8136,0,1800,1800,10,1);
DELETE FROM `spawn_group` WHERE id = 33004;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33004, 'Storm Peaks - Dirkee 32500 - RARE', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 33004;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33004, 530004, -1);
-- more missing
