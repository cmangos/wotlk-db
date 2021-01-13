
-- Utgarde pinnalce

-- Gauntlet script targets
DELETE FROM spell_script_target WHERE entry = 49308;
INSERT INTO spell_script_target VALUES
(49308,1,28351,0);

-- Heroic Skadi
UPDATE creature_template SET RegenerateStats=12 WHERE entry=30775;
