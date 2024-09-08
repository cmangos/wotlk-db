-- Icecrown - under the Dome - missing npcs and objects

-- Creatures
-- duplicate
DELETE FROM creature_addon WHERE guid IN (530743,530744);
DELETE FROM creature_movement WHERE id IN (530743,530744);
DELETE FROM game_event_creature WHERE guid IN (530743,530744);
DELETE FROM game_event_creature_data WHERE guid IN (530743,530744);
DELETE FROM creature_battleground WHERE guid IN (530743,530744);
DELETE FROM creature_linking WHERE guid IN (530743,530744);
DELETE FROM creature where guid IN (530743,530744);
-- missing creatures added 
DELETE FROM creature_addon WHERE guid BETWEEN 530011 AND 530028;
DELETE FROM creature_movement WHERE id BETWEEN 530011 AND 530028;
DELETE FROM game_event_creature WHERE guid BETWEEN 530011 AND 530028;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 530011 AND 530028;
DELETE FROM creature_battleground WHERE guid BETWEEN 530011 AND 530028;
DELETE FROM creature_linking WHERE guid BETWEEN 530011 AND 530028;
DELETE FROM creature where guid BETWEEN 530011 AND 530028;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
-- Kor'kron Reaver 30755
(530011,30755,571,1,1,7876.1978,2052.4084,600.3428,3.787,300,300,0,0),
(530012,30755,571,1,1,7884.729,2042.477,600.3425,4.171,300,300,0,0),
(530013,30755,571,1,1,7873.443,2062.4526,600.3425,2.84488,300,300,0,0),
(530014,30755,571,1,1,7904.836,2054.7373,600.3429,5.8643,300,300,0,0),
-- Rizzy Ratchwiggle 31839
(530015,31839,571,1,1,7892.5713,2058.1106,600.3428,0.628318,300,300,0,0),
-- Fringe Engineer Tezzla 32430
(530016,32430,571,1,1,7885.2563,2058.023,600.3427,3.351032,300,300,0,0),
-- Horde Infra-green Engineer 32529
(530017,32529,571,1,1,7887.2744,2056.1135,600.3427,1.1519,300,300,0,0),
-- Horde Infra-green Bomber, Parked 32528 
(530018,32528,571,1,1,7896.233,2065.2153,600.34283,0.733038,300,300,0,0),
-- Skybreaker Marine 30352
(530019,30352,571,1,1,7640.947,2066.576,600.3427,0.296706,300,300,0,0),
(530020,30352,571,1,1,7642.397,2065.035,600.3427,1.117011,300,300,0,0),
(530021,30352,571,1,1,7623.698,2045.048,600.5334,4.45059,300,300,0,0),
-- Kibli Killohertz 32444
(530022,32444,571,1,1,7632.007,2060.202,600.3427,6.161012,300,300,0,0),
-- Willy Maybe 32524
(530023,32524,571,1,1,7635.958,2048.406,600.3425,5.061455,300,300,0,0),
-- Johnny Yes 32523
(530024,32523,571,1,1,7634.357,2045.982,600.3427,0.06981317,300,300,0,0),
-- Karen No 31648
(530025,31648,571,1,1,7624.706,2059.861,600.3425,3.368485,300,300,0,0),
-- Alliance Infra-green Bomber, Parked 32525
(530026,32525,571,1,1,7620.44,2067.247,600.3428,2.216568,300,300,0,0),
-- Alliance Bomber Pilot 32274
(530027,32274,571,1,1,7622.745,2069.923,600.3428,3.909538,300,300,0,0),
-- Alliance Infra-green Engineer 32526
(530028,32526,571,1,1,7630.336,2058.154,600.3427,2.426008,300,300,0,0);
-- Updates
-- Skybreaker Marine 30352
-- individual addons
DELETE FROM creature_addon WHERE guid BETWEEN 530019 AND 530020;
INSERT INTO creature_addon (guid,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(530019,0,0,1,0,0,0,59660),
(530020,0,0,1,0,0,0,59660),
(530021,0,0,1,0,0,0,59660),
(530022,0,0,1,0,0,0,59660);
-- Kor'kron Reaver 30755
-- individual addons
DELETE FROM creature_addon WHERE guid BETWEEN 530011 AND 530014;
INSERT INTO creature_addon (guid,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(530011,0,0,1,0,0,0,59660),
(530012,0,0,1,0,0,0,59660),
(530013,0,0,1,0,0,0,59660),
(530014,0,0,1,0,0,0,59660);
-- Rizzy Ratchwiggle 31839
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Faction = 714, UnitFlags = 0, NpcFlags = 1, Expansion = 2, GossipMenuId = 10132 WHERE entry IN (31839);
DELETE FROM creature_template_addon WHERE entry = 31839;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, auras) VALUES
(31839,0,0,1,0,0,59660);
DELETE FROM `gossip_menu` WHERE `entry` IN (10132);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10132, 14067, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14067);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14067,1,32443);
DELETE FROM npc_text WHERE id IN (14067);
DELETE FROM `gossip_menu_option` WHERE menu_id=10132;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(10132,0,0,'Give me a bomber!',32344,1,1,-1,0,1013201,0,0,'',0,20737),
(10132,1,0,'Give me a bomber!',32344,1,1,-1,0,1013201,0,0,'',0,20738);
DELETE FROM dbscripts_on_gossip WHERE id IN (1013201);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1013201,0,15,59779,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 59779 on Player');
DELETE FROM conditions WHERE condition_entry BETWEEN 20735 AND 20738;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20735,9,13373,0,0,0,0,''),
(20736,9,13406,0,0,0,0,''),
(20737,-2,20736,20735,0,0,0,''),
(20738,9,13376,0,0,0,0,'');
-- Fringe Engineer Tezzla 32430
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Faction = 714, UnitFlags = 0, Expansion = 2, NpcFlags = 2 WHERE entry IN (32430);
DELETE FROM creature_template_addon WHERE entry = 32430;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, auras) VALUES
(32430,0,0,1,0,0,59660);
DELETE FROM questgiver_greeting WHERE Entry = 32430;
INSERT INTO questgiver_greeting (Entry,Type,Text,EmoteId,EmoteDelay) VALUES
(32430,0,'I\'m glad you\'re here!  We have new orders for you.',0,0);
-- Horde Infra-green Engineer 32529
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Faction = 1735, Expansion = 2 WHERE entry IN (32529);
DELETE FROM creature_template_addon WHERE entry = 32529;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, auras) VALUES
(32529,0,0,1,0,0,59660);
-- Horde Infra-green Bomber, Parked 32528 
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Faction = 714, UnitFlags = 33555200, Expansion = 2 WHERE entry IN (32528);
DELETE FROM creature_template_addon WHERE entry = 32528;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, auras) VALUES
(32528,0,0,1,0,0,59660);
-- Kibli Killohertz 32444
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Faction = 534, Expansion = 2 WHERE entry IN (32444);
DELETE FROM creature_template_addon WHERE entry = 32444;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, auras) VALUES
(32444,0,0,1,0,0,59660);
DELETE FROM questgiver_greeting WHERE Entry = 32444;
INSERT INTO questgiver_greeting (Entry,Type,Text,EmoteId,EmoteDelay) VALUES
(32444,0,'You have fresh orders, $N.  Get ready!',0,0);
-- Willy Maybe 32524
UPDATE creature_template SET Expansion = 2 WHERE entry IN (32524);
DELETE FROM creature_template_addon WHERE entry = 32524;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, auras) VALUES
(32524,0,0,1,0,0,59660);
-- Johnny Yes 32523
UPDATE creature_template SET Expansion = 2 WHERE entry IN (32523);
DELETE FROM creature_template_addon WHERE entry = 32523;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, auras) VALUES
(32523,0,0,1,0,0,59660);
-- Karen No 31648
UPDATE creature_template SET Expansion = 2 WHERE entry IN (31648);
DELETE FROM creature_template_addon WHERE entry = 31648;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, auras) VALUES
(31648,0,0,1,0,0,59660);
DELETE FROM `gossip_menu_option` WHERE menu_id=10119;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(10119,0,0,'Give me a bomber!',32344,1,1,-1,0,1011901,0,0,'',0,20751),
(10119,1,0,'Give me a bomber!',32344,1,1,-1,0,1011901,0,0,'',0,20752);
DELETE FROM dbscripts_on_gossip WHERE id IN (1011901);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1011901,0,15,59779,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 59779 on Player');
DELETE FROM conditions WHERE condition_entry BETWEEN 20749 AND 20752;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20749,9,13380,0,0,0,0,''),
(20750,9,13404,0,0,0,0,''),
(20751,-2,20750,20749,0,0,0,''),
(20752,9,13382,0,0,0,0,'');
-- Alliance Infra-green Bomber, Parked 32525
UPDATE creature_template SET Expansion = 2 WHERE entry IN (32525);
DELETE FROM creature_template_addon WHERE entry = 32525;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, auras) VALUES
(32525,0,0,1,0,0,59660);
-- Alliance Bomber Pilot 32274
UPDATE creature_template SET Expansion = 2 WHERE entry IN (32274);
DELETE FROM creature_template_addon WHERE entry = 32274;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, auras) VALUES
(32274,0,0,1,0,0,59660);
-- Alliance Infra-green Engineer 32526
UPDATE creature_template SET Expansion = 2 WHERE entry IN (32526);
DELETE FROM creature_template_addon WHERE entry = 32526;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, auras) VALUES
(32526,0,0,1,0,0,59660);
UPDATE creature SET phaseMask = 5 WHERE guid IN (530741,530742);
-- OBJECTS
-- missing objects added
DELETE FROM game_event_gameobject WHERE guid BETWEEN 521057 AND 521122;
DELETE FROM gameobject_battleground WHERE guid BETWEEN 521057 AND 521122;
DELETE FROM gameobject WHERE guid BETWEEN 521057 AND 521122;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
-- Doodad_gnometable07 193663
(521057,193663,571,1,4,7874.317,2050.856,600.2256,0.5585039,0,0,0.27563667,0.96126187,300,300),
-- Doodad_gunshopbomb25 193664
(521058,193664,571,1,4,7874.0024,2050.7852,601.44836,4.6425757,-0.078620434,-0.12896252,-0.71886635,0.6785416,300,300),
-- Doodad_gunshopbomb26 193665
(521059,193665,571,1,4,7874.3037,2050.9915,601.44684,5.323256,0.044202805,0.1823864,-0.44612217,0.87507504,300,300),
-- Doodad_gunshopbomb27 193666
(521060,193666,571,1,4,7874.2144,2051.3782,601.4003,5.759587,0.030743122,0.030928612,-0.25936604,0.96479404,300,300),
-- Doodad_gunshopmortarshell06 193667
(521061,193667,571,1,4,7874.936,2051.4756,601.4409,2.574359,0,0,0.9600496,0.27982977,300,300),
-- Doodad_g_gnometerminal02 193668
(521062,193668,571,1,4,7886.5635,2057.9766,600.1343,3.1590624,0,0,-0.99996185,0.008734641,300,300),
-- Doodad_thronerailing08 193669
(521063,193669,571,1,4,7877.6714,2048.3418,600.6258,5.4890604,0,0,-0.38671112,0.9222009,300,300),
-- Doodad_g_hologrambasetanaris02 193674
(521064,193674,571,1,4,7888.547,2057.973,598.50287,3.001947,0,0,0.99756336,0.06976615,300,300),
-- Doodad_battlefieldbanneralliancestatusbar2min02 193675
(521065,193675,571,1,4,7888.547,2057.973,599.60095,1.4748014,0,0,0.67236614,0.74021876,300,300),
-- Doodad_thronerailing10 193676
(521066,193676,571,1,4,7888.2715,2058.0664,600.4638,1.579522,0,0,0.71018505,0.704015,300,300),
-- Doodad_vr_bm_wood_02 193678
(521067,193678,571,1,4,7891.4546,2058.0088,600.8653,0.011531894,0,0,0.005765915,0.9999834,300,300),
-- Doodad_orcspear01 193683
(521068,193683,571,1,4,7875.3193,2053.1614,600.2494,1.2784581,0.21291399,-0.322443,0.5430031,0.7455507,300,300),
-- Doodad_orcsleepmat03 193686
(521069,193686,571,1,4,7878.867,2049.2502,600.313,0.75534135,0,0,0.3687563,0.9295261,300,300),
-- Doodad_orccrate04 193688
(521070,193688,571,1,4,7881.2505,2043.9551,600.2494,1.4564744,0,0,0.665555,0.7463488,300,300),
-- Doodad_orccrate05 193689
(521071,193689,571,1,4,7879.4175,2044.9934,600.2494,0.21991003,0,0,0.10973358,0.99396104,300,300),
-- Doodad_orccrate06 193690
(521072,193690,571,1,4,7881.209,2043.9762,600.2494,0.30455664,0,0,0.15169048,0.98842806,300,300),
-- Doodad_battlefieldbannerhorde_static_wall02 193691
(521073,193691,571,1,4,7891.2144,2057.9749,604.2218,3.124123,0,0,0.99996185,0.008734641,300,300),
-- Doodad_shield_pvphorde01 193692
(521074,193692,571,1,4,7882.8623,2043.8251,600.733,4.665525,0.18740654,-0.3176689,-0.64971733,0.6647049,300,300),
-- Doodad_orccrate07 193694
(521075,193694,571,1,4,7886.496,2059.9087,600.2627,5.4520626,0,0,-0.4037037,0.9148898,300,300),
-- Doodad_orcaxe01 193695
(521076,193695,571,1,4,7885.5894,2059.1902,600.76807,2.33738,0.24876451,0.37660313,0.83621407,0.3115001,300,300),
-- Doodad_crate03 193637
(521077,193637,571,1,4,7902.4805,2048.7173,600.2123,5.166174,0,0,-0.5299196,0.8480479,300,300),
-- Doodad_gunshopdynamitebundle07 193638
(521078,193638,571,1,4,7902.051,2048.4133,600.2374,4.5815344,-0.28159475,0.6540022,0.2709608,0.64773893,300,300),
-- Doodad_gunshopdynamitebundle08 193639
(521079,193638,571,1,4,7903.222,2050.0488,599.9864,0.043632153,0,0,0.021814346,0.99976206,300,300),
-- Doodad_crate04 193641
(521080,193641,571,1,4,7903.397,2050.4587,600.1248,3.1940022,0,0,-0.9996567,0.026201647,300,300),
-- Doodad_gunshopbomb19 193642
(521081,193642,571,1,4,7903.505,2050.602,600.2601,3.6826503,0,0,-0.9636297,0.267241,300,300),
-- Doodad_gunshopbomb20 193643
(521082,193643,571,1,4,7903.252,2050.3723,599.96185,1.9722198,0,0,0.8338852,0.55193794,300,300),
-- Doodad_gunshopbomb21 193644
(521083,193644,571,1,4,7903.282,2050.5789,600.29,3.508117,0,0,-0.98325443,0.18223801,300,300),
-- Doodad_gunshopbomb22 193645
(521084,193645,571,1,4,7903.219,2050.8167,600.1093,1.2566359,0,0,0.58778477,0.80901736,300,300),
-- Doodad_thronerailing06 193652
(521085,193652,571,1,4,7877.745,2068.1926,600.6509,3.892087,0,0,-0.93041706,0.3665025,300,300),
-- Doodad_gunshopbomb23 193655
(521086,193655,571,1,4,7880.444,2070.8826,601.27783,6.152286,0,0,-0.065402985,0.99785894,300,300),
-- Doodad_gnomestructuralspotlight07 193657
(521087,193657,571,1,4,7871.2886,2058.1099,601.0909,1.5010151,0.73134184,0.68199825,0.0040512085,0.0010358009,300,300),
-- Doodad_gnomehazardlightred13 193658
(521088,193658,571,1,4,7871.3643,2059.1042,600.2241,2.1031199,0,0,0.8681984,0.49621725,300,300),
-- Doodad_gnomehazardlightred14 193659
(521089,193659,571,1,4,7871.316,2057.0652,600.22205,0.70685625,0,0,0.34611607,0.9381917,300,300),
-- Doodad_gnomehazardlightred15 193660
(521090,193660,571,1,4,7887.274,2041.2441,600.2173,3.7262802,0,0,-0.957571,0.28819734,300,300),
-- Doodad_gnomestructuralspotlight08 193661
(521091,193661,571,1,4,7888.273,2041.2213,601.08496,3.1241715,-0.008718967,-0.99995327,-0.0032873154,0.0025837414,300,300),
-- Doodad_gnomehazardlightred16 193662
(521092,193662,571,1,4,7889.313,2041.3024,600.2168,2.3300126,0,0,0.9187908,0.39474475,300,300),
-- Doodad_thronerailing09 193670
(521093,193670,571,1,4,7898.925,2047.8027,600.5252,0.7504887,0,0,0.3664999,0.9304181,300,300),
-- Doodad_gnometable08 193671
(521094,193671,571,1,4,7896.2007,2044.228,600.18604,2.1118479,0,0,0.8703556,0.4924237,300,300),
-- Doodad_gunshopmortarshell07 193672
(521095,193672,571,1,4,7895.5913,2044.8579,601.4026,4.1277075,0,0,-0.8808899,0.47332123,300,300),
-- Doodad_gunshopmortarshell08 193673
(521096,193673,571,1,4,7895.861,2043.882,601.3877,3.2986872,0,0,-0.9969168,0.07846643,300,300),
-- Doodad_battlefieldbannerhorde_static_wall01 193677
(521097,193677,571,1,4,7891.6523,2058.013,604.25195,6.2657332,0,0,-0.00872612,0.9999619,300,300),
-- Doodad_orcsleepmat02 193685
(521098,193685,571,1,4,7897.3955,2049.2532,600.3131,5.459004,0,0,-0.40052605,0.91628534,300,300),
-- Doodad_orcsleepmat04 193687
(521099,193687,571,1,4,7878.8286,2066.621,600.3132,5.4328246,0,0,-0.41248512,0.91096437,300,300),
-- 193630
(521100,193630,571,1,4,7905.685,2057.9316,601.06793,4.6164303,0.6723666,-0.74020576,-0.00074100494,0.00424973,300,300),
-- 193631
(521101,193631,571,1,4,7905.7085,2056.7156,600.19934,5.2185335,0,0,-0.5075388,0.8616289,300,300),
-- 193632
(521102,193632,571,1,4,7905.8105,2058.7527,600.19934,3.8222728,0,0,-0.94264126,0.33380756,300,300),
-- 193633
(521103,193633,571,1,4,7902.375,2065.6968,600.09717,3.900813,0,0,-0.92880917,0.3705584,300,300),
-- 193634
(521104,193634,571,1,4,7902.3047,2066.4934,601.30286,3.7088265,0,0,-0.9600496,0.27982977,300,300),
-- 193635
(521105,193635,571,1,4,7902.6494,2066.373,601.30133,4.389506,-0.076500416,-0.06483269,-0.8070173,0.58195144,300,300),
-- 193636
(521106,193636,571,1,4,7902.5513,2066.075,601.3013,3.5081136,-0.08671522,0.033976555,-0.9796858,0.17760018,300,300),
-- 193640
(521107,193640,571,1,4,7903.5327,2050.1968,600.0976,0.17796986,0.18321753,0.09848404,0.07097721,0.9755483,300,300),
-- 193646
(521108,193646,571,1,4,7904.5176,2052.5452,600.2119,6.0650196,0,0,-0.10886669,0.99405634,300,300),
-- 193647
(521109,193647,571,1,4,7903.685,2052.069,600.2164,0.6806767,0,0,0.33380604,0.9426418,300,300),
-- 193648
(521110,193648,571,1,4,7904.351,2051.5837,600.2261,5.67232,0,0,-0.3007059,0.95371693,300,300),
-- 193649
(521111,193649,571,1,4,7888.68,2074.8247,601.0507,6.239587,0.9997535,-0.021805763,0.002421379,0.0034179688,300,300),
-- 193650
(521112,193650,571,1,4,7889.6772,2074.7761,600.185,0.5585039,0,0,0.27563667,0.96126187,300,300),
-- 193651
(521113,193651,571,1,4,7887.637,2074.771,600.1868,5.44543,0,0,-0.40673542,0.913546,300,300),
-- 193653
(521114,193653,571,1,4,7899.4155,2068.038,600.6394,2.3387396,0,0,0.92050457,0.3907318,300,300),
-- 193654
(521115,193654,571,1,4,7880.6694,2071.8613,600.0987,5.2359877,0,0,-0.5,0.8660254,300,300),
-- 193656
(521116,193656,571,1,4,7880.8057,2071.8696,601.3186,3.7175531,0.16190434,0.09489918,-0.93937874,0.28696463,300,300),
-- 193679
(521117,193679,571,1,4,7893.049,2071.6226,600.3655,3.8131616,-0.6907306,-0.15002155,-0.69123363,0.1502693,300,300),
-- 193680
(521118,193680,571,1,4,7893.279,2073.2085,600.24976,0.2809967,0,0,0.14003658,0.99014634,300,300),
-- 193681
(521119,193681,571,1,4,7895.171,2072.2844,600.24695,1.5175608,0,0,0.6880369,0.7256757,300,300),
-- 193682
(521120,193682,571,1,4,7895.129,2072.303,601.9929,0.3656447,0,0,0.18180561,0.9833345,300,300),
-- 193684
(521121,193684,571,1,4,7898.147,2066.4172,600.3133,0.75534135,0,0,0.3687563,0.9295261,300,300),
-- 193693
(521122,193693,571,1,4,7892.459,2073.5251,601.7738,5.521907,-0.6721449,0.21199799,-0.31161308,0.6373189,300,300);
UPDATE gameobject SET phaseMask = 4 WHERE guid IN (
502075,502074,502183,502086,502068,502070,502069,502034,502035,502033,502449,502032,502030,502029,502023,501877,502028,501875,501876,502043,502036,501873,501872,
501873,501874,501868,502031,501869,501864,501867,501866,501865,501870,502450,501861,501862,501871,501859,501863,501860,502047,502048,502049,502063,502064,502065,
502066,502067,502060,502061,502062,502059,502053,502058,502071,502072,502073,502078,502181,502136,502077,502330,509020,502218,502320,502184,502329,502439,502076,
502042,502323,502327,502328,502182,509417,509418,509018,509019);
-- Scripts
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20962 AND 20965;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 20962
(20962,0,10,31817,60000,0,0,0,0x04,0,0,0,80,0,0,0,0,'Part of Cloak Dome Bunny, Large 32298 EAI: summon 31817'), -- should be done by s.59693
-- 20963
(20963,0,10,31817,60000,0,0,0,0x04,0,0,0,81,0,0,0,0,'Part of Cloak Dome Bunny, Large 32298 EAI: summon 31817'), -- should be done by s.59693
-- 20964
(20964,0,31,32430,16,0,0,0,2|0x08,0,0,0,0,0,0,0,0,'Part of See Inviso Bunny 31817 EAI: search for 32430 terminate if found'),
(20964,0,31,32444,16,0,0,0,2|0x08,0,0,0,0,0,0,0,0,'Part of See Inviso Bunny 31817 EAI: search for 32444 terminate if found'),
(20964,20,15,59704,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of See Inviso Bunny 31817 EAI: cast 59704'),
(20964,21,14,61358,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of See Inviso Bunny 31817 EAI: remove 61358'),
-- 20965
(20965,100,40,0,0,0,193795,502585,7|0x400,0,0,0,0,0,0,0,0,'Part of Fringe Engineer Tezzla 32430 EAI: despawn goobject'), -- H
-- 20966
(20966,101,40,0,0,0,193796,502586,7|0x400,0,0,0,0,0,0,0,0,'Part of Kibli Killohertz 32444 EAI: despawn goobject'); -- A
DELETE FROM spell_script_target WHERE entry IN (59704);
INSERT INTO spell_script_target VALUES
(59704, 1, 30755, 0),(59704, 1, 32430, 0),(59704, 1, 32529, 0),(59704, 1, 31839, 0),(59704, 1, 32528, 0), -- H
(59704, 1, 32444, 0),(59704, 1, 30352, 0),(59704, 1, 32524, 0),(59704, 1, 32523, 0),(59704, 1, 31648, 0), -- A
(59704, 1, 32525, 0),(59704, 1, 32274, 0),(59704, 1, 32526, 0),(59704, 1, 31817, 0),(59704, 1, 32298, 0);
