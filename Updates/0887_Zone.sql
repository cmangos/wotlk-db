-- Valiance Keep - Borean Tundra

-- Justicar Julia Celestre
DELETE FROM creature_addon WHERE guid = 112616;
DELETE FROM creature_template_addon WHERE entry = 25264;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25264,0,0,1,1,0,0,23214);

-- Medic Hawthorn
DELETE FROM creature_addon WHERE guid = 117434;
DELETE FROM creature_template_addon WHERE entry = 25825;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25825,0,0,1,1,0,0,NULL);

-- Valiance Keep Footman
DELETE FROM creature_addon WHERE guid  IN (SELECT guid FROM creature WHERE id = 25253);
DELETE FROM creature_template_addon WHERE entry = 25253;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25253,0,0,1,1,0,0,NULL);
-- 3 have invidual addons
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(111378,0,0,1,1,0,0,48498),
(111382,0,0,1,1,0,0,48498),
(111384,0,7,1,1,0,0,NULL);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (111370,111376,111377,111378,111379,111380,111381,111382,111383,111403);
DELETE FROM creature_movement WHERE id IN (111370,111376,111377,111378,111379,111380,111381,111382,111383,111403);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #111370
(111370,1,2112.32,5280,45.7232,0,0,2.45),
(111370,2,2108.87,5282.85,45.7232,0,0,1.36),
(111370,3,2110.99,5291.02,45.7234,0,0,2.21),
(111370,4,2105.67,5300.09,45.7237,0,0,1.28),
(111370,5,2111.98,5317.25,45.7237,0,0,0.51),
(111370,6,2121,5322.04,45.7239,0,0,0.96),
(111370,7,2124.46,5329.21,45.7239,0,0,6.16),
(111370,8,2131.68,5328.6,45.7239,0,0,6.01),
(111370,9,2139.26,5322.95,45.7252,0,0,5.98),
(111370,10,2156.41,5317.43,45.727,0,0,0.01),
(111370,11,2167.32,5316.74,45.7238,0,0,5.17),
(111370,12,2171.67,5309.2,45.7238,0,0,4.36),
(111370,13,2168.38,5304.05,45.7238,0,0,4.36),
(111370,14,2159.92,5279.2,45.7253,0,0,4.73),
(111370,15,2159.6,5271.47,45.7238,0,0,3.91),
(111370,16,2156.23,5269.9,45.7238,0,0,3.51),
(111370,17,2151.21,5267.44,45.7238,0,0,2.78),
(111370,18,2142.85,5272.95,45.7246,0,0,2.66),
(111370,19,2124.72,5278.97,45.7268,0,0,2.84),
-- #111376
(111376,1,2353.95,5225.06,7.71537,9000,2525302,5.18363),
-- #111377
(111377,1,2358.55,5204.63,7.71538,4000,2525302,5.89921),
-- #111378
(111378,1,2343.82,5212.07,7.71537,12000,2525301,6.03884),
(111378,2,2343.82,5212.07,7.71537,15000,2525301,6.03884),
-- #111379
(111379,1,2354.85,5223.55,7.71538,1000,2525302,2.18166),
(111379,2,2354.85,5223.55,7.71538,9000,2525302,2.18166),
-- #111380
(111380,1,2350.78,5210.33,7.71537,3000,0,3.29867),
(111380,2,2350.78,5210.33,7.71537,3000,2525302,3.29867),
-- #111381
(111381,1,2349.15,5209.93,7.71537,2000,0,0.349066),
(111381,2,2349.15,5209.93,7.71537,9000,2525302,0.349066),
-- #111382
(111382,1,2349.19,5225.74,7.71537,5000,0,5.95157),
(111382,2,2349.19,5225.74,7.71537,16000,2525301,5.95157),
(111382,3,2349.19,5225.74,7.71537,11000,2525301,5.95157),
-- #111383
(111383,1,2364.89,5221.37,7.71537,2000,0,6.05629),
(111383,2,2364.89,5221.37,7.71537,4000,2525302,6.05629),
-- #111403
(111403,1,2119.65,5274.81,45.7252,0,0,5.94453),
(111403,2,2141.74,5267.52,45.7257,0,0,5.95316),
(111403,3,2149.27,5267.87,45.7243,0,0,0.176555),
(111403,4,2154.02,5269.57,45.7243,0,0,6.25082),
(111403,5,2158.62,5269.62,45.7243,0,0,1.16616),
(111403,6,2160.46,5273.87,45.723,0,0,0.798569),
(111403,7,2163.87,5277.47,45.7241,0,0,1.25253),
(111403,8,2171.3,5297.91,45.7266,0,0,1.20933),
(111403,9,2171.5,5306.5,45.7236,0,0,1.66094),
(111403,10,2169.53,5312.24,45.7236,0,0,2.01829),
(111403,11,2166.52,5317.13,45.7236,0,0,2.79584),
(111403,12,2164.14,5317.97,45.7239,0,0,2.82333),
(111403,13,2161.3,5321.61,45.724,0,0,2.94674),
(111403,14,2137.44,5328.99,45.7252,0,0,3.15636),
(111403,15,2130.8,5328.72,45.7236,0,0,3.27181),
(111403,16,2124.69,5328.4,45.7236,0,0,4.09962),
(111403,17,2119.3,5320.15,45.7238,0,0,3.47523),
(111403,18,2113.66,5318.81,45.7239,0,0,3.55691),
(111403,19,2105.93,5316.01,45.7208,0,0,4.32424),
(111403,20,2102.26,5304.51,45.7208,0,0,5.15284),
(111403,21,2109.79,5291.32,45.7236,0,0,4.67846),
(111403,22,2108.79,5283.74,45.7236,0,0,5.52198),
(111403,23,2114.3,5279.47,45.7236,0,0,5.95394),
(111403,24,2116.45,5278.52,45.7236,0,0,5.91075);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2525301,2525302);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2525301,1,1,4,0,0,0,0,5,21,0,0,0,0,0,0,''),
(2525302,1,1,36,0,0,0,0,43,0,0,0,0,0,0,0,'');

