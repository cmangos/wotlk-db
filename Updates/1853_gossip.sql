-- Drenk Spannerspark
UPDATE creature_template SET GossipMenuId = 9346 WHERE entry = 26540;
DELETE FROM gossip_menu WHERE entry = 9346;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(9346, 12646, 0, 0);
