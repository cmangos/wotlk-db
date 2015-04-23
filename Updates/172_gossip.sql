-- Silvermoon City

-- Hunter
-- Tana <Hunter Trainer>
UPDATE creature_template SET GossipMenuId = 6652 WHERE Entry = 16672;
-- Oninath <Hunter Trainer>
UPDATE creature_template SET GossipMenuId = 6652 WHERE Entry = 16673;
-- Zandine <Hunter Trainer>
UPDATE creature_template SET GossipMenuId = 6652 WHERE Entry = 16674;
-- only Hunter should see these options
UPDATE gossip_menu_option SET condition_id = 542 WHERE menu_id = 6652 AND id = 1;
UPDATE gossip_menu_option SET condition_id = 646 WHERE menu_id = 6652 AND id = 2;

-- Paladin
-- Osselan <Paladin Trainer>
UPDATE creature_template SET GossipMenuId = 6647 WHERE Entry = 16679;
-- Ithelis <Paladin Trainer>
UPDATE creature_template SET GossipMenuId = 6647 WHERE Entry = 16680;
-- Champion Bachi <Paladin Trainer>
UPDATE creature_template SET GossipMenuId = 6647 WHERE Entry = 16681;
-- missing gossip added
DELETE FROM gossip_menu WHERE entry = 6647 AND text_id = 7904; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6647, 7904, 0, 92);

-- Warlock
-- Talionia <Warlock Trainer>
UPDATE creature_template SET GossipMenuId = 7437 WHERE Entry = 16647;
-- Alamma <Warlock Trainer>
UPDATE creature_template SET GossipMenuId = 7566 WHERE Entry = 16646;
-- Zanien <Warlock Trainer>
UPDATE creature_template SET GossipMenuId = 7566 WHERE Entry = 16648;
-- missing gossip added
DELETE FROM gossip_menu WHERE entry IN (7437,7566); 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7437, 7903, 0, 0),
(7437, 9006, 0, 103),
(7566, 9184, 0, 103),
(7566, 9185, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id IN (7437,7566);            
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(7437,0,3,'I am interested in warlock training.',5,16,0,0,0,0,0,'',103),
(7437,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',543),
(7437,2,0,'Learn about Dual Talent Specialization.',1,1,10371,0,0,0,0,'',642),
(7566,0,3,'It is a greater knowledge of the ways of the warlock that I crave.',5,16,0,0,0,0,0,'',103),
(7566,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',543),
(7566,2,0,'I wish to know about Dual Talent Specialization.',1,1,10371,0,0,0,0,'',642);

-- Rogue
-- Zelanis <Rogue Trainer>
UPDATE creature_template SET GossipMenuId = 6650 WHERE Entry = 16684;
-- Elara <Rogue Trainer>
UPDATE creature_template SET GossipMenuId = 6650 WHERE Entry = 16685;
-- Nerisen <Rogue Trainer>
UPDATE creature_template SET GossipMenuId = 6650 WHERE Entry = 16686;
DELETE FROM gossip_menu WHERE entry = 6650; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6650, 9187, 0, 0),
(6650, 9188, 0, 73);
DELETE FROM gossip_menu_option WHERE menu_id = 6650;            
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(6650,0,3,'I require rogue training.',5,16,0,0,0,0,0,'',73),
(6650,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',530),
(6650,2,0,'I wish to know about Dual Talent Specialization.',1,1,10371,0,0,0,0,'',632);
 
-- Druid
-- Harene Plainwalker <Druid Trainer>
DELETE FROM gossip_menu WHERE entry = 4605; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4605, 5716, 0, 102),
(4605, 5717, 0, 0);
UPDATE gossip_menu_option SET condition_id = 102 WHERE menu_id = 4605 AND id = 0;

-- Mage
-- Zaedana <Mage Trainer>
UPDATE creature_template SET GossipMenuId = 6648 WHERE Entry = 16651;
-- Quithas <Mage Trainer>
UPDATE creature_template SET GossipMenuId = 6648 WHERE Entry = 16652;
-- Inethven <Mage Trainer>
UPDATE creature_template SET GossipMenuId = 6648 WHERE Entry = 16653;
DELETE FROM gossip_menu WHERE entry = 6648; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6648, 9190, 0, 79),
(6648, 9191, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 6648;            
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(6648,0,3,'I am interested in mage training.',5,16,0,0,0,0,0,'',79),
(6648,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',523),
(6648,2,0,'Learn about Dual Talent Specialization.',1,1,10371,0,0,0,0,'',643);

-- Priest
-- Aldrae <Priest Trainer>
UPDATE creature_template SET GossipMenuId = 6649 WHERE Entry = 16658;
-- Lotheolan <Priest Trainer>
UPDATE creature_template SET GossipMenuId = 6649 WHERE Entry = 16659;
-- Belestra <Priest Trainer>
UPDATE creature_template SET GossipMenuId = 6649 WHERE Entry = 16660;
DELETE FROM gossip_menu WHERE entry = 6649; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6649, 9007, 0, 77),
(6649, 9186, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 6649;            
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(6649,0,3,'I require priest training.',5,16,0,0,0,0,0,'',77),
(6649,1,0,'I wish to unlearn my talents.',1,1,4461,0,0,0,0,'',566),
(6649,2,0,'I wish to know about Dual Talent Specialization.',1,1,10371,0,0,0,0,'',648);

-- Narinth <Portal Trainer>
UPDATE creature_template SET GossipMenuId = 4824 WHERE Entry = 16654;
DELETE FROM gossip_menu WHERE entry = 4824; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(4824, 5879, 0, 0),
(4824, 5880, 0, 79);

-- Lor'themar Theron <Regent Lord of Quel'Thalas>
UPDATE creature_template SET GossipMenuId = 7632 WHERE Entry = 16802;