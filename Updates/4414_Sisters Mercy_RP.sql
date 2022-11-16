-- Sisters Mercy - RP added
UPDATE gameobject set spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE guid = 520437;
DELETE FROM `spawn_group` WHERE id = 30014;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(30014, 'Howling Fjord - Garvans Reef - o.187117 spawn for Ship `Sisters Mercy`', 1, 0, 20514, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 30014;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(30014, 520437, -1);
DELETE FROM conditions WHERE condition_entry IN (20514);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20514, 42, 30014, 0, 1, 0, 'Howling Fjord - Garvans Reef - o.187117 spawn for Ship `Sisters Mercy`');
DELETE FROM worldstate_name WHERE Id=30014;
INSERT INTO worldstate_name(Id, Name) VALUES
(30014,'Howling Fjord - Garvans Reef - o.187117 spawn for Ship `Sisters Mercy`');
DELETE FROM `dbscripts_on_event` WHERE id IN (16522,16523);
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(16522,0,53,0,0,0,0,0,0,30014,1,0,0,0,0,0,0,'Set worldstate variable to 1'), -- on
(16523,0,53,0,0,0,0,0,0,30014,0,0,0,0,0,0,0,'Set worldstate variable to 0'); -- off
-- Great Reef Shark 24637
-- fix bad swimming anim
UPDATE creature set MovementType = 3 WHERE id = 24637 AND MovementType = 2;
