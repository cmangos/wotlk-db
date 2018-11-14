-- New Agamand - Howling Fjord

-- duplicates
DELETE FROM creature WHERE guid IN (108796);
DELETE FROM creature_addon WHERE guid IN (108796);
DELETE FROM creature_movement WHERE id IN (108796);
DELETE FROM game_event_creature WHERE guid IN (108796);
DELETE FROM game_event_creature_data WHERE guid IN (108796);
DELETE FROM creature_battleground WHERE guid IN (108796);
DELETE FROM creature_linking WHERE guid IN (108796) 
OR master_guid IN (108796);

-- Deathstalker Hayward 24768
DELETE FROM creature_template_addon WHERE entry = 24768;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(24768,10670,0,1,0,0,0,NULL);
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 113949;
UPDATE creature_template SET MovementType = 2 WHERE entry = 24768;
DELETE FROM creature_movement_template WHERE entry = 24768;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(24768,1,421.434,-4637.48,244.023,0,0,0.0805003),
(24768,2,431.607,-4637.94,245.046,0,0,6.26126),
(24768,3,438.232,-4636.96,245.813,0,0,0.838085),
(24768,4,439.811,-4628.8,245.136,0,0,1.51736),
(24768,5,441.177,-4614.98,243.891,0,0,1.4506),
(24768,6,442.782,-4597.89,243.321,0,0,1.53699),
(24768,7,443.323,-4583.02,243.847,0,0,1.5959),
(24768,8,444.1,-4567.24,244.913,0,0,1.79225),
(24768,9,436.954,-4557.54,245.569,0,0,2.33674),
(24768,10,426.261,-4549.91,245.618,0,0,3.32713),
(24768,11,418.899,-4554.6,245.298,0,0,3.58238),
(24768,12,410.01,-4555.1,244.756,0,0,3.20539),
(24768,13,395.938,-4555.95,244.45,0,0,3.71197),
(24768,14,391.562,-4562.67,245.119,0,0,4.1806),
(24768,15,381.238,-4577.78,245.319,0,0,4.3691),
(24768,16,379.736,-4587.17,244.762,0,0,4.52077),
(24768,17,377.45,-4601.18,244.368,0,0,4.59931),
(24768,18,375.832,-4626.41,244.764,0,0,5.11767),
(24768,19,378.695,-4635.05,245.328,0,0,5.29438),
(24768,20,390.047,-4646.73,244.956,0,0,5.95019),
(24768,21,399.947,-4648.4,244.228,0,0,6.19744),
(24768,22,408.903,-4645.22,243.66,0,0,0.558273);

