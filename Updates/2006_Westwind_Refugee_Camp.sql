-- Westwind Refugee Camp - Dragonblight

-- Blood Guard Roh'kill 26180
-- Moved to WoTLK Range 571x
UPDATE creature SET guid = 5712400 WHERE guid = 102248;
UPDATE creature SET phaseMask = 3 WHERE guid = 5712400;

-- Taunka'le Brave 26157
-- Moved to WoTLK Range 571x
UPDATE creature SET guid = 5712401 WHERE guid = 100096;
UPDATE creature SET guid = 5712402 WHERE guid = 100097;
UPDATE creature SET phaseMask = 3 WHERE guid IN (5712401,5712402);

-- Wartook Iceborn 26156
-- Moved to WoTLK Range 571x
UPDATE creature SET guid = 5712403 WHERE guid = 100066;
UPDATE creature SET phaseMask = 3 WHERE guid = 5712403;

-- Blood Guard Tor'zin 26182
-- Moved to WoTLK Range 571x
UPDATE creature SET guid = 5712404 WHERE guid = 102379;
UPDATE creature SET phaseMask = 3 WHERE guid = 5712404;

-- Taunka'le Refugee 26179 & 26184
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26179);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26184);
DELETE FROM creature_template_addon WHERE entry IN (26179,26184);
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26179,0,0,1,1,0,0,NULL),
(26184,0,0,1,1,0,0,NULL);
UPDATE creature_template SET EquipmentTemplateid = 0 WHERE entry IN (26179,26184);
-- Moved to WoTLK Range 571x
-- 26179
UPDATE creature SET guid = 5712405 WHERE guid = 102125;
UPDATE creature SET guid = 5712406 WHERE guid = 102126;
UPDATE creature SET guid = 5712407 WHERE guid = 102129;
UPDATE creature SET guid = 5712408 WHERE guid = 102131;
UPDATE creature SET guid = 5712409 WHERE guid = 102132;
UPDATE creature SET guid = 5712410 WHERE guid = 102134;
UPDATE creature SET guid = 5712411 WHERE guid = 102137;
UPDATE creature SET guid = 5712412 WHERE guid = 102138;
UPDATE creature SET guid = 5712413 WHERE guid = 102139;
UPDATE creature SET guid = 5712414 WHERE guid = 102140;
UPDATE creature SET guid = 5712415 WHERE guid = 102141;
UPDATE creature SET guid = 5712416 WHERE guid = 102142;
UPDATE creature SET guid = 5712417 WHERE guid = 102143;
UPDATE creature SET guid = 5712418 WHERE guid = 102144;
UPDATE creature SET guid = 5712419 WHERE guid = 102145;
UPDATE creature SET guid = 5712420 WHERE guid = 102146;
UPDATE creature SET guid = 5712421 WHERE guid = 102147;
UPDATE creature SET guid = 5712422 WHERE guid = 102148;
UPDATE creature SET guid = 5712423 WHERE guid = 102149;
UPDATE creature SET guid = 5712424 WHERE guid = 102150;
-- 26184
UPDATE creature SET guid = 5712425 WHERE guid = 102488;
UPDATE creature SET guid = 5712426 WHERE guid = 102492;
UPDATE creature SET guid = 5712427 WHERE guid = 102493;
UPDATE creature SET guid = 5712428 WHERE guid = 102494;
UPDATE creature SET guid = 5712429 WHERE guid = 102495;
UPDATE creature SET guid = 5712430 WHERE guid = 102496;
UPDATE creature SET guid = 5712431 WHERE guid = 102497;
UPDATE creature SET guid = 5712432 WHERE guid = 102498;
UPDATE creature SET guid = 5712433 WHERE guid = 102501;
UPDATE creature SET guid = 5712434 WHERE guid = 102503;
UPDATE creature SET guid = 5712435 WHERE guid = 102504;
UPDATE creature SET guid = 5712436 WHERE guid = 102505;
UPDATE creature SET guid = 5712437 WHERE guid = 102506;
UPDATE creature SET guid = 5712438 WHERE guid = 102507;
UPDATE creature SET guid = 5712439 WHERE guid = 102508;
UPDATE creature SET guid = 5712440 WHERE guid = 102509;
UPDATE creature SET guid = 5712441 WHERE guid = 102510;
UPDATE creature SET guid = 5712442 WHERE guid = 102511;
UPDATE creature SET guid = 5712443 WHERE guid = 102512;
UPDATE creature SET guid = 5712444 WHERE guid = 102513;
UPDATE creature SET guid = 5712445 WHERE guid = 102514;
-- individual addons
DELETE FROM creature_addon WHERE guid IN (5712405,5712407,5712410,5712418,5712425,5712428,5712431,5712442,5712406,5712412,5712416,5712421,5712426,5712429,5712430,5712437,
5712440,5712441,5712411,5712413,5712414,5712415,5712433,5712435,5712438);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
-- sit
(5712406,0,1,1,1,0,0,NULL),
(5712412,0,1,1,1,0,0,NULL),
(5712416,0,1,1,1,0,0,NULL),
(5712421,0,1,1,1,0,0,NULL),
(5712426,0,1,1,1,0,0,NULL),
(5712429,0,1,1,1,0,0,NULL),
(5712430,0,1,1,1,0,0,NULL),
(5712437,0,1,1,1,0,0,NULL),
(5712440,0,1,1,1,0,0,NULL),
(5712441,0,1,1,1,0,0,NULL),
-- sleep
(5712411,0,0,1,1,0,0,16093),
(5712413,0,0,1,1,0,0,16093),
(5712414,0,0,1,1,0,0,16093),
(5712415,0,0,1,1,0,0,16093),
(5712433,0,0,1,1,0,0,16093),
(5712435,0,0,1,1,0,0,16093),
(5712438,0,0,1,1,0,0,16093),
-- fishing team
(5712405,0,0,1,1,379,0,NULL),
(5712407,0,0,1,1,379,0,NULL),
(5712410,0,0,1,1,379,0,NULL),
(5712418,0,0,1,1,379,0,NULL),
(5712425,0,0,1,1,379,0,NULL),
(5712428,0,0,1,1,379,0,NULL),
(5712431,0,0,1,1,379,0,NULL),
(5712442,0,0,1,1,379,0,NULL);
UPDATE creature SET phaseMask = 3, spawntimesecsmin = 120, spawntimesecsmax = 120, spawndist = 0, MovementType = 0 WHERE id IN (26179,26184);
UPDATE creature SET equipment_id = 13 WHERE guid IN (5712405,5712407,5712410,5712418,5712425,5712428,5712431,5712442);

