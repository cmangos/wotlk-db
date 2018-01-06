-- Panther Cage (176195) opened by Panther Cage Key (12942)
-- quest: Hypercapacitor Gizmo (5151)
-- Enraged Panther (10992)
DELETE FROM dbscripts_on_go_template_use WHERE id = 176195;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(176195,0,31,10992,10,0,0,0,0,0,0,0,0,0,0,0,0,'search for 10992'),
(176195,1,22,14,0x01 | 0x04 | 0x10,0,10992,30,0,0,0,0,0,0,0,0,0,'temp faction'),
(176195,2,26,0,0,0,10992,30,3,0,0,0,0,0,0,0,0,'start attack');

-- make sure that elite will desp.. 
DELETE FROM dbscripts_on_creature_death WHERE id = 10992;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10992,0,18,120000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp');
