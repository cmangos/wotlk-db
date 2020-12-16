
-- Ulduar tram - set as active
UPDATE gameobject_template SET ExtraFlags = 4096 WHERE entry IN (194675);

-- fix button location for the tram
UPDATE gameobject SET spawnMask=0,position_x=0,position_y=-10.30644,position_z=0,orientation=1.570796 WHERE id IN(194437);