-- Emissary Brighthoof 26181
DELETE FROM creature_addon WHERE guid = 102336;
UPDATE creature SET guid = 5712446 WHERE guid = 102336;
UPDATE creature SET phaseMask = 3, spawndist = 0, MovementType = 2 WHERE guid = 5712446;
UPDATE creature_template SET MovementType = 2 WHERE entry = 26181;
DELETE FROM creature_movement_template WHERE entry = 26181;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26181,1,3722.9,2880.7,90.8248,0.0342712,0,0),
(26181,2,3726.46,2889.83,91.3127,1.10791,0,0),
(26181,3,3735.24,2904.15,91.3454,0.864437,0,0),
(26181,4,3745.92,2905.74,90.616,0.25811,0,0),
(26181,5,3749.82,2905.39,90.4825,0.0778359,0,0),
(26181,6,3758.66,2909.28,90.3385,0.0841172,0,0),
(26181,7,3776.49,2903.67,90.5231,5.81753,0,0),
(26181,8,3781.51,2900.15,90.4281,5.06277,0,0),
(26181,9,3782.51,2893.11,90.4154,4.76711,0,0),
(26181,10,3781.96,2879.58,90.5645,4.76318,0,0),
(26181,11,3784.05,2867.99,90.1558,4.84172,0,0),
(26181,12,3781.01,2860.68,90.3107,4.15843,0,0),
(26181,13,3774.04,2853.89,90.2278,4.0367,0,0),
(26181,14,3764.77,2847.7,90.3746,3.59294,0,0),
(26181,15,3753.12,2844.5,90.4262,3.26308,0,0),
(26181,16,3738.17,2843.77,90.5112,3.07065,0,0),
(26181,17,3720.35,2846.57,89.5187,3.48849,0,0),
(26181,18,3714.41,2842.51,89.2719,3.87726,0,0),
(26181,19,3719.18,2853.59,89.9716,1.07339,12000,2618101),
(26181,20,3726.68,2858.2,90.3568,0.437215,0,0),
(26181,21,3738.83,2866.03,92.6582,0.598221,0,0),
(26181,22,3751.55,2865.1,92.7316,0.036658,0,0),
(26181,23,3755.68,2866.6,92.732,0.558948,12000,2618102),
(26181,24,3759.74,2868.82,92.7584,0.73959,0,0),
(26181,25,3764.98,2875.33,92.8201,1.23046,0,0),
(26181,26,3763.75,2884.68,92.7329,1.86664,0,0),
(26181,27,3756.89,2888.87,92.7315,2.65596,0,0),
(26181,28,3750.44,2887.24,92.7315,3.44055,0,0),
(26181,29,3744.59,2882.63,92.7456,4.01782,0,0),
(26181,30,3739.1,2875.48,92.6466,3.94713,0,0),
(26181,31,3730.46,2877.17,91.474,2.80831,0,0),
(26181,32,3719.13,2880.79,91.1523,2.97324,0,0),
(26181,33,3708.66,2880.91,91.9412,3.16173,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2618101,2618102);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2618101,0,45,0,20119,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2618102,0,45,0,20120,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscript_random_templates WHERE id BETWEEN 20119 AND 20122;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20119,1,20180,60,'26181 - Random Script - 1'),
(20119,1,20181,40,'26181 - Random Script - 2'),
(20120,1,20180,60,'26181 - Random Script - 1'),
(20120,1,20182,40,'26181 - Random Script - 3'),
(20121,0,2000020286,0,'26181 - Random texts'),
(20121,0,2000020287,0,'26181 - Random texts'),
(20121,0,2000020288,0,'26181 - Random texts'),
(20121,0,2000020289,0,'26181 - Random texts'),
(20122,0,2000020290,0,'26181 - Random texts'),
(20122,0,2000020291,0,'26181 - Random texts'),
(20122,0,2000020292,0,'26181 - Random texts'),
(20122,0,2000020293,0,'26181 - Random texts');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20180 AND 20182;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20180,0,31,26179,1,0,0,0,0,-15000,0,0,0,0,0,0,0,'26181 - Random Script - 1 (must fail)'),

