-- Eranikus the Chained
-- spawned from item 10455 (must whisper to player random text)
DELETE FROM dbscript_random_templates WHERE id = 6; -- templates are diff for each DB
INSERT INTO dbscript_random_templates (id, type, target_id, chance) VALUES
(6,0,-1657,0),
(6,0,-1658,0),
(6,0,-1659,0),
(6,0,-1660,0),
(6,0,-1661,0),
(6,0,-1662,0),
(6,0,-1663,0),
(6,0,-1664,0),
(6,0,-1665,0);
