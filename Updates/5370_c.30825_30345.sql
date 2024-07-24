-- Chief Engineer Copperclaw 30825
-- missing gosspi added
UPDATE creature_template SET GossipMenuId = 10174, CreatureTypeFlags = 134217728 WHERE entry = 30825;
DELETE FROM `gossip_menu` WHERE `entry` IN (10174);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10174, 14118, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14118);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14118,1,32727);
DELETE FROM npc_text WHERE id IN (14118);
-- Chief Engineer Boltwrench 30345
UPDATE creature_template SET CreatureTypeFlags = 134217728 WHERE entry = 30345;
