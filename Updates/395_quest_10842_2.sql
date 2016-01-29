-- q.10842 'Vengeful Souls' part.2
-- High Priest Orglum must finish quest (changed in ver 3.3.3)
DELETE FROM creature_involvedrelation WHERE quest = 10842;
INSERT INTO creature_involvedrelation (id , quest) VALUES 
(22278, 10842);
