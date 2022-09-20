-- q.12584 'Pure Evil'
-- becomes available after q.12552 'Death to the Necromagi' completed
UPDATE quest_template SET PrevQuestId = 12552 WHERE entry = 12584;
