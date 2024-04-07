-- The Fleshwerks - Icecrown

-- Scourgebeak Fleshripper 30988
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (529300,529309,529298,529316,529304,529317,529305,529311,529301,529299);
UPDATE creature SET position_x = 6485.836, position_y = 3103.5173, position_z = 681.247, spawndist = 0, MovementType = 3 WHERE guid = 529313;
UPDATE creature SET position_x = 6590.3066, position_y = 3325.47, position_z = 699.1288, spawndist = 0, MovementType = 3 WHERE guid = 529314;
UPDATE creature SET position_x = 6464.0376, position_y = 3266.623, position_z = 659.9605, spawndist = 0, MovementType = 3 WHERE guid = 529307;
UPDATE creature SET position_x = 6462.948, position_y = 3374.9631, position_z = 622.77057, spawndist = 0, MovementType = 3 WHERE guid = 529308;
UPDATE creature SET position_x = 6653.1035, position_y = 3415.26, position_z = 672.1595, spawndist = 0, MovementType = 3 WHERE guid = 529315;
UPDATE creature SET position_x = 6645.5415, position_y = 3512.4153, position_z = 678.8528, spawndist = 0, MovementType = 3 WHERE guid = 529312;
UPDATE creature SET position_x = 6701.476, position_y = 3449.434, position_z = 708.6896, spawndist = 0, MovementType = 3 WHERE guid = 529306;
UPDATE creature SET position_x = 6696.053, position_y = 3579.2717, position_z = 700.4001, spawndist = 0, MovementType = 3 WHERE guid = 529310;
UPDATE creature SET position_x = 6955.5454, position_y = 3473.9402, position_z = 728.9734, spawndist = 0, MovementType = 3 WHERE guid = 529302;
UPDATE creature SET position_x = 6805.0957, position_y = 3548.1145, position_z = 785.0337, spawndist = 0, MovementType = 3 WHERE guid = 529303;
DELETE FROM creature_movement WHERE id IN (529313,529314,529307,529308,529315,529312,529306,529310,529302,529303);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 529313
(529313,1,6485.836,3103.5173,681.247,100,0,0),
(529313,2,6445.593,3154.588,677.886,100,0,0),
(529313,3,6392.5327,3078.9246,694.2471,100,0,0),
(529313,4,6459.715,3049.952,701.608,100,0,0),
-- 529314
(529314,1,6590.3066,3325.47,699.1288,100,0,0),
(529314,2,6543.5566,3237.1467,706.62885,100,0,0),
(529314,3,6518.691,3250.3127,687.6565,100,0,0),
(529314,4,6512.2656,3334.9114,685.3231,100,0,0),
-- 529307
(529307,1,6464.0376,3266.623,659.9605,100,0,0),
(529307,2,6460.84,3388.1184,621.04565,100,0,0),
(529307,3,6418.976,3340.6982,623.68445,100,0,0),
(529307,4,6436.377,3239.8748,669.9603,100,0,0),
-- 529308
(529308,1,6462.948,3374.9631,622.77057,100,0,0),
(529308,2,6548.99,3399.224,631.3535,100,0,0),
(529308,3,6559.8057,3453.8777,619.71497,100,0,0),
(529308,4,6500.7007,3479.8965,626.15906,100,0,0),
(529308,5,6452.033,3440.0247,624.937,100,0,0),
-- 529315
(529315,1,6653.1035,3415.26,672.1595,100,0,0),
(529315,2,6717.518,3468.886,684.6567,100,0,0),
(529315,3,6771.6743,3492.3333,692.0456,100,0,0),
(529315,4,6728.5923,3518.5364,683.6566,100,0,0),
(529315,5,6627.954,3487.8691,642.6566,100,0,0),
(529315,6,6571.0273,3439.7407,634.3512,100,0,0),
-- 529312
(529312,1,6645.5415,3512.4153,678.8528,100,0,0),
(529312,2,6650.3667,3555.357,680.6584,100,0,0),
(529312,3,6602.7236,3563.045,661.18634,100,0,0),
(529312,4,6549.2866,3554.4622,642.82495,100,0,0),
(529312,5,6490.46,3498.9329,621.7417,100,0,0),
-- 529306
(529306,1,6701.476,3449.434,708.6896,100,0,0),
(529306,2,6746.9663,3410.1582,735.93945,100,0,0),
(529306,3,6697.6367,3352.6074,725.0784,100,0,0),
(529306,4,6641.4023,3330.4785,724.3008,100,0,0),
(529306,5,6637.165,3426.0947,701.43945,100,0,0),
-- 529310
(529310,1,6696.053,3579.2717,700.4001,100,0,0),
(529310,2,6744.9297,3562.1465,704.2611,100,0,0),
(529310,3,6738.1245,3521.8118,692.5392,100,0,0),
(529310,4,6653.509,3526.1404,693.2337,100,0,0),
-- 529302
(529302,1,6955.5454,3473.9402,728.9734,100,0,0),
(529302,2,6903.4297,3428.095,733.2788,100,0,0),
(529302,3,6844.5005,3464.5977,717.63995,100,0,0),
(529302,4,6857.658,3505.414,723.6399,100,0,0),
(529302,5,6908.5684,3521.6768,728.91766,100,0,0),
-- 529303
(529303,1,6805.0957,3548.1145,785.0337,100,0,0),
(529303,2,6797.807,3599.2969,776.1726,100,0,0),
(529303,3,6840.7983,3607.0996,769.2557,100,0,0),
(529303,4,6880.3687,3577.4026,779.56146,100,0,0);
DELETE FROM `creature_spawn_data` WHERE guid IN (529313,529314,529307,529308,529315,529312,529306,529310,529302,529303);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(529313,1),(529314,1),(529307,1),(529308,1),(529315,1),(529312,1),(529306,1),(529310,1),(529302,1),(529303,1);

