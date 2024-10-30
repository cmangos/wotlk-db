-- q.13211 'By Fire Be Purged'
-- q.13152 'A Visit to the Doctor'
-- ReQ Quests: 13134,13140,13138 Rewarded
UPDATE quest_template SET Requiredcondition = 20779 WHERE entry IN (13211,13152);
DELETE FROM conditions WHERE condition_entry BETWEEN 20776 AND 20779;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20776,8,13134,0,0,0,''),
(20777,8,13140,0,0,0,''),
(20778,8,13138,0,0,0,''),
(20779,-1,20778,20777,20776,0,'');
-- q.13211 'By Fire Be Purged'
DELETE FROM spell_script_target WHERE entry IN (32147);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(32147, 1, 31130, 0);
-- q.13152 'A Visit to the Doctor'
DELETE FROM dbscripts_on_event WHERE id = 20092;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20092,1,7,13152,30,0,0,0,0,0,0,0,0,0,0,0,0,'credit'),
(20092,10,20,0,0,0,30993,50,7,0,0,0,0,0,0,0,0,'buddy idle'),
(20092,10,15,42278,36,0,30995,50,7,0,0,0,0,0,0,0,0,'buddy 42278'),
(20092,100,3,0,0,0,30993,50,7,0,0,0,0,0,0,0,3.240,'buddy move'), -- 22:56:35.868
(20092,1000,10,30992,300000,0,0,0,6|0x08,0,0,0,0,6630.245,3167.518,659.3344,2.49699,'summon 30992'), -- 22:56:36.407
(20092,3000,1,51,0,0,30993,50,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 22:56:38.818
(20092,3001,22,2036,0x01,0,30993,50,7,0,0,0,0,0,0,0,0,'buddy faction'),
(20092,3100,0,0,0,0,30993,50,7,31556,0,0,0,0,0,0,0,'buddy say'); -- 22:56:38.946
-- Doctor Sabnok 30992
UPDATE creature_template SET MovementType = 2 WHERE Entry = 30992;
DELETE FROM creature_movement_template WHERE Entry = 30992;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30992,1,6625.71,3170.9275,658.9767,100,0,0),
(30992,2,6618.232,3172.5295,655.9562,100,0,0),
(30992,3,6612.9077,3177.3672,653.6982,100,0,0),
(30992,4,6606.452,3184.101,649.643,100,0,0),
(30992,5,6605.4307,3192.943,647.6022,100,0,0),
(30992,6,6605.4307,3192.943,647.6022,0.24434,20000,3099201); -- 22:56:53.438
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3099201);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3099201,1,1,21,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 22:56:53.438
(3099201,2,0,0,0,0,0,0,0x04,31550,0,0,0,0,0,0,0,'say 1'),
(3099201,3,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle'),
(3099201,7000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3099201,7001,0,0,0,0,0,0,0x04,31551,0,0,0,0,0,0,0,'say 1'), -- 22:57:00.034
(3099201,13000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3099201,13001,0,0,0,0,0,0,0x04,31553,0,0,0,0,0,0,0,'say 1'), -- 22:57:06.531
(3099201,18000,1,11,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3099201,18001,1,1,0,0,30993,30,7,0,0,0,0,0,0,0,0,'buddy emote'),
(3099201,18002,0,0,0,0,30993,30,7,31554,0,0,0,0,0,0,0,'buddy say'),
(3099201,18003,48,256,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Remove UniFlags'),
(3099201,18004,48,512,0,0,30993,50,7,0,0,0,0,0,0,0,0,'Remove UniFlags from buddy'),
(3099201,18005,26,0,0,0,30993,50,1,0,0,0,0,0,0,0,0,'attack buddy');
-- "Patches" 30993
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id IN (30993);
UPDATE creature_template SET NpcFlags = 0 WHERE Entry = 30993;
DELETE FROM creature_movement_template WHERE Entry = 30993;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30993,1,1,6605.5835,3185.182,649.0564,100,0,0),
(30993,1,2,6616.263,3174.173,655.04,100,0,0),
(30993,1,3,6623.1343,3169.8997,658.17786,100,100,1);
DELETE FROM dbscripts_on_relay WHERE id IN (21086);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21086,1,1,418,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of "Patches" 30993 EAI: emote'),
(21086,6000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of "Patches" 30993 EAI: reset emote'),
(21086,6001,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of "Patches" 30993 EAI: RuN ON'),
(21086,7000,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of "Patches" 30993 EAI: reset emote');
-- Patches Chain Target 30995
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE id IN (30995);
