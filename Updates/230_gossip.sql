-- Darrok
UPDATE creature_template SET GossipMenuId = 9528 WHERE entry = 27425;
DELETE FROM gossip_menu WHERE entry = 9528;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9528, 12838, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 9528;           
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(9528,0,0,'Yes, I am ready to travel to Venture Bay!',1,1,-1,0,9528,0,0,'',0);
DELETE FROM dbscripts_on_gossip WHERE id = 9528;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9528,0,15,48961,0,0,0,0x02,0,0,0,0,0,0,0,0,''),
(9528,1,15,48960,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM spell_target_position WHERE id = 48960;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(48960, 571, 4313.37, -2958.17, 318.463, 1.98);

-- Gordun
UPDATE creature_template SET GossipMenuId = 9531 WHERE entry = 27414;
DELETE FROM gossip_menu WHERE entry = 9531;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9531, 12845, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 9531;           
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(9531,0,0,'Yes, I am ready to travel to Venture Bay!',1,1,-1,0,9531,0,0,'',0);
DELETE FROM dbscripts_on_gossip WHERE id = 9531;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9531,0,15,48621,0,0,0,0x02,0,0,0,0,0,0,0,0,''),
(9531,1,15,48622,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM spell_target_position WHERE id = 48622;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(48622, 571, 4274.53, -3055.55, 319.463, 2.535);
