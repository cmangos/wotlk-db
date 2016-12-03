-- Sky Darkener Assault 
-- shouldnt target everyone in the area
DELETE FROM spell_script_target WHERE entry = 52124;
INSERT INTO spell_script_target VALUES
(52124,1,28655,0);
-- Scourge Sky Darkeener
DELETE FROM dbscripts_on_spell WHERE id = 52124;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52124,4,15,52125,0,28655,500,1 | 0x08,0,0,0,0,0,0,0,0,'');
