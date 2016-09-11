-- Stats corrected for new "Pet System"

-- Succubus Minion
UPDATE creature_template SET Expansion = 0 WHERE entry = 10928;

-- Crawler
UPDATE creature_template SET Expansion = 0, MinLevelHealth = 222, MaxLevelHealth = 247, RangedBaseAttackTime = 2000, Armor = 562, MeleeAttackPower = 42, RangedAttackPower = 0, MinMeleeDmg = 14.8, MaxMeleeDmg = 22.3 WHERE entry = 6250;

-- Scarlet Hound
UPDATE creature_template SET Expansion = 0 WHERE entry = 10979;

-- Bloodshot
UPDATE creature_template SET Expansion = 0 WHERE entry = 11614;

-- Fen Dweller
UPDATE creature_template SET Expansion = 0 WHERE entry = 1039;

-- Skeleton
UPDATE creature_template SET Expansion = 0 WHERE entry = 6412;

-- Voidwalker Minion
UPDATE creature_template SET Expansion = 0 WHERE entry = 8996;

-- Minor Voidwalker
UPDATE creature_template SET Expansion = 0 WHERE entry = 24476;

-- Skeletal Servant
UPDATE creature_template SET Expansion = 0 WHERE entry = 8477;

-- Voidwalker
UPDATE creature_template SET Expansion = 0 WHERE entry = 1860;
