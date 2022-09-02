-- Strange Mojo i.38321
-- player hasnt dropped yet
-- player havent finish quest from it yet
DELETE FROM conditions WHERE condition_entry BETWEEN 20427 AND 20430;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20427, 9, 12507, 0, 0, 0, 1), -- player must havent started quest yet
(20428, 8, 12507, 0, 0, 0, 1), -- player havent finish quest yet
(20429, 23, 38321, 1, 0, 0, 1), -- player has less than count of items (including inventory stored in the bank)
(20430, -1, 20429, 20428, 20427, 0, 0); -- final
UPDATE creature_loot_template SET condition_id = 20430 WHERE item = 38321;
