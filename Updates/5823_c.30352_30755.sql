-- Dalaran
-- Skybreaker Marine 30352 / Kor'kron Reaver 30755
-- they should have diff faction (35) to regular spawns 
DELETE FROM `creature_spawn_data` WHERE guid IN (528567,528568,528569,528570,527875,527876,527877,527878); 
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(528567,20077),(528568,20077),(528569,20077),(528570,20077), -- Kor'kron Reaver 30755
(527875,20077),(527876,20077),(527877,20077),(527878,20077); -- Skybreaker Marine 30352
