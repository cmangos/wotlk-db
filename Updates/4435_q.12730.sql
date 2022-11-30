-- q.12730 'Convocation at Zol'Heb'

-- duplicate removed
DELETE FROM creature WHERE guid=523887;
DELETE FROM creature_addon WHERE guid=523887;
DELETE FROM creature_movement WHERE Id=523887;
DELETE FROM game_event_creature WHERE guid=523887;
DELETE FROM game_event_creature_data WHERE guid=523887;
DELETE FROM creature_battleground WHERE guid=523887;
DELETE FROM creature_linking WHERE guid=523887
 OR master_guid=523887;
 
-- Har'koa 29050
UPDATE creature_template SET DamageMultiplier = 2.5 WHERE Entry = 29050;
 
-- Prophet of Akali 29028
UPDATE creature_template SET EquipmentTemplateId = 2535, MechanicImmuneMask = MechanicImmuneMask|2048 WHERE entry IN (29028);
-- missing equipment added
DELETE FROM creature_equip_template WHERE entry = 2535;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES
(2535, 39892, 0, 0);

-- Script
DELETE FROM spell_script_target WHERE entry IN (52956,53029);
INSERT INTO spell_script_target(entry, type, targetEntry) VALUES
(52956,0,191123),
(53029,1,29028);
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20678 AND 20681;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 20678
(20678,1,13,0,0,0,191123,510851,17,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: use object'),
(20678,2,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: send Event AI 5'),
(20678,2000,53,0,0,0,0,0,0,30026,1,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: Set worldstate variable to 1'), -- on
-- 20679
(20679,1,15,52989,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: Cast 52989'),
(20679,2,14,52989,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: remove aura'),
(20679,3,3,0,0,0,0,0,0x04,0,0,0,0,6448.36,-4475.49,451.0759,0.8028514,'Part of Prophet of Akali 29028 EAI: force move'),
(20679,5000,0,0,0,0,0,0,0x04,29253,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: Say'),
(20679,5001,1,11,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: emote'),
(20679,10000,0,0,0,0,0,0,0x04,29256,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: Say'),
(20679,10001,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: emote'),
(20679,13000,0,0,0,0,0,0,0x04,29257,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: Say'),
(20679,13001,15,52993,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: Cast 52993'),
(20679,18000,10,29050,300000,0,0,0,0x08,1,0,0,0,6348.413,-4488.189,458.2122,5.410521,'summon 29050'),
(20679,19000,3,0,0,0,29050,300,7,0,0,0,0,6384.831,-4521.654,458.1296,100,'Part of Prophet of Akali 29028 EAI: buddy move'), -- 01:46:32.000
(20679,21000,3,0,0,0,29050,300,7,0,0,0,0,6403.007,-4521.438,458.1296,100,'Part of Prophet of Akali 29028 EAI: buddy move'), -- 01:46:34.000
(20679,24000,36,0,0,0,29050,300,3,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: buddy face source'),
(20679,25000,0,0,0,0,29050,300,0x04,29269,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: buddy Say'),
(20679,25001,16,643,0,0,29050,300,0x04,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: buddy play sound'),
(20679,27000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,3.92,'Part of Prophet of Akali 29028 EAI: move'),
(20679,29000,0,0,0,0,29050,300,1,29271,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: Say to buddy'),
(20679,32000,0,0,0,0,29050,300,0x04,29272,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: buddy Say'),
(20679,32001,16,11887,0,0,29050,300,0x04,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: buddy play sound'),
(20679,32002,1,35,0,0,29050,300,0x04,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: buddy emote'),
(20679,37000,0,0,0,0,29050,300,1,29273,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: Say to buddy'),
(20679,43000,0,0,0,0,29050,300,0x04,29274,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: buddy Say'),
(20679,43001,16,11883,0,0,29050,300,0x04,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: buddy play sound'),
(20679,43002,15,53004,0,0,29050,300,0x04,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: buddy cast 53004'),
-- delay 45000 added below
(20679,48000,14,52993,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: Remove 52993'),
(20679,48001,14,52982,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: Remove 52982'),
(20679,48003,0,0,0,0,0,0,0x04,29275,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: Say'),
(20679,48004,35,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: send Event AI 6'),
(20679,48100,48,768,0,0,29050,300,0x04,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: Remove UnitFlags from buddy'),
(20679,48200,26,0,0,0,29050,300,3,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: buddy attack source'),
-- 20680
(20680,1,53,0,0,0,0,0,0,30026,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: Set worldstate variable to 0'), -- OFF
(20680,2,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Prophet of Akali 29028 EAI: Despawn self'),
-- 20681
(20681,1,0,0,0,0,0,0,0x04,29276,0,0,0,0,0,0,0,'Part of Har\'koa 29050 EAI: Say'),
(20681,2,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Har\'koa 29050 EAI: RUN ON'),
(20681,10,3,0,0,0,0,0,0x04,0,0,0,0,6348.413,-4488.189,458.2122,5.410521,'Part of Har\'koa 29050 EAI: move'),
(20681,4000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Har\'koa 29050 EAI: Despawn Self');
DELETE FROM dbscripts_on_relay WHERE id = 20679 AND delay = 45000;
INSERT INTO dbscripts_on_relay(id,delay,priority,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,datafloat,x,y,z,o,speed,condition_id,comments) VALUES
(20679,45000,0,20,15,0,0,29050,300,0x04,0,0,0,0,19,6443.24,-4470.1,451.076,5.52139,40,0,'Part of Prophet of Akali 29028 EAI: buddy jump');
-- spawn groups
DELETE FROM `spawn_group` WHERE id = 30026;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(30026, 'Zul\'Drak - Zol\'Heb - Zul\'Drak Skull Pile 2 - ShadowCouncil Torch (q.12730)', 1, 0, 20526, 2| 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 30026;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(30026,515687,-1),(30026,510851,-1),(30026,510762,-1),
(30026,506538,-1),(30026,510764,-1),(30026,506541,-1),
(30026,510850,-1),(30026,506540,-1),(30026,510824,-1),
(30026,506539,-1);
DELETE FROM conditions WHERE condition_entry IN (20526);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20526, 42, 30026, 0, 0, 0, 'Zul\'Drak - Zol\'Heb - Zul\'Drak Skull Pile 2 - ShadowCouncil Torch (q.12730)');
DELETE FROM worldstate_name WHERE Id IN (30026);
INSERT INTO worldstate_name(Id, Name) VALUES
(30026,'Zul\'Drak - Zol\'Heb - Zul\'Drak Skull Pile 2 - ShadowCouncil Torch (q.12730)');
UPDATE gameobject SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE guid IN 
(515687,510851,510762,506538,510764,506541,510850,506540,510824,506539);
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (29250,29251,29251,29253,29256,29269,29271,29272,29273,29274,29275,29276);
UPDATE `broadcast_text` SET `ChatTypeID`= 2 WHERE `Id` IN (29257);
DELETE FROM dbscripts_on_spell WHERE id = 53010;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(53010,1,14,52989,0,0,0,0,6,0,0,0,0,0,0,0,0,'remove 52989 from targets');
