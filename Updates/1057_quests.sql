-- Players should be able to trade Violet Signet rings unlimited times, as long as they keep paying gold
UPDATE quest_template SET SpecialFlags = 1, PrevQuestId = 0 WHERE entry IN (11031,11032,11033,11034);
UPDATE quest_template SET RequiredCondition = 1241 WHERE entry = 11031;
UPDATE quest_template SET RequiredCondition = 1242 WHERE entry = 11032;
UPDATE quest_template SET RequiredCondition = 1243 WHERE entry = 11033;
UPDATE quest_template SET RequiredCondition = 1244 WHERE entry = 11034;

DELETE FROM conditions WHERE condition_entry BETWEEN 1241 AND 1244;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1241,2,29287,1),
(1242,2,29279,1),
(1243,2,29283,1),
(1244,2,29290,1);
