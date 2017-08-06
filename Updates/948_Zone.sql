-- Borean Tundra

-- # Mammoth population # --

-- Duplicates
DELETE FROM creature WHERE guid IN (132642,132644);
DELETE FROM creature_addon WHERE guid IN (132642,132644);
DELETE FROM creature_movement WHERE id IN (132642,132644);
DELETE FROM game_event_creature WHERE guid IN (132642,132644);
DELETE FROM game_event_creature_data WHERE guid IN (132642,132644);
DELETE FROM creature_battleground WHERE guid IN (132642,132644);
DELETE FROM creature_linking WHERE guid IN (132642,132644) 
OR master_guid IN (132642,132644);

-- General Update for Ghostly Sage/Risen Longrunner
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id IN (24613,24614,25743);


-- Wooly Mammoth & Mammoth Calf
-- #1st pack
-- link
DELETE FROM creature_linking WHERE master_guid = 99446;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99437, 99446, 512),
(99322, 99446, 512),
(99323, 99446, 512),
(99330, 99446, 512);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 99446;
DELETE FROM creature_movement WHERE id = 99446;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(99446,1,3355.41,5482.64,62.1959,0,0,1.83115),
(99446,2,3353.72,5496.13,61.7568,0,0,1.73965),
(99446,3,3351.2,5514.08,59.1956,4000,0,1.59435),
(99446,4,3351.2,5514.08,59.1956,7000,0,4.73594),
(99446,5,3352.91,5501.35,61.0565,0,0,4.85375),
(99446,6,3354.43,5490,62.1405,0,0,4.98099),
(99446,7,3358.45,5478.24,62.3012,0,0,5.16948),
(99446,8,3365.21,5468.29,61.9615,0,0,5.31478),
(99446,9,3376.05,5459.18,61.4289,0,0,5.47971),
(99446,10,3385.99,5450.51,60.4012,0,0,5.58573),
(99446,11,3396.1,5443.22,59.2177,0,0,5.78601),
(99446,12,3407.79,5437.57,58.569,0,0,5.87633),
(99446,13,3421.64,5432.65,58.1925,0,0,6.0334),
(99446,14,3437.5,5429.84,56.0292,4000,0,6.11194),
(99446,15,3437.5,5429.84,56.0292,7000,0,2.90752),
(99446,16,3422.42,5432.62,58.1682,0,0,2.93108),
(99446,17,3406.76,5437.97,58.5849,0,0,2.76614),
(99446,18,3394.85,5443.87,59.3189,0,0,2.60907),
(99446,19,3386.03,5450.48,60.3963,0,0,2.45984),
(99446,20,3376.73,5458.67,61.3893,0,0,2.4245),
(99446,21,3366.32,5466.4,61.818,0,0,2.43628);

-- #2nd pack
UPDATE creature SET position_x = 3312.854980, position_y = 5421.614258, position_z = 50.392536, orientation = 1.448089 WHERE guid = 99436;
UPDATE creature SET position_x = 3313.507568, position_y = 5409.226074, position_z = 47.217903, orientation = 1.516557 WHERE guid = 99319;
UPDATE creature SET position_x = 3303.442871, position_y = 5420.447754, position_z = 50.718533, orientation = 1.425969 WHERE guid = 99318;
UPDATE creature SET position_x = 3323.103027, position_y = 5411.464355, position_z = 45.816177, orientation = 1.652155 WHERE guid = 99329;
-- link
DELETE FROM creature_linking WHERE master_guid = 99436;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99319, 99436, 512),
(99318, 99436, 512),
(99329, 99436, 512),
(99435, 99436, 512);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 99436;
DELETE FROM creature_movement WHERE id = 99436;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(99436,1,3314.15,5436.21,54.0925,0,0,1.52884),
(99436,2,3314.72,5448.89,56.0234,0,0,1.76917),
(99436,3,3305.27,5465.82,55.6051,0,0,1.26966),
(99436,4,3316.08,5487.14,55.7875,7000,0,0.924085),
(99436,5,3305.47,5466.43,55.617,0,0,4.89427),
(99436,6,3314.25,5453.06,56.3064,0,0,5.29874),
(99436,7,3314.17,5436.26,54.1054,0,0,4.69006),
(99436,8,3312.93,5421.65,50.3997,0,0,4.64686),
(99436,9,3313.04,5406.47,46.9976,7000,0,4.31699),
(99436,10,3312.97,5420.63,50.0966,0,0,1.58773);

-- #3rd pack
UPDATE creature SET position_x = 3446.949707, position_y = 5471.224609, position_z = 63.615177, orientation = 4.122896 WHERE guid = 99438;
-- link
DELETE FROM creature_linking WHERE master_guid = 99337;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99438, 99337, 512),
(99321, 99337, 512),
(99320, 99337, 512),
(99439, 99337, 512);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 99337;
DELETE FROM creature_movement WHERE id = 99337;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(99337,1,3440.54,5443.1,58.558,0,0,4.44506),
(99337,2,3437.08,5430,56.1391,0,0,4.47255),
(99337,3,3433.71,5416.02,53.0712,0,0,4.47648),
(99337,4,3426.75,5403.7,51.1537,0,0,4.1741),
(99337,5,3419.86,5392.82,49.3788,4000,0,4.14661),
(99337,6,3422.6,5405.71,52.1647,0,0,1.14246),
(99337,7,3427.61,5417.25,54.4404,0,0,1.30347),
(99337,8,3434.55,5431.24,56.8751,0,0,1.30347),
(99337,9,3438.18,5444.29,59.105,0,0,1.18959),
(99337,10,3442.05,5456.04,60.8831,0,0,1.27206),
(99337,11,3445.25,5474.99,64.4302,5000,0,1.50767),
(99337,12,3442.99,5454.33,60.2642,0,0,4.5668);

-- #4th pack
UPDATE creature SET position_x = 3290.442139, position_y = 5256.209961, position_z = 36.960926, orientation = 4.232094 WHERE guid = 132648;
UPDATE creature SET position_x = 3299.816162, position_y = 5245.011230, position_z = 33.718220, orientation = 4.342045 WHERE guid = 132643;
UPDATE creature SET position_x = 3291.328369, position_y = 5264.104980, position_z = 37.508038, orientation = 4.326983 WHERE guid = 132645;
UPDATE creature SET position_x = 3297.608398, position_y = 5255.916504, position_z = 36.404037, orientation = 4.268078 WHERE guid = 132646;
-- link
DELETE FROM creature_linking WHERE master_guid = 132647;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(132648, 132647, 512),
(132643, 132647, 512),
(132645, 132647, 512),
(132646, 132647, 512);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 132647;
DELETE FROM creature_movement WHERE id = 132647;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(132647,1,3284.47,5221.61,29.062,7000,0,4.30342),
(132647,2,3288.9,5237.62,32.3279,0,0,1.21288),
(132647,3,3294.92,5253.71,36.3697,0,0,1.23251),
(132647,4,3298.82,5264.8,37.0027,0,0,1.23251),
(132647,5,3312,5280.32,37.3117,0,0,0.879083),
(132647,6,3318.16,5289.42,36.7201,7000,0,1.02831),
(132647,7,3305.52,5275,37.4896,0,0,4.06387),
(132647,8,3299,5265.46,37.0469,0,0,4.25629),
(132647,9,3295.24,5254.08,36.3968,0,0,4.38588),
(132647,10,3291.21,5242.9,33.5387,0,0,4.41337);

