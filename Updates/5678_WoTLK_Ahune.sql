-- Restore Wotlk Data
-- Ice Stone 187882
UPDATE gameobject_template SET Data3 = 11389 WHERE entry = 187882;
DELETE FROM gossip_menu WHERE entry = 11389;
INSERT INTO gossip_menu (entry,text_id) VALUES
(11389,15864);
DELETE FROM npc_text WHERE id IN (15864);
DELETE FROM npc_text_broadcast_text WHERE Id IN (15864);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(15864, 0, 25213);
DELETE FROM gossip_menu_option WHERE menu_id = 11389;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(11389,1,0,'Disturb the stone and summon Lord Ahune.',40443,1,1,-1,0,1138901,0,0,NULL,0,0);
