-- Ravager Cage (181849) opened by Ravager Cage Key (23925)
-- quest: Strength of One (9582)
-- Death Ravager (17556) should also have movement path it follows after cage door opens, but no data on this currently
DELETE FROM dbscripts_on_go_template_use WHERE id=181849;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(181849,0,31,17556,10,0,0,0,0,0,0,0,0,0,0,0,0,'search for 17556'),
(181849,1,22,14,0x01 | 0x04 | 0x10,0,17556,30,0,0,0,0,0,0,0,0,0,'temp faction'),
(181849,2,26,0,0,0,17556,30,3,0,0,0,0,0,0,0,0,'start attack');
