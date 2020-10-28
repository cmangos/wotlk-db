-- Wintergarde Keep - Dragonblight
-- duplicates
DELETE FROM creature WHERE guid IN (516601,514052,514062,516600,516606,516605,516602,520291,517168,517171,524248,524260,524250,516575,516566,516590,516620,517988,517992,517965,517974,517964,517987,517285,517286,517284,517283,517287,517288);
DELETE FROM creature_addon WHERE guid IN (516601,514052,514062,516600,516606,516605,516602,520291,517168,517171,524248,524260,524250,516575,516566,516590,516620,517988,517992,517965,517974,517964,517987,517285,517286,517284,517283,517287,517288);
DELETE FROM creature_movement WHERE id IN (516601,514052,514062,516600,516606,516605,516602,520291,517168,517171,524248,524260,524250,516575,516566,516590,516620,517988,517992,517965,517974,517964,517987,517285,517286,517284,517283,517287,517288);
DELETE FROM game_event_creature WHERE guid IN (516601,514052,514062,516600,516606,516605,516602,520291,517168,517171,524248,524260,524250,516575,516566,516590,516620,517988,517992,517965,517974,517964,517987,517285,517286,517284,517283,517287,517288);
DELETE FROM game_event_creature_data WHERE guid IN (516601,514052,514062,516600,516606,516605,516602,520291,517168,517171,524248,524260,524250,516575,516566,516590,516620,517988,517992,517965,517974,517964,517987,517285,517286,517284,517283,517287,517288);
DELETE FROM creature_battleground WHERE guid IN (516601,514052,514062,516600,516606,516605,516602,520291,517168,517171,524248,524260,524250,516575,516566,516590,516620,517988,517992,517965,517974,517964,517987,517285,517286,517284,517283,517287,517288);
DELETE FROM creature_linking WHERE guid IN (516601,514052,514062,516600,516606,516605,516602,520291,517168,517171,524248,524260,524250,516575,516566,516590,516620,517988,517992,517965,517974,517964,517987,517285,517286,517284,517283,517287,517288)
 OR master_guid IN (516601,514052,514062,516600,516606,516605,516602,520291,517168,517171,524248,524260,524250,516575,516566,516590,516620,517988,517992,517965,517974,517964,517987,517285,517286,517284,517283,517287,517288);

-- Risen Gryphon Rider 27268
DELETE FROM creature_template_addon WHERE entry IN (27268);
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(27268,0,0,1,0,0,0,48553);
-- Vehicle accessory
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27268);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 27268);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 27268);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 27268);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 27268);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 27268)
OR master_guid IN (SELECT guid FROM creature WHERE id = 27268);
DELETE FROM creature WHERE id = 27268;
-- 4 static added
DELETE FROM creature_addon WHERE guid IN (517987,517964,517974,517965);
DELETE FROM creature_movement WHERE id IN (517987,517964,517974,517965);
DELETE FROM game_event_creature WHERE guid IN (517987,517964,517974,517965);
DELETE FROM game_event_creature_data WHERE guid IN (517987,517964,517974,517965);
DELETE FROM creature_battleground WHERE guid IN (517987,517964,517974,517965);
DELETE FROM creature_linking WHERE guid IN (517987,517964,517974,517965)
 OR master_guid IN (517987,517964,517974,517965);
DELETE FROM creature WHERE guid IN (517987,517964,517974,517965);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(517987,27268,571,1,1,19595,0,3744.92,-870.214,224.056,0.792612,180,180,0,0,92910,0,0,2),
(517964,27268,571,1,1,19595,0,3655.54,-851.359,234.345,1.28977,180,180,0,0,92910,0,0,2),
(517974,27268,571,1,1,19595,0,3653.52,-932.646,208.513,1.49789,180,180,0,0,92910,0,0,2),
(517965,27268,571,1,1,19595,0,3758.24,-933.272,205.967,1.67618,180,180,0,0,92910,0,0,2);
DELETE FROM creature_movement WHERE id IN (517987,517964,517974,517965);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(517987,1,3744.92,-870.214,224.056,100,5000,2726801),
(517964,1,3655.54,-851.359,234.345,100,5000,2726801),
(517974,1,3653.52,-932.646,208.513,100,5000,2726801),
(517965,1,3758.24,-933.272,205.967,100,5000,2726801);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2726801;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2726801,1,42,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2726801,10,2,59,33555200,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2726801,100,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- High Commander Halford Wyrmbane 27136
UPDATE creature_template SET MovementType = 2 WHERE entry = 27136;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 27136;
DELETE FROM creature_movement_template WHERE entry = 27136;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27136,1,3767.499,-775.0477,196.087,100,0,0),
(27136,2,3776.538,-783.3422,196.087,100,0,0);

