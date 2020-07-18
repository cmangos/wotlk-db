-- q.12095 'To Dragon's Fall'
-- becomes available after these 3 completed
-- q.12089 'WANTED: Magister Keldonus'
-- q.12090 'WANTED: Gigantaur'
-- q.12091 'WANTED: Dreadtalon'
DELETE FROM conditions WHERE condition_entry BETWEEN 20047 AND 20050;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20047, 8, 12089, 0, 0, 0, 0),
(20048, 8, 12090, 0, 0, 0, 0),
(20049, 8, 12091, 0, 0, 0, 0),
(20050, -1, 20049, 20048, 20047, 0, 0);
UPDATE quest_template SET RequiredCondition = 20050 WHERE entry = 12095;
