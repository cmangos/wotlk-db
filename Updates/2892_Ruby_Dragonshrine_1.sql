-- Ruby Dragonshrine - Dragonblight

-- Objects
-- Ruby Acorn 189992
UPDATE gameobject SET guid = 5710975 WHERE guid = 56772;
UPDATE gameobject SET guid = 5710976 WHERE guid = 56773;
UPDATE gameobject SET guid = 5710977 WHERE guid = 56774;
UPDATE gameobject SET guid = 5710978 WHERE guid = 56775;
UPDATE gameobject SET guid = 5710979 WHERE guid = 56776;
UPDATE gameobject SET guid = 5710980 WHERE guid = 56777;
UPDATE gameobject SET guid = 5710981 WHERE guid = 56778;
UPDATE gameobject SET guid = 5710982 WHERE guid = 56779;
UPDATE gameobject SET guid = 5710983 WHERE guid = 56780;
UPDATE gameobject SET guid = 5710984 WHERE guid = 56781;
UPDATE gameobject SET guid = 5710985 WHERE guid = 56782;
UPDATE gameobject SET guid = 5710986 WHERE guid = 56783;
UPDATE gameobject SET guid = 5710987 WHERE guid = 56784;
UPDATE gameobject SET guid = 5710988 WHERE guid = 56785;
UPDATE gameobject SET guid = 5710989 WHERE guid = 56786;
UPDATE gameobject SET guid = 5710990 WHERE guid = 56787;
UPDATE gameobject SET guid = 5710991 WHERE guid = 56788;
UPDATE gameobject SET guid = 5710992 WHERE guid = 56789;
UPDATE gameobject SET guid = 5710993 WHERE guid = 56796;
UPDATE gameobject SET guid = 5710994 WHERE guid = 87840;
UPDATE gameobject SET guid = 5710995 WHERE guid = 87841;
UPDATE gameobject SET guid = 5710996 WHERE guid = 87842;
UPDATE gameobject SET guid = 5710997 WHERE guid = 87843;
UPDATE gameobject SET guid = 5710998 WHERE guid = 87844;
UPDATE gameobject SET guid = 5710999 WHERE guid = 87845;
UPDATE gameobject SET guid = 5711000 WHERE guid = 87846;
UPDATE gameobject SET guid = 5711001 WHERE guid = 87847;
UPDATE gameobject SET guid = 5711002 WHERE guid = 88438;
UPDATE gameobject SET guid = 5711003 WHERE guid = 88439;
UPDATE gameobject SET guid = 5711004 WHERE guid = 88440;
UPDATE gameobject SET guid = 5711005 WHERE guid = 88441;
UPDATE gameobject SET guid = 5711006 WHERE guid = 88442;
UPDATE gameobject SET guid = 5711007 WHERE guid = 88443;
UPDATE gameobject SET guid = 5711008 WHERE guid = 88444;
UPDATE gameobject SET guid = 5711009 WHERE guid = 88445;
UPDATE gameobject SET guid = 5711010 WHERE guid = 88446;
UPDATE gameobject SET guid = 5711011 WHERE guid = 88447;
UPDATE gameobject SET guid = 5711012 WHERE guid = 88745;
UPDATE gameobject SET guid = 5711013 WHERE guid = 5576;
UPDATE gameobject SET guid = 5711014 WHERE guid = 5577;
UPDATE gameobject SET guid = 5711015 WHERE guid = 5653;
UPDATE gameobject SET guid = 5711016 WHERE guid = 56765;

-- Ruby Lilac 188489
UPDATE gameobject SET guid = 5711017 WHERE guid = 57775;


-- Creatures
-- Duke Vallenhal 26926
UPDATE creature SET guid = 5713741 WHERE guid = 100326;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 26926;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 5713741;
DELETE FROM creature_movement_template WHERE entry = 26926;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26926,1,3639.24,951.437,56.2695,100,0,0),
(26926,2,3645.21,934.451,56.6089,100,0,0),
(26926,3,3653.34,923.383,56.3845,100,0,0),
(26926,4,3660.4,909.494,56.1745,100,0,0),
(26926,5,3669.82,908.168,56.5565,100,0,0),
(26926,6,3678.86,914.757,56.7111,100,0,0),
(26926,7,3687.09,925.297,55.3345,100,0,0),
(26926,8,3686.94,939.254,57.3065,100,0,0),
(26926,9,3687.13,956.041,60.0416,100,0,0),
(26926,10,3687.76,959.845,60.8268,100,0,0),
(26926,11,3690.74,974.013,60.0847,100,0,0),
(26926,12,3693.38,985.994,57.843,100,0,0),
(26926,13,3695.25,996.332,58.386,100,0,0),
(26926,14,3700.21,1003.26,58.2605,100,0,0),
(26926,15,3710.79,1013.46,59.3774,100,0,0),
(26926,16,3718.37,1019.32,59.6923,100,0,0),
(26926,17,3725.49,1021.97,57.548,100,0,0),
(26926,18,3742.32,1024.7,57.4409,100,0,0),
(26926,19,3755.67,1026.87,57.7567,100,0,0),
(26926,20,3768.07,1023.26,57.6415,100,0,0),
(26926,21,3778.02,1018.35,57.4158,100,0,0),
(26926,22,3788.9,1012.45,56.726,100,0,0),
(26926,23,3794.43,1006.84,57.6605,100,0,0),
(26926,24,3809.25,988.679,56.2948,100,0,0),
(26926,25,3810.23,980.595,56.6204,100,0,0),
(26926,26,3808.12,963.941,57.8207,100,0,0),
(26926,27,3810.85,942.292,57.2364,100,0,0),
(26926,28,3820.1,932.762,57.0132,100,0,0),
(26926,29,3834.41,919.712,56.2345,100,0,0),
(26926,30,3845.36,925.307,56.0608,100,0,0),
(26926,31,3850.42,934.219,56.1567,100,0,0),
(26926,32,3858.64,964.955,56.3511,100,0,0),
(26926,33,3853.75,979.188,56.3723,100,0,0),
(26926,34,3845.03,996.113,56.1705,100,0,0),
(26926,35,3832.22,1010.51,56.2819,100,0,0),
(26926,36,3819.84,1023.21,56.4355,100,0,0),
(26926,37,3806.6,1037.4,56.1954,100,0,0),
(26926,38,3791.11,1054.43,56.1742,100,0,0),
(26926,39,3782.05,1058.12,56.1937,100,0,0),
(26926,40,3768.06,1061.88,56.5879,100,0,0),
(26926,41,3753.2,1064.4,56.2425,100,0,0),
(26926,42,3742.09,1065.69,56.3566,100,0,0),
(26926,43,3721.46,1057.94,56.327,100,0,0),
(26926,44,3710.93,1056.43,57.5285,100,0,0),
(26926,45,3692.01,1055.78,56.3807,100,0,0),
(26926,46,3675.25,1049.26,56.0651,100,0,0),
(26926,47,3668.76,1040.11,56.5363,100,0,0),
(26926,48,3660.29,1027.97,58.1983,100,0,0),
(26926,49,3649.3,1012.71,55.9764,100,0,0),
(26926,50,3641.42,996.424,56.1045,100,0,0),
(26926,51,3637.83,982.091,56.1758,100,0,0),
(26926,52,3637.02,967.357,56.0992,100,0,0);

