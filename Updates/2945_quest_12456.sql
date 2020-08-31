-- q.12456 'The Plume of Alystros'
DELETE FROM dbscripts_on_event WHERE id = 18223;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(18223,1,31,27249,100,0,0,0,0,0,0,0,0,0,0,0,0,'search for buddy - 27355'),
(18223,100,1,0,0,0,27249,100,7,0,0,0,0,0,0,0,0,''),
(18223,2000,22,50,0x01 | 0x04 | 0x10,0,27249,100,7,0,0,0,0,0,0,0,0,''),
(18223,2500,26,0,0,0,27249,100,3,0,0,0,0,0,0,0,0,'buddy - attack Player');
