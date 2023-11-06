-- Zeppelin Transports

-- Transport: The Purple Princess - Updates
-- Trisfal Glages <--> Grom'Gol
-- Events - missing parts added
DELETE FROM dbscripts_on_relay WHERE id IN (21000,21001);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- arrived at Trisfal Glages
(21000,20700,20,2,0,0,25101,200,7,0,0,0,0,0,0,0,0,'25101 - waypoints'),
(21000,20701,20,2,0,0,25104,200,7,0,0,0,0,0,0,0,0,'25104 - waypoints'),
(21000,20702,20,2,0,0,25100,200,7,0,0,0,0,0,0,0,0,'25100 - waypoints'),
(21000,21000,45,0,20307,0,25105,200,7,0,0,0,0,0,0,0,0,'25079 - Random Script'),
(21000,21001,28,0,0,0,25106,200,7,0,0,0,0,0,0,0,0,'25106 - STATE_STAND'),
(21000,82000,28,3,0,0,25107,200,7,0,0,0,0,0,0,0,0,'25107 - STATE_SLEEP'),
(21000,82001,28,1,0,0,25106,200,7,0,0,0,0,0,0,0,0,'25107 - STATE_SIT'),
-- arrived at Grom'Gol
(21001,600,21,1,0,0,25105,200,7,0,0,0,0,0,0,0,0,'25105 - Active'),
(21001,601,21,1,0,0,25106,200,7,0,0,0,0,0,0,0,0,'25106 - Active'),
(21001,602,21,1,0,0,25107,200,7,0,0,0,0,0,0,0,0,'25107 - Active'),
(21001,603,21,1,0,0,25107,200,7,0,0,0,0,0,0,0,0,'25107 - Active'),
(21001,604,21,1,0,0,25100,200,7,0,0,0,0,0,0,0,0,'25100 - Active'),
(21001,605,21,1,0,0,25104,200,7,0,0,0,0,0,0,0,0,'25104 - Active'),
(21001,700,20,2,0,0,25101,200,7,0,0,0,0,0,0,0,0,'25101 - waypoints'),
(21001,701,20,2,0,0,25104,200,7,0,0,0,0,0,0,0,0,'25104 - waypoints'),
(21001,702,20,2,0,0,25100,200,7,0,0,0,0,0,0,0,0,'25100 - waypoints'),
(21001,800,45,0,20307,0,25105,200,7,0,0,0,0,0,0,0,0,'25079 - Random Script'),
(21001,801,28,0,0,0,25106,200,7,0,0,0,0,0,0,0,0,'25106 - STATE_STAND'),
(21001,62000,28,3,0,0,25107,100,7,0,0,0,0,0,0,0,0,'25107 - STATE_SLEEP'),
(21001,62001,28,1,0,0,25106,200,7,0,0,0,0,0,0,0,0,'25107 - STATE_SIT'),
(21001,65000,0,0,0,0,3150,32037,7|0x10,22073,22074,0,0,0,0,0,0,'3150 - Random Say');
-- Sky-Captain Cableclamp <The Purple Princess> 25105
UPDATE creature SET movementtype = 0, spawndist = 0 WHERE id = 25105;
UPDATE creature_template SET movementtype = 0 WHERE Entry = 25105;
DELETE FROM creature_movement_template WHERE Entry = 25105;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(25105,1,1,-11.08038,-6.7247,-16.799385,100,0,0),
(25105,1,2,-8.6324,-4.851183,-17.3923,0.93,40000,0),
(25105,1,3,-11.08038,-6.7247,-16.799385,100,0,0),
(25105,1,4,-9.46934,-7.71674,-17.1416,3.1765,5000,3),
(25105,2,1,-11.08038,-6.7247,-16.799385,100,0,0),
(25105,2,2,-8.6324,-4.851183,-17.3923,0.93,15000,0),
(25105,2,3,-11.08038,-6.7247,-16.799385,100,0,0),
(25105,2,4,-11.1266,-9.488036,-16.784782,100,0,0),
(25105,2,5,-9.043399,-11.132379,-17.228189,100,13000,2510501),
(25105,2,6,-4.297514,-13.489845,-17.811230,1.51,10000,2510502),
(25105,2,7,-10.705555,-11.114658,-16.895002,100,0,0),
(25105,2,8,-9.46934,-7.71674,-17.1416,3.1765,5000,3);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2510501,2510502);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2510501,3000,0,0,0,0,0,0,0x04,24279,0,0,0,0,0,0,0,'25105 - Say'),
(2510501,8000,0,0,0,0,0,0,0x04,24280,0,0,0,0,0,0,0,'25105 - Say'),
(2510501,8001,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'25105 - Emote'),
(2510501,9000,28,0,0,0,25107,100,0x04,0,0,0,0,0,0,0,0,'25107 - STATE_STAND'),
(2510502,2000,0,0,0,0,0,0,0x04,24281,0,0,0,0,0,0,0,'25105 - Say'),
(2510502,2001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'25105 - Emote');
DELETE FROM `dbscript_random_templates` WHERE `id`=20307;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(20307,1,21020, 65, 'Sky-Captain Cableclamp 25105 - Random Script 1'), -- do nothing
(20307,1,21021, 35, 'Sky-Captain Cableclamp 25105 - Random Script 2'); -- go to sleeping one
DELETE FROM dbscripts_on_relay WHERE id IN (21020,21021);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21020,100,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'25105 - Path 1'),
(21021,100,20,2,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'25105 - Path 2');
-- Crewman Spinshaft 25102
UPDATE creature SET movementtype = 2, spawndist = 0 WHERE id = 25102;
UPDATE creature_template SET movementtype = 0 WHERE Entry = 25102;
DELETE FROM creature_movement_template WHERE Entry = 25102;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(25102,1,-11.0651,-2.42245,-16.6651,2.05949,15000,0),
(25102,2,-11.389,-13.032,-16.689,4.731,30000,0),
(25102,3,-11.0651,-2.42245,-16.6651,2.05949,120000,0);
-- Watcher Du'una 25106
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25106);
DELETE FROM creature_template_addon WHERE entry = 25106;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(25106,0,1,1,0,0,0,NULL);
-- Crewman Cutpipe 25101
UPDATE creature SET movementtype = 0, spawndist = 0 WHERE id = 25101;
UPDATE creature_template SET movementtype = 0 WHERE Entry = 25101;
DELETE FROM creature_movement_template WHERE Entry = 25101;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(25101,1 ,6.80231,-10.4635,-17.7181,1.74533,5000,0),
(25101,2 ,0.7902832,-7.823242,-17.71061,100,0,0),
(25101,3 ,-6.459717,-7.573242,-21.46061,100,0,0),
(25101,4 ,-6.209717,-4.323242,-21.46061,100,0,0),
(25101,5 ,-1.4597168,-3.8232422,-23.46061,100,0,0),
(25101,6 ,7.7781982,-3.6826172,-23.617647,100,8000,0), -- 18:08:08.309
(25101,7 ,7.7781982,-3.6826172,-23.617647,100,3000,1025), -- 18:08:29.421
(25101,8 ,8.172181,-5.1538086,-23.346914,100,0,0),
(25101,9 ,10.422181,-7.4038086,-23.346914,100,0,0),
(25101,10,12.922181,-7.6538086,-23.846914,100,0,0),
(25101,11,15.066162,-6.625,-24.076181,100,43000,2510101), -- 18:08:32.663
(25101,12,12.922181,-7.6538086,-23.846914,100,0,0),
(25101,13,10.422181,-7.4038086,-23.346914,100,0,0),
(25101,14,8.172181,-5.1538086,-23.346914,100,0,0),
(25101,15,-1.4597168,-3.8232422,-23.46061,100,0,0),
(25101,16,-6.209717,-4.323242,-21.46061,100,0,0),
(25101,17,-6.459717,-7.573242,-21.46061,100,0,0),
(25101,18,0.7902832,-7.823242,-17.71061,100,0,0),
(25101,19,6.80231,-10.4635,-17.7181,1.74533,60000,3);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2510101);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2510101,2000,28,1,0,0,0,0,0x04,24269,0,0,0,0,0,0,0,'STATE_SIT'), -- 18:08:37.528
(2510101,40000,28,0,0,0,0,0,0x04,24269,0,0,0,0,0,0,0,'STATE_STAND'); -- 18:09:16.429
-- Navigator Hatch 25104
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25104);
DELETE FROM creature_template_addon WHERE entry = 25104;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(25104,0,0,1,0,133,0,NULL);
UPDATE creature SET position_x = -1.7686768, position_y = -7.857422, position_z = -23.751476, movementtype = 0, spawndist = 0 WHERE id = 25104;
UPDATE creature_template SET movementtype = 0 WHERE Entry = 25104;
DELETE FROM creature_movement_template WHERE Entry = 25104;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(25104,1 ,-1.7686768,-7.857422,-23.751476,1.186823,6000,2510401), -- 18:08:11.621
(25104,2 ,-0.35803223,-7.898926,-23.214008,100,0,0),
(25104,3 ,0.8919678,-8.398926,-23.214008,100,0,0),
(25104,4 ,0.14196777,-10.898926,-23.214008,100,0,0),
(25104,5 ,-5.358032,-11.148926,-22.464008,100,0,0),
(25104,6 ,-5.9473877,-12.9375,-22.676542,3.2114,53000,2510402), -- 18:08:24.560
(25104,7 ,-5.0602417,-11.211914,-22.463253,100,0,0),
(25104,8 ,-0.8102417,-10.961914,-23.213253,100,0,0),
(25104,9 ,-0.6730957,-8.986328,-23.749962,100,0,0), -- 18:09:16.429
(25104,10,-1.7686768,-7.857422,-23.751476,2.94960,10,1133),
(25104,11,-1.7686768,-7.857422,-23.751476,2.94960,100,3);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2510401,2510402);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2510401,100,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN OFF'),
(2510401,1000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote'),
(2510401,3000,0,0,0,0,0,0,0x04,24269,0,0,0,0,0,0,0,'say'), -- 18:08:14.958
(2510402,1000,28,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STATE_SLEEP'), -- 18:08:24.560
(2510402,45000,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(2510402,47000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STATE_STAND'), -- 18:09:10.134
(2510402,50000,0,0,0,0,0,0,0x04,24270,24271,24272,24273,0,0,0,0,'random say'); -- 18:09:13.301
-- Chief Officer Hammerflange 25100
UPDATE creature SET position_x = -0.89453125, position_y = -6.1289062, position_z = -23.757187, movementtype = 0, spawndist = 0 WHERE id = 25100;
UPDATE creature_template SET movementtype = 0 WHERE Entry = 25100;
DELETE FROM creature_movement_template WHERE Entry = 25100;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(25100,1 ,-0.89453125,-6.1289062,-23.757187,3.909537553787231445,8000,0), -- 18:09:27.755
(25100,2 ,-0.89453125,-6.1289062,-23.757187,3.909537553787231445,100,2510001),
(25100,3 ,-0.68083954,-7.7387695,-23.514599,100,0,0),
(25100,4 ,-1.96698,-7.850586,-23.772009,100,48000,5), -- 18:08:18.487
(25100,5 ,-0.76474,-9.098633,-23.223682,100,0,0),
(25100,6 ,-1.51474,-11.098633,-23.223682,100,0,0),
(25100,7 ,-7.0625,-11.34668,-22.675358,100,0,0), -- 18:09:06.723
(25100,8 ,-7.0625,-11.34668,-22.675358,5.27089,13000,2510002), -- 18:09:08.343
(25100,9 ,-4.2453613,-11.135254,-22.456911,100,0,0),
(25100,10,-1.7453616,-11.135254,-23.456911,100,0,0),
(25100,11,0.071777344,-8.423828,-23.738464,100,0,0), -- 18:09:21.235
(25100,12,-0.4113767,-6.526367,-23.497826,100,0,0),
(25100,13,-0.89453125,-6.1289062,-23.757187,100,0,0), -- 18:09:26.140
(25100,14,-0.89453125,-6.1289062,-23.757187,3.90953755,100,2510003); -- 18:09:27.755
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2510001 AND 2510003;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2510001,1,54,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'set SHEATH_STATE_UNARMED'), -- 18:08:18.487
(2510002,1,1,22,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 18:09:08.343
(2510002,100,0,0,0,0,0,0,0x04,24275,24276,24277,0,0,0,0,0,'random say'), -- 18:09:08.474
(2510002,5000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,6.24,'move'), -- 18:09:13.199
(2510002,5100,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Run OFF'), -- 18:09:13.199
(2510002,7000,1,397,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 18:09:14.815
(2510003,1,54,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'set SHEATH_STATE_MELEE'), -- 18:09:27.755
(2510003,10,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle');
UPDATE creature_template SET ExtraFlags = ExtraFlags|4096 WHERE entry IN (25105,25106,25107,25101,25100,25104);

-- Transport: The Thundercaller - Updates
-- Orgrimmar <--> Trisfal Glages
-- Deathguard Fowles <The Thundercaller> 25079
UPDATE creature SET movementtype = 0, spawndist = 0 WHERE id = 25079;
UPDATE creature_template SET movementtype = 0 WHERE Entry = 25079;
DELETE FROM creature_movement_template WHERE Entry = 25079;
INSERT INTO creature_movement_template (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- Path 1
(25079,1,1,-7.449231,-11.386824,-17.37312,100,0,0),
(25079,1,2,-10.699231,-10.386824,-16.62312,100,0,0),
(25079,1,3,-11.699231,-8.886824,-16.37312,100,0,0),
(25079,1,4,-9.7890625,-4.627014,-17.140232,100,1,3),
-- Path 2
(25079,2,1,-11.099609,-6.478119,-16.5096342,100,0,0),
(25079,2,2,-11.849609,-9.478119,-16.2596342,100,0,0),
(25079,2,3,-8.410156,-11.829224,-17.3790362,100,0,0),
(25079,2,4,-7.510254,-11.487976,-17.286362,100,0,0),
(25079,2,5,-6.010254,-11.237976,-17.536362,100,0,0),
(25079,2,6,-5.1103516,-11.1467285,-17.693687,4.485495567321777343,1,3);
-- Chief Officer Coppernut <The Thundercaller> 25070
-- Sky-Captain Cloudkicker <The Thundercaller> 25077
UPDATE creature SET movementtype = 0, spawndist = 0 WHERE id IN (25070,25077);
UPDATE creature_template SET movementtype = 0 WHERE Entry IN (25070,25077);
DELETE FROM creature_movement_template WHERE Entry IN (25070,25077);
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- 25070
(25070,1,-9.40787,-8.02398,-17.1578,0.019,4000,0),
(25070,2,-9.40787,-8.02398,-17.1578,3.21141,1,3),
-- 25077
(25077,1,-19.6886,-8.17058,-14.3765,0.019,15000,0),
(25077,2,-19.6886,-8.17058,-14.3765,3.1765,1,3);
DELETE FROM creature_template_addon WHERE entry IN (25077,25070);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES 
(25070,0,0,0,0,0,0,NULL),
(25077,0,0,0,0,0,0,NULL);
-- Events - missing parts added
DELETE FROM dbscripts_on_relay WHERE id IN (21002,21003);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- arrived at Orgrimmar
(21002,830,20,2,1,0,25079,100,7,0,0,0,0,0,0,0,0,'25079 - Path 1'),
(21002,55000,20,2,2,0,25079,100,7,0,0,0,0,0,0,0,0,'25079 - Path 2'),
(21002,59000,20,2,0,0,25077,100,7,0,0,0,0,0,0,0,0,'25077 - waypoints'),
(21002,61000,1,396,0,0,25077,100,7,0,0,0,0,0,0,0,0,'25079 - emote'), -- 16:13:31.511
(21002,61100,0,0,0,0,25077,100,7,24237,24238,24239,24240,0,0,0,0,'25079 - Random Say'), -- 16:13:31.642
(21002,63000,20,2,0,0,25070,100,7,0,0,0,0,0,0,0,0,'25077 - waypoints'),
(21002,64100,0,0,0,0,25070,100,7,24242,0,0,0,0,0,0,0,'25070 - Say'), -- 16:13:35.538
(21002,68100,0,20306,0,0,25070,100,7,0,0,0,0,0,0,0,0,'25070 - Random Say'), -- 16:13:39.997
-- arrived Trisfal Glages
(21003,44,20,2,1,0,25079,100,7,0,0,0,0,0,0,0,0,'25079 - Path 1'),
(21003,55000,20,2,2,0,25079,100,7,0,0,0,0,0,0,0,0,'25079 - Path 2'),
(21003,59000,20,2,0,0,25077,100,7,0,0,0,0,0,0,0,0,'25077 - waypoints'),
(21003,60002,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,1.274,'9566 - move'),
(21003,60100,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'9566 - emote'),
(21003,60900,0,0,0,0,0,0,0x04,22080,0,0,0,0,0,0,0,'9566 - Say'),
(21003,61000,1,396,0,0,25077,100,7,0,0,0,0,0,0,0,0,'25079 - emote'),
(21003,61100,0,0,0,0,25077,100,7,24237,24238,24239,24240,0,0,0,0,'25079 - Random Say'),
(21003,63000,20,2,0,0,25070,100,7,0,0,0,0,0,0,0,0,'25077 - waypoints'),
(21003,64100,0,0,0,0,25070,100,7,24242,0,0,0,0,0,0,0,'25070 - Say'),
(21003,68100,0,20306,0,0,25070,100,7,0,0,0,0,0,0,0,0,'25070 - Random Say'),
(21003,70000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.345870018005371093,'9566 - move');
-- Random Templates
DELETE FROM dbscript_random_templates WHERE `id` = 20306;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20306,0,24241,0,'Chief Officer Coppernut - Random Say 1'),
(20306,0,24243,0,'Chief Officer Coppernut - Random Say 2'),
(20306,0,24244,0,'Chief Officer Coppernut - Random Say 3'),
(20306,0,24245,0,'Chief Officer Coppernut - Random Say 4'),
(20306,0,24246,0,'Chief Officer Coppernut - Random Say 5');
UPDATE creature_template SET ExtraFlags = ExtraFlags|4096 WHERE entry IN (25079,25077,25070);

-- Transport: <The Iron Eagle> - Updates
-- Orgrimmar <--> Grom'Gol
-- Events - missing parts added
DELETE FROM dbscripts_on_relay WHERE id IN (21004,21005);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- arrived at Orgrimmar
(21004,16000,28,0,0,0,25080,200,7,0,0,0,0,0,0,0,0,'25080 - STATE_STAND'),
(21004,16001,28,0,0,0,25081,200,7,0,0,0,0,0,0,0,0,'25081 - STATE_STAND'),
(21004,16002,20,2,0,0,24931,200,7,0,0,0,0,0,0,0,0,'24931 - waypoints'),
(21004,16003,20,2,0,0,24927,200,7,0,0,0,0,0,0,0,0,'25081 - waypoints'),
(21004,77000,28,1,0,0,25080,200,7,0,0,0,0,0,0,0,0,'25080 - STATE_SIT'),
(21004,77001,28,1,0,0,25081,200,7,0,0,0,0,0,0,0,0,'25081 - STATE_SIT'),
-- arrived at Grom'Gol
(21005,1000,28,0,0,0,25080,100,7,0,0,0,0,0,0,0,0,'25080 - STATE_STAND'),
(21005,1001,28,0,0,0,25081,100,7,0,0,0,0,0,0,0,0,'25081 - STATE_STAND'),
(21005,1002,20,2,0,0,24931,100,7,0,0,0,0,0,0,0,0,'24931 - waypoints'),
(21005,1003,20,2,0,0,24927,100,7,0,0,0,0,0,0,0,0,'25081 - waypoints'),
(21005,62000,28,1,0,0,25080,100,7,0,0,0,0,0,0,0,0,'25080 - STATE_SIT'),
(21005,62001,28,1,0,0,25081,100,7,0,0,0,0,0,0,0,0,'25081 - STATE_SIT');
-- Zeppelin Controls 25075 - position corrected
UPDATE creature SET position_x = -2.705565, position_y = -7.845885, position_z = -23.696701, spawndist = 0, MovementType = 0 WHERE guid = 5890006;
-- Chief Officer Brassbolt <The Iron Eagle> 24926
UPDATE creature SET position_x = -10.490723, position_y = -8.176514, position_z = -16.968468, orientation = 3.525565, movementtype = 2, spawndist = 0 WHERE id = 24926;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 24926;
DELETE FROM creature_movement_template WHERE Entry = 24926;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(24926,1,-10.490723,-8.176514,-16.968468,3.525565,13000,0),
(24926,2,-4.85437,-14.131348,-17.823143,4.7,13000,0),
(24926,3,1.8554688,-12.16272,-17.939034,100,0,0),
(24926,4,2.0644531,-7.9769287,-17.96843,6.248278141021728515,10000,0),
(24926,5,-7.5722656,-7.854126,-21.97882,100,0,0),
(24926,6,-7.5874023,-4.20459,-21.95662,100,0,0),
(24926,7,-0.86083984,-4.092041,-23.75045,100,0,0),
(24926,8,-0.89501953,-6.272583,-23.757378,3.874630928039550781,10000,0),
(24926,9,-1.2011719,-4.015747,-23.755661,100,0,0),
(24926,10,-7.1225586,-4.161133,-21.955399,100,0,0),
(24926,11,-7.1782227,-7.6258545,-21.97863,100,0,0),
(24926,12,1.590332,-7.487549,-17.97956,100,0,0),
(24926,13,1.5410156,-3.8237305,-17.979141,100,0,0),
(24926,14,-4.9365234,-1.3331299,-17.727348,1.605702877044677734,13000,0),
(24926,15,-10.154297,-4.2823486,-17.04461,100,0,0),
(24926,16,-10.490723,-8.176514,-16.968468,3.525565,13000,3);
-- Crewman Gazzlegear 24930
UPDATE creature SET position_x = -10.87109, position_y = -2.252441, position_z = -16.77871, orientation = 1.994, movementtype = 2, spawndist = 0 WHERE id = 24930;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 24930;
DELETE FROM creature_movement_template WHERE Entry = 24930;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(24930,1,-10.87109,-2.252441,-16.77871,1.994,10000,0),
(24930,2,-17.00732,-7.875366,-15.18795,3.132,7000,0),
(24930,3,-10.93066,-13.25476,-16.772,4.363323,15000,2493001),
(24930,4,1.816875,-11.61076,-17.43796,100,0,0),
(24930,5,2.720703,-7.527343,-17.95253,100,9000,2493002),
(24930,6,2.069336,-3.254395,-17.96623,100,0,0),
(24930,7,-4.509521,-2.110596,-17.74014,100,0,0),
(24930,8,-10.87109,-2.252441,-16.77871,1.994,10000,2493003);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2493001,2493002,2493003);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2493001,1000,1,133,0,0,0,0,0x04,233,0,0,0,0,0,0,0,'random Emote'),
(2493001,9000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Reset Emote'),
(2493002,1000,36,0,0,0,24931,100,1,0,0,0,0,0,0,0,0,'Face buddy'),
(2493002,3000,1,70,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Emote'),
(2493003,1000,1,133,0,0,0,0,0x04,233,0,0,0,0,0,0,0,'random Emote'),
(2493003,1100,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle');
-- Grunt Umgor 25080 & Grunt Ounda 25081
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (25080,25081));
DELETE FROM creature_template_addon WHERE entry IN (25080,25081);
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(25080,0,1,1,0,0,0,NULL),
(25081,0,1,1,0,0,0,NULL);
-- Crewman Fastwrench 24931
UPDATE creature SET position_x = 8.014648, position_y = -11.818848, position_z = -17.758667, movementtype = 0, spawndist = 0 WHERE id = 24931;
UPDATE creature_template SET movementtype = 0 WHERE Entry = 24931;
DELETE FROM creature_movement_template WHERE Entry = 24931;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(24931,1,8.014648,-11.818848,-17.758667,100,15000,2493001),
(24931,2,4.649414,-11.815308,-17.908268,100,0,0),
(24931,3,4.5390625,-7.7525635,-17.909111,0.0174,13000,2493001),
(24931,4,5.260742,-3.3137207,-17.889896,100,0,0),
(24931,5,7.5405273,-4.3985596,-17.763351,4.7123,16000,2493001),
(24931,6,4.631836,-3.3574219,-17.904953,100,0,0),
(24931,7,4.086914,-8.030884,-17.920052,100,0,0),
(24931,8,5.070801,-11.757202,-17.898148,100,0,0),
(24931,9,7.694824,-10.170654,-17.76756,1.640609502792358398,17000,2493003);
-- Navigator Sparksizzle 24927
UPDATE creature_template SET EquipmentTemplateid = 0, movementtype = 0 WHERE Entry = 24927;
DELETE FROM creature_movement_template WHERE Entry = 24927;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(24927,1,-1.874165,-7.847112,-23.687178,100,5000,0),
(24927,2,7.8632812,-3.5075684,-23.615768,6.230824947357177734,6000,2492702),
(24927,3,7.7124023,-7.5167236,-23.623325,100,0,0),
(24927,4,13.755371,-7.8200684,-24.182396,100,0,0),
(24927,5,13.775391,-5.272827,-24.128212,100,26000,2492701),
(24927,6,13.608398,-7.847534,-24.196655,100,0,0),
(24927,7,9.189453,-8.021484,-23.600685,100,0,0),
(24927,8,-1.8735352,-7.84729,-23.75269,3.385938644409179687,1000,3);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2492701,2492702);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2492701,4000,1,92,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Emote'),
(2492701,9000,1,92,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Emote'),
(2492701,16000,1,92,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Emote'),
(2492701,24000,1,92,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Emote'),
(2492701,26000,42,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset equip'),
(2492702,1000,1,69,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Emote'),
(2492702,5500,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset Emote'),
(2492702,6000,42,0,0,0,0,0,0x04,2716,0,0,0,0,0,0,0,'temp equip');
-- Crewman Crosswire 24929
UPDATE creature SET movementtype = 2, spawndist = 0 WHERE id = 24929;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 24929;
DELETE FROM creature_movement_template WHERE Entry = 24929;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(24929,1,9.08252,-4.9639893,-23.592117,100,0,0),
(24929,2,9.386719,-8.013794,-23.597565,100,0,0),
(24929,3,13.881836,-7.7563477,-24.16922,100,0,0),
(24929,4,13.786621,-10.506592,-24.053596,100,30000,2492901),
(24929,5,13.775391,-8.115112,-24.186539,100,0,0),
(24929,6,9.063477,-8.009399,-23.602654,100,0,0),
(24929,7,9.210449,-10.531738,-23.589626,100,15000,2493001),
(24929,8,9.08252,-4.9639893,-23.592117,100,15000,2493003);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2492901);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2492901,2000,28,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STATE_SIT'),
(2492901,27000,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'STATE_STAND');
UPDATE creature_template SET ExtraFlags = ExtraFlags|4096 WHERE entry IN (25080,25081,24931,24927);

-- Transport: The Cloudkisser - Updates
-- Trisfal Glages <--> Vengance Landing
-- Duplicates
DELETE FROM creature_addon WHERE guid IN (530785,530790);
DELETE FROM creature_movement WHERE Id IN (530785,530790);
DELETE FROM game_event_creature WHERE guid IN (530785,530790);
DELETE FROM game_event_creature_data WHERE guid IN (530785,530790);
DELETE FROM creature_battleground WHERE guid IN (530785,530790);
DELETE FROM creature_linking WHERE guid IN (530785,530790)
 OR master_guid IN (530785,530790);
DELETE FROM creature WHERE guid IN (530785,530790);
-- Sky-Captain Cryoflight <The Cloudkisser> 31716
DELETE FROM gossip_menu WHERE entry IN(10259);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(10259,14248,0,0);
UPDATE creature_template SET GossipMenuId = 10259 WHERE entry = 31716;
-- Crewman Spinwheel 31704
-- Crewman Coilspan 31705
-- Crewman Stembolt 31706
DELETE FROM gossip_menu WHERE entry IN(10120);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(10120,14047,0,0);
UPDATE creature_template SET GossipMenuId = 10120 WHERE entry IN (31704,31705,31706);
-- Deathguard Hicks <The Cloudkisser> 31715
UPDATE creature SET orientation = 1.692969, movementtype = 0, spawndist = 0 WHERE id = 31715;
UPDATE creature_template SET movementtype = 0 WHERE Entry = 31715;
DELETE FROM creature_movement_template WHERE Entry = 31715;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31715,1,-3.72255,-14.2082,-17.5796,5.81195,60000,9),
(31715,2,-3.72255,-14.2082,-17.5796,1.692969,100,3171501);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3171501);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3171501,1,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle');
-- Events - missing parts added
DELETE FROM dbscripts_on_relay WHERE id IN (21006,21007);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- arrived at Vengance Landing
(21006,1,20,2,0,0,31715,30,7,0,0,0,0,0,0,0,0,'31715 - waypoints'),
-- arrived at  Trisfal Glages
(21007,1,20,2,0,0,31715,30,7,0,0,0,0,0,0,0,0,'31715 - waypoints');

-- Transport: The Mighty Wind - Updates
-- Orgrimmar <--> Borean Tundra
-- Grunt Grikee 31727
UPDATE creature SET orientation = 4.729842, movementtype = 0, spawndist = 0 WHERE id = 31727;
UPDATE creature_template SET movementtype = 0 WHERE Entry = 31727;
DELETE FROM creature_movement_template WHERE Entry = 31727;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31727,1,-3.38308,-1.91393,-17.6198,0.9773843,60000,0),
(31727,2,-3.38308,-1.91393,-17.6198,4.729842,1,3);
-- Events - missing parts added
DELETE FROM dbscripts_on_relay WHERE id IN (21008,21009);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- arrived at Orgrimmar
(21008,1,20,2,0,0,31727,100,7,0,0,0,0,0,0,0,0,'31727 - waypoints'),
-- arrived at Borean Tundra
(21009,11,20,2,0,0,31727,100,7,0,0,0,0,0,0,0,0,'31727 - waypoints');
UPDATE creature_template SET ExtraFlags = ExtraFlags|4096 WHERE entry IN (31715,31727);

-- Transport: <The Zephyr> - Updates
-- Thunder Bluff <--> Orgrimmar
-- Crewman Pipewrench <The Zephyr> 34717
UPDATE creature SET movementtype = 2, spawndist = 0 WHERE id = 34717;
UPDATE creature_template SET movementtype = 2 WHERE Entry = 34717;
DELETE FROM creature_movement_template WHERE Entry = 34717;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34717,1,-13.670166,-12.401855,-16.0979,4.590215682983398437,120000,0),
(34717,2,-14.315262,-3.41333,-15.885895,1.8502306,120000,0);
-- Bluffwatcher 3084 - on Zephyr only
DELETE FROM creature_spawn_data_template WHERE entry IN (20058);
INSERT INTO creature_spawn_data_template (Entry, NpcFlags, Faction, EquipmentId) VALUES 
(20058,0,83,538);
DELETE FROM `creature_spawn_data` WHERE `Guid` IN (6470004,6470005);
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES
(6470004,20058),(6470005,20058);
DELETE FROM creature_addon WHERE guid IN (6470004,6470005);
INSERT INTO creature_addon (guid, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES 
(6470004,0,0,2,0,0,0,NULL),
(6470005,0,0,2,0,0,0,NULL);
-- Events - missing parts added
DELETE FROM dbscripts_on_relay WHERE id IN (21010,21011);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- arrived at Orgrimmar
(21010,1,0,0,0,0,34715,100,7,35030,0,0,0,0,0,0,0,'34715 - Say'),
(21010,60000,0,0,0,0,34715,100,7,35031,0,0,0,0,0,0,0,'34715 - Say'),
-- arrived at Thunder Bluff
(21011,1,0,0,0,0,34715,100,7,35032,0,0,0,0,0,0,0,'34715 - Say'),
(21011,60000,0,0,0,0,34715,100,7,35033,0,0,0,0,0,0,0,'34715 - Say');
UPDATE creature_template SET ExtraFlags = ExtraFlags|4096 WHERE entry IN (34715,34717);
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (29545,35041,35039);
UPDATE `broadcast_text` SET `ChatTypeID`= 2 WHERE `Id` IN (24279);

