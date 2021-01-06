-- Get rid of errors with 0 delay with scripts
UPDATE creature_movement SET waittime = 10 WHERE waittime = 0 AND script_id > 0;
UPDATE creature_movement_template SET waittime = 10 WHERE waittime = 0 AND script_id > 0;
