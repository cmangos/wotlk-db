-- Quests relations.
-- q.9759 'Ending their world' -- should become available after 'What We Know...'
UPDATE quest_template SET PrevQuestId = 9753 WHERE entry = 9759;

-- q.9760 'Vindicator's Rest'
UPDATE quest_template SET NextQuestInChain = 0 WHERE entry = 9760;
