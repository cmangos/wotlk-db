-- Item: Mikhail's Journal

/*
Mikhail's Journal 36940 - Allinace
Mikhail's Journal 37830 - Horde
Both should only drop if:
- drops dependent of faction
- player hasnt droped yet
- player didnt accept quest from it
- player didnt finish quest from it yet
*/

-- Mikhail's Journal 36940 - Allinace
-- q.12105 'Descent into Darkness'
DELETE FROM conditions WHERE condition_entry BETWEEN 20249 AND 20253;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20249, 23, 36940, 1, 0, 0, 1), -- player has less than count of items (including inventory stored in the bank)
(20250, 9, 12105, 0, 0, 0, 1), -- player didnt start quest yet
(20251, 8, 12105, 0, 0, 0, 1), -- player didnt finish quest yet
(20252, -2, 20251, 20250, 0, 0, 0), -- or
(20253, -1, 20252, 20249, 22, 0, 0); -- above + alliance only
UPDATE creature_loot_template SET condition_id = 20253 WHERE item = 36940;

-- Mikhail's Journal 37830 - Horde
-- q.12423 'Mikhail's Journal'
DELETE FROM conditions WHERE condition_entry BETWEEN 20254 AND 20258;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20254, 23, 37830, 1, 0, 0, 1), -- player has less than count of items (including inventory stored in the bank)
(20255, 9, 12423, 0, 0, 0, 1), -- player didnt start quest yet
(20256, 8, 12423, 0, 0, 0, 1), -- player didnt finish quest yet
(20257, -2, 20256, 20255, 0, 0, 0), -- or
(20258, -1, 20257, 20254, 21, 0, 0); -- above + horde only
UPDATE creature_loot_template SET condition_id = 20258 WHERE item = 37830;
