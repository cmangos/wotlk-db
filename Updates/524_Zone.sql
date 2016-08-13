-- Borean Tundra - Random updates pt.2

-- Duplicates
DELETE FROM creature WHERE guid IN (132712,132716);
DELETE FROM creature_addon WHERE guid IN (132712,132716);
DELETE FROM creature_movement WHERE id IN (132712,132716);
DELETE FROM game_event_creature WHERE guid IN (132712,132716);
DELETE FROM game_event_creature_data WHERE guid IN (132712,132716);
DELETE FROM creature_battleground WHERE guid IN (132712,132716);
DELETE FROM creature_linking WHERE guid IN (132712,132716) OR master_guid IN (132712,132716);

-- missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (84846,84847,86539,86540,89051,90588,90895,91106,91107,91245,91246,91405);
DELETE FROM creature_addon WHERE guid IN (84846,84847,86539,86540,89051,90588,90895,91106,91107,91245,91246,91405);
DELETE FROM creature_movement WHERE id IN (84846,84847,86539,86540,89051,90588,90895,91106,91107,91245,91246,91405);
DELETE FROM game_event_creature WHERE guid IN (84846,84847,86539,86540,89051,90588,90895,91106,91107,91245,91246,91405);
DELETE FROM game_event_creature_data WHERE guid IN (84846,84847,86539,86540,89051,90588,90895,91106,91107,91245,91246,91405);
DELETE FROM creature_battleground WHERE guid IN (84846,84847,86539,86540,89051,90588,90895,91106,91107,91245,91246,91405);
DELETE FROM creature_linking WHERE guid IN (84846,84847,86539,86540,89051,90588,90895,91106,91107,91245,91246,91405)
OR master_guid IN (84846,84847,86539,86540,89051,90588,90895,91106,91107,91245,91246,91405);
-- Bloodspore Moth
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(132712,25464,571,1,1,0,0,2599.71,5602.9,40.8637,1.03127,300,10,0,7984,0,0,1),
(132716,25464,571,1,1,0,0,2824.57,5651.56,49.9172,5.41611,300,10,0,6986,0,0,1),
-- Magnataur Huntress
(84846,24469,571,1,1,0,0,2849.36,5759.66,90.6129,4.834562,300,0,0,39920,0,0,0),
(84847,24469,571,1,1,0,0,2954.17,5743.25,108.63,4.90921,300,0,0,39920,0,0,0),
-- Den Vermin
(86539,24567,571,1,1,0,0,2777.54,5718.25,44.1039,4.90491,300,5,0,6986,0,0,1),
(86540,24567,571,1,1,0,0,2777.82,5792.35,53.8564,4.67716,300,5,0,6986,0,0,1),
(89051,24567,571,1,1,0,0,2783.17,5839.11,61.3183,3.79359,300,5,0,7984,0,0,1),
(90588,24567,571,1,1,0,0,2760.48,5829.99,61.5839,5.25913,300,5,0,6986,0,0,1),
(90895,24567,571,1,1,0,0,2808.78,5805.16,84.2862,0.506537,300,5,0,7984,0,0,1),
(91106,24567,571,1,1,0,0,2657.19,5713.6,46.9395,4.77489,300,5,0,6986,0,0,1),
(91107,24567,571,1,1,0,0,2652.12,5757.46,45.6113,1.77226,300,5,0,6986,0,0,1),
(91245,24567,571,1,1,0,0,2631.73,5786.84,45.8517,4.51723,300,5,0,7984,0,0,1),
(91246,24567,571,1,1,0,0,2627.47,5823.61,43.4524,4.45675,300,5,0,6986,0,0,1),

-- Borean Marmot
(91405,31685,571,1,1,0,0,2838.56,5819.37,100.554,1.54335,300,20,0,8,0,0,1);

-- Bloodmage Laurith
-- gossip
UPDATE creature_template SET GossipMenuId = 9185 WHERE entry = 25381;
DELETE FROM gossip_menu WHERE entry = 9185;
INSERT INTO gossip_menu (entry,text_id,script_id,condition_id) VALUES
(9185,12475,0,0);

