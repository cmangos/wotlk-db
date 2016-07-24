-- Borean Tundra - Warsong Hold

-- Off-duty Battleguard
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (125598,125599,125600);
UPDATE creature_addon SET bytes1 = 0 WHERE guid = 125599;
DELETE FROM creature_movement WHERE id IN (125598,125599,125600);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(125598, 1, 2804.24,6143.08,84.9222, 7000, 2610902,3.80482, 0, 0),
(125598, 2, 2804.24,6143.08,84.9222, 15000, 0,3.80482, 0, 0),
-- #2
(125599, 1, 2785.14,6156.05,84.759, 5000, 2610901,1.20428, 0, 0),
-- #3
(125600, 1, 2802.17,6138.01,84.7706, 8000, 0,1.72788, 0, 0),
(125600, 2, 2802.17,6138.01,84.7706, 13000, 2610902,1.72788, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2610901,2610902); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2610901,0,15,6606,0,0,0,0,0,0,0,0,0,0,0,0,'cast - Self Visual - Sleep Until Cancelled (DND)'),
(2610901,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2610902,1,15,42871,0,0,0,0,0,0,0,0,0,0,0,0,'cast - Cosmetic - Drink Tankard');

-- Goblin Siege Engineer
DELETE FROM creature_addon WHERE guid IN (125558,125559,125560,125561,125562,125563,125564,125565,125567,125568);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
-- stateEmote 133
(125558,0,0,1,1,133,0,NULL),
(125559,0,0,1,1,133,0,NULL),
(125560,0,0,1,1,133,0,NULL),
(125561,0,0,1,1,133,0,NULL),
(125564,0,0,1,1,133,0,NULL),
(125567,0,0,1,1,133,0,NULL),
(125562,0,0,1,1,133,0,NULL),
-- stateEmote 233
(125563,0,0,1,1,233,0,NULL),
(125565,0,0,1,1,233,0,NULL),
(125568,0,0,1,1,233,0,NULL);
-- 2 should have waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (125563,125567);
DELETE FROM creature_movement WHERE id IN (125563,125567);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1
(125563,1,2847.96,6106.53,83.3745, 45000, 0,4.86947, 0, 0),
(125563,2,2847.96,6106.53,83.3745, 5000, 2527601,4.86947, 0, 0),
(125563,3,2847.96,6106.53,83.3745, 300000, 0,4.86947, 0, 0),
-- #2
(125567,1,2822.2,6112.62,83.4125, 5000, 2527602,3.735, 0, 0),
(125567,2,2822.2,6112.62,83.4125, 240000, 0,3.735, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2527601,2527602); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2527601, 1, 0, 0, 0, 0, 0, 0, 2000000948, 0, 0, 0, 0, 0, 0, 0, ''),
(2527602, 1, 0, 0, 0, 0, 0, 0, 2000000949, 2000000950, 0, 0, 0, 0, 0, 0, '');
-- texts
DELETE FROM db_script_string WHERE entry BETWEEN 2000000948 AND 2000000950;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000948, 'What\'s this meeting about?', 0, 0, 0, 0, NULL),
(2000000949, 'These tools are junk!', 0, 0, 0, 0, NULL),
(2000000950, 'How do they expect us to craft with these things!', 0, 0, 0, 0, NULL);

-- Sauranok the Mystic
UPDATE creature SET MovementType = 2 WHERE guid = 125538;
DELETE FROM creature_movement WHERE id = 125538;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 25272;
DELETE FROM creature_movement_template WHERE entry = 25272;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(25272, 1, 2852.37,6182.95,85.7528, 0, 0,4.61745, 0, 0),
(25272, 2, 2843.68,6167.2,85.664, 0, 0,3.68126, 0, 0),
(25272, 3, 2850.46,6175.86,85.7056, 0, 0,1.21525, 0, 0),
(25272, 4, 2852.51,6185.29,85.7944, 0, 0,1.79252, 0, 0),
(25272, 5, 2849.13,6193.11,85.8217, 0, 0,2.1538, 0, 0),
(25272, 6, 2841.5,6198.93,85.8079, 0, 0,2.83553, 0, 0),
(25272, 7, 2834.71,6200.4,85.744, 0, 0,3.11984, 0, 0),
(25272, 8, 2827.02,6198.35,85.6861, 0, 0,3.57538, 0, 0),
(25272, 9, 2822.35,6195.29,85.6601, 0, 0,3.78743, 0, 0),
(25272, 10, 2828.55,6199.05,85.6978, 0, 0,0.403936, 0, 0),
(25272, 11, 2834.81,6200.4,85.7452, 0, 0,6.21824, 0, 0),
(25272, 12, 2843.51,6197.95,85.8142, 0, 0,5.82162, 0, 0);

-- Chief Engineer Leveny <Engineering Trainer>
UPDATE creature SET MovementType = 2 WHERE guid = 125569;
DELETE FROM creature_movement WHERE id = 125569;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 25277;
DELETE FROM creature_movement_template WHERE entry = 25277;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(25277, 1, 2833.51,6113.1,83.4948, 0, 0,2.57395, 0, 0),
(25277, 2, 2822.53,6119.26,83.5271, 0, 0,2.61558, 0, 0),
(25277, 3, 2834.15,6112.69,83.4931, 0, 0,6.02656, 0, 0),
(25277, 4, 2847.73,6109.68,83.4262, 0, 0,5.99278, 0, 0);
