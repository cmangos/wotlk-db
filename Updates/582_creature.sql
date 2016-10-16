-- Hellfire Warder
-- first group
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid IN (91249,91247,91248,90985,90986,90987);
DELETE FROM creature_movement WHERE id IN (91249,91247,91248,90985,90986,90987);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(91247,1,-0.181343,67.1853,22.8294,5000,1882901,1.5708,0,0),
(91248,1,6.12531,69.0678,22.9075,5000,1882901,2.07694,0,0),
(91249,1,-8.90767,68.377,22.6632,5000,1882901,1.16937,0,0),
-- second group
(90985,1,2.00162,-64.4008,22.8575,5000,1882902,0.645772,0,0),
(90986,1,2.69777,-60.936,22.8984,5000,1882902,4.95674,0,0),
(90987,1,5.550547,-64.0838,22.9179,5000,1882902,2.86234,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1882901,1882902); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1882901,1,15,33346,0,15384,30,1 | 0x08,0,0,0,0,0,0,0,0,''),
(1882901,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1882902,1,15,33827,0,15384,30,1 | 0x08,0,0,0,0,0,0,0,0,''),
(1882902,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');
