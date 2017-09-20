-- Stats
-- Imp
UPDATE creature_template SET Expansion = 0, MinLevelHealth = 80, MaxLevelHealth = 80, MinLevelMana = 76, MaxLevelMana = 76, Armor = 93, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 14, RangedAttackPower = 11, MinMeleeDmg = 3, MaxMeleeDmg = 4.3, MinRangedDmg = 3, MaxRangedDmg = 3.8 WHERE entry = 416;
-- Flame Wave II
UPDATE creature_template SET Expansion = 0, UnitClass = 1 WHERE entry = 22228;
-- Arcane Sphere
UPDATE creature_template SET Expansion = 0 WHERE entry = 24708;
-- Converted Sentry
UPDATE creature_template SET Expansion = 1, UnitClass = 0, MinLevelHealth = 10479, MaxLevelHealth = 10479, MinLevelMana = 0, MaxLevelMana = 0, Armor = 6708, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE entry = 24981;
-- Lesser Air Elemental
UPDATE creature_template SET Expansion = 2 WHERE entry = 28384;