-- 7th Legion Cavalier 27161
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (516603,516604,516607,516608,516609);
DELETE FROM creature_movement WHERE id IN (516603,516604,516607,516608,516609);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 516603
(516603,1,3702.64,-735.576,212.308,100,0,0),
(516603,2,3697.14,-731.03,212.901,100,0,0),
(516603,3,3690.03,-720.334,212.527,100,0,0),
(516603,4,3686.26,-711.317,212.722,100,0,0),
(516603,5,3685.57,-703.061,213.59,100,0,0),
(516603,6,3683.9,-685.984,217.48,100,0,0),
(516603,7,3673.07,-676.012,223.952,100,0,0),
(516603,8,3664.33,-668.099,231.163,100,0,0),
(516603,9,3673.03,-675.718,224.101,100,0,0),
(516603,10,3683.94,-685.999,217.472,100,0,0),
(516603,11,3686.34,-711.485,212.71,100,0,0),
(516603,12,3690.23,-720.87,212.55,100,0,0),
(516603,13,3697.44,-731.344,212.899,100,0,0),
(516603,14,3702.56,-735.592,212.32,100,0,0),
(516603,15,3712.19,-741.586,208.913,100,0,0),
(516603,16,3720.29,-745.776,205.242,100,0,0),
(516603,17,3727.05,-748.477,202.513,100,0,0),
(516603,18,3735.69,-750.944,199.705,100,0,0),
(516603,19,3743.53,-756.182,197.701,100,0,0),
(516603,20,3751.29,-764.044,196.862,100,0,0),
(516603,21,3761.11,-769.428,196.445,100,0,0),
(516603,22,3775.15,-774.729,195.817,100,0,0),
(516603,23,3783.29,-786.293,196.42,100,0,0),
(516603,24,3789.58,-791.874,196.593,100,0,0),
(516603,25,3795.45,-795.01,196.773,100,0,0),
(516603,26,3789.13,-791.486,196.618,100,0,0),
(516603,27,3783.02,-786.239,196.401,100,0,0),
(516603,28,3775.46,-774.985,195.813,100,0,0),
(516603,29,3760.26,-769.015,196.542,100,0,0),
(516603,30,3750.84,-763.92,196.885,100,0,0),
(516603,31,3743.13,-755.615,197.817,100,0,0),
(516603,32,3735.54,-750.573,199.786,100,0,0),
(516603,33,3726.65,-748.57,202.623,100,0,0),
(516603,34,3719.81,-745.566,205.459,100,0,0),
(516603,35,3710.26,-739.971,209.86,100,0,0),
-- 516604
(516604,1,3857.22,-755.135,219.007,100,0,0),
(516604,2,3840.72,-756.782,218.064,100,0,0),
(516604,3,3831.91,-759.536,215.879,100,0,0),
(516604,4,3819.64,-764.729,210.274,100,0,0),
(516604,5,3813,-765.968,207.042,100,0,0),
(516604,6,3798.31,-766.944,199.451,100,0,0),
(516604,7,3789.84,-770.726,196.855,100,0,0),
(516604,8,3782.26,-775.343,195.99,100,0,0),
(516604,9,3791.16,-770.195,197.08,100,0,0),
(516604,10,3799.29,-766.634,199.847,100,0,0),
(516604,11,3809.3,-766.034,204.986,100,0,0),
(516604,12,3819.93,-764.646,210.414,100,0,0),
(516604,13,3833.02,-759.337,216.328,100,0,0),
(516604,14,3841.46,-756.6,218.174,100,0,0),
(516604,15,3858.21,-755.305,219.078,100,0,0),
(516604,16,3867.35,-754.701,219.777,100,0,0),
(516604,17,3872.96,-749.599,220.47,100,0,0),
(516604,18,3879.44,-743.193,222.789,100,0,0),
(516604,19,3886.19,-736.677,228.338,100,0,0),
(516604,20,3891.52,-729.456,232.973,100,0,0),
(516604,21,3898.06,-724.792,237.499,100,0,0),
(516604,22,3904.68,-721.893,240.371,100,0,0),
(516604,23,3911.96,-714.871,241.295,100,0,0),
(516604,24,3917.94,-708.629,241.191,100,0,0),
(516604,25,3911.75,-715.127,241.297,100,0,0),
(516604,26,3904.93,-721.86,240.412,100,0,0),
(516604,27,3898.15,-724.74,237.557,100,0,0),
(516604,28,3891.6,-729.628,232.963,100,0,0),
(516604,29,3886.57,-735.924,228.752,100,0,0),
(516604,30,3879.88,-743.26,222.881,100,0,0),
(516604,31,3873.12,-749.551,220.486,100,0,0),
(516604,32,3866.54,-754.417,219.687,100,0,0),
-- 516607
(516607,1,3548.01,-741.103,214.014,100,0,0),
(516607,2,3542.09,-750.353,214.788,100,0,0),
(516607,3,3533.36,-765.612,219.271,100,0,0),
(516607,4,3524.19,-781.1,223.005,100,0,0),
(516607,5,3529.53,-771.894,221.062,100,0,0),
(516607,6,3538.64,-756.644,216.391,100,0,0),
(516607,7,3544.88,-746.083,214.224,100,0,0),
(516607,8,3552.63,-734.264,214.264,100,0,0),
(516607,9,3557.73,-729.367,214.179,100,0,0),
(516607,10,3569.1,-725.18,213.814,100,0,0),
(516607,11,3578.33,-724.981,213.81,100,0,0),
(516607,12,3592.24,-725.246,213.81,100,0,0),
(516607,13,3612.91,-725.987,213.81,100,0,0),
(516607,14,3594.59,-723.079,213.81,100,0,0),
(516607,15,3587.02,-722.414,213.81,100,0,0),
(516607,16,3574.23,-723.655,213.81,100,0,0),
(516607,17,3561.13,-727.548,213.948,100,0,0),
(516607,18,3555.23,-730.906,214.369,100,0,0),
-- 516608
(516608,1,3923.81,-759.24,240.71,100,0,0),
(516608,2,3917.55,-743.191,240.941,100,0,0),
(516608,3,3914.03,-731.614,241.435,100,0,0),
(516608,4,3917.88,-743.865,240.949,100,0,0),
(516608,5,3924.13,-759.474,240.726,100,0,0),
(516608,6,3939.73,-768.059,241.929,100,0,0),
(516608,7,3943.18,-777.299,244.25,100,0,0),
(516608,8,3945.97,-783.214,244.618,100,0,0),
(516608,9,3950.81,-789.613,244.141,100,0,0),
(516608,10,3955.05,-799.613,242.908,100,0,0),
(516608,11,3961.11,-810.273,240.825,100,0,0),
(516608,12,3968.82,-824.568,240.015,100,0,0),
(516608,13,3971.3,-832.092,239.979,100,0,0),
(516608,14,3972.88,-841.894,237.867,100,0,0),
(516608,15,3973.9,-851.541,233.872,100,0,0),
(516608,16,3974.15,-867.661,224.309,100,0,0),
(516608,17,3973.72,-875.713,220.541,100,0,0),
(516608,18,3972.43,-887.468,214.797,100,0,0),
(516608,19,3971.27,-899.922,209.243,100,0,0),
(516608,20,3971.18,-919.062,202.945,100,0,0),
(516608,21,3961.13,-925.591,200.009,100,0,0),
(516608,22,3950.86,-931.129,198.38,100,0,0),
(516608,23,3946.83,-941.716,198.973,100,0,0),
(516608,24,3944.86,-950.013,200.781,100,0,0),
(516608,25,3944.2,-957.466,203.143,100,0,0),
(516608,26,3943.78,-965.165,206.684,100,0,0),
(516608,27,3944.38,-972.49,209.216,100,0,0),
(516608,28,3948.98,-983.106,209.292,100,0,0),
(516608,29,3955.38,-995.971,206.162,100,0,0),
(516608,30,3958.8,-1003.79,204.162,100,0,0),
(516608,31,3959.52,-1011.12,200.584,100,0,0),
(516608,32,3958.9,-1003.53,204.247,100,0,0),
(516608,33,3955.16,-995.611,206.229,100,0,0),
(516608,34,3948.87,-983.047,209.308,100,0,0),
(516608,35,3945.54,-975.848,209.712,100,0,0),
(516608,36,3943.75,-965.049,206.636,100,0,0),
(516608,37,3944.16,-957.248,203.026,100,0,0),
(516608,38,3944.85,-949.577,200.651,100,0,0),
(516608,39,3946.85,-940.818,198.837,100,0,0),
(516608,40,3951.08,-930.592,198.408,100,0,0),
(516608,41,3961.99,-925.254,200.169,100,0,0),
(516608,42,3971.63,-919.14,202.973,100,0,0),
(516608,43,3971.53,-908.867,205.731,100,0,0),
(516608,44,3971.74,-896.134,210.783,100,0,0),
(516608,45,3973.02,-882.067,217.455,100,0,0),
(516608,46,3974.32,-866.7,224.796,100,0,0),
(516608,47,3973.95,-851.174,234.051,100,0,0),
(516608,48,3972.87,-841.181,238.085,100,0,0),
(516608,49,3971.23,-831.87,239.983,100,0,0),
(516608,50,3968.89,-824.409,240.022,100,0,0),
(516608,51,3961.25,-809.816,240.889,100,0,0),
(516608,52,3954.9,-798.827,243.015,100,0,0),
(516608,53,3951.17,-789.493,244.155,100,0,0),
(516608,54,3946.16,-782.906,244.638,100,0,0),
(516608,55,3943.04,-777.027,244.186,100,0,0),
(516608,56,3939.8,-768.172,241.956,100,0,0),
-- 516609
(516609,1,3941.94,-707.202,241.553,100,0,0),
(516609,2,3934.11,-699.398,241.345,100,0,0),
(516609,3,3930.17,-686.014,240.99,100,0,0),
(516609,4,3926.09,-675.065,240.696,100,0,0),
(516609,5,3922.88,-670.482,240.829,100,0,0),
(516609,6,3911.99,-667.354,241.212,100,0,0),
(516609,7,3923.4,-671.177,240.785,100,0,0),
(516609,8,3926.53,-675.835,240.714,100,0,0),
(516609,9,3930.86,-682.576,240.852,100,0,0),
(516609,10,3936.36,-668.415,241.029,100,0,0),
(516609,11,3939.84,-658.396,241.17,100,0,0),
(516609,12,3942.36,-646.341,241.655,100,0,0),
(516609,13,3951.3,-640.362,241.471,100,0,0),
(516609,14,3955.8,-629.581,241.134,100,0,0),
(516609,15,3950.86,-640.284,241.503,100,0,0),
(516609,16,3942.14,-646.77,241.633,100,0,0),
(516609,17,3938.8,-659.666,241.186,100,0,0),
(516609,18,3934.63,-673.057,241.051,100,0,0),
(516609,19,3935.21,-680.901,240.921,100,0,0),
(516609,20,3938.61,-694.49,241.169,100,0,0),
(516609,21,3948.68,-714.897,241.828,100,0,0),
(516609,22,3963.2,-724.379,241.373,100,0,0),
(516609,23,3949.23,-716.797,241.782,100,0,0);

