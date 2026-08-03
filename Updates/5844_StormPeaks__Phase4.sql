-- Storm Peaks: Valley of Ancient Winters & Dun Niffelem - Phase 4

-- Phase Shift 2: Frost Giants - should remove players Disguise aura
UPDATE spell_area SET aura_spell = -55858 WHERE spell IN (72914,55012);
-- c.30275 Wild Wyrm 
DELETE FROM creature_addon WHERE guid BETWEEN 527693 AND 527705;
DELETE FROM creature_movement WHERE id BETWEEN 527693 AND 527705;
DELETE FROM game_event_creature WHERE guid BETWEEN 527693 AND 527705;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 527693 AND 527705;
DELETE FROM creature_battleground WHERE guid BETWEEN 527693 AND 527705;
DELETE FROM creature_linking WHERE guid BETWEEN 527693 AND 527705;
DELETE FROM creature WHERE guid BETWEEN 527693 AND 527705;
UPDATE creature_template SET SpeedWalk = 9/2.5, SpeedRun = 25/7.0, StaticFlags1 = StaticFlags1|2147483648 WHERE entry IN (30275);
UPDATE creature SET position_x = 7072.179, position_y = -2111.2986, position_z = 817.4706, orientation = 0, spawndist = 0, MovementType = 3 WHERE guid = 527687;
UPDATE creature SET position_x = 7369.2266, position_y = -2353.661, position_z = 800.33246, orientation = 0, spawndist = 0, MovementType = 3 WHERE guid = 527688;
UPDATE creature SET position_x = 7334.587, position_y = -2389.095, position_z = 818.5355, orientation = 0, spawndist = 0, MovementType = 3 WHERE guid = 527690;
UPDATE creature SET position_x = 7033.9487, position_y = -2100.414, position_z = 836.1047, orientation = 0, spawndist = 0, MovementType = 3 WHERE guid = 527691;
UPDATE creature SET position_x = 7126.9087, position_y = -2006.859, position_z = 838.8026, orientation = 0, spawndist = 0, MovementType = 3 WHERE guid = 527692;
DELETE FROM creature_movement WHERE id BETWEEN 527687 AND 527692;
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- 527687
(527687,1,7072.179,-2111.2986,817.4706,100,0,0),
(527687,2,7064.2266,-2116.9128,817.4706,100,0,0),
(527687,3,7050.559,-2152.2283,817.4706,100,0,0),
(527687,4,7062.942,-2203.9692,813.10944,100,0,0),
(527687,5,7103.487,-2255.5532,806.3886,100,0,0),
(527687,6,7177.4814,-2288.6113,796.1102,100,0,0),
(527687,7,7275.3447,-2308.5852,793.60974,100,0,0),
(527687,8,7372.846,-2327.0647,798.72064,100,0,0),
(527687,9,7427.968,-2391.033,804.1375,100,0,0),
(527687,10,7423.436,-2447.7412,807.2206,100,0,0),
(527687,11,7355.3696,-2486.0818,804.4431,100,0,0),
(527687,12,7304.908,-2475.4497,803.77655,100,0,0),
(527687,13,7279.233,-2422.6309,808.08234,100,0,0),
(527687,14,7257.5825,-2362.9084,817.4706,100,0,0),
(527687,15,7227.192,-2262.001,817.4706,100,0,0),
(527687,16,7168.813,-2158.76,817.4706,100,0,0),
(527687,17,7143.7837,-2112.8281,817.4706,100,0,0),
(527687,18,7109.281,-2100.4453,817.4706,100,0,0),
-- 527688
(527688,1,7369.2266,-2353.661,800.33246,100,0,0),
(527688,2,7356.053,-2268.009,817.5546,100,0,0),
(527688,3,7278.459,-2252.02,801.5268,100,0,0),
(527688,4,7239.885,-2275.736,811.6657,100,0,0),
(527688,5,7239.562,-2376.111,797.77704,100,0,0),
(527688,6,7327.672,-2396.0815,794.138,100,0,0),
-- 527689
(527689,1,7167.105,-2184.2227,820.42596,100,0,0),
(527689,2,7125.1196,-2255.9905,806.5094,100,0,0),
(527689,3,7173.554,-2300.135,806.5094,100,0,0),
(527689,4,7251.454,-2287.4275,789.50946,100,0,0),
(527689,5,7213.711,-2226.1245,806.5094,100,0,0),
-- 527690
(527690,1,7334.587,-2389.095,818.5355,100,0,0),
(527690,2,7282.9697,-2459.1802,819.0909,100,0,0),
(527690,3,7309.5713,-2509.0645,792.0912,100,0,0),
(527690,4,7420.7275,-2505.1692,815.1464,100,0,0),
(527690,5,7424.327,-2393.7283,797.1465,100,0,0),
-- 527691
(527691,1,7033.9487,-2100.414,836.1047,100,0,0),
(527691,2,7059.351,-2161.0989,826.77124,100,0,0),
(527691,3,7092.9214,-2188.1702,811.4102,100,0,0),
(527691,4,7133.742,-2166.3618,794.6603,100,0,0),
(527691,5,7151.9663,-2105.4556,792.99365,100,0,0),
(527691,6,7115.6504,-2059.4797,818.32684,100,0,0),
-- 527692
(527692,1,7126.9087,-2006.859,838.8026,100,0,0),
(527692,2,7128.0044,-2079.4346,824.9972,100,0,0),
(527692,3,7123.41,-2161.6807,837.69135,100,0,0),
(527692,4,7032.643,-2110.862,816.27515,100,0,0),
(527692,5,7066.043,-1968.4662,824.2749,100,0,0);
DELETE FROM creature_spawn_data WHERE guid BETWEEN 527687 AND 527692;
INSERT INTO creature_spawn_data(Guid,Id) VALUES
(527687,20056),
(527688,20056),
(527689,20056),
(527690,20056),
(527691,20056),
(527692,20056);
-- c.30260 Stoic Mammoth
UPDATE creature_template SET SpeedWalk = 1.666669964790344238/2.5, SpeedRun = 6.666669845581054687/7.0, StaticFlags1 = StaticFlags1|2147483648 WHERE entry IN (30260);
DELETE FROM creature_addon WHERE guid BETWEEN 527605 AND 527614;
DELETE FROM creature_movement WHERE id BETWEEN 527605 AND 527614;
DELETE FROM game_event_creature WHERE guid BETWEEN 527605 AND 527614;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 527605 AND 527614;
DELETE FROM creature_battleground WHERE guid BETWEEN 527605 AND 527614;
DELETE FROM creature_linking WHERE guid BETWEEN 527605 AND 527614;
DELETE FROM creature WHERE guid BETWEEN 527605 AND 527614;
UPDATE creature SET position_x = 7073.34, position_y = -1999.3, position_z = 767.146, spawndist = 10, MovementType = 1 WHERE guid = 527596;
UPDATE creature SET position_x = 7120.94, position_y = -2052.61, position_z = 768.557, spawndist = 10, MovementType = 1 WHERE guid = 527597;
UPDATE creature SET position_x = 7041.34, position_y = -2092.43, position_z = 754.302, spawndist = 10, MovementType = 1 WHERE guid = 527598;
UPDATE creature SET position_x = 6987.34, position_y = -2157.7, position_z = 733.244, spawndist = 10, MovementType = 1 WHERE guid = 527599;
UPDATE creature SET position_x = 7067.57, position_y = -2141.37, position_z = 756.734, spawndist = 10, MovementType = 1 WHERE guid = 527600;
UPDATE creature SET position_x = 7185.49, position_y = -2278.58, position_z = 756.657, spawndist = 10, MovementType = 1 WHERE guid = 527601;
UPDATE creature SET position_x = 7273.81, position_y = -2249.32, position_z = 757.335, spawndist = 10, MovementType = 1 WHERE guid = 527602;
UPDATE creature SET position_x = 7277.52, position_y = -2345.91, position_z = 749.435, spawndist = 10, MovementType = 1 WHERE guid = 527603;
UPDATE creature SET position_x = 7346.21, position_y = -2311.99, position_z = 753.346, spawndist = 10, MovementType = 1 WHERE guid = 527604;
-- Group 1
UPDATE creature SET position_x = 7045.3154, position_y = -2075.9805, position_z = 757.0974, spawndist = 0, MovementType = 0 WHERE guid IN (527584,527585,527586,527587,527588,527589);
DELETE FROM `spawn_group` WHERE id = 33015;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33015, 'Storm Peaks - c.30260 Stoic Mammoth x6 - Group 1', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 33015;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33015,527584, 0),
(33015,527585, 1),
(33015,527586, 2),
(33015,527587, 3),
(33015,527588, 4),
(33015,527589, 5);
DELETE FROM `spawn_group_formation` WHERE id = 33015;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33015, 0, 10, 0, 33015, 2, 'Storm Peaks - c.30260 Stoic Mammoth x6 - Group 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 33015;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33015,'Storm Peaks - c.30260 Stoic Mammoth x6 - Group 1');
DELETE FROM `waypoint_path` WHERE PathId = 33015;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33015,1,7045.3154,-2075.9805,757.0974,100,0,0),
(33015,2,7032.5293,-2119.006,751.5925,100,0,0),
(33015,3,7041.746,-2137.3525,753.3003,100,0,0),
(33015,4,7075.541,-2136.591,757.9552,100,0,0),
(33015,5,7098.8843,-2107.883,759.9423,100,0,0),
(33015,6,7118.219,-2088.4917,763.28986,100,0,0),
(33015,7,7126.412,-2059.3196,770.01764,100,0,0),
(33015,8,7100.7915,-2005.084,770.51825,100,0,0),
(33015,9,7081.832,-2022.856,765.43384,100,0,0),
(33015,10,7072.343,-2050.6877,762.9625,100,0,0);
-- Group 2
UPDATE creature SET position_x = 7226.386, position_y = -2272.9915, position_z = 755.01184, spawndist = 0, MovementType = 0 WHERE guid BETWEEN 527590 AND 527595;
DELETE FROM `spawn_group` WHERE id = 33016;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33016, 'Storm Peaks - c.30260 Stoic Mammoth x6 - Group 2', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 33016;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33016,527590, 0),
(33016,527591, 1),
(33016,527592, 2),
(33016,527593, 3),
(33016,527594, 4),
(33016,527595, 5);
DELETE FROM `spawn_group_formation` WHERE id = 33016;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33016, 0, 10, 0, 33016, 2, 'Storm Peaks - c.30260 Stoic Mammoth x6 - Group 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 33016;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33016,'Storm Peaks - c.30260 Stoic Mammoth x6 - Group 1');
DELETE FROM `waypoint_path` WHERE PathId = 33016;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33016,1,7226.386,-2272.9915,755.01184,100,0,0),
(33016,2,7224.424,-2243.0508,756.6956,100,0,0),
(33016,3,7253.9673,-2250.1184,757.1303,100,0,0),
(33016,4,7294.9287,-2278.1025,756.2968,100,0,0),
(33016,5,7314.347,-2278.9158,755.8703,100,0,0),
(33016,6,7355.1943,-2300.6133,756.0338,100,0,0),
(33016,7,7391.654,-2301.1802,759.57666,100,0,0),
(33016,8,7412.644,-2315.3506,759.9457,100,0,0),
(33016,9,7416.349,-2341.8044,756.62415,100,0,0),
(33016,10,7406.0366,-2367.8313,753.0022,100,0,0),
(33016,11,7360.0645,-2389.2322,749.9177,100,0,0),
(33016,12,7335.632,-2396.6301,749.38214,100,0,0),
(33016,13,7306.1113,-2389.9875,750.969,100,0,0),
(33016,14,7289.402,-2371.415,751.95154,100,0,0),
(33016,15,7273.694,-2350.8108,749.5129,100,0,0),
(33016,16,7260.169,-2341.3933,750.3868,100,0,0),
(33016,17,7232.7563,-2333.0427,751.6676,100,0,0),
(33016,18,7220.046,-2319.6501,751.465,100,0,0),
(33016,19,7226.927,-2294.5645,752.9842,100,0,0);
DELETE FROM creature_spawn_data WHERE Guid IN (527584,527585,527586,527587,527588,527589,527590,527591,527592,527593,527594,527595);
INSERT INTO creature_spawn_data(Guid,Id) VALUES
(527584,1),(527585,1),(527586,1),(527587,1),(527588,1),(527589,1),
(527590,1),(527591,1),(527592,1),(527593,1),(527594,1),(527595,1);
-- c.30422 Roaming Jormungar
DELETE FROM creature_addon WHERE guid BETWEEN 527966 AND 527977;
DELETE FROM creature_movement WHERE id BETWEEN 527966 AND 527977;
DELETE FROM game_event_creature WHERE guid BETWEEN 527966 AND 527977;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 527966 AND 527977;
DELETE FROM creature_battleground WHERE guid BETWEEN 527966 AND 527977;
DELETE FROM creature_linking WHERE guid BETWEEN 527966 AND 527977;
DELETE FROM creature WHERE guid BETWEEN 527966 AND 527977;
UPDATE creature_template SET StaticFlags1 = StaticFlags1|2147483648 WHERE entry IN (30422);
UPDATE creature SET position_x = 7209.22, position_y = -2304.05, position_z = 754.18, spawndist = 10, MovementType = 1 WHERE guid = 527948;
UPDATE creature SET position_x = 7241.02, position_y = -2339.55, position_z = 751.315, spawndist = 10, MovementType = 1 WHERE guid = 527949;
UPDATE creature SET position_x = 7278.03, position_y = -2301.58, position_z = 752.209, spawndist = 10, MovementType = 1 WHERE guid = 527950;
UPDATE creature SET position_x = 7354.29, position_y = -2306.7, position_z = 755.049, spawndist = 10, MovementType = 1 WHERE guid = 527951;
UPDATE creature SET position_x = 7310.48, position_y = -2279.77, position_z = 755.948, spawndist = 10, MovementType = 1 WHERE guid = 527952;
UPDATE creature SET position_x = 7207.51, position_y = -2263.79, position_z = 756.25, spawndist = 10, MovementType = 1 WHERE guid = 527953;
UPDATE creature SET position_x = 7247.63, position_y = -2235.53, position_z = 758.016, spawndist = 10, MovementType = 1 WHERE guid = 527954;
UPDATE creature SET position_x = 7148.05, position_y = -2250.45, position_z = 760.089, spawndist = 10, MovementType = 1 WHERE guid = 527955;
UPDATE creature SET position_x = 7183.19, position_y = -2212.91, position_z = 759.616, spawndist = 10, MovementType = 1 WHERE guid = 527956;
UPDATE creature SET position_x = 7156.42, position_y = -2178.03, position_z = 759.555, spawndist = 10, MovementType = 1 WHERE guid = 527957;
UPDATE creature SET position_x = 7127.04, position_y = -2204.42, position_z = 758.189, spawndist = 10, MovementType = 1 WHERE guid = 527958;
UPDATE creature SET position_x = 7084.5, position_y = -2175.17, position_z = 759.623, spawndist = 10, MovementType = 1 WHERE guid = 527959;
UPDATE creature SET position_x = 7109.55, position_y = -2147.37, position_z = 759.065, spawndist = 10, MovementType = 1 WHERE guid = 527960;
UPDATE creature SET position_x = 7059.66, position_y = -2145.06, position_z = 757.009, spawndist = 10, MovementType = 1 WHERE guid = 527961;
UPDATE creature SET position_x = 7123.96, position_y = -2118.44, position_z = 760.512, spawndist = 10, MovementType = 1 WHERE guid = 527962;
UPDATE creature SET position_x = 7114.12, position_y = -2069.05, position_z = 766.02, spawndist = 10, MovementType = 1 WHERE guid = 527963;
UPDATE creature SET position_x = 7070.25, position_y = -2108.98, position_z = 756.858, spawndist = 10, MovementType = 1 WHERE guid = 527964;
UPDATE creature SET position_x = 7068.58, position_y = -2063.56, position_z = 760.119, spawndist = 10, MovementType = 1 WHERE guid = 527965;
-- c.30262 Son of Hodir & c.30320 Battlescarred Frostworg
DELETE FROM creature_addon WHERE guid IN (527617,527799,527641,527801,527798,527639,527618,527803,527622,527632,527624,527633,527629,527631);
DELETE FROM creature_movement WHERE Id IN (527617,527799,527641,527801,527798,527639,527618,527803,527622,527632,527624,527633,527629,527631);
DELETE FROM game_event_creature WHERE guid IN (527617,527799,527641,527801,527798,527639,527618,527803,527622,527632,527624,527633,527629,527631);
DELETE FROM game_event_creature_data WHERE guid IN (527617,527799,527641,527801,527798,527639,527618,527803,527622,527632,527624,527633,527629,527631);
DELETE FROM creature_battleground WHERE guid IN (527617,527799,527641,527801,527798,527639,527618,527803,527622,527632,527624,527633,527629,527631);
DELETE FROM creature_linking WHERE guid IN (527617,527799,527641,527801,527798,527639,527618,527803,527622,527632,527624,527633,527629,527631) OR master_guid
 IN (527617,527799,527641,527801,527798,527639,527618,527803,527622,527632,527624,527633,527629,527631);
