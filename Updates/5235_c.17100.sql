-- Advisor Sunsworn 17100
-- gossip
UPDATE creature_template SET GossipMenuId=7362 WHERE entry IN (17100);
DELETE FROM gossip_menu WHERE entry IN (7362);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(7362, 8794, 0, 0),
(7362, 8795, 0, 843); -- Player RaceMask: 512 (BE only)
DELETE FROM npc_text_broadcast_text WHERE Id IN(8795);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(8794,1,13472),
(8795,1,13475);
DELETE FROM npc_text WHERE id IN (8794,8795); 
DELETE FROM npc_gossip WHERE npc_guid = 33790;
