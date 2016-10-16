-- Quest relations in Camp Oneqwah
-- Make q12195 "The Unexpected 'Guest'" a requirement for q12165 "An Intriguing Plan"
UPDATE quest_template SET PrevQuestId = 12195 WHERE entry = 12165;

-- Make q12054 "Deciphering the Journal" a requirement for both q12073 "Pounding the Iron" and q12058 "The Runic Prophecies"
-- Make completion of both these quests unlock q12204 "In the Name of Loken"
UPDATE quest_template SET PrevQuestId = 12054, NextQuestId = 12204, ExclusiveGroup = -12058 WHERE entry IN (12058, 12073);

-- Remove q11981 "Find Kurun!" as PrevQuestId for q11982 "Raining Down Destruction"
UPDATE quest_template SET PrevQuestId = 0 WHERE entry = 11982;

-- Make q12074 "An Expedient Ally" and q11981 "Find Kurun!" exclusive
-- Make completion of either one of these quests unlock q11982 "Raining Down Destruction"
UPDATE quest_template SET NextQuestId = 11982, ExclusiveGroup = 12074 WHERE entry IN (12074, 11981);
