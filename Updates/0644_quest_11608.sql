-- q.11608 'Bury Those Cockroaches!'
-- missing countdown added
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (125398,125399,125400,125401);
DELETE FROM creature_movement WHERE id IN (125398,125399,125400,125401);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #125398 - Nerub'ar Sinkhole (South)
(125398,1,2657.13,6171.35,38.9543,15000,2540501,4.81711),
-- #125399 - Nerub'ar Sinkhole (East)
(125399,1,2716.02,6020.79,31.2899,15000,2540501,1.58825),
-- #125400 - Nerub'ar Sinkhole (West)
(125400,1,2877.96,6276.01,60.9446,15000,2540501,5.44543),
-- #125401 - Nerub'ar Sinkhole (North)
(125401,1,2962.16,6187.47,62.0957,15000,2540501,1.85005);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2540501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2540501,3,31,25401,10,0,0,0,-14000,0,0,0,0,0,0,0,'search for 25401'),
-- if found alive
(2540501,4,0,0,0,25401,10,0x04,2000001041,0,0,0,0,0,0,0,'force 25401 to: say text'),
(2540501,6,0,0,0,0,0,0,2000001042,0,0,0,0,0,0,0,''),
(2540501,7,0,0,0,0,0,0,2000001043,0,0,0,0,0,0,0,''),
(2540501,8,0,0,0,0,0,0,2000001044,0,0,0,0,0,0,0,''),
(2540501,9,0,0,0,0,0,0,2000001045,0,0,0,0,0,0,0,''),
(2540501,10,0,0,0,0,0,0,2000001046,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry BETWEEN 2000001041 AND 2000001046;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000001041,'%s armed.',0,2,0,0,NULL),
(2000001042,'Detonation in 5...',0,2,0,0,NULL),
(2000001043,'4...',0,2,0,0,NULL),
(2000001044,'3...',0,2,0,0,NULL),
(2000001045,'2...',0,2,0,0,NULL),
(2000001046,'1...',0,2,0,0,NULL);
