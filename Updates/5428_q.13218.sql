-- q.13218 'Battle at Valhalas: Thane Deathblow'
DELETE FROM dbscripts_on_quest_start WHERE id IN (13218);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13218,1,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'npcFlags Removed'),
(13218,3000,0,0,0,0,0,0,0,31938,0,0,0,0,0,0,0,'say 1'),
(13218,6000,3,0,0,0,0,0,0x04,0,0,0,88,8215.829,3515.8918,651.88654,100,'move'),
(13218,14000,0,0,0,0,0,0,0,31939,0,0,0,0,0,0,0,'say 2'),
(13218,21300,10,31277,900000,0,0,0,6|0x08,0,0,0,0,8146.336,3459.2761,671.0183,0.7679,'Player: summon 31277'),
(13218,21301,10,24110,900000,0,0,0,6|0x08,0,0,0,82,8216.27,3516.211,630.8689,0,'Player: summon 24110'),
(13218,21400,16,14998,2,0,24110,100,0,0,0,0,0,0,0,0,0,'buddy sound');
UPDATE quest_template SET StartScript = 13218 WHERE entry IN (13218);
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (31939,31940,31935,31936);
-- Thane Banahogg 31277
UPDATE creature_template SET Detection = 100, Pursuit = 300000 WHERE entry = 31277;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 31277;
DELETE FROM creature_movement_template WHERE Entry = 31277;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31277,0,1,8146.336,3459.2761,671.0183,0.7679,12000,3127701),
(31277,0,2,8146.336,3459.2761,671.0183,0.7679,10000,3127702);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3127701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3127701,1,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3127701,2,0,0,0,0,0,0,0x04,31935,0,0,0,0,0,0,0,'say'),
(3127701,8000,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3127701,8001,0,0,0,0,0,0,0x04,31936,0,0,0,0,0,0,0,'say');
DELETE FROM dbscripts_on_creature_movement WHERE id = 3127702;
INSERT INTO dbscripts_on_creature_movement (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(3127702,1,0,20,15,0,0,0,0,0x04,0,0,0,0,10,8200.57,3504.03,625.236,100,50,0,'jump'),
(3127702,5000,0,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'emote'),
(3127702,6000,0,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'idle'),
(3127702,8001,0,48,768,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,0,0,'remove unitFlags');
DELETE FROM dbscripts_on_relay WHERE id = 21083;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21083,1,7,13218,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Thane Banahogg 31277 EAI: quest credit'),
(21083,2,3,0,0,0,31135,529605,7|0x10,1,0,0,0,0,0,0,0,'Part of Thane Banahogg 31277 EAI: 31135 move to spawn position'),
(21083,3,0,0,0,0,31135,529605,3|0x10,31940,0,0,0,0,0,0,0,'Part of Thane Banahogg 31277 EAI: 31135 say text'),
(21083,1003,29,3,1,0,31135,529605,7|0x10,0,0,0,0,0,0,0,0,'Part of Thane Banahogg 31277 EAI: npcFlags Added');
