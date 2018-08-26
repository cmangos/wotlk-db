
-- *** Wintergrasp ***

SET @conditionId=1516;
DELETE FROM conditions WHERE condition_entry BETWEEN @conditionId AND @conditionId+5;
INSERT INTO conditions(condition_entry,type,value1,value2,comments) VALUES
(@conditionId,38,4197,2,'Wintergrasp - Check battle in progress');


-- gossip scripts
-- horde
UPDATE gossip_menu_option SET action_script_id=990401 WHERE menu_id=9904 AND id=0; -- catapult
UPDATE gossip_menu_option SET action_script_id=990402 WHERE menu_id=9904 AND id=1; -- demolisher
UPDATE gossip_menu_option SET action_script_id=990403 WHERE menu_id=9904 AND id=2; -- siege engine
-- alliance
UPDATE gossip_menu_option SET action_script_id=992301 WHERE menu_id=9923 AND id=0; -- catapult
UPDATE gossip_menu_option SET action_script_id=992302 WHERE menu_id=9923 AND id=1; -- demolisher
UPDATE gossip_menu_option SET action_script_id=992303 WHERE menu_id=9923 AND id=2; -- siege engine

-- action scripts
DELETE FROM dbscripts_on_gossip WHERE id IN (990401,990402,990403,992301,992302,992303);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, comments) VALUES
-- horde
(990401, 0, 15, 56664, 1, 0, 0, 0, 0, 'cast Build Catapult (Force)'),
(990402, 0, 15, 56659, 1, 0, 0, 0, 0, 'cast Build Demolisher (Force)'),
(990403, 0, 15, 61409, 1, 0, 0, 0, 0, 'cast Build Siege Vehicle (Force)'),
-- alliance
(992301, 0, 15, 56664, 1, 0, 0, 0, 0, 'cast Build Catapult (Force)'),
(992302, 0, 15, 56659, 1, 0, 0, 0, 0, 'cast Build Demolisher (Force)'),
(992303, 0, 15, 56662, 1, 0, 0, 0, 0, 'cast Build Siege Vehicle (Force)');

-- script target for vehicle summon
DELETE FROM spell_script_target WHERE entry IN (56575,56661,56663,56665,56667,56669);
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES
(56575, 1, 23472),
(56661, 1, 23472),
(56663, 1, 23472),
(56665, 1, 23472),
(56667, 1, 23472),
(56669, 1, 23472);

-- npc spell click spells
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (28366,27838,27883);
INSERT INTO npc_spellclick_spells (npc_entry,spell_id,quest_start,quest_start_active,quest_end,cast_flags,condition_id) VALUES
(28366,60968,0,0,0,1,@conditionId),
(27838,60968,0,0,0,1,@conditionId),
(27883,60968,0,0,0,1,@conditionId);
-- Update condition to make sure that they are available only when encounter is in progress
UPDATE npc_spellclick_spells SET condition_id=@conditionId WHERE npc_entry IN (27850,27881,28312,28094);
-- update cast flag
UPDATE npc_spellclick_spells SET cast_flags=1 WHERE npc_entry IN (27850);
-- missing RP-GG spell
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (30560);
INSERT INTO npc_spellclick_spells (npc_entry,spell_id,quest_start,quest_start_active,quest_end,cast_flags,condition_id) VALUES
(30560,57347,0,0,0,1,@conditionId);
DELETE FROM dbscripts_on_spell WHERE id=57347;
INSERT INTO dbscripts_on_spell (id,delay,command,datalong,data_flags,comments) VALUES
(57347,0,18,0,2,'despawn self');

-- fix relic factions and flags
UPDATE gameobject_template SET faction=1732 WHERE entry=192834;
UPDATE gameobject_template SET faction=1735, flags=48 WHERE entry=192829;

