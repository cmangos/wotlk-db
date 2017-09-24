-- ----------------------------
-- Dame Auriferous (Entry: 16231)
UPDATE creature_template SET GossipMenuId = 7163 WHERE entry = 16231;

DELETE FROM gossip_menu WHERE entry = 7163;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(7163, 8433, 0, 0),
(7163, 8439, 0, 1281),
(7163, 8440, 0, 1282);

DELETE FROM conditions WHERE condition_entry BETWEEN 1279 AND 1282;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(1279, 9, 9160, 0), -- q.9160 taken
(1280, 8, 9160, 0), -- q.9160 rewarded
(1281, -2, 1279, 1280), -- q.9160 taken or rewarded
(1282, 8, 9169, 0); -- q.9169 rewarded
