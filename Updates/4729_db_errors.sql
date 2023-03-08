-- DB errors corrected
-- Table creature_movement entry ???? point 1 has no delay but changes run state. Adding delay to point.
UPDATE creature_movement SET WaitTime = 1 WHERE WaitTime = 0 AND ScriptId = 5;
-- Not Req Anymore
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1971601,7945901,7946601,7946701,7948501,7952001,1534301); -- 'RUN ON' -- GENERIC '5' used instead
-- Table `command` have unexpected subcommand 'setdeathstate' in command 'npc setdeathstate', skip.
DELETE FROM command WHERE name = 'npc setdeathstate';

-- UPDATE
/*
Table creature_movement_template entry 17897 point 1 has no delay but changes run state. Adding delay to point.
Table creature_movement_template entry 17895 point 1 has no delay but changes run state. Adding delay to point.
Table creature_movement_template entry 27626 point 1 has no delay but changes run state. Adding delay to point.
Table creature_movement_template entry 12056 point 1 has no delay but changes run state. Adding delay to point.
Table creature_movement_template entry 13533 point 1 has no delay but changes run state. Adding delay to point.
Table creature_movement_template entry 27656 point 1 has no delay but changes run state. Adding delay to point.
Table creature_movement_template entry 17898 point 1 has no delay but changes run state. Adding delay to point.
*/
UPDATE creature_movement_template SET WaitTime = 1 WHERE WaitTime = 0 AND ScriptId = 5;

/*
Table waypoint_path entry 3254 point 98 has no delay but changes run state. Adding delay to point.
*/
UPDATE waypoint_path SET WaitTime = 1 WHERE WaitTime = 0 AND ScriptId = 5;
