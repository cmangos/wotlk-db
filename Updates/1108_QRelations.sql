-- q.9152 Tomber's Supplies should only be available after the player has completed q.9329 or q.9327
-- http://www.wowhead.com/quest=9152/tombers-supplies

DELETE FROM conditions WHERE condition_entry BETWEEN 1267 AND 1269;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(1267, 8, 9329, 0),
(1268, 8, 9327, 0),
(1269, -2, 1267, 1268); -- Quest 9329 OR Quest 9327 Rewarded

UPDATE quest_template SET RequiredCondition = 1269 WHERE entry = 9152;
