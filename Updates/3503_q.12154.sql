-- q.12154 'Blackout'

-- Dun Argol Power Core 27075
UPDATE creature SET spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE id = 27075;
-- animation added
-- spell: 47935
DELETE FROM dbscripts_on_spell WHERE id = 47935;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(47935,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'credit');
