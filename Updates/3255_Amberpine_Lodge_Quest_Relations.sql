--  Amberpine Lodge - Grizzly Hills

-- q.12210 'Troll Season!'
-- becomes available after q.12212 'Replenishing the Storehouse' completed
DELETE FROM conditions WHERE condition_entry = 20265;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES 
(20265, 8, 12212, 0);
UPDATE quest_template SET RequiredCondition = 20265 WHERE entry = 12210;
