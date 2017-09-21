-- Shadowy Necromancer
-- Random Say
DELETE FROM dbscript_random_templates WHERE id = 10; -- templates are diff for each DB
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(10,0,-1680,0,'17899 - Say on Death'),
(10,0,-1681,0,'17899 - Say on Death'),
(10,0,-1682,0,'17899 - Say on Death');
