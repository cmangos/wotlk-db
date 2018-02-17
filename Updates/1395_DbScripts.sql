-- GENERIC Script added
-- Idea taken from TBCDB
DELETE FROM dbscripts_on_creature_movement WHERE id = 11;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(11,0,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - Send AI Event 5 (A) to Self');
