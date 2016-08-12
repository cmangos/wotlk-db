-- quest relations
-- q.12312 'Secrets of the Scourge' should become available after q.12309 "Find Durkon!" completed
UPDATE quest_template SET PrevQuestId = 12309 WHERE entry = 12312;
  