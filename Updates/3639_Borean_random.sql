-- Warsong Wind Rider 25286
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 25286);
DELETE FROM creature_template_addon WHERE entry = 25286;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(25286,23056,0,1,1,0,0,NULL);
UPDATE creature_template SET InhabitType = 3 WHERE entry = 25286;

-- Wind Rider Sabamba 35135
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 35135);
DELETE FROM creature_template_addon WHERE entry = 35135;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(35135,17719,0,1,1,0,0,NULL);
UPDATE creature_template SET InhabitType = 3 WHERE entry = 35135;
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE id = 35135;
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 35135);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2528601,2528602,2528603,2528604,3513501);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2528601,0,39,0,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'fly off'),
(2528601,100,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(2528601,200,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2528602,0,39,0,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'fly off'),
(2528602,2000,32,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'pause wp'),
(2528603,0,25,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN ON'),
(2528603,1,39,1,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'fly on'),
(2528604,0,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'RUN OFF'),
(2528604,1,39,0,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'fly off');

-- Kel'Thuzad 25465
UPDATE creature_template SET visibilityDistanceType = 3 WHERE entry = 25465;
