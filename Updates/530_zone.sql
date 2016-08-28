-- Riplash Strand - Borean Tundra

-- missing creatures added - UDB free guids reused
DELETE FROM creature WHERE guid IN (94981,94982,94984,94985,94986,94987,94988,94989,94996,95003,95004,95008,95011,95021);
DELETE FROM creature_addon WHERE guid IN (94981,94982,94984,94985,94986,94987,94988,94989,94996,95003,95004,95008,95011,95021);
DELETE FROM creature_movement WHERE id IN (94981,94982,94984,94985,94986,94987,94988,94989,94996,95003,95004,95008,95011,95021);
DELETE FROM game_event_creature WHERE guid IN (94981,94982,94984,94985,94986,94987,94988,94989,94996,95003,95004,95008,95011,95021);
DELETE FROM game_event_creature_data WHERE guid IN (94981,94982,94984,94985,94986,94987,94988,94989,94996,95003,95004,95008,95011,95021);
DELETE FROM creature_battleground WHERE guid IN (94981,94982,94984,94985,94986,94987,94988,94989,94996,95003,95004,95008,95011,95021);
DELETE FROM creature_linking WHERE guid IN (94981,94982,94984,94985,94986,94987,94988,94989,94996,95003,95004,95008,95011,95021)
OR master_guid IN (94981,94982,94984,94985,94986,94987,94988,94989,94996,95003,95004,95008,95011,95021);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
-- Skadir Mistweaver
(94981,25613,571,1,2,0,0,1942.69,5920.27,14.8018,0.06981317,300,0,0,7984,3080,0,0),
(94982,25613,571,1,2,0,0,1877.39,5979.81,6.80584,4.939282,300,0,0,7984,3080,0,0),
-- Skadir Raider
(94984,25522,571,1,2,0,597,1834.75,5973.59,0.68642,1.01621,300,0,0,6986,0,0,2),
-- Landing Crawler
(94985,25481,571,1,1,0,0,1914.82,5622.12,3.2751,1.83872,300,7,0,7984,0,0,1),
(94986,25481,571,1,2,0,0,1450.62,6005.55,-17.4699,4.1792,300,7,0,6986,0,0,1),
(94987,25481,571,1,2,0,0,1453.54,5906.97,1.282,2.51026,300,7,0,7984,0,0,1),
(94988,25481,571,1,2,0,0,1389.59,5983.52,5.31773,5.4987,300,7,0,7984,0,0,1),
(94989,25481,571,1,2,0,0,1312.96,5936.43,7.89174,5.4987,300,7,0,6986,0,0,1),
(94996,25481,571,1,2,0,0,1347.76,5862.79,11.5777,6.02491,300,7,0,7984,0,0,1),
(95003,25481,571,1,2,0,0,1478.04,5858.1,2.09035,6.02491,300,7,0,7984,0,0,1),
(95004,25481,571,1,2,0,0,1314.47,5805.09,4.57704,6.02491,300,7,0,7984,0,0,1),
(95008,25481,571,1,2,0,0,1346,5752.98,3.92545,1.26776,300,7,0,6986,0,0,1),
(95011,25481,571,1,2,0,0,1399.44,5625.94,6.94819,0.492565,300,7,0,7984,0,0,1),
(95021,25481,571,1,2,0,0,1539.88,5713.36,1.88345,2.85269,300,7,0,6986,0,0,1);