-- Risen Gryphon 27241
UPDATE creature SET position_x = 3691.141, position_y = -806.7542, position_z = 210.5395, orientation = 5.938398 WHERE guid = 517169;
UPDATE creature SET position_x = 3741.596, position_y = -893.1644, position_z = 191.1345, orientation = 2.587149 WHERE guid = 517170;
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (517169,517170);
DELETE FROM creature_movement WHERE id IN (517169,517170);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 517169
(517169,1,3691.141,-806.7542,210.5395,100,100,5),
(517169,2,3748.995,-827.2036,210.5395,100,0,0),
(517169,3,3777.234,-874.5955,210.5395,100,0,0),
(517169,4,3791.363,-960.511,199.0951,100,0,0),
(517169,5,3729.238,-1018.627,178.1507,100,0,0),
(517169,6,3669.312,-1024.904,166.734,100,0,0),
(517169,7,3644.001,-1009.592,164.7339,100,0,0),
(517169,8,3607.059,-974.4313,178.4006,100,0,0),
(517169,9,3598.646,-934.493,186.0396,100,0,0),
(517169,10,3600.624,-861.4706,196.2339,100,0,0),
(517169,11,3635.558,-815.6821,206.4284,100,0,0),
-- 517170
(517170,1,3741.596,-893.1644,191.1345,100,100,5),
(517170,2,3719.361,-880.2488,195.7529,100,0,0),
(517170,3,3679.29,-886.0146,197.6418,100,0,0),
(517170,4,3652.513,-915.5563,195.7529,100,0,0),
(517170,5,3644.839,-945.8062,186.253,100,0,0),
(517170,6,3657.532,-970.7924,172.5308,100,0,0),
(517170,7,3690.949,-996.1602,163.8085,100,0,0),
(517170,8,3704.945,-1000.013,164.3846,100,0,0),
(517170,9,3754.07,-972.9567,166.3568,100,0,0),
(517170,10,3755.076,-928.3577,180.0512,100,0,0),
(517170,11,3741.596,-893.1644,191.1345,100,0,0);

-- Covetous Geist 27513
-- missing added -- duplicates reused
DELETE FROM creature_addon WHERE guid IN (516601,514052,514062);
DELETE FROM creature_movement WHERE id IN (516601,514052,514062);
DELETE FROM game_event_creature WHERE guid IN (516601,514052,514062);
DELETE FROM game_event_creature_data WHERE guid IN (516601,514052,514062);
DELETE FROM creature_battleground WHERE guid IN (516601,514052,514062);
DELETE FROM creature_linking WHERE guid IN (516601,514052,514062)
 OR master_guid IN (516601,514052,514062);
