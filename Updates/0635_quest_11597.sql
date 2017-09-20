-- q.11597 'The Defense of Warsong Hold'
-- now player can finish this quest also :)
DELETE FROM creature_involvedrelation WHERE id = 25279 AND quest = 11597;
INSERT INTO creature_involvedrelation (id, quest) VALUES (25279,11597);
