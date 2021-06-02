-- target for 28697 'Forgiveness'
DELETE FROM spell_script_target WHERE entry = 28697;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(28697, 1, 3976, 0);
