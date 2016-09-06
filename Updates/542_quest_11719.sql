-- quest 11719 'A Suitable Test Subject'
DELETE FROM dbscripts_on_event WHERE id = 17077;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(17077,1,1,5,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(17077,1,31,25381,50,0,0,0,0,0,0,0,0,0,0,0,''),
(17077,2,0,0,0,25381,100,3,2000000404,0,0,0,0,0,0,0,'');
DELETE FROM db_script_string WHERE entry = 2000000404;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000404,'How positively awful! You were totally incapacitated? Weak? Hot flashes?',0,4,0,21,NULL);
