-- Silver Covenant Agent 36774 & Sunreaver Agent 36776
-- let them throw event AI A on themselfs
DELETE FROM creature_spawn_data WHERE guid IN(534334,534335);
INSERT INTO creature_spawn_data(Guid,Id) VALUES
(534334, 20033),
(534335, 20033);
