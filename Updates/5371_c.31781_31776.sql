-- Blast Thunderbomb 31781 - H
-- missing gossip added
UPDATE creature_template SET GossipMenuId = 10123, CreatureTypeFlags = 134217728 WHERE entry = 31781;
DELETE FROM `gossip_menu` WHERE `entry` IN (10123);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10123, 14053, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14053);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14053,1,32365);
DELETE FROM npc_text WHERE id IN (14053);

-- Frazzle Geargrinder 31776 - A
-- missing gossip added
UPDATE creature_template SET GossipMenuId = 10122, CreatureTypeFlags = 134217728 WHERE entry = 31776;
DELETE FROM `gossip_menu` WHERE `entry` IN (10122);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10122, 14052, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14052);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14052,1,32364);
DELETE FROM npc_text WHERE id IN (14052);
