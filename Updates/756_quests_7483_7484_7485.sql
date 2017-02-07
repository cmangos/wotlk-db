-- q.7483 'Libram of Rapidity'
-- q.7484 'Libram of Focus'
-- q.7485 'Libram of Protection'
-- available only after (q.7481 'Elven Legends' - Horde) or (q.7482 'Elven Legends') - Alliance completed
DELETE FROM conditions WHERE condition_entry BETWEEN 1144 AND 1146;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1144, 8, 7481, 0),
(1145, 8, 7482, 0),
(1146, -2, 1145, 1144);
UPDATE quest_template SET RequiredCondition = 1146 WHERE entry IN (7483,7484,7485);
