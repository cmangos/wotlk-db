-- q.12008 'Agmar's Hammer'
-- next quest should popup automaticly after this one completed
UPDATE quest_template SET NextQuestInChain = 12034 WHERE entry = 12008;
