-- q.13042 'Deep in the Bowels of The Underhalls'
-- q.13059 'Revenge for the Vargul'
-- req. q.12999 rewarded
UPDATE quest_template SET PrevQuestId = 12999 WHERE entry IN (13042,13059);

-- q.13059 - Script
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21022 AND 21027;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 21022
(21022,1,36,0,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Thane Illskar 30475 EAI: face Player'),
(21022,10,0,0,0,0,0,0,0x02,31209,0,0,0,0,0,0,0,'Part of Thane Illskar 30475 EAI: Say'),
(21022,11,1,15,0,0,0,0,0x02,0,0,0,0,0,0,0,0,'Part of Thane Illskar 30475 EAI: emote'),
(21022,3000,48,256,0,0,30483,100,7,0,0,0,0,0,0,0,0,'Part of Thane Illskar 30475 EAI: buddy remove unitFlags'),
(21022,3100,26,0,0,0,30483,100,3,0,0,0,0,0,0,0,0,'Part of Thane Illskar 30475 EAI: buddy attack Player'),
-- 21023
(21023,1000,36,0,0,0,30475,100,3,0,0,0,0,0,0,0,0,'Part of Thane Illskar 30475 EAI: buddy face Player'),
(21023,1500,0,0,0,0,30475,100,3,31211,0,0,0,0,0,0,0,'Part of Thane Illskar 30475 EAI: buddy Say'),
(21023,1501,1,22,0,0,30475,100,3,0,0,0,0,0,0,0,0,'Part of Thane Illskar 30475 EAI: buddy emote'),
(21023,3000,48,256,0,0,30484,100,7,0,0,0,0,0,0,0,0,'Part of Volgur 30483 EAI: buddy remove unitFlags'),
(21023,3100,26,0,0,0,30484,100,3,0,0,0,0,0,0,0,0,'Part of Volgur 30483 EAI: buddy attack Player'),
-- 21024
(21024,1,10,30501,300000,0,0,0,0,0,0,0,0,7848.1895,3400.8743,663.7552,3.7845,'Part of Brita 30484 EAI: summon 30501'),
(21024,1000,36,0,0,0,30475,100,3,0,0,0,0,0,0,0,0,'Part of Brita 30484 EAI: buddy face Player'),
(21024,1500,0,0,0,0,30475,100,3,31212,0,0,0,0,0,0,0,'Part of Brita 30484 EAI: buddy Say'),
(21024,1501,1,66,0,0,30475,100,3,0,0,0,0,0,0,0,0,'Part of Brita 30484 EAI: buddy emote'),
(21024,7000,0,0,0,0,30475,100,3,31213,0,0,0,0,0,0,0,'Part of Brita 30484 EAI: buddy Say'),
(21024,7100,1,53,0,0,30475,100,3,0,0,0,0,0,0,0,0,'Part of Brita 30484 EAI: buddy emote'),
(21024,10000,48,256,0,0,30475,100,7,0,0,0,0,0,0,0,0,'Part of Brita 30484 EAI: buddy remove unitFlags'),
(21024,10100,26,0,0,0,30475,100,3,0,0,0,0,0,0,0,0,'Part of Brita 30484 EAI: buddy attack Player'),
-- 21025
(21025,1000,37,0,0,15,30501,100,3,0,0,0,0,0,0,0,0,'Part of Brita 30484 EAI: buddy move towards source'),
(21025,5000,0,0,0,0,30501,100,3,31215,0,0,0,0,0,0,0,'Part of Brita 30484 EAI: buddy say'),
(21025,11000,0,0,0,0,30501,100,3,31216,0,0,0,0,0,0,0,'Part of Brita 30484 EAI: buddy say'),
(21025,15000,15,55063,0,0,30501,100,3,0,0,0,0,0,0,0,0,'Part of Brita 30484 EAI: buddy cast 55063 on source'),
(21025,25000,18,0,0,0,30501,100,7,0,0,0,0,0,0,0,0,'Part of Brita 30484 EAI: buddy cast 55063 on source'),
-- 21026
(21026,1,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Thane Illskar the Damned 30523 EAI: emote'),
(21026,100,0,0,0,0,0,0,0x04,31227,0,0,0,0,0,0,0,'Part of Thane Illskar the Damned 30523 EAI: say'),
(21026,5000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Thane Illskar the Damned 30523 EAI: kneel'),
(21026,16000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Thane Illskar the Damned 30523 EAI: despawn'),
-- 21027
(21027,1,41,0,0,0,30483,100,1|0x40,0,0,0,0,0,0,0,0,'Part of Mjordin Combatant 30037 EAI: respawn target'),
(21027,2,41,0,0,0,30484,100,1|0x40,0,0,0,0,0,0,0,0,'Part of Mjordin Combatant 30037 EAI: respawn target'),
(21027,3,31,30501,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Mjordin Combatant 30037 EAI: search for 30501'),
(21027,100,18,0,0,0,30501,100,7,0,0,0,0,0,0,0,0,'Part of Mjordin Combatant 30037 EAI: despawn buddy');
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (31209,31211,31212,31213,31215,31216,31227);
UPDATE `broadcast_text` SET `ChatTypeID`= 2 WHERE `Id` IN (31210);
-- Val'kyr Arbiter 30501
UPDATE creature_template SET InhabitType = 4, UnitFlags = 33536 WHERE Entry = 30501;
-- Thane Illskar the Damned 30523
UPDATE creature_template SET UnitFlags = 33024 WHERE Entry = 30523;
DELETE FROM spell_script_target WHERE entry IN (55063);
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(55063, 2, 30475, 0);