-- Skadir Mistweaver
UPDATE creature_template SET InhabitType = 3 WHERE entry = 25613;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25613); 
DELETE FROM creature_template_addon WHERE entry = 25613;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(25613,0,0,1,0,0,0,45658);
UPDATE creature SET position_x = 1913.550049, position_y = 5716.408203, position_z = 5.152240, orientation = 3.01942 WHERE guid = 54520;
UPDATE creature SET position_x = 1956.496948, position_y = 6020.964844, position_z = 11.759933, orientation = 1.937315 WHERE guid = 54519;
UPDATE creature SET position_x = 1929.302979, position_y = 6062.945801, position_z = 11.233111, orientation = 1.37881 WHERE guid = 54518;
UPDATE creature SET position_x = 1866.114014, position_y = 5672.497070, position_z = 0.226708, orientation = 6.091199 WHERE guid = 54521;
UPDATE creature SET position_x = 1818.586060, position_y = 6047.866211, position_z = 1.592922, orientation = 3.717551 WHERE guid = 54517;
UPDATE creature SET position_x = 1362.112061, position_y = 5775.474121, position_z = 5.999537, orientation = 3.071779 WHERE guid = 54507;
UPDATE creature SET position_x = 1348.571045, position_y = 5789.449219, position_z = 6.651629, orientation = 4.607669 WHERE guid = 54508;
UPDATE creature SET position_x = 1348.906006, position_y = 5762.675781, position_z = 6.551773, orientation = 1.710423 WHERE guid = 54506;
UPDATE creature SET position_x = 1297.442993, position_y = 5660.703125, position_z = 12.184100, orientation = 0.6108652 WHERE guid = 54505;
UPDATE creature SET position_x = 1260.214966, position_y = 5654.817871, position_z = 6.977017, orientation = 5.654867 WHERE guid = 54503;
UPDATE creature SET position_x = 1238.303955, position_y = 5625.454102, position_z = 6.445435, orientation = 5.77704 WHERE guid = 54504;
UPDATE creature SET position_x = 1401.876953, position_y = 5443.536133, position_z = 22.419580, orientation = 1.48353 WHERE guid = 54501;

