-- Fizzcrank Airstrip - Borean Tundra

-- Duplicates
DELETE FROM creature WHERE guid IN (98029,108021,111361,117922,125621,111452,111501,111426);
DELETE FROM creature_addon WHERE guid IN (98029,108021,111361,117922,125621,111452,111501,111426);
DELETE FROM creature_movement WHERE id IN (98029,108021,111361,117922,125621,111452,111501,111426);
DELETE FROM game_event_creature WHERE guid IN (98029,108021,111361,117922,125621,111452,111501,111426);
DELETE FROM game_event_creature_data WHERE guid IN (98029,108021,111361,117922,125621,111452,111501,111426);
DELETE FROM creature_battleground WHERE guid IN (98029,108021,111361,117922,125621,111452,111501,111426);
DELETE FROM creature_linking WHERE guid IN (98029,108021,111361,117922,125621,111452,111501,111426)
 OR master_guid IN (98029,108021,111361,117922,125621,111452,111501,111426);
 
-- Fizzcrank Fighter -- summoned from spell 47453
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26817);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 26817);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 26817);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 26817);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 26817);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 26817)
OR master_guid IN (SELECT guid FROM creature WHERE id = 26817);
DELETE FROM creature WHERE id = 26817;

-- ELM General Purpose Bunny
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 98576;
DELETE FROM creature_movement WHERE id = 98576;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(98576,1,4181.7,5257.24,33.0113,35000,2383701,4.66003);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2383701;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2383701,0,15,45931,4,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- 25% chance to happen
DELETE FROM dbscripts_on_relay WHERE id = 20039;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20039,1,10,25783,300000,1,0,0,0x08,0,0,0,0,4181.49,5258.66,27.1913,3.85718,'summon - Fizzcrank Airstrip Survivor');

-- Fizzcrank Airstrip Survivor
UPDATE creature_template SET MovementType = 2 WHERE entry = 25783;
DELETE FROM creature_movement_template WHERE entry = 25783;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25783,1,1,4181.49,5258.66,27.1913,7000,0,3.85718),
(25783,1,2,4175.23,5254.83,26.3869,0,0,3.61801),
(25783,1,3,4167.12,5252.15,24.9349,0,0,3.13892),
(25783,1,4,4162.46,5253.61,24.8008,0,0,2.71873),
(25783,1,5,4155.51,5258.61,23.9401,0,0,2.16895),
(25783,1,6,4151.97,5268.14,25.1825,0,0,1.63802),
(25783,1,7,4155.93,5277.95,25.171,0,0,0.876183),
(25783,1,8,4160.77,5280.7,26.2347,0,0,0.275354),
(25783,1,9,4166.49,5281.41,26.3757,0,0,6.2326),
(25783,1,10,4175.29,5280.95,26.6943,0,0,6.26794),
(25783,1,11,4179.18,5282.38,26.6943,2000,1,0.475631);

-- Abner Fizzletorque
DELETE FROM creature_addon WHERE guid = 112962;
DELETE FROM creature_template_addon WHERE entry = 25780;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25780,0,0,1,1,0,0,NULL);

-- Kara Thricestar
DELETE FROM creature_addon WHERE guid = 118006;
DELETE FROM creature_template_addon WHERE entry = 26602;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26602,0,0,1,1,0,0,NULL);

