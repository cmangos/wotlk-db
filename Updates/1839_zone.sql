-- Fort Wildervar - Howling Fjord

-- Wildervar Sentry 24050
-- missing spawns added -- WoTLK Range 571x Free guids used
DELETE FROM creature_addon WHERE guid BETWEEN 5711696 AND 5711708;
DELETE FROM creature_movement WHERE id BETWEEN 5711696 AND 5711708;
DELETE FROM creature_linking WHERE guid BETWEEN 5711696 AND 5711708;
DELETE FROM creature_linking WHERE master_guid BETWEEN 5711696 AND 5711708;
DELETE FROM creature WHERE guid BETWEEN 5711696 AND 5711708;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(5711696,24050,571,1,1,0,0,2384.2,-5016.75,249.986,4.677482,300,300,0,0,42540,0,0,0),
(5711697,24050,571,1,1,0,0,2375.734,-5052.711,250.3731,2.530727,300,300,0,0,42540,0,0,0),
(5711698,24050,571,1,1,0,0,2384.619,-5053.808,249.4245,1.745329,300,300,0,0,42540,0,0,0),
(5711699,24050,571,1,1,0,0,2392.519,-5015.429,250.0233,4.607669,300,300,0,0,42540,0,0,0),
(5711700,24050,571,1,1,0,0,2394.707,-5051.511,250.5502,2.164208,300,300,0,0,42540,0,0,0),
(5711701,24050,571,1,1,0,0,2424.698,-5068.167,272.6871,2.75762,300,300,0,0,42540,0,0,0),
(5711702,24050,571,1,1,0,0,2427.16,-5093.28,273.6235,3.281219,300,300,0,0,42540,0,0,0),
(5711703,24050,571,1,1,0,0,2414.036,-5126.487,276.7909,5.166174,300,300,0,0,42540,0,0,0),
(5711704,24050,571,1,1,0,0,2402.792,-5129.874,277.3381,5.061455,300,300,0,0,42540,0,0,0),
(5711705,24050,571,1,1,0,0,2438.158,-5129.584,276.4449,3.612832,300,300,0,0,42540,0,0,0),
(5711706,24050,571,1,1,0,0,2475.57,-5086.42,283.0688,3.612832,300,300,0,0,42540,0,0,0),
(5711707,24050,571,1,1,0,0,2446.894,-5155.143,277.0588,3.682645,300,300,0,0,42540,0,0,0),
(5711708,24050,571,1,1,0,0,2440.27,-5159.72,276.876,5.09501,300,300,0,0,42540,0,0,0);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 24050);
DELETE FROM creature_template_addon WHERE entry = 24050;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(24050,0,0,1,1,0,0,5301);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (118689,5711708);
DELETE FROM creature_movement WHERE id IN (118689,5711708);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #118689
(118689,1,2388.13,-5014.76,249.852,0,0,4.8555),
(118689,2,2384.53,-5023.35,250.517,0,0,4.2586),
(118689,3,2377.95,-5034.98,250.129,0,0,4.32143),
(118689,4,2371.91,-5052.42,250.148,0,0,4.6223),
(118689,5,2377.86,-5035.59,250.121,0,0,1.06052),
(118689,6,2388.32,-5015.28,249.787,0,0,1.26472),
(118689,7,2385.45,-4999.04,253.047,0,0,1.79384),
(118689,8,2383.04,-4988.94,255.086,0,0,1.86846),
(118689,9,2377.61,-4982.88,255.288,0,0,2.52418),
(118689,10,2360.67,-4967.44,254.159,0,0,2.29641),
(118689,11,2376.67,-4982.33,255.306,0,0,5.5676),
(118689,12,2383.08,-4988.27,255.204,0,0,5.06495),
(118689,13,2385.34,-4998.05,253.252,0,0,4.95658),
-- #5711708
(5711708,1,2445.76,-5175.25,277.071,0,0,5.0636),
(5711708,2,2450.61,-5188.77,278.237,0,0,5.09501),
(5711708,3,2454.81,-5198.07,279.322,0,0,5.38953),
(5711708,4,2463.48,-5206.13,282.65,0,0,5.52697),
(5711708,5,2455.47,-5198.84,279.672,0,0,2.35004),
(5711708,6,2450.35,-5188.64,278.203,0,0,1.88665),
(5711708,7,2440.39,-5159.44,276.866,0,0,1.94163),
(5711708,8,2436.85,-5147.83,277.217,0,0,1.88272),
(5711708,9,2432.8,-5136.36,277.002,0,0,1.89843),
(5711708,10,2428.33,-5122.92,276.294,0,0,1.10754),
(5711708,11,2438,-5112.83,275.919,0,0,1.50264),
(5711708,12,2435.2,-5094.11,273.821,0,0,1.7155),
(5711708,13,2433.9,-5077.59,273.1,0,0,1.56234),
(5711708,14,2436.12,-5063.99,273.103,0,0,1.40919),
(5711708,15,2433.85,-5077.3,273.098,0,0,4.63325),
(5711708,16,2435.2,-5094.05,273.815,0,0,4.84342),
(5711708,17,2438.01,-5112.47,275.916,0,0,4.83556),
(5711708,18,2428.48,-5122.92,276.286,0,0,4.60073),
(5711708,19,2432.82,-5136.16,276.993,0,0,5.11516),
(5711708,20,2436.61,-5147.33,277.217,0,0,5.0916),
(5711708,21,2440.17,-5158.8,276.84,0,0,5.00128);

