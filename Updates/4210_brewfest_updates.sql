-- Wotlk ONLY
-- Conditions reQ for Dungeon Finder Events
DELETE FROM conditions WHERE condition_entry IN (20311,20312,20315);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20311, 42, 20001, 0, 1, 0, 'The Slave Pens - Midsummer Fire Festival - creatures/objects spawned with event "ON"'),
(20312, 42, 20001, 0, 0, 0, 'The Slave Pens - Midsummer Fire Festival - creatures/objects spawned with event "OFF"'),
(20315, 42, 20002, 0, 1, 0, 'Blackrock Depths - Brewfest - creatures/objects spawned with event "ON"');

-- Coren Direbrew 23872
-- gossip corrected
DELETE FROM gossip_menu WHERE entry = 11388;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(11388, 15859, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id = 11388;
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(11388,0,0,'Fight',1,1,-1,0,1138801,0,0,NULL,0),
(11388,1,0,'Apologize',1,1,-1,0,0,0,0,NULL,0);
UPDATE gossip_menu_option SET action_menu_id = 11388 WHERE menu_id = 11387;
DELETE FROM dbscripts_on_gossip WHERE id = 1138801;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1138801,10,35,5,20,0,0,0,0,0,0,0,0,0,0,0,0,'Coren Direbrew - Send event A');
