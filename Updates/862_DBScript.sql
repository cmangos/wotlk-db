-- Add Generic script for RUN
-- Sync with TBCDB.
DELETE FROM dbscripts_on_creature_movement WHERE id IN (5,6);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(6,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'RUN OFF'); 
