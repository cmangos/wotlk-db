-- ---------------------------
-- DK Starting Zone - phase 64 part 1
-- ---------------------------

-- Duplicates removed
DELETE FROM creature WHERE guid IN (130721,130793,130733,130722,130658,130815,130602,130574,130828,130795,130695,130689,130797,130683,130826,130690,130660);
DELETE FROM creature_addon WHERE guid IN (130721,130793,130733,130722,130658,130815,130602,130574,130828,130795,130695,130689,130797,130683,130826,130690,130660);
DELETE FROM creature_movement WHERE id IN (130721,130793,130733,130722,130658,130815,130602,130574,130828,130795,130695,130689,130797,130683,130826,130690,130660);
DELETE FROM game_event_creature WHERE guid IN (130721,130793,130733,130722,130658,130815,130602,130574,130828,130795,130695,130689,130797,130683,130826,130690,130660);
DELETE FROM game_event_creature_data WHERE guid IN (130721,130793,130733,130722,130658,130815,130602,130574,130828,130795,130695,130689,130797,130683,130826,130690,130660);
DELETE FROM creature_battleground WHERE guid IN (130721,130793,130733,130722,130658,130815,130602,130574,130828,130795,130695,130689,130797,130683,130826,130690,130660);
DELETE FROM creature_linking WHERE guid IN (130721,130793,130733,130722,130658,130815,130602,130574,130828,130795,130695,130689,130797,130683,130826,130690,130660) 
OR master_guid IN (130721,130793,130733,130722,130658,130815,130602,130574,130828,130795,130695,130689,130797,130683,130826,130690,130660);

-- Frostbrood Vanquisher
UPDATE creature_template SET MinLevel = 62, MaxLevel = 62, FactionAlliance = 2082, FactionHorde = 2082, UnitClass = 2, Expansion = 1, MinLevelHealth = 106850, MaxLevelHealth = 106850, MinLevelMana = 51360, MaxLevelMana = 51360, MechanicImmuneMask = 8388624 WHERE entry = 28670;

