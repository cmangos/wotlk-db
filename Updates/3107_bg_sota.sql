
-- Battleground SotA teleport spells
DELETE FROM spell_script_target WHERE entry  IN (52365,52528,53464,53465);
INSERT INTO spell_script_target VALUES
(52528,0,193183,0),
(52365,0,193184,0),
(53464,0,193182,0),
(53465,0,193185,0);

-- set ships as active
UPDATE gameobject_template SET ExtraFlags = 4096 WHERE entry IN (193183,193184,193182,193185);
