-- q.12100 'Containing the Rot'
-- becomes available after q.12034 'Victory Nears...'completed.
DELETE FROM conditions WHERE condition_entry = 20038;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20038, 8, 12034, 0);
UPDATE quest_template SET RequiredCondition = 20038 WHERE entry = 12100;
