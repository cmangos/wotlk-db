-- q.11662 'Seek Out Karuk!'
-- Players must complete q.11656 and q.11661 first
DELETE FROM conditions WHERE condition_entry BETWEEN 1439 AND 1441;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1439, 8, 11656, 0), -- quest finished
(1440, 8, 11661, 0),  -- quest finished
(1441, -1, 1440, 1439);
UPDATE quest_template SET RequiredCondition = 1441 WHERE entry = 11662;
