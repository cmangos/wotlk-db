-- Duskwood - Zzarc\' Vul (300)
UPDATE `creature` SET `position_x` = '-11226.53', `position_y` = '-161.0184', `position_z` = '6.126283', `orientation` = '5.619960', `spawndist` = '2', `MovementType` = '1' WHERE (`guid` = '5066');
DELETE FROM creature WHERE guid IN (14,18);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('14', '300', '0', '0', '0', '-11168.17', '-141.1921', '6.588584', '6.242306', '300', '300', '2', '0', '1221', '0', '0', '1'),
('18', '300', '0', '0', '0', '-11155.73', '-192.6735', '13.66400', '3.098214', '300', '300', '2', '0', '1221', '0', '0', '1');

DELETE FROM spawn_group_spawn WHERE Id = 19002;
INSERT INTO spawn_group_spawn (Id, Guid, SlotId) VALUES
(19002, 5066, '-1'),
(19002, 14, '-1'),
(19002, 18, '-1');

DELETE FROM spawn_group WHERE Id = 19002;
INSERT INTO spawn_group (Id, Name, Type, MaxCount, WorldState, Flags) VALUES
(19002, 'Duskwood - Zzarc\' Vul (300)', '0', '1', '0', '0');