-- #5th pack
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid IN (132642,132644,76134,76135,76136);
DELETE FROM creature_addon WHERE guid IN (132642,132644,76134,76135,76136);
DELETE FROM creature_movement WHERE id IN (132642,132644,76134,76135,76136);
DELETE FROM game_event_creature WHERE guid IN (132642,132644,76134,76135,76136);
DELETE FROM game_event_creature_data WHERE guid IN (132642,132644,76134,76135,76136);
DELETE FROM creature_battleground WHERE guid IN (132642,132644,76134,76135,76136);
DELETE FROM creature_linking WHERE guid IN (132642,132644,76134,76135,76136) 
OR master_guid IN (132642,132644,76134,76135,76136);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(132642,24614,571,1,1,0,0,3347.85,5252.56,33.3986,2.46326,300,300,0,0,7984,0,0,0),
(132644,24614,571,1,1,0,0,3344.52,5244.36,32.9194,2.31404,300,300,0,0,7984,0,0,0),
(76134,24613,571,1,1,0,0,3356.28,5253.62,32.5931,2.40681,300,300,0,0,6986,0,0,0),
(76135,24613,571,1,1,0,0,3354.01,5245.86,31.464,2.55603,300,300,0,0,6986,0,0,0),
(76136,24613,571,1,1,0,0,3355.36,5259.24,33.7221,2.42644,300,300,0,0,6986,0,0,0);
-- link
DELETE FROM creature_linking WHERE master_guid = 132642;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(132644, 132642, 512),
(76134, 132642, 512),
(76135, 132642, 512),
(76136, 132642, 512);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 132642;
DELETE FROM creature_movement WHERE id = 132642;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(132642,1,3323.66,5275.92,36.6438,8000,0,2.37539),
(132642,2,3317.77,5268.33,37.2006,0,0,5.20461),
(132642,3,3326.53,5255.62,35.8141,0,0,5.24388),
(132642,4,3346.15,5241.97,32.2198,6000,0,5.474),
(132642,5,3348.3,5251.96,33.2477,4000,0,2.30755);

-- #6th pack
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid IN (76137,76138);
DELETE FROM creature_addon WHERE guid IN (76137,76138);
DELETE FROM creature_movement WHERE id IN (76137,76138);
DELETE FROM game_event_creature WHERE guid IN (76137,76138);
DELETE FROM game_event_creature_data WHERE guid IN (76137,76138);
DELETE FROM creature_battleground WHERE guid IN (76137,76138);
DELETE FROM creature_linking WHERE guid IN (76137,76138) 
OR master_guid IN (76137,76138);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(76137,24614,571,1,1,0,0,3494.2,5278.31,37.1951,2.845651,300,300,0,0,7984,0,0,0),
(76138,24613,571,1,1,0,0,3501.99,5292.39,37.6542,2.845651,300,300,0,0,6986,0,0,0);
-- Updates
UPDATE creature SET position_x = 3491.398438, position_y = 5288.337402, position_z = 38.775990, orientation = 2.845651 WHERE guid = 99399;
UPDATE creature SET position_x = 3496.564941, position_y = 5291.679688, position_z = 38.548782, orientation = 2.845651 WHERE guid = 99324;
UPDATE creature SET position_x = 3492.867676, position_y = 5282.929688, position_z = 38.111263, orientation = 2.845651 WHERE guid = 99325;
-- link
DELETE FROM creature_linking WHERE master_guid = 99399;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(76137, 99399, 512),
(76138, 99399, 512),
(99324, 99399, 512),
(99325, 99399, 512);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 99399;
DELETE FROM creature_movement WHERE id = 99399;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(99399,1,3464.57,5297.5,39.3655,0,0,2.83298),
(99399,2,3448.46,5302.42,39.1038,0,0,2.8644),
(99399,3,3432.88,5305.59,39.3394,0,0,3.30422),
(99399,4,3417.2,5299.92,39.2885,0,0,3.56976),
(99399,5,3400.21,5293.6,37.9672,0,0,3.12758),
(99399,6,3383.96,5292.94,36.0183,0,0,3.18713),
(99399,7,3366.33,5292.08,35.5044,0,0,3.21462),
(99399,8,3348.7,5289.93,35.8082,0,0,3.27745),
(99399,9,3334.57,5287.94,36.1742,0,0,3.28923),
(99399,10,3323.61,5286.52,36.4138,0,0,3.95054),
(99399,11,3316.68,5275.81,37.1652,0,0,4.14139),
(99399,12,3311.5,5266.64,37.3239,7000,0,5.33518),
(99399,13,3322.56,5256,36.1642,0,0,5.52367),
(99399,14,3335.17,5242.82,33.4806,0,0,6.14413),
(99399,15,3356.86,5240.08,30.3717,0,0,6.16376),
(99399,16,3373,5237.43,29.3201,0,0,5.77499),
(99399,17,3393.44,5227.96,28.2206,0,0,5.86139),
(99399,18,3410.19,5219.4,27.0941,0,0,5.86924),
(99399,19,3430.04,5215.39,27.2169,0,0,6.08814),
(99399,20,3444.38,5213.11,27.0647,0,0,0.633551),
(99399,21,3458.61,5222.94,29.5757,0,0,0.598208),
(99399,22,3468.72,5231.31,31.2682,0,0,0.841682),
(99399,23,3481.9,5248.49,33.1292,0,0,0.920221),
(99399,24,3490.77,5261.08,34.0316,0,0,0.94771),
(99399,25,3505.57,5283.95,36.9874,5000,0,1.04981),
(99399,26,3505.62,5284.11,36.9849,6000,0,2.86016),
(99399,27,3492.66,5288.1,38.7233,0,0,2.8523);

-- #7th pack
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid IN (76139,76140);
DELETE FROM creature_addon WHERE guid IN (76139,76140);
DELETE FROM creature_movement WHERE id IN (76139,76140);
DELETE FROM game_event_creature WHERE guid IN (76139,76140);
DELETE FROM game_event_creature_data WHERE guid IN (76139,76140);
DELETE FROM creature_battleground WHERE guid IN (76139,76140);
DELETE FROM creature_linking WHERE guid IN (76139,76140) 
OR master_guid IN (76139,76140);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(76139,24614,571,1,1,0,0,3517.95,5194.7,26.6381,2.03035,300,300,0,0,7984,0,0,0),
(76140,24613,571,1,1,0,0,3507.8,5182.86,25.0692,2.1246,300,300,0,0,6986,0,0,0);
-- link
DELETE FROM creature_linking WHERE master_guid = 99428;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(76139, 99428, 512),
(76140, 99428, 512),
(99284, 99428, 512),
(99286, 99428, 512);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 99428;
DELETE FROM creature_movement WHERE id = 99428;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(99428,1,3502.42,5210.48,29.7484,0,0,2.68694),
(99428,2,3482.88,5221.27,29.4072,0,0,3.56659),
(99428,3,3479.75,5216.64,28.9575,0,0,4.84522),
(99428,4,3486.58,5197.2,25.356,0,0,5.6581),
(99428,5,3498.16,5190.01,23.8259,0,0,5.75131),
(99428,6,3517.57,5181.28,26.146,0,0,5.96729),
(99428,7,3508.84,5201.63,27.1826,0,0,1.99317);

