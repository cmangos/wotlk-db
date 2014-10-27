-- Ulduar achievs (Vezax)
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (10173,10306);
INSERT INTO achievement_criteria_requirement VALUES
(10173, 12, 0, 0),
(10173, 18, 0, 0),
(10306, 12, 1, 0),
(10306, 18, 0, 0);
