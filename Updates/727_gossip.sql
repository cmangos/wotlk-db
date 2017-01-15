-- Koren
-- Default gossip is available to everyone with rep below friendly 
-- At friendly he will show another one
-- He'll offer his vendor and repair to players once they reach Honored with rep 967
DELETE FROM gossip_menu WHERE entry = 7435;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7435, 9002, 0, 0),
(7435, 9004, 0, 1131),
(7435, 9003, 0, 1132);
DELETE FROM gossip_menu_option WHERE menu_id = 7435;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(7435,0,1,'I\'m in need of your skill as a blacksmith, Koren.',3,128,0,0,0,0,0,NULL,1132);
DELETE FROM conditions WHERE condition_entry IN (1131,1132);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1131,5,967,4),
(1132,5,967,5);
