-- add condition req. for q.11000
DELETE FROM conditions WHERE condition_entry = 1409;
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(1409, 8, 11000, 0, 'Quest ID 11000 Rewarded');
