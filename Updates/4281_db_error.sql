-- DB error fixed
-- Table `dbscripts_on_creature_movement` SCRIPT_COMMAND_MOVEMENT has invalid forced movement type 8 for script id 1763502
UPDATE dbscripts_on_creature_movement SET data_flags = 8, dataint = 0 WHERE command = 20 AND id = 1763502;
