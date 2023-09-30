-- Unstable Explosives 190590
-- must despawn after explosion
DELETE FROM dbscripts_on_go_template_use WHERE id IN (190590);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(190590,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn');
UPDATE gameobject SET spawntimesecsmin = 180, spawntimesecsmax = 180 WHERE id = 190590;
