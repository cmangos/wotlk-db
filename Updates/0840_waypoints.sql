-- The Den of Flame
-- Firemane Scout
UPDATE creature SET position_x = -4448.435, position_y = -2914.731, position_z = 20.55721, orientation = 5.0395500, spawndist = 0, MovementType = 2 WHERE guid = 31616;
UPDATE creature SET position_x = -4452.067, position_y = -2977.006, position_z = 30.64314, orientation = 5.6723590, spawndist = 0, MovementType = 2 WHERE guid = 31626;
UPDATE creature SET position_x = -4333.935, position_y = -3008.985, position_z = 34.01476, orientation = 1.5013830, spawndist = 0, MovementType = 2 WHERE guid = 31623;

-- Firemane Ash Tail
UPDATE creature SET position_x = -4383.387, position_y = -2984.997, position_z = 28.88683, orientation = 0.1726341, spawndist = 2, MovementType = 1 WHERE guid = 31625;
UPDATE creature SET position_x = -4415.678, position_y = -3000.188, position_z = 28.20975, orientation = 5.2995680, spawndist = 2, MovementType = 1 WHERE guid = 31615;
UPDATE creature SET position_x = -4431.126, position_y = -2939.821, position_z = 23.46966, orientation = 5.5370900, spawndist = 2, MovementType = 1 WHERE guid = 31618;
UPDATE creature SET position_x = -4412.893, position_y = -2942.533, position_z = 22.88504, orientation = 1.8459010, spawndist = 2, MovementType = 1 WHERE guid = 31620;
UPDATE creature SET position_x = -4469.716, position_y = -2896.414, position_z = 22.11234, orientation = 4.2247720, spawndist = 2, MovementType = 1 WHERE guid = 31621;

-- Firemane Scalebane
UPDATE creature SET position_x = -4454.825, position_y = -2904.345, position_z = 21.02311, orientation = 2.7863420, spawndist = 2, MovementType = 1 WHERE guid = 31622;
UPDATE creature SET position_x = -4466.144, position_y = -2962.619, position_z = 26.53126, orientation = 3.1066861, spawndist = 2, MovementType = 1 WHERE guid = 31617;
UPDATE creature SET position_x = -4387.584, position_y = -2928.626, position_z = 24.66944, orientation = 0.5670697, spawndist = 2, MovementType = 1 WHERE guid = 31607;
UPDATE creature SET position_x = -4421.293, position_y = -2960.128, position_z = 26.11180, orientation = 4.4439840, spawndist = 2, MovementType = 1 WHERE guid = 31619;
UPDATE creature SET position_x = -4388.662, position_y = -2961.314, position_z = 24.35190, orientation = 3.7707260, spawndist = 2, MovementType = 1 WHERE guid = 31608;

-- Waypoints
DELETE FROM creature_movement WHERE id = 31616;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(31616,1, -4443.691, -2928.712, 22.04272, 0, 0,100),
(31616,2, -4431.864, -2935.958, 23.04292, 0, 0,100),
(31616,3, -4420.255, -2937.771, 23.95816, 0, 0,100),
(31616,4, -4410.643, -2947.228, 23.36910, 0, 0,100),
(31616,5, -4412.815, -2957.901, 24.54942, 0, 0,100),
(31616,6, -4421.941, -2964.941, 27.20126, 0, 0,100),
(31616,7, -4421.415, -2977.885, 27.73011, 0, 0,100),
(31616,8, -4419.654, -2990.074, 27.66508, 0, 0,100),
(31616,9, -4411.856, -3004.695, 27.96639, 0, 0,100),
(31616,10, -4419.654, -2990.074, 27.66508, 0, 0,100),
(31616,11, -4421.415, -2977.885, 27.73011, 0, 0,100),
(31616,12, -4422.027, -2965.007, 27.22512, 0, 0,100),
(31616,13, -4412.815, -2957.901, 24.54942, 0, 0,100),
(31616,14, -4410.653, -2947.277, 23.37727, 0, 0,100),
(31616,15, -4420.255, -2937.771, 23.95816, 0, 0,100),
(31616,16, -4431.864, -2935.958, 23.04292, 0, 0,100),
(31616,17, -4443.691, -2928.712, 22.04272, 0, 0,100),
(31616,18, -4448.120, -2915.050, 20.44144, 0, 0,100);

DELETE FROM creature_movement WHERE id = 31626;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(31626,1, -4440.975, -2984.773, 32.18065, 0, 0,100),
(31626,2, -4433.097, -2992.998, 32.72016, 0, 0,100),
(31626,3, -4424.888, -2997.458, 30.28918, 0, 0,100),
(31626,4, -4417.074, -3005.556, 28.29170, 0, 0,100),
(31626,5, -4405.881, -3010.471, 29.57267, 0, 0,100),
(31626,6, -4395.946, -3004.020, 29.88170, 0, 0,100),
(31626,7, -4387.627, -2992.390, 28.92841, 0, 0,100),
(31626,8, -4372.424, -2981.460, 28.47298, 0, 0,100),
(31626,9, -4387.627, -2992.390, 28.92841, 0, 0,100),
(31626,10, -4395.946, -3004.020, 29.88170, 0, 0,100),
(31626,11, -4405.881, -3010.471, 29.57267, 0, 0,100),
(31626,12, -4417.074, -3005.556, 28.29170, 0, 0,100),
(31626,13, -4424.888, -2997.458, 30.28918, 0, 0,100),
(31626,14, -4433.097, -2992.998, 32.72016, 0, 0,100),
(31626,15, -4440.964, -2984.785, 32.20508, 0, 0,100),
(31626,16, -4459.078, -2975.042, 30.53139, 0, 0,100);

DELETE FROM creature_movement WHERE id = 31623;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(31623,1, -4342.521, -2992.780, 33.28340, 0, 0,100),
(31623,2, -4351.712, -2985.168, 29.92367, 0, 0,100),
(31623,3, -4374.679, -2985.326, 28.56307, 0, 0,100),
(31623,4, -4387.825, -2992.035, 28.92841, 0, 0,100),
(31623,5, -4391.068, -2983.466, 28.65237, 0, 0,100),
(31623,6, -4380.016, -2973.528, 25.06419, 0, 0,100),
(31623,7, -4381.359, -2963.568, 24.38454, 0, 0,100),
(31623,8, -4387.651, -2957.170, 24.26684, 0, 0,100),
(31623,9, -4388.503, -2945.418, 24.64533, 0, 0,100),
(31623,10, -4394.577, -2933.038, 23.81786, 0, 0,100),
(31623,11, -4388.505, -2945.389, 24.66739, 0, 0,100),
(31623,12, -4387.651, -2957.170, 24.26684, 0, 0,100),
(31623,13, -4381.359, -2963.568, 24.38454, 0, 0,100),
(31623,14, -4380.016, -2973.528, 25.06419, 0, 0,100),
(31623,15, -4391.068, -2983.466, 28.65237, 0, 0,100),
(31623,16, -4387.825, -2992.035, 28.92841, 0, 0,100),
(31623,17, -4374.696, -2985.326, 28.55239, 0, 0,100),
(31623,18, -4351.712, -2985.168, 29.92367, 0, 0,100),
(31623,19, -4342.719, -2992.512, 33.16042, 0, 0,100),
(31623,20, -4334.247, -3013.634, 33.87857, 0, 0,100);
