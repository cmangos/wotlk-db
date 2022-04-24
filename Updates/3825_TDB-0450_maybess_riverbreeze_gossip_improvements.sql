-- Assign correct gossip_menu for Maybess Riverbreeze <Emerald Circle> 9529
UPDATE `creature_template` SET `GossipMenuId` = 2207 WHERE `entry` = 9529; -- old 20022
DELETE FROM gossip_menu WHERE entry IN(20022,2207,2361);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
('2207', '2842', '0', '0'),
('2207', '2843', '0', '22'),
('2207', '2849', '0', '161'),
('2361', '3047', '0', '0');
DELETE FROM gossip_menu_option WHERE menu_id IN(20022,2207);
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
('2207', '0', '0', 'I need a Cenarion beacon.', '5243', '1', '1', '-1', '0', '2208', '0', '0', NULL, '0', '628'),
('2207', '1', '0', 'What plants are in Felwood that might be corrupted?', '5384', '1', '1', '2361', '0', '0', '0', '0', NULL, '0', '0');

