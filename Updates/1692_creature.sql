-- remove invis extraflag on 3 Honor Hold Target Dummy NPCs (allows for arrows shot by Honor Hold Archer 16896 to be visible to player and not just GM)
-- Honor Hold Target Dummy Middle 16897
-- Honor Hold Target Dummy Right 16898
-- Honor Hold Target Dummy Left 16899
UPDATE creature_template SET ExtraFlags=0 WHERE entry IN (16897,16898,16899);
