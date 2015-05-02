-- Disable Love is in the Air Items from Vendors and active only when event starts
DELETE FROM conditions WHERE condition_entry = 15;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(15,12,8,0);
UPDATE npc_vendor SET condition_id = 15 WHERE item IN (21833,21829,21815);
