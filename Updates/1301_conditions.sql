-- Boulderfist Key i.25490 should only drop while q.9923 is taken but not completed.
UPDATE creature_loot_template SET condition_id = 1403 WHERE item=25490;
DELETE FROM conditions WHERE condition_entry = 1403;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1403, 9, 9923, 1); 
