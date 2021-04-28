-- Iron Rune Overseer 27177
UPDATE creature SET spawntimesecsmin = 120, spawntimesecsmax = 120 WHERE id = 27177;
-- only one should spawn - moved to pools
DELETE FROM pool_template WHERE entry = 20003;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(20003, 1, 'Grizzly Hills - Iron Rune Overseer 27177');
DELETE FROM pool_creature_template WHERE id = 27177;
INSERT INTO pool_creature_template (id, pool_entry, chance, description) VALUES
(27177, 20003, 0, 'Grizzly Hills - Iron Rune Overseer 27177');
