-- Consortium Quest chain
-- Series of Consortium quests added with patch 2.1. 
-- The quest series ends in being able to summon an optional boss after the final boss of Heroic Mana-Tombs. 
-- You will need to be Honored or better with Consortium before starting this quest chain. 

-- Correct npc used for all listed quests...
-- q.10975 'Purging the Chambers of Bash'ir'
-- q.10976 'The Mark of the Nexus-King'
-- q.10977 'Stasis Chambers of the Mana-Tombs'
-- q.10981 'Nexus-Prince Shaffar's Personal Chamber'
-- q.10982 'The Eye of Haramad'
DELETE FROM creature_questrelation WHERE id = 20482 AND quest IN (10975,10976,10977,10981,10982); -- wrong Npc
DELETE FROM creature_questrelation WHERE id = 22919 AND quest IN (10975,10976,10977,10981,10982);
INSERT INTO creature_questrelation (id, quest) VALUES
(22919,10975),
(22919,10976),
(22919,10977),
(22919,10981),
(22919,10982);
DELETE FROM creature_involvedrelation WHERE id = 20482 AND quest IN (10975,10976,10977,10981,10982); -- wrong Npc 
DELETE FROM creature_involvedrelation WHERE id = 22919 AND quest IN (10975,10976,10977,10981,10982);
INSERT INTO creature_involvedrelation (id, quest) VALUES
(22919,10975),
(22919,10976),
(22919,10977),
(22919,10981),
(22919,10982);
