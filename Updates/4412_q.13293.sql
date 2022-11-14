-- q.13293 `An End to the Suffering`
-- Spirit of Rhunok 28561
-- gossip corrected
DELETE FROM gossip_menu WHERE entry IN (9715);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9715, 13291, 0, 0), -- default
(9715, 13293, 0, 20517); -- q.13293 `An End to the Suffering` active and aura not present
UPDATE creature_template SET GossipMenuId=9715 WHERE Entry = 28561;
DELETE FROM conditions WHERE condition_entry BETWEEN 20514 AND 20517;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20514, 9, 12647, 0, 0, 0, 0),
(20515, 8, 12647, 0, 0, 0, 1),
(20516, 1, 51967, 0, 0, 0, 1),
(20517, -1, 20516, 20515, 20514, 0, 0);
DELETE FROM gossip_menu_option WHERE menu_id IN (9715);
INSERT INTO gossip_menu_option (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
('9715','0','0','Rhunok, I need to be reimbued with your mojo.','28537','1','1','-1','0','971501','0','0',NULL,'0','20517');
DELETE FROM dbscripts_on_gossip WHERE id = 971501;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(971501,1,15,51968,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 51968');
UPDATE `broadcast_text` SET `ChatTypeID`= 1 WHERE `Id` IN (28544);