DELETE FROM creature WHERE guid IN (516601,514052,514062);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(516601,27513,571,1,1,0,0,3680.12,-765.717,191.887,1.3339,180,180,0,0,9291,0,0,0),
(514052,27513,571,1,1,0,0,3672.48,-763.4879,191.4545,1.954769,180,180,0,0,9291,0,0,0),
(514062,27513,571,1,1,0,0,3663.896,-761.7448,191.4388,2.024582,180,180,0,0,9291,0,0,0);
UPDATE creature_template SET InhabitType = 3 WHERE `entry` = 27513;
UPDATE creature SET position_x = 3722.031, position_y = -783.5903, position_z = 190.6925, orientation = 2.635447 WHERE guid = 518684;
UPDATE creature SET position_x = 3785.37, position_y = -841.987, position_z = 188.307, orientation = 0.949692 WHERE guid = 518685;
UPDATE creature SET position_x = 3623.878, position_y = -766.9109, position_z = 180.8865, orientation = 0.876058 WHERE guid = 518686;
UPDATE creature SET position_x = 3775.505, position_y = -831.1061, position_z = 188.3889, orientation = 0.8552113 WHERE guid = 518687;
UPDATE creature SET position_x = 3703.59, position_y = -775.868, position_z = 191.2394, orientation = 3.036873 WHERE guid = 518688;
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (514052,514062,516601,518684,518685,518686,518687,518688);
DELETE FROM creature_movement WHERE id IN (514052,514062,516601,518684,518685,518686,518687,518688);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 514052
(514052,1,3672.48,-763.4879,191.4545,100,2000,0),
(514052,2,3673.191,-760.4655,192.2879,100,1000,2751301),
(514052,3,3673.765,-755.542,215.0878,100,2000,2751302),
(514052,4,3678.672,-753.1924,213.6011,100,2000,20),
-- 514062
(514062,1,3663.896,-761.7448,191.4388,100,2000,0),
(514062,2,3664.959,-758.4537,191.4409,100,1000,2751301),
(514062,3,3662.74,-752.6339,215.098,100,2000,2751302),
(514062,4,3663.159,-748.4298,213.6011,100,2000,20),
-- 516601
(516601,1,3680.118,-765.717,191.9705,100,2000,0),
(516601,2,3681.089,-762.5474,192.1629,100,1000,2751301),
(516601,3,3684.851,-757.9039,215.0973,100,2000,2751302),
(516601,4,3682.315,-753.7151,213.6011,100,2000,20),
-- 518684
(518684,1,3722.031,-783.5903,190.6925,100,2000,0),
(518684,2,3722.03,-783.59,190.609,100,1000,2751301),
(518684,3,3722.075,-773.4526,215.1078,100,2000,2751302),
(518684,4,3720.085,-768.491,213.61,100,2000,20),
-- 518685
(518685,1,3785.37,-841.987,188.307,100,2000,0),
(518685,2,3786.63,-839.897,188.532,100,1000,2751301),
(518685,3,3789.88,-836.3713,213.968,100,2000,2751302),
(518685,4,3790.928,-831.8257,212.4815,100,2000,20),
-- 518686
(518686,1,3626.902,-763.2815,185.2519,100,0,0),
(518686,2,3627.859,-756.8647,190.6269,100,0,0),
(518686,3,3628.135,-753.8326,191.2519,100,1000,2751301),
(518686,4,3627.42,-748.5042,214.6225,100,2000,2751302), 
(518686,5,3627.85,-744.8469,213.1324,100,2000,20),
-- 518687
(518687,1,3775.505,-831.1061,188.3889,100,2000,0),
(518687,2,3777.602,-830.1339,188.6053,100,1000,2751301),
(518687,3,3782.327,-828.0553,213.9651,100,2000,2751302), 
(518687,4,3785.964,-826.6042,212.4815,100,2000,20),
-- 518688
(518688,1,3703.59,-775.868,191.2394,100,2000,0),
(518688,2,3706.769,-771.2674,192.2468,100,1000,2751301),
(518688,3,3706.828,-766.1467,215.0982,100,2000,2751302),
(518688,4,3707.411,-761.9837,213.6099,100,2000,20);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2751301 AND 2751302;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2751301,100,2,59,33536,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2751301,1000,15,48930,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2751301,1001,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'FLY ON'),
(2751302,10,14,48930,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2751302,20,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'FLY OFF'),
(2751302,3000,2,59,32768,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_creature_death WHERE id = 27513;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(27513,10,14,48930,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(27513,20,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'FLY OFF');

-- 7th Legion Sentinel 27162
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (516614,516619);

-- 7th Legion Infantryman 27160
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (516583,516567);
UPDATE creature SET position_z = 195.030930, spawndist = 0, MovementType = 0 WHERE guid = 516570;
UPDATE creature SET position_x = 3758.927979, position_y = -782.818176, position_z = 195.722076, spawndist = 0, MovementType = 0 WHERE guid = 516569;
UPDATE creature SET position_x = 3758.927979, position_y = -782.818176, position_z = 195.722076, orientation = 4.11704, spawndist = 0, MovementType = 0 WHERE guid = 516569;
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (516577);
DELETE FROM creature_movement WHERE id IN (516577);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 516577
(516577,1,3540.42,-745.715,214.582,100,0,0),
(516577,2,3534.96,-754.829,216.723,100,0,0),
(516577,3,3530.69,-763.918,219.725,100,0,0),
(516577,4,3526.78,-773.028,221.903,100,0,0),
(516577,5,3530.94,-763.25,219.578,100,0,0),
(516577,6,3534.86,-754.641,216.702,100,0,0),
(516577,7,3541.17,-744.812,214.501,100,0,0),
(516577,8,3548.3,-734.539,214.451,100,0,0),
(516577,9,3558.43,-723.037,214.737,100,0,0),
(516577,10,3575.38,-716.024,213.811,100,0,0),
(516577,11,3588.24,-711.932,213.811,100,0,0),
(516577,12,3600.16,-707.11,213.811,100,0,0),
(516577,13,3612.76,-702.09,213.811,100,0,0),
(516577,14,3624.03,-697.269,213.811,100,0,0),
(516577,15,3641.39,-696.303,213.811,100,0,0),
(516577,16,3624.84,-697.136,213.811,100,0,0),
(516577,17,3617.79,-699.65,213.811,100,0,0),
(516577,18,3600.81,-706.812,213.81,100,0,0),
(516577,19,3587.8,-712.033,213.81,100,0,0),
(516577,20,3575.39,-715.803,213.81,100,0,0),
(516577,21,3558.41,-723.093,214.729,100,0,0),
(516577,22,3553.63,-728.75,214.753,100,0,0);
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20370 AND 20371;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20370,0,42,0,0,0,0,0,0,37120,143,0,0,0,0,0,0,'Part of 7th Legion Infantryman EAI: Random Script 1'),
(20371,0,42,0,0,0,0,0,0,21573,143,0,0,0,0,0,0,'Part of 7th Legion Infantryman EAI: Random Script 2');

-- Arctic Hare 29328
UPDATE creature SET position_x = 3685.855957, position_y = -720.486877, position_z = 212.527893, spawndist = 20, MovementType = 1 WHERE guid = 524214;

-- Highlord Leoric Von Zeldig 27156
-- Part of Highlord Leoric Von Zeldig EAI:
DELETE FROM dbscripts_on_relay WHERE id = 20372;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20372,10,31,27159,50,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Highlord Leoric Von Zeldig EAI: search for 27159'),
(20372,100,21,1,0,0,27159,60,7,0,0,0,0,0,0,0,0,'Part of Highlord Leoric Von Zeldig EAI: buddy active'),
(20372,101,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Highlord Leoric Von Zeldig EAI: active'),
(20372,120,0,0,0,0,0,0,0,2000020527,0,0,0,0,0,0,0,'Part of Highlord Leoric Von Zeldig EAI: text'),
(20372,8000,0,0,0,0,27159,20,7,2000020528,0,0,0,0,0,0,0,'Part of Highlord Leoric Von Zeldig EAI: buddy text'),
(20372,15000,0,0,0,0,0,0,0,2000020529,0,0,0,0,0,0,0,'Part of Highlord Leoric Von Zeldig EAI: text'),
(20372,25000,0,0,0,0,27159,20,7,2000020530,0,0,0,0,0,0,0,'Part of Highlord Leoric Von Zeldig EAI: buddy text'),
(20372,27000,0,0,0,0,0,0,0,2000020531,0,0,0,0,0,0,0,'Part of Highlord Leoric Von Zeldig EAI: text'),
(20372,37000,0,0,0,0,27159,20,7,2000020532,0,0,0,0,0,0,0,'Part of Highlord Leoric Von Zeldig EAI: buddy text'),
(20372,43000,0,0,0,0,27159,20,7,2000020533,0,0,0,0,0,0,0,'Part of Highlord Leoric Von Zeldig EAI: buddy text'),
(20372,53000,0,0,0,0,0,0,0,2000020534,0,0,0,0,0,0,0,'Part of Highlord Leoric Von Zeldig EAI: text'),
(20372,54000,21,0,0,0,27159,60,7,0,0,0,0,0,0,0,0,'Part of Highlord Leoric Von Zeldig EAI: buddy unactive'),
(20372,54500,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Highlord Leoric Von Zeldig EAI: active');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020527 AND 2000020534;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020527,'The mine is lost. All of our defenders have perished and the miners resurrected as Scourge aberrations!',0,0,7,1,NULL),
(2000020528,'It does get worse, old friend. According to my calculations, without suitable materials to repair our parapets, the walls protecting this keep will crumble in twelve hours.',0,0,7,1,NULL),
(2000020529,'Grim news, my pint-sized companion. Should we suffer a defeat here the ramifications will be felt across this frozen wasteland. Lord Fordragon and our armies at the Wrathgate will be defenseless against an assault from Naxxramas.',0,0,7,1,NULL),
(2000020530,'We have been through worse and survived, Leoric. Do not forget Hyjal...',0,0,7,1,NULL),
(2000020531,'Yes, yes, I haven\'t forgotten Hyjal, or Silithus, or the march of the Legion, or every other damnable confrontation the 7th Legion has faced. It... I don\'t want the soldiers to hear this, Two-bit, but for the first time in my life...',0,0,7,1,NULL),
(2000020532,'Say no more, Leoric. We all feel the chill in our bones. Yet, each day, heroes arrive from across the world - and beyond.',0,0,7,1,NULL),
(2000020533,'I have heard whisperings from the east that our esteemed Scarab Lord has joined the battle, as have entire batallions from Shattrath: heroes blessed by A\'dal himself, granted rank as Hand of A\'dal!',0,0,7,1,NULL),
(2000020534,'You are right, of course, old friend. Let us hope that these heroes arrive soon.',0,0,7,1,NULL);

-- Illusia Lune 27042
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27042);
UPDATE creature_template_addon SET auras = 48357 WHERE entry = 27042;
UPDATE creature_template SET MovementType = 2 WHERE entry = 27042;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 27042;
DELETE FROM creature_movement_template WHERE entry = 27042;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27042,1,3635.41,-713.6733,214.2404,100,20000,0),
(27042,2,3644.625,-714.8554,214.2404,100,0,0),
(27042,3,3648.25,-715.2807,215.0311,100,0,0),
(27042,4,3647.977,-717.1859,215.0339,100,0,0),
(27042,5,3655.216,-718.0604,215.0293,100,5000,0),
(27042,6,3647.948,-717.1948,215.0339,100,0,0),
(27042,7,3648.265,-715.3195,215.0312,100,0,0),
(27042,8,3644.507,-714.7984,214.2404,100,0,0);

-- Wintergarde Blacksmith 27361
UPDATE creature_template_addon SET emote = 0, auras = 48357 WHERE entry = 27361;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27361);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (517901,517902,517903,517904);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(517901,0,0,0,1,133,0,48357),
(517902,0,0,0,1,0,0,48357),
(517903,0,0,0,1,133,0,48357),
(517904,0,0,0,1,133,0,48357);
UPDATE creature_model_info SET modelid_alternative = 24588 WHERE modelid = 24587;
UPDATE creature_model_info SET modelid_alternative = 24589 WHERE modelid = 24588;
UPDATE creature_model_info SET modelid_alternative = 24587 WHERE modelid = 24589;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 517902;
DELETE FROM creature_movement WHERE id = 517902;
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(517902,1,3691.497,-738.822,213.2988,5.358161,30000,2736101), -- przy kowadle 233
(517902,2,3687.749,-739.8116,213.3309,4.380776,30000,2736102);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2736101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2736101,3000,1,233,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2736101,27000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2736102,3000,1,69,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2736102,27000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Master Smith Devin Brevig 27045
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27045);
UPDATE creature_template_addon SET auras = 48357 WHERE entry = 27045;

