-- Sage Mistwalker 24186
-- missing gossip added
-- should lead to another gossip menu - we missing menu and text ids
DELETE FROM gossip_menu_option WHERE menu_id = 8908;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(8908, 0, 0, 'I have misplaced my worg disguise.', 1, 1, -1, 0, 890801, 0, 0, NULL, 1558);
DELETE FROM dbscripts_on_gossip WHERE id = 890801;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(890801, 0, 15, 43379, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast: The Cleansing: Create Worg Disguise');
DELETE FROM conditions WHERE condition_entry BETWEEN 1553 AND 1558;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1553, 16, 33618, 1), -- missing item
(1554, 9, 11323, 0), -- must be taken
(1555, 8, 11324, 0), -- completed
(1556, -3, 1555, 0), -- not completed 1555
(1557, -1, 1556, 1554),
(1558, -1, 1557, 1553);

-- Watcher Moonleaf 24273
-- missing gossip added
-- should lead to another gossip menu - we missing menu and text ids
DELETE FROM gossip_menu_option WHERE menu_id = 8918;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(8918, 0, 0, 'I have misplaced my worg disguise.', 1, 1, -1, 0, 891801, 0, 0, NULL, 1563);
DELETE FROM dbscripts_on_gossip WHERE id = 891801;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(891801, 0, 15, 43379, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast: The Cleansing: Create Worg Disguise');
DELETE FROM conditions WHERE condition_entry BETWEEN 1559 AND 1563;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1559, 9, 11325, 0), -- must be taken
(1560, 8, 11326, 0), -- completed
(1561, -3, 1560, 0), -- not completed 1560
(1562, -1, 1561, 1559),
(1563, -1, 1562, 1553);
