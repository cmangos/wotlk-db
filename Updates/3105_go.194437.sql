
-- Ulduar tram - set as active
UPDATE gameobject_template SET ExtraFlags = 4096 WHERE entry IN (194675);

-- fix button location for the tram
UPDATE gameobject SET position_x=2306.999, position_y=274.3252, position_z=424.2883 WHERE guid=6030078;
