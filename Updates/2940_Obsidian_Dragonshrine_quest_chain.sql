-- Obsidian Dragonshrine Questchain

-- q.12261 'No Place to Run'
-- q.12262 'No One to Save You'
-- becomes available after q.12447 'The Obsidian Dragonshrine' completed.
DELETE FROM conditions WHERE condition_entry = 20075;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20075, 8, 12447, 0);
UPDATE quest_template SET RequiredCondition = 20075 WHERE entry IN (12261,12262);

-- q.12263 'The Best of Intentions'
-- becomes available after q.12261 'No Place to Run' & q.12262 'No One to Save You' completed.
DELETE FROM conditions WHERE condition_entry BETWEEN 20076 AND 20078;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20076, 8, 12261, 0),
(20077, 8, 12262, 0),
(20078, -1, 20077, 20076);
UPDATE quest_template SET RequiredCondition = 20078 WHERE entry = 12263;

-- q.12264 'Culling the Damned'
-- q.12265 'Defiling the Defilers'
-- becomes available after q.12263 'The Best of Intentions' completed.
DELETE FROM conditions WHERE condition_entry = 20079;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20079, 8, 12263, 0);
UPDATE quest_template SET RequiredCondition = 20079 WHERE entry IN (12264,12265);

-- q.12267 'Neltharion's Flame'
-- becomes available after q.12264 'Culling the Damned' & q.12265 'Defiling the Defilers' completed.
DELETE FROM conditions WHERE condition_entry BETWEEN 20080 AND 20082;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20080, 8, 12264, 0),
(20081, 8, 12265, 0),
(20082, -1, 20081, 20080);
UPDATE quest_template SET RequiredCondition = 20082 WHERE entry = 12267;
