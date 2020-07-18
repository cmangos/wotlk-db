-- q.12034 'Victory Nears...'

--  Requires q.12008 'Agmar's Hammer' completed
DELETE FROM conditions WHERE condition_entry = 20046;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20046, 8, 12008, 0);
UPDATE quest_template SET RequiredCondition = 20046 WHERE entry = 12034;
