-- Auchindoun
-- portals corrected

-- Sethekk Halls
DELETE FROM gameobject WHERE guid = 25060;
UPDATE gameobject SET spawnmask = 3 WHERE guid = 5395;

-- Shadow Labyrinth
UPDATE gameobject SET spawnmask = 3 WHERE guid = 25061;

-- Auchenai Crypts
UPDATE gameobject SET id = 184184 WHERE guid = 5388;
UPDATE gameobject SET spawnmask = 3 WHERE guid = 5389;

-- Mana Tombs
DELETE FROM gameobject WHERE guid = 5236;