-- First Summoning Altar 30742
-- Second Summoning Altar 30744
-- Third Summoning Altar 30745
-- Fourth Summoning Altar 30950
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (30742,30744,30745,30950));
DELETE FROM creature_template_addon WHERE entry IN (30742,30744,30745,30950);
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(30742,0,0,1,0,0,0,57836),
(30744,0,0,1,0,0,0,57836),
(30745,0,0,1,0,0,0,57836),
(30950,0,0,1,0,0,0,57836);

-- Risen Soldier 30960
UPDATE creature SET position_x = 6485.77, position_y = 3082.21, position_z = 657.506 WHERE guid = 529274;
UPDATE creature SET position_x = 6473.25, position_y = 3085.17, position_z = 657.481 WHERE guid = 529275;
UPDATE creature SET position_x = 6464.37, position_y = 3094.08, position_z = 657.481 WHERE guid = 529276;
UPDATE creature SET position_x = 6456.17, position_y = 3086.06, position_z = 657.481 WHERE guid = 529277;
UPDATE creature SET position_x = 6440.19, position_y = 3083.85, position_z = 657.481 WHERE guid = 529278;
UPDATE creature SET position_x = 6463.17, position_y = 3153.46, position_z = 657.482 WHERE guid = 529279;
UPDATE creature SET position_x = 6444.83, position_y = 3150.11, position_z = 657.481 WHERE guid = 529280;
UPDATE creature SET position_x = 6440.74, position_y = 3133.92, position_z = 657.481 WHERE guid = 529281;
UPDATE creature SET position_x = 6454.65, position_y = 3121.71, position_z = 657.481 WHERE guid = 529282;
UPDATE creature SET position_x = 6447.68, position_y = 3109.92, position_z = 657.481 WHERE guid = 529283;
UPDATE creature SET spawntimesecsmin = 180, spawntimesecsmax = 180, spawndist = 10, MovementType = 1 WHERE id = 30960;

-- Master Summoner Zarod 30746
UPDATE creature SET position_x = 6461.9243, position_y = 3113.7878, position_z = 657.6054, spawndist = 0, MovementType = 2 WHERE id = 30746;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 30746;
DELETE FROM creature_movement_template WHERE entry = 30746;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(30746,1,6461.9243,3113.7878,657.6054,100,0,0),
(30746,2,6468.4194,3077.2893,657.59314,4.844935,10000,3074601),
(30746,3,6441.673,3103.7136,657.6054,3.69326,10000,3074602),
(30746,4,6437.032,3147.3787,657.6061,2.499625,10000,3074603),
(30746,5,6465.095,3138.996,657.6061,0.1369,10000,3074604);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3074601 AND 3074604;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3074601,1000,15,58071,0,0,30745,10,1,0,0,0,0,0,0,0,0,'cast 58071'),
(3074601,7000,47,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'interrupt cast'),
(3074602,1000,15,58071,0,0,30950,10,1,0,0,0,0,0,0,0,0,'cast 58071'),
(3074602,7000,47,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'interrupt cast'),
(3074603,1000,15,58071,0,0,30744,10,1,0,0,0,0,0,0,0,0,'cast 58071'),
(3074603,7000,47,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'interrupt cast'),
(3074604,1000,15,58071,0,0,30742,10,1,0,0,0,0,0,0,0,0,'cast 58071'),
(3074604,7000,47,3,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'interrupt cast');