-- Valiance Keep Cannoneer
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25306);
DELETE FROM creature_template_addon WHERE entry = 25306;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25306,0,0,1,1,0,0,NULL);
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (116769,116770,116776,116777,116847);
DELETE FROM creature_movement WHERE id IN (116769,116770,116776,116777,116847);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #116769
(116769,1,2330.92,5307.95,50.716,13000,2530601,6.17846),
(116769,2,2330.92,5307.95,50.716,16000,2530601,6.17846),
-- #116770
(116770,1,2205.9,5328.66,21.6167,17000,0,1.11701), -- for new grid system? 2530602
(116770,2,2205.9,5328.66,21.6167,14000,0,1.11701), -- for new grid system? 2530602
-- #116776
(116776,1,2292.02,5302.89,11.4517,18000,2530603,0.349066),
(116776,2,2292.02,5302.89,11.4517,15000,2530603,0.349066),
-- #116777
(116777,1,2256.92,5361,2.09429,13000,2530604,6.17846),
(116777,2,2256.92,5361,2.09429,11000,2530604,6.17846),
-- #116847
(116847,1,2237.46,5366.45,2.10174,15000,2530605,2.00713),
(116847,2,2237.46,5366.45,2.10174,18000,2530605,2.00713);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2530601 AND 2530605;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2530601,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2530601,1,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2530601,3,13,0,0,188692,55971,1 | 0x10,0,0,0,0,0,0,0,0,'use object'),
(2530601,4,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
/* 
Recruits script makes this throws errors - grid system
disabled temp.
(2530602,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2530602,1,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2530602,3,13,0,0,187560,59800,1 | 0x10,0,0,0,0,0,0,0,0,'use object'),
(2530602,4,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
*/

(2530603,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2530603,1,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2530603,3,13,0,0,187560,59801,1 | 0x10,0,0,0,0,0,0,0,0,'use object'),
(2530603,4,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),

(2530604,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2530604,1,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2530604,3,13,0,0,187560,59799,1 | 0x10,0,0,0,0,0,0,0,0,'use object'),
(2530604,4,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),

(2530605,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2530605,1,1,16,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2530605,3,13,0,0,187560,59798,1 | 0x10,0,0,0,0,0,0,0,0,'use object'),
(2530605,4,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
-- spell for cannons needs a target
DELETE FROM spell_script_target WHERE entry = 42442;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(42442, 1, 24042, 0);

-- Sergeant Hammerhill
DELETE FROM creature_addon WHERE guid = 116619;
DELETE FROM creature_template_addon WHERE entry = 25816;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25816,14577,0,1,1,0,0,NULL);

-- Draenei Delegate
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25300);
DELETE FROM creature_template_addon WHERE entry = 25300;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25300,0,0,0,1,0,0,NULL);

-- Harbinger Vurenn
DELETE FROM creature_addon WHERE guid = 114506;
DELETE FROM creature_template_addon WHERE entry = 25285;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25285,0,0,0,1,0,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 25285;
UPDATE creature SET MovementType = 2 WHERE id = 25285;
DELETE FROM creature_movement WHERE id = 114506;
DELETE FROM creature_movement_template WHERE entry = 25285;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25285,1,2112.63,5307.97,34.1005,35000,0,3.50811),
(25285,2,2112.63,5307.97,34.1005,30000,2528501,3.50811),
(25285,3,2112.63,5307.97,34.1005,240000,0,3.50811);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2528501;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2528501,0,31,25301,50,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2528501,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2528501,1,21,1,0,25301,100,7,0,0,0,0,0,0,0,0,'Counselor Talbot - active'),
(2528501,1,21,1,0,25250,100,7,0,0,0,0,0,0,0,0,'General Arlos - active'),
(2528501,3,0,0,0,0,0,0,2000001166,0,0,0,0,0,0,0,''),
(2528501,9,0,0,0,25301,115989,23,2000001167,0,0,0,0,0,0,0,''),
(2528501,19,0,0,0,25250,111232,23,2000001168,0,0,0,0,0,0,0,''),
(2528501,25,0,0,0,0,0,0,2000001169,0,0,0,0,0,0,0,''),
(2528501,27,21,0,0,25250,100,7,0,0,0,0,0,0,0,0,'General Arlos - unactive'),
(2528501,27,21,0,0,25301,100,7,0,0,0,0,0,0,0,0,'Counselor Talbot - unactive'),
(2528501,28,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001166 AND 2000001169;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001166,'Give the word, general.  I will have two regiments at your disposal in a month\'s time.',0,0,0,1,NULL),
(2000001167,'Our troops, general, consist mostly of villagers and peasants.  Good men, but not quite rid of the prejudices and superstitions of their upbringing.  They\'re not ready to fight alongside our more exotic allies.',0,0,0,1,NULL),
(2000001168,'Your offer will be carefully considered, harbinger.  In the meantime we will make use of your delegation in an advisory role.',0,0,0,1,NULL),
(2000001169,'Very well, general.  Should you change your mind, my people will be more than willing to provide military assistance.',0,0,0,1,NULL);
-- links
DELETE FROM creature_linking_template WHERE entry = 25300;
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(25300, 571, 25285, 1, 100);

-- General Arlos
DELETE FROM creature_addon WHERE guid = 111232;
DELETE FROM creature_template_addon WHERE entry = 25250;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25250,0,0,0,1,0,0,NULL);

-- Counselor Talbot
DELETE FROM creature_addon WHERE guid = 115989;
DELETE FROM creature_template_addon WHERE entry = 25301;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25301,0,0,0,1,0,0,NULL);

-- Admiral Cantlebree
DELETE FROM creature_addon WHERE guid = 115841;
DELETE FROM creature_template_addon WHERE entry = 25299;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25299,0,0,0,1,378,0,NULL);

-- Captain "Lefty" Lugsail
DELETE FROM creature_addon WHERE guid = 115708;
DELETE FROM creature_template_addon WHERE entry = 25298;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25298,0,0,0,1,378,0,NULL);

-- Tomas Riverwell
DELETE FROM creature_addon WHERE guid = 120546;
DELETE FROM creature_template_addon WHERE entry = 26879;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26879,0,0,0,1,0,0,NULL);