-- #8th pack
UPDATE creature SET position_x = 3556.194336, position_y = 5300.108887, position_z = 25.658138, orientation = 4.095829, spawndist = 20, MovementType = 1 WHERE guid = 99291;
UPDATE creature SET position_x = 3560.591309, position_y = 5300.992676, position_z = 25.644283, orientation = 4.095829 WHERE guid = 99404;
UPDATE creature SET position_x = 3559.760254, position_y = 5320.842773, position_z = 28.473114, orientation = 4.095829 WHERE guid = 99290;
UPDATE creature SET position_x = 3575.353760, position_y = 5298.835938, position_z = 27.006128, orientation = 4.095829 WHERE guid = 99289;
UPDATE creature SET position_x = 3572.097168, position_y = 5313.208984, position_z = 24.927942, orientation = 4.095829 WHERE guid = 99405;
-- link
DELETE FROM creature_linking WHERE master_guid = 99291;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99404, 99291, 512),
(99290, 99291, 512),
(99289, 99291, 512),
(99405, 99291, 512);

-- #9th pack
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid = 99279;
UPDATE creature SET position_x = 3605.516846, position_y = 5169.319824, position_z = 24.788919, orientation = 2.207976 WHERE guid = 99395;
-- link
DELETE FROM creature_linking WHERE master_guid = 99279;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99395, 99279, 512),
(99280, 99279, 512),
(99278, 99279, 512),
(99396, 99279, 512);

-- #10th pack
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid IN (76141,76142);
DELETE FROM creature_addon WHERE guid IN (76141,76142);
DELETE FROM creature_movement WHERE id IN (76141,76142);
DELETE FROM game_event_creature WHERE guid IN (76141,76142);
DELETE FROM game_event_creature_data WHERE guid IN (76141,76142);
DELETE FROM creature_battleground WHERE guid IN (76141,76142);
DELETE FROM creature_linking WHERE guid IN (76141,76142) 
OR master_guid IN (76141,76142);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(76141,24614,571,1,1,0,0,3607.18,5351.31,32.5002,4.88383,300,300,0,0,7984,0,0,0),
(76142,24613,571,1,1,0,0,3618.08,5357.74,32.9544,4.98594,300,300,0,0,6986,0,0,0);
-- Updates
UPDATE creature SET position_x = 3620.815430, position_y = 5345.232910, position_z = 31.161631, orientation = 5.106447, spawndist = 20, MovementType = 1 WHERE guid = 99402;
UPDATE creature SET position_x = 3624.704346, position_y = 5353.135742, position_z = 30.425549, orientation = 5.115529 WHERE guid = 99288;
UPDATE creature SET position_x = 3612.791016, position_y = 5348.088379, position_z = 31.368145, orientation = 4.942738 WHERE guid = 99287;
-- link
DELETE FROM creature_linking WHERE master_guid = 99402;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(76141, 99402, 512),
(76142, 99402, 512),
(99288, 99402, 512),
(99287, 99402, 512);

-- #11th pack
-- link
DELETE FROM creature_linking WHERE master_guid = 99400;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99269, 99400, 512),
(99270, 99400, 512),
(99271, 99400, 512),
(99401, 99400, 512);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 99400;
DELETE FROM creature_movement WHERE id = 99400;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(99400,1,3564.23,5168.67,24.1703,0,0,5.18506),
(99400,2,3578.57,5155.52,26.8328,0,0,5.76865),
(99400,3,3588.21,5149.81,26.6804,0,0,5.92572),
(99400,4,3603.19,5143.34,25.3514,0,0,6.05138),
(99400,5,3614.99,5142.3,25.2901,5000,0,0.782145), 
(99400,6,3621.57,5151.81,24.7932,0,0,1.07274),
(99400,7,3624.81,5164.92,23.3881,0,0,1.4301),
(99400,8,3623.93,5183.55,25.9642,0,0,1.23375),
(99400,9,3633.32,5197.7,27.4831,0,0,1.00442),
(99400,10,3643.56,5214.5,25.2531,0,0,1.11831),
(99400,11,3648.87,5225.06,27.1473,0,0,1.18114),
(99400,12,3654.52,5243.29,34.8028,0,0,1.31466),
(99400,13,3657.39,5256.42,35.4252,0,0,1.35393),
(99400,14,3662.33,5272.02,32.6061,0,0,0.953373),
(99400,15,3673.95,5287.64,30.3126,0,0,1.14972),
(99400,16,3681.76,5304.54,29.1921,0,0,1.16543),
(99400,17,3681.01,5321.19,31.0947,0,0,1.65238),
(99400,18,3676.27,5341.93,34.3579,0,0,2.11576),
(99400,19,3668.45,5355.92,34.5374,0,0,2.21394),
(99400,20,3655.22,5369.38,30.6504,0,0,2.67575),
(99400,21,3643.85,5372.3,31.3169,0,0,3.12736),
(99400,22,3629.72,5369.87,31.9994,0,0,3.57503),
(99400,23,3611.6,5360.65,35.3033,0,0,3.70855),
(99400,24,3605.57,5356.78,34.9914,0,0,3.68905),
(99400,25,3596.26,5350.69,30.3898,0,0,4.28988),
(99400,26,3594.08,5342.5,26.7106,0,0,4.46659),
(99400,27,3594.01,5324.33,25.4818,0,0,4.58833),
(99400,28,3591.56,5309.2,24.8682,0,0,4.38805),
(99400,29,3582.89,5287.97,28.0454,0,0,4.13672),
(99400,30,3564.85,5266,28.322,0,0,4.15243),
(99400,31,3558.73,5243.25,31.6162,0,0,4.40376),
(99400,32,3559.53,5224.28,27.8975,0,0,4.81608),
(99400,33,3560.5,5206.71,28.3843,0,0,4.71791),
(99400,34,3560.99,5186.13,25.1785,0,0,4.76503);

-- #12th pack
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid IN (76143,76144);
DELETE FROM creature_addon WHERE guid IN (76143,76144);
DELETE FROM creature_movement WHERE id IN (76143,76144);
DELETE FROM game_event_creature WHERE guid IN (76143,76144);
DELETE FROM game_event_creature_data WHERE guid IN (76143,76144);
DELETE FROM creature_battleground WHERE guid IN (76143,76144);
DELETE FROM creature_linking WHERE guid IN (76143,76144) 
OR master_guid IN (76143,76144);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(76143,24614,571,1,1,0,0,3759.81,5352.92,33.9267,2.18368,300,300,0,0,7984,0,0,0),
(76144,24614,571,1,1,0,0,3758.55,5339.29,33.3402,2.18368,300,300,0,0,7984,0,0,0);
-- Updates
UPDATE creature SET position_x = 3747.565186, position_y = 5339.312012, position_z = 33.500114, orientation = 2.18368 WHERE guid = 99248;
UPDATE creature SET position_x = 3739.254150, position_y = 5339.706055, position_z = 32.648834, orientation = 2.18368 WHERE guid = 99247;
UPDATE creature SET position_x = 3750.543213, position_y = 5351.831055, position_z = 35.006310, orientation = 2.18368, spawndist = 20, MovementType = 1 WHERE guid = 99249;
-- link
DELETE FROM creature_linking WHERE master_guid = 99249;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(76143, 99249, 512),
(76144, 99249, 512),
(99248, 99249, 512),
(99247, 99249, 512);

