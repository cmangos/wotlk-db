-- Crusader Olakin Sainrith 30708
-- missing gossip added
UPDATE creature_template SET GossipMenuId = 10107 WHERE entry IN(30708);
DELETE FROM gossip_menu WHERE entry IN(10107);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(10107,14028,0,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14028);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14028,1,32213);
DELETE FROM npc_text WHERE id IN (14028);