-- Maigra Keenfeather
DELETE FROM creature_addon WHERE guid = 85093;
DELETE FROM creature_template_addon WHERE entry = 35133;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(35133,17717,0,1,1,0,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 35133;
UPDATE creature SET MovementType = 2 WHERE id = 35133;
DELETE FROM creature_movement WHERE id = 85093;
DELETE FROM creature_movement_template WHERE entry = 35133;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(35133,1,2277.37,5172.91,11.423,2000,3513301,2.58309);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3513301;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(3513301,0,39,0,0,0,0,8,0,0,0,0,0,0,0,0,'fly off'),
(3513301,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');

-- Durgan Thunderbeak
DELETE FROM creature_addon WHERE guid = 85091;
DELETE FROM creature_template_addon WHERE entry = 35131;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(35131,17717,0,1,1,0,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 35131;
UPDATE creature SET MovementType = 2 WHERE id = 35131;
DELETE FROM creature_movement WHERE id = 85091;
DELETE FROM creature_movement_template WHERE entry = 35131;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(35131,1,2277.37,5172.91,11.423,2000,3513101,2.58309);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3513101;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(3513101,0,39,0,0,0,0,8,0,0,0,0,0,0,0,0,'fly off'),
(3513101,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');

-- Magister Dath'omere
DELETE FROM creature_addon WHERE guid = 117815;
DELETE FROM creature_template_addon WHERE entry = 29158;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(29158,0,0,0,1,0,0,NULL);

-- Leryssa
DELETE FROM creature_addon WHERE guid = 111282;
DELETE FROM creature_template_addon WHERE entry = 25251;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25251,0,0,0,1,0,0,NULL);

-- Vindicatlor Yaala
DELETE FROM creature_addon WHERE guid = 117623;
DELETE FROM creature_template_addon WHERE entry = 25826;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25826,0,0,0,1,0,0,NULL);

-- Recruitment Officer Blythe
DELETE FROM creature_addon WHERE guid = 116919;
DELETE FROM creature_template_addon WHERE entry = 25307;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25307,0,0,1,1,0,0,NULL);

-- Recruitment Officer Carven
DELETE FROM creature_addon WHERE guid = 108029;
DELETE FROM creature_template_addon WHERE entry = 25222;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25222,0,0,1,1,0,0,NULL);

-- Fendrig Redbeard
DELETE FROM creature_addon WHERE guid = 106961;
DELETE FROM creature_template_addon WHERE entry = 26999;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26999,0,0,1,1,0,0,NULL);

-- Logistics Officer Silverstone
DELETE FROM creature_addon WHERE guid = 100733;
DELETE FROM creature_template_addon WHERE entry = 32564;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(32564,0,0,1,1,0,0,NULL);

-- Brynna Wilson
DELETE FROM creature_addon WHERE guid = 106237;
DELETE FROM creature_template_addon WHERE entry = 26992;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(26992,0,0,0,1,0,0,NULL);

-- Cosmetic Trigger - LAB
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 24921;

-- Borean Queue Trigger LAB
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 25219;

-- Heldgarr Steelbeard
DELETE FROM creature_addon WHERE guid = 114131;
DELETE FROM creature_template_addon WHERE entry = 25281;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25281,0,0,1,1,0,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 25281;
UPDATE creature SET MovementType = 2 WHERE id = 25281;
DELETE FROM creature_movement WHERE id = 114131;
DELETE FROM creature_movement_template WHERE entry = 25281;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25281,1,2341.39,5200.77,7.71538,2000,0,4.36332),
(25281,2,2341.39,5200.77,7.71538,7000,2528101,4.36332),
(25281,3,2341.39,5200.77,7.71538,9000,2528101,4.36332),
(25281,4,2341.39,5200.77,7.71538,15000,0,4.36332);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2528101;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2528101,0,31,24921,50,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2528101,1,15,45425,1,24921,50,1,0,0,0,0,0,0,0,0,'');

-- Ferlyyn Windsong
DELETE FROM creature_addon WHERE guid = 114199;
DELETE FROM creature_template_addon WHERE entry = 25282;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25282,0,0,1,1,0,0,NULL);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 25282;
UPDATE creature SET MovementType = 2 WHERE id = 25282;
DELETE FROM creature_movement WHERE id = 114199;
DELETE FROM creature_movement_template WHERE entry = 25282;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25282,1,2345.82,5199.67,7.68389,6000,2528201,4.32842),
(25282,2,2345.82,5199.67,7.68389,8000,2528201,4.32842),
(25282,3,2345.82,5199.67,7.68389,6000,2528201,4.32842),
(25282,4,2345.82,5199.67,7.68389,16000,0,4.32842);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2528201;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2528201,0,31,24921,50,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2528201,1,15,42611,1,24921,50,1,0,0,0,0,0,0,0,0,'');

