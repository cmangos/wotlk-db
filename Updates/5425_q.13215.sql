-- q.13215 'Battle at Valhalas: Khit'rix the Dark Master'
DELETE FROM dbscripts_on_quest_start WHERE id IN (13215);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13215,1,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'npcFlags Removed'),
(13215,3000,0,0,0,0,0,0,0,31771,0,0,0,0,0,0,0,'say 1'),
(13215,6000,3,0,0,0,0,0,0x04,0,0,0,88,8215.829,3515.8918,651.88654,100,'move'),
(13215,14000,0,0,0,0,0,0,0,31770,0,0,0,0,0,0,0,'say 2'),
(13215,21000,0,0,0,0,24110,100,0,32753,0,0,0,0,0,0,0,'buddy say 1'),
(13215,21300,10,31222,900000,0,0,0,6|0x08,0,0,0,88,8179.927,3411.0557,633.50024,1.806,'Player: summon 31222'),
(13215,21301,10,24110,900000,0,0,0,6|0x08,0,0,0,82,8216.27,3516.211,630.8689,0,'Player: summon 24110'),
(13215,21400,16,14998,2,0,24110,100,0,0,0,0,0,0,0,0,0,'buddy sound');
UPDATE quest_template SET StartScript = 13215 WHERE entry IN (13215);
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (31770,31836,31820);
UPDATE `broadcast_text` SET `ChatTypeID`= 3 WHERE `Id` IN (32753);
-- Khit'rix the Dark Master 31222
UPDATE creature_template SET Detection = 100, Pursuit = 300000 WHERE entry = 31222;
DELETE FROM creature_movement_template WHERE Entry = 31222;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- Path 1
(31222,1,1,8179.927,3411.0557,633.50024,100,1,5),
(31222,1,2,8174.2812,3434.635,627.97144,100,0,0),
(31222,1,3,8180.7275,3463.107,627.7145,100,1000,3122201),
-- path 2
(31222,2,1,8215.995,3474.3872,627.5381,100,0,0),
(31222,2,2,8238.324,3496.06,628.23865,100,0,0),
(31222,2,3,8242.48,3539.67,628.506,100,0,0),
(31222,2,4,8210.76,3551.87,627.182,100,0,0),
(31222,2,5,8179.47,3545.91,628.16,100,0,0),
(31222,2,6,8166.61,3514.54,627.718,100,0,0),
(31222,2,7,8162.8,3484.93,626.378,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3122201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3122201,1,0,0,0,0,0,0,0x04,31836,0,0,0,0,0,0,0,'say'),
(3122201,10,20,2,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'set path2'),
(3122201,100,48,768,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove unitFlags');
DELETE FROM dbscripts_on_relay WHERE id = 21080;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21080,1,7,13215,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Khit\'rix the Dark Master 31222 EAI: quest credit'),
(21080,2,3,0,0,0,31135,529605,7|0x10,1,0,0,0,0,0,0,0,'Part of Khit\'rix the Dark Master 31222 EAI: 31135 move to spawn position'),
(21080,3,0,0,0,0,31135,529605,3|0x10,31820,0,0,0,0,0,0,0,'Part of Khit\'rix the Dark Master 31222 EAI: 31135 say text'),
(21080,1003,29,3,1,0,31135,529605,7|0x10,0,0,0,0,0,0,0,0,'Part of Khit\'rix the Dark Master 31222 EAI: npcFlags Added');