-- Skadir Raider
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid = 112762;
UPDATE creature SET position_x = 1790.769653, position_y = 5959.514648, position_z = 0.317617, orientation = 3.071779 WHERE guid = 112763;
UPDATE creature SET position_x = 1966.911011, position_y = 5895.333984, position_z = 15.877425, orientation = 5.51524 WHERE guid = 112757;
UPDATE creature SET position_x = 1837.368042, position_y = 5895.741211, position_z = 1.929227, orientation = 2.844887 WHERE guid = 56806;
UPDATE creature SET position_x = 1945.245728, position_y = 5837.528320, position_z = 11.912475, orientation = 2.051982 WHERE guid = 112756;
UPDATE creature SET position_x = 1963.515015, position_y = 5967.029785, position_z = 14.743717, orientation = 0.03490658 WHERE guid = 56752;
-- individual addons
-- #56752
DELETE FROM creature_addon WHERE guid = 56752;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(56752,0,0,1,0,333,0,NULL);
-- #112750
DELETE FROM creature_addon WHERE guid = 112750;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112750,0,0,1,0,333,0,NULL);
-- #112751
DELETE FROM creature_addon WHERE guid = 112751;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112751,0,0,1,0,333,0,NULL);
-- #112765
DELETE FROM creature_addon WHERE guid = 112765;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112765,0,0,1,0,333,0,NULL);
-- #112757
DELETE FROM creature_addon WHERE guid = 112757;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112757,0,0,1,0,333,0,NULL);
-- #112741
DELETE FROM creature_addon WHERE guid = 112741;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112741,0,0,1,0,333,0,NULL);
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (112755,112749,112754,112756,112764,112761,94984,112766);
DELETE FROM creature_movement WHERE id IN (112755,112749,112754,112756,112764,112761,94984,112766);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #112755
(112755,1,1889.38,5748.21,3.42854, 0, 0,2.62137, 0, 0),
(112755,2,1885.78,5751.9,2.29891, 0, 0,3.28739, 0, 0),
(112755,3,1884.23,5740.19,1.44437, 0, 0,4.65555, 0, 0),
(112755,4,1885.69,5751.84,2.27176, 0, 0,5.69385, 0, 0),
(112755,5,1893.65,5748.23,4.40484, 0, 0,6.22559, 0, 0),
(112755,6,1913.17,5748.38,6.32047, 0, 0,0.35081, 0, 0),
(112755,7,1925.14,5755.36,6.56807, 0, 0,0.71602, 0, 0),
(112755,8,1931.29,5763.53,7.91418, 0, 0,1.20375, 0, 0),
(112755,9,1931.73,5772.67,7.49182, 0, 0,1.75275, 0, 0),
(112755,10,1927.41,5781.74,8.20516, 0, 0,2.14545, 0, 0),
(112755,11,1922.7,5787.91,8.43593, 1000, 0,2.2122, 0, 0),
(112755,12,1931.28,5774.7,7.32551, 0, 0,5.11057, 0, 0),
(112755,13,1932.67,5767.97,8.13293, 0, 0,4.45634, 0, 0),
(112755,14,1927.95,5758.52,6.74477, 0, 0,4.01496, 0, 0),
(112755,15,1920.13,5749.96,6.39336, 0, 0,3.61833, 0, 0),
(112755,16,1897.52,5746.39,5.00817, 0, 0,3.25312, 0, 0),
-- #112749
(112749,1,1869.26,5764.89,0.646429, 0, 0,5.42376, 0, 0),
(112749,2,1873.72,5753.4,0.582282, 0, 0,4.67371, 0, 0),
(112749,3,1870.65,5726.66,0.426087, 0, 0,3.95507, 0, 0),
(112749,4,1860.15,5717.06,0.0457342, 0, 0,3.43671, 0, 0),
(112749,5,1853.29,5714.68,-0.434483, 0, 0,3.3189, 0, 0),
(112749,6,1865.58,5719.65,0.296699, 0, 0,0.672107, 0, 0),
(112749,7,1872.05,5734.82,0.379683, 0, 0,1.3986, 0, 0),
(112749,8,1873.62,5758.11,0.662458, 0, 0,1.77559, 0, 0),
(112749,9,1861.19,5769.65,0.525272, 0, 0,2.58063, 0, 0),
(112749,10,1852.62,5778.03,0.566776, 0, 0,2.5712, 0, 0),
(112749,11,1838.01,5783.75,0.450752, 0, 0,3.1524, 0, 0),
(112749,12,1828.8,5783.37,0.513062, 0, 0,3.10841, 0, 0),
(112749,13,1838.62,5783.31,0.452377, 0, 0,5.86985, 0, 0),
(112749,14,1852.8,5777.55,0.56283, 0, 0,5.61774, 0, 0),
(112749,15,1860.86,5769.75,0.520587, 0, 0,5.5235, 0, 0),
-- #112754
(112754,1,1872.39,5795.83,2.46208, 0, 0,4.36424, 0, 0),
(112754,2,1877.15,5814.01,4.73375, 0, 0,1.50146, 0, 0),
(112754,3,1877.04,5828.09,4.65873, 0, 0,1.83133, 0, 0),
(112754,4,1873.62,5836.72,4.46636, 0, 0,2.61908, 0, 0),
(112754,5,1849.25,5849.4,1.94615, 0, 0,2.4031, 0, 0),
(112754,6,1836.48,5861.28,1.72994, 0, 0,2.06538, 0, 0),
(112754,7,1830.66,5874.87,1.4552, 0, 0,1.75907, 0, 0),
(112754,8,1828.57,5890.94,0.789834, 0, 0,1.70409, 0, 0),
(112754,9,1831.31,5872.29,1.60241, 0, 0,5.08523, 0, 0),
(112754,10,1837.12,5861.01,1.72266, 0, 0,5.35619, 0, 0),
(112754,11,1850.52,5848.02,2.07719, 0, 0,5.84234, 0, 0),
(112754,12,1870.99,5838.32,4.44044, 0, 0,5.58002, 0, 0),
(112754,13,1878.02,5827.3,4.74679, 0, 0,4.88967, 0, 0),
(112754,14,1877.65,5813.79,4.68396, 0, 0,4.51581, 0, 0),
(112754,15,1875.41,5805.79,3.57113, 0, 0,4.30768, 0, 0),
-- #112756
(112756,1,1934.81,5859.08,11.6825, 0, 0,2.00093, 0, 0),
(112756,2,1948.01,5832.94,12.2312, 0, 0,5.18572, 0, 0),
(112756,3,1957,5818.18,12.8971, 0, 0,5.20536, 0, 0),
(112756,4,1960.37,5807.09,11.678, 0, 0,4.7734, 0, 0),
(112756,5,1956.51,5795.18,10.1294, 0, 0,4.20791, 0, 0),
(112756,6,1950.88,5782.64,9.70722, 0, 0,4.3807, 0, 0),
(112756,7,1949.59,5771.78,8.9653, 0, 0,4.77654, 0, 0),
(112756,8,1952.56,5759.12,8.63743, 0, 0,4.98074, 0, 0),
(112756,9,1949.53,5774.39,9.27421, 0, 0,1.5564, 0, 0),
(112756,10,1950.5,5782.55,9.70682, 0, 0,1.22653, 0, 0),
(112756,11,1959.7,5801.62,11.1146, 0, 0,1.29329, 0, 0),
(112756,12,1960.06,5812.55,12.4631, 0, 0,2.02764, 0, 0),
(112756,13,1951.25,5826.44,13.8159, 0, 0,2.10705, 0, 0),
(112756,14,1946.8,5834.95,11.8866, 0, 0,2.06385, 0, 0),
(112756,15,1942.14,5844.23,11.736, 0, 0,2.00495, 0, 0),
-- #112764
(112764,1,1903.23,5860.47,13.0569, 0, 0,3.64821, 0, 0),
(112764,2,1887.16,5851.82,8.59552, 0, 0,3.55003, 0, 0),
(112764,3,1902.63,5860.03,13.0399, 0, 0,0.479123, 0, 0),
(112764,4,1928.03,5874.52,12.6941, 0, 0,0.823128, 0, 0),
(112764,5,1935.85,5885.49,13.3491, 0, 0,1.00534, 0, 0),
(112764,6,1942.17,5892.33,14.4033, 0, 0,0.498758, 0, 0),
(112764,7,1953.35,5897.64,15.1758, 0, 0,0.325971, 0, 0),
(112764,8,1967.19,5903,16.0128, 0, 0,0.329898, 0, 0),
(112764,9,1943.01,5893.07,14.4692, 0, 0,3.63642, 0, 0),
(112764,10,1936.07,5885.93,13.4105, 0, 0,4.15479, 0, 0),
(112764,11,1929.25,5875.34,12.5369, 0, 0,3.80528, 0, 0),
(112764,12,1923.75,5871.27,13.0994, 0, 0,3.64035, 0, 0),
-- #112761
(112761,1,1889.45,5936.17,8.0349, 0, 0,2.5133, 0, 0),
(112761,2,1877.3,5945.01,6.82404, 0, 0,2.23449, 0, 0),
(112761,3,1868.09,5955.74,6.03082, 0, 0,2.12033, 0, 0),
(112761,4,1847.89,5987.18,2.07051, 0, 0,2.16746, 0, 0),
(112761,5,1860.9,5967.33,4.26445, 0, 0,5.19517, 0, 0),
(112761,6,1868.73,5954.55,6.19635, 0, 0,5.37581, 0, 0),
(112761,7,1877.41,5945.16,6.84692, 0, 0,5.58629, 0, 0),
(112761,8,1885.17,5938.55,6.57754, 0, 0,5.67268, 0, 0),
(112761,9,1893.35,5934.16,9.59129, 0, 0,5.79049, 0, 0),
(112761,10,1907.01,5925.49,12.3145, 0, 0,5.41743, 0, 0),
(112761,11,1915.18,5912.4,13.2823, 0, 0,4.9974, 0, 0),
-- #94984
(94984,1,1849.26,5996,0.305036, 0, 0,1.18507, 0, 0),
(94984,2,1854.13,6013.45,0.317064, 0, 0,1.66809, 0, 0),
(94984,3,1852.1,6025.85,0.390434, 0, 0,1.94612, 0, 0),
(94984,4,1845.41,6038.98,0.356788, 0, 0,2.2053, 0, 0),
(94984,5,1851.85,6025.41,0.391697, 0, 0,4.65182, 0, 0),
(94984,6,1848.54,6009.63,0.342176, 0, 0,4.36908, 0, 0),
(94984,7,1840.43,5991.73,0.320721, 0, 0,4.34159, 0, 0),
(94984,8,1832.39,5967.51,1.77053, 0, 0,4.35337, 0, 0),
(94984,9,1824.25,5944.71,3.46525, 0, 0,4.36908, 0, 0),
(94984,10,1817.81,5920.67,2.21423, 0, 0,4.45154, 0, 0),
(94984,11,1825.63,5948.21,3.43279, 0, 0,1.22748, 0, 0),
(94984,12,1834.29,5972.92,0.748173, 0, 0,1.16858, 0, 0),
-- #112766
(112766,1,1817.45,5814.53,0.432296, 0, 0,1.61262, 0, 0),
(112766,2,1822.08,5837.73,0.954966, 0, 0,1.5223, 0, 0),
(112766,3,1816.29,5847.2,0.968969, 0, 0,1.64246, 0, 0),
(112766,4,1826.54,5853.71,1.01588, 0, 0,1.10603, 0, 0),
(112766,5,1827.62,5860.7,2.31031, 0, 0,1.53408, 0, 0),
(112766,6,1824.07,5870.29,2.67714, 0, 0,2.07207, 0, 0),
(112766,7,1819.64,5880.2,1.95255, 0, 0,1.81995, 0, 0),
(112766,8,1816.6,5894.85,0.619874, 0, 0,1.71392, 0, 0),
(112766,9,1821.02,5876.43,2.43823, 0, 0,5.02044, 0, 0),
(112766,10,1824.89,5866.98,2.66709, 0, 0,5.01651, 0, 0),
(112766,11,1827.01,5859.34,2.1847, 0, 0,4.71414, 0, 0),
(112766,12,1826.75,5853.94,1.03296, 0, 0,4.08156, 0, 0),
(112766,13,1816.45,5847.1,0.969036, 0, 0,4.43334, 0, 0),
(112766,14,1816.46,5843.98,0.966051, 0, 0,5.23052, 0, 0),
(112766,15,1822.2,5837.5,0.953555, 0, 0,4.79532, 0, 0),
(112766,16,1818.6,5819.19,0.460601, 0, 0,4.44334, 0, 0),
(112766,17,1816.55,5812.77,0.429634, 0, 0,4.86746, 0, 0),
(112766,18,1820.46,5802.24,0.353541, 0, 0,5.02762, 0, 0);


