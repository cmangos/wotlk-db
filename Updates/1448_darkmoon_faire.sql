-- Add the missing target location and spell script targets in DB
-- ToDo: need to add additional creature spawns for entries 15218, 33068 and other similar missing creatures

-- spell target location
-- Note: coords might require additional tweaks
DELETE FROM spell_target_position WHERE id IN (24831, 42826);
INSERT INTO spell_target_position VALUES
(24831,0,-9569.6,-13.7809,69.7455,4.85433),
(42826,530,-1742.25,5457.4,-6.28635,4.60653);
-- Note: spell 24730 already has the position in DB

-- spell script targets
-- Note: additional scripts might be required for these spells
DELETE FROM spell_script_target WHERE entry IN (42868, 24731);
INSERT INTO spell_script_target VALUES 
(24731,0,180452,1),
(24731,0,180515,1),
(24731,1,15218,2),
(42868,0,186560,1),
(42868,1,15218,2);