-- Zybarus of Darnassus 27040
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27040);
UPDATE creature_template_addon SET auras = 48357 WHERE entry = 27040;

-- Lexey Brevig 27039
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27039);
UPDATE creature_template_addon SET auras = 48357 WHERE entry = 27039;

-- Trixy Trixerton 27043
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27043);
UPDATE creature_template_addon SET auras = 48357 WHERE entry = 27043;

-- Drolfy 27038
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27038);
UPDATE creature_template_addon SET auras = 48357 WHERE entry = 27038;

-- Ordal McLumpkins 27044
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27044);
UPDATE creature_template_addon SET auras = 48357 WHERE entry = 27044;
UPDATE creature_template SET MovementType = 2 WHERE entry = 27044;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 27044;
DELETE FROM creature_movement_template WHERE entry = 27044;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27044,1,3621.722,-718.3648,215.0349,4.542733,15000,2704401),
(27044,2,3619.423,-714.603,215.0349,1.466077,15000,2704401),
(27044,3,3616.081,-716.1984,215.0349,4.603409,15000,2704401),
(27044,4,3622.151,-716.5316,215.5349,100,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2704401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2704401,10,1,69,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2704401,13000,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Fanny McLumpkins 27041
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27041);
UPDATE creature_template_addon SET auras = 48357 WHERE entry = 27041;
UPDATE creature_template SET MovementType = 2 WHERE entry = 27041;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 27041;
DELETE FROM creature_movement WHERE id IN (516295);
DELETE FROM creature_movement_template WHERE entry = 27041;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27041,1,3630.4,-710.856,220.458,100,0,0),
(27041,2,3628.25,-710.648,220.132,100,0,0),
(27041,3,3627.64,-715.99,220.132,100,0,0),
(27041,4,3632.29,-716.987,220.132,100,0,0),
(27041,5,3631.32,-720.672,220.132,100,0,0),
(27041,6,3633.19,-721.129,220.132,100,0,0),
(27041,7,3640.13,-722.154,217.261,100,0,0),
(27041,8,3645.271,-722.5789,215.0312,100,0,0),
(27041,9,3640.42,-722.115,217.129,100,0,0),
(27041,10,3633.7,-721.189,220.132,100,0,0),
(27041,11,3631.25,-721.05,220.132,100,0,0),
(27041,12,3632.44,-717.58,220.132,100,0,0),
(27041,13,3627.48,-716.167,220.132,100,0,0),
(27041,14,3627.96,-710.467,220.132,100,0,0),
(27041,15,3630.16,-710.751,220.341,100,0,0),
(27041,16,3640.7,-712.173,225.227,100,0,0),
(27041,17,3643.24,-712.599,226.014,100,0,0),
(27041,18,3653.59,-713.505,226.012,100,0,0),
(27041,19,3653.38,-716.88,226.012,100,0,0),
(27041,20,3656.92,-716.583,226.012,100,0,0),
(27041,21,3657.68,-714.363,225.882,100,0,0),
(27041,22,3658.08,-709.83,224.442,100,0,0),
(27041,23,3653.99,-705.281,224.45,100,0,0),
(27041,24,3654.6,-701.119,224.453,100,0,0),
(27041,25,3655,-697.875,222.916,100,0,0),
(27041,26,3655.26,-695.904,222.826,100,0,0),
(27041,27,3657.81,-696.335,222.826,100,0,0),
(27041,28,3657.37,-698.281,222.992,100,0,0),
(27041,30,3656.59,-701.095,224.44,100,0,0),
(27041,31,3656.11,-704.575,224.451,100,0,0),
(27041,32,3658.51,-711.039,224.604,100,0,0),
(27041,33,3657.85,-714.953,226.012,100,0,0),
(27041,34,3656.9,-716.834,226.012,100,0,0),
(27041,35,3647.37,-715.796,226.012,100,0,0),
(27041,36,3645.3,-719.37,226.012,100,0,0),
(27041,37,3621.35,-716.424,226.012,100,0,0),
(27041,38,3629.5,-717.102,226.012,100,0,0),
(27041,39,3645.68,-719.499,226.012,100,0,0),
(27041,40,3646.83,-715.651,226.012,100,0,0),
(27041,41,3656.97,-716.434,226.012,100,0,0),
(27041,42,3657.83,-713.639,225.604,100,0,0),
(27041,43,3658.13,-710.137,224.442,100,0,0),
(27041,44,3656.3,-701.336,224.452,100,0,0),
(27041,45,3656.9,-698.714,223.263,100,0,0),
(27041,46,3657.58,-696.357,222.826,100,0,0),
(27041,47,3655.2,-696.211,222.826,100,0,0),
(27041,48,3654.75,-698.384,223.218,100,0,0),
(27041,49,3653.94,-705.344,224.451,100,0,0),
(27041,50,3658.06,-710.732,224.509,100,0,0),
(27041,51,3657.53,-714.792,226.012,100,0,0),
(27041,52,3656.67,-716.708,226.012,100,0,0),
(27041,53,3653.21,-716.933,226.012,100,0,0),
(27041,54,3653.72,-712.99,226.012,100,0,0),
(27041,55,3642.81,-712.368,226.014,100,0,0);

