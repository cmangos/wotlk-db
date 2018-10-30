-- q.11238/11267 'The Frost Wyrm and its Master'
DELETE FROM dbscripts_on_event WHERE id = 15578;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(15578,0,21,1,0,0,24019,115879,7 | 0x10,0,0,0,0,0,0,0,0,''),
(15578,1,3,0,0,0,24019,115879,7 | 0x08 | 0x10,0,0,0,0,2805.21,-3574.096,342.2588,100,''),
(15578,1,20,2,1,0,24019,115879,7 | 0x10,0,0,0,0,0,0,0,0,'');
