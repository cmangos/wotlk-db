-- q.11296 'Rivenwood Captives'
-- Rivenwood - Howling Fjord - Area Redone

-- ID - 43287 Rivenwood Captives: Player On Quest
DELETE FROM dbscripts_on_spell WHERE id = 43287;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(43287,0,34,1153,0,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(43287,1,45,0,20049,0,0,0,0,0,0,0,0,0,0,0,0,'start random script');

-- ID - 43288 Rivenwood Captives: Player Not On Quest
DELETE FROM dbscripts_on_spell WHERE id = 43288;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(43288,0,34,1154,0,0,0,0,0x08,0,0,0,0,0,0,0,0,''),
(43288,1,45,0,20048,0,0,0,0,0,0,0,0,0,0,0,0,'start random script');

DELETE FROM conditions WHERE condition_entry IN (1153,1154);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1153, 9, 11296, 1),
(1154, -3, 1153, 0);

DELETE FROM dbscript_random_templates WHERE id IN (20048,20049);
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
-- without quest
(20048,1,20069,0,'(q.11296) - START_RELAY_SCRIPT 1'),
(20048,1,20070,0,'(q.11296) - START_RELAY_SCRIPT 2'),
(20048,1,20071,0,'(q.11296) - START_RELAY_SCRIPT 3'),
(20048,1,20072,0,'(q.11296) - START_RELAY_SCRIPT 4'),
(20048,1,20073,0,'(q.11296) - START_RELAY_SCRIPT 5'),
(20048,1,20074,0,'(q.11296) - START_RELAY_SCRIPT 6'),
(20048,1,20075,0,'(q.11296) - START_RELAY_SCRIPT 7'),
(20048,1,20076,0,'(q.11296) - START_RELAY_SCRIPT 8'),
(20048,1,20077,0,'(q.11296) - START_RELAY_SCRIPT 9'),
(20048,1,20078,0,'(q.11296) - START_RELAY_SCRIPT 10'),
(20048,1,20079,0,'(q.11296) - START_RELAY_SCRIPT 11'),
-- with quest
(20049,1,20069,0,'(q.11296) - START_RELAY_SCRIPT 1'),
(20049,1,20070,0,'(q.11296) - START_RELAY_SCRIPT 2'),
(20049,1,20071,0,'(q.11296) - START_RELAY_SCRIPT 3'),
(20049,1,20072,0,'(q.11296) - START_RELAY_SCRIPT 4'),
(20049,1,20073,0,'(q.11296) - START_RELAY_SCRIPT 5'),
(20049,1,20074,0,'(q.11296) - START_RELAY_SCRIPT 6'),
(20049,1,20075,0,'(q.11296) - START_RELAY_SCRIPT 7'),
(20049,1,20076,0,'(q.11296) - START_RELAY_SCRIPT 8'),
(20049,1,20077,0,'(q.11296) - START_RELAY_SCRIPT 9'),
(20049,1,20078,0,'(q.11296) - START_RELAY_SCRIPT 10'),
(20049,1,20079,0,'(q.11296) - START_RELAY_SCRIPT 11'),
(20049,1,20080,0,'(q.11296) - START_RELAY_SCRIPT 12');

DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20069 AND 20080;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(20069,0,10,24219,60000,0,0,0,0,0,0,0,0,0,0,0,0,'Summon Baby Riven Widows'),
(20069,1,26,0,0,0,24219,100,0,0,0,0,0,0,0,0,0,''),
(20070,0,10,23959,60000,0,0,0,0,0,0,0,0,0,0,0,0,'Summon Darkclaw Bat'),
(20070,1,26,0,0,0,23959,100,0,0,0,0,0,0,0,0,0,''),
(20071,0,10,24026,60000,0,0,0,0,0,0,0,0,0,0,0,0,'Summon Fanggore Worg'),
(20071,1,26,0,0,0,24026,100,0,0,0,0,0,0,0,0,0,''),
(20072,0,10,23990,60000,0,0,0,0,0,0,0,0,0,0,0,0,'Summon Gjalerbron Rune-Caster'),
(20072,1,26,0,0,0,23990,100,0,0,0,0,0,0,0,0,0,''),
(20073,0,10,23989,60000,0,0,0,0,0,0,0,0,0,0,0,0,'Summon Gjalerbron Sleep-Watcher'),
(20073,1,26,0,0,0,23989,100,0,0,0,0,0,0,0,0,0,''),
(20074,0,10,23991,60000,0,0,0,0,0,0,0,0,0,0,0,0,'Summon Gjalerbron Warrior'),
(20074,1,26,0,0,0,23991,100,0,0,0,0,0,0,0,0,0,''),
(20075,0,10,24073,60000,0,0,0,0,0,0,0,0,0,0,0,0,'Summon Putrid Horror'),
(20075,1,26,0,0,0,24073,100,0,0,0,0,0,0,0,0,0,''),
(20076,0,10,23666,60000,0,0,0,0,0,0,0,0,0,0,0,0,'Summon Winterskorn Berserker'),
(20076,1,26,0,0,0,23666,100,0,0,0,0,0,0,0,0,0,''),
(20077,0,10,23662,60000,0,0,0,0,0,0,0,0,0,0,0,0,'Summon Winterskorn Woodsman'),
(20077,1,26,0,0,0,23662,100,0,0,0,0,0,0,0,0,0,''),
(20078,0,10,23661,60000,0,0,0,0,0,0,0,0,0,0,0,0,'Summon Winterskorn Tribesman'),
(20078,1,26,0,0,0,23661,100,0,0,0,0,0,0,0,0,0,''),
(20079,0,10,23669,60000,0,0,0,0,0,0,0,0,0,0,0,0,'Summon Winterskorn Oracle'),
(20079,1,26,0,0,0,23669,100,0,0,0,0,0,0,0,0,0,''),
(20080,0,10,24211,20000,0,0,0,0,1,0,0,0,0,0,0,0,'Summon Freed Mist Whisper Scout - RuN ON'),
(20080,1,37,0,0,0,24211,100,0,0,0,0,0,0,0,0,0,''),
(20080,1,8,24211,0,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit');

-- Riven Widow Cocoon 24210
-- missing spawns added -- Free WoTLKDB guids reused
DELETE FROM creature_addon WHERE guid BETWEEN 141219 AND 141229;
DELETE FROM creature_movement WHERE id BETWEEN 141219 AND 141229;
DELETE FROM creature_linking WHERE guid BETWEEN 141219 AND 141229;
DELETE FROM creature_linking WHERE master_guid BETWEEN 141219 AND 141229;
DELETE FROM creature WHERE guid BETWEEN 141219 AND 141229;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(141219,24210,571,1,1,0,0,2336.732,-3408.122,151.9574,1.867502,120,120,0,0,372,0,0,0),
(141220,24210,571,1,1,0,0,2413.215,-3352.791,151.1269,0.6457718,120,120,0,0,372,0,0,0),
(141221,24210,571,1,1,0,0,2343.906,-3331.097,149.5564,0.4886922,120,120,0,0,372,0,0,0),
(141222,24210,571,1,1,0,0,2387.972,-3273.757,153.6059,1.064651,120,120,0,0,372,0,0,0),
(141223,24210,571,1,1,0,0,2352.197,-3290.444,152.4232,4.590216,120,120,0,0,372,0,0,0),
(141224,24210,571,1,1,0,0,2438.872,-3242.99,149.9682,1.937315,120,120,0,0,372,0,0,0),
(141225,24210,571,1,1,0,0,2283.345,-3237.322,153.7236,3.543018,120,120,0,0,372,0,0,0),
(141226,24210,571,1,1,0,0,2275.182,-3275.462,154.7781,5.77704,120,120,0,0,372,0,0,0),
(141227,24210,571,1,1,0,0,2355.474,-3237.123,152.1435,4.415683,120,120,0,0,372,0,0,0),
(141228,24210,571,1,1,0,0,2606.524,-3083.297,120.7375,2.356194,120,120,0,0,372,0,0,0),
(141229,24210,571,1,1,0,0,2653.958,-3048.469,108.6969,5.916666,120,120,0,0,372,0,0,0);
-- Update
UPDATE creature SET spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE id = 24210;

-- Baby Riven Widows
UPDATE creature_template SET FactionAlliance = 14 ,FactionHorde = 14, Expansion = 2, MinLevel = 65, MaxLevel = 68, MinLevelHealth = 5914, MaxLevelHealth = 6986, Armor = 6126, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 292, MinMeleeDmg = 200, MaxMeleeDmg = 355 WHERE entry = 24219;

-- Darkclaw Bat
-- missing spawns added -- Free WoTLKDB guids reused
DELETE FROM creature_addon WHERE guid BETWEEN 141230 AND 141255;
DELETE FROM creature_movement WHERE id BETWEEN 141230 AND 141255;
DELETE FROM creature_linking WHERE guid BETWEEN 141230 AND 141255;
DELETE FROM creature_linking WHERE master_guid BETWEEN 141230 AND 141255;
DELETE FROM creature WHERE guid BETWEEN 141230 AND 141255;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(141230,23959,571,1,1,0,0,2236.905,-3373.662,176.3199,5.689773,300,300,0,0,8982,0,0,0),
(141231,23959,571,1,1,0,0,2223.695,-3370.204,183.01,5.113815,300,300,0,0,8982,0,0,0),
(141232,23959,571,1,1,0,0,2209.726,-3357.689,179.0731,2.775074,300,300,0,0,8982,0,0,0),
(141233,23959,571,1,1,0,0,2275.412,-3256.317,172.093,3.281219,300,300,0,0,8982,0,0,0),
(141234,23959,571,1,1,0,0,2295.646,-3245.472,189.5508,6.108652,300,300,0,0,8982,0,0,0),
(141235,23959,571,1,1,0,0,2273.066,-3277.84,177.9699,4.118977,300,300,0,0,8982,0,0,0),
(141236,23959,571,1,1,0,0,2287.04,-3269.686,179.0153,0.1396263,300,300,0,0,8982,0,0,0),
(141237,23959,571,1,1,0,0,2281.269,-3328.832,179.0917,1.32645,300,300,0,0,8982,0,0,0),
(141238,23959,571,1,1,0,0,2354.26,-3290.389,175.93,1.134464,300,300,0,0,8982,0,0,0),
(141239,23959,571,1,1,0,0,2343.034,-3306.872,176.9227,3.717551,300,300,0,0,8982,0,0,0),
(141240,23959,571,1,1,0,0,2327.224,-3299.983,162.1648,3.473205,300,300,0,0,8982,0,0,0),
(141241,23959,571,1,1,0,0,2401.061,-3222.229,178.1657,5.270895,300,300,0,0,8982,0,0,0),
(141242,23959,571,1,1,0,0,2352.92,-3306.05,176.2186,5.009095,300,300,0,0,8982,0,0,0),
(141243,23959,571,1,1,0,0,2395.267,-3285.601,167.3129,5.602507,300,300,0,0,8982,0,0,0),
(141244,23959,571,1,1,0,0,2385.403,-3276.229,176.5875,3.543018,300,300,0,0,8982,0,0,0),
(141245,23959,571,1,1,0,0,2387.8,-3268.538,176.6525,2.076942,300,300,0,0,8982,0,0,0),
(141246,23959,571,1,1,0,0,2400.334,-3277.074,175.8632,5.916666,300,300,0,0,8982,0,0,0),
(141247,23959,571,1,1,0,0,2367.455,-3325.722,161.7935,0.7504916,300,300,0,0,8982,0,0,0),
(141248,23959,571,1,1,0,0,2427.421,-3335.335,167.0954,1.605703,300,300,0,0,8982,0,0,0),
(141249,23959,571,1,1,0,0,2609.478,-3091.998,142.5119,4.939282,300,300,0,0,8982,0,0,0),
(141250,23959,571,1,1,0,0,2607.497,-3060.215,143.9184,2.268928,300,300,0,0,8982,0,0,0),
(141251,23959,571,1,1,0,0,2622.016,-3137.997,158.8825,6.161012,300,300,0,0,8982,0,0,0),
(141252,23959,571,1,1,0,0,2649.568,-3027.349,152.956,3.508112,300,300,0,0,8982,0,0,0),
(141253,23959,571,1,1,0,0,2673.322,-3065.594,140.311,5.585053,300,300,0,0,8982,0,0,0),
(141254,23959,571,1,1,0,0,2291.698,-3439.01,183.4109,2.984513,300,300,0,0,8982,0,0,0),
(141255,23959,571,1,1,0,0,2308.353,-3452.335,180.5705,5.113815,300,300,0,0,8982,0,0,0);
-- Update
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 23959;

-- Vrykul Soul 24262
-- missing spawns added -- Free WoTLKDB guids reused
DELETE FROM creature_addon WHERE guid BETWEEN 141256 AND 141260;
DELETE FROM creature_movement WHERE id BETWEEN 141256 AND 141260;
DELETE FROM creature_linking WHERE guid BETWEEN 141256 AND 141260;
DELETE FROM creature_linking WHERE master_guid BETWEEN 141256 AND 141260;
DELETE FROM creature WHERE guid BETWEEN 141256 AND 141260;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(141256,24262,571,1,1,0,0,2512.1,-3175.52,143.235,3.45178,300,300,10,0,9291,0,0,1),
(141257,24262,571,1,1,0,0,2411.769,-3250.86,148.1036,4.370549,300,300,10,0,9291,0,0,1),
(141258,24262,571,1,1,0,0,2442.614,-3283.37,147.9495,2.890929,300,300,10,0,9291,0,0,1),
(141259,24262,571,1,1,0,0,2417.302,-3320.912,152.1976,5.894563,300,300,10,0,9291,0,0,1),
(141260,24262,571,1,1,0,0,2493.553,-3302.527,146.8744,1.047425,300,300,10,0,9291,0,0,1);
-- Addon
DELETE FROM creature_template_addon WHERE entry = 24262;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(24262,0,0,0,0,0,0,44816);
-- Update
UPDATE creature SET spawndist = 10, movementType = 1 WHERE id = 24262;

-- Riven Widow 23958
-- missing spawns added -- Free WoTLKDB guids reused
DELETE FROM creature_addon WHERE guid BETWEEN 141261 AND 141280;
DELETE FROM creature_movement WHERE id BETWEEN 141261 AND 141280;
DELETE FROM creature_linking WHERE guid BETWEEN 141261 AND 141280;
DELETE FROM creature_linking WHERE master_guid BETWEEN 141261 AND 141280;
DELETE FROM creature WHERE guid BETWEEN 141261 AND 141280;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(141261,23958,571,1,1,0,0,2248.74,-3340.41,149.421,5.65712,300,300,15,0,8982,0,0,1),
(141262,23958,571,1,1,0,0,2304.76,-3263.25,156.507,1.6995,300,300,15,0,8982,0,0,1),
(141263,23958,571,1,1,0,0,2323.03,-3218.8,156.615,2.84618,300,300,15,0,8982,0,0,1),
(141264,23958,571,1,1,0,0,2292.77,-3312.07,152.418,2.97577,300,300,15,0,8982,0,0,1),
(141265,23958,571,1,1,0,0,2346.8,-3273.05,151.811,5.59901,300,300,15,0,8982,0,0,1),
(141266,23958,571,1,1,0,0,2330.89,-3313.61,152.21,0.619579,300,300,15,0,8982,0,0,1),
(141267,23958,571,1,1,0,0,2380.83,-3257.49,152.187,2.67732,300,300,15,0,8982,0,0,1),
(141268,23958,571,1,1,0,0,2611.33,-3118.92,129.433,3.93712,300,300,15,0,8982,0,0,1),
(141269,23958,571,1,1,0,0,2586.42,-3081.51,118.466,0.288942,300,300,15,0,8982,0,0,1),
(141270,23958,571,1,1,0,0,2643.92,-3017.68,105.347,5.77101,300,300,15,0,8982,0,0,1),
(141271,23958,571,1,1,0,0,2587.68,-3032.9,116.966,4.8835,300,300,15,0,8982,0,0,1),
(141272,23958,571,1,1,0,0,2639.91,-3082.22,118.516,2.02465,300,300,15,0,8982,0,0,1),
(141273,23958,571,1,1,0,0,2686.32,-3068.79,106.917,1.03662,300,300,15,0,8982,0,0,1),
(141274,23958,571,1,1,0,0,2690.81,-3113.34,111.421,0.950216,300,300,15,0,8982,0,0,1),
(141275,23958,571,1,1,0,0,2699.67,-3028.35,97.5561,3.44778,300,300,15,0,8982,0,0,1),
(141276,23958,571,1,1,0,0,2377.6,-3306.61,152.476,1.008,300,300,15,0,8982,0,0,1),
(141277,23958,571,1,1,0,0,2279.72,-3216.06,150.085,6.12172,300,300,15,0,8982,0,0,1),
(141278,23958,571,1,1,0,0,2332.72,-3174.93,151.038,3.90691,300,300,15,0,8982,0,0,1),
(141279,23958,571,1,1,0,0,2395.84,-3137.33,156.108,3.62024,300,300,15,0,8982,0,0,1),
(141280,23958,571,1,1,0,0,2427.64,-3089.69,149.09,5.70547,300,300,15,0,8982,0,0,1);
-- Update
UPDATE creature SET position_x = 2517.978271, position_y = -3162.002930, position_z = 135.434708, spawndist = 15, movementType = 1 WHERE guid = 110041;
UPDATE creature SET position_x = 2413.865234, position_y = -3188.433838, position_z = 153.806534, spawndist = 15, movementType = 1 WHERE guid = 110053;
UPDATE creature SET position_x = 2450.488770, position_y = -3190.262451, position_z = 148.903229, spawndist = 15, movementType = 1 WHERE guid = 110060;
UPDATE creature SET position_x = 2471.067139, position_y = -3167.436768, position_z = 145.415009, spawndist = 15, movementType = 1 WHERE guid = 110052;
UPDATE creature SET position_x = 2463.469482, position_y = -3113.273438, position_z = 141.033157, spawndist = 15, movementType = 1 WHERE guid = 110043;
UPDATE creature SET position_x = 2547.251221, position_y = -3019.340332, position_z = 114.781189, spawndist = 15, movementType = 1 WHERE guid = 110061;
UPDATE creature SET spawndist = 15, movementType = 1 WHERE id = 23958;

