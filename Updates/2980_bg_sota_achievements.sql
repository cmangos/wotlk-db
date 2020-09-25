

-- ** Achievements **

-- Steady Hands; no extra requirement; required to enable the criteria
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (6447);
INSERT INTO achievement_criteria_requirement VALUES
(6447, 0, 0, 0);

-- Defense of the Ancients (Horde) - pvp script
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (7740);
INSERT INTO achievement_criteria_requirement VALUES
(7740, 22, 0, 0);

-- Defense of the Ancients (Alliance) - pvp script
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (7636);
INSERT INTO achievement_criteria_requirement VALUES
(7636, 22, 0, 0);

-- Storm the beach; no extra requirement; required to enable the criteria
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (8758,8759);
INSERT INTO achievement_criteria_requirement VALUES
(8758, 0, 0, 0),
(8759, 0, 0, 0);

-- Ancient Protector - source area 4609
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (7630);
INSERT INTO achievement_criteria_requirement VALUES
(7630, 6, 4609, 0);

-- Ancient Courtyard Protector - source area 4609
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (7631);
INSERT INTO achievement_criteria_requirement VALUES
(7631, 6, 4609, 0);

-- Drop it now - pvp script
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (7629);
INSERT INTO achievement_criteria_requirement VALUES
(7629, 22, 0, 0);

-- Drop it!- pvp script
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (6446);
INSERT INTO achievement_criteria_requirement VALUES
(6446, 22, 0, 0);

-- Explosive Expert; no extra requirement; required to enable the criteria
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (7635);
INSERT INTO achievement_criteria_requirement VALUES
(7635, 0, 0, 0);

-- The Dapper Sapper; no extra requirement; required to enable the criteria
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (7632);
INSERT INTO achievement_criteria_requirement VALUES
(7632, 0, 0, 0);

-- Artillery Expert - pvp script
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (7628);
INSERT INTO achievement_criteria_requirement VALUES
(7628, 22, 0, 0);

-- Artillery Veteran - pvp script
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (7625);
INSERT INTO achievement_criteria_requirement VALUES
(7625, 22, 0, 0);
