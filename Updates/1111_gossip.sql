-- ----------------------------
-- Deathstalker Maltendis (Entry: 16251)
UPDATE creature_template SET GossipMenuId = 7207 WHERE entry = 16251;

DELETE FROM gossip_menu WHERE entry = 7207;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(7207, 8489, 0, 0),
(7207, 8491, 0, 1271), -- Quest 9199 Rewarded
(7207, 8490, 0, 1273); -- Quest 9192 AND 9199 Rewarded

DELETE FROM conditions WHERE condition_entry IN (1271,1272,1273);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(1271, 8, 9199, 0),
(1272, 8, 9192, 0),
(1273, -1, 1271, 1272);
