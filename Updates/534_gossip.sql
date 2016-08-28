-- gossip for Gavrock corrected
-- Fixed: WARNING: Process table dbscripts_on_gossip id 9485, command 0 has no OTHER buddy 26420 found - maybe you need to update the script?
DELETE FROM dbscripts_on_gossip WHERE id = 9485;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9485,0,8,26420,1,0,0,0,0,0,0,0,0,0,0,0,'quest-killcredit'),
(9485,0,0,0,0,0,0,0,2000000216,0,0,0,0,0,0,0,'say 1'),
(9485,4,0,0,0,0,0,0,2000000217,0,0,0,0,0,0,0,'say 2'),
(9485,9,0,0,0,0,0,0,2000000218,0,0,0,0,0,0,0,'say 3');
