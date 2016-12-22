-- Script updated for - Hellfire Warder
-- Fix for:
-- ERROR: DB-SCRIPTS: Process table  dbscripts_on_creature_movement  id 1882901, command 15 
-- has buddy 15384 not found in range 30 of searcher Creature (Entry: 18829 Guid: 91248) (data-flags 9), skipping.
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1882901,1882902); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1882901,1,15,33346,0,15384,90984,1 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1882901,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(1882902,1,15,33827,0,15384,91250,1 | 0x08 | 0x10,0,0,0,0,0,0,0,0,''),
(1882902,2,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle');