-- Scout Tungok
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 132680;
DELETE FROM creature_movement WHERE id = 132680;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 25440;
DELETE FROM creature_movement_template WHERE entry = 25440;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(25440, 1, 2890.05,5497.71,55.8601, 0, 0,2.44618, 0, 0),
(25440, 2, 2887.79,5501.85,56.2975, 0, 0,1.69305, 0, 0),
(25440, 3, 2885.33,5536.17,57.4726, 0, 0,1.25951, 0, 0),
(25440, 4, 2892.9,5551.65,56.5137, 0, 0,1.50848, 0, 0),
(25440, 5, 2891.55,5556.94,56.6197, 0, 0,2.16036, 0, 0),
(25440, 6, 2885.87,5564.22,56.5885, 0, 0,2.21141, 0, 0),
(25440, 7, 2892.29,5555.69,56.5451, 0, 0,4.90454, 0, 0),
(25440, 8, 2892.48,5551.22,56.5798, 0, 0,4.40295, 0, 0),
(25440, 9, 2885.28,5537.93,57.4465, 0, 0,4.64353, 0, 0),
(25440, 10, 2887.79,5500.02,56.0182, 0, 0,5.35554, 0, 0),
(25440, 11, 2892.53,5497.83,55.6557, 0, 0,6.25324, 0, 0),
(25440, 12, 2909.94,5498.39,52.9132, 0, 0,0.736839, 0, 0),
(25440, 13, 2912.57,5505.34,52.41, 0, 0,1.69424, 0, 0),
(25440, 14, 2911.46,5538,50.7715, 0, 0,1.34552, 0, 0),
(25440, 15, 2921.33,5561.13,49.721, 1000, 0,1.12954, 0, 0),
(25440, 16, 2911.81,5538.54,50.6613, 0, 0,4.55028, 0, 0),
(25440, 17, 2912.51,5501.23,52.7853, 0, 0,4.15365, 0, 0),
(25440, 18, 2908.48,5498.37,53.1613, 0, 0,3.20725, 0, 0);

-- Den Vermin
UPDATE creature SET position_x = 2936.703125, position_y = 5738.342773, position_z = 107.555885 WHERE guid = 133094;
UPDATE creature SET position_x = 2561.139648, position_y = 5866.480469, position_z = 28.596952 WHERE guid = 133117;
UPDATE creature SET position_x = 2613.688232, position_y = 5935.217773, position_z = 13.301577 WHERE guid = 133121;
UPDATE creature SET position_x = 2651.570557, position_y = 5900.623047, position_z = 2.709636 WHERE guid = 133116;
UPDATE creature SET position_x = 2583.134521, position_y = 5936.396484, position_z = -16.210297 WHERE guid = 133107;
UPDATE creature SET position_x = 2611.850586, position_y = 5813.772461, position_z = -12.409942 WHERE guid = 133120;
UPDATE creature SET position_x = 2566.258301, position_y = 5881.225098, position_z = -8.948485 WHERE guid = 133118;

-- Beryl Mage Hunter
UPDATE creature SET position_x = 3413.943604, position_y = 6169.508301, position_z = 79.831017, MovementType = 1, spawndist = 10 WHERE guid = 118675;
UPDATE creature SET position_x = 3376.312012, position_y = 6174.063965, position_z = 79.831657, MovementType = 1, spawndist = 10 WHERE guid = 118678;
UPDATE creature SET position_x = 3410.051270, position_y = 6147.606934, position_z = 79.828049, MovementType = 1, spawndist = 10 WHERE guid = 118670;

-- Inquisitor Salrand
UPDATE creature_template SET InhabitType = 4, UnitFlags = 768 WHERE entry = 25584;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 118575;
DELETE FROM creature_template_addon WHERE entry = 25584;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(25584,0,0,1,0,0,0,45775);