-- Chief Engineer Galpen Rolltie
DELETE FROM creature_addon WHERE guid = 117890;
DELETE FROM creature_template_addon WHERE entry = 26600;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26600,0,0,1,1,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 117890;
UPDATE creature_template SET MovementType = 2 WHERE entry = 26600;
DELETE FROM creature_movement_template WHERE entry = 26600;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(26600,1,4139.16,5316.74,29.0895,0,0,0.521056),
(26600,2,4142.2,5319.07,29.4032,0,0,1.16351),
(26600,3,4142.06,5324.18,28.7758,0,0,1.88922),
(26600,4,4139.51,5327.36,28.7795,0,0,2.66676),
(26600,5,4139.35,5327.81,28.7868,0,0,2.80813),
(26600,6,4135.03,5327.64,28.8386,0,0,4.75984),
(26600,7,4135.308,5325.655,28.77358,15000,2660001,5.05436),
(26600,8,4134.95,5327.44,28.8397,0,0,0.212383),
(26600,9,4139.78,5327.23,28.7665,0,0,5.79893),
(26600,10,4142.91,5324.11,28.8611,0,0,4.92557),
(26600,11,4142.14,5318.93,29.4096,0,0,4.30275),
(26600,12,4136.86,5314.62,28.5986,0,0,3.43096),
(26600,13,4131.68,5316.45,28.732,0,0,2.42958),
(26600,14,4129.77,5319.74,28.8754,0,0,0.336494),
(26600,15,4131.816,5320.484,28.77108,15000,2660001,0.387545),
(26600,16,4129.99,5319.73,28.8705,0,0,5.18556),
(26600,17,4131.53,5316.6,28.7443,0,0,5.75967),
(26600,18,4136.4,5314.48,28.6113,0,0,0.228109),
(26600,19,4138.53,5315.77,28.8294,0,0,1.54444),
(26600,20,4138.141,5318.302,28.8185,15000,2660001,1.762783);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2660001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- check what emotes
(2660001,2,1,233,0,0,0,0,0,69,0,0,0,0,0,0,0,''),
(2660001,13,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Toby "Mother Goose" Ironbolt
DELETE FROM creature_addon WHERE guid = 117786;
DELETE FROM creature_template_addon WHERE entry = 26597;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26597,0,0,1,1,0,0,NULL);

-- "Charlie" Northtop
DELETE FROM creature_addon WHERE guid = 117745;
DELETE FROM creature_template_addon WHERE entry = 26596;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26596,0,0,1,1,0,0,NULL);

-- Fizzcrank Pilot
DELETE FROM creature_template_addon WHERE entry = 25767;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25767,0,0,1,1,0,0,NULL);

-- Fizzcrank Fullthrottle
DELETE FROM creature_addon WHERE guid = 119034;
DELETE FROM creature_template_addon WHERE entry = 25590;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25590,0,0,1,1,0,0,NULL);

-- Mordle Cogspinner
DELETE FROM creature_addon WHERE guid = 105113;
DELETE FROM creature_template_addon WHERE entry = 25702;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25702,0,0,1,1,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 105113;
UPDATE creature_template SET MovementType = 2 WHERE entry = 25702;
DELETE FROM creature_movement_template WHERE entry = 25702;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25702,1,4182.67,5255.37,26.4601,60000,2570201,1.97222);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2570201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2570201,2,1,233,0,0,0,0,0,69,0,0,0,0,0,0,0,''),
(2570201,57,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Jinky Wingnut
DELETE FROM creature_addon WHERE guid = 109727;
DELETE FROM creature_template_addon WHERE entry = 25747;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25747,0,0,0,0,0,0,NULL);