-- #13th pack
UPDATE creature SET position_x = 3760.119873, position_y = 5441.246094, position_z = 35.293194, orientation = 2.886397 WHERE guid = 99403;
UPDATE creature SET position_x = 3767.573486, position_y = 5447.284180, position_z = 34.570835, orientation = 2.886397 WHERE guid = 99373;
UPDATE creature SET position_x = 3758.151367, position_y = 5432.300781, position_z = 37.447468, orientation = 2.886397 WHERE guid = 99314;
UPDATE creature SET position_x = 3771.019287, position_y = 5429.827148, position_z = 37.224148, orientation = 2.886397 WHERE guid = 99251;
UPDATE creature SET position_x = 3774.085693, position_y = 5440.809082, position_z = 34.942890, orientation = 2.886397 WHERE guid = 99252;
-- link
DELETE FROM creature_linking WHERE master_guid = 99403;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99373, 99403, 512),
(99314, 99403, 512),
(99251, 99403, 512),
(99252, 99403, 512);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 99403;
DELETE FROM creature_movement WHERE id = 99403;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(99403,1,3729.71,5444.21,39.0483,0,0,3.19123),
(99403,2,3709.87,5442.41,41.444,0,0,3.23836),
(99403,3,3695.21,5441.83,39.1774,0,0,2.45532),
(99403,4,3685.93,5452.94,37.0688,0,0,1.81522),
(99403,5,3684.47,5467.28,38.3312,0,0,1.58352),
(99403,6,3685.99,5474.82,38.9889,7000,0,0.327672),
(99403,7,3700.35,5478.7,37.6693,0,0,0.236566),
(99403,8,3717.88,5483.23,40.0499,0,0,0.252283),
(99403,9,3733.27,5486.29,42.4436,0,0,6.19068),
(99403,10,3759.61,5483.98,41.4569,0,0,5.95506),
(99403,11,3776.28,5476.78,38.8707,0,0,6.10036),
(99403,12,3788.83,5474.16,39.9255,0,0,6.18675),
(99403,13,3817.42,5474.07,40.302,0,0,0.237356),
(99403,14,3831.85,5479.04,40.2099,0,0,0.370873),
(99403,15,3847.01,5486.51,39.6396,0,0,0.469048),
(99403,16,3859.63,5493.71,37.2607,0,0,0.516172),
(99403,17,3874.26,5499.41,37.7086,7000,0,4.5217),
(99403,18,3868.34,5485.57,37.1859,0,0,3.90517),
(99403,19,3855.36,5474.41,37.7742,0,0,3.67348),
(99403,20,3836.42,5461.74,37.9095,0,0,3.54389),
(99403,21,3816.58,5452.08,37.422,0,0,3.56745),
(99403,22,3797.85,5444.1,34.7769,0,0,3.21952),
(99403,23,3777.54,5441.75,34.5937,0,0,3.23523),
(99403,24,3760.55,5441.19,35.3034,0,0,3.14491);

-- #14th pack
UPDATE creature SET position_x = 3826.036621, position_y = 5677.179688, position_z = 56.762512, orientation = 4.854394 WHERE guid = 99434;
UPDATE creature SET position_x = 3828.901611, position_y = 5689.182617, position_z = 57.884144, orientation = 4.854394 WHERE guid = 99266;
UPDATE creature SET position_x = 3823.497803, position_y = 5686.767578, position_z = 56.634869, orientation = 4.854394 WHERE guid = 99245;
UPDATE creature SET position_x = 3833.879150, position_y = 5685.586426, position_z = 58.801586, orientation = 4.854394 WHERE guid = 99263;
UPDATE creature SET position_x = 3827.311279, position_y = 5698.515137, position_z = 57.850029, orientation = 4.854394 WHERE guid = 99432;
-- link
DELETE FROM creature_linking WHERE master_guid = 99434;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99266, 99434, 512),
(99245, 99434, 512),
(99263, 99434, 512),
(99432, 99434, 512);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 99434;
DELETE FROM creature_movement WHERE id = 99434;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(99434,1,3830.93,5652.05,54.8878,0,0,4.78763),
(99434,2,3830.03,5632.54,52.7993,0,0,4.64626),
(99434,3,3828.8,5609.96,51.4617,0,0,4.68395),
(99434,4,3828.33,5590.27,48.7777,0,0,4.69652),
(99434,5,3828,5569.27,46.2221,0,0,4.69652),
(99434,6,3828.02,5555.05,44.2728,0,0,4.6651),
(99434,7,3827.53,5540.41,41.9444,0,0,4.66118),
(99434,8,3823.98,5520.4,39.9715,0,0,4.44912),
(99434,9,3820.34,5509.08,38.1194,0,0,4.34702),
(99434,10,3816.17,5498.17,39.7717,0,0,4.34702),
(99434,11,3807.84,5485.84,41.9482,0,0,3.86008),
(99434,12,3800.34,5478.99,41.8418,0,0,3.64802),
(99434,13,3786.61,5473.23,39.4304,0,0,3.25925),
(99434,14,3772.25,5473.57,37.6379,0,0,2.95294),
(99434,15,3756.52,5480.23,40.9303,0,0,2.85084),
(99434,16,3738.97,5484.02,42.2814,0,0,3.12573),
(99434,17,3721.23,5479.84,40.1543,0,0,3.46738),
(99434,18,3705.08,5470.06,37.876,0,0,3.77761),
(99434,19,3692,5460.06,37.6088,0,0,3.91898),
(99434,20,3685.11,5449.99,37.0129,0,0,4.62584),
(99434,21,3694.12,5440.74,39.1785,0,0,5.84713),
(99434,22,3709.19,5441.23,41.491,0,0,6.21626),
(99434,23,3729.87,5439.55,39.7768,0,0,6.20841),
(99434,24,3747.12,5438.26,37.3902,0,0,6.11102),
(99434,25,3762.44,5436.84,36.14180,0,0,6.2249),
(99434,26,3784.01,5437.43,34.7861,0,0,0.19304),
(99434,27,3803.38,5445.94,35.3492,0,0,0.76638),
(99434,28,3814.89,5460.28,38.5137,0,0,1.53607),
(99434,29,3815.54,5478.83,40.677,0,0,1.53607),
(99434,30,3816.01,5497.28,39.9259,0,0,1.37899),
(99434,31,3823.83,5519.53,39.792,0,0,1.35543),
(99434,32,3827.26,5540.63,41.9904,0,0,1.44968),
(99434,33,3827.98,5558.73,44.7463,0,0,1.55963),
(99434,34,3828.16,5574.56,46.9652,0,0,1.55963),
(99434,35,3828.37,5593.23,49.3006,0,0,1.55963),
(99434,36,3828.52,5607.23,51.2636,0,0,1.55963),
(99434,37,3829.23,5625.19,52.3633,0,0,1.55963),
(99434,38,3830.66,5640.62,53.614,0,0,1.51251),
(99434,39,3828.94,5655.06,54.9242,0,0,1.75206),
(99434,40,3826.19,5676.5,56.7338,0,0,1.73635),
(99434,41,3823.58,5692.01,56.5266,0,0,1.97589),
(99434,42,3819.09,5701.28,55.6802,0,0,2.20366),
(99434,43,3809.49,5714.1,57.3582,0,0,2.27827),
(99434,44,3798.89,5726.22,59.9919,0,0,2.37645),
(99434,45,3787.15,5743.29,63.2803,5000,0,1.99946),
(99434,46,3787.56,5742.38,63.0895,7000,0,5.2133),
(99434,47,3798.84,5727.25,60.3126,0,0,5.37296),
(99434,48,3808.47,5715.67,57.7856,0,0,5.43579),
(99434,49,3818.62,5702.49,55.8011,0,0,5.15305),
(99434,50,3823.47,5692.42,56.4882,0,0,4.98026),
(99434,51,3826.04,5677.59,56.8023,0,0,4.88601);

