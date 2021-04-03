-- Drak'atal Passage - Grizzly Hills

-- Duplicates
DELETE FROM creature_addon WHERE guid IN (515583,515549,515559);
DELETE FROM creature_movement WHERE id IN (515583,515549,515559);
DELETE FROM game_event_creature WHERE guid IN (515583,515549,515559);
DELETE FROM game_event_creature_data WHERE guid IN (515583,515549,515559);
DELETE FROM creature_battleground WHERE guid IN (515583,515549,515559);
DELETE FROM creature_linking WHERE guid IN (515583,515549,515559)
 OR master_guid IN (515583,515549,515559);
DELETE FROM creature WHERE guid IN (515583,515549,515559);

-- Injured Drakkari Refugee 27554
DELETE FROM creature_template_addon WHERE entry IN (27554);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(27554,0,3,1,0,0,0,NULL);
-- Updates
UPDATE creature SET position_x = 4478.263, position_y = -3479.917, position_z = 227.3073, orientation = 0.8203048 WHERE guid = 518942;
UPDATE creature SET position_x = 4473.695, position_y = -3485.465, position_z = 227.3755, orientation = 2.530727 WHERE guid = 518943;
UPDATE creature SET position_x = 4469.003, position_y = -3480.424, position_z = 227.4789, orientation = 0.6806784 WHERE guid = 518944;
UPDATE creature SET position_x = 4501.79, position_y = -3634.068, position_z = 232.3762, orientation = 0.06981317 WHERE guid = 518928;
UPDATE creature SET position_x = 4494.598, position_y = -3633.036, position_z = 232.6665, orientation = 3.316126 WHERE guid = 518924;
UPDATE creature SET position_x = 4499.478, position_y = -3608.277, position_z = 229.9434, orientation = 6.073746 WHERE guid = 518923;
UPDATE creature SET position_x = 4515.4, position_y = -3402.283, position_z = 227.0153, orientation = 5.61996 WHERE guid = 518932;
UPDATE creature SET position_x = 4506.567, position_y = -3397.697, position_z = 229.2114, orientation = 2.234021 WHERE guid = 518949;
UPDATE creature SET position_x = 4512.268, position_y = -3393.344, position_z = 229.1694, orientation = 1.867502 WHERE guid = 518946;
UPDATE creature SET position_x = 4610.646, position_y = -3473.166, position_z = 227.0153, orientation = 2.234021 WHERE guid = 518947;
UPDATE creature SET position_x = 4600.422, position_y = -3458.3, position_z = 227.685, orientation = 5.323254 WHERE guid = 518939;
UPDATE creature SET position_x = 4522.704, position_y = -3409.06, position_z = 227.0153, orientation = 2.321288, MovementType = 0, spawndist = 0 WHERE guid = 518940;
UPDATE creature SET position_x = 4525.922, position_y = -3391.216, position_z = 227.0163, orientation = 1.265301, MovementType = 0, spawndist = 0 WHERE guid = 518945;

-- Drakkari Witch Doctor 27555
UPDATE creature SET position_x = 4598.13, position_y = -3479.92, position_z = 227.22, orientation = 0.664123 WHERE guid = 518950;
UPDATE creature SET position_x = 4508.621, position_y = -3389.632, position_z = 229.384, orientation = 0.824610 WHERE guid = 518954;
UPDATE creature SET position_x = 4520.347, position_y = -3406.774, position_z = 226.932, orientation = 2.521068 WHERE guid = 518956;
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (518950,518951,518952,518953,518954,518955,518956);
DELETE FROM creature_movement WHERE id IN (518950,518951,518952,518953,518954,518955,518956);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 518950
(518950,1,4610.46,-3470.65,226.933,100,0,0),
(518950,2,4603.11,-3459.59,227.323,100,0,0),
(518950,3,4587.85,-3470.46,226.98,100,0,0),
(518950,4,4597.86,-3479.45,227.245,100,0,0),
-- 518951
(518951,1,4543.75,-3644.82,228.792,100,0,0),
(518951,2,4534.62,-3644.41,228.792,100,0,0),
(518951,3,4526.82,-3643.56,228.793,100,0,0),
(518951,4,4534.24,-3644.39,228.793,100,0,0),
(518951,5,4543.46,-3645.08,228.793,100,0,0),
(518951,6,4548.76,-3638.68,228.915,100,0,0),
(518951,7,4549.16,-3624.51,229.708,100,0,0),
(518951,8,4548.76,-3638.58,228.923,100,0,0),
-- 518952
(518952,1,4543.36,-3543.21,229.267,100,0,0),
(518952,2,4536.25,-3551.44,230.001,100,0,0),
(518952,3,4535.4,-3560.02,231.441,100,0,0),
(518952,4,4549.48,-3559.47,230.941,100,0,0),
(518952,5,4558.28,-3553.99,230.949,100,0,0),
(518952,6,4551.16,-3541.52,228.845,100,0,0),
-- 518953
(518953,1,4498.88,-3653.05,229.667,100,0,0),
(518953,2,4508.35,-3642.59,229.007,100,0,0),
(518953,3,4513.01,-3636.4,228.793,100,0,0),
(518953,4,4514.03,-3620.1,228.958,100,0,0),
(518953,5,4508.69,-3608.7,229.962,100,0,0),
(518953,6,4500.57,-3602.47,230.355,100,0,0),
(518953,7,4490.89,-3607.48,229.903,100,0,0),
(518953,8,4485.29,-3616.73,230.561,100,0,0),
(518953,9,4485.8,-3628.55,230.62,100,0,0),
(518953,10,4487.99,-3641.23,230.222,100,0,0),
-- 518954
(518954,1,4501.85,-3395.07,229.64,100,0,0),
(518954,2,4493.19,-3402.62,228.25,100,0,0),
(518954,3,4501.42,-3395.47,229.597,100,0,0),
(518954,4,4508.57,-3389.56,229.384,100,0,0),
-- 518955
(518955,1,4470.5,-3490,227.348,100,0,0),
(518955,2,4462.56,-3482.26,227.588,100,0,0),
(518955,3,4466.32,-3472.63,227.544,100,0,0),
(518955,4,4476.72,-3467.58,227.157,100,0,0),
(518955,5,4483.9,-3478.04,226.934,100,0,0),
(518955,6,4479.97,-3487.15,226.933,100,0,0),
-- 518956
(518956,1,4517.3,-3403.97,226.932,100,0,0),
(518956,2,4526.81,-3393.01,226.932,100,0,0),
(518956,3,4533.44,-3395.42,228.161,100,0,0),
(518956,4,4527.9,-3402.81,226.941,100,0,0),
(518956,5,4520.27,-3406.5,226.932,100,0,0);