-- Emberwyrm 26286
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 24812);
UPDATE creature SET guid = 5713742 WHERE guid = 112386;
UPDATE creature SET position_x = 3561.026, position_y = 1052.72, position_z = 193.846, orientation = 0 WHERE guid = 5713742;
UPDATE creature SET guid = 5713743 WHERE guid = 112387;
UPDATE creature SET position_x = 3624.508, position_y = 959.0601, position_z = 188.9642, orientation = 0 WHERE guid = 5713743;
UPDATE creature SET guid = 5713744 WHERE guid = 112401;
UPDATE creature SET position_x = 3927.844, position_y = 919.7001, position_z = 180.4786, orientation = 0 WHERE guid = 5713744;
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid BETWEEN 5713742 AND 5713744;
DELETE FROM creature_movement WHERE id BETWEEN 5713742 AND 5713744;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 5713742
(5713742,1,3561.026,1052.72,193.846,100,0,5),
(5713742,2,3616.556,1048.864,158.6151,100,0,0),
(5713742,3,3707.263,1058.521,97.00387,100,0,0),
(5713742,4,3802.248,1054.292,94.8094,100,0,0),
(5713742,5,3855.835,977.4484,98.47605,100,0,0),
(5713742,6,3897.761,853.7936,108.5039,100,0,0),
(5713742,7,3942.281,814.4748,135.0316,100,0,0),
(5713742,8,4033.516,824.6404,185.6237,100,0,0),
(5713742,9,4028.066,999.265,214.1514,100,0,0),
(5713742,10,3960.714,1107.381,236.5682,100,0,0),
(5713742,11,3824.119,1204.812,250.0681,100,0,0),
(5713742,12,3624.163,1211.947,250.6793,100,0,0),
(5713742,13,3544.417,1194.686,247.7626,100,0,0),
(5713742,14,3493.592,1102.799,229.4848,100,0,0),
-- 5713743
(5713743,1,3624.508,959.0601,188.9642,100,0,5),
(5713743,2,3666.302,893.2167,188.9642,100,0,0),
(5713743,3,3735.719,850.2025,188.9642,100,0,0),
(5713743,4,3814.615,883.3309,188.9642,100,0,0),
(5713743,5,3857.278,960.4184,188.9642,100,0,0),
(5713743,6,3821.545,1056.61,188.9642,100,0,0),
(5713743,7,3727.223,1074.249,188.9642,100,0,0),
(5713743,8,3638.691,1041.006,188.9642,100,0,0),
-- 5713744
(5713744,1,3927.844,919.7001,180.4786,100,0,5),
(5713744,2,3880.833,905.5926,150.8857,100,0,0),
(5713744,3,3792.72,879.4539,88.63551,100,0,0),
(5713744,4,3675.226,915.0787,78.8854,100,0,0),
(5713744,5,3646.177,1058.727,88.63551,100,0,0),
(5713744,6,3631.997,1173.256,156.7287,100,0,0),
(5713744,7,3735.469,1216.074,180.4786,100,0,0),
(5713744,8,3824.042,1245.877,180.4786,100,0,0),
(5713744,9,3954.569,1180.577,180.4786,100,0,0),
(5713744,10,3962.715,1027.074,180.4786,100,0,0);

-- Necromantic Rune Bunny 27369
UPDATE creature_template SET InhabitType = 4 WHERE entry = 27369;
UPDATE creature SET guid = 5713745 WHERE guid = 117930;
UPDATE creature SET guid = 5713746 WHERE guid = 117931;
UPDATE creature SET guid = 5713747 WHERE guid = 117932;
UPDATE creature SET guid = 5713748 WHERE guid = 117933;
UPDATE creature SET guid = 5713749 WHERE guid = 117934;
UPDATE creature SET guid = 5713750 WHERE guid = 117935;
UPDATE creature SET guid = 5713751 WHERE guid = 117953;
UPDATE creature SET guid = 5713752 WHERE guid = 117954;
UPDATE creature SET guid = 5713753 WHERE guid = 131814;
UPDATE creature_addon SET guid = 5713753 WHERE guid = 131814;
UPDATE creature SET guid = 5713754 WHERE guid = 131815;
UPDATE creature_addon SET guid = 5713754 WHERE guid = 131815;
UPDATE creature SET guid = 5713755 WHERE guid = 131816;
UPDATE creature_addon SET guid = 5713755 WHERE guid = 131816;
UPDATE creature SET guid = 5713756 WHERE guid = 131817;
UPDATE creature_addon SET guid = 5713756 WHERE guid = 131817;
UPDATE creature SET guid = 5713757 WHERE guid = 131818;
UPDATE creature_addon SET guid = 5713757 WHERE guid = 131818;
UPDATE creature SET guid = 5713758 WHERE guid = 131819;
UPDATE creature_addon SET guid = 5713758 WHERE guid = 131819;
UPDATE creature SET guid = 5713759 WHERE guid = 131820;
UPDATE creature_addon SET guid = 5713759 WHERE guid = 131820;

