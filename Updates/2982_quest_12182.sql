-- q.12182 'To Venomspite!'
-- not available to players if q.12189 'Imbeciles Abound!' taken or completed
DELETE FROM conditions WHERE condition_entry = 20087;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20087, 22, 12189, 0);
UPDATE quest_template SET RequiredCondition = 20086 WHERE entry = 12182;
