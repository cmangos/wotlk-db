-- q.11999 'Rifle the Bodies'
-- becomes available after q.12034 'Victory Nears...'completed. or q.11996 'Your Presence is Required at Agmar's Hammer'
DELETE FROM conditions WHERE condition_entry IN (20042,20043);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20042, 8, 11996, 0),
(20043, -2, 20042, 20038);
UPDATE quest_template SET RequiredCondition = 20043, PrevQuestId = 0 WHERE entry = 11999;