-- Civilian Recruit - 25317
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25317);
DELETE FROM creature_template_addon WHERE entry = 25317;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25317,0,0,0,1,0,0,NULL);
UPDATE creature_template SET EquipmentTemplateId = 0 WHERE Entry = 25317;
-- 4 have invidual addons
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(117788,0,0,0,1,333,0,NULL),
(117789,0,3,0,1,0,0,NULL),
(117790,0,3,0,1,0,0,NULL),
(117794,0,0,0,1,333,0,NULL);
UPDATE creature SET position_z = 25.697 WHERE guid = 117789;
UPDATE creature SET position_z = 25.718 WHERE guid = 117790;
-- Waypoints
UPDATE creature SET equipment_id = 50, spawndist = 0, MovementType = 2 WHERE guid IN (117788,117794);
DELETE FROM creature_movement WHERE id IN (117788,117794);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #117788
(117788,1,2114.61,5284.78,24.7267,60000,2531701,3.87463),
(117788,2,2114.61,5284.78,24.7267,60000,2531701,3.87463),
(117788,3,2114.61,5284.78,24.7267,60000,2531701,3.87463),
(117788,4,2114.61,5284.78,24.7267,20000,2531702,3.87463),
(117788,5,2114.61,5284.78,24.7267,60000,2531701,3.87463),
-- #117794
(117794,1,2126.98,5322.85,24.7275,60000,2531701,2.26893),
(117794,2,2126.98,5322.85,24.7275,20000,2531702,2.26893),
(117794,3,2126.98,5322.85,24.7275,60000,2531701,2.26893),
(117794,4,2126.98,5322.85,24.7275,60000,2531701,2.26893),
(117794,5,2126.98,5322.85,24.7275,60000,2531701,2.26893);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2531701,2531702);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2531701,1,1,36,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2531701,6,1,36,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2531701,17,1,36,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2531701,25,1,36,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2531701,33,1,36,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2531701,36,1,36,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2531701,44,1,36,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2531701,57,1,36,0,0,0,0,0,0,0,0,0,0,0,0,''),
-- event
(2531702,0,31,25317,40,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2531702,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2531702,1,21,1,0,25317,40,7,0,0,0,0,0,0,0,0,'Civilian Recruit - active'),
(2531702,3,0,1,0,0,0,0,0,0,0,0,0,0,0,0,'string_template_1'),
(2531702,7,0,0,0,25317,40,7,2000001176,2000001177,2000001178,0,0,0,0,0,''),
(2531702,13,0,0,0,0,0,0,2000001179,2000001180,2000001181,0,0,0,0,0,''),
(2531702,15,21,0,0,25317,40,7,0,0,0,0,0,0,0,0,'General Arlos - unactive'),
(2531702,16,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001170 AND 2000001181;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
-- 1st group
(2000001170,'Hmm....',0,0,0,0,NULL),
(2000001171,'This isn\'t easy.',0,0,0,0,NULL),
(2000001172,'Did that seem okay?',0,0,0,0,NULL),
(2000001173,'This is harder than it looks.',0,0,0,0,NULL),
(2000001174,'My arm is getting sore.',0,0,0,0,NULL),
(2000001175,'I think I\'m starting to get the hang of this.',0,0,0,0,NULL),
-- 2nd group
(2000001176,'Could you try to be a little quieter?',0,0,0,0,NULL),
(2000001177,'You aren\'t going to let me sleep are you?',0,0,0,0,NULL),
(2000001178,'Are you going to be doing this for much longer?',0,0,0,0,NULL),
-- 3rd group
(2000001179,'I\'m just nervous.  Sorry.',0,0,0,0,NULL),
(2000001180,'I just don\'t want to let anyone down.',0,0,0,0,NULL),
(2000001181,'I need to do something to keep myself busy.',0,0,0,0,NULL);
DELETE FROM dbscript_string_template WHERE id = 1;
INSERT INTO dbscript_string_template (id, string_id) VALUES
(1,2000001170),
(1,2000001171),
(1,2000001172),
(1,2000001173),
(1,2000001174), 
(1,2000001175);

-- Valiance Keep Defender
-- summoned only as guards
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 29617);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 29617);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 29617);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 29617);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 29617);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 29617)
OR master_guid IN (SELECT guid FROM creature WHERE id = 29617);
DELETE FROM creature WHERE id = 29617;

-- Generic Quest Trigger - LAB
-- Event with queue must be active... and never stops
UPDATE creature SET MovementType = 0, spawndist = 0 WHERE id = 24959;
UPDATE creature_template SET ExtraFlags = 4096 WHERE Entry = 24959;
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (107575);
DELETE FROM creature_movement WHERE id IN (107575);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(107575,1,2254.1,5196.36,11.4684,68000,2495901,1.09956);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2495901;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2495901,0,10,25220,900000,0,0,8,0,0,0,0,2254.1,5196.36,11.4684,1.09956,'summon - Civilian Recruit');

