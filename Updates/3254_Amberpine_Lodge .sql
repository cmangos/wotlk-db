--  Amberpine Lodge - Grizzly Hills

-- Amberpine Footman 27072
DELETE FROM creature_addon WHERE guid IN (513674);
DELETE FROM creature_movement WHERE id IN (513674);
DELETE FROM game_event_creature WHERE guid IN (513674);
DELETE FROM game_event_creature_data WHERE guid IN (513674);
DELETE FROM creature_battleground WHERE guid IN (513674);
DELETE FROM creature_linking WHERE guid IN (513674)
 OR master_guid IN (513674);
DELETE FROM creature WHERE guid IN (513674);
-- missing added
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(513674,27072,571,1,1,0,0,3401.24,-2745.372,199.3911,1.884956,300,300,0,0,0,0,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (516347,516348);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(516347,0,0,1,1,0,0,47934),
(516348,0,0,1,1,0,0,47934);
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (516347,516348,516350);
DELETE FROM creature_movement WHERE id IN (516347,516348,516350);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 516347
(516347,1,3413.05,-2843.45,201.185,100,3000,11),
(516347,2,3412.01,-2834.84,201.328,100,0,0),
(516347,3,3409.56,-2822.68,200.823,100,0,0),
(516347,4,3413.15,-2816.45,200.536,100,0,0),
(516347,5,3424.28,-2811.68,200.621,100,0,0),
(516347,6,3433.14,-2806.48,201.023,100,0,0),
(516347,7,3443.12,-2801.2,201.743,100,0,0),
(516347,8,3452.64,-2795.48,202.028,100,0,0),
(516347,9,3462.25,-2786.8,201.228,100,0,0),
(516347,10,3469.32,-2785.13,200.77,100,0,0),
(516347,11,3479.55,-2784.14,199.862,100,0,0),
(516347,12,3484.99,-2785.8,199.479,100,3000,0),
(516347,13,3479.46,-2784.14,199.872,100,0,0),
(516347,14,3469.53,-2785.09,200.736,100,0,0),
(516347,15,3462.8,-2786.58,201.181,100,0,0),
(516347,16,3453.1,-2795.05,202.075,100,0,0),
(516347,17,3443.76,-2800.88,201.747,100,0,0),
(516347,18,3433.72,-2806.07,201.051,100,0,0),
(516347,19,3425.05,-2811.2,200.636,100,0,0),
(516347,20,3413.45,-2816.11,200.534,100,0,0),
(516347,21,3409.68,-2822.25,200.796,100,0,0),
-- 516348
(516348,1,3403.52,-2746.48,199.301,100,1000,11),
(516348,2,3402.64,-2760.43,199.301,100,0,0),
(516348,3,3398.82,-2769.59,199.921,100,0,0),
(516348,4,3389.63,-2776.6,199.123,100,0,0),
(516348,5,3386.37,-2783,199.739,100,0,0),
(516348,6,3383.43,-2801.05,199.75,100,0,0),
(516348,7,3381.28,-2814.95,199.61,100,0,0),
(516348,8,3378.11,-2816.07,199.256,100,0,0),
(516348,9,3367.73,-2819.37,198.319,100,0,0),
(516348,10,3380.96,-2815.4,199.575,100,0,0),
(516348,11,3383.4,-2801.51,199.75,100,0,0),
(516348,12,3386.21,-2783.35,199.76,100,0,0),
(516348,13,3389.31,-2776.98,199.133,100,0,0),
(516348,14,3398.53,-2769.98,199.925,100,0,0),
(516348,15,3402.48,-2761.12,199.301,100,0,0),
-- 516350
(516350,1,3415.14,-2777.61,211.227,100,0,0),
(516350,2,3420.18,-2784.32,211.387,100,0,0),
(516350,3,3422.75,-2782.16,211.493,100,0,0),
(516350,4,3423.5,-2778.42,211.504,100,0,0),
(516350,5,3426.82,-2775.85,209.311,100,0,0),
(516350,6,3428.94,-2776.81,209.282,100,0,0),
(516350,7,3431.8,-2780.53,206.514,100,0,0),
(516350,8,3431.59,-2782.26,206.366,100,0,0),
(516350,9,3427.31,-2785.25,203.271,100,0,0),
(516350,10,3425.56,-2783.43,202.954,100,0,0),
(516350,11,3426.08,-2779.09,202.638,100,0,0),
(516350,12,3424.72,-2776.175,202.651,5.235988,30000,0),
(516350,13,3426.07,-2778.5,202.639,100,0,0),
(516350,14,3423.42,-2782.39,202.639,100,0,0),
(516350,15,3419.54,-2784.99,201.503,100,0,0),
(516350,16,3415.71,-2787.81,201.512,100,0,0),
(516350,17,3409.91,-2792.47,201.519,100,0,0),
(516350,18,3405.119,-2800.479,201.5026,1.204277,90000,0),
(516350,19,3409.44,-2793.11,201.521,100,0,0),
(516350,20,3415.28,-2788.18,201.516,100,0,0),
(516350,21,3420.86,-2784.1,201.501,100,0,0),
(516350,22,3422.92,-2782.66,202.616,100,0,0),
(516350,23,3425.39,-2783.2,202.779,100,0,0),
(516350,24,3426.82,-2785.16,203.269,100,0,0),
(516350,25,3431.09,-2782.65,206.364,100,0,0),
(516350,26,3431.98,-2780.8,206.372,100,0,0),
(516350,27,3429.47,-2777.2,209.243,100,0,0),
(516350,28,3427.05,-2775.85,209.28,100,0,0),
(516350,29,3423.93,-2777.91,211.467,100,0,0),
(516350,30,3423.15,-2781.73,211.5,100,0,0),
(516350,31,3420.48,-2784.21,211.398,100,0,0),
(516350,32,3415.56,-2777.4,211.236,100,0,0),
(516350,33,3410,-2781.17,211.176,100,0,0),
(516350,34,3400.23,-2788.21,211.224,100,0,0);
-- spell req target
DELETE FROM spell_script_target WHERE entry=47933;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(47933, 1, 27072, 0);

-- Master Woodsman Anderhol 27277
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27277);
DELETE FROM creature_template_addon WHERE entry = 27277;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27277,0,0,1,1,0,0,NULL);

