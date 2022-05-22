-- Luma Skymother 25697
UPDATE creature_template SET GossipMenuId = 11417 WHERE entry = 25697;
DELETE FROM gossip_menu WHERE entry = 11417;
INSERT INTO gossip_menu (entry,text_id) VALUES
(11417,12390);
DELETE FROM npc_text WHERE id IN (12390);
DELETE FROM npc_text_broadcast_text WHERE Id IN (12390);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(12390, 0, 24551);
-- Earthen Ring Flamecaller 25754
UPDATE creature_template SET GossipMenuId = 9260 WHERE entry = 25754;
DELETE FROM gossip_menu WHERE entry = 9260;
INSERT INTO gossip_menu (entry,text_id) VALUES
(9260,12572);
DELETE FROM npc_text WHERE id IN (12572);
DELETE FROM npc_text_broadcast_text WHERE Id IN (12572);
INSERT INTO npc_text_broadcast_text (Id, Prob0, BroadcastTextId0) VALUES
(12572, 0, 25373);

-- Wotlk+ updates
-- Skarthis the Summoner 40446
UPDATE creature_template SET UnitClass = 2, MinLevelMana = 3994, MaxLevelMana = 3994 WHERE entry = 40446;
-- Ahunite Frostwind 25757
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, faction = 1998, UnitClass = 2, MinLevelMana = 3994, MaxLevelMana = 399 WHERE entry = 25757;
UPDATE creature_template SET UnitClass = 2 WHERE entry = 26341;
-- Frozen Core 25865
UPDATE creature_template SET Expansion = 2 WHERE entry IN (25865,26339);
