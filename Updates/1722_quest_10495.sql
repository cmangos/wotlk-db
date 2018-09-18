-- Mokvar missing quest added
-- part of Dungeon Set 1
DELETE FROM creature_involvedrelation WHERE id = 16012 AND quest = 10495;
INSERT INTO creature_involvedrelation (id, quest) VALUES
(16012,10495);
DELETE FROM creature_questrelation WHERE id = 16012 AND quest = 10495;
INSERT INTO creature_questrelation (id, quest) VALUES
(16012,10495);
