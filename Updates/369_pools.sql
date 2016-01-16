-- Milly's Harvest
-- should be spawned max 10 in same time
UPDATE gameobject SET spawntimesecs = 120 WHERE id = 161557;
DELETE FROM pool_template WHERE entry = 25517;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25517,10,'Milly\'s Harvest');
DELETE FROM pool_gameobject WHERE pool_entry = 25517;
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES 
(32168,25517,0,'161557 - Milly\'s Harvest #1'),
(32169,25517,0,'161557 - Milly\'s Harvest #2'),
(33837,25517,0,'161557 - Milly\'s Harvest #3'),
(33838,25517,0,'161557 - Milly\'s Harvest #4'),
(33840,25517,0,'161557 - Milly\'s Harvest #5'),
(33843,25517,0,'161557 - Milly\'s Harvest #6'),
(34799,25517,0,'161557 - Milly\'s Harvest #7'),
(34802,25517,0,'161557 - Milly\'s Harvest #8'),
(34805,25517,0,'161557 - Milly\'s Harvest #9'),
(34806,25517,0,'161557 - Milly\'s Harvest #10'),
(34900,25517,0,'161557 - Milly\'s Harvest #11'),
(34901,25517,0,'161557 - Milly\'s Harvest #12'),
(29278,25517,0,'161557 - Milly\'s Harvest #13'),
(29280,25517,0,'161557 - Milly\'s Harvest #14'),
(29283,25517,0,'161557 - Milly\'s Harvest #15'),
(29583,25517,0,'161557 - Milly\'s Harvest #16'),
(30658,25517,0,'161557 - Milly\'s Harvest #17'),
(30663,25517,0,'161557 - Milly\'s Harvest #18'),
(30664,25517,0,'161557 - Milly\'s Harvest #19'),
(30665,25517,0,'161557 - Milly\'s Harvest #20'),
(30666,25517,0,'161557 - Milly\'s Harvest #21'),
(30667,25517,0,'161557 - Milly\'s Harvest #22'),
(30668,25517,0,'161557 - Milly\'s Harvest #23'),
(30672,25517,0,'161557 - Milly\'s Harvest #24'),
(26752,25517,0,'161557 - Milly\'s Harvest #25'),
(26753,25517,0,'161557 - Milly\'s Harvest #26'),
(26754,25517,0,'161557 - Milly\'s Harvest #27'),
(26755,25517,0,'161557 - Milly\'s Harvest #28'),
(26757,25517,0,'161557 - Milly\'s Harvest #29'),
(26758,25517,0,'161557 - Milly\'s Harvest #30'),
(26759,25517,0,'161557 - Milly\'s Harvest #31'),
(26760,25517,0,'161557 - Milly\'s Harvest #32'),
(26761,25517,0,'161557 - Milly\'s Harvest #33'),
(26762,25517,0,'161557 - Milly\'s Harvest #34'),
(26763,25517,0,'161557 - Milly\'s Harvest #35'),
(26764,25517,0,'161557 - Milly\'s Harvest #36'),
(87761,25517,0,'161557 - Milly\'s Harvest #37'),
(87762,25517,0,'161557 - Milly\'s Harvest #38'),
(87763,25517,0,'161557 - Milly\'s Harvest #39'),
(87764,25517,0,'161557 - Milly\'s Harvest #40');
