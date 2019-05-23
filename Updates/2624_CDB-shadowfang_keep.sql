-- Add missing areatrigger when fall from Shadowfang Keep
-- Closes 
DELETE FROM areatrigger_teleport WHERE id=2406;
INSERT INTO areatrigger_teleport (id, name, required_level, required_item, required_item2, heroic_key, heroic_key2, required_quest_done, required_quest_done_heroic, target_map, target_position_x, target_position_y, target_position_z, target_orientation, condition_id) VALUES
(2406, 'Shadowfang Keep - Falling out', 0, 0, 0, 0, 0, 0, 0, 0,-233.011, 1567.5, 76.8921, 4.27606, 0);
