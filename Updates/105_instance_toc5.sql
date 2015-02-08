-- Toc5
-- Script target for the black knight intro
DELETE FROM spell_script_target WHERE entry IN (67705,67715,67751);
INSERT INTO spell_script_target VALUES
(67705, 1, 35005, 0),
(67715, 1, 35004, 0),
(67751, 1, 35590, 0),
(67751, 1, 35545, 0),
(67751, 1, 35564, 0);
-- creature linking for paletress memories
DELETE FROM creature_linking_template WHERE entry IN (35545,35564,35590);
INSERT INTO creature_linking_template VALUES
(35545,650,35451,4096,0),
(35564,650,35451,4096,0),
(35590,650,35451,4096,0);
-- achiev criteria
DELETE FROM achievement_criteria_requirement WHERE criteria_id=11789 AND type=18;
INSERT INTO achievement_criteria_requirement VALUES
(11789, 18, 0, 0);
