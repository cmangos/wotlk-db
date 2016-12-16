-- Jainthess Thelryn
-- waypoints & script
UPDATE creature_template SET MovementType = 2 WHERE entry = 15291;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE id = 15291;
DELETE FROM creature_movement_template WHERE entry = 15291;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(15291,1,10418.2,-6319.37,35.5741, 0, 0,5.79203, 0, 0),
(15291,2,10424.7,-6320.57,35.5741, 0, 0,0.855687, 0, 0),
(15291,3,10425.7,-6318.46,35.5843, 8000, 1529101,2.65503, 0, 0),
(15291,4,10424,-6320.35,35.5748, 0, 0,3.19774, 0, 0),
(15291,5,10419,-6319.94,35.5732, 0, 0,2.29454, 0, 0),
(15291,6,10416.8,-6316.51,35.5757, 8000, 1529102,1.91048, 0, 0),
(15291,7,10416.8,-6316.51,35.5757, 90000, 0,4.014257, 0, 0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1529101,1529102);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1529101,4,1,25,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1529102,2,1,16,0,0,0,0,0,0,0,0,0,0,0,0,'');
