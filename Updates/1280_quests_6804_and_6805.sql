-- Kathelas  
-- I have no idea why, but those quests require you to complete 10296 and 10297 (Black Morass questline in Caverns of Time), which is obviously wrong.  
-- The quests shouldnt require anything except being level 55.  
UPDATE quest_template SET PrevQuestId=0 WHERE entry IN (6804,6805);  
