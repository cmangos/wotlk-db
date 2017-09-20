-- Defias Cutpurse
UPDATE creature SET position_x = -9162.370, position_y = 84.631480, position_z = 77.07617, orientation = 1.9198620, spawndist = 0, MovementType = 0 WHERE guid = 79888;
UPDATE creature SET position_x = -9158.634, position_y = 88.107510, position_z = 76.49521, orientation = 3.0543260, spawndist = 0, MovementType = 0 WHERE guid = 79889;
UPDATE creature SET position_x = -9162.569, position_y = 94.547660, position_z = 76.35566, orientation = 3.7873640, spawndist = 0, MovementType = 0 WHERE guid = 79890;
UPDATE creature SET position_x = -9184.273, position_y = 82.996860, position_z = 77.86783, orientation = 0.0000000, spawndist = 0, MovementType = 2 WHERE guid = 79887;
UPDATE creature SET position_x = -9116.321, position_y = 16.190760, position_z = 86.14124, orientation = 1.0677300, spawndist = 15, MovementType = 1 WHERE guid = 79923;
UPDATE creature SET position_x = -9141.669, position_y = 56.511390, position_z = 77.68613, orientation = 2.0935140, spawndist = 15, MovementType = 1 WHERE guid = 79896;
UPDATE creature SET position_x = -9214.206, position_y = 80.014870, position_z = 77.45210, orientation = 1.0415570, spawndist = 15, MovementType = 1 WHERE guid = 79898;
UPDATE creature SET position_x = -9179.804, position_y = 48.759660, position_z = 78.35671, orientation = 5.4723920, spawndist = 15, MovementType = 1 WHERE guid = 79897;
UPDATE creature SET position_x = -9123.283, position_y = 45.507810, position_z = 81.52477, orientation = 4.9890800, spawndist = 15, MovementType = 1 WHERE guid = 79917;
UPDATE creature SET position_x = -9183.929, position_y = 115.31280, position_z = 75.07649, orientation = 1.0465970, spawndist = 15, MovementType = 1 WHERE guid = 79891;
UPDATE creature SET position_x = -9214.404, position_y = 15.256180, position_z = 77.98733, orientation = 3.7409980, spawndist = 15, MovementType = 1 WHERE guid = 79907;
UPDATE creature SET position_x = -9248.432, position_y = 49.446070, position_z = 73.65561, orientation = 4.6946450, spawndist = 15, MovementType = 1 WHERE guid = 79893;
UPDATE creature SET position_x = -9250.834, position_y = -13.69976, position_z = 73.14429, orientation = 0.4549955, spawndist = 15, MovementType = 1 WHERE guid = 79901;
UPDATE creature SET position_x = -9217.810, position_y = 149.22080, position_z = 72.47248, orientation = 0.2108259, spawndist = 15, MovementType = 1 WHERE guid = 79892;
UPDATE creature SET position_x = -9186.959, position_y = 178.84030, position_z = 73.43199, orientation = 2.6360890, spawndist = 15, MovementType = 1 WHERE guid = 79885;
UPDATE creature SET position_x = -9250.160, position_y = 118.22270, position_z = 72.34116, orientation = 1.2651140, spawndist = 15, MovementType = 1 WHERE guid = 79653;

-- Duplicates Removed
DELETE FROM creature_addon WHERE guid IN (80264, 80269, 80265, 80268, 80275, 80267, 80271, 80277, 80276, 80279);
DELETE FROM creature_movement WHERE id IN (80264, 80269, 80265, 80268, 80275, 80267, 80271, 80277, 80276, 80279);
DELETE FROM game_event_creature WHERE guid IN (80264, 80269, 80265, 80268, 80275, 80267, 80271, 80277, 80276, 80279);
DELETE FROM game_event_creature_data WHERE guid IN (80264, 80269, 80265, 80268, 80275, 80267, 80271, 80277, 80276, 80279);
DELETE FROM creature_battleground WHERE guid IN (80264, 80269, 80265, 80268, 80275, 80267, 80271, 80277, 80276, 80279);
DELETE FROM creature_linking WHERE guid IN (80264, 80269, 80265, 80268, 80275, 80267, 80271, 80277, 80276, 80279)
OR master_guid IN (80264, 80269, 80265, 80268, 80275, 80267, 80271, 80277, 80276, 80279);
DELETE FROM creature WHERE guid IN (80264, 80269, 80265, 80268, 80275, 80267, 80271, 80277, 80276, 80279);

-- waypoints
DELETE FROM creature_movement WHERE id = 79887;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(79887, 1, -9146.521, 63.78884, 77.43713, 3000, 0, 100),
(79887, 2, -9181.747, 81.59439, 77.80011, 5000, 0, 100);
