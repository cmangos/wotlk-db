-- gossip for Budd 
-- Fixed: DB-SCRIPTS: Process table dbscripts_on_gossip  id 9301, command 18 target must be creature, but (only) source is, use data_flags to fix
UPDATE dbscripts_on_gossip SET data_flags = 0x04 WHERE id = 9301 AND delay = 1;

-- Budd
UPDATE creature_template SET Expansion = 1, UnitClass = 1, MinLevelHealth = 8, MaxLevelHealth = 8, RangedBaseAttackTime = 2000, MeleeAttackPower = 9, MinMeleeDmg = 1.55, MaxMeleeDmg = 1.68 WHERE entry = 32663;
DELETE FROM creature_template_spells WHERE entry = 32663;
INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8) VALUES
(32663, 47031, 0, 0, 0, 0, 0, 0, 0);
