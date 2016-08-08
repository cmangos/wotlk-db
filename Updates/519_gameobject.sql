-- Fix signs in Wetlands

-- first signpost
-- Menethil
UPDATE gameobject SET position_x = -3597.88, position_y = -2713.78, position_z = 18.8364, orientation = -0.671953, rotation0 = 0, rotation1 = 0, rotation2 = -0.329691, rotation3 = 0.944089 WHERE guid = 13763;
-- Dun Modr
UPDATE gameobject SET position_x = -3597.65, position_y = -2713.63, position_z = 18.2805, orientation = -0.654499, rotation0 = 0.038501, rotation1 = -0.022276, rotation2 = -0.320761, rotation3 = 0.946115 WHERE guid = 14261;
-- Loch Modan
UPDATE gameobject SET position_x = -3597.21, position_y = -2714.68, position_z = 19.6138, orientation = 2.522, rotation0 = 0.029386, rotation1 = 0.07754, rotation2 = 0.949226, rotation3 = 0.30347 WHERE guid = 13762;
-- Grim Batol
UPDATE gameobject SET position_x = -3600.88, position_y = -2714.84, position_z = 18.5583, orientation = -3.14152, rotation0 = 0.69436, rotation1 = 0.117214, rotation2 = 0.700446, rotation3 = -0.116196 WHERE guid = 13764;
-- Dun Algaz
UPDATE gameobject SET position_x = -3597.3, position_y = -2714.84, position_z = 17.5196, orientation = 2.47837, rotation0 = 0.032618, rotation1 = 0.09473, rotation2 = 0.940761, rotation3 = 0.32393 WHERE guid = 13704;

-- second signpost
-- Menethil
UPDATE gameobject SET position_x = -3231.99, position_y = -2454.2, position_z = 13.4941, orientation = -0.183258, rotation0 = 0, rotation1 = 0, rotation2 = -0.091501, rotation3 = 0.995805 WHERE guid = 13760;
-- Loch Modan
UPDATE gameobject SET position_x = -3231.02, position_y = -2454.87, position_z = 14.9369, orientation = 2.95833, rotation0 = 0.001724, rotation1 = 0.113517, rotation2 = 0.989276, rotation3 = 0.091894 WHERE guid = 13761;
-- Dun Modr
UPDATE gameobject SET position_x = -3231.32, position_y = -2453.92, position_z = 15.5055, orientation = -1.75406, rotation0 = 0, rotation1 = 0, rotation2 = -0.768842, rotation3 = 0.639439 WHERE guid = 13720;
-- Dun Algaz
UPDATE gameobject SET position_x = -3231.02, position_y = -2454.8, position_z = 14.3332, orientation = 2.95833, rotation0 = 0.00877, rotation1 = 0.095444, rotation2 = 0.99122, rotation3 = 0.09108 WHERE guid = 13705;
