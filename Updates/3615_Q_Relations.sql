-- q.12795 'Taking a Stand'
-- not available if q.12503 'Defend the Stand' - taken or completed
UPDATE quest_template SET RequiredCondition = 20299 WHERE entry = 12795;
DELETE FROM conditions WHERE condition_entry BETWEEN 20297 AND 20299;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
(20297,8,12503,0,0,0,1),
(20298,9,12503,0,0,0,1),
(20299,-2,20298,20297,0,0,0);
-- q.12503 'Defend the Stand'
-- q.12740 'Parachutes for the Argent Crusade'
-- these 2 can be done without taking q.12795 'Taking a Stand'
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 12596, ExclusiveGroup = -12503 WHERE entry IN(12503,12740);
