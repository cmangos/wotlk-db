-- #12948_01
ALTER TABLE db_version CHANGE COLUMN required_12947_01_mangos_game_event required_12948_01_mangos_areatrigger_teleport bit;
ALTER TABLE areatrigger_teleport ADD COLUMN `condition_id` INT(11) unsigned NOT NULL default '0' AFTER target_orientation;

-- #12948_02
ALTER TABLE db_version CHANGE COLUMN required_12948_01_mangos_areatrigger_teleport required_12948_02_mangos_quest_template bit;
ALTER TABLE quest_template ADD COLUMN RequiredCondition INT(11) UNSIGNED NOT NULL DEFAULT 0 AFTER RequiredSkillValue;

-- #12948_03
ALTER TABLE db_version CHANGE COLUMN required_12948_02_mangos_quest_template required_12948_03_mangos_npc_trainer bit;
ALTER TABLE npc_trainer ADD COLUMN `condition_id` INT(11) unsigned NOT NULL default '0' AFTER reqlevel;

-- #12948_04
ALTER TABLE db_version CHANGE COLUMN required_12948_03_mangos_npc_trainer required_12948_04_mangos_npc_trainer_template bit;
ALTER TABLE npc_trainer_template ADD COLUMN `condition_id` INT(11) unsigned NOT NULL default '0' AFTER reqlevel;
