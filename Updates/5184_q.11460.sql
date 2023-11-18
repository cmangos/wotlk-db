-- q.11460 'Trust is Earned'
UPDATE gossip_menu_option SET action_script_id = 900701 WHERE menu_id = 9007;
DELETE FROM dbscripts_on_gossip WHERE id IN (9007,900701);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(900701,0,15,44364,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast Rock Falcon Primer');
