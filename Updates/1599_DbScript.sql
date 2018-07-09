-- Wind Tamer Oril
-- should run
DELETE FROM dbscripts_on_creature_movement WHERE id = 2672501 AND delay = 1;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2672501,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