-- Civilian Recruit - 25220
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25220);
DELETE FROM creature_template_addon WHERE entry = 25220;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(25220,0,0,0,1,0,0,NULL);
UPDATE creature_template SET MovementType = 2, EquipmentTemplateId = 0 WHERE Entry = 25220; -- 209 after update
-- only summoned
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25220);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 25220);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 25220);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 25220);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 25220);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 25220)
OR master_guid IN (SELECT guid FROM creature WHERE id = 25220);
DELETE FROM creature WHERE id = 25220;
-- Waypoints req. for (Queues Event)
DELETE FROM creature_movement_template WHERE entry = 25220;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25220,1,2264.43,5221.31,11.2863,0,0,1.19719),
(25220,2,2277.76,5238.61,11.45096,66000,0,1.060269),
(25220,3,2279.22,5241.41,11.451,66000,0,1.09023),
(25220,4,2280.78,5244.11,11.3589,66000,0,1.04766),
(25220,5,2282.61,5245.73,11.3624,66000,0,0.721661),
(25220,6,2284.87,5246.3,11.4135,66000,0,0.243582),
(25220,7,2287.19,5245.96,11.451,66000,0,6.14486),
(25220,8,2289.29,5244.98,11.451,66000,0,5.84535),
(25220,9,2291.54,5244.03,11.451,66000,0,5.88465),
(25220,10,2293.74,5242.91,11.451,66000,0,5.80953),
(25220,11,2296.29,5241.84,11.9614,30000,2522001,5.90101),
-- here should be random (one of 2)
(25220,12,2297.44,5251.31,11.4063,0,0,2.41038),
(25220,13,2291.37,5253.46,11.3833,0,0,3.18714),
(25220,14,2285.17,5252.47,11.2478,0,0,3.05677),
(25220,15,2277.02,5253.94,11.2791,0,0,2.94131),
(25220,16,2269.68,5256.37,7.19952,0,0,2.81093),
(25220,17,2258.44,5260.29,7.35009,0,0,2.80701),
(25220,18,2251.61,5262.89,11.6723,0,0,2.80308),
(25220,19,2241.83,5266.48,11.6771,0,0,2.76381),
(25220,20,2234.71,5269.18,7.30359,0,0,2.79523),
(25220,21,2223.53,5273.53,7.15985,0,0,2.79523),
(25220,22,2215.63,5275.96,11.2733,0,0,2.73396),
(25220,23,2212.96,5276.88,10.8116,0,0,2.31692),
(25220,24,2212.53,5280.09,10.8108,0,0,1.21029),
(25220,25,2214.33,5289.49,10.5733,0,0,2.39075),
(25220,26,2212.29,5291.86,10.5433,0,0,2.84706),
(25220,27,2204.74,5294.06,16.5592,0,0,2.85806),
(25220,28,2197.4,5296.62,22.2663,0,0,2.90518),
(25220,29,2193.01,5296.41,22.0134,0,0,3.71257),
(25220,30,2188.47,5286.15,22.0588,0,0,3.77462),
(25220,31,2182.96,5285.64,22.0588,0,0,2.77952),
(25220,32,2177.94,5287.03,24.663,0,0,2.86198),
(25220,33,2161.55,5292.4,24.6657,0,0,2.83449),
(25220,34,2149.02,5296.79,23.7141,0,0,2.16062),
(25220,35,2148.03,5303.52,23.6338,0,0,1.66189),
(25220,36,2148.27,5307.96,23.6362,0,0,1.17259),
(25220,37,2151.04,5316.49,24.6605,0,0,2.25016),
(25220,38,2143.58,5320.95,24.6525,0,0,2.88946),
(25220,39,2131.54,5324.3,24.6414,0,0,2.66798),
(25220,40,2127.41,5329.35,24.6414,5000,1,2.1559);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2522001;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2522001,2,1,66,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2522001,3,31,25222,40,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2522001,4,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2522001,4,21,1,0,25222,40,7,0,0,0,0,0,0,0,0,'Recruitment Officer Carven - active'),
(2522001,6,1,66,0,25222,40,7,0,0,0,0,0,0,0,0,''),
(2522001,7,0,2,0,25222,40,7,0,0,0,0,0,0,0,0,'string_template_2'),
(2522001,12,0,3,0,0,0,0,0,0,0,0,0,0,0,0,'string_template_3'),
(2522001,16,0,4,0,25222,40,7,0,0,0,0,0,0,0,0,'string_template_4'),
(2522001,20,42,0,0,0,0,0,2178,143,0,0,0,0,0,0,'equip'),
(2522001,29,0,0,0,25222,40,7,2000001210,2000001211,2000001212,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001182 AND 2000001212;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
-- 1st group
 -- Req. Core support for more texts 
(2000001182,'Yes, then.  What is your trade?',0,0,0,0,NULL),
(2000001183,'State your profession.',0,0,0,0,NULL),
(2000001184,'Your profession?',0,0,0,0,NULL),
(2000001185,'Your previous line of work, recruit?',0,0,0,0,NULL),
(2000001186,'What did you do before you came to Northrend, then?',0,0,0,0,NULL),
-- 2nd group
(2000001187,'Carpenter.',0,0,0,0,NULL),
(2000001188,'Carpenter, sir.',0,0,0,0,NULL),
(2000001189,'Shipwright.',0,0,0,0,NULL),
(2000001190,'Shipwright, sir.',0,0,0,0,NULL),
(2000001191,'Farmhand, sir.',0,0,0,0,NULL),
(2000001192,'Farmhand, m\'lord.',0,0,0,0,NULL),
(2000001193,'Tailor.',0,0,0,0,NULL),
(2000001194,'Seamstress, m\'lord.',0,0,0,0,NULL),
(2000001195,'Blacksmith.',0,0,0,0,NULL),
(2000001196,'Mason, sir.',0,0,0,0,NULL),
(2000001197,'Miner.',0,0,0,0,NULL),
(2000001198,'Miner, sir.',0,0,0,0,NULL),
(2000001199,'Cook.',0,0,0,0,NULL),
(2000001200,'Cook, sir.',0,0,0,0,NULL),
-- 3rd group
(2000001201,'I thought we had enough in your line of work, but it looks like we have some openings. Report to the civilian liaison.',0,0,0,0,NULL),
(2000001202,'Yeah. We could use some more of you. Report to the civilian liaison for work assignment.',0,0,0,0,NULL),
(2000001203,'I do have some openings in your line of work. Report to the civilian liaison.',0,0,0,0,NULL),
(2000001204,'Yes, you\'re well seasoned in your field of work.  Report to the civilian liaison at once, we need more like you!',0,0,0,273,NULL),
-- here should be 2 diff templates
(2000001205,'Looks like we have room for one more... no, my mistake. That\'s a seven not a one. Hope you\'re good with a sword - report to the barracks.',0,0,0,0,NULL),
(2000001206,'Not anymore! Here\'s your sword. Report to the barracks for duty!',0,0,0,0,NULL),
(2000001207,'Afraid not, friend. Here\'s your sword and shield. Report to the Barracks for duty.',0,0,0,0,NULL),
(2000001208,'With a sword arm liek that? I\'m afraid we need you in the front lines, my friend. Report to the barracks..',0,0,0,0,NULL),
(2000001209,'You\'re breaking my heart - I\'ve quaotas to fill, you know? Can you wield a sword? Off to the barracks.',0,0,0,0,NULL),
-- 4th group
(2000001210,'Keep it moving, people.',0,0,0,22,NULL),
(2000001211,'Next, please!',0,0,0,0,NULL),
(2000001212,'Next!',0,0,0,0,NULL);
DELETE FROM dbscript_string_template WHERE id IN (2,3,4);
INSERT INTO dbscript_string_template (id, string_id) VALUES
(2,2000001182),
(2,2000001183),
(2,2000001184),
(2,2000001185),
(2,2000001186),
(3,2000001187),
(3,2000001188),
(3,2000001189),
(3,2000001190),
(3,2000001191),
(3,2000001192),
(3,2000001193),
(3,2000001194),
(3,2000001195),
(3,2000001196),
(3,2000001197),
(3,2000001198),
(3,2000001199),
(3,2000001200),
(4,2000001201),
(4,2000001202),
(4,2000001203),
(4,2000001204),
(4,2000001205),
(4,2000001206),
(4,2000001207),
(4,2000001208),
(4,2000001209);

-- Jimmy the Stable Boy
UPDATE creature_template SET MovementType = 2 WHERE Entry = 27364;
UPDATE creature SET MovementType = 2 WHERE id = 27364;
DELETE FROM creature_movement WHERE id = 117744;
DELETE FROM creature_movement_template WHERE entry = 27364;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(27364,1,2091.61,5301.87,19.4677,0,2736401,4.13643),
(27364,2,2091.11,5301.06,19.4516,0,0,4.05747),
(27364,3,2087.11,5290.05,19.4516,0,0,4.53119),
(27364,4,2086.31,5280.58,19.4483,0,0,4.62544),
(27364,5,2087.92,5272.59,19.448,0,0,5.23569),
(27364,6,2093.26,5265.88,19.4462,0,0,5.71321),
(27364,7,2104.6,5259.56,19.4462,0,0,5.87814),
(27364,8,2118.79,5253.58,19.4462,0,0,5.88207),
(27364,9,2134.79,5248.15,19.4462,0,0,5.96061),
(27364,10,2152.46,5241.14,19.5191,0,0,5.88992),
(27364,11,2159.68,5235.5,18.4571,0,0,5.7407),
(27364,12,2165.59,5232.99,15.8491,0,0,0.138065),
(27364,13,2191.89,5233.67,10.5728,0,0,0.597884),
(27364,14,2197.41,5240.1,10.5728,0,0,1.00629),
(27364,15,2203.8,5253.48,10.581,0,0,1.21442),
(27364,16,2206.82,5263.74,10.5728,0,0,1.28903),
(27364,17,2210.89,5273.13,10.8129,0,0,0.344986),
(27364,18,2215.06,5274,11.2639,0,0,6.03284),
(27364,19,2222.6,5271.96,7.19248,0,0,5.9543),
(27364,20,2234.43,5267.69,7.46807,0,0,5.90718),
(27364,21,2241.22,5265.27,11.703,0,0,5.87969),
(27364,22,2251.01,5261.52,11.7028,0,0,5.97394),
(27364,23,2257.73,5258.91,7.4477,0,0,5.91896),
(27364,24,2269.12,5255.03,7.1756,0,0,5.94252),
(27364,25,2276.1,5251.93,11.2358,0,0,5.64642),
(27364,26,2278.13,5247.01,11.2045,0,0,4.81548),
(27364,27,2277.53,5240.89,11.3316,0,0,4.40314),
(27364,28,2274.41,5234.78,11.4056,0,0,4.02223),
(27364,29,2265.85,5226.86,11.2477,0,0,4.08506),
(27364,30,2257.68,5210.39,11.301,0,0,4.65682),
(27364,31,2258.32,5206.57,11.3002,0,0,5.53411),
(27364,32,2261.31,5205.04,11.5632,14000,2736402,5.89146),
(27364,33,2258.62,5206.72,11.3092,0,0,2.16789),
(27364,34,2258.19,5210.74,11.2989,0,0,1.28117),
(27364,35,2265.73,5226.34,11.2466,0,0,0.88062),
(27364,36,2274.74,5234.61,11.4051,0,0,1.13587),
(27364,37,2279.59,5247.5,11.2107,0,0,1.22227),
(27364,38,2283.84,5258.93,11.2275,0,0,1.27332),
(27364,39,2286.94,5268.45,11.3838,0,0,0.902611),
(27364,40,2289.8,5271.68,11.4029,68000,2736403,0.821715),
(27364,41,2286.28,5260.14,11.3044,0,0,4.18715),
(27364,42,2278.92,5251.42,11.015,0,0,3.15737),
(27364,43,2276.68,5251.56,11.2689,0,0,2.7474),
(27364,44,2269.26,5254.75,7.29357,0,0,2.71991),
(27364,45,2258.09,5258.85,7.30656,0,0,2.81415),
(27364,46,2251.25,5261.44,11.6876,0,0,2.8063),
(27364,47,2241.51,5265.01,11.7097,0,0,2.77096),
(27364,48,2234.58,5267.66,7.5605,0,0,2.78667),
(27364,49,2223.18,5271.75,7.16154,0,0,2.85735),
(27364,50,2214.87,5274.01,11.2643,0,0,3.22099),
(27364,51,2210.09,5271.29,10.7771,0,0,3.87287),
(27364,52,2205.87,5260.15,10.5731,0,0,4.43207),
(27364,53,2202.13,5249.81,10.5736,0,0,4.27107),
(27364,54,2197.19,5239.83,10.5736,0,0,4.23965),
(27364,55,2193.35,5233.97,10.5736,0,0,3.41498),
(27364,56,2180.24,5232.96,10.8834,0,0,3.11653),
(27364,57,2166.16,5233.04,15.5511,0,0,3.14402),
(27364,58,2162.18,5234.08,17.5613,0,0,2.8063),
(27364,59,2157.91,5237.04,18.9979,0,0,2.49999),
(27364,60,2147.64,5243.04,19.4548,0,0,2.73954),
(27364,61,2135.56,5248.02,19.4465,0,0,2.81023),
(27364,62,2119.46,5253.23,19.4465,0,0,2.65472),
(27364,63,2105.06,5259.41,19.4465,0,0,2.71362),
(27364,64,2091.79,5266.1,19.4465,0,0,2.28951),
(27364,65,2087.54,5272.71,19.4465,0,0,1.96749),
(27364,66,2086.23,5277.2,19.4791,0,0,1.63213),
(27364,67,2086.75,5284.92,19.4496,0,0,1.45542),
(27364,68,2088.95,5298.34,19.4496,0,0,1.29441),
(27364,69,2092.43,5313.59,19.4496,20000,2736404,1.29834),
(27364,70,2091.53,5302.09,19.4496,0,0,4.51847);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2736401 AND 2736404;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2736401,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2736401,0,31,27365,40,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2736401,1,21,1,0,0,27365,40,7,0,0,0,0,0,0,0,0,'buddy: active'),
(2736402,3,31,27010,40,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2736402,4,21,1,0,0,27010,100,7,0,0,0,0,0,0,0,0,'buddy: active'),
(2736402,5,0,0,0,0,0,0,0,2000001213,0,0,0,0,0,0,0,''),
(2736402,9,0,0,0,0,27010,40,7,2000001214,2000001215,0,0,0,0,0,0,''),
(2736402,9,31,27365,40,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2736402,10,15,48478,0,0,27365,40,7,0,0,0,0,0,0,0,0,''),
(2736402,11,21,0,0,0,27010,100,7,0,0,0,0,0,0,0,0,'buddy: unactive'),
(2736402,12,0,0,0,0,0,0,0,2000001216,0,0,0,0,0,0,0,''),
(2736403,3,0,0,0,0,0,0,0,2000001217,0,0,0,0,0,0,0,''),
(2736403,14,0,0,0,0,0,0,0,2000001218,0,0,0,0,0,0,0,''),
(2736403,25,0,0,0,0,0,0,0,2000001219,0,0,0,0,0,0,0,''),
(2736403,35,0,0,0,0,0,0,0,2000001220,0,0,0,0,0,0,0,''),
(2736403,46,0,0,0,0,0,0,0,2000001221,0,0,0,0,0,0,0,''),
(2736403,57,0,0,0,0,0,0,0,2000001222,0,0,0,0,0,0,0,''),
(2736404,9,31,27365,40,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2736404,10,14,48478,0,0,27365,40,7,0,0,0,0,0,0,0,0,''),
(2736404,11,21,0,0,0,27365,40,7,0,0,0,0,0,0,0,0,'buddy: unactive'),
(2736404,12,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001213 AND 2000001222;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001213,'Sure is busy here Celidh.  Do you have any pets you want me to move to the stables?',0,0,0,0,NULL),
(2000001214,'All these folks are keeping me busy.  Take this horse over to your stables.',0,0,0,396,NULL),
(2000001215,'You\'re such a sweet lad.  Here, take this horse over to your stable.',0,0,0,396,NULL),
(2000001216,'Let\'s go boy.',0,0,0,0,NULL),
(2000001217,'See this statue, boy?  This is the king of Stormwind, Varian Wrynn.',0,0,0,0,NULL),
(2000001218,'His son, Anduin Wrynn, was the king for a while.  He\'s about my age too.  Can you imagine if I were the king?',0,0,0,0,NULL),
(2000001219,'People used to come up to me because they thought I was the king.  I guess we look alike...',0,0,0,0,NULL),
(2000001220,'If I were king, I\'d have a horse like you.  I\'d make sure you didn\'t get lost, and I bet you\'d make sure I never got lost.',0,0,0,0,NULL),
(2000001221,'We\'d be best friends.  I bet me and Anduin would also be best friends, too.  Friends are important.',0,0,0,0,NULL),
(2000001222,'I\'ll take you to some other horses.  You probably miss being around other horses.  They can be your friend too.',0,0,0,0,NULL);
-- Stabled Horse 
-- must follow Jimmy the Stable Boy
UPDATE creature SET position_x = 2091.48, position_y = 5303.63, position_z = 19.4516, orientation = 4.16585, spawndist = 0, MovementType = 0 WHERE guid = 117793;
-- Links
DELETE FROM creature_linking WHERE guid = 117793;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(117793, 117744, 512);

