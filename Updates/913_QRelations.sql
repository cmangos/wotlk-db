-- q.12141 'A Diplomatic Mission'
-- Quest is not reQ to get q.11662
UPDATE quest_template SET NextQuestId = 0 WHERE entry = 12141;