-- #15th pack
UPDATE creature SET position_x = 3701.470947, position_y = 5286.306641, position_z = 30.776676, orientation = 4.546715 WHERE guid = 99431;
UPDATE creature SET position_x = 3695.213867, position_y = 5290.067383, position_z = 30.200800, orientation = 4.546715 WHERE guid = 99276;
UPDATE creature SET position_x = 3698.454590, position_y = 5288.478027, position_z = 30.407513, orientation = 4.546715 WHERE guid = 99275;
UPDATE creature SET position_x = 3705.332275, position_y = 5288.896973, position_z = 31.069166, orientation = 4.546715 WHERE guid = 99277;
UPDATE creature SET position_x = 3709.336182, position_y = 5290.604004, position_z = 31.056059, orientation = 4.546715 WHERE guid = 99394;
-- link
DELETE FROM creature_linking WHERE master_guid = 99431;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99276, 99431, 512),
(99275, 99431, 512),
(99277, 99431, 512),
(99394, 99431, 512);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 99431;
DELETE FROM creature_movement WHERE id = 99431;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(99431,1,3695,5260.97,32.5743,0,0,4.76498),
(99431,2,3708.96,5247.33,33.6076,0,0,6.0648),
(99431,3,3725.4,5245.59,31.9098,0,0,0.0800638),
(99431,4,3741.19,5249.99,32.4407,0,0,0.523814),
(99431,5,3752.25,5259.19,33.9842,0,0,0.818338),
(99431,6,3762.58,5270.8,32.7184,0,0,0.782995),
(99431,7,3771.52,5279.87,28.9421,0,0,0.80263),
(99431,8,3784.19,5292.19,27.8227,0,0,0.782995),
(99431,9,3796.79,5304.86,27.6465,0,0,0.786922),
(99431,10,3809.52,5317.36,24.7234,0,0,0.653405),
(99431,11,3821.95,5328.25,26.4422,0,0,0.708382),
(99431,12,3836.69,5340.75,26.8917,0,0,0.653405),
(99431,13,3848.93,5349.22,26.8818,5000,0,0.665186),
(99431,14,3844.37,5370.27,24.0094,7000,0,2.95462),
(99431,15,3819.29,5375.08,24.8927,0,0,3.16275),
(99431,16,3799.45,5371.37,26.343,0,0,3.36696),
(99431,17,3787.28,5364.14,26.742,0,0,3.77144),
(99431,18,3778.08,5356.75,29.5422,0,0,3.81071),
(99431,19,3763.87,5345.29,33.0183,0,0,3.70468),
(99431,20,3748.12,5336.41,33.0052,0,0,3.44942),
(99431,21,3728.25,5330.05,30.8508,0,0,3.51618),
(99431,22,3714.79,5322.34,31.1009,0,0,3.84605),
(99431,23,3707.52,5305.14,30.6021,0,0,4.3919),
(99431,24,3701.53,5286.72,30.7715,0,0,4.50185);

-- #16th pack
UPDATE creature SET position_x = 3873.551514, position_y = 5381.809082, position_z = 25.003279, orientation = 0.833933, spawndist = 20, MovementType = 1 WHERE guid = 99430;
UPDATE creature SET position_x = 3873.241455, position_y = 5369.691406, position_z = 24.179047, orientation = 0.833933 WHERE guid = 99306;
UPDATE creature SET position_x = 3860.827148, position_y = 5365.026855, position_z = 25.198977, orientation = 0.833933 WHERE guid = 99267;
UPDATE creature SET position_x = 3861.668457, position_y = 5376.406250, position_z = 24.515318, orientation = 0.833933 WHERE guid = 99268;
-- link
DELETE FROM creature_linking WHERE master_guid = 99430;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99306, 99430, 512),
(99267, 99430, 512),
(99268, 99430, 512),
(99429, 99430, 512);

-- #17th pack
UPDATE creature SET position_x = 3799.080322, position_y = 5557.166992, position_z = 42.229549, orientation = 5.489880 WHERE guid = 99387;
UPDATE creature SET position_x = 3791.265381, position_y = 5561.517578, position_z = 43.238762, orientation = 5.489880 WHERE guid = 99265;
UPDATE creature SET position_x = 3800.381104, position_y = 5567.056152, position_z = 44.916443, orientation = 5.489880 WHERE guid = 99264;
UPDATE creature SET position_x = 3791.629883, position_y = 5555.256348, position_z = 42.692245, orientation = 5.489880 WHERE guid = 99250;
UPDATE creature SET position_x = 3794.327637, position_y = 5568.916016, position_z = 45.248581, orientation = 5.489880 WHERE guid = 99388;
-- link
DELETE FROM creature_linking WHERE master_guid = 99387;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99265, 99387, 512),
(99264, 99387, 512),
(99250, 99387, 512),
(99388, 99387, 512);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 99387;
DELETE FROM creature_movement WHERE id = 99387;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(99387,1,3809.56,5548.92,42.8691,0,0,5.62153),
(99387,2,3819.74,5538.99,42.4098,0,0,5.17386),
(99387,3,3822.83,5526.22,40.9045,0,0,4.77331),
(99387,4,3824.13,5513.1,38.1325,5000,0,4.67514),
(99387,5,3825.01,5524.83,40.5825,0,0,1.86734),
(99387,6,3821.12,5540.04,42.4445,0,0,2.16579),
(99387,7,3813,5552.31,43.7353,0,0,2.32287),
(99387,8,3802.01,5560.71,43.3418,0,0,2.63303),
(99387,9,3788.68,5568.7,45.3741,0,0,2.60162),
(99387,10,3776.37,5575.07,47.7261,7000,0,2.71943),
(99387,11,3788.24,5568.75,45.4068,0,0,5.75892),
(99387,12,3797.89,5558.68,42.4224,0,0,5.42906);