-- Brom Armstrong 27062
DELETE FROM dbscripts_on_relay WHERE id IN (20529);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20529,0,1,133,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Brom Armstrong EAI: emote'),
(20529,15000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Brom Armstrong EAI:reset emote'),
(20529,17000,15,46400,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Brom Armstrong EAI:cast: Steam Weapon'),
(20529,21000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Brom Armstrong EAI:emote');

-- Amberpine Woodsman 27293
-- individual addons
DELETE FROM creature_addon WHERE guid IN (517527,517528,517529,517530,517531,517532,517533,517534,517535,517536);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(517527,0,0,1,0,133,0,NULL),
(517528,0,8,1,0,0,0,NULL),
(517529,0,8,1,0,0,0,NULL),
(517530,0,0,1,0,133,0,NULL),
(517531,0,0,1,0,133,0,NULL),
(517532,0,8,1,0,0,0,NULL),
(517533,0,0,1,0,133,0,NULL),
(517534,0,8,1,0,0,0,NULL),
(517535,0,0,1,0,133,0,NULL),
(517536,0,8,1,0,0,0,NULL);
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (517528,517529,517532,517534,517536);
DELETE FROM creature_movement WHERE id IN (517528,517529,517532,517534,517536);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 517528
(517528,1,3474.67,-2776.72,201.028,100,1000,11),
(517528,2,3474.67,-2776.72,201.028,100,1000,3),
-- 517529
(517529,1,3460.6,-2902.65,201.078,100,1000,11),
(517529,2,3460.6,-2902.65,201.078,100,1000,3),
-- 517532
(517532,1,3499.07,-2838.08,202.279,100,1000,11),
(517532,2,3499.07,-2838.08,202.279,100,1000,3),
-- 517534
(517534,1,3374.6,-2806,199.048,100,1000,11),
(517534,2,3374.6,-2806,199.048,100,1000,3),
-- 517536
(517536,1,3390.53,-2862.01,199.621,100,1000,11),
(517536,2,3390.53,-2862.01,199.621,100,1000,3);

-- Tallhorn Stag 26363
-- involved with Amberpine Woodsman 27293
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (513435,513437,513342,513345,513449);
DELETE FROM creature_addon WHERE guid IN (513435,513437,513342,513345,513449);
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(513435,0,0,0,0,0,0,'29266'),
(513437,0,0,0,0,0,0,'29266'),
(513342,0,0,0,0,0,0,'29266'),
(513345,0,0,0,0,0,0,'29266'),
(513449,0,0,0,0,0,0,'29266');

-- Scout Captain Carter 27783
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27783);
DELETE FROM creature_template_addon WHERE entry = 27783;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27783,2408,0,1,1,0,0,NULL);

-- Amberpine Scout 27117
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (516393,516394);
