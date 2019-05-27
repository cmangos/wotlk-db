DELETE FROM `creature` WHERE `guid` = 84840; -- tbc-db 84847
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(84840, 20922, 530, 1, 0, 0, 4038.75585, 3547.24096, 121.42054, 1.682029, 900, 900, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `UnitFlags`=33536 WHERE `entry`=20922; -- cmangos: don't add unk29 or stunned flag as they are added by spell
DELETE FROM `creature_template_addon` WHERE `entry` IN (20922);
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES
(20922, '29266');

-- cmangos: update to sniffed positions
UPDATE creature SET position_x=4032.783, position_y=3543.446, position_z=121.6113, orientation=0.08726646 WHERE id=20780; -- 88900
UPDATE creature SET position_x=4034.832, position_y=3545.647, position_z=121.4791, orientation=2.670354 WHERE id=20922;


