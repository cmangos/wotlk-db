-- fix for script
-- DB-SCRIPTS: Process table `dbscripts_on_creature_movement` id 2546001, command 18 call for non-creature, skipping.
UPDATE dbscripts_on_creature_movement SET data_flags = 0 WHERE id = 2546001 AND delay = 2;
