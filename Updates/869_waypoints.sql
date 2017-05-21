-- Orebor Harborage Defender
-- #67970
UPDATE creature SET position_x = 1017.432, position_y = 7427.671, position_z = 27.76372, orientation = 3.289561, spawndist = 0, MovementType = 2 WHERE guid = 67970;
DELETE FROM creature_movement WHERE id = 67970;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(67970, 1, 1004.711, 7425.775, 28.55772, 0, 0, 100),
(67970, 2, 995.1239, 7411.336, 30.06524, 0, 0, 100),
(67970, 3, 970.0673, 7389.996, 29.12968, 0, 0, 100),
(67970, 4, 962.5223, 7357.771, 29.35753, 0, 0, 100),
(67970, 5, 1003.624, 7363.866, 36.45819, 0, 0, 100),
(67970, 6, 1015.877, 7338.288, 36.45819, 0, 0, 100),
(67970, 7, 1012.517, 7296.554, 48.12188, 0, 0, 100),
(67970, 8, 1007.740, 7257.627, 58.16153, 0, 0, 100),
(67970, 9, 1007.568, 7244.737, 62.58121, 0, 0, 100),
(67970, 10, 1015.859, 7241.341, 63.39920, 0, 0, 100),
(67970, 11, 1019.792, 7276.732, 53.17327, 0, 0, 100),
(67970, 12, 1025.131, 7317.827, 41.22662, 0, 0, 100),
(67970, 13, 1033.904, 7346.445, 38.03587, 0, 0, 100),
(67970, 14, 1019.174, 7362.304, 36.45819, 0, 0, 100),
(67970, 15, 1015.214, 7387.555, 36.28870, 0, 0, 100),
(67970, 16, 1015.623, 7416.073, 29.73094, 0, 0, 100),
(67970, 17, 1017.270, 7430.179, 27.32847, 0, 0, 100);

-- #67968
UPDATE creature SET position_x = 965.6428, position_y = 7373.697, position_z = 29.13037, orientation = 3.013371, spawndist = 0, MovementType = 2 WHERE guid = 67968;
DELETE FROM creature_movement WHERE id = 67968;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(67968, 1, 925.8781, 7381.854, 20.04505, 0, 0, 100),
(67968, 2, 913.0323, 7391.751, 20.14172, 0, 0, 100),
(67968, 3, 902.0728, 7402.646, 20.28402, 0, 0, 100),
(67968, 4, 889.8494, 7420.984, 20.43337, 0, 0, 100),
(67968, 5, 877.6485, 7445.985, 20.91112, 0, 0, 100),
(67968, 6, 889.8494, 7420.984, 20.43337, 0, 0, 100),
(67968, 7, 901.8951, 7402.823, 20.29285, 0, 0, 100),
(67968, 8, 913.0323, 7391.751, 20.14172, 0, 0, 100),
(67968, 9, 925.8781, 7381.854, 20.04505, 0, 0, 100),
(67968, 10, 961.9739, 7371.949, 28.54174, 0, 0, 100);

-- #67969
UPDATE creature SET position_x = 966.4785, position_y = 7370.27, position_z = 29.36411, orientation = 2.950269, spawndist = 0, MovementType = 0 WHERE guid = 67969;
DELETE FROM creature_movement WHERE id = 67969;
-- link
DELETE FROM creature_linking WHERE guid = 67969;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(67969, 67968, 515);
