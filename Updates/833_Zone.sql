-- Ruins of Alterac

-- Missing creatures added - Free WoTLK guids Reused
DELETE FROM creature_addon WHERE guid = 129732;
DELETE FROM creature_movement WHERE id = 129732;
DELETE FROM game_event_creature WHERE guid = 129732;
DELETE FROM game_event_creature_data WHERE guid = 129732;
DELETE FROM creature_battleground WHERE guid = 129732;
DELETE FROM creature_linking WHERE guid = 129732
OR master_guid = 129732;
DELETE FROM creature WHERE guid = 129732;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
-- Crushridge Enforcer
(129732,2256,0,1,1,0,60,479.025,-315.407,157.363,1.8985640,300,300,0,0,1459,0,0,2);

-- Updates
UPDATE creature_movement_template SET orientation = 100 WHERE entry = 2417;
-- Mug'thol
UPDATE creature SET position_x = 487.381, position_y = -215.608, position_z = 167.8223, orientation = 5.2534410, spawndist = 0, MovementType = 0 WHERE guid = 16770;
-- Targ
UPDATE creature SET position_x = 512.719, position_y = -324.533, position_z = 153.7513, orientation = 0.2986293, spawndist = 2, MovementType = 1 WHERE guid = 16947;
-- Muckrake
UPDATE creature SET position_x = 627.308, position_y = -298.841, position_z = 152.9703, orientation = 3.3579760, spawndist = 2, MovementType = 1 WHERE guid = 16940;
-- Glommus
UPDATE creature SET position_x = 719.318, position_y = -322.698, position_z = 140.3323, orientation = 5.0241890, spawndist = 2, MovementType = 1 WHERE guid = 16943;
-- Crushridge Plunderer
UPDATE creature SET position_x = 480.606, position_y = -257.163, position_z = 152.6053, orientation = 1.3338140, spawndist = 2, MovementType = 1 WHERE guid = 16764;
UPDATE creature SET position_x = 488.357, position_y = -256.837, position_z = 152.6053, orientation = 1.1252170, spawndist = 2, MovementType = 1 WHERE guid = 16765;
-- Crushridge Warmonger
UPDATE creature SET position_x = 463.668, position_y = -216.055, position_z = 152.6053, orientation = 4.9832050, spawndist = 2, MovementType = 1 WHERE guid = 16954;
UPDATE creature SET position_x = 495.991, position_y = -233.119, position_z = 151.1063, orientation = 5.7421330, spawndist = 2, MovementType = 1 WHERE guid = 16955;
UPDATE creature SET position_x = 523.455, position_y = -235.097, position_z = 152.6053, orientation = 6.0395870, spawndist = 2, MovementType = 1 WHERE guid = 16956;
UPDATE creature SET position_x = 515.167, position_y = -222.231, position_z = 152.6053, orientation = 2.7264320, spawndist = 2, MovementType = 1 WHERE guid = 16957;
UPDATE creature SET position_x = 506.305, position_y = -212.679, position_z = 161.4263, orientation = 3.2937350, spawndist = 2, MovementType = 1 WHERE guid = 16974;
UPDATE creature SET position_x = 494.552, position_y = -218.143, position_z = 161.4263, orientation = 5.6381990, spawndist = 2, MovementType = 1 WHERE guid = 16981;
UPDATE creature SET position_x = 502.344, position_y = -195.077, position_z = 152.6053, orientation = 4.8869220, spawndist = 2, MovementType = 1 WHERE guid = 16711;
UPDATE creature SET position_x = 486.128, position_y = -219.844, position_z = 152.6053, orientation = 1.0202080, spawndist = 2, MovementType = 1 WHERE guid = 16983;
UPDATE creature SET position_x = 507.783, position_y = -253.631, position_z = 151.3663, orientation = 0.8472200, spawndist = 2, MovementType = 1 WHERE guid = 17039;
UPDATE creature SET position_x = 507.030, position_y = -212.483, position_z = 152.6053, orientation = 2.9748230, spawndist = 2, MovementType = 1 WHERE guid = 16731;
UPDATE creature SET position_x = 493.253, position_y = -234.984, position_z = 166.5283, orientation = 2.5867140, spawndist = 2, MovementType = 1 WHERE guid = 16769;
UPDATE creature SET position_x = 462.705, position_y = -221.230, position_z = 176.6313, orientation = 4.1508610, spawndist = 2, MovementType = 1 WHERE guid = 16979;
UPDATE creature SET position_x = 519.876, position_y = -233.617, position_z = 176.6313, orientation = 3.5953160, spawndist = 2, MovementType = 1 WHERE guid = 16977;
UPDATE creature SET position_x = 499.138, position_y = -231.656, position_z = 166.5283, orientation = 1.6057030, spawndist = 2, MovementType = 1 WHERE guid = 16768;
UPDATE creature SET position_x = 473.481, position_y = -231.813, position_z = 152.6053, orientation = 2.3646510, spawndist = 2, MovementType = 1 WHERE guid = 16982;
UPDATE creature SET position_x = 505.169, position_y = -198.739, position_z = 176.6313, orientation = 4.2455300, spawndist = 2, MovementType = 1 WHERE guid = 16978;
UPDATE creature SET position_x = 483.504, position_y = -253.675, position_z = 176.6313, orientation = 1.8489350, spawndist = 2, MovementType = 1 WHERE guid = 16980;
UPDATE creature SET position_x = 474.360, position_y = -229.138, position_z = 161.4263, orientation = 5.9556070, spawndist = 2, MovementType = 1 WHERE guid = 16976;
UPDATE creature SET position_x = 417.026, position_y = -245.725, position_z = 157.3383, orientation = 0.3241690, spawndist = 5, MovementType = 1 WHERE guid = 17595;
UPDATE creature SET position_x = 511.345, position_y = -351.439, position_z = 163.2953, orientation = 3.8982250, spawndist = 5, MovementType = 1 WHERE guid = 16747;
UPDATE creature SET position_x = 421.153, position_y = -290.814, position_z = 163.5863, orientation = 4.5197100, spawndist = 5, MovementType = 1 WHERE guid = 17061;
UPDATE creature SET position_x = 482.689, position_y = -313.230, position_z = 156.1693, orientation = 2.4197860, spawndist = 5, MovementType = 1 WHERE guid = 17042;
UPDATE creature SET position_x = 455.005, position_y = -282.813, position_z = 159.9133, orientation = 4.0717710, spawndist = 5, MovementType = 1 WHERE guid = 17064;
UPDATE creature SET position_x = 388.325, position_y = -315.340, position_z = 165.0993, orientation = 3.8539930, spawndist = 5, MovementType = 1 WHERE guid = 17060;
UPDATE creature SET position_x = 547.213, position_y = -216.640, position_z = 147.7843, orientation = 2.2450220, spawndist = 5, MovementType = 1 WHERE guid = 17034;
UPDATE creature SET position_x = 583.838, position_y = -247.915, position_z = 147.5813, orientation = 0.6907575, spawndist = 5, MovementType = 1 WHERE guid = 17033;
-- Crushridge Enforcer
UPDATE creature SET position_x = 381.875, position_y = -284.062, position_z = 158.2173, orientation = 4.3770100, spawndist = 5, MovementType = 1 WHERE guid = 17059;
UPDATE creature SET position_x = 451.345, position_y = -322.601, position_z = 163.2523, orientation = 6.2717430, spawndist = 5, MovementType = 1 WHERE guid = 17046;
UPDATE creature SET position_x = 481.914, position_y = -285.736, position_z = 153.8153, orientation = 3.0025390, spawndist = 5, MovementType = 1 WHERE guid = 17062;
UPDATE creature SET position_x = 447.023, position_y = -248.480, position_z = 156.2263, orientation = 1.9989070, spawndist = 5, MovementType = 1 WHERE guid = 17599;
UPDATE creature SET position_x = 483.768, position_y = -346.502, position_z = 172.3563, orientation = 5.8343640, spawndist = 5, MovementType = 1 WHERE guid = 17043;
UPDATE creature SET position_x = 519.536, position_y = -285.726, position_z = 151.2233, orientation = 2.9900970, spawndist = 0, MovementType = 2 WHERE guid = 17036; -- wp
UPDATE creature SET position_x = 547.905, position_y = -248.602, position_z = 150.4743, orientation = 2.8809560, spawndist = 5, MovementType = 1 WHERE guid = 17037;
UPDATE creature SET position_x = 542.708, position_y = -285.974, position_z = 152.1153, orientation = 3.3272550, spawndist = 5, MovementType = 1 WHERE guid = 17035;
UPDATE creature SET position_x = 581.502, position_y = -277.468, position_z = 150.5603, orientation = 1.5043450, spawndist = 5, MovementType = 1 WHERE guid = 17041;
UPDATE creature SET position_x = 583.818, position_y = -215.339, position_z = 144.2603, orientation = 3.1374810, spawndist = 5, MovementType = 1 WHERE guid = 17038;
UPDATE creature SET position_x = 582.503, position_y = -333.951, position_z = 150.7553, orientation = 4.6295150, spawndist = 5, MovementType = 1 WHERE guid = 16803;
UPDATE creature SET position_x = 547.092, position_y = -350.745, position_z = 153.4253, orientation = 3.7444800, spawndist = 5, MovementType = 1 WHERE guid = 16746;
-- Crushridge Mauler
UPDATE creature SET position_x = 644.413, position_y = -502.789, position_z = 177.2473, orientation = 4.2906980, spawndist = 5, MovementType = 1 WHERE guid = 17370;
UPDATE creature SET position_x = 625.016, position_y = -516.544, position_z = 179.5773, orientation = 5.7928770, spawndist = 5, MovementType = 1 WHERE guid = 16998;
UPDATE creature SET position_x = 608.776, position_y = -500.015, position_z = 173.9673, orientation = 0.7317507, spawndist = 5, MovementType = 1 WHERE guid = 17068;
UPDATE creature SET position_x = 591.547, position_y = -376.063, position_z = 155.3863, orientation = 5.1832950, spawndist = 5, MovementType = 1 WHERE guid = 17095;
UPDATE creature SET position_x = 563.573, position_y = -427.764, position_z = 178.0393, orientation = 3.4936310, spawndist = 0, MovementType = 2 WHERE guid = 17083; -- wp
UPDATE creature SET position_x = 585.107, position_y = -445.212, position_z = 161.3733, orientation = 6.0815020, spawndist = 5, MovementType = 1 WHERE guid = 17082;
UPDATE creature SET position_x = 609.437, position_y = -405.919, position_z = 159.6923, orientation = 0.4716549, spawndist = 5, MovementType = 1 WHERE guid = 17093;
UPDATE creature SET position_x = 624.786, position_y = -423.805, position_z = 161.4453, orientation = 2.3529130, spawndist = 5, MovementType = 1 WHERE guid = 17078;
UPDATE creature SET position_x = 543.253, position_y = -443.913, position_z = 168.3803, orientation = 3.5830010, spawndist = 5, MovementType = 1 WHERE guid = 16996;
UPDATE creature SET position_x = 688.137, position_y = -385.574, position_z = 160.5053, orientation = 5.0364930, spawndist = 5, MovementType = 1 WHERE guid = 16809;
UPDATE creature SET position_x = 647.432, position_y = -347.437, position_z = 150.4753, orientation = 2.1363370, spawndist = 5, MovementType = 1 WHERE guid = 16997;
UPDATE creature SET position_x = 716.629, position_y = -288.746, position_z = 140.5923, orientation = 0.8203048, spawndist = 5, MovementType = 1 WHERE guid = 16776;
UPDATE creature SET position_x = 751.149, position_y = -318.045, position_z = 136.0043, orientation = 5.4393250, spawndist = 5, MovementType = 1 WHERE guid = 16773;
UPDATE creature SET position_x = 662.471, position_y = -384.177, position_z = 158.3443, orientation = 4.4357860, spawndist = 0, MovementType = 2 WHERE guid = 16878; -- wp
UPDATE creature SET position_x = 776.031, position_y = -321.419, position_z = 138.2023, orientation = 3.7515010, spawndist = 0, MovementType = 2 WHERE guid = 16805; -- wp
-- Crushridge Mage
UPDATE creature SET position_x = 629.564, position_y = -493.875, position_z = 175.4353, orientation = 3.9618970, spawndist = 5, MovementType = 1 WHERE guid = 17072;
UPDATE creature SET position_x = 575.096, position_y = -306.593, position_z = 152.1063, orientation = 1.6816440, spawndist = 5, MovementType = 1 WHERE guid = 16804;
UPDATE creature SET position_x = 612.814, position_y = -345.006, position_z = 152.3153, orientation = 2.1592270, spawndist = 5, MovementType = 1 WHERE guid = 16807;
UPDATE creature SET position_x = 645.039, position_y = -415.588, position_z = 158.8223, orientation = 2.4894760, spawndist = 5, MovementType = 1 WHERE guid = 16995;
UPDATE creature SET position_x = 603.842, position_y = -429.964, position_z = 162.6793, orientation = 5.7341320, spawndist = 5, MovementType = 1 WHERE guid = 17081;
UPDATE creature SET position_x = 684.529, position_y = -347.491, position_z = 146.0833, orientation = 0.6793453, spawndist = 5, MovementType = 1 WHERE guid = 16811;
UPDATE creature SET position_x = 749.943, position_y = -293.064, position_z = 135.8003, orientation = 1.9278790, spawndist = 5, MovementType = 1 WHERE guid = 16774;
UPDATE creature SET position_x = 755.180, position_y = -372.512, position_z = 141.8703, orientation = 5.7785070, spawndist = 5, MovementType = 1 WHERE guid = 16772;

