-- Storm Peaks: Hibernal Cavern - Phase 4

-- c.30291 Ravenous Jormungar
DELETE FROM creature_addon WHERE guid BETWEEN 527728 AND 527730;
DELETE FROM creature_movement WHERE id BETWEEN 527728 AND 527730;
DELETE FROM game_event_creature WHERE guid BETWEEN 527728 AND 527730;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 527728 AND 527730;
DELETE FROM creature_battleground WHERE guid BETWEEN 527728 AND 527730;
DELETE FROM creature_linking WHERE guid BETWEEN 527728 AND 527730;
DELETE FROM creature WHERE guid BETWEEN 527728 AND 527730;
UPDATE creature SET position_x = 7196.3286, position_y = -2108.8645, position_z = 766.4988, spawndist = 0, MovementType = 4 WHERE guid = 527711;
UPDATE creature SET position_x = 7193.8223, position_y = -2068.7683, position_z = 766.164, spawndist = 10, MovementType = 1 WHERE guid = 527712;
UPDATE creature SET position_x = 7211.303, position_y = -2116.5125, position_z = 772.4796, spawndist = 0, MovementType = 4 WHERE guid = 527713;
UPDATE creature SET position_x = 7251.56, position_y = -2092.84, position_z = 774.822, spawndist = 10, MovementType = 1 WHERE guid = 527714;
UPDATE creature SET position_x = 7201.8315, position_y = -2024.9725, position_z = 765.4748, spawndist = 10, MovementType = 1 WHERE guid = 527715;
UPDATE creature SET position_x = 7233.819, position_y = -2093.1096, position_z = 764.307, spawndist = 0, MovementType = 4 WHERE guid = 527716;
UPDATE creature SET position_x = 7179.5767, position_y = -2021.382, position_z = 766.19214, spawndist = 0, MovementType = 2 WHERE guid = 527717;
UPDATE creature SET position_x = 7272.176, position_y = -2118.9004, position_z = 776.5678, spawndist = 10, MovementType = 1 WHERE guid = 527718;
UPDATE creature SET position_x = 7285.4585, position_y = -2071.5054, position_z = 761.8083, spawndist = 10, MovementType = 1 WHERE guid = 527719;
UPDATE creature SET position_x = 7295.008, position_y = -2112.7644, position_z = 775.05505, spawndist = 0, MovementType = 4 WHERE guid = 527720;
UPDATE creature SET position_x = 7214.2954, position_y = -1989.646, position_z = 767.372, spawndist = 10, MovementType = 1 WHERE guid = 527721;
UPDATE creature SET position_x = 7304.6943, position_y = -2036.3837, position_z = 762.87604, spawndist = 0, MovementType = 4 WHERE guid = 527722;
UPDATE creature SET position_x = 7303.692, position_y = -2073.6487, position_z = 762.1459, spawndist = 0, MovementType = 4 WHERE guid = 527723;
UPDATE creature SET position_x = 7278.1084, position_y = -1982.8357, position_z = 767.8215, spawndist = 0, MovementType = 4 WHERE guid = 527724;
UPDATE creature SET position_x = 7289.789, position_y = -2025.9763, position_z = 772.01697, spawndist = 0, MovementType = 4 WHERE guid = 527725;
UPDATE creature SET position_x = 7341.405, position_y = -2040.1625, position_z = 763.7683, spawndist = 10, MovementType = 1 WHERE guid = 527726;
UPDATE creature SET position_x = 7217.399, position_y = -1983.1448, position_z = 766.8699, spawndist = 0, MovementType = 4 WHERE guid = 527727;
DELETE FROM creature_movement WHERE id IN (527711,527713,527716,527717,527720,527722,527723,527724,527725,527727);
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- 527711
(527711,1,7196.3286,-2108.8645,766.4988,100,500,0),
(527711,2,7180.3105,-2120.6653,763.1632,100,0,0),
(527711,3,7169.7485,-2131.1814,762.257,100,0,0),
(527711,4,7158.9326,-2137.41,764.5187,100,500,0),
-- 527713
(527713,1,7211.303,-2116.5125,772.4796,100,500,0),
(527713,2,7225.0566,-2116.2314,777.36285,100,0,0),
(527713,3,7237.4365,-2120.756,777.504,100,0,0),
(527713,4,7249.074,-2123.2346,778.78894,100,500,0),
-- 527716
(527716,1,7233.819,-2093.1096,764.307,100,500,0),
(527716,2,7234.764,-2084.5718,764.20636,100,0,0),
(527716,3,7241.309,-2075.2874,763.1084,100,0,0),
(527716,4,7252.526,-2072.1223,763.3147,100,0,0),
(527716,5,7265.927,-2076.882,764.775,100,500,0),
-- 527717
(527717,1,7179.5767,-2021.382,766.19214,100,0,0),
(527717,2,7180.382,-2042.1821,767.9194,100,0,0),
(527717,3,7196.1685,-2048.088,763.17584,100,0,0),
(527717,4,7203.252,-2056.4084,765.26556,100,0,0),
(527717,5,7208.229,-2062.7913,767.21014,100,0,0),
(527717,6,7216.869,-2045.601,769.131,100,0,0),
(527717,7,7223.3345,-2032.2589,768.3279,100,0,0),
(527717,8,7223.0103,-2015.7192,768.3788,100,0,0),
(527717,9,7218.624,-2009.5592,768.40204,100,0,0),
(527717,10,7199.4116,-1998.6423,767.57275,100,0,0),
-- 527720
(527720,1,7295.008,-2112.7644,775.05505,100,500,0),
(527720,2,7306.4253,-2107.738,774.379,100,0,0),
(527720,3,7320.1104,-2102.886,774.2951,100,0,0),
(527720,4,7329.019,-2096.363,773.23175,100,0,0),
(527720,5,7334.6772,-2083.7583,769.93005,100,500,0),
-- 527722
(527722,1,7304.6943,-2036.3837,762.87604,100,500,0),
(527722,2,7297.5938,-2044.753,762.39935,100,0,0),
(527722,3,7289.2256,-2048.535,762.02277,100,0,0),
(527722,4,7275.1606,-2048.9062,762.5054,100,500,0),
-- 527723
(527723,1,7303.692,-2073.6487,762.1459,100,500,0),
(527723,2,7315.783,-2071.913,763.078,100,0,0),
(527723,3,7326.7095,-2065.6924,764.2915,100,0,0),
(527723,4,7344.975,-2049.58,764.58374,100,500,0),
-- 527724
(527724,1,7278.1084,-1982.8357,767.8215,100,500,0),
(527724,2,7284.039,-1997.7288,765.83765,100,0,0),
(527724,3,7290.296,-2004.8258,765.7332,100,0,0),
(527724,4,7303.2754,-2013.8158,764.7445,100,0,0),
(527724,5,7315.096,-2021.3705,763.51654,100,500,0),
-- 527725
(527725,1,7289.789,-2025.9763,772.01697,100,500,0),
(527725,2,7285.3906,-2021.4299,771.196,100,0,0),
(527725,3,7277.6973,-2019.1228,768.276,100,0,0),
(527725,4,7272.033,-2014.921,768.22314,100,0,0),
(527725,5,7269.378,-2008.0475,768.23804,100,0,0),
(527725,6,7268.596,-1998.3937,768.1094,100,500,0),
-- 527727
(527727,1,7217.399,-1983.1448,766.8699,100,500,0),
(527727,2,7232.8037,-1978.2162,766.88513,100,0,0),
(527727,3,7254.065,-1967.5131,769.2651,100,0,0),
(527727,4,7263.82,-1972.0009,769.406,100,500,0);
DELETE FROM dbscripts_on_relay WHERE id = 21257;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21257,1,31,30292,10,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ravenous Jormungar 30291 EAI: search for 30292'),
(21257,100,1,35,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ravenous Jormungar 30291 EAI: emote'),
(21257,3000,1,35,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Ravenous Jormungar 30291 EAI: emote');

-- c.30325 Viscous Oil
DELETE FROM creature_addon WHERE guid BETWEEN 527813 AND 527821;
DELETE FROM creature_movement WHERE id BETWEEN 527813 AND 527821;
DELETE FROM game_event_creature WHERE guid BETWEEN 527813 AND 527821;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 527813 AND 527821;
DELETE FROM creature_battleground WHERE guid BETWEEN 527813 AND 527821;
DELETE FROM creature_linking WHERE guid BETWEEN 527813 AND 527821;
DELETE FROM creature WHERE guid BETWEEN 527813 AND 527821;
UPDATE creature SET position_x = 7254.41, position_y = -2137.825, position_z = 778.7355, spawndist = 0, MovementType = 4 WHERE guid = 527804;
UPDATE creature SET position_x = 7191.4053, position_y = -2076.9658, position_z = 766.3553, spawndist = 0, MovementType = 4 WHERE guid = 527805;
UPDATE creature SET position_x = 7195.92, position_y = -2047.44, position_z = 763.051, spawndist = 10, MovementType = 1 WHERE guid = 527806;
UPDATE creature SET position_x = 7277.46, position_y = -2042.99, position_z = 762.029, spawndist = 10, MovementType = 1 WHERE guid = 527807;
UPDATE creature SET position_x = 7212.65, position_y = -2028.39, position_z = 764.082, spawndist = 10, MovementType = 1 WHERE guid = 527808;
UPDATE creature SET position_x = 7192.2183, position_y = -2016.9199, position_z = 764.21454, spawndist = 10, MovementType = 1 WHERE guid = 527809;
UPDATE creature SET position_x = 7311.7, position_y = -2084.73, position_z = 767.095, spawndist = 2, MovementType = 1 WHERE guid = 527810;
UPDATE creature SET position_x = 7344.7466, position_y = -2070.4487, position_z = 765.7801, spawndist = 10, MovementType = 1 WHERE guid = 527811;
UPDATE creature SET position_x = 7249.11, position_y = -1979.37, position_z = 771.935, spawndist = 2, MovementType = 1 WHERE guid = 527812;
DELETE FROM creature_movement WHERE id IN (527804,527805);
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- 527804
(527804,1,7254.41,-2137.825,778.7355,100,500,0),
(527804,2,7265.391,-2132.3008,778.8419,100,0,0),
(527804,3,7253.8667,-2118.2017,779.1094,100,0,0),
(527804,4,7265.0127,-2112.675,777.7974,100,0,0),
(527804,5,7273.524,-2117.4688,776.1599,100,0,0),
(527804,6,7269.471,-2127.6611,778.2336,100,0,0),
(527804,7,7252.812,-2133.099,779.3616,100,0,0),
(527804,8,7246.4897,-2122.931,778.3363,100,500,0),
-- 527805
(527805,1,7191.4053,-2076.9658,766.3553,100,500,0),
(527805,2,7195.514,-2095.3547,765.0692,100,0,0),
(527805,3,7197.856,-2109.696,766.73114,100,0,0),
(527805,4,7213.507,-2116.5825,773.45465,100,0,0),
(527805,5,7228.926,-2117.1687,777.64465,100,0,0),
(527805,6,7242.9126,-2121.212,777.9016,100,500,0);
