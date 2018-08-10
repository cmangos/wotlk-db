-- q.12483 'Shimmercap Stew'
-- quest becomes available after q.12484 'Scourgekabob' completed
UPDATE quest_template SET PrevQuestId = 12484 WHERE entry = 12483;
-- missing quest added
DELETE FROM creature_questrelation WHERE id = 26519 AND quest = 12484;
INSERT INTO creature_questrelation (id, quest) VALUES
(26519,12484);

-- q.12038 'Seared Scourge' - Daily
-- quest becomes available after q.12029 'Seared Scourge' completed
UPDATE quest_template SET PrevQuestId = 12029 WHERE entry = 12038;
