-- Orphan Matron Battlewail 14451 - has extra quests and gossip during Event 10 'Children's Week'
-- She doen not belong to Event 10
DELETE FROM game_event_creature WHERE guid IN (6512);
DELETE FROM game_event_quest WHERE quest = 172;
INSERT INTO game_event_quest (quest, event) VALUES
(172,10);