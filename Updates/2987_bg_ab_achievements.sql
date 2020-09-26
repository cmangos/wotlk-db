-- ** Achievements **

-- We Had It All Along - pvp script
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (1235);
INSERT INTO achievement_criteria_requirement VALUES
(1235, 22, 0, 0);

-- Territorial Dominance - pvp script
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (1234);
INSERT INTO achievement_criteria_requirement VALUES
(1234, 22, 0, 0);

-- Resilient Victory - pvp script
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (3804,3805,3806,3807,3808,3809,3810,3811,3812,3813);
INSERT INTO achievement_criteria_requirement VALUES
(3804, 22, 0, 0),
(3805, 22, 0, 0),
(3806, 22, 0, 0),
(3807, 22, 0, 0),
(3808, 22, 0, 0),
(3809, 22, 0, 0),
(3810, 22, 0, 0),
(3811, 22, 0, 0),
(3812, 22, 0, 0),
(3813, 22, 0, 0);
