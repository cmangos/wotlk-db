-- q.12723 'Behind Scarlet Lines'
-- Quest can be taken only after 3 quests finished 
UPDATE quest_template SET PrevQuestId = 12719, NextQuestId = 12723, ExclusiveGroup = -12720, NextQuestinChain = 12723 WHERE entry = 12720; -- How To Win Friends And Influence Enemies
UPDATE quest_template SET PrevQuestId = 12716, NextQuestId = 12723, ExclusiveGroup = -12720, NextQuestinChain = 12718 WHERE entry = 12717; -- Noth's Special Brew
UPDATE quest_template SET PrevQuestId = 12715, NextQuestId = 12723, ExclusiveGroup = -12720, NextQuestinChain = 12723 WHERE entry = 12722; -- Lambs To The Slaughter
UPDATE quest_template SET PrevQuestId = 0, NextQuestId = 0 WHERE entry = 12723;
 