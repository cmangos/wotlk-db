-- q.11564 'Succulent Orca Stew'
-- quest req. q.11562 to be completed first
UPDATE quest_template SET PrevQuestId = 11562 WHERE entry = 11564;
