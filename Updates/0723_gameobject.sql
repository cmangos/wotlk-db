-- Custom animation for some objects fixed
UPDATE gameobject_template SET ExtraFlags = 1 WHERE displayId IN (4392,4472,4491,6785,3073,7998);

-- This fixes bubbly fissure GOs not triggering on friendlies + Items of Power GO not triggering on player near.
UPDATE gameobject_template SET CustomData1 = 1 WHERE entry = 103661;
UPDATE gameobject_template SET CustomData1 = 2 WHERE entry IN (180057,187446);
