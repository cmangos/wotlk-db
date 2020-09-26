
-- ** Achievements **

-- Bloodthirsty Berserker - source aura 24378
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (3684);
INSERT INTO achievement_criteria_requirement VALUES
(3684, 5, 24378, 0);

-- Eye of the Storm domination - pvp script: hold all 4 bases
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (1239);
INSERT INTO achievement_criteria_requirement VALUES
(1239, 22, 0, 0);

-- Storm glory - pvp script:
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (3693);
INSERT INTO achievement_criteria_requirement VALUES
(3693, 22, 0, 0);

-- Take a chill pill - target aura 24378
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (3879);
INSERT INTO achievement_criteria_requirement VALUES
(3879, 7, 24378, 0);
