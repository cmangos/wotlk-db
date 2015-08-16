-- q.13188 'Where kings walk' -- ALLIANCE
-- script targets for spell 58533
DELETE FROM spell_script_target WHERE entry = 58533;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(58533, 1, 68, 0), 
(58533, 1, 1756, 0),
(58533, 1, 1976, 0);
-- q.13189 'Warchief's Blessing'  -- HORDE 
-- script targets for spell 58552
DELETE FROM spell_script_target WHERE entry = 58552;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES 
(58552, 1, 3296, 0), 
(58552, 1, 14304, 0);
