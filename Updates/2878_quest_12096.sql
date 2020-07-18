-- q.12096 'Strengthen the Ancients'

--  Requires q.12066 'The Focus on the Beach' completed
DELETE FROM conditions WHERE condition_entry = 20045;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20045, 8, 12066, 0);
UPDATE quest_template SET RequiredCondition = 20045 WHERE entry = 12096;
