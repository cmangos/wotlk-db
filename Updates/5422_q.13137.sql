-- q.13137 'Not-So-Honorable Combat'
DELETE FROM dbscripts_on_event WHERE id IN (20069);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20069,0,31,30924,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 30924 - terminate if alive'),
(20069,1000,10,30924,600000,0,0,0,0x08,0,0,0,0,7229.436,3642.27,809.01746,0,'summon 30924'),
(20069,6000,10,30945,600000,0,0,0,0x08,0,0,0,0,7175.035,3642.1997,854.94275,0.154,'summon 30945');
-- Possessed Iskalder 30924
UPDATE creature_template SET DamageMultiplier = 1.5 WHERE entry IN (30924);
-- Lady Nightswood 30955
DELETE FROM dbscripts_on_relay WHERE id IN (21046);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21046,1,0,0,0,0,0,0,0x04,31532,0,0,0,0,0,0,0,'Part of Lady Nightswood 30955 EAI: Say'),
(21046,10,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lady Nightswood 30955 EAI: RuN ON'),
(21046,100,37,0,0,1,30945,100,1,0,0,0,0,0,0,0,0,'Part of Lady Nightswood 30955 EAI: move towards buddy'),
(21046,4000,15,25745,0,0,30945,100,1,0,0,0,0,0,0,0,0,'Part of Lady Nightswood 30955 EAI: Cast 25745'),
(21046,5000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lady Nightswood 30955 EAI: despawn');
-- Vardmadra 30945
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21047 AND 21049;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 21047
(21047,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: RUN ON'),
(21047,100,3,0,0,0,0,0,0x04,0,0,0,0,7206.3696,3649.0457,824.20764,100,'Part of Vardmadra 30945 EAI: move'),
(21047,6000,36,0,0,0,30924,100,1,0,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: face buddy'),
(21047,6100,1,457,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: emote'),
(21047,6200,0,0,0,0,0,0,0x04,31528,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: Say 1'),
(21047,13000,1,457,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: emote'),
(21047,13100,0,0,0,0,0,0,0x04,31529,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: Say 2'),
-- 21048
(21048,1,0,0,0,0,0,0,0x04,31530,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: Say 1'),
(21048,2,15,25715,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: Cast 25715'),
(21048,100,37,0,0,3,30959,100,1,0,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: move towards buddy'),
(21048,4000,16,13824,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: sound'),
(21048,4010,1,457,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: emote'),
(21048,4100,0,0,0,0,0,0,0x04,31531,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: Say 2'),
(21048,8000,15,25727,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: Cast 25727'),
(21048,8100,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: RuN ON'),
(21048,13000,0,0,0,0,0,0,0x04,31533,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: Say 3'),
(21048,13010,16,13825,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: sound'),
(21048,13200,3,0,0,0,0,0,0x04,0,0,0,0,7228.9634,3632.4812,813.9223,0,'Part of Vardmadra 30945 EAI: move'),
-- 21049
(21049,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: RuN ON'),
(21049,10,1,457,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: emote'),
(21049,2000,0,0,0,0,0,0,0x04,31534,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: Say 1'),
(21049,4000,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Vardmadra 30945 EAI: Set Path 1');
DELETE FROM creature_movement_template WHERE Entry = 30945;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30945,1,1,7252.2563,3635.3394,818.6564,100,0,0),
(30945,1,2,7293.499,3616.164,818.6564,100,0,0),
(30945,1,3,7321.106,3605.053,803.68445,100,0,0),
(30945,1,4,7367.3306,3588.9036,771.3236,100,0,0),
(30945,1,5,7367.3306,3588.9036,771.3236,100,100,1);
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (31528,31529,31540,31530,31531,31532,31533,31534);
DELETE FROM spell_script_target WHERE entry IN (25715,25727);
INSERT INTO spell_script_target (entry, `type`, targetEntry, inverseEffectMask) VALUES
(25715, 2, 30924, 0),
(25727, 2, 30924, 0);
