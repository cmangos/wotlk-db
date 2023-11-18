-- Oglethorpe Obnoticus 7406
UPDATE gossip_menu SET condition_id = 3834 WHERE entry = 1467 AND text_id = 2136;
DELETE FROM npc_text_broadcast_text WHERE Id IN(2135,2136);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(2135,1,4554),
(2136,1,4555);
DELETE FROM npc_text WHERE id IN (2135,2136);
DELETE FROM conditions WHERE condition_entry BETWEEN 3831 AND 3834;
INSERT INTO conditions(condition_entry, type, value1, value2, value3) VALUES
(3831,8,648,0,0),
(3832,8,836,0,0),
(3833,8,2767,0,0),
(3834,-2,3833,3832,3831);
