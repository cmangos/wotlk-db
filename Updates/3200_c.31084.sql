-- Highlord Darion Mograine 31084
-- missing gossip option added
UPDATE creature_template SET TrainerClass = 6 WHERE Entry = 31084;
DELETE FROM gossip_menu_option WHERE menu_id = 10027;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, condition_id) VALUES
(10027,0,3,'I require training, Highlord.', 0, 5, 16, 0, 0);
