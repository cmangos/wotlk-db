-- q.12815 'No Fly Zone'
-- req. q.12814 rewarded
UPDATE quest_template SET RequiredCondition = 20758 WHERE entry = 12815;
DELETE FROM conditions WHERE condition_entry = 20758;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20758,8,12814,0,0,0,0,'');
