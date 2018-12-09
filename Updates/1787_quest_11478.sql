-- q.11478 'Outpost Over Yonder...'
-- not available after q.11448'The Explorers\' League Outpost' completed
DELETE FROM conditions WHERE condition_entry = 1564;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(1564, 22, 11448, 0);
UPDATE quest_template SET RequiredCondition = 1564 WHERE entry = 11478;