-- Frigid Necromancer 27539
UPDATE creature SET guid = 5713760 WHERE guid = 109747;
UPDATE creature SET guid = 5713761 WHERE guid = 109748;
UPDATE creature SET guid = 5713762 WHERE guid = 109749;
UPDATE creature SET guid = 5713763 WHERE guid = 109750;
UPDATE creature SET guid = 5713764 WHERE guid = 109751;
UPDATE creature SET guid = 5713765 WHERE guid = 109752;
UPDATE creature SET guid = 5713766 WHERE guid = 109753;
UPDATE creature SET guid = 5713767 WHERE guid = 109754;
UPDATE creature SET guid = 5713768 WHERE guid = 109755;
UPDATE creature SET guid = 5713769 WHERE guid = 109757;
UPDATE creature SET guid = 5713770 WHERE guid = 109758;
UPDATE creature SET guid = 5713771 WHERE guid = 109759;
UPDATE creature SET guid = 5713772 WHERE guid = 109760;
-- missing added
DELETE FROM creature_addon WHERE guid IN (5713773);
DELETE FROM creature_movement WHERE id IN (5713773);
DELETE FROM game_event_creature WHERE guid IN (5713773);
DELETE FROM game_event_creature_data WHERE guid IN (5713773);
DELETE FROM creature_battleground WHERE guid IN (5713773);
DELETE FROM creature_linking WHERE guid IN (5713773)
 OR master_guid IN (5713773);
DELETE FROM creature WHERE guid IN (5713773);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(5713773,27539,571,1,1,0,0,3872.09,956.646,56.9884,0.09,300,300,5,0,7952,7654,0,1);
-- Part of Frigid Necromancer EAI: 
DELETE FROM dbscripts_on_relay WHERE id = 20296;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20296,100,31,27369,10,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Frigid Necromancer EAI: search for 27369'),
(20296,200,15,49292,0,0,27369,15,1,0,0,0,0,0,0,0,0,'Part of Frigid Necromancer EAI: cast on buddy');

-- Frigid Geist 27533
UPDATE creature SET guid = 5713774 WHERE guid = 108904;
UPDATE creature SET guid = 5713775 WHERE guid = 108903;
UPDATE creature SET guid = 5713776 WHERE guid = 108898;
UPDATE creature SET guid = 5713777 WHERE guid = 108899;
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 5713778 AND 5713781;
DELETE FROM creature_movement WHERE id BETWEEN 5713778 AND 5713781;
DELETE FROM game_event_creature WHERE guid BETWEEN 5713778 AND 5713781;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 5713778 AND 5713781;
DELETE FROM creature_battleground WHERE guid BETWEEN 5713778 AND 5713781;
DELETE FROM creature_linking WHERE guid BETWEEN 5713778 AND 5713781
 OR master_guid BETWEEN 5713778 AND 5713781;
