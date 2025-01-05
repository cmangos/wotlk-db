-- Koltira Deathweaver 29795
-- missiong gossip option added
DELETE FROM gossip_menu_option WHERE menu_id IN (9839);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(9839,0,0,'Koltira... this might sound strange, but I keep seeing some kid\'s ghost.  Matthias Lehner... does the name mean anything to you?',32828,1,1,10195,0,0,0,0,NULL,0,20815);
DELETE FROM `gossip_menu` WHERE `entry` IN (10195);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10195, 14141, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14141);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14141,1,32830);
DELETE FROM conditions WHERE condition_entry BETWEEN 20813 AND 20815;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20813,8,13236,0,0,0,''),
(20814,8,13361,0,0,1,''),
(20815,-1,20814,20813,0,0,'');