-- Lieutenant Maeve 24282 
UPDATE creature SET position_x = 2423.549, position_y = -5135.819, position_z = 277.2217, orientation = 2.007129 WHERE id = 24282;

-- Marrod Silvertongue 24534
-- Part of: Marrod Silvertongue 24534
DELETE FROM dbscripts_on_relay WHERE id = 20145;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20145,0,0,0,0,0,0,0,0,2000001813,0,0,0,0,0,0,0,'Part of: Marrod Silvertongue 24534'),
(20145,6,0,0,0,0,0,0,0,2000001814,0,0,0,0,0,0,0,'Part of: Marrod Silvertongue 24534'),
(20145,12,0,0,0,0,0,0,0,2000001815,0,0,0,0,0,0,0,'Part of: Marrod Silvertongue 24534'),
(20145,18,0,0,0,0,0,0,0,2000001816,0,0,0,0,0,0,0,'Part of: Marrod Silvertongue 24534'),
(20145,24,0,0,0,0,0,0,0,2000001817,0,0,0,0,0,0,0,'Part of: Marrod Silvertongue 24534'),
(20145,30,0,0,0,0,0,0,0,2000001818,0,0,0,0,0,0,0,'Part of: Marrod Silvertongue 24534'),
(20145,35,0,0,0,0,0,0,0,2000001819,0,0,0,0,0,0,0,'Part of: Marrod Silvertongue 24534');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001813 AND 2000001821;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001813,'Welcome to Fort Wildervar, brave homesteaders! There\'s a whole continent out there just waiting to be claimed!',0,0,7,1,NULL),
(2000001814,'True, Northrend is a hard land, but our people are strong, hardy, and equal to the task!',0,0,7,1,NULL),
(2000001815,'We will win this land with the sword, and break it with the plow! You are the men and women who will be remembered for taming the wild continent!',0,0,7,1,NULL),
(2000001816,'But, you will not be alone out there. My men and I have prepared pack mules carrying the supplies you\'ll need most.',0,0,7,2,NULL),
(2000001817,'Axes, picks, seed, nails, food, blankets, water... it\'s all there, waiting for you. I think you\'ll find my prices quite reasonable, too.',0,0,7,1,NULL),
(2000001818,'There are more than enough to go around. Should you need other goods, don\'t hesitate to ask!',0,0,7,1,NULL),
(2000001819,'Now, my loyal custo... err, friends, go forth and conquer this land for our people!',0,0,7,25,NULL);

-- Foreman Colbey 24176
-- Part of: Foreman Colbey 24176 EAI
DELETE FROM dbscripts_on_relay WHERE id = 20146;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20146,0,0,0,0,0,0,0,0,2000001820,0,0,0,0,0,0,0,'Part of: Marrod Silvertongue 24176'),
(20146,5,0,0,0,0,0,0,0,2000001821,0,0,0,0,0,0,0,'Part of: Marrod Silvertongue 24176'),
(20146,11,0,0,0,0,0,0,0,2000001822,0,0,0,0,0,0,0,'Part of: Marrod Silvertongue 24176'),
(20146,16,0,0,0,0,0,0,0,2000001823,0,0,0,0,0,0,0,'Part of: Marrod Silvertongue 24176'),
(20146,20,0,0,0,0,0,0,0,2000001824,0,0,0,0,0,0,0,'Part of: Marrod Silvertongue 24176'),
(20146,24,31,24050,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: Foreman Colbey 24176 EAI - search for 24050'),
(20146,25,0,0,0,0,24050,21,7,2000001825,0,0,0,0,0,0,0,'Part of: Foreman Colbey 24176 EAI - buddy text'),
(20146,29,31,24050,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: Foreman Colbey 24176 EAI - search for 24050'),
(20146,30,0,0,0,0,24050,118691,7| 0x10,2000001826,0,0,0,0,0,0,0,'Part of: Foreman Colbey 24176 EAI - buddy text');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001820 AND 2000001826;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001820,'What\'s a guy gotta do to get some help around here?',0,0,7,6,NULL),
(2000001821,'You do know about the giant YETI in the mine, don\'t you?',0,0,7,6,NULL),
(2000001822,'That\'s Y-E-T-I. Yeti! You know, the giant, shaggy things with the bloody horns?',0,0,7,6,NULL),
(2000001823,'It\'s keeping my boys from expanding the mine. The Alliance needs that ore!',0,0,7,1,NULL),
(2000001824,'Are you deaf?! I\'ll be there when Captain Adams is flogging you for holding up the Alliance\'s advance!',0,0,7,1,NULL),
(2000001825,'You hear something, Jones? I almost thought I heard something, right there...',0,0,7,6,NULL),
(2000001826,'Nope. Didn\'t hear a thing...',0,0,7,0,NULL);

-- Wildervar Miner 24062
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (120422,120419,120421);
DELETE FROM creature_movement WHERE id IN (120422,120419,120421);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(120419,1,2546.83,-5007.73,289.696,3000,2406201,5.68977),
(120422,1,2549.31,-5008.44,290.424,3000,2406201,3.12414),
(120421,1,2559.47,-4998.15,290.99,3000,2406202,4.06662);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2406201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2406201,1,35,5,1,0,0,0,0,0,0,0,0,0,0,0,0,'Send AI Event Type 5 (A) to Self'),
(2406201,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'idle'),
(2406202,1,35,6,1,0,0,0,0,0,0,0,0,0,0,0,0,'Send AI Event Type 6 (B) to Self'),
(2406202,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'idle');

