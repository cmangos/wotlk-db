-- Steeljaw's Caravan - Borean Tundra

-- Steeljaw's Corpse
UPDATE creature_template SET NpcFlags = 0 WHERE entry = 25384;

-- Longrunner Proudhoof
-- Gossip for Tuluun Corrected
UPDATE creature_template SET GossipMenuId = 9160 WHERE Entry = 25335;
DELETE FROM gossip_menu WHERE entry = 9160;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9160, 12403, 0, 0);

-- Grunt Ragefist
UPDATE creature_template SET GossipMenuId = 9153 WHERE Entry = 25336;
DELETE FROM gossip_menu WHERE entry = 9153;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9153, 12384, 0, 0);

-- General Update for Ghostly Sage/Risen Longrunner
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE id IN (25351,25350);

-- Ghostly Sage
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid IN (75947,75948,75949,75953);
DELETE FROM creature_addon WHERE guid IN (75947,75948,75949,75953);
DELETE FROM creature_movement WHERE id IN (75947,75948,75949,75953);
DELETE FROM game_event_creature WHERE guid IN (75947,75948,75949,75953);
DELETE FROM game_event_creature_data WHERE guid IN (75947,75948,75949,75953);
DELETE FROM creature_battleground WHERE guid IN (75947,75948,75949,75953);
DELETE FROM creature_linking WHERE guid IN (75947,75948,75949,75953) 
OR master_guid IN (75947,75948,75949,75953);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(75947,25351,571,1,1,0,0,4083.21,5748.86,60.3935,2.42702,300,300,7,0,7185,7196,0,1),
(75948,25351,571,1,1,0,0,3881.7,5610.62,44.4948,0.577005,300,300,7,0,7185,7196,0,1),
(75949,25351,571,1,1,0,0,3878.8,5645.93,50.8384,1.46927,300,300,7,0,6387,7031,0,1),
(75953,25351,571,1,1,0,0,3947.05,5588.67,42.1713,5.41921,300,300,7,0,7185,7196,0,1);
-- aura corrected
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25351);
UPDATE creature_template_addon SET auras = 42617 WHERE entry = 25351;
-- Updates
UPDATE creature SET position_x = 4056.145752, position_y = 5720.147949, position_z = 57.770519 WHERE guid = 97193;
UPDATE creature SET position_x = 3948.999023, position_y = 5779.342773, position_z = 73.452309 WHERE guid = 97201;
UPDATE creature SET position_x = 3941.666016, position_y = 5734.860840, position_z = 64.078453 WHERE guid = 97202;
UPDATE creature SET position_x = 4015.130615, position_y = 5726.883301, position_z = 62.068378 WHERE guid = 97208;
UPDATE creature SET position_x = 3953.568604, position_y = 5688.589355, position_z = 60.101139 WHERE guid = 97209;
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (97200,97211);
DELETE FROM creature_movement WHERE id IN (97200,97211);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #97200
(97200,1,4094.58,5777.73,64.7381,0,0,1.23629),
(97200,2,4097.24,5792.19,66.8663,0,0,1.39337),
(97200,3,4099.24,5807.41,70.103,0,0,1.73502),
(97200,4,4096.75,5818.4,71.7376,0,0,2.71677),
(97200,5,4084.56,5821.2,72.8617,0,0,3.45897),
(97200,6,4065.53,5813.82,74.8191,0,0,3.49435),
(97200,7,4054.98,5809.12,75.492,0,0,3.83443),
(97200,8,4040.41,5798.1,75.6117,0,0,3.82265),
(97200,9,4028.56,5779.29,72.5484,0,0,3.69306),
(97200,10,4009.5,5767.34,68.4754,0,0,4.05827),
(97200,11,4005.1,5758.08,66.4538,0,0,4.30228),
(97200,12,4000.16,5745.47,65.2758,0,0,5.22512),
(97200,13,4011.05,5735.43,62.8796,0,0,5.57462),
(97200,14,4024.41,5726.42,61.6262,0,0,5.89663),
(97200,15,4039.5,5725.5,60.3745,0,0,6.20294),
(97200,16,4058.55,5726.63,59.5597,0,0,0.439683),
(97200,17,4066.42,5735.4,61.1597,0,0,0.887104),
(97200,18,4081.41,5759.53,62.7784,0,0,0.942082),
-- #97211
(97211,1,3956.3,5708.89,61.9566,0,0,3.42119),
(97211,2,3944.78,5702.87,63.1628,0,0,3.6411),
(97211,3,3931.87,5694.65,62.5755,0,0,3.92228),
(97211,4,3922.35,5683.53,61.2197,0,0,4.02045),
(97211,5,3910.89,5669.36,57.2759,0,0,4.03223),
(97211,6,3898.33,5653.33,53.0223,0,0,4.75087),
(97211,7,3899.65,5639.11,51.8859,0,0,4.79407),
(97211,8,3901.86,5625.37,49.1029,0,0,5.29279),
(97211,9,3913.53,5614.57,47.5838,0,0,5.70669),
(97211,10,3925.49,5607.32,46.3065,0,0,0.735118),
(97211,11,3940.51,5619.83,45.3626,0,0,0.656578),
(97211,12,3954.39,5630.85,44.3876,0,0,0.687994),
(97211,13,3967.47,5640.92,46.8933,0,0,0.699775),
(97211,14,3983.24,5655.29,51.4739,0,0,0.625162),
(97211,15,3992.5,5662.76,53.1493,0,0,1.06106),
(97211,16,4000.91,5680.43,54.9579,0,0,1.23777),
(97211,17,4004.67,5698.39,58.1663,0,0,1.62733),
(97211,18,4002.34,5710.45,60.4955,0,0,2.55253),
(97211,19,3992.62,5712.64,60.7297,0,0,2.92001),
(97211,20,3968.81,5715.5,60.9603,0,0,3.11876);

-- Risen Longrunner
-- missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid IN (75954,76132,76133);
DELETE FROM creature_addon WHERE guid IN (75954,76132,76133);
DELETE FROM creature_movement WHERE id IN (75954,76132,76133);
DELETE FROM game_event_creature WHERE guid IN (75954,76132,76133);
DELETE FROM game_event_creature_data WHERE guid IN (75954,76132,76133);
DELETE FROM creature_battleground WHERE guid IN (75954,76132,76133);
DELETE FROM creature_linking WHERE guid IN (75954,76132,76133) 
OR master_guid IN (75954,76132,76133);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(75954,25350,571,1,1,0,0,3931.08,5619.68,46.5806,2.41981,300,300,7,0,7984,0,0,1),
(76132,25350,571,1,1,0,0,3947.98,5650.38,49.4047,1.48125,300,300,7,0,7984,0,0,1),
(76133,25350,571,1,1,0,0,3966.09,5616.21,42.845,0.472801,300,300,7,0,7984,0,0,1);
-- addon corrected
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25350);
UPDATE creature_template_addon SET auras = 42617 WHERE entry = 25350;
-- Updates
UPDATE creature SET position_x = 4020.524658, position_y = 5786.130859, position_z = 74.252449 WHERE guid = 97171;
UPDATE creature SET position_x = 4060.806396, position_y = 5754.879883, position_z = 66.043739 WHERE guid = 97174;
UPDATE creature SET position_x = 4082.810791, position_y = 5723.981445, position_z = 59.558147 WHERE guid = 97170;
UPDATE creature SET position_x = 4090.794189, position_y = 5778.667480, position_z = 65.745735 WHERE guid = 97164;
