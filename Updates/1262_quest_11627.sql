-- q.11627 'Boiling Point'

-- Churn
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 25418;
UPDATE creature_template SET InhabitType = 3 WHERE entry = 25418;
-- Simmer
UPDATE creature SET spawntimesecsmin = 30, spawntimesecsmax = 30 WHERE id = 25416;