DELETE FROM creature WHERE guid BETWEEN 5713778 AND 5713781;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(5713778,27533,571,1,1,0,0,3827.83,1043.02,56.5563,3.42122,300,300,0,0,9610,0,0,0),
(5713779,27533,571,1,1,0,0,3894.41,861.997,55.6761,5.40252,300,300,0,0,9610,0,0,0),
(5713780,27533,571,1,1,0,0,3608.77,1065.12,62.5707,4.25188,300,300,0,0,9610,0,0,0),
(5713781,27533,571,1,1,0,0,3617.26,968.846,57.5622,5.49337,300,300,0,0,9610,0,0,0);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid BETWEEN 5713774 AND 5713781;
DELETE FROM creature_movement WHERE id BETWEEN 5713774 AND 5713781;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 5713774
(5713774,1,3773.3,1075.92,58.2045,100,0,0),
(5713774,2,3779.97,1068.69,57.067,100,0,0),
(5713774,3,3774.23,1060.12,56.4084,100,0,0),
(5713774,4,3762.33,1055.58,56.0216,100,0,0),
(5713774,5,3757.63,1056.81,55.9787,100,0,0),
(5713774,6,3744.3,1062.77,56.0029,100,0,0),
(5713774,7,3741.05,1068.43,56.7312,100,0,0),
(5713774,8,3750.96,1073.32,56.6255,100,0,0),
(5713774,9,3761.92,1077.39,57.1609,100,0,0),
-- 5713775
(5713775,1,3692.03,1053.09,56.07,100,0,0),
(5713775,2,3681.88,1050.07,55.9638,100,0,0),
(5713775,3,3678.18,1041.82,55.8797,100,0,0),
(5713775,4,3679.02,1030.16,56.0483,100,0,0),
(5713775,5,3677.45,1021.45,56.1888,100,0,0),
(5713775,6,3683.66,1011.44,55.4553,100,0,0),
(5713775,7,3693.46,1007.4,56.0908,100,0,0),
(5713775,8,3701.17,1016.88,56.0812,100,0,0),
(5713775,9,3704.05,1026.59,56.0273,100,0,0),
(5713775,10,3705.95,1035.84,56.024,100,0,0),
(5713775,11,3703.16,1049.29,56.1454,100,0,0),
-- 5713776
(5713776,1,3811.69,963.065,56.3557,100,0,0),
(5713776,2,3819.28,974.529,55.436,100,0,0),
(5713776,3,3829.32,977.352,55.6998,100,0,0),
(5713776,4,3845.34,975.647,55.7418,100,0,0),
(5713776,5,3849.9,964.996,55.7837,100,0,0),
(5713776,6,3851.2,953.059,56.0373,100,0,0),
(5713776,7,3848.29,937.134,55.9301,100,0,0),
(5713776,8,3840.67,932.401,55.7233,100,0,0),
(5713776,9,3828.63,932.719,56.0894,100,0,0),
(5713776,10,3818.04,937.418,56.7715,100,0,0),
(5713776,11,3810.92,948.957,57.0274,100,0,0),
-- 5713777
(5713777,1,3829.21,857.777,56.2122,100,0,0),
(5713777,2,3816.87,854.779,56.1716,100,0,0),
(5713777,3,3801.78,853.803,56.2109,100,0,0),
(5713777,4,3797.78,867.956,57.3369,100,0,0),
(5713777,5,3806.97,873.424,57.6583,100,0,0),
(5713777,6,3816.62,877.944,57.1678,100,0,0),
(5713777,7,3831.02,873.022,57.2899,100,0,0),
(5713777,8,3836.03,865.194,57.4642,100,0,0),
-- 5713778
(5713778,1,3817.69,1041.32,56.3962,100,0,0),
(5713778,2,3809.6,1046.49,56.3245,100,0,0),
(5713778,3,3809.41,1052.73,56.2312,100,0,0),
(5713778,4,3816.5,1061.55,56.8839,100,0,0),
(5713778,5,3827.32,1066.54,57.0241,100,0,0),
(5713778,6,3837.53,1066.1,58.1239,100,0,0),
(5713778,7,3840.92,1064.31,59.0985,100,0,0),
(5713778,8,3844.4,1058.32,59.6684,100,0,0),
(5713778,9,3842.63,1050.26,59.3043,100,0,0),
(5713778,10,3828.39,1043.22,56.7077,100,0,0),
-- 5713779
(5713779,1,3900.22,854.819,55.1159,100,0,0),
(5713779,2,3912.28,845.805,56.2419,100,0,0),
(5713779,3,3918.57,852.049,58.2714,100,0,0),
(5713779,4,3918.39,861.63,57.2118,100,0,0),
(5713779,5,3916.1,870.138,57.5806,100,0,0),
(5713779,6,3906.97,876.818,56.2412,100,0,0),
(5713779,7,3898.37,879.936,56.3725,100,0,0),
(5713779,8,3893.5,871.674,56.5674,100,0,0),
(5713779,9,3894.33,862.635,55.7519,100,0,0),
-- 5713780
(5713780,1,3607.92,1057.03,60.6933,100,0,0),
(5713780,2,3610.81,1053.17,59.1745,100,0,0),
(5713780,3,3606.25,1037.66,56.0179,100,0,0),
(5713780,4,3610.38,1034.91,56.1496,100,0,0),
(5713780,5,3619.41,1034.14,56.5974,100,0,0),
(5713780,6,3625.26,1040.1,58.4236,100,0,0),
(5713780,7,3630.27,1049.46,58.8455,100,0,0),
(5713780,8,3631.88,1060.15,60.4281,100,0,0),
(5713780,9,3631.19,1066.53,62.1689,100,0,0),
(5713780,10,3625.95,1072.72,64.3842,100,0,0),
(5713780,11,3615.44,1076.71,67.1291,100,0,0),
(5713780,12,3613.8,1071.29,65.2202,100,0,0),
(5713780,13,3608.63,1064.75,62.4795,100,0,0),
-- 5713781
(5713781,1,3624.55,961.223,57.2096,100,0,0),
(5713781,2,3624.91,952.367,57.3766,100,0,0),
(5713781,3,3615.03,944.353,58.9138,100,0,0),
(5713781,4,3609.61,947.167,60.1607,100,0,0),
(5713781,5,3595.58,956.219,59.3764,100,0,0),
(5713781,6,3590.52,965.336,59.2973,100,0,0),
(5713781,7,3591.11,974.663,58.3892,100,0,0),
(5713781,8,3599.86,981.227,56.5227,100,0,0),
(5713781,9,3608.42,976.479,57.2922,100,0,0),
(5713781,10,3617.03,968.982,57.5808,100,0,0);
-- Part of Frigid Geist EAI: 
DELETE FROM dbscripts_on_relay WHERE id = 20297;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20297,100,31,27530,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Frigid Geist EAI: search for 27530'),
(20297,200,37,0,0,0,27530,25,1,0,0,0,0,0,0,0,0,'Part of Frigid Geist EAI: move to buddy'),
(20297,3000,31,27530,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Frigid Geist EAI: search for 27530'),
(20297,3100,15,49334,0,0,27530,25,1,0,0,0,0,0,0,0,0,'Part of Frigid Geist EAI: cast on buddy');

-- Ruby Guardian 27725
UPDATE creature SET guid = 5713782 WHERE guid = 102732;
UPDATE creature SET guid = 5713783 WHERE guid = 102733;
UPDATE creature SET guid = 5713784 WHERE guid = 102735;
UPDATE creature SET guid = 5713785 WHERE guid = 102736;
UPDATE creature SET position_x = 3653.357910, position_y = 1064.876587, position_z = 60.841019, orientation = 1.903766, spawndist = 3, MovementType = 1 WHERE guid = 5713784;
-- missing added
DELETE FROM creature_addon WHERE guid IN (5713786);
DELETE FROM creature_movement WHERE id IN (5713786);
DELETE FROM game_event_creature WHERE guid IN (5713786);
DELETE FROM game_event_creature_data WHERE guid IN (5713786);
DELETE FROM creature_battleground WHERE guid IN (5713786);
DELETE FROM creature_linking WHERE guid IN (5713786)
 OR master_guid IN (5713786);
DELETE FROM creature WHERE guid IN (5713786);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(5713786,27725,571,1,1,0,0,3857.07,890.378,56.1679,2.54622,300,300,3,0,49700,0,0,1);
-- UPDATE
UPDATE creature SET spawndist = 3, MovementType = 1 WHERE id = 27725;

-- Frigid Ghoul 27534
-- All Removed - summoned units
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27534);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 27534);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 27534);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 27534);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 27534);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 27534)
OR master_guid IN (SELECT guid FROM creature WHERE id = 27534);
DELETE FROM creature WHERE id = 27534;
-- updates
DELETE FROM dbscripts_on_creature_death WHERE id = 27534; 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(27534,0,18,30000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Frigid Ghoul Attacker 27685
-- All Removed - summoned units
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27685);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 27685);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 27685);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 27685);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 27685);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 27685)
OR master_guid IN (SELECT guid FROM creature WHERE id = 27685);
DELETE FROM creature WHERE id = 27685;
-- updates
DELETE FROM dbscripts_on_creature_death WHERE id = 27685; 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(27685,0,18,30000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Frigid Geist Attacker 27686
-- All Removed - summoned units
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27686);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 27686);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 27686);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 27686);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 27686);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 27686)
OR master_guid IN (SELECT guid FROM creature WHERE id = 27686);
DELETE FROM creature WHERE id = 27686;

-- Frigid Necromancer Attacker 27687
-- All Removed - summoned units
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27687);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 27687);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 27687);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 27687);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 27687);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 27687)
OR master_guid IN (SELECT guid FROM creature WHERE id = 27687);
DELETE FROM creature WHERE id = 27687;

-- Ruby Keeper 27530
-- duplicates
DELETE FROM creature_addon WHERE guid IN (108329,108328);
DELETE FROM creature_movement WHERE id IN (108329,108328);
DELETE FROM game_event_creature WHERE guid IN (108329,108328);
DELETE FROM game_event_creature_data WHERE guid IN (108329,108328);
DELETE FROM creature_battleground WHERE guid IN (108329,108328);
DELETE FROM creature_linking WHERE guid IN (108329,108328)
 OR master_guid IN (108329,108328);
