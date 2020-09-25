-- q.12189 'Imbeciles Abound!'
-- not available to players if q.12182 'To Venomspite!' taken or completed
DELETE FROM conditions WHERE condition_entry = 20086;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20086, 22, 12182, 0);
UPDATE quest_template SET RequiredCondition = 20086 WHERE entry = 12189;
