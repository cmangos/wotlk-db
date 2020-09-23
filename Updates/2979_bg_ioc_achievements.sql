
-- ** Achievements **

-- Four car garage; no extra requirement; required to enable the criteria
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (11492,11493,11494,11495);
INSERT INTO achievement_criteria_requirement VALUES
(11492, 0, 0, 0),
(11493, 0, 0, 0),
(11494, 0, 0, 0),
(11495, 0, 0, 0);

-- Bomb inable (seaforium bomb); no extra requirement; required to enable the criteria
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12066);
INSERT INTO achievement_criteria_requirement VALUES
(12066, 0, 0, 0);

-- Bomb ination (huge seaforium bomb); no extra requirement; required to enable the criteria
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12067);
INSERT INTO achievement_criteria_requirement VALUES
(12067, 0, 0, 0);

-- Isle of Conquest All-Star (bomb disarm; no extra requirement; required to enable the criteria
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12059);
INSERT INTO achievement_criteria_requirement VALUES
(12059, 0, 0, 0);

-- Cut the Blue / Red wire (spell requirement); no extra requirement; required to enable the criteria
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12132);
INSERT INTO achievement_criteria_requirement VALUES
(12132, 0, 0, 0);

-- moved down - pvp script
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12114,12068);
INSERT INTO achievement_criteria_requirement VALUES
(12114, 22, 0, 0),
(12068, 22, 0, 0);

-- glave grave - pvp script
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12183);
INSERT INTO achievement_criteria_requirement VALUES
(12183, 22, 0, 0);

-- demolition derby (alliance); DB requirements: creature entry
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (11497,11498,11500,11501);
INSERT INTO achievement_criteria_requirement VALUES
(11498, 1, 34775, 0), -- demolisher
(11500, 1, 34793, 0), -- catapult
(11501, 1, 35069, 0), -- siege engine
(11497, 1, 35273, 0); -- glaive

-- demolition derby (horde); DB requirements: creature entry
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12178,12179,12181,12182);
INSERT INTO achievement_criteria_requirement VALUES
(12179, 1, 34775, 0), -- demolisher
(12181, 1, 34793, 0), -- catapult
(12182, 1, 34776, 0), -- siege engine
(12178, 1, 34802, 0); -- glaive

-- mine - pvp script
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (12062, 12063, 12064, 12065);
INSERT INTO achievement_criteria_requirement VALUES
(12062, 22, 0, 0),
(12063, 22, 0, 0),
(12064, 22, 0, 0),
(12065, 22, 0, 0);
