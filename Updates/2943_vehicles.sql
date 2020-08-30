-- Specific accessories die on vehicle death
DELETE FROM creature_linking_template WHERE entry IN (28319,32629,36356,34777,34778,36355,33067,33167,33620,33114,33139,33143,33142);
INSERT INTO creature_linking_template(entry, map, master_entry, flag, search_range) VALUES
-- Wintergrasp siege engines
(28319, 571, 28312, 32, 5),
(32629, 571, 32627, 32, 5),
-- Isle of Conquest siege engines
(36356, 628, 34776, 32, 5),
(34777, 628, 34776, 32, 5),
(34778, 628, 35069, 32, 5),
(36355, 628, 35069, 32, 5),
-- Ulduar siege engines and catapults
(33067, 603, 33060, 32, 5),
(33167, 603, 33109, 32, 5),
(33620, 603, 33109, 32, 5),
-- Flame Leviathan
(33114, 603, 33113, 32, 30),
(33139, 603, 33113, 32, 30),
(33143, 603, 33113, 32, 30),
(33142, 603, 33113, 32, 30);
