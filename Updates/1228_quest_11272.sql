-- q.11272 'A Score to Settle'
-- This quest should becomes available after quest = 11234
UPDATE quest_template SET PrevQuestId = 11234 WHERE entry = 11272;
