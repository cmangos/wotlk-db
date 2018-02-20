-- The Wailing Ziggurat - Borean Tundra

-- Ziggurat Defender
-- missing added - WoTLK free guids reused
DELETE FROM creature_addon WHERE guid BETWEEN 140943 AND 140946;
DELETE FROM creature_movement WHERE id BETWEEN 140943 AND 140946;
DELETE FROM game_event_creature WHERE guid BETWEEN 140943 AND 140946;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 140943 AND 140946;
DELETE FROM creature_battleground WHERE guid BETWEEN 140943 AND 140946;
DELETE FROM creature_linking WHERE guid BETWEEN 140943 AND 140946
OR master_guid BETWEEN 140943 AND 140946;
DELETE FROM creature WHERE guid BETWEEN 140943 AND 140946;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(140943,26202,571,1,1,0,0,3246.69,3685.95,21.8294,2.79863,300,300,7,0,9291,0,0,1),
(140944,26202,571,1,1,0,0,3186.61,3846.66,27.6716,2.74634,300,300,7,0,8982,0,0,1),
(140945,26202,571,1,1,0,0,3187.02,3875.21,27.3123,3.65135,300,300,7,0,8982,0,0,1),
(140946,26202,571,1,1,0,0,3228.15,3877.85,30.3962,1.90855,300,300,7,0,8982,0,0,1);
-- Updates
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE id = 26202;
UPDATE creature SET position_x = 3397.803711, position_y = 3726.490723, position_z = 24.050314 WHERE guid = 104161;
UPDATE creature SET position_x = 3388.148193, position_y = 3779.831055, position_z = 27.368713 WHERE guid = 104183;
UPDATE creature SET position_x = 3215.102051, position_y = 3678.598877, position_z = 35.179367 WHERE guid = 104179;
UPDATE creature SET position_x = 3249.485352, position_y = 3784.330566, position_z = 27.262587 WHERE guid = 104195;
UPDATE creature SET position_x = 3234.909668, position_y = 3848.958984, position_z = 26.168692 WHERE guid = 104198;
UPDATE creature SET position_x = 3277.359619, position_y = 3804.508789, position_z = 25.696537 WHERE guid = 104160;
UPDATE creature SET position_x = 3417.762939, position_y = 3802.292236, position_z = 26.547367 WHERE guid = 104108;

-- Scourged Mammoth
UPDATE creature SET position_x = 3382.575439, position_y = 3854.906250, position_z = 29.633196 WHERE guid = 105863;

-- Slain Cultist
UPDATE creature_template SET UnitFlags = 33536, DynamicFlags = 0, ExtraFlags = 0 WHERE entry = 26172;

-- Thassarian (inside Ziggurat)
DELETE FROM npc_gossip WHERE npc_guid = 101136;
DELETE FROM creature_addon WHERE guid = 101136;
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(101136,0,0,0,0,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 101136;
DELETE FROM creature_movement WHERE id = 101136;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(101136,1,3295.89,3682.7,32.5513,2000,2617001,1.71042);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2617001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2617001,0,15,46685,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2617001,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'idle');
-- add target to 46685
DELETE FROM spell_script_target WHERE entry = 46685;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(46685,1,26173,0);

-- Thassarian
DELETE FROM npc_gossip WHERE npc_guid = 101303;
DELETE FROM creature_template_addon WHERE entry = 26170;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(26170,0,0,1,1,0,0,50995);

