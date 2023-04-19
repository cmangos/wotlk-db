-- q.10720 'The Smallest Creatures'
-- spell target fixed
DELETE FROM spell_script_target WHERE entry IN (38629);
INSERT INTO spell_script_target(entry, type, targetEntry) VALUES
(38629,1,22356),
(38629,1,22367),
(38629,1,22368);
