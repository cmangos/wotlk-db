-- q.12926 'Pieces of the Puzzle' - H
-- q.12858 'Pieces of the Puzzle' - A
-- remove 1 item restriction
UPDATE quest_template SET ReqSourceCount2 = 6 WHERE entry IN (12926,12858);
DELETE FROM gossip_menu WHERE entry IN(9853,10145);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(9853,13641,0,0),
(9853,13642,0,21132),
(10145,14089,0,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14089,13642,13641);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14089,1,32577),
(13642,1,30619),
(13641,1,30618);
DELETE FROM npc_text WHERE id IN (14089,13641,13642);
DELETE FROM `gossip_menu_option` WHERE menu_id=9853 AND id = 1;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(9853, 1, 0, 'What kind of help do you require?', 32576, 1, 1, 10145, 0, 0, 0, 0, '', 0, 21125);
DELETE FROM conditions WHERE condition_entry BETWEEN 21123 AND 21132;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
-- gossip menu
(21123,9,12926,1,0,0,0), -- q. taken
(21124,9,12858,1,0,0,0), -- q. taken
(21125,-2,21124,21123,0,0,0),
-- Brans new gossip
(21126,8,12926,0,0,0,0), -- q.12926 rewarded
(21127,8,12858,0,0,0,0), -- q.12858 rewarded
(21128,-2,21127,21126,0,0,0),
(21129,8,13416,0,0,0,1), -- q.13416 not rewarded
(21130,8,13415,0,0,0,1), -- q.13415 not rewarded
(21131,-1,21130,21129,0,0,0),
(21132,-1,21131,21128,0,0,0);
