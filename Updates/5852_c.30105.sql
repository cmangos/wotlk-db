-- c.30105 King Jokkum
-- option available after q.13010 taken
UPDATE gossip_menu_option SET condition_id = 20921 WHERE menu_id = 9900; 
DELETE FROM conditions WHERE condition_entry IN (20919,20921,20923);
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20919, 9, 13010, 0, 0, 0, 0), -- quest taken
(20921, -1, 20920, 20919, 0, 0, 0),
(20923, 8, 13011, 0, 0, 0, 0); -- rewarded
-- gossip for quest
DELETE FROM `gossip_menu` WHERE `entry` IN (9899);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9899, 13748, 0, 0),
(9899, 13749, 0, 20923);
DELETE FROM npc_text_broadcast_text WHERE Id IN(13748,13749);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(13748,1,30983), -- I do not trust y...
(13749,1,30984); -- Very well, little 
DELETE FROM npc_text WHERE id IN (13748,13749);
-- final part
UPDATE gossip_menu_option SET action_script_id = 989901, condition_id = 20923 WHERE menu_id = 9899; 
DELETE FROM dbscripts_on_gossip WHERE id = 989901;
INSERT INTO dbscripts_on_gossip (id, priority, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(989901,0,0,15,61319,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 61319 on Player'),
(989901,1,300,15,56545,0,0,0,0,6,0,0,0,0,0,0,0,0,'Player self cast'),
(989901,2,300,15,56541,0,0,0,0,6,0,0,0,0,0,0,0,0,'Player self cast');
