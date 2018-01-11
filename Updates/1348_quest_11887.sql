-- q.11887 'Emergency Supplies'

DELETE FROM gossip_menu_option WHERE menu_id = 9190;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(9190, 0, 0, 'Search for the pilot\'s insignia.', 1, 1, -1, 0, 919001, 0, 0, NULL, 273),
(9190, 1, 0, 'Search the body for the pilot''s emergency toolkit.', 1, 1, -1, 0, 919002, 0, 0, NULL, 948);

DELETE FROM conditions WHERE condition_entry = 948;
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
('948', '9', '11887', '0', '');

DELETE FROM dbscripts_on_gossip WHERE id IN (9190,919001,919002);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(919001, 0, 15, 46166, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Summon Pilot''s Insignia'),
(919001, 0, 18, 500, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'despawn self'),
(919002, 0, 18, 500, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'despawn self'),
(919002, 0, 15, 46362, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Give Emergency Kit');
DELETE FROM npc_spellclick_spells WHERE npc_entry = 25841;
