-- Pusillin - Dire Maul
-- Disappers In The Middle Of Event (...) - Fixed
DELETE FROM dbscripts_on_gossip WHERE id = 570901;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) values
(570901,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'UNPAUSE'),
(570901,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,0,'pc_flag removed'),
(570901,1,0,0,0,0,0,0,0,2000005460,0,0,0,0,0,0,0,''),
(570901,1,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active');
DELETE FROM dbscripts_on_creature_death WHERE id = 14354;
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(14354,1,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive');
