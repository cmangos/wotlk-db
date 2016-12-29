-- Warsong Battleguard
-- 2 more found
UPDATE creature SET phaseMask = 2, DeathState = 1 WHERE guid IN (110370,110378);
-- some must have individual addons
DELETE FROM creature_addon WHERE guid IN (110370,110378);
INSERT INTO creature_addon (guid, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(110370,0,7,0,0,0,0,NULL),
(110378,0,7,0,0,0,0,NULL);

-- Stats
-- Razormane Wolf
UPDATE creature_template SET Expansion = 0 WHERE entry = 3939;
-- Silithid Swarm
UPDATE creature_template SET MinLevel =  49, Expansion = 0, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 200, MinMeleeDmg = 82.5, MaxMeleeDmg = 111.3 WHERE entry = 4196;