DELETE FROM creature WHERE guid IN (108329,108328);
-- updates
UPDATE creature_template SET InhabitType = 4, MovementType = 2 WHERE Entry = 27530;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27530);
UPDATE creature_template_addon SET  bytes1 = 50397184, auras = NULL WHERE entry = 27530;
UPDATE creature SET guid = 5713787 WHERE guid = 108203; -- not quest related
UPDATE creature SET guid = 5713788 WHERE guid = 108202;
UPDATE creature SET guid = 5713789 WHERE guid = 108311;
UPDATE creature SET guid = 5713790 WHERE guid = 108312;
UPDATE creature SET guid = 5713791 WHERE guid = 108315;
UPDATE creature SET guid = 5713792 WHERE guid = 108316;
UPDATE creature SET guid = 5713793 WHERE guid = 108317;
UPDATE creature SET guid = 5713794 WHERE guid = 108318;
UPDATE creature SET guid = 5713795 WHERE guid = 108330;
-- 5713787
UPDATE creature SET position_x = 3822.427, position_y = 809.3673, position_z = 242.6949, orientation = 0, spawndist = 0, MovementType = 0 WHERE guid = 5713787;
-- For quest -- they should all be spawned in the air (position_z = +120.5 for each) 
-- 5713788
UPDATE creature SET position_x = 3757.503, position_y = 1066.134, position_z = 56.47787, orientation = 3.246312, spawndist = 0, MovementType = 0 WHERE guid = 5713788;
-- 5713789
UPDATE creature SET position_x = 3690.582, position_y = 1034.328, position_z = 55.71211, orientation = 1.43117, spawndist = 0, MovementType = 0 WHERE guid = 5713789;
-- 5713790
UPDATE creature SET position_x = 3618.696, position_y = 1053.826, position_z = 59.02283, orientation = 4.13643, spawndist = 0, MovementType = 0 WHERE guid = 5713790;
-- 5713791
UPDATE creature SET position_x = 3606.161, position_y = 966.0469, position_z = 58.65456, orientation = 2.426008, spawndist = 0, MovementType = 0 WHERE guid = 5713791;
-- 5713792
UPDATE creature SET position_x = 3813.841, position_y = 865.6024, position_z = 57.59962, orientation = 3.001966, spawndist = 0, MovementType = 0 WHERE guid = 5713792;
-- 5713793
UPDATE creature SET position_x = 3907.349, position_y = 866.4722, position_z = 56.16987, orientation = 2.129302, spawndist = 0, MovementType = 0 WHERE guid = 5713793;
-- 5713794
UPDATE creature SET position_x = 3830.085, position_y = 958.533, position_z = 55.80537, orientation = 1.605703, spawndist = 0, MovementType = 0 WHERE guid = 5713794;
-- 5713795
UPDATE creature SET position_x = 3830.386, position_y = 1054.129, position_z = 57.23938, orientation = 0.3665192, spawndist = 0, MovementType = 0 WHERE guid = 5713795;
-- Respawntime req for quest
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE id = 27530;
-- individual addons
DELETE FROM creature_addon WHERE guid BETWEEN 5713788 AND 5713795;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(5713788,0,0,1,0,0,0,49132),
(5713789,0,0,1,0,0,0,49132),
(5713790,0,0,1,0,0,0,49132),
(5713791,0,0,1,0,0,0,49132),
(5713792,0,0,1,0,0,0,49132),
(5713793,0,0,1,0,0,0,49132),
(5713794,0,0,1,0,0,0,49132),
(5713795,0,0,1,0,0,0,49132);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (5713787);
DELETE FROM creature_movement WHERE id IN (5713787);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 5713787
(5713787,1,3822.427,809.3673,242.6949,100,0,5),
(5713787,2,3722.04,814.6143,242.6949,100,0,0),
(5713787,3,3625.626,899.8892,242.6949,100,0,0),
(5713787,4,3560.441,1028.279,242.6949,100,0,0),
(5713787,5,3600.828,1124.191,242.6949,100,0,0),
(5713787,6,3702.913,1149.518,242.6949,100,0,0),
(5713787,7,3822.642,1140.534,242.6949,100,0,0),
(5713787,8,3888.391,1066.106,242.6949,100,0,0),
(5713787,9,3932.672,915.4714,242.6949,100,0,0);
-- POOLS
DELETE FROM pool_template WHERE entry = 30155;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(30155, 5, 'Ruby Keeper - Dragonblight Pool');
DELETE FROM pool_creature WHERE pool_entry = 30155;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(5713788, 30155, 0, 'Ruby Keeper - Dragonblight Pool 1'),
(5713789, 30155, 0, 'Ruby Keeper - Dragonblight Pool 2'),
(5713790, 30155, 0, 'Ruby Keeper - Dragonblight Pool 3'),
(5713791, 30155, 0, 'Ruby Keeper - Dragonblight Pool 4'),
(5713792, 30155, 0, 'Ruby Keeper - Dragonblight Pool 5'),
(5713793, 30155, 0, 'Ruby Keeper - Dragonblight Pool 6'),
(5713794, 30155, 0, 'Ruby Keeper - Dragonblight Pool 7'),
(5713795, 30155, 0, 'Ruby Keeper - Dragonblight Pool 8');
-- for invasion event - 3 diff templates (summoned)
DELETE FROM creature_movement_template WHERE entry = 27530;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- horde side
(27530,1,1,3630.405,1323.575,177.0786,100,0,5),
(27530,1,2,3631.17,1204.418,163.9951,100,0,0),
(27530,1,3,3631.175,1131.312,141.8846,100,0,0),
(27530,1,4,3635.156,1051.536,103.3564,100,0,0),
(27530,1,5,3615.703,994.487,103.9676,100,0,0),
(27530,1,6,3533.689,946.5621,165.162,100,0,10),
(27530,1,7,3463.098,915.4396,226.6343,100,1000,1),
-- alliance side #1
(27530,2,1,3541.692,609.7336,134.6131,100,0,5),
(27530,2,2,3542.114,610.6399,134.6131,100,0,0),
(27530,2,3,3572.503,679.894,127.459,100,0,0),
(27530,2,4,3601.385,744.6108,100.2088,100,0,0),
(27530,2,5,3627.861,813.3681,91.70885,100,0,0),
(27530,2,6,3663.326,888.3453,110.6812,100,0,0),
(27530,2,7,3658.177,1007.153,193.2367,100,0,10),
(27530,2,8,3658.177,1007.153,193.2367,100,1000,1),
-- alliance side #2
(27530,3,1,3883.297,567.1484,119.0785,100,0,5),
(27530,3,2,3882.813,568.023,119.0785,100,0,0),
(27530,3,3,3848.584,619.8916,102.8175,100,0,0),
(27530,3,4,3791.415,709.6432,93.48419,100,0,0),
(27530,3,5,3764.959,761.7096,95.84534,100,0,0),
(27530,3,6,3752.61,808.6125,108.2622,100,0,0),
(27530,3,7,3743.682,894.3583,173.4842,100,0,10),
(27530,3,8,3743.682,894.3583,173.4842,100,1000,1);

