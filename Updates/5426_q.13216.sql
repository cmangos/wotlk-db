-- q.13216 'Battle at Valhalas: The Return of Sigrid Iceborn'
DELETE FROM dbscripts_on_quest_start WHERE id IN (13216);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13216,1,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'npcFlags Removed'),
(13216,3000,0,0,0,0,0,0,0,31937,0,0,0,0,0,0,0,'say 1'),
(13216,6000,3,0,0,0,0,0,0x04,0,0,0,88,8215.829,3515.8918,651.88654,100,'move'),
(13216,14000,0,0,0,0,0,0,0,31892,0,0,0,0,0,0,0,'say 2'),
(13216,21000,0,0,0,0,24110,100,0,32757,0,0,0,0,0,0,0,'buddy say 1'),
(13216,21300,10,31242,900000,0,0,0,6|0x08,0,0,0,20056,8298.6875,3642.267,677.6457,3.94339,'Player: summon 31242'),
(13216,21301,10,24110,900000,0,0,0,6|0x08,0,0,0,82,8216.27,3516.211,630.8689,0,'Player: summon 24110'),
(13216,21400,16,14998,2,0,24110,100,0,0,0,0,0,0,0,0,0,'buddy sound');
UPDATE quest_template SET StartScript = 13216 WHERE entry IN (13216);
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (31892,31882,31883,31921);
UPDATE `broadcast_text` SET `ChatTypeID`= 3 WHERE `Id` IN (32757);
-- Sigrid Iceborn 31242
UPDATE creature_template SET Detection = 100, Pursuit = 300000 WHERE entry = 31242;
DELETE FROM creature_template_addon WHERE entry IN (31242);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(31242,26742,0,1,0,0,0,NULL);
UPDATE creature_template SET SpeedWalk = (2.5 / 2.5), MovementType = 3 WHERE Entry = 31242;
DELETE FROM creature_movement_template WHERE Entry = 31242;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31242,0,1,8298.6875,3642.267,677.6457,100,0,0),
(31242,0,2,8258.059,3598.419,677.6457,100,0,0),
(31242,0,3,8217.43,3554.5708,677.6457,100,0,0),
(31242,0,4,8169.0957,3473.4214,677.6457,100,0,0),
(31242,0,5,8200.269,3417.7683,673.563,100,0,0),
(31242,0,6,8281.517,3453.9524,673.535,100,0,0),
(31242,0,7,8278.022,3504.9465,677.6457,100,0,0),
(31242,0,8,8222.471,3532.925,625.535,100,6000,3124201);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3124201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3124201,1,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(3124201,2,39,0,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'fly off'),
(3124201,1000,24,0,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'unmount'),
(3124201,1001,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'send event 5'),
(3124201,1002,0,0,0,0,0,0,0x04,31883,0,0,0,0,0,0,0,'Say'),
(3124201,1003,1,375,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3124201,1004,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'run off'),
(3124201,4000,15,61165,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 61165'),
(3124201,5000,48,768,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove unitFlags'),
(3124201,5001,35,6,0,0,0,0,0,0,0,0,0,0,0,0,0,'send event 6');
DELETE FROM dbscripts_on_relay WHERE id = 21081;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21081,1,7,13216,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Sigrid Iceborn 31242 EAI: quest credit'),
(21081,2,3,0,0,0,31135,529605,7|0x10,1,0,0,0,0,0,0,0,'Part of Sigrid Iceborn 31242 EAI: 31135 move to spawn position'),
(21081,3,0,0,0,0,31135,529605,3|0x10,31921,0,0,0,0,0,0,0,'Part of Sigrid Iceborn 31242 EAI: 31135 say text'),
(21081,1003,29,3,1,0,31135,529605,7|0x10,0,0,0,0,0,0,0,0,'Part of Sigrid Iceborn 31242 EAI: npcFlags Added');