-- Crafty Wobblesprocket
DELETE FROM npc_gossip WHERE npc_guid = 108021; -- duplicated removed
DELETE FROM creature_addon WHERE guid = 108025;
DELETE FROM creature_template_addon WHERE entry = 25477;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25477,0,0,1,1,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 108025;
UPDATE creature_template SET MovementType = 2 WHERE entry = 25477;
DELETE FROM creature_movement_template WHERE entry = 25477;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25477,1,4182.46,5222.23,24.8988,0,0,2.20293),
(25477,2,4175.3,5232.12,24.6253,0,0,2.06706),
(25477,3,4167.35,5249.38,24.7377,0,0,1.05782),
(25477,4,4173.05,5254.97,26.1928,0,0,0.146761),
(25477,5,4179.099,5251.51,26.37851,30000,2547701,5.787309),
(25477,6,4167.54,5249.84,24.8421,0,0,4.70992),
(25477,7,4171.17,5239.06,24.729,0,0,5.20865),
(25477,8,4182.51,5222.38,24.8894,0,0,5.69088),
(25477,9,4193.037,5217.233,25.13368,30000,2547702,0.4712389);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2547701,2547702);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2547701,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,5.787309,''),
(2547701,4,1,69,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2547701,27,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2547702,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0.4712389,''),
(2547702,4,1,233,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2547702,27,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Willis Wobblewheel
DELETE FROM creature_addon WHERE guid = 117866;
DELETE FROM creature_template_addon WHERE entry = 26599;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26599,0,0,1,1,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 117866;
UPDATE creature_template SET MovementType = 2 WHERE entry = 26599;
DELETE FROM creature_movement_template WHERE entry = 26599;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(26599,1,4135.004,5281.168,25.11416,120000,2659901,5.288348),
(26599,2,4137.04,5285.097,25.23916,30000,2659902,1.156044);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2659901,2659902);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2659901,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,5.288348,''),
(2659902,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,1.156044,''),
(2659902,4,1,233,0,0,0,0,0,69,0,0,0,0,0,0,0,''),
(2659902,27,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Fizzcrank Watcher Rupert Keeneye
-- has some map issue (can't stay on platform)
UPDATE creature SET position_x = 4186.929, position_y = 5321.105, position_z = 58.1174, SpawnDist = 0, MovementType = 2 WHERE guid = 97336;
UPDATE creature_template SET MovementType = 2 WHERE entry = 26634;
DELETE FROM creature_movement_template WHERE entry = 26634;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(26634,1,4186.929,5321.105,58.1174,0,0,100),
(26634,2,4185.132,5318.713,58.1639,20000,0,100),
(26634,3,4186.929,5321.105,58.1174,0,0,100),
(26634,4,4186.515,5316.936,58.15049,15000,0,100),
(26634,5,4186.929,5321.105,58.1174,0,0,100),
(26634,6,4189.929,5324.715,58.08976,20000,0,100),
(26634,7,4186.929,5321.105,58.1174,0,0,100),
(26634,8,4184.381,5325.549,58.05596,20000,0,2.134506),
(26634,9,4186.929,5321.105,58.1174,0,0,100),
(26634,10,4183.354,5318.837,58.1593,15000,0,100);

-- Fizzcrank Engineering Crew
DELETE FROM creature_addon WHERE guid IN (98042,98043);
DELETE FROM creature_template_addon WHERE entry = 26645;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26645,0,0,1,1,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (98042,98043);
DELETE FROM creature_movement WHERE id IN (98042,98043);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #98042
(98042,1,4148.46,5341.49,28.9809,0,0,4.81546),
(98042,2,4149.27,5337.97,28.8637,0,0,5.19245),
(98042,3,4150.4,5335.97,28.7474,0,0,5.54195),
(98042,4,4153.95,5334.47,28.6835,0,0,6.17811),
(98042,5,4158.32,5336.95,28.6198,0,0,0.860967),
(98042,6,4160.71,5343.03,29.9036,0,0,1.67778),
(98042,7,4157.9,5347.21,29.2499,0,0,2.54796),
(98042,8,4154.07,5347.11,29.0869,0,0,3.76137),
(98042,9,4153.728,5344.668,29.34072,25000,2664501,4.88055),
(98042,10,4153.99,5347.05,29.0852,0,0,1.08708),
(98042,11,4157.78,5347.27,29.2323,0,0,5.88979),
(98042,12,4160.55,5343.71,30.0694,0,0,4.79497),
(98042,13,4156.344,5341.525,29.41866,25000,2664501,3.08673),
(98042,14,4158.02,5339.32,28.9221,0,0,5.2544),
(98042,15,4158.59,5337.05,28.5685,0,0,4.01505),
(98042,16,4156.11,5336.92,28.6929,0,0,2.56589),
(98042,17,4153.43,5338.98,28.9564,25000,2664501,2.46378),
(98042,18,4152.34,5335.28,28.6775,0,0,3.05912),
(98042,19,4150.34,5336,28.7498,0,0,2.44258),
(98042,20,4149.28,5337.92,28.8585,0,0,1.98077),
(98042,21,4148.46,5341.01,29.0032,0,0,1.28883),
(98042,22,4149.72,5343.525,28.90088,25000,2664501,1.415985),
-- #98043
(98043,1,4151.8,5332.96,28.7062,0,0,2.01566),
(98043,2,4150.1,5335.28,28.7355,0,0,2.60314),
(98043,3,4147.11,5336.38,28.7671,0,0,3.25006),
(98043,4,4143.779,5335.355,28.67457,25000,2664501,3.76607),
(98043,5,4147.09,5336.38,28.7674,0,0,6.10656),
(98043,6,4150.54,5334.85,28.708,0,0,5.56005),
(98043,7,4152.66,5331.23,28.6853,0,0,4.7613),
(98043,8,4150.17,5326.51,28.253,0,0,3.85574),
(98043,9,4144.84,5324.01,29.0417,0,0,3.34366),
(98043,10,4139.88,5326.35,28.7512,0,0,2.42631),
(98043,11,4139.3,5329.47,28.7735,0,0,1.24429),
(98043,12,4141.878,5331.735,28.6935,25000,2664501,0.248404),
(98043,13,4139.48,5329.73,28.7532,0,0,4.6215),
(98043,14,4141.28,5326.65,28.6934,0,0,5.40689),
(98043,15,4142.99,5324.75,28.8141,0,0,6.12317),
(98043,16,4144.5,5324.69,28.9562,0,0,0.804677),
(98043,17,4145.67,5329.37,28.6824,25000,2664501,2.000506),
(98043,18,4146.9,5327.67,28.8954,0,0,5.4346),
(98043,19,4148.84,5326.85,28.7145,0,0,0.598894),
(98043,20,4151.06,5329.13,28.8193,0,0,1.59491),
(98043,21,4150.02,5330.7,28.978,0,0,3.84979),
(98043,22,4148.829,5329.599,28.9719,25000,2664501,3.66679);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2664501;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2664501,2,1,233,0,0,0,0,0,69,0,0,0,0,0,0,0,''),
(2664501,23,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Fizzcrank Airman
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26601);
DELETE FROM creature_template_addon WHERE entry = 26601;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26601,0,0,1,1,0,0,NULL);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (117923,117944,117951,117952);
DELETE FROM creature_movement WHERE id IN (117923,117944,117951,117952);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #117923
(117923,1,4191.38,5384.28,28.92,0,0,3.93471),
(117923,2,4181.37,5375.72,28.8743,0,0,3.87188),
(117923,3,4176.31,5373.3,28.6749,0,0,4.24338),
(117923,4,4172.13,5364.25,29.1779,0,0,4.27636),
(117923,5,4176.14,5373.14,28.6753,0,0,0.570065),
(117923,6,4181.42,5375.8,28.8692,0,0,0.636038),
(117923,7,4191.14,5384.23,28.9028,0,0,0.758874),
(117923,8,4206.19,5399.52,29.1642,0,0,0.786387),
(117923,9,4196.84,5389.86,28.938,0,0,3.93976),
-- #117944
(117944,1,4091.35,5314.74,29.1022,0,0,3.91257),
(117944,2,4083.32,5305.94,28.5345,0,0,3.94399),
(117944,3,4072.28,5295.13,28.7871,0,0,3.99111),
(117944,4,4083.23,5305.88,28.5582,0,0,0.790779),
(117944,5,4091.08,5314.36,28.8722,0,0,0.826122),
(117944,6,4101.86,5324.88,28.8144,0,0,0.778998),
(117944,7,4111.36,5334.68,28.7905,0,0,0.818268),
(117944,8,4119.81,5343.34,28.9154,0,0,0.814341),
(117944,9,4111.85,5335,28.721,0,0,3.92845),
(117944,10,4102.31,5325.31,28.7006,0,0,3.96772),
-- #117951
(117951,1,4174.97,5398.15,29.0934,0,0,3.91488),
(117951,2,4165.69,5388.96,29.0324,0,0,3.94618),
(117951,3,4156.13,5379.21,28.7974,0,0,3.93833),
(117951,4,4145.2,5368.28,28.8719,0,0,3.89513),
(117951,5,4137.07,5360.66,28.8672,0,0,3.93806),
(117951,6,4145.29,5368.19,28.8776,0,0,0.777305),
(117951,7,4155.93,5379.16,28.8165,0,0,0.781232),
(117951,8,4165.16,5388.61,29.1395,0,0,0.75767),
(117951,9,4174.76,5397.95,29.066,0,0,0.808721),
(117951,10,4183.86,5407.31,28.6061,0,0,0.777305),
(117951,11,4190.99,5414.3,28.7797,0,0,0.777305),
(117951,12,4184.03,5407.35,28.6179,0,0,3.87582),
-- #117952
(117952,1,4120.04,5314.97,28.8366,0,0,3.89952),
(117952,2,4114.69,5312.07,28.7469,0,0,4.15791),
(117952,3,4113.83,5309.71,28.677,0,0,4.09115),
(117952,4,4106.23,5298.96,29.1205,0,0,4.06445),
(117952,5,4098.1,5290.79,29.1456,0,0,3.96627),
(117952,6,4087.49,5281,29.1563,0,0,3.97027),
(117952,7,4098.18,5290.98,29.1677,0,0,0.767207),
(117952,8,4105.92,5298.84,29.0987,0,0,0.892085),
(117952,9,4114.75,5312.13,28.7511,0,0,0.215857),
(117952,10,4120.16,5314.99,28.8301,0,0,0.974556),
(117952,11,4128.81,5325.07,28.693,0,0,0.875191),
(117952,12,4133.1,5329.25,28.7013,0,0,0.780943),
(117952,13,4129.21,5325.17,28.694,0,0,4.04427);

