-- q.12063 'Strength of Icemist'
-- becomes available after q.12036 'From the Depths of Azjol-Nerub'completed.
DELETE FROM conditions WHERE condition_entry = 20044;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20044, 8, 12036, 0);
UPDATE quest_template SET RequiredCondition = 20044 WHERE entry = 12063;
