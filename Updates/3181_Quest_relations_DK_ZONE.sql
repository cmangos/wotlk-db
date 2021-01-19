-- DK Zone Quest Relations (Phase 4)

-- q.12715 'The Crypt of Remembrance'
-- q.12716 'The Plaguebringer's Request'
-- becomes available after q.12714 'The Will Of The Lich King' completed
UPDATE quest_template SET PrevQuestId = 12714, NextQuestId = 0, NextQuestInChain = 12719 WHERE entry = 12715;
UPDATE quest_template SET PrevQuestId = 12714, NextQuestId = 0, NextQuestInChain = 12717 WHERE entry = 12716;

-- q.12717 'Noth's Special Brew'
-- becomes available after q.12716 'The Plaguebringer's Request' completed
UPDATE quest_template SET PrevQuestId = 12716, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 12717;

-- q.12722 'Lambs To The Slaughter'
-- becomes available after q.12715 'The Crypt of Remembrance' completed
UPDATE quest_template SET PrevQuestId = 12715, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 12722;

-- q.12720 'How To Win Friends And Influence Enemies'
-- becomes available after q.12719 'Nowhere To Run And Nowhere To Hide' completed
UPDATE quest_template SET PrevQuestId = 12719, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 0 WHERE entry = 12720;

-- q.12723 'Behind Scarlet Lines' 
-- becomes available after quests completed:
	-- q.12719 'Nowhere To Run And Nowhere To Hide'
	-- q.12722 'Lambs To The Slaughter'
	-- q.12717 'Noth's Special Brew'
UPDATE quest_template SET RequiredCondition = 20191, PrevQuestId = 0, NextQuestId = 0, ExclusiveGroup = 0, NextQuestInChain = 12724 WHERE entry = 12723;
DELETE FROM conditions WHERE condition_entry BETWEEN 20188 AND 20191;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES 
(20188, 8, 12717,0,0,0),
(20189, 8, 12719,0,0,0),
(20190, 8, 12722,0,0,0),
(20191, -1, 20188,20189,20190,0);
