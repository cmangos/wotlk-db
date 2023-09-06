-- Raised Mud o.190778
-- Raised Mud o.190779
-- duplicates
DELETE FROM gameobject WHERE guid IN (511749,511752,511753,512628);
DELETE FROM game_event_gameobject WHERE guid IN (511749,511752,511753,512628);
DELETE FROM gameobject_battleground WHERE guid IN (511749,511752,511753,512628);
UPDATE gameobject SET id = 0, spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 190778;
UPDATE gameobject SET id = 0, spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 190779;
-- Spawn Group
DELETE FROM `spawn_group` WHERE id = 32540;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32540, 'Sholazar Basin - Raised Mud o.190778/190779', 1, 10, 0, 0);
DELETE FROM spawn_group_entry WHERE id = 32540;
INSERT INTO spawn_group_entry (Id, Entry, MinCount, MaxCount, Chance) VALUES
(32540,190778,0,0,20),
(32540,190779,0,0,80);

DELETE FROM `spawn_group_spawn` WHERE id = 32540;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32540, 504802, -1),(32540, 504803, -1),(32540, 504804, -1),
(32540, 504805, -1),(32540, 511750, -1),(32540, 511751, -1),
(32540, 512629, -1),(32540, 514371, -1),(32540, 514372, -1),
(32540, 514628, -1);
DELETE FROM dbscripts_on_go_template_use WHERE id IN (190779);
INSERT INTO dbscripts_on_go_template_use (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(190779,0,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');
--
UPDATE creature SET position_x = 5450.780273, position_y = 4797.465332, position_z = -212.259552 WHERE guid = 520104;
