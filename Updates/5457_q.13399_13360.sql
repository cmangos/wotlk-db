-- q.13399 'Time for Answers' - A
-- q.13360 'Time for Answers' - H

-- q.13399 'Time for Answers' - A
-- available after q.13398 rewarded
UPDATE quest_template SET RequiredCondition = 20823 WHERE entry IN (13399);
-- q.13360 'Time for Answers' - H
-- available after q.13359 rewarded
UPDATE quest_template SET RequiredCondition = 20824 WHERE entry IN (13360);
DELETE FROM conditions WHERE condition_entry BETWEEN 20823 AND 20824;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20823,8,13398,0,0,0,''),
(20824,8,13359,0,0,0,'');
