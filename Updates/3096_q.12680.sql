-- q.12680 'Grand Theft Palomino' -- updates
DELETE FROM dbscripts_on_spell WHERE id = 52264;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52264,0,15,52266,1,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52264,1000,37,0,0,0,28654,20,0,0,0,0,0,0,0,0,0,''),
(52264,2000,14,52263,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(52264,5000,15,52267,0,0,28654,20,3,0,0,0,0,0,0,0,0,''),
(52264,6000,0,0,0,0,28654,20,3,2000000410,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_relay WHERE id = 20045;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20045,1000,31,28654,50,0,0,0,8,0,0,0,0,0,0,0,0,'terminate if 28654 is alive'),
(20045,1500,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn self');