-- Ceristrasz 27506
UPDATE creature SET guid = 5713796 WHERE guid = 106514;

-- Frigid Abomination Attacker 27531
-- duplicate removed
DELETE FROM creature_addon WHERE guid IN (108613);
DELETE FROM creature_movement WHERE id IN (108613);
DELETE FROM game_event_creature WHERE guid IN (108613);
DELETE FROM game_event_creature_data WHERE guid IN (108613);
DELETE FROM creature_battleground WHERE guid IN (108613);
DELETE FROM creature_linking WHERE guid IN (108613)
 OR master_guid IN (108613);
DELETE FROM creature WHERE guid IN (108613);
UPDATE creature SET guid = 5713797 WHERE guid = 108542;
UPDATE creature SET guid = 5713798 WHERE guid = 108563;
UPDATE creature SET guid = 5713799 WHERE guid = 108567;
UPDATE creature SET guid = 5713800 WHERE guid = 108576;
UPDATE creature SET guid = 5713801 WHERE guid = 108577;
UPDATE creature SET guid = 5713802 WHERE guid = 108586;

-- Dahlia Suntouch 27680
UPDATE creature SET guid = 5713803 WHERE guid = 98895;

-- Ruby Watcher 27542
-- duplicate removed
DELETE FROM creature_addon WHERE guid IN (110039);
DELETE FROM creature_movement WHERE id IN (110039);
DELETE FROM game_event_creature WHERE guid IN (110039);
DELETE FROM game_event_creature_data WHERE guid IN (110039);
DELETE FROM creature_battleground WHERE guid IN (110039);
DELETE FROM creature_linking WHERE guid IN (110039)
 OR master_guid IN (110039);
DELETE FROM creature WHERE guid IN (110039);
UPDATE creature SET guid = 5713804 WHERE guid = 109986;
UPDATE creature SET guid = 5713805 WHERE guid = 109989;
UPDATE creature SET guid = 5713806 WHERE guid = 109990;
UPDATE creature SET guid = 5713807 WHERE guid = 109994;
UPDATE creature SET guid = 5713808 WHERE guid = 109995;
UPDATE creature SET guid = 5713809 WHERE guid = 110001;
UPDATE creature SET guid = 5713810 WHERE guid = 110006;
-- positions corrected
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (5713804,5713805,5713806,5713809,5713810);
UPDATE creature SET position_x = 3660.882, position_y = 1198.308, position_z = 145.8428, orientation = 3.420845, spawndist = 0, MovementType = 0 WHERE guid = 5713807;
UPDATE creature SET position_x = 3701.725, position_y = 719.432, position_z = 99.36755, orientation = 0, spawndist = 0, MovementType = 2 WHERE guid = 5713808;
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (5713808);
DELETE FROM creature_movement WHERE id IN (5713808);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 5713808
(5713808,1,3701.725,719.432,99.36755,100,0,5),
(5713808,2,3717.633,642.5878,104.8954,100,0,0),
(5713808,3,3773.813,614.2012,104.8954,100,0,0),
(5713808,4,3876.135,617.8836,104.8954,100,0,0),
(5713808,5,3944.436,679.426,104.8954,100,0,0),
(5713808,6,3925.254,727.5613,104.8954,100,0,0),
(5713808,7,3843.278,734.116,98.78426,100,0,0),
(5713808,8,3774.924,701.8267,98.78426,100,0,0),
(5713808,9,3699.461,634.0052,98.78426,100,0,0),
(5713808,10,3600.159,616.076,98.78426,100,0,0),
(5713808,11,3552.046,664.774,98.78426,100,0,0),
(5713808,12,3580.052,730.7038,100.3121,100,0,0),
(5713808,13,3595.91,745.452,99.36755,100,0,0),
(5713808,14,3649.961,752.4506,101.5342,100,0,0);

-- Ruby Strafe Bunny 27589
UPDATE creature SET guid = 5713811 WHERE guid = 114475;
UPDATE creature SET guid = 5713812 WHERE guid = 114476;
UPDATE creature SET guid = 5713813 WHERE guid = 114477;
UPDATE creature SET guid = 5713814 WHERE guid = 114478;
UPDATE creature SET guid = 5713815 WHERE guid = 114479;
UPDATE creature SET guid = 5713816 WHERE guid = 114480;
UPDATE creature SET guid = 5713817 WHERE guid = 114481;
UPDATE creature SET guid = 5713818 WHERE guid = 114482;
UPDATE creature SET guid = 5713819 WHERE guid = 114483;
UPDATE creature SET guid = 5713820 WHERE guid = 114484;
UPDATE creature SET guid = 5713821 WHERE guid = 114496;
UPDATE creature SET guid = 5713822 WHERE guid = 114497;
UPDATE creature SET guid = 5713823 WHERE guid = 114498;
UPDATE creature SET guid = 5713824 WHERE guid = 114499;
UPDATE creature SET guid = 5713825 WHERE guid = 114500;
UPDATE creature SET guid = 5713826 WHERE guid = 114501;
UPDATE creature SET guid = 5713827 WHERE guid = 114502;
UPDATE creature SET guid = 5713828 WHERE guid = 114503;

-- Ruby Controller Bunny 27572
UPDATE creature SET guid = 5713829 WHERE guid = 112927;
UPDATE creature SET guid = 5713830 WHERE guid = 112938;
UPDATE creature SET guid = 5713831 WHERE guid = 112939;
UPDATE creature SET position_x = 3827.087, position_y = 679.385, position_z = 57.67332, orientation = 0 WHERE guid = 5713830;
UPDATE creature SET position_x = 3601.899, position_y = 784.695, position_z = 71.867, orientation = 0 WHERE guid = 5713831;