-- #18th pack
UPDATE creature SET position_x = 3789.663818, position_y = 5691.174805, position_z = 49.743206, orientation = 1.737670, spawndist = 20, MovementType = 1 WHERE guid = 99386;
UPDATE creature SET position_x = 3784.961914, position_y = 5687.525879, position_z = 51.289627, orientation = 1.737670 WHERE guid = 99433;
UPDATE creature SET position_x = 3794.344727, position_y = 5689.013672, position_z = 49.112640, orientation = 1.737670 WHERE guid = 99317;
UPDATE creature SET position_x = 3790.252930, position_y = 5683.074219, position_z = 49.677608, orientation = 1.737670 WHERE guid = 99315;
UPDATE creature SET position_x = 3781.417480, position_y = 5685.693848, position_z = 52.629223, orientation = 1.737670 WHERE guid = 99316;
-- link
DELETE FROM creature_linking WHERE master_guid = 99386;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99433, 99386, 512),
(99317, 99386, 512),
(99315, 99386, 512),
(99316, 99386, 512);

-- #19th pack
UPDATE creature SET position_x = 3666.066895, position_y = 5144.164551, position_z = 28.325199, orientation = 1.989604, spawndist = 20, MovementType = 1 WHERE guid = 99397;
UPDATE creature SET position_x = 3671.442871, position_y = 5133.257324, position_z = 28.665047, orientation = 1.989604 WHERE guid = 99398;
UPDATE creature SET position_x = 3663.537842, position_y = 5127.740723, position_z = 26.885309, orientation = 1.989604 WHERE guid = 99281;
UPDATE creature SET position_x = 3673.819580, position_y = 5140.096191, position_z = 29.617664, orientation = 1.989604 WHERE guid = 99282;
UPDATE creature SET position_x = 3662.001221, position_y = 5137.541016, position_z = 27.021383, orientation = 1.989604 WHERE guid = 99283;
-- link
DELETE FROM creature_linking WHERE master_guid = 99397;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99398, 99397, 512),
(99281, 99397, 512),
(99282, 99397, 512),
(99283, 99397, 512);

-- #20th pack
UPDATE creature SET position_x = 3756.656250, position_y = 5191.222656, position_z = 29.013905, orientation = 1.173167 WHERE guid = 99392;
UPDATE creature SET position_x = 3763.157227, position_y = 5212.133301, position_z = 25.607769, orientation = 1.173167, spawndist = 20, MovementType = 1 WHERE guid = 99393;
UPDATE creature SET orientation = 1.173167 WHERE guid = 99274;
UPDATE creature SET orientation = 1.173167 WHERE guid = 99272;
UPDATE creature SET orientation = 1.173167 WHERE guid = 99273;
-- link
DELETE FROM creature_linking WHERE master_guid = 99393;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99274, 99393, 512),
(99272, 99393, 512),
(99273, 99393, 512),
(99392, 99393, 512);

-- #21th pack
UPDATE creature SET position_x = 4197.259766, position_y = 5920.673340, position_z = 57.472153, orientation = 3.960905, spawndist = 20, MovementType = 1 WHERE guid = 99376;
UPDATE creature SET position_x = 4195.588379, position_y = 5930.838379, position_z = 57.724613, orientation = 3.960905 WHERE guid = 99389;
UPDATE creature SET position_x = 4203.856445, position_y = 5931.590820, position_z = 54.996532, orientation = 3.960905 WHERE guid = 99254;
UPDATE creature SET position_x = 4209.882324, position_y = 5922.113770, position_z = 54.888191, orientation = 3.960905 WHERE guid = 99244;
UPDATE creature SET position_x = 4201.176270, position_y = 5919.831543, position_z = 56.614128, orientation = 3.960905 WHERE guid = 99253;
-- link
DELETE FROM creature_linking WHERE master_guid = 99376;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99389, 99376, 512),
(99254, 99376, 512),
(99244, 99376, 512),
(99253, 99376, 512);

-- #22th pack
UPDATE creature SET position_x = 4126.108887, position_y = 5827.521973, position_z = 68.283241, orientation = 3.179459 WHERE guid = 99262;
UPDATE creature SET position_x = 4142.546387, position_y = 5827.452148, position_z = 65.914513, orientation = 3.179459 WHERE guid = 99390;
UPDATE creature SET orientation = 3.179459 WHERE guid = 99261;
UPDATE creature SET orientation = 3.179459 WHERE guid = 99385;
UPDATE creature SET orientation = 3.179459 WHERE guid = 99260;
-- link
DELETE FROM creature_linking WHERE master_guid = 99262;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99390, 99262, 512),
(99261, 99262, 512),
(99385, 99262, 512),
(99260, 99262, 512);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 99262;
DELETE FROM creature_movement WHERE id = 99262;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(99262,1,4112.12,5832.51,70.1647,0,0,2.36754),
(99262,2,4101.75,5847.9,69.3964,0,0,1.88924),
(99262,3,4104.47,5864.99,67.4503,0,0,1.22165),
(99262,4,4116.18,5881.85,67.67,0,0,0.7347),
(99262,5,4132.91,5894.94,65.8552,0,0,0.404833),
(99262,6,4151.02,5897.56,64.7086,0,0,0.000352796),
(99262,7,4169.99,5894.36,61.9123,0,0,5.68271),
(99262,8,4183.14,5881.25,61.1506,0,0,5.39212),
(99262,9,4188.77,5864.56,62.3279,0,0,4.76144),
(99262,10,4189.39,5850.18,64.1912,0,0,4.6507),
(99262,11,4187.19,5831.85,64.0281,0,0,4.20302),
(99262,12,4174.26,5814.65,64.2113,0,0,4.00668),
(99262,13,4158.79,5817.19,64.6567,0,0,3.21342),
(99262,14,4141.34,5822.07,66.5601,0,0,2.8168),
(99262,15,4127.03,5827.14,68.1687,0,0,2.80894);

-- #23th pack
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 99444;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 99445;
UPDATE creature SET position_x = 4073.135498, position_y = 5557.909668, position_z = 38.075863, orientation = 3.316874 WHERE guid = 99335;
UPDATE creature SET position_x = 4071.575928, position_y = 5549.905273, position_z = 38.802967, orientation = 3.328012 WHERE guid = 99333;
UPDATE creature SET position_x = 4065.164795, position_y = 5539.612305, position_z = 38.201271, orientation = 3.532216 WHERE guid = 99334;
-- link
DELETE FROM creature_linking WHERE master_guid = 99445;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99444, 99445, 512),
(99335, 99445, 512),
(99333, 99445, 512),
(99334, 99445, 512);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 99445;
DELETE FROM creature_movement WHERE id = 99445;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(99445,1,4032.55,5537.1,39.7815,4000,0,3.48002),
(99445,2,4043.85,5541.47,40.4867,0,0,0.369842),
(99445,3,4062.87,5546.18,39.4921,0,0,0.185273),
(99445,4,4081.6,5548.78,37.3957,0,0,0.0478282),
(99445,5,4107.59,5551.48,33.2914,0,0,6.22891),
(99445,6,4123.13,5547.36,28.3742,4000,0,5.88335),
(99445,7,4121.84,5547.64,28.5605,6000,0,2.87135),
(99445,8,4108.18,5551.44,33.1026,0,0,2.9224),
(99445,9,4094.65,5549.72,35.7709,0,0,3.20514),
(99445,10,4077.79,5548.24,37.8226,0,0,3.25619),
(99445,11,4063.11,5546.13,39.4683,0,0,3.37007);

