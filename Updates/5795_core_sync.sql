ALTER TABLE db_version CHANGE COLUMN required_14093_01_mangos_vehicle_ridespell required_14094_01_mangos_achievement_scripting bit;

ALTER TABLE achievement_criteria_requirement ADD COLUMN ScriptName char(64) DEFAULT NULL;

UPDATE achievement_criteria_requirement SET type=27 WHERE type=11;

DELETE FROM achievement_criteria_requirement WHERE criteria_id=6800;
INSERT INTO achievement_criteria_requirement VALUES
('6800', '6', '3057', '0', NULL),
('6800', '11', '0', '0', 'criterion_sickly_gazelle');