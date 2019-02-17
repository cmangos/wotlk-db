-- Darnassus Reveler
UPDATE creature_template SET GossipMenuId = 6930 WHERE entry = 15905;
DELETE FROM gossip_menu WHERE entry = 6930;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(6930, 8220, 0, 0);
