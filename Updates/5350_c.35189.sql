-- Skoll 35189
DELETE FROM pool_creature_template WHERE id = 35189;
DELETE FROM pool_template WHERE entry = 1084;
-- moved to spawn groups
DELETE FROM spawn_group WHERE id = 34095;
INSERT INTO spawn_group (Id, Name, Type, MaxCount, WorldState, Flags) VALUES
(34095, 'Storm Peaks - Skoll 35189 - RARE', 0, 1, 0, 0);
DELETE FROM spawn_group_spawn WHERE id = 34095;
INSERT INTO spawn_group_spawn (Id, Guid, SlotId) VALUES
(34095, 534218, -1),
(34095, 534219, -1),
(34095, 534220, -1),
(34095, 534221, -1),
(34095, 534222, -1);
