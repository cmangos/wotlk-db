-- q.13142 'Banshee's Revenge'
-- Safirdrang's Chill Target 31077
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 31752 AND 31755;
DELETE FROM creature_movement WHERE id BETWEEN 31752 AND 31755;
DELETE FROM game_event_creature WHERE guid BETWEEN 31752 AND 31755;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 31752 AND 31755;
DELETE FROM creature_battleground WHERE guid BETWEEN 31752 AND 31755;
DELETE FROM creature_linking WHERE guid BETWEEN 31752 AND 31755
 OR master_guid BETWEEN 31752 AND 31755;
DELETE FROM creature WHERE guid BETWEEN 31752 AND 31755;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) values
(31752,31077,571,1,1,7105.507,4331.751,871.8961,5.27,300,300,0,0),
(31753,31077,571,1,1,7097.221,4343.9087,871.829,4.24,300,300,0,0),
(31754,31077,571,1,1,7107.956,4349.7563,872.16595,3.316,300,300,0,0),
(31755,31077,571,1,1,7103.3496,4365.286,872.24963,2.7925,300,300,0,0);
DELETE FROM dbscripts_on_event WHERE id IN (20108);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20108,0,16,14969,2,0,24110,30,7,0,0,0,0,0,0,0,0,'search for 31029 - buddy play sound'),
(20108,1,31,31029,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 31029 - terminate if alive'),
(20108,101,10,31029,900000,0,0,0,0x08,0,0,0,88,7126.7744,4300.3413,884.98364,2.4638,'summon 31029'), -- path 1    -- 01:47:44.289
(20108,102,10,31030,900000,0,0,0,0x08,0,0,0,88,7090.404,4446.8,837.1139,3.42267,'summon 31030'), -- path 1      	-- 01:47:44.289
(20108,3000,10,31030,900000,0,0,0,0x08,0,0,0,102,7108.0303,4427.8726,846.6365,4.5567,'summon 31030'), -- path 2 	-- 01:47:47.128
(20108,3001,10,31030,900000,0,0,0,0x08,0,0,0,103,7092.1006,4431.303,845.333,4.354,'summon 31030'), -- path 3    	-- 01:47:47.128
(20108,4000,10,31030,900000,0,0,0,0x08,0,0,0,104,7118.4204,4432.5977,837.95544,4.707,'summon 31030'), -- path 4 	-- 01:47:48.384
(20108,4001,10,31030,900000,0,0,0,0x08,0,0,0,105,7083.883,4438.466,834.9834,1.28426,'summon 31030'), -- path 5 	-- 01:47:48.384
(20108,7000,10,31050,900000,0,0,0,0x08,0,0,0,88,7098.045,4416.504,827.94006,2.9865,'summon 31050'), -- path 1 	-- -- 01:47:51.985
(20108,12000,10,31030,900000,0,0,0,0x08,0,0,0,106,7109.051,4440.554,846.1594,4.25,'summon 31030'); -- path 6 	-- 01:47:56.837
-- Possessed Vardmadra 31029
UPDATE creature_template SET UnitFlags = 33536, InhabitType = 4 WHERE entry = 31029;
DELETE FROM creature_movement_template WHERE Entry = 31029;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- Path 1
(31029,1,1,7119.0454,4306.563,883.7371,100,0,0),
(31029,1,2,7094.5923,4326.246,879.7935,1.54145,1000,3);
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21050 AND 21051;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 21050
(21050,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Possessed Vardmadra 31029 EAI: RUN ON'),
(21050,4000,16,15643,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Possessed Vardmadra 31029 EAI: sound'),
(21050,4010,1,457,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Possessed Vardmadra 31029 EAI: emote'),
(21050,4100,0,0,0,0,0,0,0x04,31595,0,0,0,0,0,0,0,'Part of Possessed Vardmadra 31029 EAI: Say 1'),
-- 21051
(21051,0,31,31016,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Balargarde Elite 31030 EAI: search for 31016'),
(21051,100,36,0,0,0,31016,100,1,0,0,0,0,0,0,0,0,'Part of Balargarde Elite 31030 EAI: face buddy');
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (31595);
-- Balargarde Elite 31030
UPDATE creature_template SET  SpeedWalk = (2.5 / 2.5), SpeedRun = (22 / 7), StaticFlags3 = 1024 WHERE entry = 31030;
DELETE FROM creature_template_addon WHERE entry = 31030;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, auras) VALUES
(31030,26882,0,1,0,0,NULL);
DELETE FROM creature_movement_template WHERE Entry = 31030;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- Path 1
(31030,1,1,7138.3657,4462.606,834.9282,100,0,0),
(31030,1,2,7095.4434,4448.357,836.9002,100,0,0),
(31030,1,3,7052.521,4434.108,838.8722,100,0,0),
(31030,1,4,7003.175,4398.9287,844.0392,100,0,0),
(31030,1,5,6988.518,4335.1104,856.90015,100,0,0),
(31030,1,6,7018.119,4279.6294,875.78845,100,0,0),
(31030,1,7,7067.4746,4300.5127,892.5076,100,1000,3),
-- Path 2
(31030,2,1,7109.887,4438.275,785.534,100,0,0),
(31030,2,2,7108.282,4428.4595,837.8948,100,0,0),
(31030,2,3,7106.6772,4418.644,890.25555,100,0,0),
(31030,2,4,7105.1323,4316.933,890.25555,100,1000,3),
-- Path 3
(31030,3,1,7095.72,4441.261,782.6733,100,0,0),
(31030,3,2,7092.2134,4431.9443,836.562,100,0,0),
(31030,3,3,7088.7065,4422.6274,890.45074,100,0,0),
(31030,3,4,7042.402,4334.1953,890.45074,100,1000,3),
-- Path 4
(31030,4,1,7118.557,4448.698,784.12555,100,0,0),
(31030,4,2,7118.448,4432.1753,837.6826,100,0,0),
(31030,4,3,7118.3394,4415.6523,891.2397,100,0,0),
(31030,4,4,7116.4233,4360.689,891.2397,100,1000,3),
-- Path 5
(31030,5,1,7081.0757,4428.9395,833.81384,100,0,0),
(31030,5,2,7083.883,4438.466,834.9834,100,0,0),
(31030,5,3,7084.1245,4439.286,835.0841,100,0,0),
(31030,5,4,7078.1157,4422.1025,891.00055,100,0,0),
(31030,5,5,7052.6484,4376.112,891.00055,100,1000,3),
-- Path 6
(31030,6,1,7125.3906,4474.498,790.1988,100,0,0),
(31030,6,2,7111.292,4445.1255,838.3093,100,0,0),
(31030,6,3,7097.1934,4415.753,886.41986,100,0,0),
(31030,6,4,7091.205,4393.4727,886.41986,100,1000,3);
-- Safirdrang 31050
DELETE FROM creature_template_addon WHERE entry = 31050;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, auras) VALUES
(31050,0,0,0,0,0,NULL);
DELETE FROM creature_movement_template WHERE Entry = 31050;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- Path 1
(31050,1,1,7089.5776,4420.3735,826.7405,100,0,0),
(31050,1,2,7097.2925,4416.5806,831.8486,100,0,0),
(31050,1,3,7097.8765,4416.2935,832.2352,100,0,0),
(31050,1,4,7096.6704,4412.85,892.09625,100,0,0),
(31050,1,5,7083.7197,4365.534,886.1511,100,1000,3);
-- Overthane Balargarde 31016
UPDATE creature_template SET Detection = 100, Pursuit = 45000 WHERE entry = 31030;
DELETE FROM creature_template_addon WHERE entry = 31016;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, auras) VALUES
(31016,0,0,1,0,0,'61081');
DELETE FROM vehicle_accessory WHERE vehicle_entry = 31050;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(31050,0,31016,'Overthane Balargarde 31016 on Safirdrang 31050');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21052 AND 21071;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 21052
(21052,1,16,15633,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: Sound'),
(21052,2,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: emote'),
(21052,100,0,0,0,0,0,0,0x04,31597,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: Say 1'), -- 01:47:59.793
(21052,7000,16,15644,2,0,31029,100,7,0,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: buddy Sound'),
(21052,7001,1,457,0,0,31029,100,7,0,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: buddy emote'),
(21052,7100,0,0,0,0,31029,100,7,31598,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: buddy Say 1'), -- 01:48:06.667
(21052,13000,16,15634,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: Sound'),
(21052,13001,1,66,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: emote'),
(21052,13100,0,0,0,0,0,0,0x04,31599,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: Say 2'), -- 01:48:13.167
(21052,19000,16,15635,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: Sound'), -- 01:48:19.127
(21052,19001,14,46598,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: remove aura'),
(21052,19002,20,15,0,0,0,0,0x04,0,0,0,0,7088.7456,4353.808,871.76263,4.52,'Part of Overthane Balargarde 31016 EAI: jump'),
(21052,19150,3,0,0,0,31050,50,7,0,0,0,0,7083.7197,4365.534,896.1511,100,'Part of Overthane Balargarde 31016 EAI: buddy move'),
(21052,19200,0,0,0,0,0,0,0x04,31600,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: Say 3'), -- 01:48:19.236
(21052,21000,36,0,0,0,31029,100,1,0,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: face buddy'), -- 01:48:21.149
(21052,23000,1,396,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: emote'), -- 01:48:23.996
(21052,29000,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: emote'), -- 01:48:30.487
(21052,31000,48,256,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: UnitFlag Removed'),
-- 21053
(21053,1,26,5,0,0,31016,100,3,0,0,0,0,0,0,0,0,'Part of Safirdrang 31050 EAI: buddy attack source'),
-- 21054
(21054,0,15,4020,0,0,31077,529526,1|0x10,0,0,0,0,0,0,0,0,'Part of Safirdrang 31050 EAI: Random Script 1 - cast 4020 on buddy 1'),
(21055,0,15,4020,0,0,31077,529527,1|0x10,0,0,0,0,0,0,0,0,'Part of Safirdrang 31050 EAI: Random Script 2 - cast 4020 on buddy 2'),
(21056,0,15,4020,0,0,31077,529528,1|0x10,0,0,0,0,0,0,0,0,'Part of Safirdrang 31050 EAI: Random Script 3 - cast 4020 on buddy 3'),
(21057,0,15,4020,0,0,31077,529529,1|0x10,0,0,0,0,0,0,0,0,'Part of Safirdrang 31050 EAI: Random Script 4 - cast 4020 on buddy 4'),
(21058,0,15,4020,0,0,31077,529530,1|0x10,0,0,0,0,0,0,0,0,'Part of Safirdrang 31050 EAI: Random Script 5 - cast 4020 on buddy 5'),
(21059,0,15,4020,0,0,31077,529531,1|0x10,0,0,0,0,0,0,0,0,'Part of Safirdrang 31050 EAI: Random Script 6 - cast 4020 on buddy 6'),
(21060,0,15,4020,0,0,31077,529532,1|0x10,0,0,0,0,0,0,0,0,'Part of Safirdrang 31050 EAI: Random Script 7 - cast 4020 on buddy 7'),
(21061,0,15,4020,0,0,31077,529533,1|0x10,0,0,0,0,0,0,0,0,'Part of Safirdrang 31050 EAI: Random Script 8 - cast 4020 on buddy 8'),
(21062,0,15,4020,0,0,31077,529534,1|0x10,0,0,0,0,0,0,0,0,'Part of Safirdrang 31050 EAI: Random Script 9 - cast 4020 on buddy 9'),
(21063,0,15,4020,0,0,31077,529535,1|0x10,0,0,0,0,0,0,0,0,'Part of Safirdrang 31050 EAI: Random Script 10 - cast 4020 on buddy 10'),
(21064,0,15,4020,0,0,31077,529536,1|0x10,0,0,0,0,0,0,0,0,'Part of Safirdrang 31050 EAI: Random Script 11 - cast 4020 on buddy 11'),
(21065,0,15,4020,0,0,31077,529537,1|0x10,0,0,0,0,0,0,0,0,'Part of Safirdrang 31050 EAI: Random Script 12 - cast 4020 on buddy 12'),
(21066,0,15,4020,0,0,31077,529538,1|0x10,0,0,0,0,0,0,0,0,'Part of Safirdrang 31050 EAI: Random Script 13 - cast 4020 on buddy 13'),
(21067,0,15,4020,0,0,31077,529539,1|0x10,0,0,0,0,0,0,0,0,'Part of Safirdrang 31050 EAI: Random Script 14 - cast 4020 on buddy 14'),
-- 21068
(21068,1,10,31083,900000,0,0,0,0x08,0,0,0,88,7088.768,4385.59,872.44836,4.468,'Part of Overthane Balargarde 31016 EAI: summon 31083'),
(21068,100,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: kneel'),
(21068,200,16,15637,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: Sound'),
(21068,201,0,0,0,0,0,0,0x04,31627,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: Say'),
-- 21069
(21069,0,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of The Lich King 31083 EAI: Run OFF'),
(21069,1,37,0,0,2,31016,100,1|0x40,0,0,0,0,0,0,0,0,'Part of The Lich King 31083 EAI: move towards buddy'),
(21069,7000,16,15605,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of The Lich King 31083 EAI: sound'),
(21069,7001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of The Lich King 31083 EAI: emote'),
(21069,7002,0,0,0,0,0,0,0x04,31693,0,0,0,0,0,0,0,'Part of The Lich King 31083 EAI: say'),
(21069,16000,16,15606,0,0,0,04,0x04,0,0,0,0,0,0,0,0,'Part of The Lich King 31083 EAI: sound'),
(21069,16001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of The Lich King 31083 EAI: emote'),
(21069,16002,0,0,0,0,0,0,0x04,31695,0,0,0,0,0,0,0,'Part of The Lich King 31083 EAI: say'),
(21069,23000,15,34427,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of The Lich King 31083 EAI: self cast 34427'),
(21069,23001,35,5,100,0,0,0,0,0,0,0,0,0,0,0,0,'Part of The Lich King 31083 EAI: send event 5'),
(21069,24000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of The Lich King 31083 EAI: despawn self'),
-- 21070
(21070,0,39,0,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Possessed Vardmadra 31029 EAI: Fly OFF'),
(21070,1,20,15,0,0,0,0,0x04,0,0,0,0,7094.5923,4326.246,871.439026,1.54145,'Part of Possessed Vardmadra 31029 EAI: jump'),
(21070,1000,28,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Possessed Vardmadra 31029 EAI: kneel'),
(21070,1100,36,0,0,0,31083,100,1,0,0,0,0,0,0,0,0,'Part of Possessed Vardmadra 31029 EAI: face buddy'),
-- 21071 - object must reload otherwise Players
(21071,1,40,0,0,0,193028,20,7,0,0,0,0,0,0,0,0,'Part of Overthane Balargarde 31016 EAI: reload object with resp 1');
DELETE FROM dbscript_random_templates WHERE id = 20373;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20373,1,21054,0,'Part of Safirdrang 31050 EAI: Random Script 1'),
(20373,1,21055,0,'Part of Safirdrang 31050 EAI: Random Script 2'),
(20373,1,21056,0,'Part of Safirdrang 31050 EAI: Random Script 3'),
(20373,1,21057,0,'Part of Safirdrang 31050 EAI: Random Script 4'),
(20373,1,21058,0,'Part of Safirdrang 31050 EAI: Random Script 5'),
(20373,1,21059,0,'Part of Safirdrang 31050 EAI: Random Script 6'),
(20373,1,21060,0,'Part of Safirdrang 31050 EAI: Random Script 7'),
(20373,1,21061,0,'Part of Safirdrang 31050 EAI: Random Script 8'),
(20373,1,21062,0,'Part of Safirdrang 31050 EAI: Random Script 9'),
(20373,1,21063,0,'Part of Safirdrang 31050 EAI: Random Script 10'),
(20373,1,21064,0,'Part of Safirdrang 31050 EAI: Random Script 11'),
(20373,1,21065,0,'Part of Safirdrang 31050 EAI: Random Script 12'),
(20373,1,21066,0,'Part of Safirdrang 31050 EAI: Random Script 13'),
(20373,1,21067,0,'Part of Safirdrang 31050 EAI: Random Script 14');
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (31597,31598,31599,31600,31601,31627,31628,31629,31631,31632,31633,31634,31635,31636,31637,31693,31695);
-- The Lich King 31083
UPDATE creature_template SET SpeedWalk = (6 / 2.5), SpeedRun = (15 / 7), UnitFlags = 768 WHERE entry = 31083;
DELETE FROM creature_movement_template WHERE Entry = 31083;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(31083,1,1,7088.768,4385.59,872.44836,4.468,9200,3108301),
(31083,1,2,7094.176,4331.3594,871.5162,100,41000,3108302),
(31083,1,3,7088.7686,4385.59,872.35254,100,0,0),
(31083,1,4,7088.7686,4385.59,872.35254,4.468,100,3);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3108301 AND 3108302;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 3108301
(3108301,10,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Run OFF'),
(3108301,4000,0,0,0,0,0,0,0x04,31628,0,0,0,0,0,0,0,'say'), -- 00:53:34.518
(3108301,4001,16,15600,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'sound'),
(3108301,4002,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3108301,7000,36,0,0,0,31029,100,1,0,0,0,0,0,0,0,0,'face buddy'),
(3108301,7001,36,0,0,0,31029,100,3,0,0,0,0,0,0,0,0,'buddy face source'),
(3108301,9000,0,0,0,0,0,0,0x04,31629,0,0,0,0,0,0,0,'say'),
(3108301,9001,16,15601,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'sound'),
(3108301,9002,1,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
-- 3108302
(3108302,10,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Run OFF'),
(3108302,2000,0,0,0,0,31029,100,3,31631,0,0,0,0,0,0,0,'buddy say'),
(3108302,2001,16,15645,2,0,31029,100,7,0,0,0,0,0,0,0,0,'buddy sound'),
(3108302,2002,1,457,0,0,31029,100,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 11:43:19.000
(3108302,6000,16,15602,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'sound'), -- 11:43:23.000
(3108302,6001,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3108302,6002,0,0,0,0,0,0,0x04,31632,0,0,0,0,0,0,0,'say'),
(3108302,12000,15,42904,0,0,31029,50,1,0,0,0,0,0,0,0,0,'cast 42904'),
(3108302,15000,0,0,0,0,31029,100,3|0x40,31633,0,0,0,0,0,0,0,'buddy say'),
(3108302,15001,16,15646,2,0,31029,100,7|0x40,0,0,0,0,0,0,0,0,'buddy sound'),
(3108302,18000,1,11,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 11:43:35.000
(3108302,20000,36,0,0,0,31016,100,1,0,0,0,0,0,0,0,0,'face buddy'),
(3108302,22000,16,15603,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'sound'), -- 11:43:39.000
(3108302,22001,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3108302,22002,0,0,0,0,0,0,0x04,31634,0,0,0,0,0,0,0,'say'),
(3108302,25000,16,15638,2,0,31016,100,7,0,0,0,0,0,0,0,0,'buddy sound'),
(3108302,25001,0,0,0,0,31016,100,3,31635,0,0,0,0,0,0,0,'buddy say'), -- 11:43:42.000
(3108302,28000,0,0,0,0,0,0,0x04,31636,0,0,0,0,0,0,0,'say'), -- 11:43:45.000
(3108302,28001,16,15604,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'sound'),
(3108302,28002,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3108302,32000,1,15,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3108302,39000,28,0,0,0,31016,100,7,0,0,0,0,0,0,0,0,'buddy stand'),
(3108302,41000,36,0,0,0,31016,100,3,0,0,0,0,0,0,0,0,'buddy face source'), -- 11:43:58.000
(3108302,41001,1,66,0,0,31016,100,7,0,0,0,0,0,0,0,0,'buddy emote'),
(3108302,41002,0,0,0,0,31016,100,7,31637,0,0,0,0,0,0,0,'buddy say'),
(3108302,41003,16,15639,2,0,31016,100,7,0,0,0,0,0,0,0,0,'buddy sound'),
(3108302,41004,35,6,100,0,0,0,0,0,0,0,0,0,0,0,0,'send event 6'),
(3108302,41010,15,50230,0,0,31016,100,7,0,0,0,0,0,0,0,0,'buddy self cast 50230');
-- Lady Nightswood 31087
DELETE FROM creature_movement_template WHERE Entry = 31087;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- Path 1
(31087,1,1,7079.5996,4301.017,874.35504,100,0,0),
(31087,1,2,7079.5996,4301.017,874.35504,1.50098,100,3),
-- Path 2
(31087,2,1,7082.3735,4283.685,878.2528,100,10,5),
(31087,2,2,7082.3735,4283.685,878.2528,100,100,1);
-- War Horn of Jotunheim 193028
UPDATE gameobject SET spawntimesecsmin = 1, spawntimesecsmax = 1 WHERE id = 193028;
