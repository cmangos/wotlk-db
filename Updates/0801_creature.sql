-- Console errors fixed
-- Table `gameobject` have gameobject (GUID: 93536 Entry: 189973) with `spawntimesecsmax` (0) value lower than `spawntimesecsmin` (60), it will be adjusted to 60
-- Individual spawn range will be set later.
UPDATE creature SET spawntimesecsmax=spawntimesecsmin;
UPDATE gameobject SET spawntimesecsmax=spawntimesecsmin;


-- All world bosses have 2-4 day respawn timer

-- TBC WORLD BOSSES

-- Doom Lord Kazzak
UPDATE creature SET spawntimesecsmin = 172800, spawntimesecsmax = 345600 WHERE id = 18728;
-- Doomwalker
UPDATE creature SET spawntimesecsmin = 172800, spawntimesecsmax = 345600 WHERE id = 17711;
	
-- VANILLA WORLD BOSSES

-- Emeriss
UPDATE creature SET spawntimesecsmin = 172800, spawntimesecsmax = 345600 WHERE id = 14889;
-- Lethon
UPDATE creature SET spawntimesecsmin = 172800, spawntimesecsmax = 345600 WHERE id = 14888;
-- Ysondre
UPDATE creature SET spawntimesecsmin = 172800, spawntimesecsmax = 345600 WHERE id = 14887;
-- Taerar
UPDATE creature SET spawntimesecsmin = 172800, spawntimesecsmax = 345600 WHERE id = 14890;
-- Azuregos
UPDATE creature SET spawntimesecsmin = 172800, spawntimesecsmax = 345600 WHERE id = 6109;
	
-- RARE SPAWNS (soon to come)
