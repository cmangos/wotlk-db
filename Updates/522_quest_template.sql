-- quest relations
-- Remove PrevQuestId from q.11978 "Into the Fold"
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 11978;
-- Make q.11977 "A Tauren Among Taunka" and q.11979 "The Taunka and the Tauren" exclusive
-- Add q.11978 "Into the Fold" as NextQuestId to both quests
UPDATE quest_template SET ExclusiveGroup = 11977, NextQuestId = 11978 WHERE entry IN (11977, 11979);
