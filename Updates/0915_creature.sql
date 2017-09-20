-- Captured Beryl Sorcerer
DELETE FROM creature_template_addon WHERE entry = 25474;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(25474, 0, 0, 0, 1, 0, 0, NULL);
-- Stats
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, UnitClass = 8, Expansion = 2, MinLevelHealth = 7185, MaxLevelHealth = 7185, MinLevelMana = 7196, MaxLevelMana = 7196, Armor = 5404, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 135, MinMeleeDmg = 248, MaxMeleeDmg = 362 WHERE entry = 25474;
