-- q.12033 'Message from the West'

-- Messenger Torvus will whisper player if quest available...(done in Acid)
-- becomes available after q.11916 'Hellscream's Champion'completed.
DELETE FROM conditions WHERE condition_entry IN (20039,20040);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20039, 8, 11916, 0),
(20040,19, 12033, 0);
UPDATE quest_template SET RequiredCondition = 20039 WHERE entry = 12033;
