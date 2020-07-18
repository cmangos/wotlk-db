-- q.12224 'The Kor'kron Vanguard!'
-- becomes available after these 3 completed
-- q.12072 'Blightbeasts be Damned!'
-- q.12140 'All Hail Roanauk!'
-- q.12221 'The Forsaken Blight'
DELETE FROM conditions WHERE condition_entry BETWEEN 20051 AND 20054;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20051, 8, 12072, 0, 0, 0, 0),
(20052, 8, 12140, 0, 0, 0, 0),
(20053, 8, 12221, 0, 0, 0, 0),
(20054, -1, 20051, 20052, 20053, 0, 0);
UPDATE quest_template SET RequiredCondition = 20054 WHERE entry = 12224;
