-- q.13239 'Volatility' - H
-- q.13261 'Volatility' - H -- Daily
-- q.13291 'Borrowed Technology' - A
-- q.13292 'The Solution Solution' - A -- Daily
-- remove 1 item restriction
UPDATE quest_template SET ReqSourceCount1 = 3, ReqSourceCount2 = 3, ReqSourceCount3 = 3, ReqSourceCount4 = 3 WHERE entry IN (13239,13261,13291,13292);
-- objects
-- Pile of Bones 193199
DELETE FROM `spawn_group` WHERE id = 34104;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34104, 'Icecrown - The Broken Front - Pile of Bones 193199', 1, 20, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 34104;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34104, 500405, -1),(34104, 500406, -1),(34104, 500407, -1),(34104, 509359, -1),(34104, 509360, -1),
(34104, 509361, -1),(34104, 509362, -1),(34104, 509363, -1),(34104, 509364, -1),(34104, 509365, -1),
(34104, 509366, -1),(34104, 509367, -1),(34104, 509368, -1),(34104, 509369, -1),(34104, 509370, -1),
(34104, 509371, -1),(34104, 509372, -1),(34104, 509373, -1),(34104, 509374, -1),(34104, 509375, -1),
(34104, 509376, -1),(34104, 509377, -1),(34104, 512755, -1),(34104, 512756, -1),(34104, 512757, -1),
(34104, 512758, -1),(34104, 512759, -1),(34104, 512760, -1),(34104, 512761, -1),(34104, 512762, -1),
(34104, 512763, -1),(34104, 512764, -1),(34104, 512765, -1),(34104, 512766, -1),(34104, 512767, -1),
(34104, 513281, -1),(34104, 513282, -1),(34104, 514517, -1);
-- Abandoned Armor 193201
DELETE FROM `spawn_group` WHERE id = 34105;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34105, 'Icecrown - The Broken Front - Abandoned Armor 193201', 1, 20, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 34105;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34105, 500415, -1),(34105, 500416, -1),(34105, 500419, -1),(34105, 500420, -1),(34105, 509391, -1),
(34105, 509392, -1),(34105, 509393, -1),(34105, 509394, -1),(34105, 509395, -1),(34105, 509396, -1),
(34105, 509397, -1),(34105, 509398, -1),(34105, 509399, -1),(34105, 509400, -1),(34105, 512779, -1),
(34105, 512780, -1),(34105, 512781, -1),(34105, 512782, -1),(34105, 512783, -1),(34105, 512784, -1),
(34105, 512785, -1),(34105, 512786, -1),(34105, 512787, -1),(34105, 512788, -1),(34105, 512789, -1),
(34105, 513285, -1),(34105, 513286, -1),(34105, 513287, -1);
-- Abandoned Helm 193200
DELETE FROM `spawn_group` WHERE id = 34106;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34106, 'Icecrown - The Broken Front - Abandoned Helm 193200', 1, 20, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 34106;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34106, 500410, -1),(34106, 500412, -1),(34106, 500413, -1),(34106, 509378, -1),(34106, 509379, -1),
(34106, 509380, -1),(34106, 509381, -1),(34106, 509382, -1),(34106, 509383, -1),(34106, 509384, -1),
(34106, 509385, -1),(34106, 509386, -1),(34106, 509387, -1),(34106, 509388, -1),(34106, 509389, -1),
(34106, 509390, -1),(34106, 512768, -1),(34106, 512769, -1),(34106, 512770, -1),(34106, 512771, -1),
(34106, 512772, -1),(34106, 512773, -1),(34106, 512774, -1),(34106, 512775, -1),(34106, 512776, -1),
(34106, 512777, -1),(34106, 512778, -1),(34106, 513283, -1),(34106, 513284, -1),(34106, 514518, -1),
(34106, 514683, -1),(34106, 514684, -1);
-- Creatures
-- summoned via spell 59303
DELETE FROM creature_addon WHERE guid IN (530629,530630);
DELETE FROM creature_movement WHERE Id IN (530629,530630);
DELETE FROM game_event_creature WHERE guid IN (530629,530630);
DELETE FROM game_event_creature_data WHERE guid IN (530629,530630);
DELETE FROM creature_battleground WHERE guid IN (530629,530630);
DELETE FROM creature_linking WHERE guid IN (530629,530630) 
OR master_guid IN (530629,530630);
DELETE FROM creature WHERE guid IN (530629,530630);
-- Script
-- Armored Decoy 31578
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20942 AND 20944;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20942,0,39,1,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'Fly anim ON'),
(20943,0,37,0,0,1,0,0,0x02,0,0,0,0,0,0,0,0,''),
(20944,0,3,0,0,0,0,0,0x04,1,0,0,0,0,0,0,0,'move towards spawn point'),
(20944,5000,15,59375,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 59375');
DELETE FROM spell_script_target WHERE entry IN (59375,59335);
INSERT INTO spell_script_target VALUES
(59375, 1, 31630, 0),
(59335, 1, 31583, 0),
(59335, 1, 31578, 0);