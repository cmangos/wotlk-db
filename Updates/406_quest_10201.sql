-- q.10201 'And Now, the Moment of Truth'
UPDATE gossip_menu_option SET action_menu_id = 0 WHERE menu_id = 7999 AND id = 0; 
-- old buddy_system removed
-- script corrected
DELETE FROM dbscripts_on_gossip WHERE id = 7999;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(7999,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,'NPCFlags removed'), 
(7999,0,0,0,0,0,0,0,2000000310,0,0,0,0,0,0,0,'Grek say 1'),
(7999,3,1,69,0,0,0,0,0,0,0,0,0,0,0,0,''),
(7999,9,29,1,1,0,0,0,0,0,0,0,0,0,0,0,'NPCFlags added'), 
(7999,9,8,19606,1,0,0,0,0,0,0,0,0,0,0,0,'killcredit for quest 10201'),
(7999,9,0,0,0,0,0,0,2000000311,0,0,0,0,0,0,0,'Grek say 2'),
(7999,11,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
-- correct emote for text
UPDATE db_script_string SET emote = 15 WHERE entry = 2000000311;