(20181,99,31,26179,10,0,0,0,0,-12000,0,0,0,0,0,0,0,'26181 - Random Script - 2'),
(20181,100,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'26181 - Random Script - 2'),
(20181,100,21,1,0,0,26179,10,7,0,0,0,0,0,0,0,0,'26181 - Random Script - 2'),
(20181,150,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2.55776,'26181 - Random Script - 2'),
(20181,2500,31,26179,10,0,0,0,0,-12000,0,0,0,0,0,0,0,'26181 - Random Script - 2'),
(20181,3000,0,20121,0,0,0,0,0,0,0,0,0,0,0,0,0,'26181 - Random Script - 2'),
(20181,5500,31,26179,10,0,0,0,0,-10000,0,0,0,0,0,0,0,'26181 - Random Script - 2'),
(20181,5800,3,0,0,0,26179,10,7,0,0,0,0,0,0,0,6.06063,'26181 - Random Script - 2'),
(20181,6000,0,20122,0,0,26179,10,7,0,0,0,0,0,0,0,0,'26181 - Random Script - 2'),
(20181,9000,3,0,0,0,26179,10,7,0,0,0,0,0,0,0,1.44862,'26181 - Random Script - 2'),
(20181,9500,21,0,0,0,26179,10,7,0,0,0,0,0,0,0,0,'26181 - Random Script - 2'),
(20181,9600,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'26181 - Random Script - 2'),

(20182,99,31,26184,10,0,0,0,0,-12000,0,0,0,0,0,0,0,'26181 - Random Script - 3'),
(20182,100,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'26181 - Random Script - 3'),
(20182,100,21,1,0,0,26184,10,7,0,0,0,0,0,0,0,0,'26181 - Random Script - 3'),
(20182,150,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2.55776,'26181 - Random Script - 3'),
(20182,2500,31,26184,10,0,0,0,0,-12000,0,0,0,0,0,0,0,'26181 - Random Script - 3'),
(20182,3000,0,20121,0,0,0,0,0,0,0,0,0,0,0,0,0,'26181 - Random Script - 3'),
(20182,5500,31,26184,10,0,0,0,0,-10000,0,0,0,0,0,0,0,'26181 - Random Script - 3'),
(20182,5600,28,0,0,0,26184,10,7,0,0,0,0,0,0,0,0,'26181 - Random Script - 3'),
(20182,5800,3,0,0,0,26184,10,7,0,0,0,0,0,0,0,5.14564,'26181 - Random Script - 3'),
(20182,7000,0,20122,0,0,26184,10,7,0,0,0,0,0,0,0,0,'26181 - Random Script - 3'),
(20182,9000,3,0,0,0,26184,10,7,0,0,0,0,0,0,0,1.78024,'26181 - Random Script - 3'),
(20182,9200,28,1,0,0,26184,10,7,0,0,0,0,0,0,0,0,'26181 - Random Script - 3'),
(20182,9500,21,0,0,0,26184,10,7,0,0,0,0,0,0,0,0,'26181 - Random Script - 3'),
(20182,9600,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'26181 - Random Script - 3');
DELETE FROM dbscript_string WHERE entry BETWEEN 2000020286 AND 2000020293;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020286,'I am your tauren sister, taunka. Our blood is the same, and because of this no harm will come to you now. You are safe.',0,0,0,1,NULL),
(2000020287,'Garrosh will soon be sending his most capable soldiers. It is they who will guide you into the open and waiting arms of the Horde.',0,0,0,1,NULL),
(2000020288,'You will soon be behind the impenetrable walls of Agmar\'s Hammer, taunka.',0,0,0,1,NULL),
(2000020289,'Salvation comes to those whose cause is righteous and true. Join us and you will be saved.',0,0,0,1,NULL),
(2000020290,'%s cheers at Emissary Brighthoof.',0,2,0,4,NULL),
(2000020291,'%s cries tears of happiness.',0,2,0,0,NULL),
(2000020292,'%s roars in approval!',0,2,0,15,NULL),
(2000020293,'%s thanks Emissary Brighthoof.',0,2,0,1,NULL);