-- Waypoints
DELETE FROM creature_movement WHERE id = 16998;
DELETE FROM creature_movement WHERE id = 17072;
DELETE FROM creature_movement WHERE id = 16807;
DELETE FROM creature_movement WHERE id = 16731;
DELETE FROM creature_movement WHERE id = 16983;
DELETE FROM creature_movement WHERE id = 16982;
DELETE FROM creature_movement WHERE id = 16981;
DELETE FROM creature_movement WHERE id = 17036;
DELETE FROM creature_movement WHERE id = 17039;

DELETE FROM creature_movement WHERE id = 16805;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(16805, 1, 758.2414, -333.8624, 137.5868, 0, 0,100),
(16805, 2, 740.6694, -329.9503, 137.7865, 0, 0,100),
(16805, 3, 733.4403, -337.8333, 138.3852, 0, 0,100),
(16805, 4, 729.6653, -343.3156, 138.4929, 0, 0,100),
(16805, 5, 710.6952, -343.4779, 140.9155, 0, 0,100),
(16805, 6, 702.6859, -330.8331, 144.6261, 0, 0,100),
(16805, 7, 703.6092, -306.3686, 145.3788, 0, 0,100),
(16805, 8, 702.6859, -330.8331, 144.6261, 0, 0,100),
(16805, 9, 710.6952, -343.4779, 140.9155, 0, 0,100),
(16805, 10, 729.6653, -343.3156, 138.4929, 0, 0,100),
(16805, 11, 733.4403, -337.8333, 138.3852, 0, 0,100),
(16805, 12, 740.6694, -329.9503, 137.7865, 0, 0,100),
(16805, 13, 758.2414, -333.8624, 137.5868, 0, 0,100),
(16805, 14, 776.2673, -319.4604, 138.0816, 0, 0,100);

