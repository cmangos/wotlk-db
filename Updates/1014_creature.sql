-- DB
-- Random texts
DELETE FROM dbscript_random_templates WHERE id IN (14,15); -- templates are diff for each DB
INSERT INTO dbscript_random_templates (id, type, target_id, chance) VALUES
-- Boulderfist Crusher / Boulderfist Mystic
(14,0,-1683,0),
(14,0,-1684,0),
(14,0,-1685,0),
(14,0,-1686,0),
-- Corki
(15,0,-1687,0),
(15,0,-1688,0),
(15,0,-1689,0),
(15,0,-1690,0),
(15,0,-1691,0);
