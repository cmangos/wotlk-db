
-- Fix gunship portals
UPDATE gameobject_template SET faction = 1732, flags = 32 WHERE entry = 195320;
UPDATE gameobject_template SET faction = 1735, flags = 32 WHERE entry = 195326;

-- update factions
UPDATE creature_template SET faction=1732 WHERE entry IN (34776,35431,36356,36358,34777,35436);
UPDATE creature_template SET faction=1735 WHERE entry IN (35069,35433,34778,35417,36355,36357);
UPDATE creature_template SET faction=1732, UnitFlags = UnitFlags|768 WHERE entry=35423;
UPDATE creature_template SET faction=1735, UnitFlags = UnitFlags|768 WHERE entry=35425;
UPDATE creature_template SET MinLevel=80, MaxLevel=80, MinLevelHealth=12600, MaxLevelHealth=12600 WHERE entry=35425;

-- add graveyard data
DELETE FROM game_graveyard_zone WHERE id IN (1480,1481,1482,1483,1484,1485,1486);
INSERT INTO game_graveyard_zone VALUES
(1480, 4710, 0, 0),
(1481, 4710, 0, 0),
(1482, 4710, 0, 0),
(1483, 4710, 0, 469),
(1484, 4710, 0, 67),
(1485, 4710, 0, 0),
(1486, 4710, 0, 0);
