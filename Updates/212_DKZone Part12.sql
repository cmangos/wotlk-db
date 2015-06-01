-- --------------------------------------------------------
-- DK Starting Zone - phase 128 - CHAPTER IV
-- --------------------------------------------------------

-- Duplicates Removed
DELETE FROM creature WHERE guid IN (130365,130370,130368130369,130364,130374,130372,130377,130367,130375,130366,130361,130371);
DELETE FROM creature_addon WHERE guid IN (130365,130370,130368130369,130364,130374,130372,130377,130367,130375,130366,130361,130371);
DELETE FROM creature_movement WHERE id IN (130365,130370,130368130369,130364,130374,130372,130377,130367,130375,130366,130361,130371);

-- Phase: 64+128
-- [Chapter IV] Chapter IV Dummy
UPDATE creature SET phaseMask = 192 WHERE guid = 130400;
-- Acherus Necromancer
UPDATE creature SET phaseMask = 192 WHERE id = 29191;
-- Scarlet Deserter
UPDATE creature SET phaseMask = 192 WHERE id = 29193;
-- Noth the Plaguebringer
UPDATE creature SET phaseMask = 192 WHERE id = 29113;
-- Gothik the Harvester
UPDATE creature SET phaseMask = 192 WHERE id = 29112;
-- Howling Geist
UPDATE creature SET phaseMask = 128 WHERE id = 29189;

-- objects
UPDATE gameobject SET phaseMask = 192 WHERE guid IN (66412,66408,66415,66406,66409,66404,66407,66413,66411,66414,66410);

-- Acherus Necromancer
UPDATE creature SET position_x = 2708.023682, position_y = -5376.278809, position_z = 157.697159, orientation = 3.37, spawndist = 0, MovementType = 2 WHERE guid = 130395;
UPDATE creature SET position_x = 2707.768799, position_y = -5373.590332, position_z = 157.925583, orientation = 3.37, spawndist = 0, MovementType = 0 WHERE guid = 130396;
DELETE FROM creature_movement WHERE id = 130395;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(130395,1,2693.15,-5379.09,157.754,0,0,3.83451,0,0),
(130395,2,2674.66,-5399.52,157.025,0,0,3.84629,0,0),
(130395,3,2659.37,-5412.16,157.894,0,0,4.11411,0,0),
(130395,4,2654.12,-5425.34,157.366,0,0,4.74164,0,0),
(130395,5,2662.54,-5443.72,156.927,0,0,5.51355,0,0),
(130395,6,2680.42,-5458.27,157.056,0,0,5.87483,0,0),
(130395,7,2699.87,-5462.77,156.94,0,0,0.0220427,0,0),
(130395,8,2731.09,-5460.05,156.945,0,0,0.171268,0,0),
(130395,9,2747.63,-5453,156.975,0,0,0.222319,0,0),
(130395,10,2756.36,-5450.86,157.583,0,0,0.111578,0,0),
(130395,11,2767.33,-5451.19,158.589,0,0,0.658217,0,0),
(130395,12,2771.75,-5446.39,159.577,0,0,1.21428,0,0),
(130395,13,2771.95,-5405.92,158.977,0,0,1.74913,0,0),
(130395,14,2766.99,-5385.08,157.377,0,0,2.16461,0,0),
(130395,15,2756.35,-5379.53,157.011,0,0,2.89502,0,0),
(130395,16,2731.94,-5376.08,157.732,0,0,3.16991,0,0),
(130395,17,2708.08,-5376.24,157.696,0,0,3.25237,0,0);
-- link
DELETE FROM creature_linking WHERE guid = 130396;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(130396, 130395, 128+512);

-- Noth the Plaguebringer
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 130898;
DELETE FROM creature_movement WHERE id = 130898;
UPDATE creature_template SET MovementType = 2 WHERE entry = 29113;
DELETE FROM creature_movement_template WHERE entry = 29113;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(29113, 1, 2715.28, -5422.11, 161.471, 55000, 2911301, 5.70723, 0, 0); 
DELETE FROM dbscripts_on_creature_movement WHERE id = 2911301;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2911301,5,0,0,0,0,0,0,2000000494,2000000495,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry IN (2000000494,2000000495);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000494,'We need more flesh!',0,1,0,5,NULL),
(2000000495,'Double your efforts! The final assault draws near!',0,1,0,5,NULL);

-- Scarlet Deserter
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (130402,130403,130404,130405);
UPDATE creature SET position_x = 2817.77, position_y = -5453.906, position_z = 159.4021, orientation = 1.937315 WHERE guid = 130405;

