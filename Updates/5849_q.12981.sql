-- q.12981 'Hot and Cold'
-- c.30387 Seething Revenant
DELETE FROM creature_addon WHERE guid BETWEEN 527910 AND 527916;
DELETE FROM creature_movement WHERE id BETWEEN 527910 AND 527916;
DELETE FROM game_event_creature WHERE guid BETWEEN 527910 AND 527916;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 527910 AND 527916;
DELETE FROM creature_battleground WHERE guid BETWEEN 527910 AND 527916;
DELETE FROM creature_linking WHERE guid BETWEEN 527910 AND 527916;
DELETE FROM creature WHERE guid BETWEEN 527910 AND 527916;
UPDATE creature SET position_x = 7218.1836, position_y = -3625.1182, position_z = 823.2442, spawndist = 12, MovementType = 1 WHERE guid = 527903;
UPDATE creature SET position_x = 7244.91, position_y = -3643.25, position_z = 823.654, spawndist = 12, MovementType = 1 WHERE guid = 527905;
UPDATE creature SET position_x = 7210.83, position_y = -3653.67, position_z = 823.267, spawndist = 12, MovementType = 1 WHERE guid = 527906;
UPDATE creature SET position_x = 7239.14, position_y = -3667.37, position_z = 823.336, spawndist = 12, MovementType = 1 WHERE guid = 527907;
UPDATE creature SET position_x = 7208.5303, position_y = -3404.6667, position_z = 841.30365, spawndist = 0, MovementType = 4 WHERE guid = 527900;
UPDATE creature SET position_x = 7204.195, position_y = -3507.6594, position_z = 829.25073, spawndist = 0, MovementType = 4 WHERE guid = 527901;
UPDATE creature SET position_x = 7188.0874, position_y = -3492.7253, position_z = 834.89575, spawndist = 0, MovementType = 4 WHERE guid = 527902;
UPDATE creature SET position_x = 7150.118, position_y = -3607.1545, position_z = 834.9812, spawndist = 0, MovementType = 4 WHERE guid = 527904;
UPDATE creature SET position_x = 7231.2554, position_y = -3477.0532, position_z = 850.0874, spawndist = 0, MovementType = 4 WHERE guid = 527908;
UPDATE creature SET position_x = 7221.1177, position_y = -3536.5835, position_z = 827.92725, spawndist = 0, MovementType = 4 WHERE guid = 527909;
DELETE FROM creature_movement WHERE id IN (527900,527901,527902,527904,527908,527909);
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- 527900
(527900,1,7208.5303,-3404.6667,841.30365,100,500,0),
(527900,2,7216.311,-3414.78,839.7378,100,0,0),
(527900,3,7219.605,-3431.3442,837.98773,100,0,0),
(527900,4,7211.4927,-3455.2402,836.2132,100,500,0),
-- 527901
(527901,1,7204.195,-3507.6594,829.25073,100,500,0),
(527901,2,7196.851,-3522.3264,827.15686,100,0,0),
(527901,3,7191.0063,-3532.4207,826.81067,100,0,0),
(527901,4,7172.2554,-3552.5618,826.83044,100,0,0),
(527901,5,7179.7114,-3561.8425,826.8965,100,0,0),
(527901,6,7180.917,-3572.8093,826.3928,100,0,0),
(527901,7,7184.9463,-3583.4563,826.3612,100,500,0),
-- 527902
(527902,1,7188.0874,-3492.7253,834.89575,100,500,0),
(527902,2,7175.858,-3514.0916,832.1039,100,0,0),
(527902,3,7163.2573,-3518.3267,834.98975,100,0,0),
(527902,4,7153.417,-3528.0361,834.5294,100,500,0),
-- 527904
(527904,1,7150.118,-3607.1545,834.9812,100,500,0),
(527904,2,7136.712,-3589.2622,838.52997,100,0,0),
(527904,3,7148.1846,-3570.4844,831.4774,100,0,0),
(527904,4,7139.0327,-3549.1946,832.1936,100,500,0),
-- 527908
(527908,1,7231.2554,-3477.0532,850.0874,100,500,0),
(527908,2,7231.6514,-3490.8909,844.68463,100,0,0),
(527908,3,7224.81,-3509.56,833.598,100,500,0), -- to confirm
-- 527909
(527909,1,7221.1177,-3536.5835,827.92725,100,500,0),
(527909,2,7211.1035,-3552.0928,827.74963,100,0,0),
(527909,3,7212.6187,-3567.4624,824.95886,100,0,0),
(527909,4,7218.3057,-3577.0261,824.26044,100,500,0);
