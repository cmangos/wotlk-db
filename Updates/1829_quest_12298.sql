-- q.12298 'High Commander Halford Wyrmbane' - Howling Fjord ver
-- script need correct id for his another gossip
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 954601 WHERE menu_id = 9546 AND id = 1;
DELETE FROM dbscripts_on_gossip WHERE id IN (9546,902401); 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(902401,0,17,33634,10,0,0,0,0,0,0,0,0,0,0,0,0,'10 x Orehammer\'s Precision Bombs');
-- only when quest is active
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 954602, condition_id = 20006 WHERE menu_id = 9546 AND id = 2;
DELETE FROM conditions WHERE condition_entry = 20006;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20006, 9, 12298, 0);
DELETE FROM dbscripts_on_gossip WHERE id = 902402; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(902402,0,15,48862,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
