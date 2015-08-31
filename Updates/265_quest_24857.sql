-- q.24857 'Attack on Camp Narache' - redone in 3.3.0
-- Wowhead: "This is the new version of the quest, which is given by the object itself instead of being accepted from an item looted from the object."

DELETE FROM gameobject_questrelation WHERE id = 3076;
INSERT INTO gameobject_questrelation (id,  quest) VALUES (3076, 24857);

DELETE FROM creature_involvedrelation WHERE id = 2981 AND quest = 781; -- older ver removed.
DELETE FROM creature_involvedrelation WHERE id = 2981 AND quest = 24857;
INSERT INTO creature_involvedrelation (id,  quest) VALUES (2981, 24857);