-- Brune Grayblade 24528
-- Part of: Brune Grayblade 24528 EAI
DELETE FROM dbscripts_on_relay WHERE id = 20147;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20147,0,31,24052,10,0,0,0,0,0,0,0,0,0,0,0,0,'Part of: Brune Grayblade 24528 EAI - search for 24052'),
(20147,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: Foreman Colbey 24176 EAI - active'),
(20147,1,21,1,0,0,24052,21,7,0,0,0,0,0,0,0,0,'Part of: Foreman Colbey 24176 EAI - buddy active'),
(20147,2,0,0,0,0,0,0,0,2000001827,0,0,0,0,0,0,0,'Part of: Foreman Colbey 24176 EAI'),
(20147,7,0,0,0,0,24052,21,7,2000001828,0,0,0,0,0,0,0,'Part of: Foreman Colbey 24176 EAI - buddy text'),
(20147,12,0,0,0,0,0,0,0,2000001829,0,0,0,0,0,0,0,'Part of: Foreman Colbey 24176 EAI'),
(20147,17,0,0,0,0,24052,21,7,2000001830,0,0,0,0,0,0,0,'Part of: Foreman Colbey 24176 EAI - buddy text'),
(20147,23,0,0,0,0,24052,21,7,2000001831,0,0,0,0,0,0,0,'Part of: Foreman Colbey 24176 EAI - buddy text'),
(20147,27,0,0,0,0,0,0,0,2000001832,0,0,0,0,0,0,0,'Part of: Foreman Colbey 24176 EAI'),
(20147,28,21,0,0,0,24052,21,7,0,0,0,0,0,0,0,0,'Part of: Foreman Colbey 24176 EAI - buddy unactive'),
(20147,29,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of: Foreman Colbey 24176 EAI - unactive');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000001827 AND 2000001832;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001827,'How much\'ll it cost me to get my mules shod?',0,0,7,6,NULL),
(2000001828,'We don\'t shoe no mules here. \'Sides, it\'s strictly expedition business right now.',0,0,7,1,NULL),
(2000001829,'You don\'t understand! If I\'m not ready to go soon, all the good homesteading land will be taken!',0,0,7,1,NULL),
(2000001830,'Not my problem! If yer so antsy to get yerself a house built, do it \'ere in the fort and quit yer whinin\'!',0,0,7,1,NULL),
(2000001831,'Now, if you\'d be so kind as to get your ass away from my forge...',0,0,7,1,NULL),
(2000001832,'That, sir, is a mule!',0,0,7,1,NULL);

-- Icehollow Behemoth 23744
-- positions corrected
UPDATE creature SET position_x = 2721.166260, position_y = -5141.354004, position_z = 409.705841, spawndist = 10, MovementType = 1 WHERE guid = 114053;
UPDATE creature SET position_x = 2664.529297, position_y = -5268.097656, position_z = 376.688171, spawndist = 10, MovementType = 1 WHERE guid = 114072;
UPDATE creature SET position_x = 2576.900879, position_y = -5431.438477, position_z = 320.934906, spawndist = 10, MovementType = 1 WHERE guid = 113971;
UPDATE creature SET position_x = 2562.585938, position_y = -5277.261230, position_z = 327.332123, spawndist = 10, MovementType = 1 WHERE guid = 113963;
UPDATE creature SET position_x = 2662.247070, position_y = -5368.980957, position_z = 371.136414, spawndist = 10, MovementType = 1 WHERE guid = 114071;
UPDATE creature SET position_x = 2504.985596, position_y = -5417.955078, position_z = 307.620819, spawndist = 5, MovementType = 1 WHERE guid = 113972;
