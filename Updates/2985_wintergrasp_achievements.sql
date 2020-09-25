
-- ** Achievements **

-- Didn't stand a chance - pvp script
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (7703);
INSERT INTO achievement_criteria_requirement VALUES
(7703, 22, 0, 0);

-- Leaning Tower: enable spell criteria
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (9060,9061);
INSERT INTO achievement_criteria_requirement VALUES
(9060, 0, 0, 0),
(9061, 0, 0, 0);

-- Vehicular Gnomeslaughter - creature entry
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (7704,7705,7706,7707,7708);
INSERT INTO achievement_criteria_requirement VALUES
(7704, 22, 0, 0),
(7705, 22, 0, 0),
(7706, 22, 0, 0),
(7707, 22, 0, 0),
(7708, 22, 0, 0);

-- Wintergrasp victory: enable spell criteria
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (6436);
INSERT INTO achievement_criteria_requirement VALUES
(6436, 0, 0, 0);

-- Wintergrasp veteran: enable spell
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (7365);
INSERT INTO achievement_criteria_requirement VALUES
(7365, 0, 0, 0);

-- Within our grasp: enable spell + pvp script
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (7666);
INSERT INTO achievement_criteria_requirement VALUES
(7666, 22, 0, 0);
