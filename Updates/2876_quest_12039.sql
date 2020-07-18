-- q.12039 'Black Blood of Yogg-Saron'
-- becomes available after q.12034 'Victory Nears...'completed.
UPDATE quest_template SET RequiredCondition = 20038 WHERE entry = 12039;
