-- Quests: Judgment at the Eye of Eternity
-- Normal: 13384 
-- Heroic: 13385
-- Both req. prequests prequests
UPDATE quest_template SET PrevQuestId = 13372 WHERE entry = 13384;
UPDATE quest_template SET PrevQuestId = 13375 WHERE entry = 13385;
