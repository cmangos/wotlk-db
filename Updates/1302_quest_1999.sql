/*Quest 1999 Tools for the Trade*/

UPDATE creature_template SET GossipMenuId=161 WHERE entry IN(6566); -- assign menu

DELETE FROM gossip_menu_option WHERE menu_id=161 AND id=1;
INSERT INTO gossip_menu_option(menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(161,1,0,'[PH] Get Thieves\ Tools',1,1,-1,0,16101,0,0,NULL,1404); -- add missing option

DELETE FROM conditions WHERE condition_entry=1404;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1404,9,1999,0);

DELETE FROM dbscripts_on_gossip WHERE id=16101;
INSERT INTO dbscripts_on_gossip(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(16101,0,15,9949,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast Thieves\ Tool Rack Conjure'); -- add script to spawn in thieves tools
