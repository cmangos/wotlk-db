-- Ground Commander Koup 31808
UPDATE creature_template SET GossipMenuId = 10125 WHERE entry = 31808;
DELETE FROM `gossip_menu` WHERE `entry` IN (10125);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10125, 14055, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14055);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14055,1,32384);
DELETE FROM npc_text WHERE id IN (14055);
