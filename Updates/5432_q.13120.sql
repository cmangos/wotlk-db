-- q.13120 'Death's Gaze'
-- Death's Gaze Orb 192917
DELETE FROM gameobject WHERE guid BETWEEN 521123 AND 521125;
INSERT INTO gameobject (`guid`, `id`, `map`, `spawnMask`, `phasemask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`) VALUES
(521123,192917,571,1,1,6514.7314,3273.2222,667.5439,3.9269955,0,0,-0.92387867,0.3826855,10,10), -- 20031
(521124,192917,571,1,1,6475.678,3399.6753,599.0835,2.0594883,0,0,0.85716724,0.5150382,10,10), -- 20030
(521125,192917,571,1,1,6705.82,3528.9863,673.7496,0.7155849,0,0,0.35020733,0.9366722,10,10); -- 20032
-- spawn group 1
DELETE FROM `spawn_group` WHERE id = 34143;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34143, 'Icecrown - The Fleshwerks - o.192917 spawn with q.13120 - Event 20031', 1, 0, 20769, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 34143;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34143, 521123, -1);
DELETE FROM conditions WHERE condition_entry IN (20769);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20769, 42, 34143, 1, 1, 0, 'Icecrown - The Fleshwerks - o.192917 spawn with q.13120 - Event 20031');
DELETE FROM worldstate_name WHERE Id=34143;
INSERT INTO worldstate_name(Id, Name) VALUES
(34143,'Icecrown - The Fleshwerks - o.192917 spawn with q.13120 - Event 20031');
DELETE FROM dbscripts_on_event WHERE id = 20031;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20031,0,53,0,0,0,0,0,0,34143,1,0,0,0,0,0,0,'Set worldstate variable to 1'), -- on
(20031,7000,53,0,0,0,0,0,0,34143,0,0,0,0,0,0,0,'Set worldstate variable to 0'); -- off
-- spawn group 2
DELETE FROM `spawn_group` WHERE id = 34144;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34144, 'Icecrown - The Fleshwerks - o.192917 spawn with q.13120 - Event 20030', 1, 0, 20770, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 34144;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34144, 521124, -1);
DELETE FROM conditions WHERE condition_entry IN (20770);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20770, 42, 34144, 1, 1, 0, 'Icecrown - The Fleshwerks - o.192917 spawn with q.13120 - Event 20030');
DELETE FROM worldstate_name WHERE Id=34144;
INSERT INTO worldstate_name(Id, Name) VALUES
(34144,'Icecrown - The Fleshwerks - o.192917 spawn with q.13120 - Event 20030');
DELETE FROM dbscripts_on_event WHERE id = 20030;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20030,0,53,0,0,0,0,0,0,34144,1,0,0,0,0,0,0,'Set worldstate variable to 1'), -- on
(20030,7000,53,0,0,0,0,0,0,34144,0,0,0,0,0,0,0,'Set worldstate variable to 0'); -- off
-- spawn group 3
DELETE FROM `spawn_group` WHERE id = 34145;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34145, 'Icecrown - The Fleshwerks - o.192917 spawn with q.13120 - Event 20032', 1, 0, 20771, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 34145;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34145, 521125, -1);
DELETE FROM conditions WHERE condition_entry IN (20771);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20771, 42, 34145, 1, 1, 0, 'Icecrown - The Fleshwerks - o.192917 spawn with q.13120 - Event 20032');
DELETE FROM worldstate_name WHERE Id=34145;
INSERT INTO worldstate_name(Id, Name) VALUES
(34145,'Icecrown - The Fleshwerks - o.192917 spawn with q.13120 - Event 20032');
DELETE FROM dbscripts_on_event WHERE id = 20032;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20032,0,53,0,0,0,0,0,0,34145,1,0,0,0,0,0,0,'Set worldstate variable to 1'), -- on
(20032,7000,53,0,0,0,0,0,0,34145,0,0,0,0,0,0,0,'Set worldstate variable to 0'); -- off
