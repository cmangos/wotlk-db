
-- ** Achievements **

-- Not in my house - enable the criteria
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (7020) AND type=11;

-- Ironman
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (1824) AND type=11;

-- Save the Day - pvp script
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (5605,5606);
INSERT INTO achievement_criteria_requirement VALUES
(5605, 22, 0, 0),
(5606, 22, 0, 0);
