-- q.13010 'Krolmir, Hammer of Storms'

-- c.32520 Totally Generic Bunny (All Phase)
DELETE FROM creature_addon WHERE guid = 532841;
DELETE FROM creature_movement WHERE Id = 532841;
DELETE FROM game_event_creature WHERE guid = 532841;
DELETE FROM game_event_creature_data WHERE guid = 532841;
DELETE FROM creature_battleground WHERE guid = 532841;
DELETE FROM creature_linking WHERE guid = 532841
OR master_guid = 532841;
DELETE FROM creature WHERE guid = 532841;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(532841,32520,571,1,4,7871.5547,-3257.9102,850.5487,1.675516128540039062,180,180,0,0);
-- individual addon
DELETE FROM creature_addon WHERE guid IN (532841);
INSERT INTO creature_addon (guid,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(532841,0,0,0,0,0,0,'49414 56644');

-- o.192492 Krolmir
DELETE FROM game_event_gameobject WHERE guid = 515745;
DELETE FROM gameobject_battleground WHERE guid = 515745;
DELETE FROM gameobject WHERE guid = 515745;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(515745,192492,571,1,4,7873.061,-3257.5232,854.61646,3.7175536,0,0,-0.9588194,0.28401646,180,180);

-- King Jokkum 30331
UPDATE creature_template SET StaticFlags2 = 0x00000400, MinLevel = 81, MaxLevel = 81, SpeedWalk = 10/2.5, SpeedRun = 18/7.0, Expansion = 2, MovementType = 2 WHERE entry IN (30331);
DELETE FROM creature_movement_template WHERE Entry = 30331;
INSERT INTO creature_movement_template (`Entry`, `pathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30331,0,1,7357.0884,-2865.3977,803.5484,100,0,0),
(30331,0,2,7355.1704,-2904.5798,820.9118,100,0,0),
(30331,0,3,7355.457,-2946.58,833.0618,100,0,0),
(30331,0,4,7360.866,-2994.7854,845.94977,100,0,0),
(30331,0,5,7378.764,-3035.8867,840.5835,100,0,0),
(30331,0,6,7411.658,-3072.211,837.45184,100,0,0),
(30331,0,7,7453.9956,-3088.695,837.4519,100,0,0),
(30331,0,8,7496.08,-3113.9224,837.4607,100,0,0),
(30331,0,9,7536.843,-3136.4888,837.45654,100,0,0),
(30331,0,10,7564.738,-3145.1438,844.7033,100,0,0),
(30331,0,11,7604.358,-3171.2583,850.82,100,0,0),
(30331,0,12,7635.4673,-3207.2114,856.99097,100,0,0),
(30331,0,13,7657.858,-3219.2583,863.16833,100,0,0),
(30331,0,14,7706.5425,-3219.7417,864.2736,100,0,0),
(30331,0,15,7747.326,-3226.9922,862.3538,100,0,0),
(30331,0,16,7796.658,-3221.7817,860.4753,100,0,0),
(30331,0,17,7827.596,-3229.2732,856.3158,100,0,0),
(30331,0,18,7846.174,-3253.2385,852.04785,5.38,300000,3033101),
-- path 1
(30331,1,1,7793.782,-3219.743,861.1375,100,0,0),
(30331,1,2,7765.3203,-3225.3496,863.9993,100,0,0),
(30331,1,3,7736.7334,-3226.4995,861.3592,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3033101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3033101,1,15,50630,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 50630 on Player'),
(3033101,2,0,0,0,0,0,0,0,31018,0,0,0,0,0,0,0,''),
(3033101,10,3,0,0,0,0,0,0x004,0,0,0,0,0,0,0,5.38,'move');
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `id` IN (31018);
DELETE FROM spell_target_position WHERE Id IN(56649);
INSERT INTO spell_target_position VALUES
(56649,571,8011.2646,-3189.1797,953.0094,3.46);
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20493 AND 20498;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 20493
(20493,1,29,3,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Thorim 30390 EAI: Remove NpcFlags'),
-- 20494
(20494,1,15,56649,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of King Jokkum 30331 EAI: make player self cast 56649'),
-- 20495
-- (20495,1,20,15,0,0,0,0,0x004,0,0,0,0,7884.8184,-3234.428,849.4247,3.71,'Part of Thorim 30390 EAI: Set fall'), -- corrected below with speed
(20495,100,21,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Thorim 30390 EAI: active'),
(20495,4100,28,8,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Thorim 30390 EAI: Set kneel'), -- 01:07:53.304
(20495,7000,0,0,0,0,0,0,0,31001,0,0,0,0,0,0,0,'Part of Thorim 30390 EAI: say'), -- 01:07:56.627
(20495,10000,35,5,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Thorim 30390 EAI: send event 5'), -- 01:07:58.948
(20495,16000,0,0,0,0,0,0,0,31003,0,0,0,0,0,0,0,'Part of Thorim 30390 EAI: say'), -- 01:08:05.108
(20495,24000,0,0,0,0,0,0,0,31062,0,0,0,0,0,0,0,'Part of Thorim 30390 EAI: say'), -- 01:08:13.206
(20495,32000,35,6,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Thorim 30390 EAI: send event 6'), -- 01:08:21.590
(20495,40000,28,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Thorim 30390 EAI: Set stand'), -- 01:08:29.289
(20495,61100,0,0,0,0,0,0,0,31063,0,0,0,0,0,0,0,'Part of Thorim 30390 EAI: say'), -- 01:08:50.380
(20495,68000,35,8,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Thorim 30390 EAI: send event 8'), -- 01:08:57.250
(20495,69000,29,2,1,0,0,0,0x004,0,0,0,0,0,0,0,0,'Part of Thorim 30390 EAI: Restore NpcFlags'), -- 01:08:58.358
-- 20496
(20495,1,21,1,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'active'),
(20496,2,3,0,0,0,0,0,0x004,0,0,0,0,0,0,0,0.452998250722885131,'move'),
(20496,100,1,396,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'emote'),
(20496,200,0,0,0,0,0,0,0x004,31051,0,0,0,0,0,0,0,'say'), -- 01:07:59.050
-- 20497
(20497,1,1,396,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'emote'),
(20497,100,0,0,0,0,0,0,0x004,31052,0,0,0,0,0,0,0,'say'), -- 01:08:21.682
(20497,7000,1,396,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'emote'), -- 01:08:28.876
(20497,7100,0,0,0,0,0,0,0x004,31053,0,0,0,0,0,0,0,'say'), -- 01:08:28.978
(20497,10500,15,56660,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast on Player'), -- 01:08:39.384
(20497,10600,0,0,0,0,0,0,0x004,31054,0,0,0,0,0,0,0,'say'), -- 01:08:39.488
(20497,16000,1,396,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'emote'), -- 01:08:45.031
(20497,16100,0,0,0,0,0,0,0x004,31057,0,0,0,0,0,0,0,'say'), -- 01:08:45.133 
-- 20498
(20498,1,0,0,0,0,0,0,0,31059,0,0,0,0,0,0,0,'say'), -- 01:08:57.250
(20498,5000,1,396,0,0,0,0,0x004,0,0,0,0,0,0,0,0,'emote'), -- 01:09:02.814
(20498,5100,0,0,0,0,0,0,0x004,31060,0,0,0,0,0,0,0,'say'), -- 01:09:02.917
(20498,8000,20,2,1,0,0,0,0x004,0,0,0,0,0,0,0,0,'set path 1'); -- 01:09:05.227
-- jump fix
DELETE FROM dbscripts_on_relay WHERE id = 20495 AND delay = 1;
INSERT INTO dbscripts_on_relay (id,delay,priority,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,datafloat,x,y,z,o,speed,condition_id,comments) VALUES
(20495,1,0,20,15,0,0,0,0,0x04,0,0,0,0,5,7884.8184,-3234.428,849.4247,3.71,24,0,'jump');
-- Thorim 30390
UPDATE creature_template SET StaticFlags1 = 2147483648, MinLevel = 82, MaxLevel = 82, SpeedWalk = 2.5/2.5, SpeedRun = 6.666669845581054687/7.0, Faction = 35, UnitFlags = 0, Expansion = 2, MovementType = 0 WHERE entry IN (30390);
-- Veranus 30393
UPDATE creature_template SET StaticFlags1 = 2147483648, MinLevel = 80, MaxLevel = 80, SpeedWalk = 8/2.5, SpeedRun = 10/7.0, Faction = 14, UnitFlags = 33088, InhabitType = 4, Expansion = 2, MovementType = 3 WHERE entry IN (30393);
DELETE FROM creature_movement_template WHERE Entry = 30393;
INSERT INTO creature_movement_template (`Entry`, `pathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(30393,0,1,8011.2646,-3189.1797,953.0094,100,0,0),
(30393,0,2,7992.89,-3193.85,927.4693,100,0,0),
(30393,0,3,7974.5156,-3198.5205,901.9292,100,0,0),
(30393,0,4,7946.0366,-3185.958,890.9558,100,0,0),
(30393,0,5,7923.125,-3194.5693,882.261,100,0,0),
(30393,0,6,7902.4087,-3215.9622,876.3723,3.71,5000,3039301),
(30393,1,1,7895.975,-3228.366,881.1153,100,0,0),
(30393,1,2,7881.6494,-3278.1145,881.76086,100,0,0),
(30393,1,3,7886.1675,-3300.3853,891.60925,100,0,0),
(30393,1,4,7908.0747,-3342.1172,907.36005,100,0,0),
(30393,1,5,7919.718,-3364.6433,925.0356,100,1000,1);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3039301;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3039301,100,15,50630,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 50630'),
(3039301,101,3,0,0,0,0,0,0x004,0,0,0,0,0,0,0,3.71,'move'),
(3039301,4000,25,1,0,0,0,0,0x004,0,0,0,0,0,0,0,3.71,'RUN'),
(3039301,5000,20,3,1,0x4,0,0,0x004,0,0,0,0,0,0,0,3.71,'set path 2');
DELETE FROM vehicle_accessory WHERE vehicle_entry = 30393;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, RideSpellId, comment) VALUES
(30393,0,30390,NULL,'Thorim on Veranus');
-- Small update - req for chat distance
UPDATE creature_template SET StaticFlags1=StaticFlags1|0x80000000 WHERE entry IN(30390, 30331);
