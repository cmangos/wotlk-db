-- q.11996 'Your Presence is Required at Agmar's Hammer'

-- not available to players if q.12008 'Agmar's Hammer' taken or completed
DELETE FROM conditions WHERE condition_entry = 20041;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20041, 22, 12008, 0);
UPDATE quest_template SET RequiredCondition = 20041 WHERE entry = 11996;
