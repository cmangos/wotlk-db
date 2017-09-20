-- Bor'gorok Outpost - Borean Tundra

-- Bor'gorok Battleguard
DELETE FROM creature_template_addon WHERE entry = 27073;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27073,0,0,1,1,0,0,NULL);
-- individual addons
DELETE FROM creature_addon WHERE guid IN (114134,114135);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(114134,24456,0,1,1,0,0,NULL),
(114135,24456,0,1,1,0,0,NULL);
-- Updates
UPDATE creature SET position_x = 4456.160156, position_y = 5721.782227, position_z = 80.507568, orientation = 4.02999, spawndist = 0, MovementType = 0 WHERE guid = 114135;
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (114134);
DELETE FROM creature_movement WHERE id IN (114134);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #114134
(114134,1,4454.45,5723.12,80.0581,0,5,4.02999),
(114134,2,4452.3,5713.82,79.6021,0,0,4.71732),
(114134,3,4451.85,5703.36,77.7702,0,0,4.81942),
(114134,4,4452.87,5690.67,75.2253,0,0,4.67805),
(114134,5,4451.3,5679.53,70.4623,0,0,4.14791),
(114134,6,4443.33,5669.67,65.5193,0,0,4.25853),
(114134,7,4439.97,5658.85,62.5311,0,0,4.65122),
(114134,8,4445.08,5649.81,61.1496,0,0,5.7243),
(114134,9,4460.89,5641.99,59.4375,0,0,5.56879),
(114134,10,4466.91,5637.85,61.8289,0,0,5.68267),
(114134,11,4469.13,5635.3,59.7561,0,0,5.36459),
(114134,12,4473.88,5628.39,59.8711,0,0,5.2507),
(114134,13,4478.17,5615.24,58.775,0,0,5.18002),
(114134,14,4485.87,5607.59,58.3484,0,0,5.75728),
(114134,15,4501.04,5599.12,57.6986,0,0,5.95755),
(114134,16,4513.95,5596.3,57.2851,0,0,0.149528),
(114134,17,4530.14,5599.69,57.3816,0,0,0.467614),
(114134,18,4545.81,5608.48,55.3319,0,0,0.648256),
(114134,19,4557.01,5618.91,56.7401,0,0,0.762138),
(114134,20,4569.73,5633.24,59.7766,0,0,0.844605),
(114134,21,4578.56,5643.65,62.2582,0,0,0.609771),
(114134,22,4587.67,5651.55,64.498,0,0,0.846961),
(114134,23,4592.03,5658.53,65.0006,0,0,1.24751),
(114134,24,4593.71,5670.31,66.1618,0,0,1.44779),
(114134,25,4595.22,5684.91,66.9515,0,0,1.48706),
(114134,26,4596.6,5699.07,66.5895,0,0,1.52265),
(114134,27,4596.55,5711.82,65.9963,0,0,1.63889),
(114134,28,4592.94,5724.43,63.978,0,0,1.87451),
(114134,29,4584.02,5742.62,62.041,0,0,2.01588),
(114134,30,4577.36,5756.55,61.7634,0,0,2.04729),
(114134,31,4572.47,5763.5,64.8875,0,0,2.2405),
(114134,32,4568.25,5768.2,63.662,0,0,2.31904),
(114134,33,4556.03,5778.81,64.5754,0,0,2.25071),
(114134,34,4549.44,5786.48,65.9326,0,0,2.27427),
(114134,35,4541.99,5791.69,67.7748,0,0,2.8594),
(114134,36,4534.56,5792.15,68.9889,0,0,3.22461),
(114134,37,4526.66,5790.8,72.7203,0,0,3.42095),
(114134,38,4520.56,5786.65,76.0007,0,0,3.77831),
(114134,39,4515.48,5783.18,77.1088,0,0,3.71548),
(114134,40,4499.44,5772.87,77.9139,0,0,3.82544),
(114134,41,4488.53,5763.88,79.6583,0,0,3.88434),
(114134,42,4479.56,5752.6,79.6303,0,0,4.03749),
(114134,43,4472.52,5743.57,78.2843,0,0,4.0964),
(114134,44,4465.43,5734.7,78.4041,0,0,3.94325);
-- link
DELETE FROM creature_linking WHERE guid = 114135;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(114135, 114134, 512+1);

-- Spirit Talker Snarlfang
DELETE FROM creature_template_addon WHERE entry = 25339;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(25339,0,0,0,1,0,0,NULL);
UPDATE creature_template SET GossipMenuId = 9154 WHERE entry = 25339; 
DELETE FROM gossip_menu WHERE entry = 9154;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(9154, 12387, 0, 0);

-- Snarlfang's Totem
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid = 106188;

-- Vrok
DELETE FROM creature_template_addon WHERE entry = 27063;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27063,0,0,1,1,0,0,NULL);

-- Kimbiza
DELETE FROM creature_template_addon WHERE entry = 26848;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(26848,0,0,0,1,0,0,NULL);

