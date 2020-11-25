
-- Oculus vehicles use two different set of spells
DELETE FROM creature_template_spells WHERE entry IN (27692,27755,27756);
INSERT INTO creature_template_spells (entry,setId,spell1,spell2,spell3,spell6) VALUES
(27692,1,50328,50341,50344,53389),
(27755,1,49840,49838,49592,53389),
(27756,1,50232,50240,50253,53389),
(27692,0,50328,50341,0,53389),
(27755,0,49840,49838,0,53389),
(27756,0,50232,50240,0,53389);