-- Summoned Soldier 30985
UPDATE creature_template SET MovementType = 0 WHERE Entry = 30985;

-- Skeletal Constructor 30687
-- missing npc added
DELETE FROM creature_addon WHERE guid BETWEEN 535584 AND 535586;
DELETE FROM creature_movement WHERE id BETWEEN 535584 AND 535586;
DELETE FROM game_event_creature WHERE guid BETWEEN 535584 AND 535586;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535584 AND 535586;
DELETE FROM creature_battleground WHERE guid BETWEEN 535584 AND 535586;
DELETE FROM creature_linking WHERE guid BETWEEN 535584 AND 535586;
DELETE FROM creature where guid BETWEEN 535584 AND 535586;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(535584,30687,571,1,1,6509.8267,3037.8315,651.495,5.20108,300,300,0,0),
(535585,30687,571,1,1,6531.4097,3038.4558,651.37915,4.45,300,300,0,0),
(535586,30687,571,1,1,6760.6406,3536.5789,670.5926,4.5204,300,300,0,0);

-- Festering Corpse 31130
UPDATE creature_template SET MovementType = 0 WHERE Entry = 31130;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 31130;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 31130);
DELETE FROM creature_template_addon WHERE entry = 31130;
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(31130,0,0,1,0,0,0,31261);


