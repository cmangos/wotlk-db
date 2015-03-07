-- Classic [0970]
-- You have to loot more than just one box to get your equipment.
UPDATE gameobject_loot_template SET ChanceOrQuestChance = -10 WHERE entry = 9677 and item = 10715;
UPDATE gameobject_loot_template SET ChanceOrQuestChance = -10 WHERE entry = 9677 and item = 10717;
UPDATE gameobject_loot_template SET ChanceOrQuestChance = -10 WHERE entry = 9677 and item = 10718;
UPDATE gameobject_loot_template SET ChanceOrQuestChance = -10 WHERE entry = 9677 and item = 10722;

-- Classic [0969]
-- Fixed quest 5581 (Portal of the Legion) in Desolace
DELETE FROM dbscripts_on_go_template_use WHERE id IN (177243,177365,177366,177367,177368,177369,177397,177398,177399,177400);
INSERT INTO dbscripts_on_go_template_use VALUES 
(177243, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian'),
(177365, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian'),
(177366, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian'),
(177367, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian'),
(177368, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian'),
(177369, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian'),
(177397, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian'),
(177398, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian'),
(177399, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian'),
(177400, 0, 10, 11937, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Demon Portal - Summon Demon Portal Guardian');

-- Classic [0968]
-- Fixed NPC vendors items for vendors 10856 (Argent Quartermaster Hasana ), 10857 (Argent Quartermaster Lightspark ) & 11536 (Quartermaster Miranda Breechlock )
-- items are now available only once the related quests are completed
-- Also removed repeat flag for quest 5517, 5521, 5524 (Chromatic Mantle of the Dawn)
-- Prevented players to complete all Mantle of the Dawn quests as they should be able to do only one by tier (two tiers)
DELETE FROM conditions WHERE condition_entry BETWEEN 991 AND 1000;
INSERT INTO conditions VALUES 
(991, 8, 5513, 0),
(992, 8, 5507, 0),
(993, 8, 5504, 0),
(994, -2, 991, 992),
(995, -2, 993, 994),
(996, 8, 5524, 0),
(997, 8, 5521, 0),
(998, 8, 5517, 0),
(999, -2, 996, 997),
(1000, -2, 998, 999);
UPDATE npc_vendor SET condition_id = 995 WHERE item IN (18169,18170,18171,18172,18173);
UPDATE npc_vendor SET condition_id = 1000 WHERE item = 18182;
UPDATE quest_template SET ExclusiveGroup = 5504 WHERE entry IN (5504,5507,5513);
UPDATE quest_template SET ExclusiveGroup = 5517, SpecialFlags = 0 WHERE entry IN (5517,5521,5524);

-- Classic [0967] 
-- Fixed rewards of quest 8867 (Lunar Fireworks)
DELETE FROM item_loot_template WHERE entry IN (21740, 21743);
INSERT INTO item_loot_template VALUES 
(21740, 21724, 0, 1, 1, 1, 0),
(21740, 21725, 0, 1, 1, 1, 0),
(21740, 21726, 0, 1, 1, 1, 0),
(21743, 21733, 0, 1, 1, 1, 0),
(21743, 21734, 0, 1, 1, 1, 0),
(21743, 21735, 0, 1, 1, 1, 0);

-- Classic [0965]
-- Removed spawns of NPC 11258 from Scholomance : this NPC is summoned 
DELETE FROM creature WHERE id = 11258 AND map = 289;
DELETE FROM creature_addon WHERE guid IN (91405,91406,91407,91421,91422,91427);

-- Classic [0943] and part of [945]
-- Quest: An Imp's Request should have quest level 50/52, instead of 52/60
-- Creature: Sea Elemental should deal frost instead of physical melee damage.
-- Creature: Sea Spray should also deal frost damage
UPDATE creature_template SET DamageSchool = 4 WHERE Entry = 5461;
UPDATE creature_template SET DamageSchool = 4 WHERE Entry = 5462;
UPDATE quest_template SET MinLevel = 50, QuestLevel = 52, RewMoneyMaxLevel = 2280 WHERE entry = 8419;

-- Classic [0938]
-- Quest 7046 (The Scepter of Celebras) needs quest 7044 (Legends of Maraudon) as prerequist
UPDATE quest_template SET PrevQuestId= 7044 WHERE entry = 7046;

-- Classic [0937]
-- Added patrol of NPC 13599 (Stolid Snapjaw) in Maraudon
DELETE FROM creature_linking WHERE guid IN (55115, 55116, 55117);
INSERT INTO creature_linking VALUES
(55115, 55118, 512),
(55116, 55118, 512),
(55117, 55118, 512);
UPDATE creature SET MovementType = 2 WHERE guid = 55118;
DELETE FROM creature_movement WHERE id = 55118;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(55118, 1, 560.44, 74.1416, -96.3128, 0, 0, 1.94883, 0, 0),(55118, 2, 556.001, 97.5598, -96.3128, 0, 0, 1.35115, 0, 0),(55118, 3, 562.821, 116.938, -96.3128, 0, 0, 0.716542, 0, 0),
(55118, 4, 558.737, 80.2023, -96.3128, 0, 0, 4.70244, 0, 0),(55118, 5, 567.894, 47.7771, -96.3128, 0, 0, 4.88465, 0, 0),(55118, 6, 573.623, 24.1758, -96.3128, 0, 0, 5.21452, 0, 0),
(55118, 7, 583.107, 6.90322, -96.3128, 0, 0, 5.56323, 0, 0),(55118, 8, 597.509, 5.07898, -96.3128, 0, 0, 1.18385, 0, 0),(55118, 9, 600.013, 21.6183, -96.3128, 0, 0, 2.22686, 0, 0),
(55118, 10, 575.202, 46.2133, -96.3128, 0, 0, 2.10748, 0, 0);

-- Classic [0936]
-- Fixed speed of NPC 12222 (Creeping Sludge) in Maraudon
UPDATE creature_template SET SpeedWalk = 0.3, SpeedRun = 0.4 WHERE Entry = 12222;

-- Classic [0934] 
-- Added missing NPCs 12224 and 12237 in Maraudon 
-- Spawned missing NPCs in Maraudon : 12224 (Cavern Shambler)
-- Added movement to some of the spawns
-- Fixed rank (is rare elite) and movement of  NPC 12237 (Meshlok the Harvester)
-- Placed NPC 12237 (Meshlok the Harvester) into a pool with its placeholder
DELETE FROM creature WHERE guid IN (54571, 54645);
-- Spawned missing NPCs in Maraudon : 12224 (Cavern Shambler)
DELETE FROM creature WHERE guid BETWEEN 128720 AND 128725;
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(128720, 12237, 349, 0, 0, 632.101, -92.409, -57.4999, 3.49563, 7200, 0, 0, 5757, 0, 0, 2),
(128721, 12224, 349, 0, 0, 748.725, -81.8362, -57.4696, 0.620471, 7200, 0, 0, 4434, 2301, 0, 2),
(128722, 12224, 349, 0, 0, 632.101, -92.409, -57.4999, 3.49563, 7200, 0, 0, 4434, 2301, 0, 2),
(128723, 12224, 349, 0, 0, 818.573, -215.097, -77.1489, 4.14281, 7200, 0, 0, 4434, 2301, 0, 2),
(128724, 12224, 349, 0, 0, 813.453, -370.449, -59.2094, 6.02488, 7200, 5, 0, 4434, 2301, 0, 1),
(128725, 12224, 349, 0, 0, 719.899, -83.8715, -57.2155, 3.48941, 7200, 5, 0, 4434, 2301, 0, 1);
-- Added movement to some of the spawns
DELETE FROM creature_movement WHERE id IN (128721, 128722, 128723);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- NPC 1
(128721, 1, 747.806, -79.9688, -57.4744, 0, 0, 3.30872, 0, 0),(128721, 2, 750.866, -86.8807, -57.4595, 0, 0, 2.95922, 0, 0),(128721, 3, 741.016, -94.8653, -57.4978, 0, 0, 1.6319, 0, 0),
(128721, 4, 745.803, -84.0748, -57.4833, 0, 0, 1.16459, 0, 0),(128721, 5, 738.607, -70.5452, -57.4977, 0, 0, 4.23156, 0, 0),(128721, 6, 751.253, -70.6902, -57.3912, 0, 0, 4.39257, 0, 0),
(128721, 7, 744.367, -78.7708, -57.4887, 0, 0, 5.06801, 0, 0),(128721, 8, 756.588, -80.4979, -57.3727, 0, 0, 3.98809, 0, 0),(128721, 9, 736.461, -89.3428, -57.4996, 0, 0, 3.35192, 0, 0),
(128721, 10, 734.7, -80.3283, -57.4996, 0, 0, 0.198547, 0, 0),(128721, 11, 744.209, -79.5844, -57.4915, 0, 0, 0.045395, 0, 0),(128721, 12, 734.044, -71.701, -57.4977, 0, 0, 4.40828, 0, 0),
-- NPC 2
(128722, 1, 632.101, -92.409, -57.4999, 0, 0, 0.240159, 0, 0),(128722, 2, 642.895, -89.225, -57.4999, 0, 0, 0.306918, 0, 0),(128722, 3, 654.193, -88.5337, -57.4999, 0, 0, 6.19348, 0, 0),
(128722, 4, 666.728, -91.7718, -57.4999, 0, 0, 6.01284, 0, 0),(128722, 5, 675.549, -93.9197, -57.4999, 0, 0, 6.13457, 0, 0),(128722, 6, 690.764, -89.7546, -57.4999, 0, 0, 0.61715, 0, 0),
(128722, 7, 702.83, -84.753, -57.4631, 0, 0, 0.173401, 0, 0),(128722, 8, 715.159, -83.791, -57.1193, 0, 0, 0.114496, 0, 0),(128722, 9, 708.503, -83.9885, -57.2554, 0, 0, 3.35426, 0, 0),
(128722, 10, 699.353, -86.647, -57.5, 0, 0, 3.55454, 0, 0),(128722, 11, 681.834, -93.4817, -57.5, 0, 0, 3.35034, 0, 0),(128722, 12, 674.938, -93.0037, -57.5, 0, 0, 2.78878, 0, 0),
(128722, 13, 665.508, -90.6338, -57.5, 0, 0, 2.91051, 0, 0),(128722, 14, 652.935, -87.6942, -57.5, 0, 0, 3.10686, 0, 0),(128722, 15, 634.167, -92.0013, -57.5, 0, 0, 3.60559, 0, 0),
-- NPC 3
(128723, 1, 818.873, -216.343, -77.1489, 0, 0, 2.28534, 0, 0),(128723, 2, 813.487, -210.328, -77.1489, 0, 0, 2.30105, 0, 0),(128723, 3, 806.875, -204.634, -77.1489, 0, 0, 2.43064, 0, 0),
(128723, 4, 804.811, -193.5, -77.1489, 0, 0, 1.55099, 0, 0),(128723, 5, 806.356, -184.124, -77.1489, 0, 0, 1.35857, 0, 0),(128723, 6, 813.319, -173.6, -77.2995, 0, 0, 0.541757, 0, 0),
(128723, 7, 808.847, -175.006, -77.3074, 0, 0, 5.0146, 0, 0),(128723, 8, 805.501, -182.277, -77.1489, 0, 0, 4.41377, 0, 0),(128723, 9, 804.538, -193.051, -77.1489, 0, 0, 4.92428, 0, 0),
(128723, 10, 807.906, -203.501, -77.1489, 0, 0, 5.34446, 0, 0);
-- Fixed rank (is rare elite) and movement of  NPC 12237 (Meshlok the Harvester)
UPDATE creature_template SET MovementType = 2 WHERE Entry = 12237;
DELETE FROM creature_movement_template WHERE entry = 12237;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(12237, 1, 632.101, -92.409, -57.4999, 0, 0, 0.240159, 0, 0),(12237, 2, 642.895, -89.225, -57.4999, 0, 0, 0.306918, 0, 0),(12237, 3, 654.193, -88.5337, -57.4999, 0, 0, 6.19348, 0, 0),
(12237, 4, 666.728, -91.7718, -57.4999, 0, 0, 6.01284, 0, 0),(12237, 5, 675.549, -93.9197, -57.4999, 0, 0, 6.13457, 0, 0),(12237, 6, 690.764, -89.7546, -57.4999, 0, 0, 0.61715, 0, 0),
(12237, 7, 702.83, -84.753, -57.4631, 0, 0, 0.173401, 0, 0),(12237, 8, 715.159, -83.791, -57.1193, 0, 0, 0.114496, 0, 0),(12237, 9, 708.503, -83.9885, -57.2554, 0, 0, 3.35426, 0, 0),
(12237, 10, 699.353, -86.647, -57.5, 0, 0, 3.55454, 0, 0),(12237, 11, 681.834, -93.4817, -57.5, 0, 0, 3.35034, 0, 0),(12237, 12, 674.938, -93.0037, -57.5, 0, 0, 2.78878, 0, 0),
(12237, 13, 665.508, -90.6338, -57.5, 0, 0, 2.91051, 0, 0),(12237, 14, 652.935, -87.6942, -57.5, 0, 0, 3.10686, 0, 0),(12237, 15, 634.167, -92.0013, -57.5, 0, 0, 3.60559, 0, 0);
-- Placed NPC 12237 (Meshlok the Harvester) into a pool with its placeholder
DELETE FROM pool_creature WHERE guid IN (54652, 128720, 128723);
INSERT INTO pool_creature VALUES
(128720, 1211, 30, 'Maraudon - Meshlok the Harvester'),
(128723, 1211, 0, 'Maraudon - Meshlok the Harvester placeholder'),
(54652, 1211, 0, 'Maraudon - Meshlok the Harvester placeholder');
DELETE FROM pool_template WHERE entry = 1211;
INSERT INTO pool_template VALUES
(1211, 1, 'Maraudon - Meshlok the Harvester');

-- Classic [0933]
-- Linked NPC 11784 (Theradrim Guardian) with its small adds 11783 (Theradrim Shardling) in Maraudon
-- The adds will engage along with their master and follow it
DELETE FROM creature_linking_template WHERE entry = 11783;
INSERT creature_linking_template VALUES
(11783, 349, 11784, 1 + 2 + 512, 15);
-- Removed all spawns of NPC 11783 (Theradrim Shardling) in Maraudon
-- because they are summoned
DELETE FROM creature WHERE id = 11783;
-- Removed duplicate NPC 11784 (Theradrim Guardian)
DELETE FROM creature WHERE guid = 55466;
-- Theradrim Guardians now patrol in the last part of Maraudon
UPDATE creature SET MovementType = 2 WHERE id = 11784;
DELETE FROM creature_movement WHERE id = 55465;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id,  orientation, model1, model2) VALUES
(55465, 1, 248.538, -93.024, -129.62, 0, 0, 3.48821, 0, 0),(55465, 2, 219.021, -92.1171, -129.607, 0, 0, 1.77761, 0, 0),(55465, 3, 258.14, -97.1733, -129.619, 0, 0, 4.76526, 0, 0),
(55465, 4, 246.967, -145.304, -130.844, 0, 0, 4.31759, 0, 0),(55465, 5, 213.934, -199.873, -131.159, 0, 0, 4.56106, 0, 0),(55465, 6, 248.627, -140.739, -131.005, 0, 0, 1.24747, 0, 0),
(55465, 7, 259.8, -98.2245, -129.619, 0, 0, 2.83554, 0, 0);
DELETE FROM creature_movement WHERE id = 55471;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id,  orientation, model1, model2) VALUES
(55471, 1, 200.354, -133.505, -101.058, 0, 0, 0.888545, 0, 0),(55471, 9, 199.686, -134.684, -101.541, 0, 0, 4.06627, 0, 0),(55471, 8, 226.955, -112.811, -89.7437, 0, 0, 3.15442, 0, 0),
(55471, 7, 276.408, -121.048, -83.6496, 0, 0, 2.72323, 0, 0),(55471, 6, 299.577, -148.794, -69.9433, 0, 0, 1.75562, 0, 0),(55471, 5, 298.76, -178.312, -59.8991, 0, 0, 4.52729, 0, 0),
(55471, 4, 300.187, -149.075, -69.7502, 0, 0, 4.81004, 0, 0),(55471, 3, 278.173, -121.002, -83.4807, 0, 0, 5.93787, 0, 0),(55471, 2, 230.841, -109.688, -88.8687, 0, 0, 0.20996, 0, 0),
(55471, 10, 183.329, -185.544, -111.375, 0, 0, 4.68595, 0, 0);
DELETE FROM creature_movement WHERE id = 88989;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id,  orientation, model1, model2) VALUES
(88989, 1, 109.037, -268.553, -108.677, 0, 0, 6.01719, 0, 0),(88989, 2, 151.884, -275.712, -108.677, 0, 0, 0.864195, 0, 0),(88989, 3, 143.666, -231.173, -108.852, 0, 0, 2.20251, 0, 0),
(88989, 4, 156.17, -275.286, -108.676, 0, 0, 3.58089, 0, 0),(88989, 5, 138.876, -278.577, -108.676, 0, 0, 2.8379, 0, 0),(88989, 6, 79.5604, -259.988, -108.678, 0, 0, 2.8379, 0, 0),
(88989, 7, 62.416, -207.188, -109.659, 0, 0, 1.94569, 0, 0),(88989, 8, 8.187, -127.348, -123.845, 0, 0, 1.395, 0, 0),(88989, 9, 28.705, -38.025, -128.761, 0, 0, 1.282, 0, 0),
(88989, 10, 8.187, -127.348, -123.845, 0, 0, 5.134, 0, 0),(88989, 11, 62.416, -207.188, -109.659, 0, 0, 1.94569, 0, 0),(88989, 12, 79.0383, -255.555, -108.677, 0, 0, 5.96536, 0, 0);
DELETE FROM creature_movement WHERE id = 56485;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id,  orientation, model1, model2) VALUES
(56485, 1, 150.49, -193.898, -171.747, 0, 0, 4.68202, 0, 0),(56485, 2, 152.233, -231.891, -170.382, 0, 0, 4.4087, 0, 0),(56485, 3, 125.841, -257.66, -168.113, 0, 0, 5.52554, 0, 0),
(56485, 4, 155.987, -284.034, -168.989, 0, 0, 5.89625, 0, 0),(56485, 5, 148.455, -238.759, -169.543, 0, 0, 1.08961, 0, 0),(56485, 6, 155.062, -199.53, -171.957, 0, 0, 3.02876, 0, 0),
(56485, 7, 104.937, -185.658, -167.457, 0, 0, 2.76329, 0, 0),(56485, 8, 100.198, -176.082, -167.457, 0, 0, 1.16972, 0, 0),(56485, 9, 111.893, -160.596, -167.328, 0, 0, 5.89781, 0, 0),
(56485, 10, 121.304, -176.939, -167.457, 0, 0, 5.01502, 0, 0),(56485, 11, 128.284, -191.12, -168.26, 0, 0, 5.77529, 0, 0);
DELETE FROM creature_movement WHERE id = 56501;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id,  orientation, model1, model2) VALUES
(56501, 1, 177.079, -304.031, -172.328, 0, 0, 3.46308, 0, 0),(56501, 2, 146.519, -316.403, -174.591, 0, 0, 4.85009, 0, 0),(56501, 3, 153.733, -376.576, -175.003, 0, 0, 5.94886, 0, 0),
(56501, 4, 211.381, -381.672, -160.691, 0, 0, 6.21354, 0, 0),(56501, 5, 156.615, -376.11, -175.002, 0, 0, 1.73206, 0, 0),(56501, 6, 148.461, -317.13, -174.589, 0, 0, 0.314416, 0, 0);
DELETE FROM creature_movement WHERE id = 56515;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id,  orientation, model1, model2) VALUES
(56515, 1, 312.737, -343.241, -117.348, 0, 0, 1.19013, 0, 0),(56515, 11, 251.778, -396.72, -139.555, 0, 0, 6.22297, 0, 0),(56515, 10, 256.965, -328.427, -140.451, 0, 0, 1.59383, 0, 0),
(56515, 9, 250.345, -396.668, -139.555, 0, 0, 3.10022, 0, 0),(56515, 8, 325.14, -394.223, -124.867, 0, 0, 4.68437, 0, 0),(56515, 7, 317.848, -331.827, -116.777, 0, 0, 4.80689, 0, 0),
(56515, 6, 331.665, -290.395, -118.061, 0, 0, 4.19978, 0, 0),(56515, 5, 345.634, -276.933, -117.941, 0, 0, 4.20528, 0, 0),(56515, 4, 337.697, -262.309, -118.049, 0, 0, 6.10123, 0, 0),
(56515, 3, 320.637, -268.75, -117.912, 0, 0, 0.612865, 0, 0),(56515, 2, 328.91, -288.013, -118.069, 0, 0, 1.41947, 0, 0),(56515, 12, 319.125, -403.751, -124.866, 0, 0, 1.55692, 0, 0);

-- Classic [0930]
-- Linked NPC 12225 (Celebras the Cursed) with its 3 adds 13743 (Corrupt Force of Nature) in Maraudon
-- The adds will engage along with their master, respawn when it evades, despawn when it dies
DELETE FROM creature_linking_template WHERE entry = 13743;
INSERT creature_linking_template VALUES
(13743, 349, 12225, 1 + 2 + 4 + 16, 0);

-- Classic [0928]
-- Linked NPC 12236 (Lord Vyletongue) in Maraudon to its two adds
DELETE FROM creature_linking WHERE guid IN (54676, 54675);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(54675, 54579, 3),
(54676, 54579, 3);

-- Classic [0927]
-- Fixed stats of NPC 12238 (Zaetar's Spirit) in Maraudon
UPDATE creature_template SET UnitClass = 2, MinLevelHealth = 3297, MaxLevelHealth = 3297, MinLevelMana = 2434, MaxLevelMana = 2434, HealthMultiplier = 1.35, ArmorMultiplier = 1 WHERE Entry = 12238;

-- Classic [0926]
-- Prevent NPCs 12238 (Zaetar's Spirit) and 13716 (Celebras the Redeemed) to roam
-- around their spawn point. Now, players will be able to speak with them
-- and get the quest they offer without having the window abruptly closed
-- every few seconds
UPDATE creature_template SET MovementType = 0 WHERE Entry IN (12238, 13716);

-- Classic [0925]
-- BRD - Vault Improvements 
-- Relic Coffer are not selectable by default, to prevent abuse. They should become acessible as soon as you open the doors
DELETE FROM dbscripts_on_go_template_use WHERE buddy_entry = 160836;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(174554, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174555, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174556, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174557, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174558, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174559, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174560, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174561, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174562, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174563, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174564, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer'),
(174566, 0, 27, 8, 0, 160836, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Relic Coffer Door - Access: Relic Coffer');

-- Classic [0922] 
-- Fixed model of NPC 12423 (Guard Roberts) and 1642 (Northshire Guard) who were using wrong alternate model
-- Fixed model of NPC 1281 (Mountaineer Zaren) who were using an male alternate model though she is female.
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid IN (3257, 3258);
UPDATE creature_template SET modelid2 = 0 WHERE Entry = 1642; -- Northshire Guard
UPDATE creature_model_info SET modelid_other_gender = 3167 WHERE modelid = 5446;
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid IN (1812, 4887);

-- Classic [0921]
-- Fixed stats of NPC 13696 (Noxxious Scion) in Maraudon in order to make the quest 7029 and 7041 (Vyletongue Corruption - Alliance and Horde)
-- completable as the spawns were too strong
UPDATE creature_template SET Rank = 0, MinLevelHealth = 1848, MaxLevelHealth = 1919, HealthMultiplier = 1,
DamageMultiplier = 1.57, MinMeleeDmg = 72, MaxMeleeDmg = 96 WHERE Entry = 13696;

-- Classic [0920]
-- Removed duplicate NPC 12219 (Barbed Lasher) in Maraudon
DELETE FROM creature WHERE guid = 54310;

-- Classic [0919]
-- Huntress Skymane was tired of listening to Archaelogist Greywhiskers
-- 'stories' all day everyday and has joined her colleagues patrolling
-- around Darnassus
UPDATE creature SET MovementType = 2 WHERE id = 14378;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 14378;
DELETE FROM creature_movement_template WHERE entry = 14378;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES 
(14378, 1, 9656.18, 2598.45, 1335.68, 0, 0, 5.42763, 0, 0),(14378, 2, 9660.32, 2598.62, 1335.68, 0, 0, 5.67758, 0, 0),(14378, 3, 9664.55, 2596.83, 1335.68, 0, 0, 5.59118, 0, 0),
(14378, 4, 9668.79, 2593.05, 1335.68, 0, 0, 5.54799, 0, 0),(14378, 5, 9681.01, 2581.18, 1335.68, 0, 0, 5.4773, 0, 0),(14378, 6, 9700.06, 2560.13, 1335.68, 0, 0, 5.46553, 0, 0),
(14378, 7, 9704.62, 2554.05, 1335.68, 0, 0, 5.25347, 0, 0),(14378, 8, 9706.54, 2550.39, 1335.68, 0, 0, 5.09247, 0, 0),(14378, 9, 9710.17, 2537.88, 1335.68, 0, 0, 4.80187, 0, 0),
(14378, 10, 9710.75, 2520.64, 1335.69, 0, 0, 4.75475, 0, 0),(14378, 11, 9710.52, 2513.64, 1335.69, 0, 0, 4.68406, 0, 0),(14378, 12, 9709.42, 2508.07, 1335.68, 0, 0, 4.47201, 0, 0),
(14378, 13, 9707.4, 2500.94, 1335.68, 0, 0, 4.40525, 0, 0),(14378, 14, 9705.06, 2494.84, 1335.68, 0, 0, 4.23247, 0, 0),(14378, 15, 9701.5, 2489.61, 1335.68, 0, 0, 4.00078, 0, 0),
(14378, 16, 9696.14, 2483, 1335.68, 0, 0, 3.99292, 0, 0),(14378, 17, 9689.93, 2476.24, 1335.68, 0, 0, 3.96936, 0, 0),(14378, 18, 9671.14, 2457.36, 1335.68, 0, 0, 3.87904, 0, 0),
(14378, 19, 9665.81, 2451.59, 1335.68, 0, 0, 4.03612, 0, 0),(14378, 20, 9662.34, 2445.56, 1335.68, 0, 0, 4.28744, 0, 0),(14378, 21, 9658.51, 2433.99, 1335.68, 0, 0, 4.58196, 0, 0),
(14378, 22, 9656.64, 2416.64, 1335.68, 0, 0, 4.6605, 0, 0),(14378, 23, 9656.21, 2411.23, 1335.68, 0, 0, 5.33201, 0, 0),(14378, 24, 9657.62, 2407.5, 1335.68, 0, 0, 0.087112, 0, 0),
(14378, 25, 9660.41, 2404.48, 1335.68, 0, 0, 1.0885, 0, 0),(14378, 26, 9663.79, 2405, 1335.68, 0, 0, 1.52832, 0, 0),(14378, 27, 9666.78, 2408.15, 1335.68, 0, 0, 1.1631, 0, 0),
(14378, 28, 9667.68, 2414.61, 1335.68, 0, 0, 1.60685, 0, 0),(14378, 29, 9666.67, 2431.41, 1335.68, 0, 0, 1.52438, 0, 0),(14378, 30, 9666.84, 2434.89, 1335.68, 0, 0, 1.4105, 0, 0),
(14378, 31, 9668.17, 2437.16, 1335.68, 0, 0, 0.923555, 0, 0),(14378, 32, 9671.37, 2439.07, 1335.68, 0, 0, 0.534783, 0, 0),(14378, 33, 9682.48, 2445.66, 1335.68, 0, 0, 0.534783, 0, 0),
(14378, 34, 9686.26, 2448.24, 1335.68, 0, 0, 0.6683, 0, 0),(14378, 35, 9689.86, 2451.4, 1335.68, 0, 0, 0.735059, 0, 0),(14378, 36, 9699.59, 2460.19, 1335.68, 0, 0, 0.617249, 0, 0),
(14378, 37, 9704.56, 2466.22, 1335.68, 0, 0, 0.970683, 0, 0),(14378, 38, 9711.66, 2477.24, 1335.68, 0, 0, 0.998172, 0, 0),(14378, 39, 9716.87, 2487.32, 1335.68, 0, 0, 1.15918, 0, 0),
(14378, 40, 9723.13, 2504.55, 1335.68, 0, 0, 1.24557, 0, 0),(14378, 41, 9723.82, 2507.46, 1335.68, 0, 0, 0.954975, 0, 0),(14378, 42, 9725.99, 2508.91, 1335.68, 0, 0, 0.562276, 0, 0),
(14378, 43, 9728.13, 2509.97, 1335.11, 0, 0, 0.358073, 0, 0),(14378, 47, 9765.19, 2520.92, 1322.01, 0, 0, 0.275602, 0, 0),(14378, 48, 9769, 2521.82, 1320.64, 0, 0, 0.161719, 0, 0),
(14378, 49, 9777.07, 2522.24, 1318.95, 0, 0, 0.043909, 0, 0),(14378, 50, 9887.82, 2524.85, 1318.66, 0, 0, 0.024274, 0, 0),(14378, 51, 9893.16, 2527.88, 1317.06, 0, 0, 0.177427, 0, 0),
(14378, 52, 9900.56, 2529.79, 1315.35, 0, 0, 0.338434, 0, 0),(14378, 53, 9905.75, 2532.06, 1316.06, 0, 0, 0.515148, 0, 0),(14378, 54, 9909.68, 2535.14, 1316.31, 0, 0, 0.809673, 0, 0),
(14378, 55, 9913.72, 2539.99, 1316.71, 0, 0, 0.872505, 0, 0),(14378, 56, 9916.63, 2543.21, 1316.93, 0, 0, 0.73506, 0, 0),(14378, 57, 9921.87, 2547.48, 1317.18, 0, 0, 0.487659, 0, 0),
(14378, 58, 9928.26, 2550.77, 1317.37, 0, 0, 0.436608, 0, 0),(14378, 59, 9942.23, 2554.12, 1316.52, 0, 0, 0.126376, 0, 0),(14378, 60, 9948.7, 2553.54, 1316.38, 0, 0, 6.06791, 0, 0),
(14378, 61, 9954.08, 2551.81, 1316.45, 0, 0, 5.85979, 0, 0),(14378, 62, 9969.74, 2542.73, 1316.55, 0, 0, 5.67915, 0, 0),(14378, 63, 9975.08, 2537.6, 1316.39, 0, 0, 5.4828, 0, 0),
(14378, 64, 9981.07, 2529.62, 1316.28, 0, 0, 5.1176, 0, 0),(14378, 65, 9982.52, 2524.88, 1316.41, 0, 0, 4.75631, 0, 0),(14378, 66, 9981.29, 2520.33, 1316.73, 0, 0, 4.19083, 0, 0),
(14378, 67, 9974.37, 2515.55, 1317.4, 0, 0, 3.66461, 0, 0),(14378, 68, 9970.36, 2511.68, 1317.56, 0, 0, 4.22617, 0, 0),(14378, 69, 9967.51, 2504.84, 1317.04, 0, 0, 4.37147, 0, 0),
(14378, 70, 9964.53, 2499.52, 1316.68, 0, 0, 4.10051, 0, 0),(14378, 71, 9955.46, 2488.89, 1316.39, 0, 0, 4.00233, 0, 0),(14378, 72, 9952.66, 2484.78, 1316.27, 0, 0, 4.24581, 0, 0),
(14378, 73, 9951.14, 2479.14, 1316.13, 0, 0, 4.6817, 0, 0),(14378, 74, 9951.26, 2476.07, 1316.13, 0, 0, 4.7838, 0, 0),(14378, 75, 9954.01, 2390.72, 1329.11, 0, 0, 4.7406, 0, 0),
(14378, 76, 9954.07, 2376.3, 1329.95, 0, 0, 4.69348, 0, 0),(14378, 77, 9953.15, 2341.6, 1330.78, 0, 0, 4.68562, 0, 0),(14378, 78, 9952.9, 2336.6, 1331.57, 0, 0, 4.69348, 0, 0),
(14378, 79, 9952.84, 2329.64, 1333.63, 0, 0, 4.71704, 0, 0),(14378, 80, 9952.91, 2323.1, 1335.56, 0, 0, 4.72882, 0, 0),(14378, 81, 9954.13, 2282.49, 1341.39, 0, 0, 4.7406, 0, 0),
(14378, 82, 9954.13, 2273.11, 1341.39, 0, 0, 4.71311, 0, 0),(14378, 83, 9954.69, 2263.74, 1338.3, 0, 0, 4.85448, 0, 0),(14378, 84, 9955.94, 2257.77, 1336.06, 0, 0, 4.98799, 0, 0),
(14378, 85, 9956.46, 2254.1, 1335.34, 0, 0, 4.77594, 0, 0),(14378, 86, 9955.66, 2143.38, 1327.65, 0, 0, 4.70526, 0, 0),(14378, 87, 9955.42, 2140.11, 1327.64, 0, 0, 4.45393, 0, 0),
(14378, 88, 9953.75, 2133.55, 1327.65, 0, 0, 4.47357, 0, 0),(14378, 89, 9953.16, 2129.89, 1327.65, 0, 0, 4.64242, 0, 0),(14378, 90, 9952.9, 2125.32, 1327.65, 0, 0, 4.68169, 0, 0),
(14378, 91, 9953.07, 2118.56, 1327.64, 0, 0, 4.81521, 0, 0),(14378, 92, 9953.7, 2114.02, 1327.64, 0, 0, 5.02726, 0, 0),(14378, 93, 9954.83, 2110.26, 1327.7, 0, 0, 4.96836, 0, 0),
(14378, 94, 9955.46, 2106.18, 1327.72, 0, 0, 4.7406, 0, 0),(14378, 95, 9955.73, 2095.28, 1327.72, 0, 0, 4.73274, 0, 0),(14378, 96, 9955.64, 2091.79, 1327.72, 0, 0, 4.52069, 0, 0),
(14378, 97, 9954.58, 2088.01, 1327.7, 0, 0, 4.40288, 0, 0),(14378, 98, 9952.2, 2079.61, 1327.69, 0, 0, 4.50891, 0, 0),(14378, 99, 9951.83, 2074.18, 1327.75, 0, 0, 4.77987, 0, 0),
(14378, 100, 9952.93, 2071.12, 1327.79, 0, 0, 5.19613, 0, 0),(14378, 101, 9958.11, 2062.54, 1327.98, 0, 0, 5.28252, 0, 0),(14378, 102, 9960.81, 2058.57, 1328.06, 0, 0, 5.17649, 0, 0),
(14378, 103, 9962.73, 2054.9, 1328.13, 0, 0, 5.32964, 0, 0),(14378, 104, 9965.36, 2051.71, 1328.16, 0, 0, 5.50635, 0, 0),(14378, 105, 9966.79, 2050.07, 1328.16, 0, 0, 5.26288, 0, 0),
(14378, 106, 9967.93, 2046.62, 1328.15, 0, 0, 4.73274, 0, 0),(14378, 107, 9966.99, 2045.42, 1328.17, 0, 0, 4.02588, 0, 0),(14378, 108, 9964.74, 2044.57, 1328.21, 0, 0, 3.26012, 0, 0),
(14378, 109, 9962.34, 2046.65, 1328.25, 0, 0, 2.37262, 0, 0),(14378, 110, 9960.36, 2049.51, 1328.27, 0, 0, 2.20376, 0, 0),(14378, 111, 9959.07, 2052.04, 1328.26, 0, 0, 2.00741, 0, 0),
(14378, 112, 9950.28, 2069.64, 1327.87, 0, 0, 2.0349, 0, 0),(14378, 113, 9948.29, 2074.48, 1327.77, 0, 0, 1.90531, 0, 0),(14378, 114, 9948.3, 2084.36, 1327.76, 0, 0, 1.43799, 0, 0),
(14378, 115, 9949.6, 2089.89, 1327.76, 0, 0, 1.36731, 0, 0),(14378, 116, 9951.77, 2094.43, 1327.73, 0, 0, 1.5558, 0, 0),(14378, 117, 9951.88, 2102.69, 1327.76, 0, 0, 1.73252, 0, 0),
(14378, 118, 9951.08, 2106.76, 1327.74, 0, 0, 1.81891, 0, 0),(14378, 119, 9949.91, 2112.98, 1327.66, 0, 0, 1.67754, 0, 0),(14378, 120, 9949.73, 2123.24, 1327.65, 0, 0, 1.56366, 0, 0),
(14378, 121, 9950.77, 2216.92, 1330.02, 0, 0, 1.55973, 0, 0),(14378, 122, 9950.73, 2222.15, 1330.64, 0, 0, 1.59115, 0, 0),(14378, 123, 9950.12, 2272.14, 1341.39, 0, 0, 1.57544, 0, 0),
(14378, 124, 9949.18, 2292.22, 1341.39, 0, 0, 1.60293, 0, 0),(14378, 125, 9948.65, 2319.06, 1336.55, 0, 0, 1.60293, 0, 0),(14378, 126, 9945.79, 2405.51, 1328.19, 0, 0, 1.599, 0, 0),
(14378, 127, 9944.77, 2436.95, 1324.25, 0, 0, 1.60293, 0, 0),(14378, 128, 9943.98, 2461.62, 1319.47, 0, 0, 1.30448, 0, 0),(14378, 129, 9946.07, 2472.11, 1316.96, 0, 0, 1.38302, 0, 0),
(14378, 130, 9946.62, 2477.31, 1316.07, 0, 0, 1.58329, 0, 0),(14378, 131, 9945.8, 2482.44, 1316.18, 0, 0, 1.7443, 0, 0),(14378, 132, 9944.39, 2485.33, 1316.42, 0, 0, 2.39225, 0, 0),
(14378, 133, 9939.86, 2488.75, 1317.01, 0, 0, 2.56112, 0, 0),(14378, 134, 9937.21, 2490.67, 1317.35, 0, 0, 2.36476, 0, 0),(14378, 135, 9935.45, 2493.64, 1317.81, 0, 0, 1.91709, 0, 0),
(14378, 136, 9935.56, 2497.12, 1317.81, 0, 0, 1.44978, 0, 0),(14378, 137, 9936.5, 2501.6, 1317.84, 0, 0, 1.1042, 0, 0),(14378, 138, 9938.76, 2506.57, 1317.83, 0, 0, 1.23379, 0, 0),
(14378, 139, 9937.61, 2510.13, 1317.81, 0, 0, 2.74568, 0, 0),(14378, 140, 9933.53, 2505.2, 1317.86, 0, 0, 4.1594, 0, 0),(14378, 141, 9932.98, 2502.82, 1317.82, 0, 0, 3.87273, 0, 0),
(14378, 142, 9930.73, 2501.57, 1317.82, 0, 0, 3.22478, 0, 0),(14378, 143, 9926.17, 2501.67, 1318.13, 0, 0, 2.97345, 0, 0),(14378, 144, 9921.99, 2503.47, 1317.86, 0, 0, 2.46687, 0, 0),
(14378, 145, 9918.42, 2506.99, 1317.34, 0, 0, 2.2823, 0, 0),(14378, 146, 9916.02, 2511.1, 1317.06, 0, 0, 1.99955, 0, 0),(14378, 147, 9915.6, 2522.91, 1317.01, 0, 0, 2.21161, 0, 0),
(14378, 148, 9911.31, 2527.55, 1316.39, 0, 0, 2.41189, 0, 0),(14378, 149, 9901.36, 2531.99, 1315.34, 0, 0, 2.75746, 0, 0),(14378, 150, 9890.5, 2534.01, 1317.81, 0, 0, 2.94988, 0, 0),
(14378, 151, 9884.43, 2535.28, 1318.87, 0, 0, 3.15801, 0, 0),(14378, 152, 9777.34, 2532, 1318.99, 0, 0, 3.16587, 0, 0),(14378, 153, 9735.71, 2535.47, 1332.35, 0, 0, 3.29153, 0, 0),
(14378, 154, 9730.37, 2536.56, 1334.2, 0, 0, 2.95774, 0, 0),(14378, 155, 9727.23, 2537.47, 1335.28, 0, 0, 2.62001, 0, 0),(14378, 156, 9723.26, 2538.83, 1335.68, 0, 0, 2.43937, 0, 0),
(14378, 157, 9719.95, 2541.6, 1335.68, 0, 0, 2.08202, 0, 0),(14378, 158, 9717.02, 2545.67, 1335.68, 0, 0, 1.96421, 0, 0),(14378, 159, 9712.54, 2553.65, 1335.68, 0, 0, 1.91708, 0, 0),
(14378, 160, 9708.45, 2562.34, 1335.68, 0, 0, 2.04275, 0, 0),(14378, 161, 9704.53, 2567.86, 1335.68, 0, 0, 2.21946, 0, 0),(14378, 162, 9694.25, 2580.62, 1335.68, 0, 0, 2.29407, 0, 0),
(14378, 163, 9689.33, 2585.89, 1335.68, 0, 0, 2.34512, 0, 0),(14378, 164, 9683.97, 2591, 1335.68, 0, 0, 2.41581, 0, 0),(14378, 165, 9678.26, 2595.75, 1335.68, 0, 0, 2.47079, 0, 0),
(14378, 166, 9672.37, 2599.93, 1335.68, 0, 0, 2.56896, 0, 0),(14378, 167, 9665.34, 2604.32, 1335.68, 0, 0, 2.47471, 0, 0),(14378, 168, 9662.25, 2608.53, 1335.68, 0, 0, 2.99308, 0, 0),
(14378, 169, 9660.53, 2612.76, 1335.68, 0, 0, 3.48395, 0, 0),(14378, 170, 9660.33, 2624.77, 1335.68, 0, 0, 4.03373, 0, 0),(14378, 171, 9659.92, 2629.83, 1335.68, 0, 0, 5.29429, 0, 0),
(14378, 172, 9656.99, 2633.21, 1335.68, 0, 0, 2.63898, 0, 0),(14378, 173, 9652.51, 2633.65, 1335.68, 0, 0, 3.23588, 0, 0),(14378, 174, 9650.51, 2632.43, 1335.68, 0, 0, 3.95845, 0, 0),
(14378, 175, 9649.64, 2628.57, 1335.68, 0, 0, 4.30794, 0, 0),(14378, 176, 9649.42, 2625.32, 1335.68, 0, 0, 4.78703, 0, 0),(14378, 177, 9650.64, 2608.98, 1335.68, 0, 0, 4.78703, 0, 0),
(14378, 178, 9653.03, 2601.61, 1335.68, 0, 0, 5.16009, 0, 0);

-- Classic [0918]
-- Blackrock Depths - Lord Roccor -- Waypoints
SET @POINT := 0;
UPDATE creature SET position_x = 654.6364, position_y = -172.4347, position_z = -73.61314, orientation = 5.094945, modelid = 0, spawndist = 0 WHERE id = 9025;
DELETE FROM creature_movement WHERE id = (SELECT guid FROM creature WHERE id = 9025);
DELETE FROM creature_movement_template WHERE entry = 9025;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(9025, @POINT := @POINT + 1, 657.9712, -180.7225, -74.74625, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 658.9824, -196.5155, -76.57832, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 657.6954, -216.0597, -80.31235, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 640.0506, -245.6001, -83.58563, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 615.5219, -267.3967, -83.59071, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 601.0486, -274.4931, -83.14562, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 578.9769, -274.0088, -80.12082, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 556.1347, -263.5568, -73.27393, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 578.9769, -274.0088, -80.12082, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 601.0486, -274.4931, -83.14562, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 615.5219, -267.3967, -83.59071, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 640.0062, -245.6395, -83.58392, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 657.6954, -216.0597, -80.31235, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 658.9824, -196.5155, -76.57832, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 657.9712, -180.7225, -74.74625, 0, 0, 0, 0, 0),
(9025, @POINT := @POINT + 1, 651.8094, -164.6052, -72.57027, 0, 0, 0, 0, 0);

-- Classic [0914]
-- Hillsbrad Foothills - Quest: Elixir of Suffering, Pain & Agony 
-- These chains are not consecutive, you can have all three in your questlog.
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 509; 
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 501; 

-- Classic [0912]
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 3761;

-- Classic [0911]
-- 1k Needles - Vile Sting should move around and enjoy his life.
UPDATE creature SET spawndist = 30, MovementType = 1 WHERE id = 5937;

-- Classic [0910]
-- Blackrock Depths - Mistress Nagmara wasn't serving the lower part of Plugger Spazzring's bar.
SET @POINT := 0;
UPDATE creature SET position_x = 874.3762, position_y = -187.6327, position_z = -43.62038, orientation = 2.164208, modelid = 0, spawndist = 0 WHERE id = 9500;
DELETE FROM creature_movement WHERE id = (SELECT guid FROM creature WHERE id = 9500);
DELETE FROM creature_movement_template WHERE entry = 9500;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(9500, @POINT := @POINT + 1, 876.3792, -197.3044, -43.70371, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 865.9424, -201.7926, -43.70371, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 856.1331, -216.7420, -43.70494, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 847.7590, -219.7263, -43.70203, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 847.7590, -219.7263, -43.70203, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 842.4940, -211.2741, -43.69165, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 834.2650, -195.0288, -49.75323, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 834.2650, -195.0288, -49.75323, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 827.3196, -180.0794, -49.75323, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 830.1271, -170.9186, -49.75323, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 830.1271, -170.9186, -49.75323, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 837.7622, -167.4380, -49.75323, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 834.8788, -158.4584, -49.75323, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 834.8788, -158.4584, -49.75323, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 850.8875, -158.5179, -49.75803, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 860.3868, -144.9282, -49.75497, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 860.3868, -144.9282, -49.75497, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 873.7460, -150.5549, -49.75750, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 873.7460, -150.5549, -49.75750, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 871.8535, -157.4179, -49.75930, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 860.0489, -158.3442, -49.75855, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 843.7286, -164.5333, -49.75323, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 843.7286, -164.5333, -49.75323, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 831.4695, -174.8025, -49.75323, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 831.4695, -174.8025, -49.75323, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 832.6170, -186.6620, -49.75323, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 839.8559, -204.9304, -46.02564, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 839.8559, -204.9304, -46.02564, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 849.8252, -218.7138, -43.70274, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 855.3878, -214.2639, -43.70450, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 855.3878, -214.2639, -43.70450, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 867.6884, -203.8905, -43.70837, 0, 0, 0, 0, 0),
-- (9500, @POINT := @POINT + 1, 890.0127, -185.4018, -43.70371, 0, 0, 0, 0, 0),
(9500, @POINT := @POINT + 1, 890.0127, -185.4018, -43.70371, 0, 0, 0, 0, 0);

-- Classic [0907]
-- Blackrock Depths - The Phalanx 
UPDATE creature_template SET MovementType = 0 WHERE Entry = 9502;
UPDATE creature SET modelid = 0, position_x = 847.848, position_y = -230.0667, position_z = -43.61398, orientation = 1.64061, spawntimesecs = 604800 WHERE id = 9502;

-- Classic [0905]
-- Fixed drop chance of item 20378 (Twilight Tablet Fragment) in Silithus
-- The item should not drop 100% of the time for players on the quest as
-- the main source intented are the GO on the ground
UPDATE creature_loot_template SET ChanceOrQuestChance = -5 WHERE item = 20378;

-- Classic [0904]
-- Fixed Z position of GO 30856 (Atal'ai Artifact) in Swamp of Sorrows
UPDATE gameobject SET position_z = 18.79 WHERE guid = 30561;

-- Classic [0903]
-- Added missing recipes/plans loots in item 20469 (Decoded True Believer Clippings)
-- Source: http://www.wowhead.com/item=20469#contains
DELETE FROM item_loot_template WHERE entry = 20469 AND item IN (20546, 20547, 20548, 20553, 20554, 20555);
INSERT INTO item_loot_template VALUES
(20469, 20546, 5, 0, 1, 1, 0),
(20469, 20547, 5, 0, 1, 1, 0),
(20469, 20548, 5, 0, 1, 1, 0),
(20469, 20553, 5, 0, 1, 1, 0),
(20469, 20554, 5, 0, 1, 1, 0),
(20469, 20555, 5, 0, 1, 1, 0);

-- Classic [0902]
-- Fixed drop chance of item 4892 (Durotar Tiger Fur) which was too low
UPDATE creature_loot_template SET ChanceOrQuestChance = -35 WHERE item = 4892;