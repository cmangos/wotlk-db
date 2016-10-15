-- Transitus Shield - Borean Tundra

-- Warmage Watkins
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 120829;
DELETE FROM creature_movement WHERE id = 120829;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(120829,1,3589.54,6648.45,195.723,5000,2790401,5.13127,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2790401;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2790401,0,15,48310,0,27306,123744,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(2790401,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');

-- Warmage Calandra
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 121513;
DELETE FROM creature_movement WHERE id = 121513;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(121513,1,3595.29,6652.3,196.193,5000,2717301,6.14356,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2717301;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2717301,0,15,48310,0,27306,123745,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(2717301,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');

-- Warmage Hollister
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid = 120863;
DELETE FROM creature_movement WHERE id = 120863;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(120863,1,3589.94,6656.84,195.835,5000,2790601,1.02974,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2790601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2790601,0,15,48310,0,27306,123746,0x01 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(2790601,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');

-- Transitus Shield Invisible Bunny
DELETE FROM creature_template_addon WHERE entry = 27306;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27306,0,0,0,0,0,0,48387);

-- Backbiter - Stats
UPDATE creature_template SET Expansion = 2, RangedBaseAttackTime = 2000 WHERE entry = 32751;