-- Gammothra the Tormentor
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 113838;
DELETE FROM creature_movement WHERE id = 113838;
UPDATE creature_template SET ExtraFlags = 16384, MovementType = 2 WHERE Entry = 25789; -- ExtraFlag will keep him in Cave
DELETE FROM creature_movement_template WHERE entry = 25789;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(25789, 1, 2494,5909.45,-26.0041, 0, 0,3.36239, 0, 0),
(25789, 2, 2514.95,5917.51,-26.0044, 0, 0,0.209019, 0, 0),
(25789, 3, 2533.28,5921.54,-26.0044, 0, 0,0.829484, 0, 0),
(25789, 4, 2535.85,5931.97,-25.0793, 0, 0,2.10261, 0, 0),
(25789, 5, 2530.36,5935.48,-23.6146, 0, 0,2.77727, 0, 0),
(25789, 6, 2520.73,5936.97,-22.4143, 2000, 0,3.03645, 0, 0),
(25789, 7, 2530.35,5936.18,-23.6339, 0, 0,5.76886, 0, 0),
(25789, 8, 2534.41,5930.2,-25.3715, 0, 0,4.98818, 0, 0),
(25789, 9, 2534.21,5923.36,-26.0042, 0, 0,4.10069, 0, 0),
(25789, 10, 2530.96,5921.14,-26.0042, 0, 0,3.46451, 0, 0),
(25789, 11, 2514.89,5917.6,-26.0042, 0, 0,3.3687, 0, 0);

-- Bloodspore Moth
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid IN (132708,132718,132717);
-- #107107
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (107107,132702,132719);
DELETE FROM creature_movement WHERE id IN (107107,132702,132719);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(107107,1,2485.5,5605.94,54.9036, 0, 0,255, 0, 0),
(107107,2,2483.41,5626.88,54.9036, 0, 0,255, 0, 0),
(107107,3,2476.33,5643.55,54.9036, 0, 0,255, 0, 0),
(107107,4,2463.77,5651.02,54.9036, 0, 0,255, 0, 0),
(107107,5,2453.08,5649.91,54.9036, 0, 0,255, 0, 0),
(107107,6,2443.03,5640.65,54.9036, 0, 0,255, 0, 0),
(107107,7,2428.76,5620.43,54.9036, 0, 0,255, 0, 0),
(107107,8,2432.16,5587.71,54.9036, 0, 0,255, 0, 0),
(107107,9,2455.87,5565.85,54.9036, 0, 0,255, 0, 0),
(107107,10,2475.21,5566.18,54.9036, 0, 0,255, 0, 0),
(107107,11,2475.67,5588.38,54.9036, 0, 0,255, 0, 0),
-- #132702
(132702,1,2689.95,5602.15,65.492, 0, 0,255, 0, 0),
(132702,2,2677.72,5622.64,50.392, 0, 0,255, 0, 0),
(132702,3,2647.12,5627.3,50.392, 0, 0,255, 0, 0),
(132702,4,2631.46,5621.45,50.392, 0, 0,255, 0, 0),
(132702,5,2624.6,5591.51,50.392, 0, 0,255, 0, 0),
(132702,6,2614.63,5584.59,50.392, 0, 0,255, 0, 0),
(132702,7,2588.05,5604.9,50.392, 0, 0,255, 0, 0),
(132702,8,2596.41,5618.91,50.392, 0, 0,255, 0, 0),
(132702,9,2621.58,5627.6,50.392, 0, 0,255, 0, 0),
(132702,10,2639.54,5601.02,50.392, 0, 0,255, 0, 0),
(132702,11,2647.74,5581.63,50.392, 0, 0,255, 0, 0),
(132702,12,2680.97,5585.44,55.7809, 0, 0,255, 0, 0),
(132702,13,2691.46,5587.88,50.392, 0, 0,255, 0, 0),
-- #132719
(132719,1,2748.176,5657.927,57.40205, 0, 0,255, 0, 0),
(132719,2,2742.627,5640.191,51.59649, 0, 0,255, 0, 0),
(132719,3,2759.094,5627.052,50.42982, 0, 0,255, 0, 0),
(132719,4,2777.415,5620.299,50.42982, 0, 0,255, 0, 0),
(132719,5,2801.044,5623.258,61.17983, 0, 0,255, 0, 0),
(132719,6,2820.21,5629.685,56.26315, 0, 0,255, 0, 0),
(132719,7,2819.751,5648.717,60.76315, 0, 0,255, 0, 0),
(132719,8,2818.542,5670.892,57.87427, 0, 0,255, 0, 0),
(132719,9,2794.085,5680.201,57.40205, 0, 0,255, 0, 0),
(132719,10,2761.372,5668.559,57.40205, 0, 0,255, 0, 0),
(132719,11,2755.196,5660.285,57.40205, 0, 0,255, 0, 0);
