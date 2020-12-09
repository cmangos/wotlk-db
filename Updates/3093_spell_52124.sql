-- spell: Sky Darkener Assault
DELETE FROM dbscripts_on_spell WHERE id = 52124;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(52124,0,45,0,20207,0,0,0,0,0,0,0,0,0,0,0,0,'start Random Script');
DELETE FROM dbscript_random_templates WHERE id = 20207;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20207,1,20470,0,'spell:52124 - Random Script - 1'),
(20207,1,20471,0,'spell:52124 - Random Script - 2'),
(20207,1,20472,0,'spell:52124 - Random Script - 3'),
(20207,1,20473,0,'spell:52124 - Random Script - 4'),
(20207,1,20474,0,'spell:52124 - Random Script - 5'),
(20207,1,20475,0,'spell:52124 - Random Script - 6'),
(20207,1,20476,0,'spell:52124 - Random Script - 7'),
(20207,1,20477,0,'spell:52124 - Random Script - 8'),
(20207,1,20478,0,'spell:52124 - Random Script - 9');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20470 AND 20478;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20470,0,15,52125,0,0,28655,560588,1|0x10,0,0,0,0,0,0,0,0,'spell:52384 - Random Script - 1: target 1'),
(20471,0,15,52125,0,0,28655,560589,1|0x10,0,0,0,0,0,0,0,0,'spell:52384 - Random Script - 2: target 2'),
(20472,0,15,52125,0,0,28655,560590,1|0x10,0,0,0,0,0,0,0,0,'spell:52384 - Random Script - 3: target 3'),
(20473,0,15,52125,0,0,28655,560591,1|0x10,0,0,0,0,0,0,0,0,'spell:52384 - Random Script - 4: target 4'),
(20474,0,15,52125,0,0,28655,560592,1|0x10,0,0,0,0,0,0,0,0,'spell:52384 - Random Script - 5: target 5'),
(20475,0,15,52125,0,0,28655,560593,1|0x10,0,0,0,0,0,0,0,0,'spell:52384 - Random Script - 6: target 6'),
(20476,0,15,52125,0,0,28655,560594,1|0x10,0,0,0,0,0,0,0,0,'spell:52384 - Random Script - 7: target 7'),
(20477,0,15,52125,0,0,28655,560595,1|0x10,0,0,0,0,0,0,0,0,'spell:52384 - Random Script - 8: target 8'),
(20478,0,15,52125,0,0,28655,560596,1|0x10,0,0,0,0,0,0,0,0,'spell:52384 - Random Script - 9: target 9');
