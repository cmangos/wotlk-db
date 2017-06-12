-- Skar'this the Heretic
-- position corrected & Gossip
UPDATE creature_template SET NpcFlags = 3, GossipMenuId = 8534 WHERE entry = 22421;
UPDATE creature SET position_x = -296.493, position_y = -459.043, position_z = 6.14677, orientation = 0.767945 WHERE guid = 12403;
DELETE FROM gossip_menu WHERE entry = 8534;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(8534, 10676, 0, 0);

-- Skar'this Prison
-- must be visible also in Heroic mode
UPDATE gameobject SET spawnMask = 3 WHERE guid = 82780;