-- #24th pack
UPDATE creature SET position_x = 3995.541504, position_y = 5528.400879, position_z = 34.647770, orientation = 2.985221, spawndist = 20, MovementType = 1 WHERE guid = 99440;

-- #25th pack
UPDATE creature SET position_x = 4139.346191, position_y = 5470.591797, position_z = 27.852236, orientation = 1.127634 WHERE guid = 99442;
UPDATE creature SET position_x = 4127.828125, position_y = 5470.780762, position_z = 26.379641, orientation = 1.127634 WHERE guid = 99443;
UPDATE creature SET position_x = 4137.274902, position_y = 5460.644043, position_z = 27.391279, orientation = 1.127634 WHERE guid = 99313;
UPDATE creature SET position_x = 4123.165039, position_y = 5462.341309, position_z = 25.205521, orientation = 1.127634 WHERE guid = 99331;
UPDATE creature SET position_x = 4145.892090, position_y = 5464.243652, position_z = 27.709064, orientation = 1.127634 WHERE guid = 99332;
-- link
DELETE FROM creature_linking WHERE master_guid = 99442;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99443, 99442, 512),
(99332, 99442, 512),
(99313, 99442, 512),
(99331, 99442, 512);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 99442;
DELETE FROM creature_movement WHERE id = 99442;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(99442,1,4139.07,5503.27,25.8583,0,0,1.31222),
(99442,2,4148.67,5523.15,26.2753,0,0,1.12373),
(99442,3,4153.1,5538.91,25.5995,4000,0,1.31222),
(99442,4,4143.24,5532.67,25.7092,0,0,3.69826),
(99442,5,4133.94,5519.58,26.8082,0,0,4.12395),
(99442,6,4128.38,5508.62,27.8771,0,0,4.31244),
(99442,7,4123.93,5489.9,27.5592,0,0,4.49701),
(99442,8,4120.01,5471.52,25.4411,0,0,4.43024),
(99442,9,4115.99,5456.1,25.3124,0,0,4.53627),
(99442,10,4116.67,5444.45,26.914,0,0,4.95645),
(99442,11,4121.47,5431.23,24.9009,0,0,5.06248),
(99442,12,4125.46,5416.59,25.2755,0,0,4.9486),
(99442,13,4136.64,5409.5,26.9093,4000,0,5.47874),
(99442,14,4138.45,5417.05,26.8032,0,0,1.61458),
(99442,15,4136.12,5434.78,25.7226,0,0,1.74417),
(99442,16,4134.35,5447.43,27.6778,0,0,1.46143),
(99442,17,4135.59,5459.99,27.0651,0,0,1.33969),
(99442,18,4138.87,5469.75,27.837,0,0,1.13941);

-- #26th pack
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid IN (76145,76146,76147);
DELETE FROM creature_addon WHERE guid IN (76145,76146,76147);
DELETE FROM creature_movement WHERE id IN (76145,76146,76147);
DELETE FROM game_event_creature WHERE guid IN (76145,76146,76147);
DELETE FROM game_event_creature_data WHERE guid IN (76145,76146,76147);
DELETE FROM creature_battleground WHERE guid IN (76145,76146,76147);
DELETE FROM creature_linking WHERE guid IN (76145,76146,76147) 
OR master_guid IN (76145,76146,76147);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(76145,24613,571,1,1,0,0,4062.58,5383.04,29.112,1.9204,300,300,0,0,6986,0,0,0),
(76146,24613,571,1,1,0,0,4051.15,5378.51,28.4807,1.88113,300,300,0,0,6986,0,0,0),
(76147,24613,571,1,1,0,0,4057.3,5373.49,28.7892,2.03035,300,300,0,0,6986,0,0,0);
-- Updates
UPDATE creature SET position_x = 4056.164795, position_y = 5384.602539, position_z = 28.795010, orientation = 1.947887, spawndist = 20, MovementType = 1 WHERE guid = 99441;
UPDATE creature SET position_x = 4064.567383, position_y = 5377.266113, position_z = 29.004316, orientation = 1.998939 WHERE guid = 99447;
-- link
DELETE FROM creature_linking WHERE master_guid = 99441;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99447, 99441, 512),
(76145, 99441, 512),
(76146, 99441, 512),
(76147, 99441, 512);

-- #27th pack
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid IN (76148,76149,76150,76151,76152);
DELETE FROM creature_addon WHERE guid IN (76148,76149,76150,76151,76152);
DELETE FROM creature_movement WHERE id IN (76148,76149,76150,76151,76152);
DELETE FROM game_event_creature WHERE guid IN (76148,76149,76150,76151,76152);
DELETE FROM game_event_creature_data WHERE guid IN (76148,76149,76150,76151,76152);
DELETE FROM creature_battleground WHERE guid IN (76148,76149,76150,76151,76152);
DELETE FROM creature_linking WHERE guid IN (76148,76149,76150,76151,76152) 
OR master_guid IN (76148,76149,76150,76151,76152);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(76148,24614,571,1,1,0,0,4233.97,5666,55.8248,4.05267,25,25,0,0,7984,0,0,0),
(76149,24614,571,1,1,0,0,4245.57,5665.85,54.1873,4.21367,25,25,0,0,7984,0,0,0),
(76150,24613,571,1,1,0,0,4240.9,5675.9,56.8051,4.11157,25,25,0,0,6986,0,0,0),
(76151,24613,571,1,1,0,0,4232.44,5676.55,56.9216,4.06052,25,25,0,0,6986,0,0,0),
(76152,24613,571,1,1,0,0,4240.3,5659.73,55.4137,3.96627,25,25,0,0,6986,0,0,0);
-- link
DELETE FROM creature_linking WHERE master_guid = 76148;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(76149, 76148, 512),
(76150, 76148, 512),
(76151, 76148, 512),
(76152, 76148, 512);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 76148;
DELETE FROM creature_movement WHERE id = 76148;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(76148,1,4226.59,5653.14,51.5406,0,0,4.08486),
(76148,2,4218.99,5645.75,50.3747,0,0,3.72436),
(76148,3,4209.81,5642.25,50.0318,0,0,3.49424),
(76148,4,4199.23,5637.64,48.2042,4000,0,3.50995),
(76148,5,4221.38,5634.01,51.1297,0,0,0.662874),
(76148,6,4231.84,5640.77,53.5903,0,0,0.61365),
(76148,7,4239.67,5649.96,55.4138,0,0,1.08096),
(76148,8,4241.93,5659.54,55.3398,0,0,1.32444),
(76148,9,4248.39,5674.02,54.0324,0,0,1.1006),
(76148,10,4255.53,5690.44,56.4901,4000,0,1.21055),
(76148,11,4247.83,5685.19,57.4691,0,0,3.97358),
(76148,12,4241.7,5677.52,57.1678,0,0,4.09924),
(76148,13,4234.13,5666.29,55.8503,0,0,4.13851);

