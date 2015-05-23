-- Marshal Dughan
UPDATE creature_template SET npcFlags = 3, GossipMenuId = 6159 WHERE Entry = 240;
DELETE FROM gossip_menu WHERE entry = 6159; 
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6159, 6157, 0, 0);
-- missing text added
DELETE FROM npc_text WHERE ID = 6157;
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_0, em0_1) VALUES 
(6157, 'Ach, it\'s hard enough keeping order around here without all these new troubles popping up!  I hope you have good news, $n...', 'Ach, it\'s hard enough keeping order around here without all these new troubles popping up!  I hope you have good news, $n...', 0, 1, 5, 5);