-- Breka Wolfsister <Stable Master>
DELETE FROM creature_template_addon WHERE entry = 27065;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27065,0,0,0,1,0,0,NULL);
UPDATE creature SET position_x = 4496.309570, position_y = 5700.625977, position_z = 81.430321, orientation = 3.005918, spawndist = 0, MovementType = 2 WHERE guid = 113420;
UPDATE creature_template SET GossipMenuId = 9821 WHERE entry = 27065;
DELETE FROM creature_movement WHERE id = 113420;
DELETE FROM creature_movement_template WHERE entry = 27065;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(27065,1,4496.309570,5700.625977,81.430321,150000,0,3.005918),
(27065,2,4494.58,5696.49,81.4078,0,0,5.86448),
(27065,3,4497.76,5695.37,81.4283,3000,0,5.98229),
(27065,4,4494.69,5696.49,81.4079,0,0,1.14581),
(27065,5,4496.309570,5700.625977,81.430321,150000,0,3.005918);

-- Overlord Bor'gorok
DELETE FROM creature_template_addon WHERE entry = 25326;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(25326,14574,0,1,1,0,0,NULL);
UPDATE creature_template SET GossipMenuId = 9151 WHERE entry = 25326; 
DELETE FROM gossip_menu WHERE entry = 9151;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(9151, 12382, 0, 0);

-- Drigoth
DELETE FROM creature_template_addon WHERE entry = 27067;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27067,0,0,0,1,0,0,NULL);

-- Matron Magah
DELETE FROM creature_template_addon WHERE entry = 27069;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27069,0,0,0,1,0,0,NULL);

-- Supply Master Taz'ishi
DELETE FROM creature_template_addon WHERE entry = 25736;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(25736,0,0,0,1,0,0,NULL);
UPDATE creature_template SET GossipMenuId = 9474 WHERE entry = 25736; 
DELETE FROM gossip_menu WHERE entry = 9474;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(9474, 12732, 0, 0);

-- Ortrosh
UPDATE creature_template SET GossipMenuId = 9163 WHERE entry = 25374; 
DELETE FROM gossip_menu WHERE entry = 9163;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(9163, 12419, 0, 0);

-- Korag Keeneye
DELETE FROM creature_template_addon WHERE entry = 27058;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27058,0,0,0,1,0,0,NULL);

-- Bor'gorok Peon
UPDATE creature_template SET EquipmentTemplateId = 70 WHERE entry = 26112;
UPDATE creature SET equipment_id = 2 WHERE guid IN (95358,95431); -- idividual equipment
DELETE FROM creature_template_addon WHERE entry = 26112;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(26112,0,0,1,1,0,0,NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26112);
-- individual addons
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(95359,0,0,0,1,0,0,'45787');
-- Waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (95346,95358,95362,95364,95365,95430,95431);
DELETE FROM creature_movement WHERE id IN (95346,95358,95362,95364,95365,95430,95431);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #95346
(95346,1,4496.23,5690,81.4918,41000,2611202,4.2237),
(95346,2,4496.23,5690,81.4918,43000,2611202,4.2237),
(95346,3,4496.23,5690,81.4918,20000,2611204,1.138558),
-- #95358
(95358,1,4491.27,5715.85,81.4253,45000,2611203,0.314159),
(95358,2,4491.27,5715.85,81.4253,15000,2611201,3.42443),
-- #95362
(95362,1,4465.78,5723.72,80.7318,40000,2611205,0.005610645),
(95362,2,4465.78,5723.72,80.7318,40000,2611202,3.14159),
-- #95364
(95364,1,4509.77,5743.84,80.643,42000,2611202,0.925025),
(95364,2,4509.77,5743.84,80.643,17000,2611201,3.584325),
-- #95365
(95365,1,4459.46,5712.18,81.235,40000,2611202,0.08726646),
(95365,2,4459.46,5712.18,81.235,42000,2611202,0.08726646),
(95365,3,4459.46,5712.18,81.235,15000,2611201,3.162401),
-- #95430
(95430,1,4483.94,5695.14,81.4006,15000,2611201,1.93992),
(95430,2,4483.94,5695.14,81.4006,40000,2611202,5.044002),
-- #95431
(95431,1,4506.53,5728.92,81.4224,40000,2611205,1.615169),
(95431,2,4506.53,5728.92,81.4224,45000,2611203,4.67748);
-- Scripts
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2611201 AND 2611205;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
-- rest
(2611201,2,15,46581,0,0,0,0,0,46583,0,0,0,0,0,0,0,''),
(2611201,12,14,46581,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2611201,12,14,46583,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2611201,13,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
-- work -- wood
(2611202,2,1,234,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2611202,37,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
-- work -- metal
(2611203,2,1,233,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2611203,43,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
-- rest 2
(2611204,2,15,46581,0,0,0,0,0,46583,0,0,0,0,0,0,0,''),
(2611204,17,14,46581,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2611204,17,14,46583,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2611204,18,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND'),
-- rest 3
(2611205,2,15,46581,0,0,0,0,0,46583,0,0,0,0,0,0,0,''),
(2611205,17,14,46581,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2611205,17,14,46583,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2611205,38,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'STATE_STAND');
