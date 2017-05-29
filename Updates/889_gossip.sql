-- Skar'this the Heretic
-- position corrected & Gossip
-- *Note* gossip_menu id is temp. until we'll find correct one.
UPDATE creature_template SET NpcFlags = 3, GossipMenuId = 50103 WHERE entry = 22421;
UPDATE creature SET position_x = -296.493, position_y = -459.043, position_z = 6.14677, orientation = 0.767945 WHERE guid = 12403;
DELETE FROM gossip_menu WHERE entry = 50103;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(50000, 10676, 0, 0);

-- Skar'this Prison
-- must be visible also in Heroic mode
UPDATE gameobject SET spawnMask = 3 WHERE guid = 82780;