DELETE FROM creature_movement WHERE id = 16878;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(16878, 1, 660.9976, -389.3674, 158.6654, 0, 0,100),
(16878, 2, 663.0256, -367.1043, 152.2794, 0, 0,100),
(16878, 3, 665.7596, -347.1701, 148.5439, 0, 0,100),
(16878, 4, 647.5004, -336.9789, 150.8357, 0, 0,100),
(16878, 5, 643.2479, -331.2840, 150.9541, 0, 0,100),
(16878, 6, 646.2415, -321.5365, 151.4187, 0, 0,100),
(16878, 7, 650.4329, -312.3050, 151.2614, 0, 0,100),
(16878, 8, 665.4897, -308.5985, 150.7041, 0, 0,100),
(16878, 9, 650.4329, -312.3050, 151.2614, 0, 0,100),
(16878, 10, 646.2415, -321.5365, 151.4187, 0, 0,100),
(16878, 11, 643.2479, -331.2840, 150.9541, 0, 0,100),
(16878, 12, 647.5004, -336.9789, 150.8357, 0, 0,100),
(16878, 13, 665.7596, -347.1701, 148.5439, 0, 0,100),
(16878, 14, 663.0256, -367.1043, 152.2794, 0, 0,100),
(16878, 15, 660.9976, -389.3674, 158.6654, 0, 0,100),
(16878, 16, 671.8643, -397.2561, 159.6177, 0, 0,100);

