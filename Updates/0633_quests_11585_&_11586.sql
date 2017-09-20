-- quests "Hellscream's Vigil"
-- They're 2 versions of this quest.
-- q.11585 'Hellscream's Vigil' - no prev. quest req.
-- q.11586 'Hellscream's Vigil' - nagrand chain must be completed first (q.10212 'Hero of the Mag'har')
-- Only one of these quests should be displayed on quests list, accepted and completed... 
 
DELETE FROM conditions WHERE condition_entry IN (1102,1103);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1102, 22, 10212, 0), -- q.not taken yet
(1103, 8, 10212, 0);  -- quest finished
UPDATE quest_template SET RequiredCondition = 1102 WHERE entry = 11585;
UPDATE quest_template SET RequiredCondition = 1103 WHERE entry = 11586;
