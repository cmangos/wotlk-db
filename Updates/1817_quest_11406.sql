-- q.11406 'Everything Must Be Ready'
-- quest must become available after 11332 'Mission: Plague This!' completed
-- checked on few diff sources ..
UPDATE quest_template SET PrevQuestId = 11332, NextQuestId = 0 WHERE entry = 11406;
