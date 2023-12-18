-- Deathstalker Mortis 15022
UPDATE creature_template SET GossipMenuId = 6362 WHERE entry IN(15022);
DELETE FROM gossip_menu WHERE entry IN(6362);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(6362,7555,0,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(7555);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(7555,1,10432);
DELETE FROM npc_text WHERE id IN (7555);
