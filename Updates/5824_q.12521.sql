-- q.12521 'Where in the World is Hemet Nesingwary?'
-- spell corrected
DELETE FROM dbscripts_on_spell WHERE id = 50630;
DELETE FROM dbscripts_on_relay WHERE id = 20490;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20490,1,15,50630,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 50630'),
(20490,10,31,27987,200,0,0,0,0,0,0,0,0,0,0,0,0,'search for 27987'),
(20490,5000,0,0,0,0,27987,300,7,27610,0,0,0,0,0,0,0,'27987 Say');