-- New Agamand Deathguard 24104
-- missing spawns added -- Free WoTLKDB guids reused
DELETE FROM creature_addon WHERE guid BETWEEN 141302 AND 141307;
DELETE FROM creature_movement WHERE id BETWEEN 141302 AND 141307;
DELETE FROM creature_linking WHERE guid BETWEEN 141302 AND 141307;
DELETE FROM creature_linking WHERE master_guid BETWEEN 141302 AND 141307;
DELETE FROM creature WHERE guid BETWEEN 141302 AND 141307;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(141302,24104,571,1,1,0,0,377.023,-4569.25,245.281,4.58692,300,300,0,0,21270,0,0,0),
(141303,24104,571,1,1,0,0,388.9523,-4699.102,238.8697,5.707227,300,300,0,0,21270,0,0,0),
(141304,24104,571,1,1,0,0,364.0733,-4685.601,245.5645,4.834562,300,300,0,0,21270,0,0,0),
(141305,24104,571,1,1,0,0,342.0702,-4637.75,245.0447,2.687807,300,300,0,0,21270,0,0,0),
(141306,24104,571,1,1,0,0,339.4209,-4618.624,238.6583,3.333579,300,300,0,0,21270,0,0,0),
(141307,24104,571,1,1,0,0,345.4235,-4669.982,245.543,4.206244,300,300,0,0,21270,0,0,0);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 24104);
DELETE FROM creature_template_addon WHERE entry = 24104;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(24104,0,0,1,1,0,0,18950);
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (141302);
DELETE FROM creature_movement WHERE id IN (141302);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #141302
(141302,1,374.81,-4578.89,245.623,0,0,4.53194),
(141302,2,372.912,-4592.39,245.331,0,0,4.58692),
(141302,3,371.009,-4606.31,244.964,0,0,4.1628),
(141302,4,365.966,-4611.77,243.675,0,0,3.85257),
(141302,5,357.888,-4619.37,242.367,0,0,4.33166),
(141302,6,357.772,-4632.62,243.926,0,0,4.78719),
(141302,7,356.976,-4639.71,245.078,0,0,5.82784),
(141302,8,371.141,-4646.66,245.53,0,0,5.86711),
(141302,9,384.411,-4653.37,244.975,0,0,5.90246),
(141302,10,393.787,-4657.46,243.942,0,0,5.88282),
(141302,11,405.538,-4662.29,244.187,0,0,5.91816),
(141302,12,413.153,-4665.91,246.961,0,0,5.88282),
(141302,13,421.057,-4668.99,246.547,0,0,5.96529),
(141302,14,429.996,-4672.38,247.177,0,0,5.91424),
(141302,15,441.166,-4677.21,246.868,0,0,5.87889),
(141302,16,452.758,-4681.67,247.012,0,0,6.15378),
(141302,17,461.977,-4681.36,246.933,0,0,0.208316),
(141302,18,471.565,-4674.63,247.012,0,0,0.700331),
(141302,19,476.613,-4667.84,247.087,0,0,1.19121),
(141302,20,481.03,-4653.79,247.087,0,0,1.5839),
(141302,21,479.752,-4642.74,247.087,0,0,1.68208),
(141302,22,479.009,-4631.96,247.079,0,0,1.42683),
(141302,23,482.49,-4618.88,246.495,0,0,1.30116),
(141302,24,485.348,-4604.64,244.637,0,0,1.57858),
(141302,25,482.58,-4598.47,245.769,0,0,1.99877),
(141302,26,478.636,-4584.78,246.326,0,0,1.84562),
(141302,27,478.663,-4580.02,246.102,0,0,1.31547),
(141302,28,482.048,-4573,245.386,0,0,1.3666),
(141302,29,482.692,-4565.55,245.033,0,0,1.53546),
(141302,30,482.017,-4559.53,245.524,0,0,1.0171),
(141302,31,488.854,-4548.16,244.753,0,0,1.29984),
(141302,32,489.096,-4544.58,244.193,0,0,1.70432),
(141302,33,487.302,-4542.24,244.231,0,0,2.23126),
(141302,34,483.056,-4536.39,246.136,0,0,2.17061),
(141302,35,470.399,-4517.05,246.131,0,0,1.98766),
(141302,36,467.146,-4509.04,244.947,0,0,2.08976),
(141302,37,462.743,-4505.58,244.235,0,0,2.74164),
(141302,38,456.244,-4506.8,245.037,0,0,3.52679),
(141302,39,440.393,-4514.67,246.716,0,0,3.78204),
(141302,40,435.403,-4524.67,246.844,0,0,4.2739),
(141302,41,430.388,-4529.24,246.876,0,0,3.84193),
(141302,42,420.91,-4537.98,246.573,0,0,3.50813),
(141302,43,410.2,-4537.22,246.273,0,0,3.03423),
(141302,44,400.302,-4536.36,246.063,0,0,3.08921),
(141302,45,395.001,-4536.34,245.443,0,0,3.41908),
(141302,46,380.245,-4540.29,244.096,0,0,3.94137),
(141302,47,378.685,-4553.38,245.199,0,0,4.57754),
(141302,48,377.242,-4568.94,245.339,0,0,4.61288);

-- "Hacksaw" Jenny 24252
UPDATE creature_template SET GossipMenuId = 8925 WHERE entry = 24252;
DELETE FROM gossip_menu WHERE entry = 8925;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8925, 11884, 0, 0);
DELETE FROM creature_template_addon WHERE entry = 24252;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(24252,0,0,1,0,173,0,NULL);

-- Basil Osgood 24149
UPDATE creature_template SET GossipMenuId = 348 WHERE entry = 24149;

-- Jennifer Owings 33018
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 88150;
UPDATE creature_template SET MovementType = 2 WHERE entry = 33018;
DELETE FROM creature_movement_template WHERE entry = 33018;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(33018,1,461.398,-4527.17,244.982,0,0,4.22432),
(33018,2,459.231,-4529.48,244.993,0,0,4.91076),
(33018,3,459.92,-4536.76,244.885,0,0,3.71773),
(33018,4,455.147,-4540.42,244.865,0,0,3.6633),
(33018,5,450.9782,-4541.846,244.8706,240000,0,3.769911),
(33018,6,454.488,-4540.72,244.866,0,0,0.482433),
(33018,7,459.531,-4537.08,244.88,0,0,0.698419),
(33018,8,459.189,-4529.97,244.997,0,0,1.1139),
(33018,9,461.263,-4527.69,244.987,0,0,1.94522),
(33018,10,456.461,-4519.241,244.978,6000,0,5.13394);

