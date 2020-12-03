-- Steel Gate Flying Machine 24418
-- finally we can set up to diff sets of spell depends of req.
-- Part of sd2 script.
DELETE FROM creature_template_spells WHERE entry = 24418;
INSERT INTO creature_template_spells (entry, setId, spell1, spell2, spell3, spell4, spell5) VALUES
(24418,0,43770,0,0,0,0), -- q.11390
(24418,1,43799,43769,44009,0,0); -- q.11391

-- fixed in SD2
DELETE FROM dbscripts_on_spell WHERE id IN (43770,43789);
