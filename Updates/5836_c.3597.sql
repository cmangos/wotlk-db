-- c.3597 'Mardant Strongoak'
-- force gossip to show up
UPDATE creature_template SET StaticFlags4 = StaticFlags4|524288 WHERE Entry = 3597; -- WotLK Only
DELETE FROM npc_text_broadcast_text WHERE Id IN(4783,4784);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(4783,1,7460),
(4784,1,7461);
DELETE FROM npc_text WHERE id IN (4783,4784);