-- Horde Conscript 27749
UPDATE creature SET guid = 5713832 WHERE guid = 104996;
UPDATE creature_addon SET guid = 5713832 WHERE guid = 104996;
UPDATE creature SET guid = 5713833 WHERE guid = 104997;
UPDATE creature_addon SET guid = 5713833 WHERE guid = 104997;
UPDATE creature SET guid = 5713834 WHERE guid = 104998;
UPDATE creature_addon SET guid = 5713834 WHERE guid = 104998;
UPDATE creature SET guid = 5713835 WHERE guid = 104999;
UPDATE creature_addon SET guid = 5713835 WHERE guid = 104999;
UPDATE creature SET guid = 5713836 WHERE guid = 105000;
UPDATE creature_addon SET guid = 5713836 WHERE guid = 105000;
UPDATE creature SET guid = 5713837 WHERE guid = 105005;
UPDATE creature_addon SET guid = 5713837 WHERE guid = 105005;
UPDATE creature SET guid = 5713838 WHERE guid = 105006;
UPDATE creature_addon SET guid = 5713838 WHERE guid = 105006;
UPDATE creature SET guid = 5713839 WHERE guid = 105007;
UPDATE creature_addon SET guid = 5713839 WHERE guid = 105007;
UPDATE creature SET guid = 5713840 WHERE guid = 105011;
UPDATE creature_addon SET guid = 5713840 WHERE guid = 105011;
UPDATE creature SET guid = 5713841 WHERE guid = 105012;
UPDATE creature_addon SET guid = 5713841 WHERE guid = 105012;
UPDATE creature SET guid = 5713842 WHERE guid = 105013;
UPDATE creature_addon SET guid = 5713842 WHERE guid = 105013;
UPDATE creature SET guid = 5713843 WHERE guid = 105014;
UPDATE creature_addon SET guid = 5713843 WHERE guid = 105014;
UPDATE creature SET guid = 5713844 WHERE guid = 105024;
UPDATE creature_addon SET guid = 5713844 WHERE guid = 105024;
-- updates
UPDATE creature SET position_x = 3656.089, position_y = 1210.613, position_z = 132.6259, orientation = 4.118977, spawndist = 0, MovementType = 0 WHERE guid = 5713841;
UPDATE creature_addon SET emote = 375 WHERE guid = 5713841;
UPDATE creature SET position_x = 3635.429, position_y = 1218.942, position_z = 133.649, orientation = 4.742053, spawndist = 0, MovementType = 0 WHERE guid = 5713832;
UPDATE creature_addon SET emote = 375 WHERE guid = 5713832;
UPDATE creature SET position_x = 3648.958, position_y = 1215.581, position_z = 132.662, orientation = 4.101524, spawndist = 0, MovementType = 0 WHERE guid = 5713840;
UPDATE creature_addon SET emote = 375 WHERE guid = 5713840;
UPDATE creature SET position_x = 3632.640, position_y = 1218.806, position_z = 134.027, orientation = 4.890489, spawndist = 0, MovementType = 0 WHERE guid = 5713834;
UPDATE creature_addon SET emote = 375 WHERE guid = 5713834;
UPDATE creature SET position_x = 3638.518, position_y = 1218.783, position_z = 133.425, orientation = 4.721635, spawndist = 0, MovementType = 0 WHERE guid = 5713837;
UPDATE creature_addon SET emote = 375 WHERE guid = 5713837;
UPDATE creature SET position_x = 3651.823, position_y = 1213.823, position_z = 132.6423, orientation = 4.18879, spawndist = 0, MovementType = 0 WHERE guid = 5713844;
UPDATE creature_addon SET emote = 375 WHERE guid = 5713844;
UPDATE creature_addon SET emote = 376, auras = 49199 WHERE guid = 5713833;
UPDATE creature_addon SET emote = 376, auras = 49199 WHERE guid = 5713835;
UPDATE creature_addon SET emote = 376, auras = 49199 WHERE guid = 5713836;
UPDATE creature_addon SET emote = 376, auras = 49199 WHERE guid = 5713838;
UPDATE creature_addon SET emote = 376, auras = 49199 WHERE guid = 5713839;
UPDATE creature_addon SET emote = 376, auras = 49199 WHERE guid = 5713842;
UPDATE creature_addon SET emote = 376, auras = 49199 WHERE guid = 5713843;
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 27749;

-- Captain Drayzen 27751
UPDATE creature SET guid = 5713845 WHERE guid = 105167;
UPDATE creature SET position_x = 3625.331, position_y = 1216.245, position_z = 136.724, orientation = 5.216671, spawndist = 0, MovementType = 2 WHERE guid = 5713845;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27751);
DELETE FROM creature_template_addon WHERE entry = 27751;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27751,0,0,1,1,375,0,NULL);
DELETE FROM creature_movement_template WHERE entry = 27751;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27751,1,3625.331,1216.245,136.724,5.216671,300000,0);
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 27751;

-- Vargastrasz 27763
UPDATE creature SET guid = 5713846 WHERE guid = 106615;

-- Captain Iskandar 27567
UPDATE creature SET guid = 5713847 WHERE guid = 112523;
UPDATE creature SET position_x = 3846.83, position_y = 668.917, position_z = 58.3315, orientation = 2.19982, spawndist = 0, MovementType = 2 WHERE guid = 5713847;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27567);
DELETE FROM creature_template_addon WHERE entry = 27567;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27567,0,0,1,1,375,0,NULL);
DELETE FROM creature_movement_template WHERE entry = 27567;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27567,1,3846.83,668.917,58.3315,2.19982,180000,5),
(27567,2,3836.3,660.496,61.0288,100,0,5),
(27567,3,3829.79,655.407,64.5086,100,0,0),
(27567,4,3820.89,652.155,69.0848,100,0,0),
(27567,5,3805.25,656.698,72.2338,100,0,0),
(27567,6,3792.96,664.32,75.8649,100,0,0),
(27567,7,3781.2,670.653,77.7408,100,0,0),
(27567,8,3769.27,678.228,78.0424,100,0,0),
(27567,9,3754.7,687.914,79.8287,100,0,0),
(27567,10,3740.07,697.514,80.0418,100,0,0),
(27567,11,3727.31,705.893,80.3071,100,0,0),
(27567,12,3715.24,713.034,79.6333,100,0,0),
(27567,13,3703.91,720.039,79.1218,100,0,0),
(27567,14,3692.05,727.515,78.4087,100,0,0),
(27567,15,3677.09,736.41,78.5607,100,0,0),
(27567,16,3664.11,744.301,80.5912,100,0,0),
(27567,17,3655.19,750.379,81.8788,100,0,0),
(27567,18,3648.8,755.794,82.4001,100,0,0),
(27567,19,3639.4,765.688,73.988,100,0,0),
(27567,20,3626.5,770.476,71.144,100,0,0),
(27567,21,3613.71,771.501,71.1682,1.14863,180000,5), 
(27567,22,3624.86,770.925,71.0128,100,0,5),
(27567,23,3636.43,767.774,72.6591,100,0,0),
(27567,24,3643.49,762.673,77.0034,100,0,0),
(27567,25,3649.2,755.391,82.5413,100,0,0),
(27567,26,3657.31,748.364,81.523,100,0,0),
(27567,27,3668.06,741.781,80.0647,100,0,0),
(27567,28,3683.93,731.96,78.2127,100,0,0),
(27567,29,3701.92,721.163,78.996,100,0,0),
(27567,30,3713.88,713.877,79.5559,100,0,0),
(27567,31,3725.92,706.737,80.2424,100,0,0),
(27567,32,3737.98,698.752,80.2146,100,0,0),
(27567,33,3749.58,690.918,80.1355,100,0,0),
(27567,34,3764.16,681.231,78.6625,100,0,0),
(27567,35,3776.94,672.902,78.1736,100,0,0),
(27567,36,3789.72,665.585,76.293,100,0,0),
(27567,37,3803.5,657.447,72.7675,100,0,0),
(27567,38,3815.9,651.542,70.1569,100,0,0),
(27567,39,3827.26,651.586,66.0001,100,0,0),
(27567,40,3840.99,656.395,62.2846,100,0,0),
(27567,41,3847.89,662.571,59.8031,100,0,0);
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 27567;

