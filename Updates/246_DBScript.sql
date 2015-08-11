 
-- Death Knight Initiate - update
-- I can fly :)
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2840602,2840603);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2840602,1,24,26308,0,0,0,0x08,0,0,0,0,0,0,0,0,'mount'),
(2840602,2,39,1,0,0,0,0,0,0,0,0,0,0,0,0,'fly ON'),  
(2840603,2,39,0,0,0,0,0,0,0,0,0,0,0,0,0,'fly OFF'),
(2840603,3,24,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'unmount');
