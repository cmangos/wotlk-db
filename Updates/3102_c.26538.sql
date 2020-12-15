-- Nargo Screwbore 26538
-- missing gossip
UPDATE creature_template SET GossipMenuId = 9350 WHERE Entry = 26538;
DELETE FROM gossip_menu WHERE entry=9350;
INSERT INTO gossip_menu (entry, text_id) VALUES
(9350, 12650);
