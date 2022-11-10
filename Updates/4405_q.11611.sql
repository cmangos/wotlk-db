-- q.11611 'Taken by the Scourge'
DELETE FROM dbscripts_on_creature_death WHERE id = 25284;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(25284,0,15,45514,0,0,0,2,45526,45527,45532,0,0,0,0,0,'cast Random spell on Player'),
(25284,2,31,25270,50,0,0,0,0,0,0,0,0,0,0,0,'search for buddy'),
(25284,2,34,1076,0,0,0,2| 0x08,0,0,0,0,0,0,0,0,'check if q.11611 is active'),
(25284,3,8,25270,0,0,0,2,0,0,0,0,0,0,0,0,'q. credit');
DELETE FROM dbscripts_on_spell WHERE id IN (45515,45516);
DELETE FROM dbscripts_on_relay WHERE id = 20669;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20669,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(20669,1,3,0,0,0,0,0,0,0,0,0,0,2835.07,6184.01,84.684,3.96254,'');
