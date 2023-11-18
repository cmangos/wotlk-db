-- Landro Longshot 17249
UPDATE creature_template SET GossipMenuId=25855 WHERE entry=17249;
DELETE FROM gossip_menu WHERE entry=25855;
INSERT INTO gossip_menu (entry,text_id) VALUES
(25855,8855);
DELETE FROM gossip_menu_option WHERE menu_id IN (25855);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(25855,0,0,'What promotions do you have?',13655,1,1,26889,0,0,0,0,NULL,0,0);
DELETE FROM gossip_menu WHERE entry=26889;
INSERT INTO gossip_menu (entry,text_id) VALUES
(26889,12495);
DELETE FROM gossip_menu_option WHERE menu_id IN (26889);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(26889,0,0,'Nevermind.',64614,1,1,-1,0,0,0,0,NULL,0,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(12495);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(12495,1,25077);
DELETE FROM npc_text WHERE id=12495;
