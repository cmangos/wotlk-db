-- Blood Guard Lorga 30247
UPDATE creature_template SET GossipMenuId = 10193 WHERE entry = 30247;
DELETE FROM gossip_menu WHERE entry IN (10193);
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(10193, 14137, 0, 0);