DELETE FROM creature_movement WHERE id = 17036;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(17036, 1, 536.5616, -301.7876, 152.2191, 0, 0,100),
(17036, 2, 561.5410, -327.5449, 150.7700, 0, 0,100),
(17036, 3, 598.4308, -332.1746, 151.1207, 0, 0,100),
(17036, 4, 562.4023, -327.6765, 151.4955, 0, 0,100),
(17036, 5, 537.5000, -302.0840, 152.1691, 0, 0,100),
(17036, 6, 516.7424, -285.2995, 151.2174, 0, 0,100),
(17036, 7, 498.4231, -282.9135, 151.7484, 0, 0,100),
(17036, 8, 516.7424, -285.2995, 151.2174, 0, 0,100);

DELETE FROM creature_movement WHERE id = 129732;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(129732, 1, 476.0085, -306.5504, 156.0354, 0, 0,100),
(129732, 2, 485.4477, -291.3710, 153.6971, 0, 0,100),
(129732, 3, 513.4834, -280.7294, 151.2386, 0, 0,100),
(129732, 4, 543.1263, -265.4279, 150.7051, 0, 0,100),
(129732, 5, 555.1702, -255.3952, 150.1473, 0, 0,100),
(129732, 6, 574.4200, -240.7199, 147.1593, 0, 0,100),
(129732, 7, 559.8943, -217.0379, 146.6799, 0, 0,100),
(129732, 8, 549.4785, -191.1465, 143.7747, 0, 0,100),
(129732, 9, 549.0641, -179.6762, 148.4876, 0, 0,100),
(129732, 10, 570.8293, -182.2124, 159.3001, 0, 0,100),
(129732, 11, 549.0641, -179.6762, 148.4876, 0, 0,100),
(129732, 12, 548.4375, -191.1465, 143.7747, 0, 0,100),
(129732, 13, 559.8943, -217.0379, 146.6799, 0, 0,100),
(129732, 14, 574.4200, -240.7199, 147.1593, 0, 0,100),
(129732, 15, 555.1702, -255.3952, 150.1473, 0, 0,100),
(129732, 16, 543.1263, -265.4279, 150.7051, 0, 0,100),
(129732, 17, 513.4834, -280.7294, 151.2386, 0, 0,100),
(129732, 18, 485.4477, -291.3710, 153.6971, 0, 0,100),
(129732, 19, 476.0085, -306.5504, 156.0354, 0, 0,100),
(129732, 20, 478.4863, -315.1992, 157.3703, 0, 0,100);

