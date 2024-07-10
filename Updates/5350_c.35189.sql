-- Skoll 35189
DELETE FROM pool_creature_template WHERE id = 35189;
DELETE FROM pool_template WHERE entry = 1084;
-- moved to spawn groups
DELETE FROM spawn_group WHERE id = 33006;
INSERT INTO spawn_group (Id, Name, Type, MaxCount, WorldState, Flags) VALUES
(33006, 'Storm Peaks - Skoll 35189 - RARE', 0, 1, 0, 0);
DELETE FROM spawn_group_spawn WHERE id = 33006;
INSERT INTO spawn_group_spawn (Id, Guid, SlotId) VALUES
(33006, 534218, -1),
(33006, 534219, -1),
(33006, 534220, -1),
(33006, 534221, -1),
(33006, 534222, -1);