-- Alliance Conscript 27564
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27564);
DELETE FROM creature_template_addon WHERE entry = 27564;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27564,0,0,1,1,0,0,NULL);
UPDATE creature SET guid = 5713849 WHERE guid = 112196;
UPDATE creature SET guid = 5713850 WHERE guid = 112197;
UPDATE creature SET guid = 5713851 WHERE guid = 112198;
UPDATE creature SET guid = 5713852 WHERE guid = 112199;
UPDATE creature SET guid = 5713853 WHERE guid = 112208;
UPDATE creature SET guid = 5713854 WHERE guid = 112209;
UPDATE creature SET guid = 5713855 WHERE guid = 112210;
UPDATE creature SET guid = 5713856 WHERE guid = 112211;
UPDATE creature SET guid = 5713857 WHERE guid = 112218;
UPDATE creature SET guid = 5713858 WHERE guid = 112219;
UPDATE creature SET guid = 5713859 WHERE guid = 112220;
UPDATE creature SET guid = 5713860 WHERE guid = 112221;
UPDATE creature SET guid = 5713861 WHERE guid = 112225;
UPDATE creature SET guid = 5713862 WHERE guid = 112226;
UPDATE creature SET guid = 5713863 WHERE guid = 112227;
UPDATE creature SET guid = 5713864 WHERE guid = 112228;
UPDATE creature SET guid = 5713865 WHERE guid = 112243;
UPDATE creature SET guid = 5713866 WHERE guid = 112244;
UPDATE creature SET guid = 5713867 WHERE guid = 112245;
UPDATE creature SET guid = 5713868 WHERE guid = 112246;
UPDATE creature SET guid = 5713869 WHERE guid = 112247;
UPDATE creature SET position_x = 3851.152, position_y = 669.787, position_z = 58.529, orientation = 2.233, spawndist = 0, MovementType = 0 WHERE guid = 5713866;
UPDATE creature SET position_x = 3851.34, position_y = 681.294, position_z = 58.9184, orientation = 2.47445, spawndist = 0, MovementType = 0 WHERE guid = 5713864;
UPDATE creature SET position_x = 3847.93, position_y = 676.914, position_z = 58.354, orientation = 2.22785, spawndist = 0, MovementType = 0 WHERE guid = 5713862;
UPDATE creature SET position_x = 3843.66, position_y = 672.349, position_z = 57.9073, orientation = 2.15681, spawndist = 0, MovementType = 0 WHERE guid = 5713860;
UPDATE creature SET position_x = 3839.6, position_y = 668.807, position_z = 58.0519, orientation = 2.24289, spawndist = 0, MovementType = 0 WHERE guid = 5713855;
UPDATE creature SET position_x = 3834.17, position_y = 665.799, position_z = 58.1659, orientation = 1.92244, spawndist = 0, MovementType = 0 WHERE guid = 5713863;
UPDATE creature SET position_x = 3844.51, position_y = 680.615, position_z = 58.3534, orientation = 2.33624, spawndist = 0, MovementType = 0 WHERE guid = 5713861;
UPDATE creature SET position_x = 3836.3, position_y = 672.903, position_z = 57.5019, orientation = 2.12508, spawndist = 0, MovementType = 0 WHERE guid = 5713869;
UPDATE creature SET position_x = 3840.75, position_y = 676.735, position_z = 57.8771, orientation = 2.15681, spawndist = 0, MovementType = 0 WHERE guid = 5713857;
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 27564;
-- individual addons
DELETE FROM creature_addon WHERE guid BETWEEN 5713849 AND 5713869;
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(5713849,0,0,2,1,376,0,49199),
(5713850,0,0,2,1,376,0,49199),
(5713851,0,0,2,1,376,0,49199),
(5713852,0,0,2,1,376,0,49199),
(5713853,0,0,2,1,376,0,49199),
(5713854,0,0,2,1,376,0,49199),
(5713855,0,0,1,1,375,0,NULL),
(5713856,0,0,2,1,376,0,49199),
(5713857,0,0,1,1,375,0,NULL),
(5713860,0,0,1,1,375,0,NULL),
(5713861,0,0,1,1,375,0,NULL),
(5713862,0,0,1,1,375,0,NULL),
(5713863,0,0,1,1,375,0,NULL),
(5713864,0,0,1,1,375,0,NULL),
(5713865,0,0,1,1,375,0,NULL),
(5713866,0,0,1,1,375,0,NULL),
(5713867,0,0,1,1,375,0,NULL),
(5713868,0,0,1,1,375,0,NULL),
(5713869,0,0,1,1,375,0,NULL);
-- links
DELETE FROM creature_linking WHERE master_guid = 5713847;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(5713857,5713847,1+2+512),
(5713864,5713847,1+2+512),
(5713862,5713847,1+2+512),
(5713860,5713847,1+2+512),
(5713855,5713847,1+2+512),
(5713863,5713847,1+2+512),
(5713861,5713847,1+2+512),
(5713869,5713847,1+2+512);
