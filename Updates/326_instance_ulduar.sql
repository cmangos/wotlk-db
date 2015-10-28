-- Ulduar
-- missing achiev criterias
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN (10408,10453,10438,10454,10444,10455);
INSERT INTO achievement_criteria_requirement VALUES
-- hodir
(10408,12,0,0),
(10453,12,1,0),
-- thorim
(10438,12,0,0),
(10454,12,1,0),
-- Freya
(10444,12,0,0),
(10455,12,1,0);
-- script targets
DELETE FROM spell_script_target WHERE entry in (63947);
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(63947, 1, 33228, 0);