-- "Patches" 30993
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 30993);
DELETE FROM creature_template_addon WHERE entry = 30993;
INSERT INTO creature_template_addon (entry,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(30993,0,0,1,0,0,0,54262);

-- Spiked Ghoul 30597
-- missing npc added
DELETE FROM creature_addon WHERE guid BETWEEN 535587 AND 535592;
DELETE FROM creature_movement WHERE id BETWEEN 535587 AND 535592;
DELETE FROM game_event_creature WHERE guid BETWEEN 535587 AND 535592;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 535587 AND 535592;
DELETE FROM creature_battleground WHERE guid BETWEEN 535587 AND 535592;
DELETE FROM creature_linking WHERE guid BETWEEN 535587 AND 535592;
DELETE FROM creature where guid BETWEEN 535587 AND 535592;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(535587,30597,571,1,1,6665.9185,3203.3293,667.0747,1.559,300,300,0,4), -- linear
(535588,30597,571,1,1,6705.536,3156.4392,654.69855,5.09,300,300,0,4), -- linear
(535589,30597,571,1,1,6608.6904,3146.9536,665.563,2.51,300,300,0,4), -- linear
(535590,30597,571,1,1,6573.6113,3141.0466,666.3378,1.40,300,300,7,1),
(535591,30597,571,1,1,6583.8,3156.91,665.698,5.57901,300,300,7,1),
(535592,30597,571,1,1,6600.62,3128.91,665.858,4.10247,300,300,7,1);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 30597);
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE guid IN (528136,528167,528138);
DELETE FROM creature_movement WHERE id IN (535587,535588,535589);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 535587
(535587,1,6665.9185,3203.3293,667.0747,100,1000,0),
(535587,2,6665.9443,3191.0178,665.34875,100,0,0),
(535587,3,6665.7534,3183.962,663.5288,100,0,0),
(535587,4,6664.2163,3175.198,661.6703,100,0,0),
(535587,5,6662.778,3166.6575,660.5061,100,0,0),
(535587,6,6663.7114,3159.1152,659.2195,100,0,0),
(535587,7,6669.531,3151.288,658.1203,100,0,0),
(535587,8,6677.2397,3147.7375,657.54614,100,0,0),
(535587,9,6686.5396,3146.9927,656.3947,100,1000,0),
-- 535588
(535588,1,6705.536,3156.4392,654.69855,100,1000,0),
(535588,2,6701.7915,3164.9207,653.8926,100,0,0),
(535588,3,6693.8916,3173.3313,651.4986,100,0,0),
(535588,4,6687.3345,3177.247,649.9464 ,100,0,0),
(535588,5,6675.4116,3176.967,649.18085,100,0,0),
(535588,6,6667.42,3177.8442,649.06354 ,100,0,0),
(535588,7,6655.185,3181.8691,648.46185,100,0,0),
(535588,8,6649.385,3184.9697,648.5904,100,1000,0),
-- 535589
(535589,1 ,6608.6904,3146.9536,665.563,100,1000,0),
(535589,2 ,6614.2974,3143.0774,664.95325,100,0,0),
(535589,3 ,6623.0454,3141.24,663.84564  ,100,0,0),
(535589,4 ,6632.4043,3144.658,661.4946  ,100,0,0),
(535589,5 ,6637.199,3151.6726,660.79895 ,100,0,0),
(535589,6 ,6637.2935,3158.9136,660.61865,100,0,0),
(535589,7 ,6632.268,3164.3774,659.99255 ,100,0,0),
(535589,8 ,6627.1396,3168.013,659.0415  ,100,0,0),
(535589,9 ,6617.881,3171.5305,655.7891  ,100,0,0),
(535589,10,6607.091,3180.2976,650.6646,100,1000,0);
DELETE FROM `creature_spawn_data` WHERE guid BETWEEN 528136 AND 528173;
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(528136,80),(528137,80),(528138,80),(528139,80),(528140,80),
(528141,80),(528142,80),(528143,80),(528144,80),(528145,80),
(528146,80),(528147,80),(528148,80),(528149,80),(528150,80),
(528151,80),(528152,80),(528153,80),(528154,80),(528155,80),
(528156,80),(528157,80),(528158,80),(528159,80),(528160,80),
(528161,80),(528162,80),(528163,80),(528164,80),(528165,80),
(528166,80),(528167,80),(528168,80),(528169,80),(528170,80),
(528171,80),(528172,80),(528173,80);
DELETE FROM dbscripts_on_relay WHERE id = 20822;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20822,1000,1,418,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(20822,9000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote');

-- Invisible Stalker (Floating) 23033
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 23033 AND spawndist = 5;

-- Vile Creeper 30701
-- missing npc added
DELETE FROM creature_addon WHERE guid = 535593;
DELETE FROM creature_movement WHERE id = 535593;
DELETE FROM game_event_creature WHERE guid = 535593;
DELETE FROM game_event_creature_data WHERE guid = 535593;
DELETE FROM creature_battleground WHERE guid = 535593;
DELETE FROM creature_linking WHERE guid = 535593;
DELETE FROM creature where guid = 535593;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(535593,30701,571,1,1,6568.0376,3152.4385,665.8073100,0,300,300,0,2);
UPDATE creature SET position_x = 6521.6274, position_y = 3256.5696, position_z = 665.7054, spawndist = 0, MovementType = 2 WHERE guid = 528367;
UPDATE creature SET position_x = 6444.907, position_y = 3250.8074, position_z = 643.5123, spawndist = 0, MovementType = 2 WHERE guid = 528364;
UPDATE creature SET position_x = 6663.593, position_y = 3456.4097, position_z = 631.93713, spawndist = 0, MovementType = 2 WHERE guid = 528366;
UPDATE creature SET position_x = 6714.036, position_y = 3496.5725, position_z = 654.40594, spawndist = 0, MovementType = 2 WHERE guid = 528368;
UPDATE creature SET position_x = 6828.7046, position_y = 3518.8145, position_z = 690.65704, spawndist = 0, MovementType = 2 WHERE guid = 528369;
UPDATE creature SET position_x = 6586.785, position_y = 3339.4204, position_z = 666.06757, spawndist = 0, MovementType = 2 WHERE guid = 528360;
UPDATE creature SET position_x = 6669.0146, position_y = 3357.266, position_z = 704.2209, spawndist = 0, MovementType = 2 WHERE guid = 528363;
UPDATE creature SET position_x = 6595.616, position_y = 3272.464, position_z = 673.3765, spawndist = 0, MovementType = 2 WHERE guid = 528362;
UPDATE creature SET position_x = 6710.4023, position_y = 3156.3606, position_z = 654.69885, spawndist = 0, MovementType = 2 WHERE guid = 528361;
UPDATE creature SET position_x = 6858.4326, position_y = 3560.9402, position_z = 735.3777, spawndist = 0, MovementType = 2 WHERE guid = 528365;
DELETE FROM creature_movement WHERE id IN (528367,528364,528366,528368,528369,528360,528363,528362,528361,535593,528365);
INSERT INTO creature_movement (id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
-- 528367
(528367,1 ,6521.6274,3256.5696,665.7054,100,5000,3070102),
(528367,2 ,6529.708,3238.6235,666.6834,100,0,0),
(528367,3 ,6524.6953,3230.1824,664.78217,100,0,0),
(528367,4 ,6517.9287,3222.5247,662.04047,100,0,0),
(528367,5 ,6510.8145,3217.466,659.45807,100,0,0),
(528367,6 ,6503.2954,3214.0781,656.6712,100,0,0),
(528367,7 ,6495.4126,3215.4114,653.13873,100,0,0),
(528367,8 ,6483.2197,3220.718,647.58905,100,0,0),
(528367,9 ,6471.329,3231.421,644.2408,100,0,0),
(528367,10,6461.778,3240.3313,643.3695,100,0,0),
(528367,11,6448.119,3237.7578,643.4321,100,0,0),
(528367,12,6440.405,3241.7417,642.8098,100,5000,3070101),
(528367,13,6445.669,3237.5105,643.5315,100,0,0),
(528367,14,6458.769,3239.738,643.47034,100,0,0),
(528367,15,6476.876,3227.431,645.316,100,0,0),
(528367,16,6487.622,3218.462,649.6158,100,0,0),
(528367,17,6493.996,3213.2297,652.5839,100,0,0),
(528367,18,6503.3066,3214.7944,656.76166,100,0,0),
(528367,19,6513.344,3218.6072,660.3392,100,0,0),
(528367,20,6519.443,3225.1062,662.91254,100,0,0),
(528367,21,6527.5024,3229.9055,665.2974,100,0,0),
(528367,22,6530.3975,3242.9797,667.0689,100,0,0),
(528367,23,6528.646,3254.0974,666.3046,100,0,0),
-- 528364
(528364,1 ,6444.907,3250.8074,643.5123,100,5000,3070101),
(528364,2 ,6460.3125,3248.8594,642.369,100,0,0),
(528364,3 ,6465.982,3260.7395,639.6234,100,0,0),
(528364,4 ,6467.092,3272.052,636.39026,100,0,0),
(528364,5 ,6465.422,3289.9814,629.8107,100,0,0),
(528364,6 ,6466.8467,3306.1848,622.55774,100,0,0),
(528364,7 ,6469.1743,3320.879,615.6134,100,0,0),
(528364,8 ,6478.2676,3344.514,607.77515,100,0,0),
(528364,9 ,6486.0283,3378.2102,599.2688,100,0,0),
(528364,10,6490.6577,3404.3755,596.37225,100,0,0),
(528364,11,6506.479,3403.3577,598.64844,100,5000,3070102),
(528364,12,6495.9526,3405.436,597.7029 ,100,0,0),
(528364,13,6485.4263,3383.5144,598.2573,100,0,0),
(528364,14,6484.581,3364.299,602.40186 ,100,0,0),
(528364,15,6474.7876,3342.758,608.32153,100,0,0),
(528364,16,6468.8955,3327.6614,613.0188,100,0,0),
(528364,17,6466.5786,3309.006,621.1075 ,100,0,0),
(528364,18,6464.7695,3290.806,629.55804,100,0,0),
(528364,19,6464.5366,3265.2227,638.4275,100,0,0),
(528364,20,6463.5254,3253.4338,641.39636,100,0,0),
(528364,21,6457.9775,3250.2148,642.4675,100,0,0),
-- 528366
(528366,1 ,6663.593,3456.4097,631.93713,100,5000,3070102),
(528366,2 ,6650.3403,3468.2393,625.5342,100,0,0),
(528366,3 ,6638.587,3466.1594,619.9585,100,0,0),
(528366,4 ,6609.0854,3461.502,607.5582,100,0,0),
(528366,5 ,6573.1694,3454.177,598.6791,100,0,0),
(528366,6 ,6560.683,3456.9304,598.45953,100,0,0),
(528366,7 ,6548.4053,3462.94,597.39764,100,5000,3070101),
(528366,8 ,6581.3193,3455.8938,599.1249,100,0,0),
(528366,9 ,6600.0596,3459.0664,604.3219,100,0,0),
(528366,10,6614.2666,3463.7185,609.7538,100,0,0),
(528366,11,6628.6953,3463.5842,615.7782,100,0,0),
(528366,12,6643.5703,3468.9949,622.44446,100,0,0),
(528366,13,6651.4375,3467.5342,626.1223,100,0,0),
(528366,14,6653.8413,3462.6162,628.4752,100,0,0),
(528366,15,6659.9004,3458.7676,630.8241,100,0,0),
-- 528368
(528368,1 ,6714.036,3496.5725,654.40594,100,5000,3070101),
(528368,2 ,6721.235,3485.7727,654.3953,100,0,0),
(528368,3 ,6740.457,3487.401,661.1027,100,0,0),
(528368,4 ,6744.7915,3489.006,663.1071,100,0,0),
(528368,5 ,6753.372,3488.9739,666.4926,100,0,0),
(528368,6 ,6751.5938,3508.3445,668.6525,100,0,0),
(528368,7 ,6742.4917,3521.7485,668.93536,100,0,0),
(528368,8 ,6747.1636,3530.6816,670.7795,100,0,0),
(528368,9 ,6752.457,3539.992,670.315,100,5000,3070102),
(528368,10,6744.508,3521.6328,668.89874,100,0,0),
(528368,11,6743.901,3516.5125,668.64874,100,0,0),
(528368,12,6753.807,3504.0337,668.71454,100,0,0),
(528368,13,6752.6655,3488.2341,666.23126,100,0,0),
(528368,14,6735.0884,3488.5657,659.3178,100,0,0),
(528368,15,6725.3867,3487.0496,656.0313,100,0,0),
-- 528369
(528369,1 ,6828.7046,3518.8145,690.65704,100,5000,3070102),
(528369,2 ,6826.393,3494.1614,690.31616,100,0,0),
(528369,3 ,6823.7886,3482.3923,688.421 ,100,0,0),
(528369,4 ,6796.671,3483.7969,678.61017,100,0,0),
(528369,5 ,6783.9473,3484.801,674.9046 ,100,0,0),
(528369,6 ,6777.971,3477.6694,673.2011 ,100,0,0),
(528369,7 ,6773.741,3471.6533,673.2465 ,100,0,0),
(528369,8 ,6766.044,3462.5388,673.40857,100,0,0),
(528369,9 ,6756.368,3458.2358,675.2301 ,100,0,0),
(528369,10,6741.581,3442.585,680.0586  ,100,0,0),
(528369,11,6733.217,3435.3684,682.1853 ,100,0,0),
(528369,12,6726.587,3436.6492,682.3103,100,5000,3070101),
(528369,13,6733.1772,3434.8083,682.1853 ,100,0,0),
(528369,14,6740.955,3442.1167,680.1898  ,100,0,0),
(528369,15,6750.929,3451.8616,677.3236  ,100,0,0),
(528369,16,6760.2793,3460.8704,674.33264,100,0,0),
(528369,17,6770.6113,3467.0706,673.29584,100,0,0),
(528369,18,6774.7466,3475.465,672.9097  ,100,0,0),
(528369,19,6781.554,3482.2544,673.9183  ,100,0,0),
(528369,20,6786.8105,3484.8489,675.82477,100,0,0),
(528369,21,6802.6284,3483.5693,680.8115 ,100,0,0),
(528369,22,6822.9307,3485.5625,688.46497,100,0,0),
(528369,23,6826.4087,3497.3328,690.33655,100,0,0),
-- 528360
(528360,1 ,6586.785,3339.4204,666.06757,100,5000,3070102),
(528360,2 ,6601.7217,3346.9297,664.346 ,100,0,0),
(528360,3 ,6608.185,3358.5837,661.08124,100,0,0),
(528360,4 ,6618.5493,3374.2512,656.3553,100,0,0),
(528360,5 ,6627.964,3386.7053,654.2188 ,100,0,0),
(528360,6 ,6641.896,3393.4448,657.02924,100,0,0),
(528360,7 ,6654.8936,3402.2937,661.707 ,100,0,0),
(528360,8 ,6670.165,3408.4138,666.45935,100,0,0),
(528360,9 ,6693.487,3418.5803,676.12244,100,0,0),
(528360,10,6703.9185,3423.326,680.7808 ,100,0,0),
(528360,11,6710.826,3434.105,682.3103,100,5000,3070101),
(528360,12,6702.0835,3422.7275,680.13446,100,0,0),
(528360,13,6695.5464,3417.4385,676.7345,100,0,0),
(528360,14,6685.1675,3414.8337,672.1532,100,0,0),
(528360,15,6679.886,3411.1584,669.6915 ,100,0,0),
(528360,16,6668.728,3408.5793,666.1146 ,100,0,0),
(528360,17,6656.633,3402.9722,662.3332 ,100,0,0),
(528360,18,6625.4736,3384.859,654.18   ,100,0,0),
(528360,19,6611.247,3363.7297,659.35394,100,0,0),
(528360,20,6600.0923,3343.4978,665.02545,100,0,0),
-- 528363
(528363,1 ,6669.0146,3357.266,704.2209,100,5000,3070102),
(528363,2 ,6662.536,3340.6868,703.41174,100,0,0),
(528363,3 ,6655.369,3333.072,700.39294,100,0,0),
(528363,4 ,6645.3716,3326.9575,695.16846,100,0,0),
(528363,5 ,6635.0063,3327.2595,690.5679,100,0,0),
(528363,6 ,6607.915,3323.9548,675.7186,100,0,0),
(528363,7 ,6595.1304,3320.796,670.3226,100,0,0),
(528363,8 ,6586.6,3318.4424,668.7369,100,0,0),
(528363,9 ,6579.0903,3325.3523,666.63153,100,0,0),
(528363,10,6563.8584,3327.5786,664.9422,100,0,0),
(528363,11,6563.316,3333.8174,664.9408,100,5000,3070101),
(528363,12,6568.3545,3327.2305,665.36786,100,0,0),
(528363,13,6582.3755,3322.295,667.64264,100,0,0),
(528363,14,6588.965,3318.8848,668.9676,100,0,0),
(528363,15,6604.6055,3322.2285,673.84485,100,0,0),
(528363,16,6623.2817,3324.364,684.24255,100,0,0),
(528363,17,6643.28,3327.2498,694.20703,100,0,0),
(528363,18,6657.9663,3334.682,701.95154,100,0,0),
(528363,19,6662.879,3341.597,703.636,100,0,0),
-- 528362
(528362,1,6595.616,3272.464,673.3765,100,5000,3070101),
(528362,2,6592.3936,3265.4058,672.4535,100,0,0),
(528362,3,6595.3423,3256.186,672.26666,100,0,0),
(528362,4,6602.0024,3242.1514,670.16986,100,0,0),
(528362,5,6610.1704,3231.2935,668.6163,100,0,0),
(528362,6,6631.771,3235.4192,666.8836,100,5000,3070102),
(528362,7,6611.144,3232.0889,668.5279,100,0,0),
(528362,8,6600.6665,3240.964,670.21686,100,0,0),
(528362,9,6593.854,3260.1719,672.3592,100,0,0),
-- 528361
(528361,1 ,6710.4023,3156.3606,654.69885,100,5000,3070102),
(528361,2 ,6693.539,3159.6497,655.30206,100,0,0),
(528361,3 ,6689.816,3147.2322,655.9773 ,100,0,0),
(528361,4 ,6675.1626,3146.8613,658.0659,100,0,0),
(528361,5 ,6663.5444,3158.6323,659.1519,100,0,0),
(528361,6 ,6662.825,3177.4739,662.55255,100,0,0),
(528361,7 ,6664.9155,3195.4917,666.4738,100,0,0),
(528361,8 ,6665.518,3207.8684,667.12146,100,0,0),
(528361,9 ,6646.526,3230.5396,667.7576 ,100,0,0),
(528361,10,6650.836,3245.121,670.2075  ,100,0,0),
(528361,11,6656.9404,3254.87,670.02136 ,100,0,0),
(528361,12,6659.6157,3264.5168,668.84784,100,5000,3070101),
(528361,13,6655.7783,3252.737,670.07166,100,0,0),
(528361,14,6650.058,3237.7292,669.6628 ,100,0,0),
(528361,15,6649.892,3224.3218,667.0933 ,100,0,0),
(528361,16,6664.498,3205.8787,667.06964,100,0,0),
(528361,17,6664.3633,3187.329,664.7682 ,100,0,0),
(528361,18,6661.951,3162.7627,659.7439 ,100,0,0),
(528361,19,6673.6665,3148.934,657.8017 ,100,0,0),
(528361,20,6691.4355,3150.994,655.4231 ,100,0,0),
(528361,21,6697.5273,3159.2922,654.9988,100,0,0),
-- 535593
(535593,1 ,6568.0376,3152.4385,665.8073,100,5000,3070101),
(535593,2 ,6582.0776,3153.3984,666.04504,100,0,0),
(535593,3 ,6589.593,3158.158,665.3846 ,100,0,0),
(535593,4 ,6597.73,3156.1145,665.1808 ,100,0,0),
(535593,5 ,6611.553,3150.372,665.38275,100,0,0),
(535593,6 ,6628.145,3143.8782,662.4497,100,0,0),
(535593,7 ,6637.8296,3156.584,660.6766,100,0,0),
(535593,8 ,6635.5845,3165.267,659.9343,100,0,0),
(535593,9 ,6620.4287,3168.9707,657.3196,100,0,0),
(535593,10,6605.045,3184.4592,649.0588,100,0,0),
(535593,11,6604.294,3193.8867,647.42487,100,0,0),
(535593,12,6613.8643,3194.934,647.4378,100,0,0),
(535593,13,6630.877,3200.326,648.60187,100,5000,3070102),
(535593,14,6605.0923,3192.0735,647.64264,100,0,0),
(535593,15,6607.9346,3182.7217,650.4679,100,0,0),
(535593,16,6614.8325,3174.9966,654.345 ,100,0,0),
(535593,17,6624.7837,3170.5613,658.6769,100,0,0),
(535593,18,6636.827,3161.679,660.53467 ,100,0,0),
(535593,19,6633.6274,3146.1443,661.0326,100,0,0),
(535593,20,6623.9307,3140.8904,663.68066,100,0,0),
(535593,21,6612.397,3151.551,665.38995,100,0,0),
(535593,22,6598.808,3152.847,665.3958 ,100,0,0),
(535593,23,6590.7427,3159.4883,665.2266 ,100,0,0),
(535593,24,6584.5083,3154.13,665.8938,100,0,0),
-- 528365
(528365,1 ,6858.4326,3560.9402,735.3777,100,5000,3070102),
(528365,2 ,6856.827,3579.489,735.8996  ,100,0,0),
(528365,3 ,6875.7197,3581.703,735.97797,100,0,0),
(528365,4 ,6890.0312,3578.8423,736.6259,100,0,0),
(528365,5 ,6901.0596,3563.268,731.641  ,100,0,0),
(528365,6 ,6897.5283,3549.1204,722.2851,100,0,0),
(528365,7 ,6889.233,3531.3704,709.04913,100,0,0),
(528365,8 ,6914.3457,3507.2214,704.43896,100,0,0),
(528365,9 ,6939.5234,3503.3623,705.1787,100,5000,3070101),
(528365,10,6928.6353,3502.876,705.0099,100,0,0),
(528365,11,6913.908,3508.1,704.5443,100,0,0),
(528365,12,6900.09,3519.75,705.611,100,0,0),
(528365,13,6890.21,3534.35,709.778,100,0,0),
(528365,14,6894.026,3543.642,717.5247,100,0,0),
(528365,15,6900.2197,3556.1868,727.6842,100,0,0),
(528365,16,6898.579,3572.1084,735.486,100,0,0),
(528365,17,6884.615,3579.528,735.9714,100,0,0),
(528365,18,6867.395,3576.0676,735.8361,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3070101 AND 3070102;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3070101,1,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Run OFF'),
(3070101,1000,15,58051,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 58051'),
(3070102,1,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Run ON'),
(3070102,100,35,5,20,0,0,0,0x04,0,0,0,0,0,0,0,0,'Send Event AI 5');

-- Scourge Package 30887
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 30887);
DELETE FROM creature_movement WHERE id IN(SELECT guid FROM creature WHERE id = 30887);
DELETE FROM game_event_creature WHERE guid IN(SELECT guid FROM creature WHERE id = 30887);
DELETE FROM game_event_creature_data WHERE guid IN(SELECT guid FROM creature WHERE id = 30887);
DELETE FROM creature_battleground WHERE guid IN(SELECT guid FROM creature WHERE id = 30887);
DELETE FROM creature_linking WHERE guid IN(SELECT guid FROM creature WHERE id = 30887);
DELETE FROM creature where id = 30887;
UPDATE creature_template SET MovementType = 0 WHERE Entry = 30887;