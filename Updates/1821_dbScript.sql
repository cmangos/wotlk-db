-- Archmage Alturus
-- Script Updated - searched creature in script 1761302 corrected 
DELETE FROM dbscripts_on_creature_movement WHERE id = 1761302;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1761302,4,31,18253,30,0,0,0,0,0,0,0,0,0,0,0,'search for 18253'),
(1761302,5,0,0,0,18253,30,3,2000001062,0,0,0,0,0,0,0,'');
