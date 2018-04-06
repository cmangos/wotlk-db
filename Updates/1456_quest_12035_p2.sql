-- q.12035 'Repurposed Technology' Part 2.

-- Scripts
DELETE FROM dbscript_random_templates WHERE id = 20029;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20029,1,20035,0,'26561 - Random Scripts'),
(20029,1,20036,0,'26561 - Random Scripts'),
(20029,1,20037,0,'26561 - Random Scripts'),
(20029,1,20038,0,'26561 - Random Scripts');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20035 AND 20038;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20035,3,10,26658,180000,0,0,0,0x08,1,0,0,0,2528.77,5203.56,37.4074,5.49385,'summon Reckless Scavenger'),
(20036,3,10,26658,180000,0,0,0,0x08,1,0,0,0,2551.15,5182.24,37.4074,2.36011,'summon Reckless Scavenger'),
(20037,3,10,26658,180000,0,0,0,0x08,1,0,0,0,2581.92,5217.3,37.4075,2.46614,'summon Reckless Scavenger'),
(20038,3,10,26658,180000,0,0,0,0x08,1,0,0,0,2564.05,5234.55,37.408,5.56296,'summon Reckless Scavenger');

-- Plagued Scavenger
UPDATE creature SET position_x = 2506.405762, position_y = 5314.796387, position_z = 33.073895, spawndist = 0, MovementType = 2 WHERE guid = 100584;
DELETE FROM creature_movement WHERE id = 100584;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(100584,1,2503.93,5277.29,31.1471,0,5,4.57157),
(100584,2,2499.21,5256.23,31.0191,0,0,4.43413),
(100584,3,2487,5217.64,30.402,30000,0,4.39093);
