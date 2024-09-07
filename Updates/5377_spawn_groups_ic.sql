-- Spawn Groups
-- Horde
-- Group 1
DELETE FROM `spawn_group` WHERE id = 34098;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34098, 'Icecrown - The Bombardment - Kor\'kron Squad Leader 31833 & Kor\'kron Infantryg 31832 - Group 1', 0, 0, 25016, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 34098;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34098, 531368, -1),
(34098, 531358, -1),
(34098, 531355, -1),
(34098, 531365, -1),
(34098, 531356, -1),
(34098, 531357, -1);
-- Group 2
DELETE FROM `spawn_group` WHERE id = 34099;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34099, 'Icecrown - The Bombardment - Kor\'kron Squad Leader 31833 & Kor\'kron Infantryg 31832 - Group 2', 0, 0, 25017, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 34099;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34099, 531367, -1),
(34099, 531351, -1),
(34099, 531352, -1),
(34099, 531353, -1),
(34099, 531354, -1),
(34099, 531363, -1);
-- Group 3
DELETE FROM `spawn_group` WHERE id = 34100;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34100, 'Icecrown - The Bombardment - Kor\'kron Squad Leader 31833 & Kor\'kron Infantryg 31832 - Group 3', 0, 0, 25018, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 34100;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34100, 531366, -1),
(34100, 531362, -1),
(34100, 531361, -1),
(34100, 531364, -1),
(34100, 531359, -1),
(34100, 531360, -1);
-- Alliance
DELETE FROM creature_addon WHERE guid IN (530000,530003,530006,530007,530008);
DELETE FROM creature_movement WHERE id IN (530000,530003,530006,530007,530008);
DELETE FROM game_event_creature WHERE guid IN (530000,530003,530006,530007,530008);
DELETE FROM game_event_creature_data WHERE guid IN (530000,530003,530006,530007,530008);
DELETE FROM creature_battleground WHERE guid IN (530000,530003,530006,530007,530008);
DELETE FROM creature_linking WHERE guid IN (530000,530003,530006,530007,530008);
DELETE FROM creature where guid IN (530000,530003,530006,530007,530008);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(530000,31701,571,1,1,7262.639,1505.9498,321.80032,5.46288,300,300,0,0),
(530003,31701,571,1,1,7301.569,1510.781,319.6929,5.393067,300,300,0,0), -- state 1
(530006,31701,571,1,1,7302.822,1508.931,319.6019,2.216568,300,300,0,0), -- state 8
(530007,31701,571,1,1,7301.77,1505.554,319.5568,4.852015,300,300,0,0),
(530008,31701,571,1,1,7301.784,1503.143,319.2873,1.658063,300,300,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (530003,530006);
INSERT INTO creature_addon (guid,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(530003,0,1,2,1,0,0,NULL),
(530006,0,8,2,1,0,0,NULL);
-- Group 1
DELETE FROM `spawn_group` WHERE id = 34101;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34101, 'Icecrown - The Bombardment - Skybreaker Squad Leader 31737 & Skybreaker Infantry 31701 - Group 1', 0, 0, 25019, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 34101;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34101, 530854, -1),
(34101, 530773, -1),
(34101, 530772, -1),
(34101, 530765, -1),
(34101, 530770, -1),
(34101, 530768, -1);
-- Group 2
DELETE FROM `spawn_group` WHERE id = 34102;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34102, 'Icecrown - The Bombardment - Skybreaker Squad Leader 31737 & Skybreaker Infantry 31701 - Group 2', 0, 0, 25020, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 34102;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34102, 530855, -1),
(34102, 530774, -1),
(34102, 530775, -1),
(34102, 530769, -1),
(34102, 530771, -1),
(34102, 530000, -1);
-- Group 3
DELETE FROM `spawn_group` WHERE id = 34103;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34103, 'Icecrown - The Bombardment - Skybreaker Squad Leader 31737 & Skybreaker Infantry 31701 - Group 3', 0, 0, 25021, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 34103;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34103, 530853, -1),
(34103, 530766, -1),
(34103, 530003, -1),
(34103, 530006, -1),
(34103, 530007, -1),
(34103, 530008, -1);
-- randomization of groups
DELETE FROM worldstate_name WHERE Id BETWEEN 350009 AND 350010;
INSERT INTO worldstate_name (Id, Name) VALUES
(350009,'Icecrown - The Bombardment - Kor\'kron Squad Leader 31833 & Kor\'kron Infantryg 31832'),
(350010,'Icecrown - The Bombardment - Skybreaker Squad Leader 31737 & Skybreaker Infantry 31701');
DELETE FROM conditions WHERE condition_entry BETWEEN 25016 AND 25021; 
INSERT INTO conditions(condition_entry, type, value1, value2, value3) VALUES
(25016,42,350009,1,0),
(25017,42,350009,1,1),
(25018,42,350009,1,2),
(25019,42,350010,1,0),
(25020,42,350010,1,1),
(25021,42,350010,1,2);
