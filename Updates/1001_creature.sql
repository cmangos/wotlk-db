-- Time Keeper
-- texts added
DELETE FROM dbscript_random_templates WHERE id IN (7,8); -- templates are diff for each DB
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(7,0,-1668,0,'17918 - on Despawn'),
(7,0,-1669,0,'17918 - on Despawn'),
(7,0,-1670,0,'17918 - on Despawn'),
(8,0,-1671,0,'17918 - on Spawn'),
(8,0,-1672,0,'17918 - on Spawn'),
(8,0,-1673,0,'17918 - on Spawn');
