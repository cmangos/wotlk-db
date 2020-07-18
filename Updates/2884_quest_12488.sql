-- q.12488 'The High Executor Needs You'

-- not available to players if q.12487 'To Conquest Hold, But Be Careful!' taken or completed
DELETE FROM conditions WHERE condition_entry = 20055;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20055, 22, 12487, 0);
UPDATE quest_template SET RequiredCondition = 20055 WHERE entry = 12488;
