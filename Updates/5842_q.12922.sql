-- q.12922 'The Refiner's Fire'
-- i.41556 'Slag Covered Meta'
-- drops only if:
-- - no item in inv/bank yet
-- - quest not accepted/completed yet
DELETE FROM conditions WHERE condition_entry BETWEEN 20913 AND 20916;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20913, 9, 12922, 0, 0, 0, 1), -- player must havent started quest yet
(20914, 8, 12922, 0, 0, 0, 1), -- player havent finish quest yet
(20915, 23, 41556, 1, 0, 0, 1), -- player has less than count of items (including inventory stored in the bank)
(20916, -1, 20915, 20914, 20913, 0, 0); -- final
UPDATE creature_loot_template SET condition_id = 20916 WHERE item = 41556;