-- Megan Owings 33019
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 88151;
UPDATE creature_template SET MovementType = 2 WHERE entry = 33019;
DELETE FROM creature_movement_template WHERE entry = 33019;
INSERT INTO creature_movement_template (entry,point,position_x,position_y,position_z,waittime,script_id,orientation) VALUES
(33019,1,452.0133,-4543.45,244.8662,180000,0,3.665191),
(33019,2,448.476,-4544.58,244.864,0,0,2.9252),
(33019,3,445.929,-4542.31,244.872,5000,0,2.3338),
(33019,4,447.864,-4544.08,244.863,0,0,5.4839);

-- Plaguebringer Tillinghast 24157
UPDATE creature_template SET GossipMenuId = 8904 WHERE entry = 24157;
DELETE FROM gossip_menu WHERE entry = 8904;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(8904, 11724, 0, 0);

-- Assistant Apothecary 24081
-- missing spawns added -- Free WoTLKDB guids reused
DELETE FROM creature_addon WHERE guid BETWEEN 141308 AND 141311;
DELETE FROM creature_movement WHERE id BETWEEN 141308 AND 141311;
DELETE FROM creature_linking WHERE guid BETWEEN 141308 AND 141311;
DELETE FROM creature_linking WHERE master_guid BETWEEN 141308 AND 141311;
DELETE FROM creature WHERE guid BETWEEN 141308 AND 141311;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(141308,24081,571,1,1,0,0,372.6476,-4637.733,245.5651,2.251475,300,300,0,0,8982,0,0,0),
(141309,24081,571,1,1,0,0,370.8681,-4635.859,245.4404,5.77704,300,300,0,0,8982,0,0,0),
(141310,24081,571,1,1,0,0,372.3983,-4652.046,245.7243,4.834562,300,300,0,0,8982,0,0,0),
(141311,24081,571,1,1,0,0,375.8415,-4662.605,245.8437,2.6529,300,300,0,0,8982,0,0,0);
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (97847,97848,97849,97850,97860,97864,97870,97874);
UPDATE creature SET position_x = 354.6875, position_y = -4502.604, position_z = 244.5858, orientation = 1.500983, spawndist = 0, MovementType = 0 WHERE guid = 97859;
UPDATE creature SET position_x = 360.9375, position_y = -4496.354, position_z = 242.8851, orientation = 2.897247, spawndist = 0, MovementType = 0 WHERE guid = 97871;
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (97862,97863,97869,97872,141308,141309);
DELETE FROM creature_movement WHERE id IN (97862,97863,97869,97872,141308,141309);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #97862
(97862,1,461.8759,-4580.066,244.5305,3000,2408101,4.223697),
-- #97863
(97863,1,361.3745,-4505.708,243.2808,3000,2408101,3.717551),
-- #97869
(97869,1,461.0264,-4581.656,244.6469,3000,2408101,1.099557),
-- #97872
(97872,1,359.8499,-4506.616,243.6098,3000,2408101,0.4712389),
-- #141308
(141308,1,372.6476,-4637.733,245.5651,3000,2408101,2.251475),
-- #141309
(141309,1,370.8681,-4635.859,245.4404,3000,2408101,5.77704);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (97848,141310,141311);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(97848,0,0,1,1,69,0,NULL),
(141310,0,0,1,1,69,0,NULL),
(141311,0,0,1,1,69,0,NULL);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2408101;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2408101,1,35,5,1,0,0,0,0,0,0,0,0,0,0,0,0,'Send AI Event Type 5 (A) to Self'),
(2408101,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'idle');
DELETE FROM dbscript_random_templates WHERE id = 20053;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20053,1,30000,0,'24081 - Random Scripts'),
(20053,1,30001,0,'24081 - Random Scripts'),
(20053,1,30002,0,'24081 - Random Scripts'),
(20053,1,30003,0,'24081 - Random Scripts'),
(20053,1,30004,0,'24081 - Random Scripts'),
(20053,1,30005,0,'24081 - Random Scripts'),
(20053,1,30006,0,'24081 - Random Scripts');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 30000 AND 30006;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30000,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - emote 1'),
(30001,0,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - emote 5'),
(30002,0,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - emote 6'),
(30003,0,1,11,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - emote 11'),
(30004,0,1,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - emote 18'),
(30005,0,1,273,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - emote 273'),
(30006,0,1,274,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - emote 274');