-- #28th pack 
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid IN (76153,76154);
DELETE FROM creature_addon WHERE guid IN (76153,76154);
DELETE FROM creature_movement WHERE id IN (76153,76154);
DELETE FROM game_event_creature WHERE guid IN (76153,76154);
DELETE FROM game_event_creature_data WHERE guid IN (76153,76154);
DELETE FROM creature_battleground WHERE guid IN (76153,76154);
DELETE FROM creature_linking WHERE guid IN (76153,76154) 
OR master_guid IN (76153,76154);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(76153,24614,571,1,1,0,0,3335.85,5369.46,41.4744,3.32132,300,300,0,0,7984,0,0,0),
(76154,24614,571,1,1,0,0,3323.7,5361.31,42.0795,3.53731,300,300,0,0,7984,0,0,0);
-- Updates
UPDATE creature SET position_x = 3326.506592, position_y = 5352.477051, position_z = 41.276859, orientation = 3.486178 WHERE guid = 99336;
-- link
DELETE FROM creature_linking WHERE master_guid = 76153;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(99336, 76153, 512),
(99327, 76153, 512),
(99326, 76153, 512),
(76154, 76153, 512);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 76153;
DELETE FROM creature_movement WHERE id = 76153;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(76153,1,3305.3,5357.92,42.0558,0,0,3.46654),
(76153,2,3290.7,5354.04,42.7841,4000,0,1.53682),
(76153,3,3301.87,5375.34,43.4852,0,0,1.33261),
(76153,4,3301.79,5385.85,45.9233,5000,0,1.64284),
(76153,5,3311.28,5378.85,43.1371,0,0,5.31459),
(76153,6,3322.07,5363,42.1331,0,0,5.16144),
(76153,7,3327.71,5349.21,40.7955,4000,0,4.98866),
(76153,8,3313.01,5371.02,41.0367,0,0,2.20835),
(76153,9,3301.8,5386.27,45.9973,5000,0,2.79223),
(76153,10,3301.67,5374.6,43.2967,0,0,4.35518),
(76153,11,3297.93,5367.23,41.9034,0,0,4.01353),
(76153,12,3290.35,5353.73,42.817,4000,0,4.16664),
(76153,13,3304.58,5357.67,42.1149,0,0,0.294631),
(76153,14,3322.23,5362.84,42.1288,5000,0,0.247507);

-- #29th pack
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid IN (76155,76156,76157,76158,76159);
DELETE FROM creature_addon WHERE guid IN (76155,76156,76157,76158,76159);
DELETE FROM creature_movement WHERE id IN (76155,76156,76157,76158,76159);
DELETE FROM game_event_creature WHERE guid IN (76155,76156,76157,76158,76159);
DELETE FROM game_event_creature_data WHERE guid IN (76155,76156,76157,76158,76159);
DELETE FROM creature_battleground WHERE guid IN (76155,76156,76157,76158,76159);
DELETE FROM creature_linking WHERE guid IN (76155,76156,76157,76158,76159) 
OR master_guid IN (76155,76156,76157,76158,76159);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(76155,24614,571,1,1,0,0,3202.55,5421.19,54.5532,2.84312,300,300,0,0,7984,0,0,0),
(76156,24614,571,1,1,0,0,3216.19,5423.15,54.2871,2.77636,300,300,0,0,7984,0,0,0),
(76157,24613,571,1,1,0,0,3212.07,5411.76,54.4159,2.85098,300,300,0,0,6986,0,0,0),
(76158,24613,571,1,1,0,0,3201.93,5417.09,54.7876,2.73709,300,300,0,0,6986,0,0,0),
(76159,24613,571,1,1,0,0,3215.49,5416.57,54.3272,2.85805,300,300,0,0,6986,0,0,0);
-- link
DELETE FROM creature_linking WHERE master_guid = 76155;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(76156, 76155, 512),
(76157, 76155, 512),
(76158, 76155, 512),
(76159, 76155, 512);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 76155;
DELETE FROM creature_movement WHERE id = 76155;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(76155,1,3180.08,5428.56,56.2522,0,0,2.80935),
(76155,2,3168.76,5434.2,56.2623,0,0,2.61693),
(76155,3,3154.01,5447.62,55.2929,5000,0,2.40487),
(76155,4,3156.2,5436.36,56.1898,5000,0,5.09878),
(76155,5,3165.18,5425.83,57.0983,0,0,5.66034),
(76155,6,3176.35,5421.05,57.0497,0,0,5.90773),
(76155,7,3187.27,5416.28,56.3247,0,0,5.88417),
(76155,8,3202.46,5411.15,54.932,0,0,6.00198),
(76155,9,3222.56,5405.94,52.8854,0,0,6.05303),
(76155,10,3239.84,5402.64,50.2435,0,0,6.08445),
(76155,11,3248.91,5400.48,49.2654,4000,0,5.93915),
(76155,12,3245.73,5408.83,51.1279,6000,0,2.76322),
(76155,13,3229.9,5414.01,53.5651,0,0,2.80642),
(76155,14,3217.65,5417.41,54.2565,0,0,2.8771),
(76155,15,3202.99,5421.3,54.5193,0,0,2.88496);

-- Wooly Mammoth Bull
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid IN (76160,76161,77790);
DELETE FROM creature_addon WHERE guid IN (76160,76161,77790);
DELETE FROM creature_movement WHERE id IN (76160,76161,77790);
DELETE FROM game_event_creature WHERE guid IN (76160,76161,77790);
DELETE FROM game_event_creature_data WHERE guid IN (76160,76161,77790);
DELETE FROM creature_battleground WHERE guid IN (76160,76161,77790);
DELETE FROM creature_linking WHERE guid IN (76160,76161,77790) 
OR master_guid IN (76160,76161,77790);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(76160,25743,571,1,1,0,0,3384.94,5251.45,28.9947,1.52083,300,300,15,0,8982,0,0,1),
(76161,25743,571,1,1,0,0,4091.59,5431.29,24.7443,4.98611,300,300,15,0,8982,0,0,1),
(77790,25743,571,1,1,0,0,3200.77,5407.68,55.1435,2.64287,300,300,15,0,8982,0,0,1);
-- Updates
UPDATE creature SET spawndist = 15, MovementType = 1 WHERE id = 25743;
UPDATE creature SET position_x = 4018.556396, position_y = 5467.619629, position_z = 31.201939 WHERE guid = 109124;
UPDATE creature SET position_x = 3287.139404, position_y = 5362.779297, position_z = 41.546837 WHERE guid = 109142;
UPDATE creature SET position_x = 3851.937744, position_y = 5374.597168, position_z = 23.800087 WHERE guid = 109136;
UPDATE creature SET position_x = 3814.437988, position_y = 5626.350098, position_z = 51.806404 WHERE guid = 109087;
