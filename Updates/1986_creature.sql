-- Scarlet Ghoul & Scourge Gryphon
DELETE FROM dbscripts_on_creature_death WHERE id IN (28897,28906); 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3,buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(28897,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive'),
(28906,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'unactive');
