-- q.11167 'The New Plague'

-- Fixed: 1 object = 1 quest item
-- Plague Container
UPDATE gameobject_template SET data2 = 0 WHERE entry = 186390;

-- respawn corrected
UPDATE gameobject SET spawntimesecsmin = 120, spawntimesecsmax = 120, animprogress = 100 WHERE id = 186390;
