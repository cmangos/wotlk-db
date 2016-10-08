-- Add Exploration BaseXP data for LvL 70-80 zones
DELETE FROM exploration_basexp WHERE level BETWEEN 70 AND 80;
INSERT INTO exploration_basexp (level, basexp) VALUES
(70, 1250),
(71, 2000),
(72, 2050),
(73, 2050),
(74, 2100),
(75, 2100),
(76, 2100),
(77, 2150),
(78, 2150),
(79, 2200),
(80, 2200);