-- update phase masks for trash mobs
-- All revenants have mask 256 (when event isn't in progress)
UPDATE creature SET phaseMask = 256 WHERE id IN (30872,30873,30875,30876,30877,30842,30845,30846,30847,30848,30849,34300);
-- no phase for spirit healers
UPDATE creature SET phaseMask = 1 WHERE id IN (31841,31842);


-- *** Wintergrasp fortress updates ***

-- update npc phase mask for horde control
UPDATE creature SET phaseMask = 64 WHERE id IN (32296,39173,32619,32625,32623,32620,32617,34953);
UPDATE creature SET phaseMask = 64 WHERE guid IN (131731,131729,131839,131261,131271,131270,131268,131265,131262,131258,131266,131267,131263,131260,131259,131264,131269,
131283,131285,131350,131303,131300,131309,131282,131312,131307,131290,131301,131292,131315,131294,131296,131297,131295,131299,131310,131286,131287,131288,131289,131308,131317,131306,131316,
131293,131314,131302,131313,131304,131311,131318,131284,131319,131321,131277,131276,131274,131275,131305,131320,131322,131272,131273,131278,131279,131298,131291);
UPDATE gameobject SET phaseMask = 64 WHERE id IN (192371,192372,192373,192360,192361,192359,192358,192354,192355,192378,192379,192339,192338,192363,192362,192368,192369,192370,192364,192367,
192366,192349,192336,192375,192374,192376,192254,192255,192357,192353,192352,192356,192351,192350,192284,192285,193160,193161,193143,193144,193140,193141,193142,193146,193145,193139,19282,
193127,192834);
UPDATE gameobject SET phaseMask = 64 WHERE guid IN (93114,67312,67310,67311,67307,67306,67313,67314,67309,67308,66718,66719,66720,66721,66722,66723,66724,66725,66726);
-- Note: the following npcs are moved to fortress from landing zone when horde is in control
UPDATE creature SET phaseMask = 64 WHERE guid IN (131634,131350,131727,131633,131352,131354,131351);

-- update npc phase mask for alliance control
UPDATE creature SET phaseMask = 128 WHERE id IN (32294,39172,32618,32624,32622,32621,32616,34952);
UPDATE creature SET phaseMask = 128 WHERE guid IN (139146,139147,131280,131281);
UPDATE gameobject SET phaseMask = 128 WHERE id IN (192323,192322,192324,192325,192326,192319,192318,192321,192320,192316,192317,192305,192304,192335,192334,192331,192332,192333,192314,192313,
192312,192299,192292,192308,192309,192310,192253,192252,192329,192327,192328,192330,192307,192306,192287,192286,193162,193165,193163,193164,193129,193136,193128,193132,193134,193135,193138,
193137,193133,193131,193130,193124,192829,131372,131373);
UPDATE gameobject SET phaseMask = 128 WHERE guid IN (93010,93096,93097,93098,93101,93095,93099,93100,93094,93093,92999,93000,93001,93002,93003,93004,93005,93006,93007);
-- Note: the following npcs are moved to fortress from landing zone when alliance is in control
UPDATE creature SET phaseMask = 128 WHERE guid IN  (131632,131437,131706,131631,131353,131458,131392);

-- missing portals for alliance
DELETE FROM creature WHERE guid IN (2593,70976,71192,71193,72686);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
( 2593, 32618, 571, 1, 128, 5467.56, 2810.08, 418.758, 0.837758, 180, 180, 0, 0, 12600, 0, 0, 0),
(70976, 32624, 571, 1, 128, 5476.1,  2818.04, 418.758, 4.38078, 180, 180, 0, 0, 12600, 0, 0, 0),
(71192, 32622, 571, 1, 128, 5468.27, 2871.14, 418.758, 0, 180, 180, 0, 0, 12600, 0, 0, 0),
(71193, 32621, 571, 1, 128, 5476.33, 2863.21, 418.758, 0.471239, 180, 180, 0, 0, 12600, 0, 0, 0),
(72686, 32616, 571, 1, 128, 5415.12, 2811.42, 418.758, 2.32129, 180, 180, 0, 0, 12600, 0, 0, 0);

-- wrong entry; to be replaced by 32615
DELETE FROM creature WHERE guid=131839;
-- update addon guid
UPDATE creature_addon SET guid=76296 WHERE guid=131839;
-- fix portal position
UPDATE creature SET position_x=5407.84, position_y=2819.29, position_z=418.676, orientation=0.471239 WHERE id IN (32620,32621);
-- fix wrong spawn entry
UPDATE creature SET id=30740 WHERE guid IN (131280,131281);

-- Missing alliance vendors inside the fortress
DELETE FROM creature WHERE guid IN (72687,72688,72689,72690,72691,72692,73192,76295);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(72687, 31036, 571, 1, 128, 5359.74, 2845.78, 409.364, 4.62849, 180, 180, 0, 0, 126000, 0, 0, 0),
(72688, 31109, 571, 1, 128, 5228.29, 2809.89, 409.275, 3.19395, 180, 180, 0, 0, 100800, 15976, 0, 0),
(72689, 31108, 571, 1, 128, 5298.27, 2924.98, 409.275, 0.90757, 180, 180, 0, 0, 100800, 0, 0, 0),
(72690, 31051, 571, 1, 128, 5296.87, 2887.67, 409.275, 5.60251, 180, 180, 0, 0, 60480, 44070, 0, 0),
(72691, 31153, 571, 1, 128, 5364.78, 2835.14, 409.323, 3.12414, 180, 180, 0, 0, 138600, 0, 0, 0),
(72692, 31052, 571, 1, 128, 5302.57, 2750.4,  409.275, 5.46288, 180, 180, 0, 0, 53420, 0, 0, 0),
(73192, 30489, 571, 1, 128, 5369.97, 2874.83, 409.323, 3.12414, 180, 180, 0, 0, 71798, 0, 0, 0),
(76295, 30488, 571, 1, 128, 5370.43, 2814.27, 409.323, 3.05433, 180, 180, 0, 0, 57953, 0, 0, 0);

-- missing generals
DELETE FROM creature WHERE guid IN (76296,76297);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(76296, 32615, 571, 1, 64, 5439.79, 2817.37, 418.675, 4.75226, 180, 180, 0, 0, 1, 0, 0, 0),
(76297, 32626, 571, 1, 128, 5442.15, 2865.77, 418.676, 1.58396, 180, 180, 0, 0, 1, 0, 0, 0);
-- Update faction; ToDo: update HP
UPDATE creature_template SET FactionAlliance=55, FactionHorde=55, MinLevel=80, MaxLevel=80 WHERE entry=32626;
UPDATE creature_template SET FactionAlliance=106, FactionHorde=106, MinLevel=80, MaxLevel=80 WHERE entry=32615;

-- missing horde vendors inside the fortress
DELETE FROM creature WHERE guid IN (76298,76299,76300,76301,76302,76303);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(76298, 31091, 571, 1, 64, 5359.66, 2844.29, 409.239, 3.20267, 180, 180, 0, 0, 126000, 0, 0, 0),
(76299, 31107, 571, 1, 64, 5234.75, 2888.99, 409.192, 3.25831, 180, 180, 0, 0, 100800, 0, 0, 0),
(76300, 31053, 571, 1, 64, 5390.62, 3027.99, 409.206, 3.05642, 180, 180, 0, 0, 53420, 0, 0, 0),
(76301, 31106, 571, 1, 64, 5294.42, 2930.43, 409.192, 0.65783, 180, 180, 0, 0, 100800, 0, 0, 0),
(76302, 31151, 571, 1, 64, 5363.43, 2847.62, 409.239, 3.13831, 180, 180, 0, 0, 138600, 0, 0, 0),
(76303, 31102, 571, 1, 64, 5296.32, 2728.6,  409.316, 1.44175, 180, 180, 0, 0, 80640, 35256, 0, 0);


-- *** Wintergrasp towers updates ***
-- horde control - show alliance banners and alliance capture points
UPDATE gameobject SET phaseMask = 64 WHERE id IN (192277,192278,192270,192269,192266,192414,192431,192430,192429,192415,192423,194962,194959);
UPDATE gameobject SET phaseMask = 64 WHERE guid IN (67321,67318,67319,67320,67317,67316,93108,93109,67322,67323,67324,67325);

-- alliance control - show horde banners and horde capture points
UPDATE gameobject SET phaseMask = 128 WHERE id IN (192276,192279,192271,192268,192267,192450,192442,192443,192444,192449,192424,194963,194960);
UPDATE gameobject SET phaseMask = 128 WHERE guid IN (93104,93105,93106,93107,93102,93103,93011,93012,93111,93112,93113,93110);


-- *** Wintergrasp factory updates ***
-- update horde factory control
UPDATE creature SET phaseMask = 16 WHERE guid IN (139145,131730,131728,139144);
UPDATE gameobject SET phaseMask = 16 WHERE id IN (192453,192272,192451,192452,192408,192275,192432,192441,192440,192280,192435,192283,192434,192290,192460,192461,192289,192459,192458);
-- capture points have the zone owner phase
UPDATE gameobject SET phaseMask = 64 WHERE id IN (190487,190475);

-- update alliance factory control
UPDATE creature SET phaseMask = 32 WHERE guid IN (131326,139148,139149,131327);
UPDATE gameobject SET phaseMask = 32 WHERE id IN (192418,192273,192416,192417,192409,192274,192433,192407,192406,192281,192401,192282,192400,192291,192427,192428,192288,192426,192425);
-- capture points have the zone owner phase
UPDATE gameobject SET phaseMask = 128 WHERE id IN (192627,192626);


-- *** Wintergrasp guards ***
-- Missing guard spawns (possible guesswork)

-- missing alliance spawns
DELETE FROM creature WHERE guid IN (76304,76305,76306,76307,76308,76309,76310,76311,76312,76313,76314,77761,77762,77763,77853,77867,77868,77869,77870,77871,78199,131839);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(76304, 30740, 571, 1, 128, 5270.16, 2833.48, 409.275, 3.12414, 300, 300, 0, 0, 11001, 0, 0, 0),
(76305, 30740, 571, 1, 128, 5270.06, 2847.55, 409.275, 3.07178, 300, 300, 0, 0, 11001, 0, 0, 0),
(76306, 30740, 571, 1, 128, 5154.12, 2847.89, 409.248, 3.07178, 300, 300, 0, 0, 11001, 0, 0, 0),
(76307, 30740, 571, 1, 128, 5154.23, 2833.82, 409.263, 3.12414, 300, 300, 0, 0, 11001, 0, 0, 0),
(76308, 30740, 571, 1, 128, 5179.67, 2846.60, 409.275, 3.08923, 300, 300, 0, 0, 11001, 0, 0, 0),
(76309, 30740, 571, 1, 128, 5179.11, 2837.13, 409.275, 3.21141, 300, 300, 0, 0, 11001, 0, 0, 0),
(76310, 30740, 571, 1, 128, 5349.81, 2763.64, 409.333, 4.66003, 300, 300, 0, 0, 11001, 0, 0, 0),
(76311, 30740, 571, 1, 128, 5335.31, 2764.11, 409.275, 4.83456, 300, 300, 0, 0, 11001, 0, 0, 0),
(76312, 30740, 571, 1, 128, 5368.71, 2856.36, 409.323, 2.94961, 300, 300, 0, 0, 11001, 0, 0, 0),
(76313, 30740, 571, 1, 128, 5350.68, 2917.01, 409.275, 1.46608, 300, 300, 0, 0, 11001, 0, 0, 0),
(76314, 30740, 571, 1, 128, 5388.56, 2834.77, 418.759, 3.07178, 300, 300, 0, 0, 11001, 0, 0, 0),
(77761, 30740, 571, 1, 128, 5335.12, 2916.80, 409.444, 1.49623, 300, 300, 0, 0, 11001, 0, 0, 0),
(77762, 30740, 571, 1, 128, 5367.92, 2826.52, 409.323, 3.33358, 300, 300, 0, 0, 11001, 0, 0, 0),
(77763, 30740, 571, 1, 128, 5389.27, 2847.37, 418.759, 3.10669, 300, 300, 0, 0, 11001, 0, 0, 0),
(77853, 30740, 571, 1, 128, 4700.59, 2855.76, 387.874, -2.92258, 180, 180, 0, 0, 11001, 0, 0, 0),
(77867, 30740, 571, 1, 128, 4689.69, 2878.61, 387.427, 3.35613, 180, 180, 0, 0, 11001, 0, 0, 0),
(77868, 30740, 571, 1, 128, 4781.71, 3275.76, 365.884, 3.01123, 180, 180, 0, 0, 11001, 0, 0, 0),
(77869, 30740, 571, 1, 128, 4780.26, 3303.49, 365.638, 3.15052, 180, 180, 0, 0, 11001, 0, 0, 0),
(77870, 30740, 571, 1, 128, 5391.85, 3031.49, 409.208, 0.002589, 180, 180, 5, 0, 11001, 0, 0, 1),
(77871, 30740, 571, 1, 128, 5327.26, 2659.46, 409.179, 3.06991, 180, 180, 5, 0, 11001, 0, 0, 1),
(131839, 30740, 571, 1, 128, 4867.99, 2884.67, 375.234, 3.0013, 180, 180, 0, 0, 11001, 0, 0, 0),
(78199, 30740, 571, 1, 128, 4873.16, 2900.89, 375.937, 3.21141, 180, 180, 0, 0, 11001, 0, 0, 0);
-- Note the following entries as well as the guids from horde should have WPs 131266; 131261; 77870; 77871

-- missing horde spawns
DELETE FROM creature WHERE guid IN (77764,77765,77766,77767,77768,77769,77770,77771,77772,77773,77774,77775,77776,77777,77778,77779,77780,77781,77782,77783,77784,77785,77786,
77846,77847,77848,77849,77850,77851,77852,77872,78189,78190,78191,78192,78193,78194,78195,78196,78197,78198,78200,78201);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(77764, 30739, 571, 1, 128, 4424.87, 3321.04, 369.631, 6.12994, 180, 180, 0, 0, 11001, 0, 0, 0),
(77765, 30739, 571, 1, 128, 4425.60, 3291.38, 370.592, 0.235534, 180, 180, 0, 0, 11001, 0, 0, 0),
(77766, 30739, 571, 1, 128, 4394.60, 3231.95, 369.628, 4.44448, 180, 180, 0, 0, 11001, 0, 0, 0),
(77767, 30739, 571, 1, 128, 4370.83, 3355.17, 371.093, 1.20471, 180, 180, 0, 0, 11001, 0, 0, 0),
(77768, 30739, 571, 1, 128, 4391.57, 2300.81, 374.661, 4.22773, 180, 180, 0, 0, 11001, 0, 0, 0),
(77769, 30739, 571, 1, 128, 4418.18, 2331.35, 370.764, 6.15745, 180, 180, 0, 0, 11001, 0, 0, 0),
(77770, 30739, 571, 1, 128, 4391.91, 3354.44, 369.507, 1.51651, 180, 180, 0, 0, 11001, 0, 0, 0),
(77771, 30739, 571, 1, 128, 4348.72, 2299.06, 374.661, 4.90474, 180, 180, 0, 0, 11001, 0, 0, 0),
(77772, 30739, 571, 1, 128, 4387.77, 2412.03, 374.661, 1.52203, 180, 180, 0, 0, 11001, 0, 0, 0),
(77773, 30739, 571, 1, 128, 4413.48, 2393.69, 376.281, 0.936124, 180, 180, 0, 0, 11001, 0, 0, 0),
(77774, 30739, 571, 1, 128, 4417.33, 2354.60, 372.845, 6.27055, 180, 180, 0, 0, 11001, 0, 0, 0),
(77775, 30739, 571, 1, 128, 4349.11, 2411.47, 374.661, 1.69875, 180, 180, 0, 0, 11001, 0, 0, 0),
(77776, 30739, 571, 1, 128, 4366.97, 3233.61, 371.516, 4.52381, 180, 180, 0, 0, 11001, 0, 0, 0),
(77777, 30739, 571, 1, 64, 5154.12, 2847.89, 409.248, 3.07178, 180, 180, 0, 0, 11001, 0, 0, 0),
(77778, 30739, 571, 1, 64, 5154.23, 2833.82, 409.263, 3.12414, 180, 180, 0, 0, 11001, 0, 0, 0),
(77779, 30739, 571, 1, 128, 4452.86, 2808.87, 402.604, 6.05629, 180, 180, 0, 0, 11001, 0, 0, 0),
(77780, 30739, 571, 1, 128, 4409.82, 2951.86, 375.283, 1.47897, 180, 180, 5, 0, 11001, 0, 0, 1),
(77781, 30739, 571, 1, 128, 4454.78, 2835.49, 400.867, 0.034907, 180, 180, 0, 0, 11001, 0, 0, 0),
(77782, 30739, 571, 1, 128, 4494.58, 1943.76, 435.627, 6.19592, 180, 180, 0, 0, 11001, 0, 0, 0),
(77783, 30739, 571, 1, 128, 4501.06, 1990.28, 431.157, 1.02974, 180, 180, 0, 0, 11001, 0, 0, 0),
(77784, 30739, 571, 1, 128, 4450.15, 1897.58, 435.045, 4.39823, 180, 180, 0, 0, 11001, 0, 0, 0),
(77785, 30739, 571, 1, 128, 4463.83, 2015.18, 430.300, 1.43117, 180, 180, 0, 0, 11001, 0, 0, 0),
(77786, 30739, 571, 1, 128, 4421.94, 2773.19, 400.895, 5.70723, 180, 180, 0, 0, 11001, 0, 0, 0),
(77846, 30739, 571, 1, 128, 4428.87, 1906.87, 432.648, 3.9968, 180, 180, 0, 0, 11001, 0, 0, 0),
(77847, 30739, 571, 1, 128, 4362.09, 2811.51, 407.337, 3.19395, 180, 180, 0, 0, 11001, 0, 0, 0),
(77848, 30739, 571, 1, 128, 4455.77, 1935.89, 465.647, 5.40895, 180, 180, 5, 0, 11001, 0, 0, 1),
(77849, 30739, 571, 1, 128, 4412.29, 2753.79, 401.015, 5.8294, 180, 180, 0, 0, 11001, 0, 0, 0),
(77850, 30739, 571, 1, 128, 4563.97, 3618.68, 426.539, 4.35607, 180, 180, 5, 0, 11001, 0, 0, 1),
(77851, 30739, 571, 1, 128, 4436.25, 1933.86, 439.295, 4.84563, 180, 180, 5, 0, 11001, 0, 0, 1),
(77852, 30739, 571, 1, 128, 4417.95, 3509.35, 359.007, 4.254, 180, 180, 5, 0, 11001, 0, 0, 1),
(77872, 30739, 571, 1, 128, 4407.29, 2825.11, 436.283, 5.79104, 180, 180, 5, 0, 11001, 0, 0, 1),
(78189, 30739, 571, 1, 128, 4333.32, 2331.48, 376.012, -1.34541, 180, 180, 5, 0, 11001, 0, 0, 1),
(78190, 30739, 571, 1, 128, 4550.3, 2185.16, 366.565, 1.22022, 180, 180, 5, 0, 11001, 0, 0, 1),
(78191, 30739, 571, 1, 128, 4778.55, 3276.17, 365.865, -0.130337, 180, 180, 0, 0, 11001, 0, 0, 0),
(78192, 30739, 571, 1, 128, 4778.59, 3303.48, 365.679, 3.15058, 180, 180, 5, 0, 11001, 0, 0, 1),
(78193, 30739, 571, 1, 128, 4697.75, 2855.13, 387.857, 0.219023, 180, 180, 0, 0, 11001, 0, 0, 0),
(78194, 30739, 571, 1, 128, 4686.1, 2877.83, 387.427, 3.35556, 180, 180, 5, 0, 11001, 0, 0, 1),
(78195, 30739, 571, 1, 128, 4686.31, 2390.8, 370.008, 0.314159, 180, 180, 0, 0, 11001, 0, 0, 0),
(78196, 30739, 571, 1, 128, 4677.92, 2412.38, 370.317, 0.226893, 180, 180, 0, 0, 11001, 0, 0, 0),
(78197, 30739, 571, 1, 128, 4323.78, 3287.1, 378.895, 2.86234, 180, 180, 0, 0, 11001, 0, 0, 0),
(78198, 30739, 571, 1, 128, 4337.03, 3261.66, 373.525, 3.26377, 180, 180, 0, 0, 11001, 0, 0, 0),
(78200, 30739, 571, 1, 128, 4865.72, 2900.92, 374.541, 6.19592, 180, 180, 0, 0, 11001, 0, 0, 0),
(78201, 30739, 571, 1, 128, 4864.39, 2885.18, 374.794, 6.16101, 180, 180, 0, 0, 11001, 0, 0, 0);
