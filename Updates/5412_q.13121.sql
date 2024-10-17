-- q.13121 'Through the Eye'
UPDATE gossip_menu_option SET action_script_id = 1000501 WHERE menu_id = 10005;
DELETE FROM dbscripts_on_gossip WHERE id IN (10005,1000501);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1000501,1,31,30836,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'terminate if alive'),
(1000501,100,15,57888,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 57888'),
(1000501,1000,0,0,0,0,0,0,0x04,31493,0,0,0,0,0,0,0,'say'),
(1000501,3000,15,57891,0,0,23837,503154,1|0x10,0,0,0,0,0,0,0,0,'cast 57891'),
(1000501,3001,15,57885,0,0,23837,503155,1|0x10,0,0,0,0,0,0,0,0,'cast 57891');
-- spell fixes
DELETE FROM spell_script_target WHERE entry IN(57891,57885);
INSERT INTO spell_script_target VALUES
(57891,1,23837,0),
(57885,1,23837,0);
-- Image of Vardmadra 30836
UPDATE creature_template SET UnitFlags = 33544 WHERE Entry = 30836;
-- Image of a Shadow Cultist 30835
UPDATE creature_template SET UnitFlags = 33544, EquipmentTemplateid = 923 WHERE Entry = 30835;
DELETE FROM dbscripts_on_relay WHERE id IN (21039,21040);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 21039
(21039,0,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.1887,'Part of Image of Vardmadra 30836 EAI: move'),
(21039,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Image of Vardmadra 30836 EAI: active'),
-- 21040
(21040,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Image of a Shadow Cultist 30835 EAI: active'),
(21040,2,20,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Image of a Shadow Cultist 30835 EAI: waypoints');
DELETE FROM creature_movement_template WHERE Entry = 30835;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30835,1,6829.1836,3814.8862,621.2085,100,0,0),
(30835,2,6829.1836,3814.8862,621.2085,0.81993,90000,3083501);
UPDATE `broadcast_text` SET `ChatTypeID`= 2 WHERE `Id` IN (31477);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3083501);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3083501,1000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'kneel'), -- 00:53:34.518
(3083501,3000,0,0,0,0,0,0,0x04,31446,0,0,0,0,0,0,0,'say 1'), -- 00:53:36.245
(3083501,4500,1,1,0,0,30836,10,0x04,0,0,0,0,0,0,0,0,'buddy emote'), -- 00:53:37.757
(3083501,4600,0,0,0,0,30836,10,0x04,31481,0,0,0,0,0,0,0,'buddy say 1'), -- 00:53:37.882
(3083501,7000,0,0,0,0,0,0,0x04,31476,0,0,0,0,0,0,0,'say 2'), -- 00:53:39.494
(3083501,12000,1,1,0,0,30836,10,0x04,0,0,0,0,0,0,0,0,'buddy emote'), -- 00:53:45.854
(3083501,11000,0,0,0,0,30836,10,0x04,31482,0,0,0,0,0,0,0,'buddy say 2'), -- 00:53:45.959
(3083501,14000,0,0,0,0,0,0,0x04,31477,0,0,0,0,0,0,0,'say 3'), -- 00:53:46.775
(3083501,18000,0,0,0,0,0,0,0x04,31478,0,0,0,0,0,0,0,'say 4'), -- 00:53:50.015
(3083501,23000,1,1,0,0,30836,10,0x04,0,0,0,0,0,0,0,0,'buddy emote'), -- 00:53:55.580
(3083501,23100,0,0,0,0,30836,10,0x04,31483,0,0,0,0,0,0,0,'buddy say 3'), -- 00:53:55.691
(3083501,28000,0,0,0,0,0,0,0x04,31479,0,0,0,0,0,0,0,'say 5'), -- 00:54:00.539
(3083501,31000,1,1,0,0,30836,10,0x04,0,0,0,0,0,0,0,0,'buddy emote'), -- 00:54:03.659
(3083501,31100,0,0,0,0,30836,10,0x04,31484,0,0,0,0,0,0,0,'buddy say 4'), -- 00:54:03.778
(3083501,39000,1,1,0,0,30836,10,0x04,0,0,0,0,0,0,0,0,'buddy emote'), -- 00:54:11.778
(3083501,39100,0,0,0,0,30836,10,0x04,31485,0,0,0,0,0,0,0,'buddy say 5'), -- 00:54:11.890
(3083501,43000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand'), -- 00:54:15.834
(3083501,45000,1,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 00:54:17.455
(3083501,46000,0,0,0,0,0,0,0x04,31480,0,0,0,0,0,0,0,'say 6'), -- 00:54:17.575
(3083501,48000,3,0,0,0,0,0,0x04,0,0,0,0,6817.692,3802.572,621.20795,100,'move'), -- 00:54:19.878
(3083501,49000,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 5'),
(3083501,51001,18,0,0,0,30836,50,0x04,0,0,0,0,0,0,0,0,'buddy despawn'),
(3083501,51000,21,0,0,0,30836,50,0x04,0,0,0,0,0,0,0,0,'buddy unactive'),
(3083501,52001,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn'),
(3083501,52000,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM dbscripts_on_spell WHERE id IN (57884);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(57884,0,14,57889,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove aura');
