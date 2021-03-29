-- Quests 'Anthion's Parting Words' for Horde Paladin and Alliance Shaman
DELETE FROM creature_questrelation WHERE id=16016 AND quest=10496; -- alliance
DELETE FROM creature_questrelation WHERE id=16016 AND quest=10497; -- Horde
INSERT INTO creature_questrelation (id, quest) VALUES
(16016, 10496),
(16016, 10497);
DELETE FROM creature_involvedrelation WHERE id=16013 AND quest=10496; -- alliance
DELETE FROM creature_involvedrelation WHERE id=16012 AND quest=10497; -- Horde
INSERT INTO creature_involvedrelation (id, quest) VALUES
(16013, 10496),
(16012, 10497);

-- Quests 'Saving the Best for Last.' for Horde Paladin and Alliance Shaman
DELETE FROM creature_questrelation WHERE id=16013 AND quest=10498; -- alliance
DELETE FROM creature_questrelation WHERE id=16012 AND quest=10499; -- Horde
INSERT INTO creature_questrelation (id, quest) VALUES
(16013, 10498),
(16012, 10499);
DELETE FROM creature_involvedrelation WHERE id=16013 AND quest=10498; -- alliance
DELETE FROM creature_involvedrelation WHERE id=16012 AND quest=10499; -- Horde
INSERT INTO creature_involvedrelation (id, quest) VALUES
(16013, 10498),
(16012, 10499);
