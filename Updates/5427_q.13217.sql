-- q.13217 'Battle at Valhalas: Carnage!'
DELETE FROM dbscripts_on_quest_start WHERE id IN (13217);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13217,1,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'npcFlags Removed'),
(13217,3000,0,0,0,0,0,0,0,31885,0,0,0,0,0,0,0,'say 1'),
(13217,6000,3,0,0,0,0,0,0x04,0,0,0,88,8215.829,3515.8918,651.88654,100,'move'),
(13217,14000,0,0,0,0,0,0,0,31930,0,0,0,0,0,0,0,'say 2'),
(13217,21000,0,0,0,0,24110,100,0,32758,0,0,0,0,0,0,0,'buddy say 1'),
(13217,21300,10,31271,900000,0,0,0,6|0x08,0,0,0,88,8108.9023,3486.191,632.7168,6.238,'Player: summon 31242'),
(13217,21301,10,24110,900000,0,0,0,6|0x08,0,0,0,82,8216.27,3516.211,630.8689,0,'Player: summon 24110'),
(13217,21400,16,14998,2,0,24110,100,0,0,0,0,0,0,0,0,0,'buddy sound');
UPDATE quest_template SET StartScript = 13217 WHERE entry IN (13217);
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (31930,31931);
UPDATE `broadcast_text` SET `ChatTypeID`= 3 WHERE `Id` IN (32758);
-- Carnage 31271
UPDATE creature_template SET Detection = 100, Pursuit = 300000 WHERE entry = 31271;
DELETE FROM creature_movement_template WHERE Entry = 31271;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- Path 1
(31271,1,1,8108.9023,3486.191,632.7168,100,1,6),
(31271,1,2,8123.5913,3485.532,628.639,100,0,0),
(31271,1,3,8146.843,3486.761,626.9065,100,0,0),
(31271,1,4,8159.6772,3492.1343,627.7815,100,5000,3127101),
-- path 2
(31271,2,1,8173.8237,3511.616,627.06,100,0,0),
(31271,2,2,8210.76,3551.87,627.182,100,0,0),
(31271,2,3,8242.48,3539.67,628.506,100,0,0),
(31271,2,4,8238.324,3496.06,628.23865,100,0,0),
(31271,2,5,8215.995,3474.3872,627.5381,100,0,0),
(31271,2,6,8162.8,3484.93,626.378,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3127101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3127101,1,1,53,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3127101,2,16,14976,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'sound'),
(3127101,4000,20,2,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'set path2'),
(3127101,4100,48,768,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove unitFlags');
DELETE FROM dbscripts_on_relay WHERE id = 21082;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21082,1,7,13217,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Carnage 31271 EAI: quest credit'),
(21082,2,3,0,0,0,31135,529605,7|0x10,1,0,0,0,0,0,0,0,'Part of Carnage 31271 EAI: 31135 move to spawn position'),
(21082,3,0,0,0,0,31135,529605,3|0x10,31931,0,0,0,0,0,0,0,'Part of Carnage 31271 EAI: 31135 say text'),
(21082,1003,29,3,1,0,31135,529605,7|0x10,0,0,0,0,0,0,0,0,'Part of Carnage 31271 EAI: npcFlags Added');