DELETE FROM creature WHERE guid IN (527617,527799,527641,527801,527798,527639,527618,527803,527622,527632,527624,527633,527629,527631);
UPDATE creature_template SET SpeedWalk = 7/2.5, SpeedRun = 12/7.0, StaticFlags1 = StaticFlags1|2147483648 WHERE entry IN (30262);
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid IN (527637,527638);
UPDATE creature SET position_x = 7239.193, position_y = -2639.4714, position_z = 814.26227, orientation = 3.735004, spawndist = 0, MovementType = 2 WHERE guid = 527626;
UPDATE creature SET position_x = 7465.2397, position_y = -2663.3804, position_z = 808.3628, orientation = 0.279252678155899047, spawndist = 0, MovementType = 2 WHERE guid = 527616;
UPDATE creature SET position_x = 7345.7197, position_y = -2760.5947, position_z = 762.1991, orientation = 1.57079, spawndist = 0, MovementType = 2 WHERE guid = 527623;
UPDATE creature SET position_x = 7236.565, position_y = -2881.4512, position_z = 824.5603, orientation = 1.588249564170837402, spawndist = 0, MovementType = 2 WHERE guid = 527634;
DELETE FROM creature_movement WHERE id IN (527626,527616,527623,527634);
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- 527626
(527626,1,7239.193,-2639.4714,814.26227,3.735004663467407226,16000,0),
(527626,2,7263.692,-2629.174,815.038,100,0,0),
(527626,3,7303.066,-2634.2083,815.0028,100,0,0),
(527626,4,7351.1025,-2626.1775,815.09375,100,0,0),
(527626,5,7397.674,-2644.8682,813.09314,100,0,0),
(527626,6,7416.5635,-2664.5618,809.5985,100,0,0),
(527626,7,7386.6665,-2636.872,815.1154,3.769911050796508789,18000,0),
(527626,8,7386.6665,-2636.872,815.1154,100,0,0),
(527626,9,7354.6025,-2629.654,815.1101,100,0,0),
(527626,10,7316.1685,-2635.2573,815.07684,100,0,0),
(527626,11,7280.4214,-2633.4768,815.0483,100,0,0),
-- 527616
(527616,1,7465.2397,-2663.3804,808.3628,0.279252678155899047,9000,0),
(527616,2,7454.0703,-2680.5383,808.05115,100,0,0),
(527616,3,7450.258,-2713.951,809.0831,100,0,0),
(527616,4,7453.6895,-2753.3142,796.11273,100,0,0),
(527616,5,7455.752,-2801.3145,783.9347,100,0,0),
(527616,6,7452.413,-2845.0188,795.9038,100,0,0),
(527616,7,7431.0703,-2858.6545,800.3611,100,0,0),
(527616,8,7412.172,-2856.4521,800.3737,100,11000,0),
(527616,9,7438.8066,-2856.8801,800.246,100,0,0),
(527616,10,7454.271,-2841.4712,794.73315,100,0,0),
(527616,11,7455.7246,-2793.4707,784.77435,100,0,0),
(527616,12,7458.185,-2750.6458,797.109,100,0,0),
(527616,13,7454.888,-2708.5469,808.68835,100,0,0),
(527616,14,7461.338,-2675.8152,808.1262,100,0,0),
-- 527623
(527623,1,7345.7197,-2760.5947,762.1991,1.57079,16000,0),
(527623,2,7335.9565,-2783.6206,771.54626,100,0,0),
(527623,3,7300.729,-2792.09,775.11957,100,0,0),
(527623,4,7266.733,-2802.2104,776.97644,100,0,0),
(527623,5,7234.09,-2801.1318,778.0585,100,0,0),
(527623,6,7201.1704,-2765.837,776.9597,100,0,0),
(527623,7,7200.9263,-2751.1482,777.5102,100,11000,0),
(527623,8,7213.2354,-2780.4336,777.3644,100,0,0),
(527623,9,7234.0728,-2803.0898,777.9158,100,0,0),
(527623,10,7281.9707,-2803.3354,776.481,100,0,0),
(527623,11,7322.963,-2787.3516,773.5573,100,0,0),
(527623,12,7344.21,-2777.5752,769.33875,100,0,0),
(527623,13,7345.4478,-2762.184,763.04114,100,0,0),
-- 527634
(527634,1,7236.565,-2881.4512,824.5603,1.588249564170837402,10000,0),
(527634,2,7274.0723,-2895.8105,823.81476,100,0,0),
(527634,3,7311.51,-2899.2305,823.381,100,0,0),
(527634,4,7345.41,-2901.8203,821.72504,100,0,0),
(527634,5,7353.3936,-2889.1348,816.0541,100,0,0),
(527634,6,7352.8237,-2881.3235,811.8683,100,13000,0),
(527634,7,7349.912,-2903.916,821.25525,100,0,0),
(527634,8,7322.363,-2904.7073,823.4758,100,0,0),
(527634,9,7273.6587,-2895.4915,823.8851,100,0,0),
(527634,10,7234.1797,-2884.4414,824.6633,100,0,0);
-- Group 1
UPDATE creature SET position_x = 7275.2715, position_y = -2493.1738, position_z = 753.6688, spawndist = 0, MovementType = 0 WHERE guid IN (527621,527802);
DELETE FROM `spawn_group` WHERE id = 33017;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33017, 'Storm Peaks - c.30262 Son of Hodir & c.30320 Battlescarred Frostworg - Group 1', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 33017;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33017,527621, 0),
(33017,527802, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33017;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33017, 2, 8, 0, 33017, 2, 'Storm Peaks - c.30262 Son of Hodir & c.30320 Battlescarred Frostworg - Group 1');
DELETE FROM `waypoint_path_name` WHERE PathId = 33017;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33017,'Storm Peaks - c.30262 Son of Hodir & c.30320 Battlescarred Frostworg - Group 1');
DELETE FROM `waypoint_path` WHERE PathId = 33017;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33017,1,7275.2715,-2493.1738,753.6688,100,0,0),
(33017,2,7282.4478,-2460.5088,755.77325,100,0,0),
(33017,3,7295.972,-2445.3,755.52814,100,0,0),
(33017,4,7311.224,-2441.711,753.20355,100,0,0),
(33017,5,7331.4395,-2463.8594,750.07404,100,0,0),
(33017,6,7331.3696,-2495.3997,749.491,100,0,0),
(33017,7,7322.5645,-2524.5125,748.8143,100,0,0),
(33017,8,7278.651,-2512.9001,753.3272,100,0,0);
-- Group 2
UPDATE creature SET position_x = 7433.032, position_y = -2473.5706, position_z = 755.1515, spawndist = 0, MovementType = 0 WHERE guid IN (527636,527800);
DELETE FROM `spawn_group` WHERE id = 33018;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(33018, 'Storm Peaks - c.30262 Son of Hodir & c.30320 Battlescarred Frostworg - Group 2', 0, 0, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 33018;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(33018,527636, 0),
(33018,527800, 1);
DELETE FROM `spawn_group_formation` WHERE id = 33018;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(33018, 2, 8, 0, 33018, 2, 'Storm Peaks - c.30262 Son of Hodir & c.30320 Battlescarred Frostworg - Group 2');
DELETE FROM `waypoint_path_name` WHERE PathId = 33018;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(33018,'Storm Peaks - c.30262 Son of Hodir & c.30320 Battlescarred Frostworg - Group 2');
DELETE FROM `waypoint_path` WHERE PathId = 33018;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33018,1,7433.032,-2473.5706,755.1515,100,0,0),
(33018,2,7412.0737,-2465.8696,752.33936,100,0,0),
(33018,3,7394.764,-2479.087,749.14874,100,0,0),
(33018,4,7388.5166,-2512.6636,749.56213,100,0,0),
(33018,5,7397.3394,-2530.63,748.9968,100,0,0),
(33018,6,7423.1294,-2532.8918,750.7246,100,0,0),
(33018,7,7432.962,-2519.6892,751.5062,100,0,0);
-- c.30455 Frostworg
-- c.32571 Halvdan
-- c.30127 Njormeld
-- c.30294 Frostworg Denmother
-- c.30252 Lorekeeper Randvir
-- c.30456 Oloh
-- c.30105 King Jokkum
-- c.32540 Lillehoff
UPDATE creature_template SET StaticFlags1 = StaticFlags1|2147483648 WHERE entry IN (30455,32571,30127,30294,30252,30456,30105,32540);
-- c.32594 Calder
UPDATE creature_template SET StaticFlags1 = StaticFlags1|2147483648, StaticFlags4 = StaticFlags4|524288 WHERE entry IN (32594);
-- o.192524 Arngrim the Insatiable
UPDATE gameobject SET PhaseMask = 1+2+4 WHERE id = 192524;
