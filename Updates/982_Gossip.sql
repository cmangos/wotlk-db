-- Added gossip menu to creature 9273 (Petra Grossen)
-- Added gossip menu option to creature 9273 (Petra Grossen)
-- Thanks @bdebaere for noticing
-- *Note* Gossip has temp. entry (missing correct one)
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id = 9273);
DELETE FROM gossip_menu WHERE entry IN (56003, 56004);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(56003, 3093, 0, 0),
(56004, 3793, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 56003;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(56003, 0, 0, 'What does Dadanga like to eat?', 1, 1, 56004, 0, 0, 0, 0, '', 0);
UPDATE creature_template SET GossipMenuId = 56003 WHERE Entry = 9273;
