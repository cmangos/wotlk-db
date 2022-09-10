-- Drak'Sotra Fields - Zul'Drak

-- Captain Brandon 28042
UPDATE creature SET position_x = 5043.113, position_y = -3035.396, position_z = 294.5314, orientation = 2.513274 WHERE guid = 520278;
-- Argent Footman 28117
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 534880 AND 534885;
DELETE FROM creature_movement WHERE id BETWEEN 534880 AND 534885;
DELETE FROM game_event_creature WHERE guid BETWEEN 534880 AND 534885;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 534880 AND 534885;
DELETE FROM creature_battleground WHERE guid BETWEEN 534880 AND 534885;
DELETE FROM creature_linking WHERE guid BETWEEN 534880 AND 534885
 OR master_guid BETWEEN 534880 AND 534885;
DELETE FROM creature WHERE guid BETWEEN 534880 AND 534885;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(534880,28117,571,1,1,0,0,5041.725,-3075.519,289.9051,4.380776,300,300,0,0,0,0,0,0),
(534881,28117,571,1,1,0,0,5033.803,-3007.408,292.7195,1.710423,300,300,0,0,0,0,0,0),
(534882,28117,571,1,1,0,0,5017.147,-3021.724,292.5286,2.268928,300,300,0,0,0,0,0,0),
(534883,28117,571,1,1,0,0,5059.057,-3016.448,291.2556,0,300,300,0,0,0,0,0,4), -- wps
(534884,28117,571,1,1,0,0,5085.242,-3037.411,289.9863,0.03490658,300,300,0,0,0,0,0,0),
(534885,28117,571,1,1,0,0,5018.02,-3022.51,292.482,2.24114,300,300,0,0,0,0,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (534880,534881,534882,534884,534885);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(534880,0,0,1,0,375,0,NULL),
(534881,0,0,1,0,375,0,NULL),
(534882,0,0,1,0,375,0,NULL),
(534884,0,0,1,0,375,0,NULL),
(534885,0,0,1,0,375,0,NULL);
DELETE FROM creature_movement WHERE id IN (534883);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
(534883,1,5059.057,-3016.448,291.2556,100,0,0),
(534883,2,5065.895,-3024.061,291.3444,100,0,0),
(534883,3,5073.779,-3032.482,291.3708,100,0,0),
(534883,4,5078.169,-3037.214,291.4483,100,0,0),
(534883,5,5063.06,-3050.26,291.324,100,0,0),
(534883,6,5052.4,-3059.62,291.322,100,0,0),
(534883,7,5043.05,-3068.06,291.444,100,0,0),
(534883,8,5026.82,-3049.82,291.28,100,0,0);
-- Crazed Water Spirit 16570
-- Duplicate
DELETE FROM creature WHERE guid IN (500743,500762,500753,500769,500770,500750,500767,500736,500768,500763,500749,500739,500758,500765,500752);
DELETE FROM creature_addon WHERE guid IN (500743,500762,500753,500769,500770,500750,500767,500736,500768,500763,500749,500739,500758,500765,500752);
DELETE FROM creature_movement WHERE Id IN (500743,500762,500753,500769,500770,500750,500767,500736,500768,500763,500749,500739,500758,500765,500752);
DELETE FROM game_event_creature WHERE guid IN (500743,500762,500753,500769,500770,500750,500767,500736,500768,500763,500749,500739,500758,500765,500752);
DELETE FROM game_event_creature_data WHERE guid IN (500743,500762,500753,500769,500770,500750,500767,500736,500768,500763,500749,500739,500758,500765,500752);
DELETE FROM creature_battleground WHERE guid IN (500743,500762,500753,500769,500770,500750,500767,500736,500768,500763,500749,500739,500758,500765,500752);
DELETE FROM creature_linking WHERE guid IN (500743,500762,500753,500769,500770,500750,500767,500736,500768,500763,500749,500739,500758,500765,500752)
 OR master_guid IN (500743,500762,500753,500769,500770,500750,500767,500736,500768,500763,500749,500739,500758,500765,500752);
-- Updates
UPDATE creature_template SET InhabitType = 3 WHERE entry = 16570;
UPDATE creature SET spawndist=10, MovementType=1 WHERE id = 16570 AND map = 571;
UPDATE creature SET position_x = 4970.85, position_y = -2643.47, position_z = 290.496 WHERE guid = 500760;
UPDATE creature SET position_x = 4928.952148, position_y = -2864.569824, position_z = 289.110901 WHERE guid = 500746;
UPDATE creature SET position_x = 4999.104004, position_y = -2830.015625, position_z = 287.920715, spawndist=15, MovementType=1 WHERE guid = 500732;
UPDATE creature SET position_x = 5041.634277, position_y = -2842.170654, position_z = 287.749847, spawndist=15, MovementType=1 WHERE guid = 500738;
UPDATE creature SET position_x = 5044.507812, position_y = -2807.124023, position_z = 288.007904, spawndist=15, MovementType=1 WHERE guid = 500772;
UPDATE creature SET position_x = 4946.909668, position_y = -2775.588867, position_z = 287.888458, spawndist=15, MovementType=1 WHERE guid = 500737;
UPDATE creature SET position_x = 4951.271484, position_y = -2740.281006, position_z = 288.053864, spawndist=15, MovementType=1 WHERE guid = 500733;
UPDATE creature SET position_x = 4987.204590, position_y = -2735.493164, position_z = 287.946167, spawndist=15, MovementType=1 WHERE guid = 500741;
UPDATE creature SET position_x = 5118.500488, position_y = -2784.299072, position_z = 287.887024, spawndist=15, MovementType=1 WHERE guid = 500740;
UPDATE creature SET position_x = 5133.017090, position_y = -2727.718750, position_z = 287.906860, spawndist=15, MovementType=1 WHERE guid = 500734;
UPDATE creature SET position_x = 5202.106445, position_y = -2700.198242, position_z = 288.190094, spawndist=15, MovementType=1 WHERE guid = 500773;
UPDATE creature SET position_x = 5201.416016, position_y = -2663.022705, position_z = 288.226807, spawndist=15, MovementType=1 WHERE guid = 500744;
UPDATE creature SET position_x = 5240.720215, position_y = -2661.655762, position_z = 288.055725, spawndist=15, MovementType=1 WHERE guid = 500756;
UPDATE creature SET position_x = 5121.915527, position_y = -2616.033691, position_z = 288.671722, spawndist=15, MovementType=1 WHERE guid = 500735;
UPDATE creature SET position_x = 5124.766602, position_y = -2582.640869, position_z = 287.560822, spawndist=15, MovementType=1 WHERE guid = 500759;
UPDATE creature SET position_x = 5167.133301, position_y = -2571.373291, position_z = 288.228577, spawndist=15, MovementType=1 WHERE guid = 500761;
UPDATE creature SET position_x = 5241.839844, position_y = -2587.058350, position_z = 289.779968, spawndist=15, MovementType=1 WHERE guid = 500755;
-- waypoints
UPDATE creature SET spawndist=0, MovementType=4 WHERE guid IN (500731,500742);
UPDATE creature SET position_x = 5197.386230, position_y = -2570.696777, position_z = 286.888672, orientation = 2.307906,spawndist=0, MovementType=4 WHERE guid = 500747;
UPDATE creature SET position_x = 5145.600586, position_y = -2685.854492, position_z = 286.965210, orientation = 5.461277,spawndist=0, MovementType=4 WHERE guid = 500771;
DELETE FROM creature_movement WHERE id IN (500731,500742,500747,500771);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 500731
(500731,1,4982.48,-2857.53,288.578,100,0,0),
(500731,2,4998.08,-2874.11,288.209,100,0,0),
(500731,3,5014.84,-2892.53,288.262,100,0,0),
(500731,4,5026.34,-2903.34,287.94,100,0,0),
(500731,5,5038.92,-2891.62,286.965,100,0,0),
(500731,6,5054.13,-2877.28,286.965,100,0,0),
(500731,7,5065.75,-2866.47,286.965,100,0,0),
(500731,8,5080.33,-2852.81,286.965,100,0,0),
(500731,9,5095.95,-2837.96,286.982,100,0,0),
(500731,10,5111.43,-2823.91,286.966,100,0,0),
(500731,11,5095.31,-2805.28,286.966,100,0,0),
(500731,12,5081.55,-2790.93,286.964,100,0,0),
(500731,13,5056.68,-2763.71,286.964,100,0,0),
-- 500742
(500742,1,4918.39,-2787.88,288.01,100,0,0),
(500742,2,4904.48,-2772.16,287.78,100,0,0),
(500742,3,4889.42,-2753.11,287.045,100,0,0),
(500742,4,4902.09,-2742.14,286.965,100,0,0),
(500742,5,4920.54,-2726.03,287.077,100,0,0),
(500742,6,4938.76,-2709.65,286.998,100,0,0),
(500742,7,4949.2,-2700.32,287.091,100,0,0),
(500742,8,4962.28,-2688.71,287.018,100,0,0),
(500742,9,4975.45,-2677.44,287.148,100,0,0),
(500742,10,4988.62,-2690.43,286.964,100,0,0),
(500742,11,5000.74,-2703.05,286.964,100,0,0),
(500742,12,5022.57,-2727,286.964,100,0,0),
-- 500747
(500747,1,5179.74,-2551.67,286.962,100,0,0),
(500747,2,5161.33,-2531.57,286.962,100,0,0),
(500747,3,5149.88,-2519.27,286.998,100,0,0),
(500747,4,5133.95,-2532.94,286.964,100,0,0),
(500747,5,5118.49,-2547.15,286.985,100,0,0),
(500747,6,5102.87,-2561.19,286.782,100,0,0),
(500747,7,5087.34,-2575.31,286.963,100,0,0),
(500747,8,5064.76,-2597.14,286.969,100,0,0),
(500747,9,5073.82,-2609.19,286.965,100,0,0),
(500747,10,5088.64,-2625.68,286.965,100,0,0),
(500747,11,5110.42,-2648.89,286.965,100,0,0),
-- 500771
(500771,1,5157.51,-2698.67,286.965,100,0,0),
(500771,2,5171.52,-2714.31,286.965,100,0,0),
(500771,3,5180.68,-2724.9,286.965,100,0,0),
(500771,4,5198.15,-2743.28,286.965,100,0,0),
(500771,5,5213.12,-2730.82,286.965,100,0,0),
(500771,6,5228.8,-2716.85,286.965,100,0,0),
(500771,7,5244.36,-2702.74,286.965,100,0,0),
(500771,8,5257.27,-2690.93,286.965,100,0,0),
(500771,9,5284.65,-2665.64,286.965,100,0,0),
(500771,10,5270.34,-2648.34,286.979,100,0,0),
(500771,11,5258.75,-2635.25,286.967,100,0,0),
(500771,12,5238.81,-2613.36,287.019,100,0,0);
DELETE FROM `creature_spawn_data` WHERE guid IN (500731,500742,500747,500771);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(500731,1),(500742,1),(500747,1),(500771,1);
-- Drakkari Water Binder 28303
-- missing added -- deleted guids reused
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(500743,28303,571,1,1,0,0,5023.98,-2891.456,289.5963,1.570796,300,300,0,0,0,0,0,0),
(500762,28303,571,1,1,0,0,5099.847,-2823.327,289.388,2.96706,300,300,0,0,0,0,0,0);
UPDATE creature SET position_x = 4900.514, position_y = -2756.5, position_z = 289.5981, orientation = 0.03490658,spawndist=0, MovementType=0 WHERE guid = 522153;
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 28303);
DELETE FROM creature_template_addon WHERE entry = 28303;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, auras) VALUES
(28303,0,0,1,0,0,28892);
DELETE FROM dbscripts_on_relay WHERE `id` = 20646;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20646,1000,1,10,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(20646,45000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(20646,46000,15,28892,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 28892');
-- waypoints
UPDATE creature SET position_x = 5004.665527, position_y = -2675.387451, position_z = 287.628723 WHERE guid = 522160;
UPDATE creature SET spawndist=0, MovementType=4 WHERE guid IN (522166,522160);
DELETE FROM creature_movement WHERE id IN (522166,522160);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 522166
(522166,1,5165.97,-2617.03,288.72,100,0,0),
(522166,2,5165.94,-2604.66,289.181,100,0,0),
(522166,3,5154.91,-2587.21,287.875,100,10000,2830301),
(522166,4,5143.54,-2579.62,288.194,100,0,0),
(522166,5,5134.31,-2573.98,288.635,100,0,0),
(522166,6,5120.45,-2570.74,288.382,100,10000,2830301),
(522166,7,5110.22,-2580.79,288.39,100,0,0),
(522166,8,5111.57,-2596.01,288.349,100,0,0),
(522166,9,5126.87,-2619.3,288.334,100,10000,2830301),
-- 522160
(522160,1,5033.31,-2680.21,287.901,100,0,0),
(522160,2,5059.1,-2688.22,288.005,100,20000,2830302),
(522160,3,5073.35,-2696.03,287.253,100,0,0),
(522160,4,5087.66,-2710.6,287.564,100,0,0),
(522160,5,5104.98,-2727.92,288.047,100,0,0),
(522160,6,5120.67,-2743.6,287.886,100,20000,2830302);
DELETE FROM dbscripts_on_creature_movement WHERE `id` IN (2830301,2830302);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2830301,1,31,16570,20,0,0,0,0,-9999,0,0,0,0,0,0,0,'search for 16570'),
(2830301,100,37,0,0,0,16570,20,0,0,0,0,0,0,0,0,0,'move towards target'),
(2830301,101,37,0,0,0,16570,20,2,0,0,0,0,0,0,0,0,'targetmove towards source'),
(2830301,4000,15,28892,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'cast 28892'),
(2830301,7000,15,51248,0,0,16570,20,7,0,0,0,0,0,0,0,0,'target self cast'),
(2830301,7001,14,28892,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2830302,1,31,16570,40,0,0,0,0,-19999,0,0,0,0,0,0,0,'search for 16570'),
(2830302,100,37,0,0,0,16570,40,0,0,0,0,0,0,0,0,0,'move towards target'),
(2830302,101,37,0,0,0,16570,40,2,0,0,0,0,0,0,0,0,'targetmove towards source'),
(2830302,5000,37,0,0,0,16570,40,0,0,0,0,0,0,0,0,0,'move towards target'),
(2830302,5001,37,0,0,0,16570,40,2,0,0,0,0,0,0,0,0,'targetmove towards source'),
(2830302,10000,15,28892,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'search for 16570'),
(2830302,14000,15,51248,0,0,16570,40,7,0,0,0,0,0,0,0,0,'target self cast'),
(2830302,14001,14,28892,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
