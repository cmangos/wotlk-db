-- Warsong Peon
-- req. for q.11611 'Taken by the Scourge'
DELETE FROM dbscripts_on_relay WHERE id = 20027;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20027,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20027,1,3,0,0,0,0,0,0,0,0,0,0,2835.07,6184.01,84.684,3.96254,'');
