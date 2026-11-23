-- q.12965 'The Gifts of Loken'
-- q.12978 'Facing the Storm'
-- Both req q.12957 & q.12964 rewarded
UPDATE quest_template SET RequiredCondition = 21139 WHERE entry IN (12965,12978);
DELETE FROM conditions WHERE condition_entry BETWEEN 21138 AND 21139;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(21138,8,12957,0,0,0,0,''),
(21139,-1,21138,61,0,0,0,'');
