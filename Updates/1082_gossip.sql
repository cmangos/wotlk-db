-- Earthbinder Tavgren (18446) Gossip
DELETE FROM conditions WHERE condition_entry = 1252;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1252, 8, 9971, 0); -- Quest 9971 Rewarded

UPDATE gossip_menu SET condition_id = 1252 WHERE entry = 7696 AND text_id = 9407;