-- Skadir Longboatsman
-- they have several diff. equipments
-- #112665
UPDATE creature SET equipment_id = 591 WHERE guid = 112665;
DELETE FROM creature_addon WHERE guid = 112665;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112665,0,0,1,0,173,0,NULL);
-- #112666
UPDATE creature SET equipment_id = 524 WHERE guid = 112666;
DELETE FROM creature_addon WHERE guid = 112666;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112666,0,0,1,0,173,0,NULL);
-- #112677
UPDATE creature SET equipment_id = 524 WHERE guid = 112677;
DELETE FROM creature_addon WHERE guid = 112677;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112677,0,1,1,0,0,0,NULL);
-- #112660
UPDATE creature SET equipment_id = 591 WHERE guid = 112660;
DELETE FROM creature_addon WHERE guid = 112660;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112660,0,0,1,0,173,0,NULL);
-- #112662
UPDATE creature SET equipment_id = 524 WHERE guid = 112662;
DELETE FROM creature_addon WHERE guid = 112662;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112662,0,0,1,0,173,0,NULL);
-- #112659
UPDATE creature SET equipment_id = 526 WHERE guid = 112659;
DELETE FROM creature_addon WHERE guid = 112659;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112659,0,0,1,0,173,0,NULL);
-- #112663
UPDATE creature SET equipment_id = 526 WHERE guid = 112663;
DELETE FROM creature_addon WHERE guid = 112663;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112663,0,0,1,0,173,0,NULL); 
-- #112678
UPDATE creature SET equipment_id = 190, spawndist = 0, MovementType = 2 WHERE guid = 112678;
DELETE FROM creature_movement WHERE id = 112678;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(112678,1,1902.274,5803.663,6.061173, 21000, 2552101,0.9773844, 0, 0);
-- #112664
UPDATE creature SET equipment_id = 527, spawndist = 0, MovementType = 2 WHERE guid = 112664;
DELETE FROM creature_movement WHERE id = 112664;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(112664,1,1825.72,5784.94,0.4657402, 180000, 2552102,4.800342, 0, 0),
(112664,2,1829,5797.71,0.397961, 0, 0,1.61126, 0, 0),
(112664,3,1827.64,5808.19,0.453461, 0, 0,1.81372, 0, 0),
(112664,4,1829.05,5797.42,0.400718, 0, 0,4.4613, 0, 0),
(112664,5,1825.72,5784.94,0.4657402, 0, 0,4.800342, 0, 0);
-- #112673
UPDATE creature SET equipment_id = 190 WHERE guid = 112673;
DELETE FROM creature_addon WHERE guid = 112673;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112673,0,1,1,0,0,0,NULL);
-- #112671
UPDATE creature SET equipment_id = 190, spawndist = 0, MovementType = 2 WHERE guid = 112671;
DELETE FROM creature_movement WHERE id = 112671;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(112671,1,1899.814,5833.026,8.542912, 33000, 2552101,5.742133, 0, 0);
-- #112679
UPDATE creature SET equipment_id = 592 WHERE guid = 112679;
DELETE FROM creature_addon WHERE guid = 112679;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112679,0,1,1,0,0,0,NULL);
-- #112667
UPDATE creature SET equipment_id = 526, spawndist = 0, MovementType = 2 WHERE guid = 112667;
DELETE FROM creature_movement WHERE id = 112667;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(112667,1,1927.356,5845.772,11.8317, 27000, 2552101,4.590216, 0, 0);
-- #112672
UPDATE creature SET position_x = 1902.685059, position_y = 5897.359863, position_z = 13.172993, orientation = 4.956735, spawndist = 0, MovementType = 0 WHERE guid = 112672;
DELETE FROM creature_addon WHERE guid = 112672;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112672,0,1,1,0,0,0,NULL);
-- #112680
UPDATE creature SET equipment_id = 596 WHERE guid = 112680;
DELETE FROM creature_addon WHERE guid = 112680;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112680,0,1,1,0,0,0,NULL);
-- #112682
UPDATE creature SET equipment_id = 527, spawndist = 0, MovementType = 2 WHERE guid = 112682;
DELETE FROM creature_movement WHERE id = 112682;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(112682,1,1821.05,6025.59,0.61922, 0, 0,2.75669, 0, 0),
(112682,2,1813.04,6029.16,0.658192, 0, 0,2.70171, 0, 0),
(112682,3,1822.38,6025.17,0.588526, 0, 0,5.95326, 0, 0),
(112682,4,1837.699,6020.893,0.5376186, 180000, 2552102,6.118913, 0, 0);
-- #112670
UPDATE creature SET equipment_id = 526 WHERE guid = 112670;
DELETE FROM creature_addon WHERE guid = 112670;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112670,0,0,1,0,333,0,NULL);
-- #112661
UPDATE creature SET equipment_id = 526 WHERE guid = 112661;
DELETE FROM creature_addon WHERE guid = 112661;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112661,0,0,1,0,173,0,NULL);
-- #112683
UPDATE creature SET equipment_id = 526, spawndist = 0, MovementType = 2 WHERE guid = 112683;
DELETE FROM creature_movement WHERE id = 112683;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(112683,1,1785.805,6043.322,1.756572, 7000, 2552103,0.8901179, 0, 0);
-- #55335
UPDATE creature SET equipment_id = 596, spawndist = 0, MovementType = 2 WHERE guid = 55335;
DELETE FROM creature_movement WHERE id = 55335;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(55335,1,1798.077,6044.763,2.152256, 11000, 2552103,1.53589, 0, 0);
-- #112658
UPDATE creature SET equipment_id = 596 WHERE guid = 112658;
DELETE FROM creature_addon WHERE guid = 112658;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112658,0,0,1,0,173,0,NULL);
-- #56327
UPDATE creature SET equipment_id = 524 WHERE guid = 56327;
DELETE FROM creature_addon WHERE guid = 56327;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(56327,0,0,1,0,173,0,NULL);
-- #56322
UPDATE creature SET equipment_id = 526, position_x = 1916.657959, position_y = 6034.280762, position_z = 9.285232, orientation = 3.473205, spawndist = 0, MovementType = 2 WHERE guid = 56322; -- ten reaguje na event !!!!!!!!!
DELETE FROM creature_addon WHERE guid = 56322;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(56322,0,0,1,0,333,0,NULL);
DELETE FROM creature_movement WHERE id = 56322;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(56322,1,1916.657959,6034.280762,9.285232, 7000, 2552103,3.473205, 0, 0);
-- #112670
UPDATE creature SET equipment_id = 526, spawndist = 0, MovementType = 2 WHERE guid = 112670;
DELETE FROM creature_addon WHERE guid = 112670;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112670,0,0,1,0,333,0,NULL);
DELETE FROM creature_movement WHERE id = 112670;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(112670,1,1884.513,6010.983,4.959876, 9000, 2552103,1.012291, 0, 0);
-- #112668
UPDATE creature SET equipment_id = 527, spawndist = 0, MovementType = 2 WHERE guid = 112668;
DELETE FROM creature_addon WHERE guid = 112668;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112668,0,0,1,0,333,0,NULL);
DELETE FROM creature_movement WHERE id = 112668;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(112668,1,1878.545,6034.045,2.884993, 12000, 2552103,5.951573, 0, 0);
-- #112669
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 112669;
DELETE FROM creature_addon WHERE guid = 112669;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(112669,0,0,1,0,333,0,NULL);
DELETE FROM creature_movement WHERE id = 112669;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(112669,1,1907.992,6008.049,8.011031, 8000, 2552103,2.181662, 0, 0);
-- #56325
UPDATE creature SET position_x = 1897.598022, position_y = 6052.837891, position_z = 4.320990, orientation = 4.590216, spawndist = 0, MovementType = 2 WHERE guid = 56325;
DELETE FROM creature_addon WHERE guid = 56325;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(56325,0,0,1,0,333,0,NULL);
DELETE FROM creature_movement WHERE id = 56325;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(56325,1,1897.598,6052.838,4.403885, 6000, 2552103,4.590216, 0, 0);
-- Scrpts
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2552101 AND 2552103; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2552101,1,1,15,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2552102,3,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_KNEEL'),
(2552102,175,28,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
(2552103,1,1,71,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Riplash Myrmidon
UPDATE creature SET position_x = 1890.755981, position_y = 6041.784180, position_z = 4.084270, orientation = 5.547938, spawntimesecs = 300, spawndist = 0, MovementType = 2 WHERE guid = 95560;
DELETE FROM creature_movement WHERE id = 95560;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(95560,1,1890.755981,6041.784180,4.084270, 10000, 2457601,5.547938, 0, 0),
(95560,2,1898.97,6029.76,5.86543, 2000, 0,5.21769, 0, 0),
(95560,3,1898.97,6029.76,5.86543, 25000, 2457602,5.21769, 0, 0),
(95560,4,1890.755981,6041.784180,4.084270, 120000, 2457603,5.547938, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2457601,2457602,2457603); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2457601,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2457602,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2457602,3,31,25521,30,0,0,0,-17000,0,0,0,0,0,0,0,'search for 25521'),
(2457602,4,21,1,0,25521,30,7,0,0,0,0,0,0,0,0,'active'),
(2457602,4,0,0,0,25521,30,7,2000000989,0,0,0,0,0,0,0,''),
(2457602,6,15,45815,0,25521,30,3,0,0,0,0,0,0,0,0,''),
(2457602,20,0,0,0,25521,30,7,2000000990,0,0,0,0,0,0,0,''),
(2457602,21,21,0,0,25521,30,7,0,0,0,0,0,0,0,0,'unactive'),
-- in case if dump without any enemy around
(2457603,118,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
DELETE FROM dbscripts_on_creature_death WHERE id = 24576;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(24576,0,31,25636,100,0,0,0,0,0,0,0,0,0,0,0,'search for 25636'),
(24576,1,32,0,0,25636,100,7,0,0,0,0,0,0,0,0,'25636 - wp unpause'),
(24576,2,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM db_script_string WHERE entry IN (2000000989,2000000990);
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000000989,'You may have survived for our amusement, but now, you shall die at our hands!',0,1,0,0,''),
(2000000990,'Send in the next pair of prisoners, let them fight to see who lives!',0,1,0,0,'');

-- Captured Tuskarr Prisoner
UPDATE creature_template SET MovementType = 0 WHERE entry = 25636;
UPDATE creature SET spawntimesecs = 180, spawndist = 0, MovementType = 2 WHERE id = 25636;
DELETE FROM creature_movement WHERE id = 99222;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(99222,1,1905.5,6022.63,7.68457,2000,2563601,2.55984,0,0),
(99222,2,1905.5,6022.63,7.68457,22000,2563602,2.55984,0,0),
(99222,3,1905.5,6022.63,7.68457,300000,2563603,2.55984,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2563601,2563602,2563603);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2563601,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2563601,0,29,2,0,0,0,0,0,0,0,0,0,0,0,0,'NpcFlags removed'),
(2563601,1,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause'),
(2563602,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2563602,1,29,2,1,0,0,0,0,0,0,0,0,0,0,0,'25636 - NpcFlags added'),
(2563602,3,31,25521,30,0,0,0,-17000,0,0,0,0,0,0,0,'search for 25521'),
(2563602,4,21,1,0,25521,30,7,0,0,0,0,0,0,0,0,'active'),
(2563602,4,0,0,0,25521,30,7,2000000989,0,0,0,0,0,0,0,''),
(2563602,6,15,45815,0,25521,30,3,0,0,0,0,0,0,0,0,''),
(2563602,20,0,0,0,25521,30,7,2000000990,0,0,0,0,0,0,0,''),
(2563602,21,21,0,0,25521,30,7,0,0,0,0,0,0,0,0,'unactive'),
-- in case if dump without any enemy around
(2563603,298,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
DELETE FROM dbscripts_on_creature_death WHERE id = 25636;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(25636,2,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- link
DELETE FROM creature_linking WHERE guid = 95560;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(95560, 99222, 128);

-- Riplash Sorceress
UPDATE creature_template SET InhabitType = 4 WHERE entry = 24662;
