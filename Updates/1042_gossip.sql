-- Lorrin Foxfire
UPDATE creature_template SET GossipMenuId = 9578 WHERE entry = 27705;

DELETE FROM gossip_menu WHERE entry = 9578;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(9578,12926,0,838), -- Mage only gossip
(9578,12927,0,0); -- Non-Mage gossip