-- Gothik the Harvester
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 130897;
DELETE FROM creature_movement WHERE id = 130897;
UPDATE creature_template SET MovementType = 2 WHERE entry = 29112;
DELETE FROM creature_movement_template WHERE entry = 29112;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(29112,1,2814.52,-5448.2,159.039,65000,2911201,5.32325,0,0),
(29112,2,2814.52,-5448.2,159.039,60000,2911202,5.32325,0,0),
(29112,3,2814.52,-5448.2,159.039,70000,2911203,5.32325,0,0),
(29112,4,2814.52,-5448.2,159.039,65000,2911204,5.32325,0,0),
(29112,5,2814.52,-5448.2,159.039,75000,2911205,5.32325,0,0),
(29112,6,2814.52,-5448.2,159.039,70000,2911206,5.32325,0,0),
(29112,7,2814.52,-5448.2,159.039,55000,2911207,5.32325,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2911201 AND 2911207;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2911201,3,0,0,0,29193,130405,7,2000000496,0,0,0,0,0,0,0,'force buddy to: say text'),
(2911201,7,0,0,0,0,0,0,2000000503,0,0,0,0,0,0,0,''),
(2911202,3,0,0,0,29193,130405,7,2000000497,0,0,0,0,0,0,0,'force buddy to: say text'),
(2911202,7,0,0,0,0,0,0,2000000504,0,0,0,0,0,0,0,''),
(2911203,3,0,0,0,29193,130405,7,2000000498,0,0,0,0,0,0,0,'force buddy to: say text'),
(2911203,7,0,0,0,0,0,0,2000000506,0,0,0,0,0,0,0,''),
(2911204,3,0,0,0,29193,130405,7,2000000499,0,0,0,0,0,0,0,'force buddy to: say text'),
(2911204,7,0,0,0,0,0,0,2000000505,0,0,0,0,0,0,0,''),
(2911205,3,0,0,0,29193,130405,7,2000000500,0,0,0,0,0,0,0,'force buddy to: say text'),
(2911205,7,0,0,0,0,0,0,2000000507,0,0,0,0,0,0,0,''),
(2911206,3,0,0,0,29193,130405,7,2000000501,0,0,0,0,0,0,0,'force buddy to: say text'),
(2911206,7,0,0,0,0,0,0,2000000508,0,0,0,0,0,0,0,''),
(2911207,3,0,0,0,29193,130405,7,2000000502,0,0,0,0,0,0,0,'force buddy to: say text');
DELETE FROM db_script_string WHERE entry BETWEEN 2000000496 AND 2000000508;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000496,'You\'re a monster!',0,0,0,0,NULL),
(2000000497,'Please! Spare me! I...',0,0,0,0,NULL),
(2000000498,'Wi... Will it hurt?',0,0,0,0,NULL),
(2000000499,'It tingles...',0,0,0,0,NULL),
(2000000500,'Why don\'t you Just Kill me Already',0,0,0,0,NULL),
(2000000501,'Is it too late to change my mind? How about you just kill me instead?',0,0,0,0,NULL),
(2000000502,'The horror! THE HORROR!',0,0,0,0,NULL),
(2000000503,'Flattery will get you nowhere.',0,0,0,1,NULL),
(2000000504,'Don\'t be ridiculous. Where would you even go if I did spare you? We just finished eradicating your civilization, remember?',0,0,0,1,NULL),
(2000000505,'That\'s how you know it\'s working.',0,0,0,1,NULL),
(2000000506,'Oh yes. Immensely. The pain will propably render you unconcious - hence the vat of slime you\'re floating in!',0,0,0,1,NULL),
(2000000507,'You idiot! That\'s What I\'m Doing Right Now!',0,0,0,5,NULL),
(2000000508,'I AM going to kill you. What\'s the rush?',0,0,0,6,NULL);

-- Howling Geist 
UPDATE creature SET position_x = 2597.903076, position_y = -5549.420410, position_z = 159.772934, spawndist = 20, MovementType = 1 WHERE guid = 130387;
UPDATE creature SET position_x = 2622.867432, position_y = -5481.481934, position_z = 156.948212, spawndist = 20, MovementType = 1 WHERE guid = 130386;
UPDATE creature SET position_x = 2659.806885, position_y = -5537.375000, position_z = 163.303589, spawndist = 20, MovementType = 1 WHERE guid = 130385;
UPDATE creature SET position_x = 2697.650391, position_y = -5469.664063, position_z = 156.943970, spawndist = 20, MovementType = 1 WHERE guid = 130383;
UPDATE creature SET position_x = 2735.920410, position_y = -5363.948730, position_z = 157.715302, spawndist = 20, MovementType = 1 WHERE guid = 130381;