-- Footman Rob
UPDATE creature_template SET EquipmentTemplateId = 0, MovementType = 2 WHERE Entry = 25258; -- equip = 86 added by script
UPDATE creature SET orientation = 3.944005, spawndist = 0, MovementType = 2, spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE guid = 85221;
DELETE FROM creature_movement WHERE id = 85221;
DELETE FROM creature_movement_template WHERE entry = 25258;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25258,1,2280.15,5179.14,11.423,3000,2525801,3.944005),
(25258,2,2278.11,5177.59,11.3398,0,0,3.62253),
(25258,3,2273.87,5175.87,11.2102,0,0,3.14186),
(25258,4,2268.13,5176.89,11.1963,0,0,2.66434),
(25258,5,2261.81,5182.27,11.3248,0,0,2.22059),
(25258,6,2258.12,5187.09,11.5507,0,0,2.1499),
(25258,7,2256.11,5193.25,11.4267,0,0,1.34252),
(25258,8,2257.84,5197.79,11.4046,0,0,0.952172),
(25258,9,2262.88,5200.14,11.4016,0,2525802,5.91795),
(25258,10,2267.98,5197.84,11.3445,0,0,5.84491),
(25258,11,2274.09,5195.54,12.4908,0,0,0.528546),
(25258,12,2276.64,5198.8,12.4894,0,0,1.21263),
(25258,13,2279.84,5206.37,12.4944,61000,2525803,1.17571),
(25258,14,2277.21,5199.31,12.4897,0,0,4.31731),
(25258,15,2274.19,5195.77,12.4904,0,2525804,2.82898),
(25258,16,2268.17,5197.7,11.4398,0,0,2.72295),
(25258,17,2260.9,5201.44,11.4021,0,0,1.9831),
(25258,18,2258.86,5208.54,11.3048,0,0,1.40846),
(25258,19,2263.69,5218.65,11.242,5000,2525805,0.989844);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2525801 AND 2525805;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2525801,1,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2525801,2,31,27365,40,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2525801,2,21,1,0,0,25259,85222,7 | 0x10,0,0,0,0,0,0,0,0,'buddy: active'),
(2525801,2,21,1,0,0,25261,85226,7 | 0x10,0,0,0,0,0,0,0,0,'buddy: active'),
(2525802,1,0,0,0,0,0,0,0,2000001223,0,0,0,0,0,0,0,''),
(2525802,3,31,25259,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2525802,4,0,0,0,0,25259,100,7,2000001224,0,0,0,0,0,0,0,''),
(2525803,1,0,0,0,0,0,0,0,2000001225,0,0,0,0,0,0,0,''),
(2525803,1,31,25245,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2525803,2,21,1,0,0,25245,110613,7 | 0x10,0,0,0,0,0,0,0,0,'buddy: active'),
(2525803,8,0,0,0,0,25245,110613,7 | 0x10,2000001226,0,0,0,0,0,0,0,''),
(2525803,15,0,0,0,0,0,0,0,2000001227,0,0,0,0,0,0,0,''),
(2525803,21,0,0,0,0,25245,110613,7 | 0x10,2000001228,0,0,0,0,0,0,0,''),
(2525803,23,1,397,0,0,25245,110613,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2525805,25,21,0,0,0,25245,110613,7 | 0x10,0,0,0,0,0,0,0,0,'buddy: unactive'),
(2525803,30,42,0,0,0,0,0,0,2703,0,0,0,0,0,0,0,'equip'),
(2525803,30,42,0,0,0,25259,85222,7 | 0x10,2703,0,0,0,0,0,0,0,'equip'),
(2525803,30,42,0,0,0,25261,85226,7 | 0x10,2703,0,0,0,0,0,0,0,'equip'),
(2525803,31,1,423,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2525803,32,1,423,0,0,25259,85222,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2525803,33,1,423,0,0,25261,85226,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2525803,58,3,0,0,0,0,0,0,0,0,0,0,0,0,0,4.433136,''),
(2525803,58,0,0,0,0,0,0,0,2000001229,0,0,0,0,0,0,0,''),
(2525803,58,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2525803,58,1,0,0,0,25259,85222,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2525803,58,1,0,0,0,25261,85226,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2525803,59,42,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset - equip'),
(2525803,59,42,1,0,0,25259,85222,7 | 0x10,0,0,0,0,0,0,0,0,'reset - equip'),
(2525803,59,42,1,0,0,25261,85226,7 | 0x10,0,0,0,0,0,0,0,0,'reset - equip'),
(2525804,0,31,25261,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(2525804,1,0,0,0,0,25261,85226,7 | 0x10,2000001230,0,0,0,0,0,0,0,''),
(2525804,5,1,11,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2525804,5,1,11,0,0,25259,85222,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2525804,5,1,11,0,0,25261,85226,7 | 0x10,0,0,0,0,0,0,0,0,''),
(2525804,7,1,274,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2525804,7,10,25260,60000,0,0,0,0x08,1,0,0,0,2281.076,5180.165,11.3939,3.386461,'summon'),
(2525805,0,21,0,0,0,25259,85222,7 | 0x10,0,0,0,0,0,0,0,0,'buddy: unactive'),
(2525805,0,21,0,0,0,25261,85226,7 | 0x10,0,0,0,0,0,0,0,0,'buddy: unactive'),
(2525805,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'active'),
(2525805,2,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'desp');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001223 AND 2000001231;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000001223,'One last drink before we head to the front?',0,0,0,1,NULL),
(2000001224,'Sure, why not?',0,0,0,6,NULL),
(2000001225,'Barkeep!  Bring out your strongest ale.  We\'re off to the front.',0,0,0,1,NULL),
(2000001226,'You lads know the drill.  No alcohol to servicemen on duty.  You want the general to kill me himself?',0,0,0,274,NULL),
(2000001227,'You\'ll surely make an exception for us, eh?  We might not come back.',0,0,0,1,NULL),
(2000001228,'All right, all right... but you didn\'t get these from me!',0,0,0,6,NULL),
(2000001229,'I guess that\'s it then.  Off we go.',0,0,0,1,NULL),
(2000001230,'That was the worst beer I\'ve ever had.',0,0,0,1,NULL),
(2000001231,'Hey, guys!  Wait up!',0,0,0,1,NULL);
-- Links
DELETE FROM creature_linking WHERE guid IN (85226,85222);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(85226, 85221, 128+512+8192),
(85222, 85221, 128+512+8192);
-- Footman George & Footman Chuck
UPDATE creature_template SET EquipmentTemplateId = 0, MovementType = 0 WHERE Entry IN (25259,25261); -- equip = 86 added by script
UPDATE creature SET spawndist = 0, MovementType = 0, spawntimesecsmin = 300, spawntimesecsmax = 300 WHERE id IN (25259,25261);

-- Footman Mitch
UPDATE creature_template SET MovementType = 2 WHERE Entry = 25260;
DELETE FROM creature_movement_template WHERE entry = 25260;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25260,1,2278.11,5177.59,11.3398,0,0,3.62253),
(25260,2,2273.87,5175.87,11.2102,0,0,3.14186),
(25260,3,2268.13,5176.89,11.1963,0,0,2.66434),
(25260,4,2261.81,5182.27,11.3248,0,0,2.22059),
(25260,5,2258.12,5187.09,11.5507,0,0,2.1499),
(25260,6,2256.11,5193.25,11.4267,0,2526001,1.34252),
(25260,7,2258.39,5208.11,11.2974,0,0,1.23763),
(25260,8,2263.82,5218.5,11.2415,2000,1,1.0884);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2526001;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2526001,1,0,0,0,0,0,0,0,2000001231,0,0,0,0,0,0,0,'');