-- Rig Hauler AC-9
UPDATE creature SET position_x = 4170.334961, position_y = 5359.112793, position_z = 29.899994, orientation = 2.740167, spawndist = 0, MovementType = 2 WHERE guid = 111472;
UPDATE creature_template SET MovementType = 2 WHERE entry = 25766;
DELETE FROM creature_movement_template WHERE entry = 25766;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25766,1,4170.335,5359.113,30.06447,15000,2576601,2.740167),
(25766,2,4164.76,5362.59,28.6747,2000,2576602,3.169),
(25766,3,4148.99,5357.63,28.6747,0,0,3.92456),
(25766,4,4136.4,5345.37,28.6747,0,0,3.90649),
(25766,5,4115.34,5324.08,28.6747,0,0,3.92212),
(25766,6,4108.47,5317.26,28.6747,4000,2576603,3.83807),
(25766,7,4111.86,5313.56,28.6747,0,0,0.336762),
(25766,8,4119.32,5317.29,28.6749,0,0,0.64778),
(25766,9,4135.59,5333.26,28.6758,0,0,0.827636),
(25766,10,4148.52,5346.77,28.7007,0,0,0.800147),
(25766,11,4160.56,5357.23,28.6751,0,0,0.75695),
(25766,12,4170.335,5359.113,30.06447,180000,2576604,2.740167);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2576601 AND 2576604;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2576601,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2.740167,''),
(2576601,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(2576601,11,10,25765,300000,1,0,0,0x08,0,0,0,0,4165.76,5354.39,30.1116,2.35619,'summon - Fizzcrank Bomber'), -- path1
(2576602,1,15,45967,0,0,25765,10,1,0,0,0,0,0,0,0,0,''),
(2576603,2,14,45967,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2576603,3,14,45967,0,0,25765,10,7,0,0,0,0,0,0,0,0,''),
(2576604,1,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2.740167,''),
(2576604,2,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');

-- Fizzcrank Bomber
-- dynamic spawn
UPDATE creature_template SET MovementType = 2 WHERE entry = 25765;
DELETE FROM creature_movement_template WHERE entry = 25765;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25765,1,1,4165.76,5354.39,30.1116,16000,0,2.35619),
(25765,1,2,4148.69,5357.23,28.6756,0,0,3.89358),
(25765,1,3,4136.19,5344.84,28.6756,0,0,3.92106),
(25765,1,4,4122.33,5330.94,28.6756,0,0,3.94855),
(25765,1,5,4113.08,5321.6,28.6756,20000,5,3.94855),
(25765,1,6,4090.109,5298.56,29.70082,0,0,100),
(25765,1,7,4079.459,5287.617,29.8968,0,0,100),
(25765,1,8,4066.779,5274.603,31.53571,0,0,100),
(25765,1,9,4041.215,5249.248,31.45236,0,0,100),
(25765,1,10,4020.432,5218.824,29.8968,0,0,100),
(25765,1,11,4002.392,5190.421,29.8968,0,0,100),
(25765,1,12,4000.105,5146.331,29.8968,0,0,100),
(25765,1,13,3993.002,5119.754,29.8968,0,0,100),
(25765,1,14,3976.405,5093.208,29.8968,0,0,100),
(25765,1,15,3983.637,5055.651,29.8968,0,0,100),
(25765,1,16,3990.106,5011.049,29.8968,0,0,100),
(25765,1,17,3992.433,4984.051,29.8968,0,0,100),
(25765,1,18,3988.744,4946.948,29.8968,0,0,100),
(25765,1,19,3975.796,4912.274,29.8968,0,0,100),
(25765,1,20,3958.111,4895.366,29.8968,0,0,100),
--
(25765,1,21,3928.622,4858.76,29.8968,0,2576501,100),
(25765,1,22,3921.781,4825.03,29.8968,0,2576501,100),
(25765,1,23,3935.435,4790.436,29.8968,0,0,100),
(25765,1,24,3966.323,4756.983,29.8968,0,2576501,100),
(25765,1,25,3987.75,4763.042,29.8968,0,0,100),
(25765,1,26,4025.366,4755.083,29.8968,0,2576501,100),
(25765,1,27,4050.189,4787.045,29.8968,0,0,100),
(25765,1,28,4082.41,4825.174,29.8968,0,2576501,100),
(25765,1,29,4084.739,4845.887,29.8968,0,0,100),
(25765,1,30,4082.781,4879.066,29.8968,0,2576501,100),
(25765,1,31,4075.255,4897.705,29.8968,0,0,100),
(25765,1,32,4063.763,4936.532,29.8968,0,2576501,100),
(25765,1,33,4066.78,4968.409,29.8968,0,0,100),
(25765,1,34,4082.993,4997.696,29.8968,0,2576501,100),
--
(25765,1,35,4110.507,5030.572,29.8968,0,0,100),
(25765,1,36,4141.148,5060.043,29.8968,0,0,100),
(25765,1,37,4164.455,5087.176,29.8968,0,0,100),
(25765,1,38,4189.664,5124.69,29.8968,0,0,100),
(25765,1,39,4214.33,5154.247,29.8968,0,0,100),
(25765,1,40,4237.962,5194.166,29.8968,0,0,100),
(25765,1,41,4228.307,5238.578,42.11903,0,0,100),
(25765,1,42,4200.375,5271.218,46.75792,0,0,100),
(25765,1,43,4211.719,5318.444,47.13599,0,0,100),
(25765,1,44,4229.69,5356.218,47.13599,0,0,100),
(25765,1,45,4229.779,5396.165,53.08044,0,0,100),
(25765,1,46,4231.299,5419.959,53.71933,0,0,100),
(25765,1,47,4228.378,5466.135,57.13599,0,0,100),
(25765,1,48,4249.183,5490.759,47.13599,0,0,100),
(25765,1,49,4282.767,5500.858,48.85822,0,0,100),
(25765,1,50,4300.521,5486.341,48.386,0,0,100),
(25765,1,51,4291.369,5470.349,48.91378,0,0,100),
(25765,1,52,4277.046,5454.25,47.13599,0,0,100),
(25765,1,53,4253.641,5434.851,47.13599,0,0,100),
(25765,1,54,4227.768,5423.928,47.13599,0,0,100),
(25765,1,55,4204.012,5411.217,37.52486,0,0,100),
(25765,1,56,4194.847,5402.538,32.41374,0,0,100),
(25765,1,57,4178.285,5386.063,30.94151,0,0,100),
(25765,1,58,4178.285,5386.063,30.94151,0,1,100);
-- static spawn
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (111360);
DELETE FROM creature_movement WHERE id IN (111360);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #111360
(111360,1,4222.374,5370.328,72.03476,0,5,100),
(111360,2,4193.999,5364.787,66.81252,0,0,100),
(111360,3,4161.166,5319.937,66.81252,0,0,100),
(111360,4,4149.038,5289.545,66.81252,0,0,100),
(111360,5,4158.851,5255.303,66.81252,0,0,100),
(111360,6,4193.628,5230.504,79.17356,0,0,100),
(111360,7,4259.787,5211.473,79.20131,0,0,100),
(111360,8,4293.693,5221.593,80.20133,0,0,100),
(111360,9,4296.654,5282.716,82.20137,0,0,100),
(111360,10,4261.68,5314.814,89.8682,0,0,100),
(111360,11,4224.254,5366.333,98.86811,0,0,100),
(111360,12,4174.309,5345.78,98.86811,0,0,100),
(111360,13,4150.472,5287.501,98.86811,0,0,100),
(111360,14,4188.47,5251.628,102.757,0,0,100),
(111360,15,4241.055,5236.796,102.757,0,0,100),
(111360,16,4280.259,5260.132,105.6182,0,0,100),
(111360,17,4271.736,5301.975,105.6182,0,0,100),
(111360,18,4235.847,5353.55,81.03476,0,0,100);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2576501;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2576501,0,15,45971,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- target for spell
DELETE FROM spell_script_target WHERE entry = 45993;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(45993,1,25765,0);

-- Fizzcrank Paratrooper
-- known issue: 2 spawns and each should have diff gossip menu id ... CMANGOS is missing this feature
-- we going to set only top one to allow player enjoy this small event
UPDATE creature_template SET GossipMenuId = 9429 WHERE entry = 26619;
-- 9415 12658 -- bottom - missing 
-- 9429 12687 -- top
-- First gossip used by guid: 119639
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 941501 WHERE menu_id = 9415;
DELETE FROM dbscripts_on_gossip WHERE id = 941501;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(941501,0,15,47219,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- Second gossip used by guid: 119617
DELETE FROM gossip_menu WHERE entry = 9429;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9429,12687,0,0);
DELETE FROM gossip_menu_option WHERE menu_id = 9429;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(9429, 0, 0, 'I\'ll show you!  Give me that practice parachute!', 1, 1, -1, 0, 942901, 0, 0, NULL, 0);
DELETE FROM dbscripts_on_gossip WHERE id = 942901;
INSERT INTO dbscripts_on_gossip (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(942901,0,15,47326,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- missing objects added
DELETE FROM game_event_gameobject WHERE guid = 94605;
DELETE FROM gameobject_battleground WHERE guid = 94605;
DELETE FROM gameobject WHERE guid = 94605;
INSERT INTO gameobject(guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(94605, 300190, 571, 1,1,4220.31, 5273.23, 57.3599, 5.85246, 0, 0, 0.2137, -0.976899, 25, 25, 255, 1);

-- Fizzcrank Paratrooper Teleporter
-- Player should be able to use teleporter only if aura 47219 is active
DELETE FROM areatrigger_teleport WHERE id = 5440;
INSERT INTO areatrigger_teleport (id, name, required_level, required_item, required_item2, heroic_key, heroic_key2, required_quest_done, required_quest_done_heroic, target_map, target_position_x, target_position_y, target_position_z, target_orientation, condition_id) VALUES
-- (5440,'(Top)Fizzcrank Paratrooper Teleporter',0,0,0,0,0,0,0,571,4240.04,5259.05,72.3396,2.27478,1451); - need to be set when CMANGOS will allow us to set more gossips
(5440,'(Top)Fizzcrank Paratrooper Teleporter',0,0,0,0,0,0,0,571,4240.04,5259.05,72.3396,2.27478,0);
-- reserved
-- DELETE FROM conditions WHERE condition_entry = 1451;
-- INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
-- (1451,1,47219,0);