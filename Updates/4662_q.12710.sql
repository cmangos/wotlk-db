-- q.12710 'Disclosure'
DELETE FROM dbscripts_on_go_template_use WHERE id = 190949;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(190949,1,31,28948,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 28948 - terminate if alive'),
(190949,100,34,20119,0,0,0,0,0x08,0,0,0,0,0,0,0,0,'quest check - terminate if not in Players log'),
(190949,200,15,52775,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM conditions WHERE condition_entry=20119;
INSERT INTO conditions(condition_entry, type, value1, value2) VALUES
(20119,9,12710,0); 
