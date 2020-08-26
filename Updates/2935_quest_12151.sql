-- q.12151 'Wanton Warlord'
DELETE FROM dbscripts_on_event WHERE id = 17767;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(17767,1,31,27002,50,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for buddy - 27002: safety check - only one available'),
(17767,10,10,27002,900000,0,0,0,0x08,0,0,0,0,2760.73,410.84,69.86,2.72,'summon - Warlord Jin\'arrak');
