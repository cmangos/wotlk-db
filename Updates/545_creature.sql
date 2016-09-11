-- Raisen Ally
UPDATE creature_template SET MinLevel = 72, MaxLevel = 80, Expansion = 2, MinLevelHealth = 9610, MaxLevelHealth = 12600, MinMeleeDmg = 131.91, MaxMeleeDmg = 164.924, MinRangedDmg = 131.91, MaxRangedDmg = 164.924, Armor = 6602, MeleeAttackPower = 296, RangedAttackPower = 40 WHERE Entry = 30230;

DELETE FROM creature_template_spells WHERE entry = 30230;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(30230, 62225, 47480, 47481, 47482, 47484, 67886, 0, 0);
