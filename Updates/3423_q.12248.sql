-- q.12248 'Vordrassil's Sapling'
DELETE FROM dbscripts_on_event WHERE id = 17870;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(17870,0,9,514753,60,0,0,0,0,0,0,0,0,0,0,0,0,'Resp object');

-- Large Fire
UPDATE gameobject SET spawntimesecsmin = -60, spawntimesecsmax = -60 WHERE guid = 514753;