-- Serpent Defender 29693
UPDATE creature SET position_x = 4492.192383, position_y = -3487.442139, position_z = 226.969345, MovementType = 1, spawndist = 5 WHERE guid = 526036;

-- Scourge Corpserender 26461
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 26461;

-- Drakkari Defender 26704
UPDATE creature SET position_x = 4480.627, position_y = -3524.267, position_z = 230.4038, orientation = 3.839724 WHERE guid = 515561;
UPDATE creature SET position_x = 4529.131836, position_y = -3374.486084, position_z = 230.436462, orientation = 3.696099 WHERE guid = 515547;
UPDATE creature SET position_x = 4633.19, position_y = -3452.11, position_z = 230.723, MovementType = 1, spawndist = 7 WHERE guid = 515551;
UPDATE creature SET position_x = 4557.477051, position_y = -3481.294434, position_z = 226.932510, MovementType = 1, spawndist = 5 WHERE guid = 515567;
UPDATE creature SET position_x = 4554.353027, position_y = -3470.863770, position_z = 226.932510, MovementType = 1, spawndist = 5 WHERE guid = 515558;
UPDATE creature SET position_x = 4547.916504, position_y = -3473.852051, position_z = 226.932510, MovementType = 1, spawndist = 5 WHERE guid = 515553;
UPDATE creature SET position_x = 4520.332520, position_y = -3445.326660, position_z = 226.932297, MovementType = 1, spawndist = 5 WHERE guid = 515548;
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (515547,515552,515562,515556,515566);
DELETE FROM creature_movement WHERE id IN (515547,515552,515562,515556,515566);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 515547
(515547,1,4508.47,-3388.53,229.406,100,0,0),
(515547,2,4489.67,-3401.52,228.172,100,0,0),
(515547,3,4508.27,-3388.67,229.405,100,0,0),
(515547,4,4528.94,-3374.74,230.347,100,0,0),
(515547,5,4535.32,-3381.27,229.542,100,0,0),
(515547,6,4545.24,-3390.2,229.363,100,0,0),
(515547,7,4535.9,-3381.75,229.522,100,0,0),
(515547,8,4529.18,-3374.49,230.437,100,0,0),
-- 515552
(515552,1,4451.34,-3435.32,233.804,100,0,0),
(515552,2,4456.7,-3443.43,231.47,100,0,0),
(515552,3,4467.06,-3456.67,228.201,100,0,0),
(515552,4,4456.99,-3443.57,231.377,100,0,0),
(515552,5,4451.16,-3435.81,233.751,100,0,0),
(515552,6,4459.52,-3429.22,233.106,100,0,0),
(515552,7,4471.89,-3419.28,231.374,100,0,0),
-- 515556
(515556,1,4492.43,-3653.7,229.579,100,0,0),
(515556,2,4511.66,-3660.48,229.334,100,0,0),
(515556,3,4530.32,-3668.1,229.271,100,0,0),
(515556,4,4512.18,-3660.64,229.329,100,0,0),
-- 515562
(515562,1,4551.68,-3543.8,229.105,100,0,0),
(515562,2,4542.71,-3532.92,227.969,100,0,0),
(515562,3,4532.45,-3520.82,227.562,100,0,0),
(515562,4,4542.35,-3532.48,227.882,100,0,0),
(515562,5,4551.31,-3543.25,229.021,100,0,0),
(515562,6,4560.38,-3535.61,228.752,100,0,0),
(515562,7,4574.36,-3523.13,229.302,100,0,0),
(515562,8,4560.99,-3535.19,228.778,100,0,0),
-- 515566
(515566,1,4526.77,-3490.09,226.932,100,0,0),
(515566,2,4516.58,-3509.9,227.067,100,0,0),
(515566,3,4536.96,-3505.26,226.933,100,0,0),
(515566,4,4516.96,-3509.61,227.029,100,0,0);