-- Volatile Ghoul
UPDATE creature SET spawndist = 0, MovementType = 2, spawntimesecs = 10 WHERE guid IN (130363,130373,130362);
DELETE FROM creature_movement WHERE id IN (130363,130373,130362);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(130363,1,2676.73,-5314.65,154.792,5000,2918501,1.78743,0,0),
(130363,2,2684.4,-5306.35,154.941,0,0,1.90152,0,0),
(130363,3,2670.25,-5284.02,150.153,0,0,2.31232,0,0),
(130363,4,2662.09,-5274.22,142.412,0,0,2.28565,0,0),
(130363,5,2644.94,-5255.23,121.88,0,0,2.30921,0,0),
(130363,6,2620.75,-5225.3,98.1054,0,0,2.21889,0,0),
(130363,7,2592.76,-5198.52,80.7613,0,0,2.43016,0,0),
(130363,8,2574.95,-5181.7,74.3096,0,0,2.37519,0,0),
(130363,9,2522.32,-5148.41,73.6604,0,0,2.64222,0,0),
(130363,10,2475.21,-5122.23,77.9418,6000,2918502,2.99172,0,0),
-- #2
(130373,1,2632.02,-5394.72,168.397,5000,2918501,0.977384,0,0),
(130373,2,2651.32,-5405.91,159.224,0,0,0.145241,0,0),
(130373,3,2684.38,-5384.49,157.184,0,0,1.06808,0,0),
(130373,4,2687.79,-5330.18,156.083,0,0,1.71604,0,0),
(130373,5,2684.96,-5314.39,154.96,0,0,2.00271,0,0),
(130373,6,2679.3,-5303.38,153.638,0,0,2.1323,0,0),
(130373,7,2672.93,-5295.8,151.813,0,0,2.30116,0,0),
(130373,8,2664.86,-5285.81,148.772,0,0,2.26189,0,0),
(130373,9,2655.93,-5274.74,141.215,0,0,2.2187,0,0),
(130373,10,2639.53,-5252.05,116.733,0,0,2.19513,0,0),
(130373,11,2621.55,-5230.63,100.908,0,0,2.3208,0,0),
(130373,12,2606.08,-5211.66,88.0324,0,0,2.23048,0,0),
(130373,13,2582.86,-5185.51,75.8192,0,0,2.32472,0,0),
(130373,14,2564.62,-5169.25,74.5214,0,0,2.49359,0,0),
(130373,15,2536.72,-5149.97,74.2893,0,0,2.72135,0,0),
(130373,16,2516.32,-5145.46,74.148,0,0,3.00017,0,0),
(130373,17,2491.97,-5142.91,76.1721,0,0,3.09441,0,0),
(130373,18,2467.02,-5137.46,77.5501,6000,2918502,2.64674,0,0),
-- #3
(130362,1,2567.76,-5185.66,74.8526,5000,2918501,5.07626,0,0),
(130362,2,2521.28,-5146.41,73.6638,0,0,2.82019,0,0),
(130362,3,2483.25,-5139.37,76.3581,0,0,3.637,0,0),
(130362,4,2464.89,-5154.73,78.0666,6000,2918502,3.82471,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2918501 AND 2918502;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2918501,1,15,26047,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2918501,4,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2918502,1,1,374,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2918502,3,1,373,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2918502,4,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Rampaging Abomination
UPDATE creature SET position_x = 2770.925049, position_y = -5536.027344, position_z = 161.735718, orientation = 2.301208, spawndist = 10, MovementType = 1 WHERE guid = 130378;
UPDATE creature SET spawndist = 0, MovementType = 2, spawntimesecs = 10 WHERE guid IN (130376,130379);
DELETE FROM creature_movement WHERE id IN (130376,130379);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(130376,1,2723.56,-5356.07,159.613,2000,2918601,0.84173,0,0),
(130376,2,2704.62,-5360.77,159.398,0,0,2.91129,0,0),
(130376,3,2691.18,-5349.93,158.621,0,0,2.30653,0,0),
(130376,4,2683.39,-5323.99,155.334,0,0,1.80938,0,0),
(130376,5,2675.71,-5304.56,153.114,0,0,2.045,0,0),
(130376,6,2663.78,-5284.98,148.258,0,0,2.09997,0,0),
(130376,7,2658.59,-5275.23,142.105,0,0,2.04892,0,0),
(130376,8,2644.61,-5255.16,121.631,0,0,2.2145,0,0),
(130376,9,2631.96,-5238.4,107.608,0,0,2.23806,0,0),
(130376,10,2613.31,-5216.83,93.161,0,0,2.3598,0,0),
(130376,11,2598.7,-5201.75,82.8146,0,0,2.34016,0,0),
(130376,12,2582.36,-5187.09,75.8517,0,0,2.47761,0,0),
(130376,13,2569.27,-5176.85,73.7495,0,0,2.48154,0,0),
(130376,14,2558.21,-5168.27,74.6465,0,0,2.48154,0,0),
(130376,15,2538.28,-5155.75,74.2881,0,0,2.64647,0,0),
(130376,16,2521.03,-5147.47,73.6583,0,0,2.6504,0,0),
(130376,17,2502.8,-5138.25,75.7383,0,0,2.71716,0,0),
(130376,18,2483.53,-5131.73,75.9083,2000,2918602,2.88209,0,0),
-- #2
(130379,1,2726.07,-5498.8,162.02,2000,2918601,2.04204,0,0),
(130379,2,2727.57,-5481.48,161.561,0,0,1.14635,0,0),
(130379,3,2732.97,-5468.64,157.569,0,0,0.984563,0,0),
(130379,4,2750.98,-5458.35,156.968,0,0,0.430071,0,0),
(130379,5,2772.88,-5441.7,159.903,0,0,1.37333,0,0),
(130379,6,2774.75,-5416.45,160.25,0,0,1.62074,0,0),
(130379,7,2771.21,-5396.04,158.102,0,0,1.91919,0,0),
(130379,8,2750.66,-5381.1,156.956,0,0,2.6983,0,0),
(130379,9,2727.84,-5372.87,157.819,0,0,2.83182,0,0),
(130379,10,2707.88,-5366.33,158.707,0,0,2.82004,0,0),
(130379,11,2693.81,-5354.31,158.877,0,0,2.19879,0,0),
(130379,12,2687.94,-5338.24,156.999,0,0,1.83122,0,0),
(130379,13,2681.92,-5317.73,154.846,0,0,2.05428,0,0),
(130379,14,2675.34,-5305.38,153.191,0,0,2.06998,0,0),
(130379,15,2659.58,-5278.96,144.64,0,0,2.16031,0,0),
(130379,16,2651.18,-5266.35,132.35,0,0,2.17209,0,0),
(130379,17,2636.53,-5246.73,112.628,0,0,2.23099,0,0),
(130379,18,2619.36,-5225.24,97.7497,0,0,2.30875,0,0),
(130379,19,2605.23,-5209.7,86.9899,0,0,2.30875,0,0),
(130379,20,2591.1,-5194.16,79.6859,0,0,2.30875,0,0),
(130379,21,2573.87,-5176.1,73.9424,0,0,2.35116,0,0),
(130379,22,2558.81,-5161.48,74.598,0,0,2.39043,0,0),
(130379,23,2540.44,-5148.6,74.2861,0,0,2.57892,0,0),
(130379,24,2525.34,-5139.75,73.6435,0,0,2.61034,0,0),
(130379,25,2505.64,-5127.77,74.8511,0,0,2.61819,0,0),
(130379,26,2480.14,-5116.4,79.0267,2000,2918602,2.77527,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2918601 AND 2918602;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2918601,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(2918602,1,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Highlord Darion Mograine
UPDATE creature_template SET Expansion = 2, UnitClass = 2, PowerMultiplier = 1000, MinLevelMana = 4258000, MaxLevelMana = 4258000 WHERE entry = 29173;
UPDATE creature SET curmana = 4258000 WHERE id = 29173;

-- Defender of the Light <The Argent Dawn>
UPDATE creature_template SET MinLevel = 55, MaxLevel = 58, UnitFlags = 32768, UnitClass = 2, MinLevelHealth = 62730, MaxLevelHealth = 68910, MinLevelMana = 63510, MaxLevelMana = 68670,
Expansion = 0, DamageMultiplier = 7.5, Armor = 3394, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 228, RangedAttackPower = 23, MinMeleeDmg = 87.5,
MaxMeleeDmg = 123 WHERE entry = 29174;

-- Scourge Commander Thalanor
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid = 130467;

-- Chapter III
-- Frostbrood Vanquisher - until fly/ground anim. will be supported by core
DELETE FROM creature_template_addon WHERE entry = 28670;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(28670,0,0x3000000,1,0,0,0,53112);

-- Chapter I
-- Mine Car
DELETE FROM creature_linking WHERE guid IN (128860,128864,128868,128869,128870,128873,128874,128876,128879,128880);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(128860, 128885, 1+16+128+512+8192),(128864, 128889, 1+16+128+512+8192),(128868, 128893, 1+16+128+512+8192),(128869, 128894, 1+16+128+512+8192),(128870, 128895, 1+16+128+512+8192),
(128873, 128898, 1+16+128+512+8192),(128874, 128899, 1+16+128+512+8192),(128876, 128901, 1+16+128+512+8192),(128879, 128904, 1+16+128+512+8192),(128880, 128905, 1+16+128+512+8192);
-- Eye of Acherus
UPDATE creature_template SET FactionAlliance = 2084, FactionHorde = 2084 WHERE entry = 28511;
