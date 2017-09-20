-- Glyth
-- Safety spawn for Rend Blackhand .. in case if sd2 script wont work
DELETE FROM dbscripts_on_creature_death WHERE id = 10339;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10339,0,31,10429,100,0,0,0,0x08,0,0,0,0,0,0,0,0,''), -- terminate if alive
(10339,1,15,16328,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
