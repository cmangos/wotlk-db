
-- missing gossips
UPDATE creature_template SET GossipMenuId=10942, NpcFlags=NpcFlags|1 WHERE entry=37596;
DELETE FROM gossip_menu WHERE entry=10942;
INSERT INTO gossip_menu (entry,text_id) VALUES
(10942,15206);
DELETE FROM gossip_menu_option WHERE menu_id IN (10942,10943);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_script_id) VALUES
(10942,0,0,'What would you have of me, Banshee Queen?',1,1,1094201),
(10943,0,0,'What would you have of me, my lady?',1,1,1094301);
