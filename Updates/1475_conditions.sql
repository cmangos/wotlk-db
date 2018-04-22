-- Fixed requirements for quests 8764, 8765 & 8766 allowing to change the path chosen for the signets of the Bronze Dragonflights
-- This closes https://github.com/classicdb/database/issues/407
DELETE FROM conditions WHERE condition_entry BETWEEN 1455 AND 1459;
INSERT INTO conditions VALUES
(1455, 8, 8751, 0, 'Quest ID 8751 Rewarded'),
(1456, 8, 8756, 0, 'Quest ID 8756 Rewarded'),
(1457, 8, 8761, 0, 'Quest ID 8761 Rewarded'),
(1458, -2, 1455, 1456, '(Quest ID 8751 Rewarded) OR (Quest ID 8756 Rewarded)'),
(1459, -2, 1457, 1458, '(Quest ID 8751 Rewarded) OR (Quest ID 8756 Rewarded) OR (Quest ID 8761 Rewarded)');
UPDATE quest_template SET PrevQuestId=0, RequiredCondition=1459 WHERE entry IN (8764, 8765, 8766);
