-- q.12057 'The Flesh-Bound Tome'

-- q item drops:
-- for Horde Players only
-- only if q.12056 'Marked for Death: High Cultist Zangus' completed
-- q.12057 'The Flesh-Bound Tome' not finished yet
-- only 1 item in bag

-- Source item:
-- i:36744 'Flesh-Bound Tome'
DELETE FROM conditions WHERE condition_entry = 55; -- moved to wotlk range

DELETE FROM conditions WHERE condition_entry BETWEEN 20057 AND 20060;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20057, 8, 12056, 0, 0, 0, 0),
(20058, 22, 12057, 0, 0, 0, 0),
(20059, 23, 36744, 1, 0, 0, 1),
(20060, -1, 20059, 20058, 20057, 21, 0);
UPDATE creature_loot_template SET condition_id = 20060 WHERE item = 36744;