-- High Deathpriest Isidorus
UPDATE creature_template SET MovementType = 2 WHERE Entry = 26171;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 101355;
DELETE FROM creature_movement WHERE id = 101355;
DELETE FROM creature_movement_template WHERE entry = 26171;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(26171,1,3301.53,3685.22,32.5513,6000,2617101,4.17134);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2617101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2617101,0,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Fleeing Cultist
-- missing added - WoTLK free guids reused
DELETE FROM creature_addon WHERE guid IN (140947);
DELETE FROM creature_movement WHERE id IN (140947);
DELETE FROM game_event_creature WHERE guid IN (140947);
DELETE FROM game_event_creature_data WHERE guid IN (140947);
DELETE FROM creature_battleground WHERE guid IN (140947);
DELETE FROM creature_linking WHERE guid IN (140947)
OR master_guid IN (140947);
DELETE FROM creature WHERE guid IN (140947);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(140947,26189,571,1,1,0,0,3324.54,3692.76,32.4366,0.772935,15,45,0,0,9082,2991,0,2);
-- Updates
UPDATE creature SET position_x = 3326.143799, position_y = 3685.778809, position_z = 32.434845, orientation = 6.000155, spawntimesecsmin = 15, spawntimesecsmax = 45, spawndist = 0, MovementType = 2 WHERE guid = 102713;
UPDATE creature SET position_x = 3325.825439, position_y = 3686.762695, position_z = 32.436146, orientation = 5.804603, spawntimesecsmin = 15, spawntimesecsmax = 45, spawndist = 0, MovementType = 2 WHERE guid = 102738;
UPDATE creature SET position_x = 3325.403809, position_y = 3692.391113, position_z = 32.436203, orientation = 0.738640, spawntimesecsmin = 15, spawntimesecsmax = 45, spawndist = 0, MovementType = 2 WHERE guid = 102714;
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (102713,102738,102714,140947);
DELETE FROM creature_movement WHERE id IN (102713,102738,102714,140947);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #102713
(102713,1,3326.143799,3685.778809,32.434845,0,5,6.000155),
(102713,2,3327.48,3684.99,32.4327,0,9,5.53389),
(102713,3,3332.16,3680.34,32.4089,0,0,5.77344),
(102713,4,3344.52,3675.67,32.4318,0,0,5.90695),
(102713,5,3358.68,3670.57,20.7044,0,0,5.95015),
(102713,6,3365.33,3668.05,20.8041,0,0,5.42393),
(102713,7,3372.72,3655.52,21.1557,0,0,4.88437),
(102713,8,3372.66,3638.69,21.0977,0,0,4.68174),
(102713,9,3372.35,3616.39,20.9278,2000,2618901,4.71709),
-- #102738
(102738,1,3325.825439,3686.762695,32.436146,0,5,5.804603),
(102738,2,3328.08,3685.31,32.432,0,9,5.61267),
(102738,3,3333.88,3680.83,32.3997,0,0,5.79724),
(102738,4,3344.79,3676.13,32.4316,0,0,5.86792),
(102738,5,3358.17,3670.24,20.748,0,0,5.86793),
(102738,6,3363.34,3667.55,20.7431,0,0,5.5577),
(102738,7,3368.47,3661.97,20.9749,0,0,5.03305),
(102738,8,3369.85,3647.05,21.0828,0,0,4.73304),
(102738,9,3369.48,3615.22,21.1709,2000,2618901,4.73696),
-- #102714
(102714,1,3325.403809,3692.391113,32.436203,0,5,0.738640),
(102714,2,3326.06,3693.48,32.4345,0,9,0.924927),
(102714,3,3331.92,3700.57,32.4005,0,0,0.723839),
(102714,4,3341.01,3707.27,32.4318,0,0,0.562832),
(102714,5,3353.47,3714.18,21.5024,0,0,0.492146),
(102714,6,3366.85,3714.72,21.7205,0,0,5.86191),
(102714,7,3378.53,3704.78,21.9413,0,0,5.55404),
(102714,8,3389.18,3693.69,21.2981,0,0,5.2446),
(102714,9,3396.24,3667.11,19.844,0,0,4.7655),
(102714,10,3398.16,3632.91,18.382,2000,2618901,4.78906),
-- #140947
(140947,1,3324.54,3692.76,32.4366,0,5,0.772935),
(140947,2,3326.06,3693.48,32.4345,0,9,0.924927),
(140947,3,3332.6,3700.17,32.3982,0,0,0.693212),
(140947,4,3340.63,3708.63,32.4319,0,0,0.504717),
(140947,5,3353.88,3714.07,21.5039,0,0,0.26517),
(140947,6,3360.84,3715.85,21.5455,0,0,0.0177696),
(140947,7,3368.14,3710.26,21.6697,0,0,5.50771),
(140947,8,3379.11,3697.9,21.7296,0,0,5.25639),
(140947,9,3385.83,3678.35,21.0381,0,0,4.89903),
(140947,10,3388.94,3658.54,20.6177,0,0,4.85977),
(140947,11,3391.87,3637.75,19.8821,2000,2618901,4.88725);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2618901;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2618901,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2618901,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'desp');
-- Pool Templates -- Pool 1
DELETE FROM pool_template WHERE entry = 16462;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(16462, 1, 'Borean Tundra - Fleeing Cultist/Fleeing Cultist - Pool 1');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 16462;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(102738, 16462, 0, 'Borean Tundra - Fleeing Cultist'),
(102713, 16462, 0, 'Borean Tundra - Fleeing Cultist');
-- Pool Templates -- Pool 2
DELETE FROM pool_template WHERE entry = 16463;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(16463, 1, 'Borean Tundra - Fleeing Cultist/Fleeing Cultist - Pool 2');
-- Individual Creature Spawn Pools
DELETE FROM pool_creature WHERE pool_entry = 16463;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(102714, 16463, 0, 'Borean Tundra - Fleeing Cultist'),
(140947, 16463, 0, 'Borean Tundra - Fleeing Cultist');
