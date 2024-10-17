-- q.13093 'Reading the Bones'
-- req. q.13092 rewarded
UPDATE quest_template SET RequiredCondition = 20757 WHERE entry = 13093;
DELETE FROM conditions WHERE condition_entry = 20757;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20757,8,13092,0,0,0,0,'');
