-- Karg Skullgore 34955 & Sawemba 35008
UPDATE creature_template SET GossipMenuId=10605, CreatureTypeFlags = 134217728 WHERE entry IN (34955,35008);
DELETE FROM gossip_menu WHERE entry=10605;
INSERT INTO gossip_menu (entry,text_id) VALUES
(10605,14674);
DELETE FROM gossip_menu_option WHERE menu_id IN (10605);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10605,0,9,'I would like to go to the battleground.',10355,12,1048576,0,0,0,0,0,NULL,0,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14674);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14674,1,35225);
DELETE FROM npc_text WHERE id=14674;

-- Magister Savarin 35602
UPDATE creature_template SET GossipMenuId=10662 WHERE entry IN (35602);
DELETE FROM gossip_menu WHERE entry=10662;
INSERT INTO gossip_menu (entry,text_id) VALUES
(10662,14775);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14775);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14775,1,35922);
DELETE FROM npc_text WHERE id=14775;
