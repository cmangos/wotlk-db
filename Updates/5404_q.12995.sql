-- q.12995 'Leave Our Mark'
DELETE FROM dbscripts_on_spell WHERE id = 23301;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(23301,0,8,30220,1,0,0,0,0,0,0,0,0,0,0,0,0,'q. credit'),
(23301,1,48,65536,1,0,0,0,2,0,0,0,0,0,0,0,0,'add UnitFlag');