-- Valiance Keep Fisherman
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27393);
DELETE FROM creature_template_addon WHERE entry = 27393;
INSERT INTO creature_template_addon (entry,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(27393,0,2,1,1,0,0,NULL);
-- individual
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(95647,0,2,1,1,379,0,NULL);
-- #95647
UPDATE creature SET position_x = 2278.967041, position_y = 5118.159180, position_z = 0.151983, orientation = 4.921828 WHERE guid = 95647;
-- #95781
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 95781;
DELETE FROM creature_movement WHERE id = 95781;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(95781,1,2332.92,5127.87,0.938918,0,0,2.08557),
(95781,2,2329.91,5129.75,0.378631,0,0,3.36263),
(95781,3,2326.22,5127.95,0.267418,0,0,3.61238),
(95781,4,2324.03,5125.75,0.237646,41000,2739301,3.950862),
(95781,5,2326.07,5127.99,0.263492,0,0,0.688344),
(95781,6,2329.82,5129.69,0.350019,0,0,0.0183992),
(95781,7,2332.65,5128.33,0.873553,0,0,5.37924),
(95781,8,2333.53,5124.3,1.17886,0,0,4.53931),
(95781,9,2331.53,5120.17,2.73613,0,0,4.11517),
(95781,10,2330.46,5117.9,3.07984,42000,2739302,4.625123);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2739301,2739302);
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
(2739301,3,1,379,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2739301,38,1,379,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2739302,3,1,379,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2739302,26,1,379,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2739302,31,42,0,0,0,0,0,0,2704,0,0,0,0,0,0,0,'equip'),
(2739302,32,1,92,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2739302,37,1,92,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2739302,41,42,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'reset - equip');