DELETE FROM creature_movement WHERE id = 17083;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(17083, 1, 547.8973, -433.5206, 173.6534, 0, 0,100),
(17083, 2, 560.9348, -430.8139, 177.4720, 0, 0,100),
(17083, 3, 565.3414, -428.1282, 176.8060, 0, 0,100),
(17083, 4, 572.5917, -426.5278, 174.0913, 0, 0,100),
(17083, 5, 577.4359, -425.8492, 173.4757, 0, 0,100),
(17083, 6, 581.7170, -426.6912, 171.7158, 0, 0,100),
(17083, 7, 588.7031, -426.1992, 166.1329, 0, 0,100),
(17083, 8, 595.3887, -424.1211, 163.2579, 0, 0,100),
(17083, 9, 596.3011, -410.8003, 159.9134, 0, 0,100),
(17083, 10, 594.0447, -399.0242, 159.4667, 0, 0,100),
(17083, 11, 594.1092, -394.1530, 158.6290, 0, 0,100),
(17083, 12, 600.6637, -389.2892, 155.5366, 0, 0,100),
(17083, 13, 618.9833, -387.6779, 157.6210, 0, 0,100),
(17083, 14, 629.2559, -381.9645, 155.4420, 0, 0,100),
(17083, 15, 623.8954, -357.0852, 152.5368, 0, 0,100),
(17083, 16, 629.2559, -381.9645, 155.4420, 0, 0,100),
(17083, 17, 618.9833, -387.6779, 157.6210, 0, 0,100),
(17083, 18, 600.6637, -389.2892, 155.5366, 0, 0,100),
(17083, 19, 594.1092, -394.1530, 158.6290, 0, 0,100),
(17083, 20, 594.0447, -399.0242, 160.7394, 0, 0,100),
(17083, 21, 596.3011, -410.8003, 159.9134, 0, 0,100),
(17083, 22, 595.4362, -424.1010, 162.3591, 0, 0,100),
(17083, 23, 588.9517, -426.1819, 166.4087, 0, 0,100),
(17083, 24, 581.7170, -426.6912, 171.7158, 0, 0,100),
(17083, 25, 577.4359, -425.8492, 173.4757, 0, 0,100),
(17083, 26, 572.5917, -426.5278, 174.0913, 0, 0,100),
(17083, 27, 565.3414, -428.1282, 176.8060, 0, 0,100),
(17083, 28, 560.9348, -430.8139, 177.4720, 0, 0,100),
(17083, 29, 548.2148, -433.4551, 173.4251, 0, 0,100),
(17083, 30, 536.2098, -443.6818, 173.2511, 0, 0,100);
