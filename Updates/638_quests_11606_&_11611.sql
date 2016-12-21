-- q.11606 'Patience is a Virtue that We Don't Need'
-- q.11611 'Taken by the Scourge'
-- (Patch 3.0.3) You have to do Hellscream's Vigil and The Defense of Warsong Hold quests before these becomes available.
DELETE FROM conditions WHERE condition_entry BETWEEN 1116 AND 1120;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
-- for prev quests
(1116, 8, 11595, 0),
(1117, 8, 11596, 0),
(1118, 8, 11597, 0),
(1119, -2, 1118, 1117),
(1120, -2, 1119, 1116);
UPDATE quest_template SET RequiredCondition = 1120 WHERE entry = 11606;
UPDATE quest_template SET RequiredCondition = 1120 WHERE entry = 11611;
