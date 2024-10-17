-- q.12852 'The Admiral Revealed'
-- in case if player misses summoned..
DELETE FROM creature_questrelation WHERE quest IN (12852);
INSERT INTO creature_questrelation (id, quest) VALUES
(29560,12852),(29344,12852);
