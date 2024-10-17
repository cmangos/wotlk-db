-- q.13219 'Battle at Valhalas: Final Challenge'
DELETE FROM dbscripts_on_quest_start WHERE id IN (13219);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13219,1,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'npcFlags Removed'),
(13219,3000,0,0,0,0,0,0,0,31949,0,0,0,0,0,0,0,'say 1'),
(13219,6000,3,0,0,0,0,0,0x04,0,0,0,88,8215.829,3515.8918,651.88654,100,'move'),
(13219,14000,0,0,0,0,0,0,0,31951,0,0,0,0,0,0,0,'say 2'),
(13219,20000,0,0,0,0,0,0,0,31955,0,0,0,0,0,0,0,'say 3'),
(13219,21000,0,0,0,0,24110,100,0,32761,0,0,0,0,0,0,0,'buddy say 1'),
(13219,21300,10,14688,900000,0,0,0,6|0x08,0,0,0,0,8183.7334,3486.9265,625.6965,0.734197,'Player: summon 31277'),
(13219,21301,10,24110,900000,0,0,0,6|0x08,0,0,0,82,8216.27,3516.211,630.8689,0,'Player: summon 24110'),
(13219,21400,16,14998,2,0,24110,100,0,0,0,0,0,0,0,0,0,'buddy sound');
UPDATE quest_template SET StartScript = 13219 WHERE entry IN (13219);
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (31951,31956,31957,31972,31945,31946,31948,31955);
UPDATE `broadcast_text` SET `ChatTypeID`= 3 WHERE `Id` IN (32761);
-- Prince Sandoval 14688
UPDATE creature_template SET Detection = 100, Pursuit = 300000 WHERE entry = 14688;
DELETE FROM creature_template_addon WHERE entry IN (14688);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(14688,0,0,0,0,0,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 14688;
DELETE FROM creature_movement_template WHERE Entry = 14688;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(14688,0,1,8183.7334,3486.9265,625.6965,0.734197,10000,1468801),
(14688,0,2,8200.811,3502.5215,625.2897,100,10000,1468802);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1468801,1468802);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 1468801
(1468801,2000,1,274,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1468801,2001,0,0,0,0,0,0,0x04,31956,0,0,0,0,0,0,0,'say'),
(1468801,5000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1468801,9000,15,58930,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'self cast 58930'),
-- 1468802
(1468802,1,14,58930,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove aura'),
(1468802,100,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(1468802,200,0,0,0,0,0,0,0x04,31957,0,0,0,0,0,0,0,'say'),
(1468802,6000,0,0,0,0,0,0,0x04,31972,0,0,0,0,0,0,0,'say'),
(1468802,6001,16,14982,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'sound'),
(1468802,6002,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'sound'),
(1468802,9000,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(1468802,9001,48,768,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'remove unitFlags'),
(1468802,9001,35,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 8');
DELETE FROM dbscripts_on_relay WHERE id IN (21084,21085);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 21084
(21084,1,7,13219,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prince Sandoval 14688 EAI: quest credit'),
(21084,3,0,0,0,0,31135,529605,3|0x10,31945,0,0,0,0,0,0,0,'Part of Prince Sandoval 14688 EAI: 31135 say text'),
(21084,5000,0,0,0,0,31135,529605,3|0x10,31946,0,0,0,0,0,0,0,'Part of Prince Sandoval 14688 EAI: 31135 say text'),
(21084,13000,0,0,0,0,31135,529605,3|0x10,31948,0,0,0,0,0,0,0,'Part of Prince Sandoval 14688 EAI: 31135 say text'),
(21084,15000,3,0,0,0,31135,529605,7|0x10,1,0,0,0,0,0,0,0,'Part of Prince Sandoval 14688 EAI: 31135 move to spawn position'),
(21084,17000,29,3,1,0,31135,529605,7|0x10,0,0,0,0,0,0,0,0,'Part of Prince Sandoval 14688 EAI: npcFlags Added'),
-- 21085
(21085,0,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prince Sandoval 14688 EAI: Fly on'),
(21085,1,3,0,0,0,0,0,0x04,0,0,0,0,0,0,10,0,'Part of Prince Sandoval 14688 EAI: move'),
(21085,2,15,61145,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prince Sandoval 14688 EAI: cast 61145'),
(21085,3,15,61150,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prince Sandoval 14688 EAI: cast 61150'),
(21085,4,15,61153,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prince Sandoval 14688 EAI: cast 61153'),
(21085,15000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,-10,0,'Part of Prince Sandoval 14688 EAI: move'),
(21085,18001,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prince Sandoval 14688 EAI: Fly off'),
(21085,18002,14,61145,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prince Sandoval 14688 EAI: remove aura'),
(21085,18003,14,61150,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prince Sandoval 14688 EAI: remove aura'),
(21085,18004,14,61153,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prince Sandoval 14688 EAI: remove aura'),
(21085,18005,14,61144,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prince Sandoval 14688 EAI: remove aura'),
(21085,18006,35,9,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 9');
