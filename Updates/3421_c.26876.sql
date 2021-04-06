-- Samuel Clearbook 26876
-- missing gossip option added
DELETE FROM gossip_menu_option WHERE menu_id = 6944 AND id = 1;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(6944,1,0,'I was told you could get me to Light\'s Breach....', 1, 1, -1, 0, 694401, 0, 0, NULL, 20286);
DELETE FROM conditions WHERE condition_entry = 20286;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20286, 9, 12770, 0);
DELETE FROM dbscripts_on_gossip WHERE id = 694401;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(694401,0,15,53310,0,0,0,0,6,0,0,0,0,0,0,0,0,'cast: Flight - Westfall to Light\'s Breach');
