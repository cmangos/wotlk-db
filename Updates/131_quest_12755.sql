-- q.12755 'A Meeting With Fate'
-- Scarlet Champions will be happy to see heir courier arrived... 

-- spell
DELETE FROM dbscripts_on_spell WHERE id = 53083;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(53083,1,35,5,12,0,0,6,0,0,0,0,0,0,0,0,'Send event AI');
-- Target for 53083
DELETE FROM spell_script_target WHERE entry = 53083;
INSERT INTO spell_script_target (entry, type, targetEntry) VALUES 
(53083,1,29080);
