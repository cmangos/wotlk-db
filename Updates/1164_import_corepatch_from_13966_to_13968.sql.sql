-- 13966
ALTER TABLE db_version CHANGE COLUMN required_13965_01_mangos_questgiver_greeting required_13966_01_mangos_creature_movement_drops bit;

ALTER TABLE creature_movement DROP COLUMN textId1;
ALTER TABLE creature_movement DROP COLUMN textId2;
ALTER TABLE creature_movement DROP COLUMN textId3;
ALTER TABLE creature_movement DROP COLUMN textId4;
ALTER TABLE creature_movement DROP COLUMN textId5;
ALTER TABLE creature_movement DROP COLUMN emote;
ALTER TABLE creature_movement DROP COLUMN spell;
ALTER TABLE creature_movement DROP COLUMN model1;
ALTER TABLE creature_movement DROP COLUMN model2;

ALTER TABLE creature_movement_template DROP COLUMN textId1;
ALTER TABLE creature_movement_template DROP COLUMN textId2;
ALTER TABLE creature_movement_template DROP COLUMN textId3;
ALTER TABLE creature_movement_template DROP COLUMN textId4;
ALTER TABLE creature_movement_template DROP COLUMN textId5;
ALTER TABLE creature_movement_template DROP COLUMN emote;
ALTER TABLE creature_movement_template DROP COLUMN spell;
ALTER TABLE creature_movement_template DROP COLUMN model1;
ALTER TABLE creature_movement_template DROP COLUMN model2;

-- 13967
ALTER TABLE db_version CHANGE COLUMN required_13966_01_mangos_creature_movement_drops required_13967_01_mangos_creature_template_leashing bit;

ALTER TABLE creature_template ADD COLUMN `Detection` INT(10) UNSIGNED NOT NULL DEFAULT '20' COMMENT 'Detection range for proximity' AFTER `SpeedRun`;
ALTER TABLE creature_template ADD COLUMN `CallForHelp` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Range in which creature calls for help?' AFTER `Detection`;
ALTER TABLE creature_template ADD COLUMN `Pursuit` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'When exceeded during pursuit creature evades?' AFTER `CallForHelp`;
ALTER TABLE creature_template ADD COLUMN `Leash` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Leash range from combat start position' AFTER `Pursuit`;
ALTER TABLE creature_template ADD COLUMN `Timeout` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Time for refreshing leashing before evade?' AFTER `Leash`;

-- 13968
ALTER TABLE db_version CHANGE COLUMN required_13967_01_mangos_creature_template_leashing required_13968_01_mangos_model_speeds bit;

ALTER TABLE creature_model_info ADD COLUMN `SpeedWalk` FLOAT NOT NULL DEFAULT '1' COMMENT 'Default walking speed for any creature with model' AFTER `combat_reach`;
ALTER TABLE creature_model_info ADD COLUMN `SpeedRun` FLOAT NOT NULL DEFAULT '1.14286' COMMENT 'Default running speed for any creature with model' AFTER `SpeedWalk`;

ALTER TABLE creature_template MODIFY COLUMN `SpeedWalk` FLOAT NOT NULL DEFAULT '0';
ALTER TABLE creature_template MODIFY COLUMN `SpeedRun` FLOAT NOT NULL DEFAULT '0';
