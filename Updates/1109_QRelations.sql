-- q.9152 Tomber's Supplies should only be available after the player has completed q.9329 or q.9327
-- http://www.wowhead.com/quest=9152/tombers-supplies

DELETE FROM conditions WHERE condition_entry = 1270;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(1270, 22, 9220, 0);

UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 9220; -- War on Deatholme has no prequest
UPDATE quest_template SET RequiredCondition = 1270 WHERE entry = 9151; -- The Sanctum of the Sun is just a lead-in quest. If War on Deatholme is taken or rewarded this quest becomes unavailable.
