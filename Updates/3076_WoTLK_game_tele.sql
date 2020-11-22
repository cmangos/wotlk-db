-- teleports - shortcuts for all WOTLK Dungeons/Raids
-- according to: https://wow.gamepedia.com/Wrath_of_the_Lich_King_instances_by_level

DELETE FROM game_tele WHERE id BETWEEN 1500 AND 1529;
INSERT INTO game_tele(id, position_x, position_y, position_z, orientation, map, name) VALUES
-- Dungeons
(1500,160.67,-83.63,12.55,0.3,574,'UK'), -- Utgarde Keep
(1501,160.67,-83.63,12.55,0.3,574,'UTK'), -- Utgarde Keep
(1502,145.61,-5.03,-16.64,6.2,576,'NEX'), -- The Nexus
(1504,422.47,787.77,828.26,5.7,601,'AZN'), -- Azjol-Nerub: Azjol-Nerub
(1505,422.47,787.77,828.26,5.7,601,'AN'),  -- Azjol-Nerub: Azjol-Nerub
(1506,338.90,-1106.79,65.19,0.6,619,'ANK'), -- Ahn'kahet: The Old Kingdom
(1507,338.90,-1106.79,65.19,0.6,619,'OLD'), -- Ahn'kahet: The Old Kingdom
(1508,338.90,-1106.79,65.19,0.6,619,'AKO'), -- Ahn'kahet: The Old Kingdom
(1509,338.90,-1106.79,65.19,0.6,619,'OK'), -- Ahn'kahet: The Old Kingdom
(1510,-517.01,-492.41,11.02,4.8,600,'DTK'), --  Drak'Tharon Keep
(1511,1822.06,803.60,44.36,0,608,'VH'), -- The Violet Hold
(1512,1890.01,646.39,176.67,4.1,604,'GD'), -- Gundrak
(1513,1153.24,800.64,195.94,4.7,599,'HOS'), -- Halls of Stone
(1514,1331.77,250.64,52.99,4.7,602,'HOL'), -- Halls of Lightning
(1515,1055.93,986.85,361.07,5.7,578,'Occ'), -- The Oculus
(1516,576.16,-327.27,110.14,3,575,'UP'), -- Utgarde Pinnacle
(1517,1434.52,548.92,35.94,5.2,595,'COS'), -- The Culling of Stratholme
(1518,803.86,618.03,412.39,3.1,650,'ToC'), -- Trial of the Champion
(1519,5243.43,1937.14,707.695,0.8,668,'HoR'), -- Halls of Reflection
(1520,437.03,213.44,528.71,0.1,658,'PoS'), -- Pit of Saron
(1521,4920.83,2178.75,638.73,1.9,632,'FoS'), -- The Forge of Souls
-- Raids
-- NAXX -- Naxxramas (already exists)
(1522,3229.24,393.31,62.22,1.5,615,'OS'), -- Obsidian Sanctum
(1523,-499.93,-103.51,153.76,0,624,'VoA'), -- Vault of Archavon
(1524,732.87,1324.93,267.23,5.5,616,'EoE'), -- Eye of Eternity
(1525,-903.641,-148.94,459.97,6.3,603,'Uldu'), -- Ulduar
(1526,563.698,83.9,395.147,1.6,649,'TC'),  -- Crusaders' Coliseum: Trial of the Crusader
(1527,563.698,83.9,395.147,1.6,649,'ToC'), -- Crusaders' Coliseum: Trial of the Crusader
-- ONY -- Onyxia (already exists)
(1528,66.31,2211.6,30,3.1,631,'ICC'), -- Icecrown Citadel
(1529,3271.07,533.46,87.66,3.1,724,'RS'); -- Ruby Sanctum
