-- Correct profession condition_id for classic/tbc backports (wotlk only)

-- Conditions table sadly does not align between versions
-- If conditions are used they need to be checked every time
-- Should think about removing all non universal conditions from 1-1000 so they can be used cross repo without checking.

-- 198 Has Skill ID 164, Minimum Skill Value 1 -> 10
-- 199 Has Skill ID 165, Minimum Skill Value 1 -> 3
-- 201 Has Skill ID 197, Minimum Skill Value 1 -> 4
-- 203 Has Skill ID 333, Minimum Skill Value 1 -> 13
-- 204 Has Skill ID 755, Minimum Skill Value 1 -> 11
-- 209 Has Skill ID 171, Minimum Skill Value 1 -> 25

-- 20264	23615	198	Plans: Swiftsteel Gloves
-- 20299	23605	198	Plans: Felsteel Gloves
-- 20644	23607	198	Plans: Felsteel Helm
-- 21621	23606	198	Plans: Felsteel Leggings
UPDATE `creature_loot_template` SET `condition_id` = 10 WHERE `condition_id` = 198 AND `item` IN (23615,23605,23607,23606);

-- 20526	25729	199	Pattern: Stylin' Adventure Hat
-- 20696	25731	199	Pattern: Stylin' Crimson Hat
-- 20698	29669	199	Pattern: Shadow Armor Kit
-- 20744	25730	199	Pattern: Stylin' Jungle Hat
-- 21598	29672	199	Pattern: Flame Armor Kit
-- 22170	25730	199	Pattern: Stylin' Jungle Hat
UPDATE `creature_loot_template` SET `condition_id` = 3 WHERE `condition_id` = 199 AND `item` IN (25729,25731,29669,25730,29672);

-- 21539	21906	201	Pattern: Arcanoweave Boots
-- 21586	21905	201	Pattern: Arcanoweave Bracers
UPDATE `creature_loot_template` SET `condition_id` = 4 WHERE `condition_id` = 201 AND `item` IN (21906,21905);

-- 15275	20726	203	Formula: Enchant Gloves - Threat
-- 15276	20735	203	Formula: Enchant Cloak - Subtlety
-- 23008	22530	203	Formula: Enchant Bracer - Major Defense
-- 20257	22543	203	Formula: Enchant Boots - Fortitude
-- 20315	22544	203	Formula: Enchant Boots - Dexterity
-- 20583	22554	203	Formula: Enchant 2H Weapon - Savagery
-- 20622	22533	203	Formula: Enchant Bracer - Fortitude
-- 21594	22556	203	Formula: Enchant 2H Weapon - Major Agility
UPDATE `creature_loot_template` SET `condition_id` = 13 WHERE `condition_id` = 203 AND `item` IN (20726,20735,22530,22543,22544,22554,22533,22556);

-- 20625	24159	204	Design: Khorium Band of Frost
-- 21570	24172	204	Design: Coronet of Verdant Flame
UPDATE `creature_loot_template` SET `condition_id` = 11 WHERE `condition_id` = 204 AND `item` IN (24159,24172);

-- 21539	22920	209	Recipe: Major Fire Protection Potion
UPDATE `creature_loot_template` SET `condition_id` = 25 WHERE `condition_id` = 209 AND `item` IN (22920);

-- 34024	20727	203	Formula: Enchant Gloves - Shadow Power
-- 34024	20728	203	Formula: Enchant Gloves - Frost Power
-- 34024	20729	203	Formula: Enchant Gloves - Fire Power
-- 34024	20730	203	Formula: Enchant Gloves - Healing Power
-- 34024	20731	203	Formula: Enchant Gloves - Superior Agility
-- 34024	20734	203	Formula: Enchant Cloak - Stealth
-- 34024	20736	203	Formula: Enchant Cloak - Dodge
-- 34045	20727	203	Formula: Enchant Gloves - Shadow Power
-- 34045	20728	203	Formula: Enchant Gloves - Frost Power
-- 34045	20729	203	Formula: Enchant Gloves - Fire Power
-- 34045	20730	203	Formula: Enchant Gloves - Healing Power
-- 34045	20731	203	Formula: Enchant Gloves - Superior Agility
-- 34045	20734	203	Formula: Enchant Cloak - Stealth
-- 34045	20736	203	Formula: Enchant Cloak - Dodge
UPDATE `reference_loot_template` SET `condition_id` = 13 WHERE `condition_id` = 203 AND `entry` IN (34024,34045);

-- 36201	35198	204	Design: Loop of Forged Power
-- 36201	35199	204	Design: Ring of Flowing Life
-- 36201	35200	204	Design: Hard Khorium Band
UPDATE `reference_loot_template` SET `condition_id` = 11 WHERE `condition_id` = 204 AND `item` IN (35198,35199,35200);

-- 36201	35204	201	Pattern: Sunfire Handwraps
-- 36201	35205	201	Pattern: Hands of Eternal Light
UPDATE `reference_loot_template` SET `condition_id` = 4 WHERE `condition_id` = 201 AND `item` IN (35204,35205);

-- 36201	35208	198	Plans: Sunblessed Gauntlets
-- 36201	35209	198	Plans: Hard Khorium Battlefists
UPDATE `reference_loot_template` SET `condition_id` = 10 WHERE `condition_id` = 198 AND `item` IN (35208,35209);

-- 36201	35212	199	Pattern: Leather Gauntlets of the Sun
-- 36201	35213	199	Pattern: Fletcher's Gloves of the Phoenix
-- 36201	35214	199	Pattern: Gloves of Immortal Dusk
-- 36201	35215	199	Pattern: Sun-Drenched Scale Gloves
UPDATE `reference_loot_template` SET `condition_id` = 3 WHERE `condition_id` = 199 AND `item` IN (35212,35213,35214,35215);

