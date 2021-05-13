-- Wormhole 35646
-- missing gossip option added
-- ReQ: % chance to show gossip option - currently not possible 
DELETE FROM gossip_menu_option WHERE menu_id = 10668 AND id = 5;
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(10668,5,0,'Underground...',1,1,-1,0,1066805,0,0,NULL,219);
DELETE FROM dbscripts_on_gossip WHERE id = 1066805; 
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1066805,0,15,68081,0,0,0,0,6,0,0,0,0,0,0,0,0,'');
DELETE FROM spell_target_position WHERE id IN (68081);
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(68081,571,5859.35,516.3,599.818,3.25774);

-- Kaye Toogie 35826
UPDATE npc_vendor SET condition_id = 219 WHERE entry = 35826;
