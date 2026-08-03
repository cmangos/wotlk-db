-- q.13108 'Whatever it Takes!' & q.13109 'Diametrically Opposed'
-- REQ: q.13047 'The Reckoning' rewarded
UPDATE quest_template SET RequiredCondition = 20926 WHERE entry IN (13108,13109);
DELETE FROM conditions WHERE condition_entry IN (20926);
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20926, 8, 13047, 0, 0, 0, 0);
