-- Eye of Acherus
UPDATE creature_template SET Expansion = 0, MinLevel = 55, MaxLevel = 55, MinLevelHealth = 2614, MaxLevelHealth = 2614, RangedBaseAttackTime = 2000, MeleeAttackPower = 228, RangedAttackPower = 23, MinMeleeDmg = 94, MaxMeleeDmg = 125, Armor = 3234 WHERE entry = 28511;
-- correct order for spells
DELETE FROM creature_template_spells WHERE entry = 28511;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5) VALUES
(28511, 51859, 51904, 52006, 0, 52694);
