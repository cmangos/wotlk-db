-- q.12813 'From Their Corpses, Rise!'
-- q.12838 'Intelligence Gathering'
-- req. q.12807 rewarded
UPDATE quest_template SET RequiredCondition = 20759 WHERE entry IN (12813,12838);
DELETE FROM conditions WHERE condition_entry = 20759;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20759,8,12807,0,0,0,0,'');
