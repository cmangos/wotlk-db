-- Zeb'halak - Grizzly Hills

-- Scourge Deathspeaker 27615
UPDATE creature SET position_x = 4229.809, position_y = -2034.294, position_z = 237.5352, orientation = 5.113815, spawndist = 0, MovementType = 0 WHERE guid = 519265;
UPDATE creature SET position_x = 4216.842, position_y = -2068.04, position_z = 239.1082, orientation = 0.418879, spawndist = 0, MovementType = 0 WHERE guid = 519266;
UPDATE creature SET position_x = 4262.659, position_y = -2047.188, position_z = 238.5674, orientation = 3.577925, spawndist = 0, MovementType = 0 WHERE guid = 519262;
DELETE FROM dbscripts_on_relay WHERE id = 20536;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20536,0,31,27452,30,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Scourge Deathspeaker EAI: search for 27452'),
(20536,100,15,49119,4,0,27452,35,1,0,0,0,0,0,0,0,0,'Part of Scourge Deathspeaker EAI: cast Fire Beam');

-- Diseased Drakkari 26457
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 26457);
UPDATE creature SET position_x = 4134.981445, position_y = -2044.590332, position_z = 218.517166 WHERE guid = 514211;
UPDATE creature SET position_x = 4248.518066, position_y = -1989.763550, position_z = 206.698166, orientation = 4.590920 WHERE guid = 514212;
UPDATE creature SET spawndist = 7, MovementType = 1 WHERE guid IN (514214,514201);
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (514204,514212);
DELETE FROM creature_movement WHERE id IN (514201,514204,514212);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
-- 514204
(514204,1,4245.87,-1906.5,201.629,100,1000,0),
(514204,2,4240.57,-1909.83,201.809,100,0,0),
(514204,3,4239.99,-1924.36,201.812,100,0,0),
(514204,4,4255.31,-1922.98,202.393,100,0,0),
(514204,5,4256.36,-1911.08,201.922,100,1000,0),
(514204,6,4255.73,-1922.54,202.386,100,0,0),
(514204,7,4240.39,-1924.41,201.828,100,0,0),
(514204,8,4240.18,-1910.32,201.798,100,0,0),
-- 514212
(514212,1,4247.6,-2001.2,216.915,100,0,0),
(514212,2,4246.4,-2011.14,226.646,100,0,0),
(514212,3,4245.42,-2017.3,232.99,100,0,0),
(514212,4,4244.67,-2021.89,237.319,100,0,0),
(514212,5,4246.06,-2012.09,227.651,100,0,0),
(514212,6,4247.3,-2002.27,217.963,100,0,0),
(514212,7,4248.73,-1989.75,206.714,100,0,0),
(514212,8,4250.21,-1974.9,205.976,100,0,0),
(514212,9,4248.7,-1989.26,206.688,100,0,0);
DELETE FROM dbscripts_on_relay WHERE id = 20537;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20537,0,31,27613,40,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Diseased Drakkari EAI: search for 27613'),
(20537,10,37,0,0,0,27613,45,1,0,0,0,0,0,0,0,0,'Part of Diseased Drakkari EAI: move towards target'),
(20537,5000,15,48141,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Diseased Drakkari EAI: cast 48141'),
(20537,10000,14,48141,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Diseased Drakkari EAI: cancel 48141');
