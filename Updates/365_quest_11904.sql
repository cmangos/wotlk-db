-- q.11904 'Fruits of Our Labor'
DELETE FROM dbscripts_on_event WHERE id = 17451; 
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17451,1,31,25986,20,0,0,0,0,0,0,0,0,0,0,0,'search for 25986'),
(17451,2,0,0,0,25986,20,7,2000000804,0,0,0,0,0,0,0,''),
(17451,2,21,1,0,25986,20,7,0,0,0,0,0,0,0,0,'active'),
(17451,2,20,2,0,25986,20,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoints');
UPDATE creature SET Spawndist = 0, MovementType = 0 WHERE id = 25986; -- will be changed by quest
UPDATE creature_template SET MovementType = 0 WHERE Entry = 25986;
DELETE FROM creature_movement_template WHERE entry = 25986;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES 
(25986,1,2797.49,5277.37,22.0435, 0, 0,2.09378, 0, 0),
(25986,2,2794.32,5281.92,22.4205, 0, 0,2.38359, 0, 0),
(25986,3,2790.66,5285.51,21.9443, 0, 0,2.52497, 0, 0),
(25986,4,2783.22,5291.11,22.7502, 0, 0,2.43465, 0, 0),
(25986,5,2776.37,5297,24.6788, 0, 0,2.68126, 0, 0),
(25986,6,2772.41,5299.31,25.5129, 0, 0,2.97893, 0, 0),
(25986,7,2767.82,5300.13,26.1103, 0, 0,3.34178, 0, 0),
(25986,8,2764.16,5299.4,26.2145, 0, 0,3.66065, 0, 0),
(25986,9,2760.57,5297.91,26.187, 0, 0,3.74233, 0, 0),
(25986,10,2757.37,5295.31,25.8549, 0, 0,4.23713, 0, 0),
(25986,11,2755.49,5291.84,25.142, 0, 0,3.97638, 0, 0),
(25986,12,2752.95,5288.89,24.7977, 0, 0,3.73212, 0, 0),
(25986,13,2748.91,5286.94,24.7359, 0, 0,3.52635, 0, 0),
(25986,14,2746.13,5285.9,24.8515, 0, 0,3.3944, 0, 0),
(25986,15,2733.06,5284.92,27.2962, 3000, 2598601,3.15329, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2598601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2598601,1,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2598601,1,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(2598601,2,18,1,0,0,0,0,0,0,0,0,0,0,0,0,'desp'),
(2598601,3,41,0,0,0,0,0,0,0,0,0,0,0,0,0,'resp');
DELETE FROM db_script_string WHERE entry = 2000000804;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000804,'The ore cart squeaks against the rails as it is released.',0,2,0,0,NULL);
