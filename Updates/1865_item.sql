-- item: Vrykul Scroll of Ascension
-- drop requirements corrected
DELETE FROM conditions WHERE condition_entry IN (48,49); -- these were wrong
DELETE FROM conditions WHERE condition_entry IN (20023,20024,20025);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(20023, 8, 11248, 0), -- q.11248 'Operation: Skornful Wrath' - A 
(20024, 16, 33345, 1), -- only 1 item available
(20025, -1, 20023, 20024);
UPDATE creature_loot_template SET condition_id = 20025 WHERE item = 33314;  -- q.11248 'Operation: Skornful Wrath' - A 
UPDATE creature_loot_template SET condition_id = 421 WHERE item = 33345;  -- q.11256 'Skorn Must Fall!' - H
