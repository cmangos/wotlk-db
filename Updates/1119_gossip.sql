-- ----------------------------
-- Magister Sylastor (Entry: 16237)
UPDATE creature_template SET GossipMenuId = 7169, NpcFlags = NpcFlags|1 WHERE entry = 16237;

DELETE FROM gossip_menu WHERE entry = 7169;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(7169, 8441, 0, 0),
(7169, 8650, 0, 1283), -- q.9166 rewarded
(7169, 8442, 0, 1284); -- q.9169 rewarded

DELETE FROM conditions WHERE condition_entry IN(1283,1284);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(1283, 8, 9166, 0), -- q.9166 rewarded
(1284, -1, 1283, 10015); -- q.9166 and q.9169 rewarded
