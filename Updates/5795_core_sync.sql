ALTER TABLE db_version CHANGE COLUMN required_14093_01_mangos_vehicle_ridespell required_14094_01_mangos_achievement_scripting bit;

ALTER TABLE achievement_criteria_requirement ADD COLUMN ScriptName char(64) DEFAULT NULL;

UPDATE achievement_criteria_requirement SET type=27 WHERE type=11;

DELETE FROM achievement_criteria_requirement WHERE criteria_id=6800;
INSERT INTO achievement_criteria_requirement VALUES
('6800', '6', '3057', '0', NULL),
('6800', '11', '0', '0', 'criterion_sickly_gazelle');

-- implement diff vs TC

INSERT INTO worldstate_name VALUES
(4010,'WoW 4th anniversary'),
(4425,'WoW 5th anniversary');

INSERT INTO achievement_criteria_requirement(criteria_id,type,value1) VALUES
(9058,26,4010),
(12562,26,4425);

-- also has an item level req despite not being in text
DELETE FROM achievement_criteria_requirement WHERE criteria_id IN(4768,4769,4770,4771,4772,4773,4774,4775,4776,4777,4778,4779,4780,4781,4782,4783,4784,4785,4786,6140,6141,6142) AND type=27;
UPDATE achievement_criteria_requirement SET value1=213 WHERE criteria_id IN(4768,4769,4770,4771,4772,4773,4774,4775,4776,4777,4778,4779,4780,4781,4782,4783,4784,4785,4786,6140,6141,6142) AND type=19;


