-- Coldrock Quarry - Borean Tundra

-- Duplicates
DELETE FROM creature WHERE guid IN (97332,97492,97460,105452,105457);
DELETE FROM creature_addon WHERE guid IN (97332,97492,97460,105452,105457);
DELETE FROM creature_movement WHERE id IN (97332,97492,97460,105452,105457);
DELETE FROM game_event_creature WHERE guid IN (97332,97492,97460,105452,105457);
DELETE FROM game_event_creature_data WHERE guid IN (97332,97492,97460,105452,105457);
DELETE FROM creature_battleground WHERE guid IN (97332,97492,97460,105452,105457);
DELETE FROM creature_linking WHERE guid IN (97332,97492,97460,105452,105457) OR master_guid IN (97332,97492,97460,105452,105457);

-- Beryl Treasure Hunter
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25353);
DELETE FROM creature_template_addon WHERE entry = 25353;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(25353,0,0,0,0,0,0,NULL);
-- positions corrected
UPDATE creature SET position_x = 3698.55, position_y = 5497.75, position_z = 42.1989 WHERE guid = 97310;
UPDATE creature SET position_x = 3602.382080, position_y = 5520.845703, position_z = 26.938219 WHERE guid = 97320;
UPDATE creature SET position_x = 3584.463379, position_y = 5428.640137, position_z = 41.077976 WHERE guid = 97301;
UPDATE creature SET position_x = 3683.806641, position_y = 5701.850586, position_z = 64.212563 WHERE guid = 97333;
UPDATE creature SET position_x = 3661.211670, position_y = 5516.781738, position_z = 33.423817 WHERE guid = 97313;
UPDATE creature SET position_x = 3647.192139, position_y = 5526.584473, position_z = 32.901333 WHERE guid = 97330;
UPDATE creature SET position_x = 3683.925049, position_y = 5562.146484, position_z = 35.737587 WHERE guid = 97327;
UPDATE creature SET position_x = 3668.294189, position_y = 5633.632324, position_z = 33.914257 WHERE guid = 97315;
-- waypoints
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (97322,97301,97314,97319,97318,97328);
DELETE FROM creature_movement WHERE id IN (97322,97301,97314,97319,97318,97328);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #97322
(97322,1,3581.23,5518.85,26.9443,0,0,0.540895),
(97322,2,3595.38,5521.37,26.9386,0,0,0.0806515),
(97322,3,3581.74,5518.64,26.9413,0,0,3.72804),
(97322,4,3569.83,5499.18,26.9898,0,0,4.25504),
(97322,5,3558.16,5462.1,32.3818,0,0,4.41604),
(97322,6,3569.9,5498.6,27.009,0,0,1.09773),
-- #97301
(97301,1,3580.98,5442.65,40.3015,0,0,1.36596),
(97301,2,3586.1,5458.82,36.2681,0,0,1.1971),
(97301,3,3583.17,5442.59,40.2846,0,0,4.82957),
(97301,4,3585.67,5429.28,40.8357,45000,2535301,4.65979),
-- #97314
(97314,1,3703.33,5622.05,32.6789,0,0,5.5944),
(97314,2,3716.48,5615.71,33.3071,0,0,0.0219874),
(97314,3,3729.76,5623.25,36.1016,0,0,0.571766),
(97314,4,3746.8,5633.75,41.4685,0,0,0.29295),
(97314,5,3726.15,5620.33,35.1378,0,0,3.55235),
(97314,6,3712.83,5616.4,32.9453,0,0,3.05755),
(97314,7,3702.73,5621.68,32.6933,0,0,2.44494),
(97314,8,3697.31,5633.06,32.6996,0,0,1.79699),
(97314,9,3697.13,5645.96,32.267,0,0,1.0535),
(97314,10,3700.73,5653.18,32.267,0,0,0.841447),
(97314,11,3705.66,5658.69,32.2669,0,0,0.760262),
(97314,12,3700.73,5653.18,32.267,0,0,0.841447),
(97314,13,3697.13,5645.96,32.267,0,0,1.0535),
(97314,14,3697.24,5633.3,32.6992,0,0,4.87574),
-- #97319
(97319,1,3516.69,5504.3,64.1351,0,0,1.27661),
(97319,2,3519.21,5515.52,65.2577,0,0,1.02921),
(97319,3,3527.98,5526.89,65.2705,0,0,1.10931),
(97319,4,3530.32,5541.17,65.151,0,0,1.63867),
(97319,5,3527.1,5526.24,65.3336,0,0,4.08047),
(97319,6,3518.15,5512.39,64.9481,0,0,4.41426),
(97319,7,3516.18,5488.2,60.3589,0,0,4.66951),
(97319,8,3513.05,5465.07,57.0775,0,0,4.36714),
(97319,9,3516.84,5504.5,64.1396,0,0,1.44938),
-- #97318
(97318,1,3561.02,5603.19,41.0222,0,0,0.133837),
(97318,2,3570.43,5604.21,33.7373,0,0,6.10208),
(97318,3,3576.83,5602.02,31.7826,0,0,5.87824),
(97318,4,3593.9,5587.34,29.9182,0,0,5.54973),
(97318,5,3574.38,5603.68,32.3278,0,0,2.80948),
(97318,6,3569.97,5604.73,34.0062,0,0,3.16945),
(97318,7,3560.7,5603.18,41.2909,0,0,3.28491),
(97318,8,3547.96,5600.96,50.8424,0,0,3.24956),
(97318,9,3528.6,5597.3,60.8405,0,0,3.35559),
(97318,10,3541.19,5600.07,54.9525,0,0,0.111897),
(97318,11,3551.03,5600.72,48.8132,0,0,0.115824),
-- #97328
(97328,1,3539.58,5619.86,53.3649,0,0,5.32145),
(97328,2,3546.11,5607.13,51.6206,0,0,4.92483),
(97328,3,3548.91,5595.89,50.3506,0,0,4.69706),
(97328,4,3549.53,5584.77,48.7625,0,0,4.53999),
(97328,5,3547.91,5577.27,48.8066,0,0,4.5557),
(97328,6,3550.59,5590.56,48.8464,0,0,1.61438),
(97328,7,3546.38,5606.89,51.4683,0,0,1.94817),
(97328,8,3539.13,5619.74,53.3814,0,0,2.07722),
(97328,9,3531.79,5632.83,53.7722,0,0,1.97119),
(97328,10,3527.12,5651.48,57.6496,0,0,1.58006),
(97328,11,3533.17,5630.73,53.6281,0,0,5.16775);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2535301; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2535301,2,20,1,5,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 1:random'),
(2535301,43,20,2,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoints');

-- Beryl Hound
UPDATE creature SET position_x = 3697.175293, position_y = 5520.191895, position_z = 40.766190, MovementType = 1, spawndist = 5 WHERE guid = 97484;
UPDATE creature SET position_x = 3688.816162, position_y = 5546.511230, position_z = 37.775921, MovementType = 1, spawndist = 5 WHERE guid = 97500;
UPDATE creature SET position_x = 3676.831543, position_y = 5584.134766, position_z = 33.012665, MovementType = 1, spawndist = 5 WHERE guid = 97498;
UPDATE creature SET position_x = 3633.082275, position_y = 5577.291992, position_z = 31.769627, MovementType = 1, spawndist = 5 WHERE guid = 97501;
UPDATE creature SET position_x = 3715.502441, position_y = 5613.222656, position_z = 33.187889, MovementType = 1, spawndist = 5 WHERE guid = 97493;
UPDATE creature SET position_x = 3690.352295, position_y = 5635.120605, position_z = 32.691547, MovementType = 1, spawndist = 5 WHERE guid = 97495;
UPDATE creature SET position_x = 3683.025635, position_y = 5615.077148, position_z = 32.697510, MovementType = 1, spawndist = 5 WHERE guid = 97494;

-- Kaskala Craftsman
DELETE FROM creature_addon WHERE guid IN (117964,117965,117966,117967,117968,117969,117970,117971,117972,117973,117974,117975,117976);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
-- these group must sit.
(117967,0,1,0,0,0,0,NULL),
(117971,0,1,0,0,0,0,NULL),
(117973,0,1,0,0,0,0,NULL),
(117974,0,1,0,0,0,0,NULL),
(117975,0,1,0,0,0,0,NULL),
-- others
(117964,0,0,0,0,0,0,NULL),
(117965,0,0,0,0,0,0,NULL),
(117966,0,0,0,0,0,0,NULL),
(117968,0,0,0,0,0,0,NULL),
(117969,0,0,0,0,0,0,NULL),
(117970,0,0,0,0,0,0,NULL),
(117972,0,0,0,0,0,0,NULL),
(117976,0,0,0,0,0,0,NULL);
-- waypoints
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (117964,117965,117966,117968,117969,117970,117972,117976);
DELETE FROM creature_movement WHERE id IN (117964,117965,117966,117968,117969,117970,117972,117976);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #117964
(117964,1,3599.76,5529.71,27.1876,45000,2532101,2.07694),
-- #117965
(117965,1,3698.64,5541.16,37.7789,3000,0,0.15708),
(117965,2,3698.64,5541.16,37.7789,48000,2532101,0.15708),
-- #117966
(117966,1,3617.37,5535.98,27.0259,45000,2532101,1.48353),
-- #117968
(117968,1,3625.21,5636.66,30.1231,45000,2532101,4.04916),
-- #117969
(117969,1,3703.18,5525.87,39.6872,3000,0,0.523599),
(117969,2,3703.18,5525.87,39.6872,48000,2532101,0.523599),
-- #117970
(117970,1,3725.75,5539.01,38.8668,45000,2532101,2.84489),
-- #117972
(117972,1,3654.45,5641.67,34.5135,2000,0,2.19912),
(117972,2,3654.45,5641.67,34.5135,48000,2532101,2.19912),
-- #117976
(117976,1,3656.58,5625.51,32.5816,45000,2532101,1.8326);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2532101; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2532101,3,1,173,0,0,0,0,69,0,0,0,0,0,0,0,'random emote'),
(2532101,43,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Kaskala Shaman
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25322);
DELETE FROM creature_template_addon WHERE entry = 25322;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(25322,0,0,0,0,0,0,28892);

-- Beryl Reclaimer
UPDATE creature SET position_x = 3560.479980, position_y = 5534.978516, position_z = 27.343435, orientation = 2.342632, MovementType = 0, spawndist = 0 WHERE guid = 105474;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25449);
DELETE FROM creature_template_addon WHERE entry = 25449;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(25449,0,0,0,0,233,0,NULL);
