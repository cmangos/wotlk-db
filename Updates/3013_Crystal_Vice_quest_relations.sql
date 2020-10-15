-- q.12079 'Stomping Grounds'
-- becomes available after q.12075 'Slim Pickings' completed
DELETE FROM conditions WHERE condition_entry = 20116;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20116, 8, 12075, 0);
UPDATE quest_template SET RequiredCondition = 20116 WHERE entry = 12079;

-- q.12078 'Worm Wrangler'
-- q.12080 'Really Big Worm'
-- becomes available after q.12077 'Apply This Twice A Day' completed
DELETE FROM conditions WHERE condition_entry = 20117;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20117, 8, 12077, 0);
UPDATE quest_template SET RequiredCondition = 20117 WHERE entry = 12078;
UPDATE quest_template SET RequiredCondition = 20117 WHERE entry = 12080;


