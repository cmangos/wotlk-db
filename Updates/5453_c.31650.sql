-- Thrall 31650
-- gossip corrected (had wrong ID set)
UPDATE creature_template SET GossipMenuId = 10121 WHERE Entry = 31650;
DELETE FROM `gossip_menu` WHERE `entry` IN (10195,10121);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10121, 14050, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id IN (10195,10121);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10121,0,0,'I am ready, Warchief!',0,1,1,-1,0,0,0,0,NULL,0,20185);
