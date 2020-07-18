-- q.12056 'Marked for Death: High Cultist Zangus'
-- becomes available after q.12034 'Victory Nears...' completed.
UPDATE quest_template SET RequiredCondition = 20038 WHERE entry = 12056;
