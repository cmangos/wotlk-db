-- q.13214 'Battle at Valhalas: Fallen Heroes'
DELETE FROM dbscripts_on_quest_start WHERE id IN (13214);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(13214,1,29,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'npcFlags Removed'),
(13214,3000,0,0,0,0,0,0,0,31744,0,0,0,0,0,0,0,'say 1'),
(13214,6000,3,0,0,0,0,0,0x04,0,0,0,0,8215.829,3515.8918,651.88654,100,'move'),
(13214,14000,0,0,0,0,0,0,0,31745,0,0,0,0,0,0,0,'say 2'),
(13214,23000,0,0,0,0,0,0,0,31746,0,0,0,0,0,0,0,'say 3'),
(13214,29000,0,0,0,0,24110,100,0,31756,0,0,0,0,0,0,0,'buddy say 1'), -- 02:06:45.521
(13214,29300,10,31191,900000,0,0,0,6|0x08,0,0,0,0,8184.2065,3509.8943,625.9978,0.22689,'Player: summon 31191'), -- 02:06:45.864
(13214,29301,10,31192,900000,0,0,0,6|0x08,0,0,0,0,8216.587,3547.9414,628.4315,4.5902,'Player: summon 31192'),
(13214,29302,10,31193,900000,0,0,0,6|0x08,0,0,0,0,8188.585,3541.887,627.9302,4.2935,'Player: summon 31193'),
(13214,29303,10,31194,900000,0,0,0,6|0x08,0,0,0,0,8241.063,3488.1309,628.24866,2.25147,'Player: summon 31194'),
(13214,29304,10,31195,900000,0,0,0,6|0x08,0,0,0,0,8209.513,3483.1946,626.29126,1.239,'Player: summon 31195'),
(13214,29305,10,31196,900000,0,0,0,6|0x08,0,0,0,0,8244.833,3520.3826,627.6312,3.2288,'Player: summon 31196'),
(13214,29306,10,24110,900000,0,0,0,6|0x08,0,0,0,82,8216.27,3516.211,630.8689,0,'Player: summon 24110'),
(13214,29306,16,14998,2,0,24110,100,0,0,0,0,0,0,0,0,0,'buddy sound');
UPDATE quest_template SET StartScript = 13214 WHERE entry IN (13214);
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` BETWEEN 31745 AND 31755;
UPDATE `broadcast_text` SET `ChatTypeID`= 3 WHERE `Id` IN (31756);

-- Father Jhadras 31191
-- Masud 31192
-- Geness Half-Soul 31193
-- Talla 31194
-- Eldreth 31195
-- Rith 31196
UPDATE creature_template SET Detection = 100, Pursuit = 300000 WHERE entry BETWEEN 31191 AND 31196;
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21072 AND 21079;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 21072
(21072,1,31,31192,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31192 - terminate if alive'),
(21072,200,31,31193,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31193 - terminate if alive'),
(21072,400,31,31194,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31194 - terminate if alive'),
(21072,600,31,31195,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31195 - terminate if alive'),
(21072,800,31,31196,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31196 - terminate if alive'),
(21072,1000,7,13214,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'quest credit'),
(21072,1001,3,0,0,0,31135,529605,7|0x10,1,0,0,0,0,0,0,0,'31135 move to spawn position'),
(21072,1002,0,0,0,0,31135,529605,3|0x10,31755,0,0,0,0,0,0,0,'31135 say text'),
(21072,1003,29,3,1,0,31135,529605,7|0x10,0,0,0,0,0,0,0,0,'npcFlags Added'),
-- 21073
(21073,1,31,31191,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31192 - terminate if alive'),
(21073,200,31,31193,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31193 - terminate if alive'),
(21073,400,31,31194,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31194 - terminate if alive'),
(21073,600,31,31195,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31195 - terminate if alive'),
(21073,800,31,31196,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31196 - terminate if alive'),
(21073,1000,7,13214,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'quest credit'),
(21073,1001,3,0,0,0,31135,529605,7|0x10,1,0,0,0,0,0,0,0,'31135 move to spawn position'),
(21073,1003,0,0,0,0,31135,529605,3|0x10,31755,0,0,0,0,0,0,0,'31135 say text'),
(21073,1003,29,3,1,0,31135,529605,7|0x10,0,0,0,0,0,0,0,0,'npcFlags Added'),
-- 21074
(21074,1,31,31191,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31192 - terminate if alive'),
(21074,200,31,31192,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31193 - terminate if alive'),
(21074,400,31,31194,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31194 - terminate if alive'),
(21074,600,31,31195,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31195 - terminate if alive'),
(21074,800,31,31196,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31196 - terminate if alive'),
(21074,1000,7,13214,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'quest credit'),
(21074,1001,3,0,0,0,31135,529605,7|0x10,1,0,0,0,0,0,0,0,'31135 move to spawn position'),
(21074,1002,0,0,0,0,31135,529605,3|0x10,31755,0,0,0,0,0,0,0,'31135 say text'),
(21074,1003,29,3,1,0,31135,529605,7|0x10,0,0,0,0,0,0,0,0,'npcFlags Added'),
-- 21075
(21075,1,31,31191,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31192 - terminate if alive'),
(21075,200,31,31192,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31193 - terminate if alive'),
(21075,400,31,31193,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31194 - terminate if alive'),
(21075,600,31,31195,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31195 - terminate if alive'),
(21075,800,31,31196,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31196 - terminate if alive'),
(21075,1000,7,13214,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'quest credit'),
(21075,1001,3,0,0,0,31135,529605,7|0x10,1,0,0,0,0,0,0,0,'31135 move to spawn position'),
(21075,1002,0,0,0,0,31135,529605,3|0x10,31755,0,0,0,0,0,0,0,'31135 say text'),
(21075,1005,29,3,1,0,31135,529605,7|0x10,0,0,0,0,0,0,0,0,'npcFlags Added'),
-- 21076
(21076,1,31,31191,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31192 - terminate if alive'),
(21076,200,31,31192,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31193 - terminate if alive'),
(21076,400,31,31193,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31194 - terminate if alive'),
(21076,600,31,31194,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31195 - terminate if alive'),
(21076,800,31,31196,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31196 - terminate if alive'),
(21076,1000,7,13214,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'quest credit'),
(21076,1001,3,0,0,0,31135,529605,7|0x10,1,0,0,0,0,0,0,0,'31135 move to spawn position'),
(21076,1002,0,0,0,0,31135,529605,3|0x10,31755,0,0,0,0,0,0,0,'31135 say text'),
(21076,1003,29,3,1,0,31135,529605,7|0x10,0,0,0,0,0,0,0,0,'npcFlags Added'),
-- 21077
(21077,1,31,31191,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31192 - terminate if alive'),
(21077,200,31,31192,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31193 - terminate if alive'),
(21077,400,31,31193,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31194 - terminate if alive'),
(21077,600,31,31194,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31195 - terminate if alive'),
(21077,800,31,31195,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31196 - terminate if alive'),
(21077,1000,7,13214,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'quest credit'),
(21077,1001,3,0,0,0,31135,529605,7|0x10,1,0,0,0,0,0,0,0,'31135 move to spawn position'),
(21077,1002,0,0,0,0,31135,529605,3|0x10,31755,0,0,0,0,0,0,0,'31135 say text'),
(21077,1003,29,3,1,0,31135,529605,7|0x10,0,0,0,0,0,0,0,0,'npcFlags Added'),
-- 21078 -- Player check
(21078,1,34,20765,0,0,0,0,2|0x08,0,0,0,0,0,0,0,0,'allow if: All Players in Group are Dead OR NOT Within 100y of Source'),
(21078,1000,3,0,0,0,31135,529605,7|0x10,1,0,0,0,0,0,0,0,'31135 move to spawn position'),
(21078,1001,29,3,1,0,31135,529605,7|0x10,0,0,0,0,0,0,0,0,'npcFlags Added'),
(21078,1002,35,5,150,0,31135,529605,7|0x10,0,0,0,0,0,0,0,0,'buddy send Event 5'),
(21078,1100,18,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'despawn Self'),
-- 21079
(21079,1,3,0,0,0,31135,529605,7|0x10,1,0,0,0,0,0,0,0,'Part of 31191 - 31196 EAI (q.13214): 31135 move to spawn position'),
(21079,100,0,20374,0,0,31135,529605,7|0x10,0,0,0,0,0,0,0,0,'Part of 31191 - 31196 EAI (q.13214): 31135 say random text'),
(21079,1000,29,3,1,0,31135,529605,7|0x10,0,0,0,0,0,0,0,0,'Part of 31191 - 31196 EAI (q.13214): 31135 npcFlags Added');
DELETE FROM dbscript_random_templates WHERE id = 20374;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20374,0,31747,0,'Part of 31191 - 31196 EAI (q.13214): Random Text 1'),
(20374,0,31748,0,'Part of 31191 - 31196 EAI (q.13214): Random Text 2'),
(20374,0,31749,0,'Part of 31191 - 31196 EAI (q.13214): Random Text 3'),
(20374,0,31750,0,'Part of 31191 - 31196 EAI (q.13214): Random Text 4'),
(20374,0,31751,0,'Part of 31191 - 31196 EAI (q.13214): Random Text 5'),
(20374,0,31752,0,'Part of 31191 - 31196 EAI (q.13214): Random Text 6'),
(20374,0,31753,0,'Part of 31191 - 31196 EAI (q.13214): Random Text 7'),
(20374,0,31754,0,'Part of 31191 - 31196 EAI (q.13214): Random Text 8');
DELETE FROM conditions WHERE condition_entry = 20765;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20765,36,1,100,0,0,0);
