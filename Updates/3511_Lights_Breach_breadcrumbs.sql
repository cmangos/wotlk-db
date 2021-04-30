-- Quests leading to `Light's Breach`

-- q.12789 'Into the Breach!' -- both
-- q.12792 'First Things First' -- both
-- q.12793 'Smoke on the Horizon' -- both
-- q.12763 'Shifting Priorities' -- horde
-- q.12770 'Reallocating Resources' -- alliance

-- q.12789 'Into the Breach!'
-- done
-- q.12792 'First Things First'
-- done
-- q.12793 'Smoke on the Horizon'
-- Maaka 28624
UPDATE creature_template SET GossipMenuId = 9783 WHERE Entry = 28624;
DELETE FROM gossip_menu WHERE entry = 9783;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9783, 7778, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 9783;
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(9783,0,2,'Show me where I can fly.',4,8192,0,0,0,0,0,NULL,0),
(9783,1,2,'I wish to travel to Light\'s Breach.',1,1,-1,0,978301,0,0,NULL,20294);
DELETE FROM conditions WHERE condition_entry = 20294;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20294, 9, 12793, 0, 0);
DELETE FROM dbscripts_on_gossip WHERE id = 978301;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(978301,0,30,1042,0,0,0,0,0,0,0,0,0,0,0,0,0,'taxi Path to Light\'s Breach');
-- q.12763 'Shifting Priorities'
-- Makki Wintergale 26853
UPDATE creature_template SET GossipMenuId = 9785 WHERE Entry = 26853;
DELETE FROM gossip_menu WHERE entry = 9785;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9785, 7778, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 9785;
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(9785,0,2,'Show me where I can fly.',4,8192,0,0,0,0,0,NULL,0),
(9785,1,2,'I wish to travel to Light\'s Breach.',1,1,-1,0,978501,0,0,NULL,20295);
DELETE FROM conditions WHERE condition_entry = 20295;
INSERT INTO conditions (condition_entry, type, value1, value2, flags) VALUES 
(20295, 9, 12763, 0, 0);
DELETE FROM dbscripts_on_gossip WHERE id = 978501;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(978501,0,30,1039,0,0,0,0,0,0,0,0,0,0,0,0,0,'taxi Path to Light\'s Breach');
-- q.12770 'Reallocating Resources' -- alliance
-- done
