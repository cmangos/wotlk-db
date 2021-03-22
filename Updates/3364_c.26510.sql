-- Tu'u'gwar 26510
UPDATE creature_template SET MovementType = 3 WHERE Entry = 26510;
DELETE FROM creature_movement_template WHERE entry = 26510;
INSERT INTO creature_movement_template (entry, pathid, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(26510,0,1,2619.24,1135.3,-18.0645,100,100,5),
(26510,0,2,2619.57,1134.35,-18.0645,100,0,0),
(26510,0,3,2619.52,1134.33,-13.2949,100,0,0),
(26510,0,4,2621.95,1108.13,-13.2949,100,0,0),
(26510,0,5,2629.06,1055.42,-20.406,100,0,0),
(26510,0,6,2675.39,1014.85,-27.7949,100,0,0),
(26510,0,7,2641.32,970.041,-24.8783,100,0,0),
(26510,0,8,2629.31,980.431,-25.5172,100,0,0),
(26510,0,9,2646.95,1003.27,-25.5172,100,0,0),
(26510,0,10,2646.95,1003.27,-25.5172,100,300000,2651001);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2651001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2651001,1000,1,35,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2651001,1500,40,0,0,0,188386,20,7,0,0,0,0,0,0,0,0,''),
(2651001,2000,15,35309,0,0,23837,50,7,0,0,0,0,0,0,0,0,''),
(2651001,2500,18,0,0,0,23837,20,7,0,0,0,0,0,0,0,0,''),
(2651001,4000,20,1,15,300000,0,0,12,0,0,0,0,0,0,0,0,''),
(2651001,5000,2,59,32768,0,0,0,4,0,0,0,0,0,0,0,0,'');