-- Baron Rivendare 
UPDATE creature SET position_x = 2277.7, position_y = -5636.66, position_z = 144.788, orientation = 4.56454, Spawndist = 0, MovementType = 2 WHERE guid = 130895;
DELETE FROM creature_movement WHERE id = 130895;
UPDATE creature_template SET MovementType = 2 WHERE entry = 29109;
DELETE FROM creature_movement_template WHERE entry = 29109;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(29109,1,2277.7,-5636.66,144.788,1000,2910901,4.56454,0,0),(29109,2,2276.12,-5647.62,142.619,0,0,4.56454,0,0),(29109,3,2273.55,-5664.07,143.92,0,0,1.52897,0,0),
(29109,4,2276.12,-5647.62,142.619,0,0,1.47793,0,0),(29109,5,2277.7,-5636.66,144.788,0,0,4.56454,0,0),(29109,6,2276.12,-5647.62,142.619,0,0,4.56454,0,0),
(29109,7,2273.55,-5664.07,143.92,0,0,1.52897,0,0),(29109,8,2276.12,-5647.62,142.619,0,0,1.47793,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2910901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2910901,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
-- Death Knight Champion
UPDATE creature SET position_x = 2419.523193, position_y = -5774.515137, position_z = 148.158127, orientation = 5.291478, Spawndist = 0, MovementType = 0 WHERE guid = 130891;
UPDATE creature SET position_x = 2413.764893, position_y = -5777.067383, position_z = 149.278229, orientation = 5.578143, Spawndist = 0, MovementType = 0 WHERE guid = 130889;
UPDATE creature SET position_x = 2425.206787, position_y = -5770.046875, position_z = 148.509720, orientation = 4.989102, Spawndist = 0, MovementType = 0 WHERE guid = 130888;
UPDATE creature SET position_x = 2267.978, position_y = -5652.68, position_z = 140.1605, orientation = 2.879793, Spawndist = 0, MovementType = 0 WHERE guid = 130879;
UPDATE creature SET position_x = 2268.687, position_y = -5645.526, position_z = 140.816, orientation = 3.211406, Spawndist = 0, MovementType = 0 WHERE guid = 130880;
UPDATE creature SET position_x = 2268.732, position_y = -5666.745, position_z = 142.9238, orientation = 2.72271, Spawndist = 0, MovementType = 0 WHERE guid = 130881;
UPDATE creature SET position_x = 2273.045, position_y = -5634.715, position_z = 144.3555, orientation = 3.47320, Spawndist = 0, MovementType = 0 WHERE guid = 130882;
UPDATE creature SET position_x = 2270.195, position_y = -5639.455, position_z = 142.3601, orientation = 3.29867, Spawndist = 0, MovementType = 0 WHERE guid = 130883;
UPDATE creature SET position_x = 2268.486, position_y = -5659.049, position_z = 140.9015, orientation = 2.80998, Spawndist = 0, MovementType = 0 WHERE guid = 130884;
UPDATE creature SET position_x = 2429.15, position_y = -5774.347, position_z = 146.8119, orientation = 4.764749, Spawndist = 0, MovementType = 0 WHERE guid = 130885;
UPDATE creature SET position_x = 2415.666, position_y = -5782.209, position_z = 147.3330, orientation = 5.268789, Spawndist = 0, MovementType = 0 WHERE guid = 130886;
UPDATE creature SET position_x = 2419.108, position_y = -5778.839, position_z = 146.9846, orientation = 5.302624, Spawndist = 0, MovementType = 0 WHERE guid = 130890;
UPDATE creature SET position_x = 2423.652, position_y = -5776.316, position_z = 146.6569, orientation = 5.279853, Spawndist = 0, MovementType = 0 WHERE guid = 130887;
UPDATE creature_addon SET emote = 375 WHERE guid IN (130879,130880,130881,130882,130883,130884,130885,130886,130887,130888,130889,130890,130891);
UPDATE creature SET spawntimesecs = 30 WHERE id = 29106;
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 130892;
DELETE FROM creature_movement WHERE id = 130892;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(130892,1,2323.63,-5664.38,153.844,0,0,5.64936,0,0),(130892,2,2349.46,-5696.57,153.922,0,0,5.3619,0,0),(130892,3,2367.64,-5712.81,153.922,0,0,5.60225,0,0),
(130892,4,2382.8,-5728.4,153.922,0,0,5.50957,0,0),(130892,5,2401.2,-5743.18,153.922,0,0,5.52056,0,0),(130892,6,2411.25,-5755.46,153.98,3000,0,5.30144,0,0),
(130892,7,2400.84,-5742.97,153.922,0,0,2.4151,0,0),(130892,8,2382.62,-5728.3,153.922,0,0,2.32871,0,0),(130892,9,2366.33,-5711.26,153.922,0,0,2.34049,0,0),
(130892,10,2344.2,-5688.49,153.923,0,0,2.302,0,0),(130892,11,2308.86,-5647.39,149.308,3000,0,2.49521,0,0);

-- Hearthglen Crusader/Trisfal Crusader
-- northern group
UPDATE creature SET position_x = 2433.580078, position_y = -5882.046875, position_z = 104.645500, orientation = 1.990541, Spawndist = 0, MovementType = 2 WHERE guid = 130792;
UPDATE creature SET position_x = 2418.468994, position_y = -5866.832031, position_z = 104.968590, orientation = 0.950663, Spawndist = 0, MovementType = 2 WHERE guid = 130570;
UPDATE creature SET position_x = 2423.544189, position_y = -5882.778320, position_z = 104.604820, orientation = 1.472961, Spawndist = 0, MovementType = 2 WHERE guid = 130567;
UPDATE creature SET position_x = 2404.129639, position_y = -5842.262695, position_z = 109.902840, orientation = 6.244246, Spawndist = 0, MovementType = 2 WHERE guid = 130743;
UPDATE creature SET position_x = 2408.253418, position_y = -5881.060059, position_z = 104.593834, orientation = 0.957659, Spawndist = 0, MovementType = 2 WHERE guid = 130608;
-- southern group
UPDATE creature SET position_x = 2205.809814, position_y = -5731.661133, position_z = 102.208534, orientation = 1.472664, Spawndist = 0, MovementType = 2 WHERE guid = 130830;
UPDATE creature SET position_x = 2161.003906, position_y = -5725.638672, position_z = 101.332764, orientation = 1.153008, Spawndist = 0, MovementType = 2 WHERE guid = 130682;
UPDATE creature SET position_x = 2150.973389, position_y = -5712.687012, position_z = 101.909523, orientation = 0.783094, Spawndist = 0, MovementType = 2 WHERE guid = 130798;
UPDATE creature SET position_x = 2126.595215, position_y = -5688.541016, position_z = 101.155556, orientation = 0.204981, Spawndist = 0, MovementType = 2 WHERE guid = 130827;
UPDATE creature SET position_x = 2114.592529, position_y = -5697.796387, position_z = 100.391434, orientation = 6.034200, Spawndist = 0, MovementType = 2 WHERE guid = 130794;
UPDATE creature SET position_x = 2144.617188, position_y = -5672.694824, position_z = 110.442459, orientation = 0.335399, Spawndist = 0, MovementType = 2 WHERE guid = 130796;
UPDATE creature SET position_x = 2196.454834, position_y = -5701.930176, position_z = 112.392166, orientation = 1.223682, Spawndist = 0, MovementType = 2 WHERE guid = 130829;
UPDATE creature SET position_x = 2147.332275, position_y = -5708.847168, position_z = 102.006149, orientation = 0.499547, Spawndist = 0, MovementType = 2 WHERE guid = 130661;
-- Movements
DELETE FROM creature_movement WHERE id IN (130743,130570,130792,130608,130567,130830,130682,130798,130827,130794,130796,130829,130661);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(130743,1,2404.129639,-5842.262695,109.902840,2000,2910301,6.244246,0,0),(130743,2,2425.5,-5847.68,108.85,0,0,0.772094,0,0),(130743,3,2430.1,-5838.91,112.438,0,0,1.23234,0,0),
(130743,4,2430.68,-5821.38,119.77,0,0,1.71614,0,0),(130743,5,2428.18,-5809.46,126.166,0,0,1.80646,0,0),(130743,6,2426.04,-5787.39,141.243,0,0,1.66902,0,0),
(130743,7,2409.18,-5760.7,152.965,5000,2910302,2.32483,0,0),(130570,1,2418.468994,-5866.832031,104.968590,2000,2910201,0.950663,0,0),(130570,2,2430.8,-5848.82,109.521,0,0,1.01422,0,0),
(130570,3,2433.39,-5830.24,115.967,0,0,1.52315,0,0),(130570,4,2433.82,-5819,120.777,0,0,1.75249,0,0),(130570,5,2432.49,-5800.23,132.063,0,0,1.57577,0,0),
(130570,6,2426.62,-5784.07,142.837,0,0,2.06665,0,0),(130570,7,2410.1,-5757.59,153.412,5000,2910202,2.16482,0,0),(130792,1,2433.580078,-5882.046875,104.645500,2000,2910301,1.990541,0,0),
(130792,2,2432.74,-5862.93,107.076,0,0,1.56086,0,0),(130792,3,2438.97,-5840.58,113.607,0,0,1.36843,0,0),(130792,4,2436.82,-5817.06,121.897,0,0,1.69437,0,0),
(130792,5,2436.44,-5803.47,130.055,0,0,1.50588,0,0),(130792,6,2435.01,-5791.9,138.069,0,0,2.21117,0,0),(130792,7,2410.08,-5768.17,152.083,5000,2910302,2.47427,0,0),
(130608,1,2408.253418,-5881.060059,104.593834,2000,2910201,0.957659,0,0),(130608,2,2423.95,-5856.89,106.491,0,0,1.16523,0,0),(130608,3,2433.64,-5834,114.61,0,0,1.48489,0,0),
(130608,4,2433.44,-5812.11,124.299,0,0,1.63019,0,0),(130608,5,2425.49,-5779.39,145.143,5000,2910202,2.05038,0,0),(130567,1,2423.544189,-5882.778320,104.604820,2000,2910201,1.472961,0,0),
(130567,2,2433.82,-5857.11,108.447,0,0,1.36237,0,0),(130567,3,2436.81,-5823.62,119.25,0,0,1.61762,0,0),(130567,4,2431.98,-5802.78,130.28,0,0,1.82575,0,0),
(130567,5,2424,-5775.7,146.81,5000,2910202,1.97498,0,0),(130830,1,2205.809814,-5731.661133,102.208534,2000,2910301,1.472664,0,0),(130830,2,2208.49,-5705.15,102.799,0,0,1.7774,0,0),
(130830,3,2206.62,-5688.95,110.31,0,0,1.20799,0,0),(130830,4,2213.77,-5676.03,118.232,0,0,1.02342,0,0),(130830,5,2224.66,-5670,124.341,0,0,0.375463,0,0),
(130830,6,2240.25,-5670.29,134.257,0,0,6.15207,0,0),(130830,7,2248.5,-5671.39,139.033,0,0,0.109213,0,0),(130830,8,2256.87,-5669.47,139.138,0,0,0.524688,0,0),
(130830,9,2276.56,-5651.09,142.69,5000,2910302,0.764235,0,0),(130682,1,2161.003906,-5725.638672,101.332764,2000,2910301,1.153008,0,0),(130682,2,2175.47,-5690.91,108.545,0,0,0.956659,0,0),
(130682,3,2198.8,-5668.79,116.512,0,0,0.721039,0,0),(130682,4,2221.04,-5654.31,126.426,0,0,0.481493,0,0),(130682,5,2243.41,-5649.02,132.889,0,0,0.163406,0,0),
(130682,6,2277.84,-5647.74,143.051,5000,2910302,0.00239992,0,0),(130798,1,2150.973389,-5712.687012,101.909523,2000,2910301,0.783094,0,0),(130798,2,2179.7,-5682.61,110.924,0,0,0.790948,0,0),
(130798,3,2203.85,-5662.88,119.445,0,0,0.661357,0,0),(130798,4,2223,-5649.27,127.826,0,0,0.246667,0,0),(130798,5,2248.94,-5651.66,134.06,0,0,6.15286,0,0),
(130798,6,2277.4,-5655.15,143.306,5000,2910302,6.25889,0,0),(130827,1,2126.595215,-5688.541016,101.155556,2000,2910301,0.204981,0,0),(130827,2,2158.87,-5673.12,109.316,0,0,0.711562,0,0),
(130827,3,2174.26,-5662.13,114.756,0,0,0.511285,0,0),(130827,4,2199.97,-5651.31,121.689,0,0,0.456308,0,0),(130827,5,2226.78,-5642.05,130.179,0,0,0.142148,0,0),
(130827,6,2246.62,-5640.31,135.689,0,0,0.0636083,0,0),(130827,7,2279.48,-5641.56,144.101,5000,2910302,0.0478973,0,0),(130794,1,2114.592529,-5697.796387,100.391434,2000,2910301,6.034200,0,0),
(130794,2,2157.63,-5689.16,106.345,0,0,0.323566,0,0),(130794,3,2167.83,-5690.44,107.717,0,0,0.39582,0,0),(130794,4,2190.97,-5669.45,115.191,0,0,0.753176,0,0),
(130794,5,2216.44,-5653.29,125.529,0,0,0.497921,0,0),(130794,6,2240.74,-5645.78,132.926,0,0,0.250521,0,0),(130794,7,2282.69,-5645.59,144.297,2000,2910302,0.00704718,0,0),
(130796,1, 2144.617188,-5672.694824,110.442459,2000,2910301,0.335399,0,0),(130796,2,2152.14,-5670.07,107.855,0,0,0.335399,0,0),(130796,3,2185.46,-5659.7,117.721,0,0,0.249005,0,0),
(130796,4,2220.1,-5657.21,125.484,0,0,0.0369478,0,0),(130796,5,2248.78,-5655.03,133.863,0,0,0.131196,0,0),(130796,6,2281.57,-5648.59,143.968,2000,2910302,0.256859,0,0),
(130829,1,2196.454834,-5701.930176,112.392166,2000,2910301,1.223682,0,0),(130829,2,2198.34,-5693.86,110.321,0,0,1.28573,0,0),(130829,3,2206.89,-5672.37,117.232,0,0,1.0611,0,0),
(130829,4,2218.14,-5658.96,124.59,0,0,0.812133,0,0),(130829,5,2236.62,-5648.38,131.373,0,0,0.218372,0,0),(130829,6,2284.18,-5642.92,144.844,5000,2910302,6.24866,0,0),
(130661,1,2147.332275,-5708.847168,102.006149,2000,2910301,0.499547,0,0),(130661,2,2172.61,-5683.99,109.826,0,0,0.77912,0,0),(130661,3,2199.89,-5659.37,119.516,0,0,0.684872,0,0),
(130661,4,2223.32,-5646.06,128.413,0,0,0.377782,0,0),(130661,5,2251.14,-5644.13,135.913,0,0,0.0549819,0,0),(130661,6,2282.16,-5654.42,144.602,5000,2910302,5.97689,0,0);

-- Hearthglen Crusader
UPDATE creature SET spawntimesecs = 120 WHERE id = 29102;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2910201,2910202);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2910201,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2910202,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');
DELETE FROM dbscripts_on_creature_death WHERE id = 29102;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(29102,7,20,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
-- Trisfal Crusader
UPDATE creature SET spawntimesecs = 120 WHERE id = 29103;
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2910301,2910302);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2910301,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2910302,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');
DELETE FROM dbscripts_on_creature_death WHERE id = 29103;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(29103,7,20,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');

-- Volatile Ghoul
UPDATE creature SET spawndist = 15, MovementType = 1 WHERE id = 29136;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 29136);
DELETE FROM creature_template_addon WHERE entry = 29136;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(29136,0,0,1,0,0,0,NULL);

-- Scarlet Medic -- Phase 1
DELETE FROM creature_addon WHERE guid IN (129253,129254,129256,129257,129258,129261,129262);
DELETE FROM creature_template_addon WHERE entry = 28608;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(28608,0,0,1,0,0,0,NULL);