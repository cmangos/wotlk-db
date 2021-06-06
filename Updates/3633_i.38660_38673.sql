/*
Item: Unliving Choker & Writhing Choker
Both should only drop if:
- drops dependent of faction
- hasnt droped yet
- player didnt accept quest from it
- player didnt finish quest from it yet
*/
-- i.38660 - Unliving Choker
DELETE FROM conditions WHERE condition_entry BETWEEN 20300 AND 20309;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES
(20300, 23, 38660, 1, 0, 0, 1), -- player has less than count of items (including inventory stored in the bank)
(20301, 9, 12631, 0, 0, 0, 1), -- player didnt start quest yet
(20302, 8, 12631, 0, 0, 0, 1), -- player didnt finish quest yet
(20303, -2, 20302, 20301, 0, 0, 0), -- or
(20304, -1, 20303, 20300, 59, 0, 0), -- above
-- i.38673 - Writhing Choker
(20305, 23, 38673, 1, 0, 0, 1), -- player has less than count of items (including inventory stored in the bank)
(20306, 9, 12633, 0, 0, 0, 1), -- player didnt start quest yet
(20307, 8, 12633, 0, 0, 0, 1), -- player didnt finish quest yet
(20308, -2, 20307, 20306, 0, 0, 0), -- or
(20309, -1, 20308, 20305, 60, 0, 0); -- above
UPDATE creature_loot_template SET condition_id = 20304 WHERE item = 38660;
UPDATE creature_loot_template SET condition_id = 20309 WHERE item = 38673;
