-- q.12499 'Return To Angrathar' - A
-- q.12500 'Return To Angrathar' - H
-- Both becomes available after q.12498 'On Ruby Wings' completed
DELETE FROM conditions WHERE condition_entry = 20071;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20071, 8, 12498, 0, 0, 0, 0);
UPDATE quest_template SET RequiredCondition = 20071 WHERE entry IN (12499,12500);
