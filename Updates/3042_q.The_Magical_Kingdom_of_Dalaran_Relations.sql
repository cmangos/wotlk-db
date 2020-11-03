-- 'The Magical Kingdom of Dalaran' - Quests relations

-- q.12791 'The Magical Kingdom of Dalaran' - Horde
-- q.12794 'The Magical Kingdom of Dalaran' - Alliance
-- not available to players if q.12796 'The Magical Kingdom of Dalaran' taken or completed
DELETE FROM conditions WHERE condition_entry = 20164;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20164, 22, 12796, 0);
UPDATE quest_template SET RequiredCondition = 20164 WHERE entry = 12791;
UPDATE quest_template SET RequiredCondition = 20164 WHERE entry = 12794;

-- q.12796 'The Magical Kingdom of Dalaran' - Both Races
-- not available to players if:
-- q.12791 'The Magical Kingdom of Dalaran' - Horde - taken or completed
-- q.12794 'The Magical Kingdom of Dalaran' - Alliance - taken or completed
DELETE FROM conditions WHERE condition_entry BETWEEN 20165 AND 20167;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20165, 22, 12791, 0),
(20166, 22, 12794, 0),
(20167, -2, 20166, 20165);
UPDATE quest_template SET RequiredCondition = 20167 WHERE entry = 12796;