-- Trapped Wintergarde Villager 27359
-- missing added -- duplicates reused
DELETE FROM creature_addon WHERE guid IN (516600);
DELETE FROM creature_movement WHERE id IN (516600);
DELETE FROM game_event_creature WHERE guid IN (516600);
DELETE FROM game_event_creature_data WHERE guid IN (516600);
DELETE FROM creature_battleground WHERE guid IN (516600);
DELETE FROM creature_linking WHERE guid IN (516600)
 OR master_guid IN (516600);
DELETE FROM creature WHERE guid IN (516600);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(516600,27359,571,1,1,0,0,3802.402,-906.3489,163.0317,2.583087,180,180,0,0,4979,0,0,0);
-- updates
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27359);
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20373 AND 20379;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20373,0,1,27,0,0,0,0,0,0,0,0,0,0,0,0,0,'Trapped Wintergarde Villager EAI: Random Script 1 - emote 1'),
(20374,0,1,333,0,0,0,0,0,0,0,0,0,0,0,0,0,'Trapped Wintergarde Villager EAI: Random Script 2 - emote 2'),
(20375,0,1,375,0,0,0,0,0,0,0,0,0,0,0,0,0,'Trapped Wintergarde Villager EAI: Random Script 3 - emote 3'),
(20376,0,1,425,0,0,0,0,0,0,0,0,0,0,0,0,0,'Trapped Wintergarde Villager EAI: Random Script 4 - emote 4'),
(20377,0,1,431,0,0,0,0,0,0,0,0,0,0,0,0,0,'Trapped Wintergarde Villager EAI: Random Script 5 - emote 5'),
(20378,0,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Trapped Wintergarde Villager EAI: Random Script 6 - event 1'),
(20379,0,35,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Trapped Wintergarde Villager EAI: Random Script 7 - event 1');

-- Vengeful Geist 27370
-- missing added -- duplicates reused
DELETE FROM creature_addon WHERE guid IN (516606);
DELETE FROM creature_movement WHERE id IN (516606);
DELETE FROM game_event_creature WHERE guid IN (516606);
DELETE FROM game_event_creature_data WHERE guid IN (516606);
DELETE FROM creature_battleground WHERE guid IN (516606);
DELETE FROM creature_linking WHERE guid IN (516606)
 OR master_guid IN (516606);
DELETE FROM creature WHERE guid IN (516606);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(516606,27370,571,1,1,0,0,3798.718,-904.7065,162.8575,6.073746,180,180,0,0,9291,0,0,0);
-- updates
UPDATE creature SET position_x = 3776.771729, position_y = -897.966980, position_z = 162.641602, spawndist = 7, MovementType = 1 WHERE guid = 517983;
UPDATE creature SET position_x = 3770.010986, position_y = -882.580811, position_z = 162.871750, spawndist = 10, MovementType = 1 WHERE guid = 517970;
UPDATE creature SET position_x = 3718.590088, position_y = -890.677002, position_z = 163.911865, spawndist = 7, MovementType = 1 WHERE guid = 517976;
UPDATE creature SET position_x = 3728.833984, position_y = -852.645081, position_z = 164.240341, spawndist = 7, MovementType = 1 WHERE guid = 517963;
UPDATE creature SET position_x = 3709.635498, position_y = -912.989746, position_z = 163.385971, spawndist = 7, MovementType = 1 WHERE guid = 517985;
UPDATE creature SET position_x = 3677.903320, position_y = -915.543152, position_z = 162.988632, spawndist = 7, MovementType = 1 WHERE guid = 517995;
UPDATE creature SET position_x = 3635.124756, position_y = -877.078674, position_z = 163.669418, spawndist = 7, MovementType = 1 WHERE guid = 517990;
UPDATE creature SET position_x = 3583.792725, position_y = -845.219849, position_z = 172.254410, spawndist = 7, MovementType = 1 WHERE guid = 517986;
UPDATE creature SET position_x = 3621.685791, position_y = -837.373901, position_z = 163.912491, spawndist = 7, MovementType = 1 WHERE guid = 517991;

-- Risen Gryphon Rider Target 27375
UPDATE creature SET spawntimesecsmin = 20, spawntimesecsmax = 20 WHERE id = 27375;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27375);
DELETE FROM spell_script_target WHERE entry IN (48551,48552);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(48551, 1, 27375, 0),
(48552, 1, 27375, 0);
DELETE FROM dbscripts_on_relay WHERE id = 20380;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20380,0,15,48552,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Risen Gryphon Rider Target EAI: cast 48552');

-- Risen Villager 27272
UPDATE creature_template SET MovementType = 2 WHERE entry = 27272;
DELETE FROM creature_movement_template WHERE entry = 27272;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- 1
(27272,1,1,3755.69,-915.495,155.935,100,0,0),
(27272,1,2,3748.58,-893.738,162.503,100,0,0),
(27272,1,3,3732.17,-878.682,162.739,100,0,0),
(27272,1,4,3717.95,-864.791,162.812,100,0,0),
(27272,1,5,3723.28,-844.521,164.424,100,0,0),
(27272,1,6,3735.58,-824.378,170.365,100,0,0),
(27272,1,7,3749.29,-809.588,181.789,100,0,0),
(27272,1,8,3765.5,-791.009,195.185,100,5000,20),
-- 2
(27272,2,1,3750.19,-918.919,154.504,100,0,0),
(27272,2,2,3747.33,-901.598,161.059,100,0,0),
(27272,2,3,3740.45,-890.106,162.631,100,0,0),
(27272,2,4,3723.77,-876.212,162.77,100,0,0),
(27272,2,5,3714.17,-863.429,162.769,100,0,0),
(27272,2,6,3722.1,-841.578,164.678,100,0,0),
(27272,2,7,3734.04,-821.665,170.64,100,0,0),
(27272,2,8,3746.68,-805.64,182.266,100,0,0),
(27272,2,9,3761.71,-786.699,195.216,100,5000,20),
-- 3
(27272,3,1,3755.38,-922.119,153.127,100,0,0),
(27272,3,2,3750.67,-901.146,161.173,100,0,0),
(27272,3,3,3741.25,-887.789,162.577,100,0,0),
(27272,3,4,3727.3,-868.605,163.108,100,0,0),
(27272,3,5,3723.94,-845.484,164.412,100,0,0),
(27272,3,6,3736.36,-820.345,171.773,100,0,0),
(27272,3,7,3749.14,-806.239,183.008,100,0,0),
(27272,3,8,3764.51,-787.585,195.332,100,5000,20),
-- 4
(27272,4,1,3752.31,-916.079,155.668,100,0,0),
(27272,4,2,3748.07,-898.965,161.699,100,0,0),
(27272,4,3,3737.04,-884.51,162.63,100,0,0),
(27272,4,4,3726.04,-870.284,162.886,100,0,0),
(27272,4,5,3719.89,-853.31,163.475,100,0,0),
(27272,4,6,3732.47,-827.083,168.714,100,0,0),
(27272,4,7,3745.59,-805.106,182.088,100,0,0),
(27272,4,8,3759.08,-783.63,195.586,100,5000,20),
-- 5
(27272,5,1,3756.79,-919.947,154.152,100,0,0),
(27272,5,2,3746.76,-898.845,161.728,100,0,0),
(27272,5,3,3734.19,-884.347,162.639,100,0,0),
(27272,5,4,3718.83,-868.671,162.741,100,0,0),
(27272,5,5,3719.22,-849.197,163.765,100,0,0),
(27272,5,6,3729.61,-826.981,168.095,100,0,0),
(27272,5,7,3738.98,-812.108,176.171,100,0,0),
(27272,5,8,3755.71,-790.797,192.574,100,5000,20),
-- 6
(27272,6,1,3746.86,-924.978,152.041,100,0,0),
(27272,6,2,3745.09,-907.98,159.116,100,0,0),
(27272,6,3,3740.44,-888.931,162.615,100,0,0),
(27272,6,4,3724.77,-875.874,162.748,100,0,0),
(27272,6,5,3711.94,-859.75,162.801,100,0,0),
(27272,6,6,3721.15,-836.573,165.226,100,0,0),
(27272,6,7,3736.04,-814.785,173.947,100,0,0),
(27272,6,8,3767.07,-797.874,195.003,100,5000,20),
-- 7
(27272,7,1,3744.63,-913.164,157.278,100,0,0),
(27272,7,2,3742.01,-890.672,162.607,100,0,0),
(27272,7,3,3727.26,-877.626,162.733,100,0,0),
(27272,7,4,3713.31,-865.095,162.746,100,0,0),
(27272,7,5,3729.35,-839.904,165.895,100,0,0),
(27272,7,6,3745.97,-814.342,178.517,100,0,0),
(27272,7,7,3764.22,-791.569,194.697,100,5000,20),
-- 8
(27272,8,1,3746.48,-916.725,155.682,100,0,0),
(27272,8,2,3744.78,-898.936,161.756,100,0,0),
(27272,8,3,3738.73,-883.87,162.649,100,0,0),
(27272,8,4,3718.17,-874.006,162.751,100,0,0),
(27272,8,5,3716.36,-847.81,163.819,100,0,0),
(27272,8,6,3728.62,-822.712,169.219,100,0,0),
(27272,8,7,3744.64,-803.611,182.531,100,0,0),
(27272,8,8,3754.98,-783.77,194.75,100,5000,20),
-- 9
(27272,9,1,3755.65,-907.959,159.048,100,0,0),
(27272,9,2,3746.16,-893.054,162.488,100,0,0),
(27272,9,3,3727.84,-882.556,162.821,100,0,0),
(27272,9,4,3712.73,-871.565,162.746,100,0,0),
(27272,9,5,3715.76,-852.085,163.387,100,0,0),
(27272,9,6,3728.18,-829.516,167.199,100,0,0),
(27272,9,7,3743.22,-811.943,177.98,100,0,0),
(27272,9,8,3753.71,-784.884,194.13,100,5000,20),
-- 10
(27272,10,1,3748.38,-904.646,160.164,100,0,0),
(27272,10,2,3741.05,-890.147,162.618,100,0,0),
(27272,10,3,3719.55,-876.981,162.997,100,0,0),
(27272,10,4,3713.36,-849.466,163.673,100,0,0),
(27272,10,5,3724.11,-828.294,166.976,100,0,0),
(27272,10,6,3741.35,-811.121,177.529,100,0,0),
(27272,10,7,3768.36,-800.717,195.072,100,5000,20);

-- Thel'zan the Duskbringer 27384
-- missing added -- duplicates reused
DELETE FROM creature_addon WHERE guid IN (516605);
DELETE FROM creature_movement WHERE id IN (516605);
DELETE FROM game_event_creature WHERE guid IN (516605);
DELETE FROM game_event_creature_data WHERE guid IN (516605);
DELETE FROM creature_battleground WHERE guid IN (516605);
DELETE FROM creature_linking WHERE guid IN (516605)
 OR master_guid IN (516605);
DELETE FROM creature WHERE guid IN (516605);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(516605,27384,571,1,1,0,0,3685.05,-836.932,199.379,1.63291,300,300,0,0,0,0,0,0);
DELETE FROM dbscripts_on_relay WHERE id = 20381;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- invasion
(20381,100,0,0,0,0,0,0,0,2000020535,2000020536,2000020537,2000020536,0,0,0,0,'Part of Thel\'zan the Duskbringer EAI: Random Yell'),
(20381,1000,10,27272,180000,1,0,0,0x08,1,0,0,0,3764.292,-942.5938,145.7236,0.3141593,''),
(20381,1001,10,27272,180000,2,0,0,0x08,1,0,0,0,3752.339,-945.3976,143.0479,1.256637,''),
(20381,1002,10,27272,180000,3,0,0,0x08,1,0,0,0,3760.591,-950.1441,141.4103,6.195919,''),
(20381,1003,10,27272,180000,4,0,0,0x08,1,0,0,0,3757.481,-939.4531,145.7032,0.3839724,''),
(20381,1004,10,27272,180000,5,0,0,0x08,1,0,0,0,3768.753,-946.9601,144.2713,5.462881,''),
(20381,1005,10,27272,180000,6,0,0,0x08,1,0,0,0,3749.531,-952.8386,139.8954,5.8294,''),
(20381,1006,10,27272,180000,7,0,0,0x08,1,0,0,0,3748.177,-939.2743,145.9544,0.6981317,''),
(20381,1007,10,27272,180000,8,0,0,0x08,1,0,0,0,3742.47,-944.4288,144.5338,4.869469,''),
(20381,1008,10,27272,180000,9,0,0,0x08,1,0,0,0,3763.521,-932.7639,150.0766,3.054326,''),
(20381,1009,10,27272,180000,10,0,0,0x08,1,0,0,0,3754.433,-930.7309,149.4531,1.500983,''),
(20381,3000,0,0,0,0,27136,516545,7 | 0x10,2000020538,2000020539,2000020540,2000020540,0,0,0,0,'Part of Thel\'zan the Duskbringer EAI: buddy Random Yell');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020535 AND 2000020540;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020535,'Attack now, my minions! Your master commands it!',0,1,0,0,NULL),
(2000020536,'End this mortal affront to the Lich King!',0,1,0,0,NULL),
(2000020537,'Their defenses are down! The time is now, minions! ATTACK!',0,1,0,0,NULL),
(2000020538,'Legion, to the front lines!',0,1,0,0,NULL),
(2000020539,'Reinforce the gate! Do not let the Scourge through!',0,1,0,0,NULL),
(2000020540,'Hold the line! Legion, focus fire at the gates!',0,1,0,0,NULL);
-- links
DELETE FROM creature_linking WHERE master_guid IN (516595,516576);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(516570, 516595, 1),
(516619, 516595, 1),
(516569, 516595, 1),
(516583, 516576, 1),
(516614, 516576, 1),
(516567, 516576, 1);

-- Inquisitor Hallard 27316
UPDATE creature_template SET MovementType = 2 WHERE entry = 27316;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 27316;
DELETE FROM creature_movement_template WHERE entry = 27316;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(27316,1,3797.918,-677.4138,213.7526,100,0,0),
(27316,2,3804.538,-679.7092,213.7526,100,0,0);
