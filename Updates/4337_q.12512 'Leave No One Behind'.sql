-- q.12512 'Leave No One Behind'

-- Crusader Lamoof 28141
UPDATE creature SET spawntimesecsmin = 180, spawntimesecsmax = 180 WHERE id = 28141;
-- Crusader Jonathan 28133
UPDATE creature SET spawntimesecsmin = 180, spawntimesecsmax = 180 WHERE id = 28133;
-- Crusader Josephine 28143
UPDATE creature SET spawntimesecsmin = 180, spawntimesecsmax = 180 WHERE id = 28143;
-- Leave No One Behind Bunny 28137
DELETE FROM creature_template_addon WHERE entry IN(28137);
INSERT INTO creature_template_addon(entry,auras) VALUES
(28137,'50670');
DELETE FROM dbscripts_on_relay WHERE `id` BETWEEN 20652 AND 20654;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20652,1,0,0,0,0,0,0,0x04,27521,0,0,0,0,0,0,0,'Part of Crusader Jonathan 28136 EAI: Say'),
(20652,100,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Crusader Jonathan 28136 EAI: set waypoints'),
(20653,1,0,0,0,0,0,0,0x04,27523,0,0,0,0,0,0,0,'Part of Crusader Lamoof 28142 EAI: Say'),
(20653,100,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Crusader Lamoof 28142 EAI: set waypoints'),
(20654,1,0,0,0,0,0,0,0x04,27528,0,0,0,0,0,0,0,'Part of Crusader Josephine 28148 EAI: Say'),
(20654,100,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Crusader Josephine 28148 EAI: set waypoints');
UPDATE creature_template SET MovementType = 2 WHERE entry IN (28136,28142,28148);
DELETE FROM `creature_movement_template` WHERE `entry` IN (28136,28142,28148);
INSERT INTO `creature_movement_template` (`entry`, `point`, `positionx`, `positiony`, `positionz`, `orientation`, `waittime`, `scriptid`) VALUES
(28136,1,5255.16,-3497.32,291.694,100,0,0),
(28136,2,5256.66,-3509.06,291.692,100,0,0),
(28136,3,5252.21,-3516.4,291.526,100,0,0),
(28136,4,5256.56,-3522.07,291.692,3.90896,3000,1),
(28142,1,5255.16,-3497.32,291.694,100,0,0),
(28142,2,5256.66,-3509.06,291.692,100,0,0),
(28142,3,5252.21,-3516.4,291.526,100,0,0),
(28142,4,5256.56,-3522.07,291.692,3.90896,3000,1),
(28148,1,5255.16,-3497.32,291.694,100,0,0),
(28148,2,5256.66,-3509.06,291.692,100,0,0),
(28148,3,5252.21,-3516.4,291.526,100,0,0),
(28148,4,5256.56,-3522.07,291.692,3.90896,3000,1);