-- Recovered Horde Armaments req. phase change - can't find this spell in sniffs (some hidden mechanics?) - another spell used - can be used muuliple times depends of area or conditions
DELETE FROM spell_area WHERE spell = 59073 AND area = 4151;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(59073,4151,0,0,0,20036,0,0,2,1);
DELETE FROM `conditions` WHERE `condition_entry` IN (20036);
INSERT INTO `conditions` (condition_entry, type, value1, value2) VALUES
(20036, 8, 11978, 0);

-- Recovered Horde Armaments
-- Moved to WoTLK Range 571x
UPDATE gameobject SET guid = 5710818 WHERE guid = 58179;
UPDATE gameobject SET guid = 5710819 WHERE guid = 58180;
UPDATE gameobject SET guid = 5710820 WHERE guid = 58181;
UPDATE gameobject SET guid = 5710821 WHERE guid = 58182;
UPDATE gameobject SET guid = 5710822 WHERE guid = 58183;
UPDATE gameobject SET guid = 5710823 WHERE guid = 58184;
UPDATE gameobject SET guid = 5710824 WHERE guid = 58185;
UPDATE gameobject SET guid = 5710825 WHERE guid = 58186;
UPDATE gameobject SET guid = 5710826 WHERE guid = 58187;
UPDATE gameobject SET guid = 5710827 WHERE guid = 58193;
UPDATE gameobject SET guid = 5710828 WHERE guid = 58194;
UPDATE gameobject SET guid = 5710829 WHERE guid = 58195;
UPDATE gameobject SET guid = 5710830 WHERE guid = 58196;
UPDATE gameobject SET guid = 5710831 WHERE guid = 58197;
UPDATE gameobject SET guid = 5710832 WHERE guid = 58198;
UPDATE gameobject SET guid = 5710833 WHERE guid = 58199;
UPDATE gameobject SET guid = 5710834 WHERE guid = 58200;
UPDATE gameobject SET guid = 5710835 WHERE guid = 58201;
UPDATE gameobject SET guid = 5710836 WHERE guid = 58210;
UPDATE gameobject SET guid = 5710837 WHERE guid = 58211;
UPDATE gameobject SET guid = 5710838 WHERE guid = 58212;
UPDATE gameobject SET guid = 5710839 WHERE guid = 58213;
UPDATE gameobject SET guid = 5710840 WHERE guid = 58214;
UPDATE gameobject SET guid = 5710841 WHERE guid = 58215;
UPDATE gameobject SET phaseMask = 2 WHERE id IN (188252,188253,188254);

-- Bonfire
UPDATE gameobject SET guid = 5710842 WHERE guid = 59455;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710842;
UPDATE gameobject SET guid = 5710843 WHERE guid = 59461;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710843;
UPDATE gameobject SET guid = 5710844 WHERE guid = 59460;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710844;

-- Campfire
UPDATE gameobject SET guid = 5710845 WHERE guid = 59501;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710845;

-- Brazier
UPDATE gameobject SET guid = 5710846 WHERE guid = 60584;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710846;
UPDATE gameobject SET guid = 5710847 WHERE guid = 60610;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710847;

-- NPC Fishing Bobber
UPDATE gameobject SET guid = 5710848 WHERE guid = 61218;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710848;
UPDATE gameobject SET guid = 5710849 WHERE guid = 61219;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710849;
UPDATE gameobject SET guid = 5710850 WHERE guid = 61220;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710850;
UPDATE gameobject SET guid = 5710851 WHERE guid = 61221;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710851;
UPDATE gameobject SET guid = 5710852 WHERE guid = 61223;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710852;
UPDATE gameobject SET guid = 5710853 WHERE guid = 61225;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710853;
UPDATE gameobject SET guid = 5710854 WHERE guid = 61226;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710854;
UPDATE gameobject SET guid = 5710855 WHERE guid = 61228;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710855;

-- Dragonfin Angelfish School
UPDATE gameobject SET guid = 5710856 WHERE guid = 64152;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710856;
UPDATE gameobject SET guid = 5710857 WHERE guid = 64154;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710857;
UPDATE gameobject SET guid = 5710858 WHERE guid = 56979;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710858;
UPDATE gameobject SET guid = 5710859 WHERE guid = 56980;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710859;
UPDATE gameobject SET guid = 5710860 WHERE guid = 64153;
UPDATE gameobject SET phaseMask = 3 WHERE guid = 5710860;
