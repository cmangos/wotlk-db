-- backport fixes

-- fix ahunes chain for midsummer 
-- q.11955 `Ahune, the Frost Lord`
UPDATE quest_template SET PrevQuestId = 12012 WHERE entry = 11955;

-- Table reference_loot_template has entry 65053 but no name
-- Table reference_loot_template has entry 65081 but no name
-- Table reference_loot_template has entry 65110 but no name
-- Table reference_loot_template has entry 65142 but no name
DELETE FROM reference_loot_template_names WHERE entry IN (65053,65081,65110,65142);
INSERT INTO reference_loot_template_names (entry, name) VALUES
(65053,'NPC LOOT (Rare NPC Loot) - Snarlmane - Special Items'),
(65081,'NPC LOOT (Rare NPC Loot) - Mazzranache - Special Items'),
(65110,'NPC LOOT (Rare NPC Loot) - The Rake - Special Items'),
(65142,'NPC LOOT (Rare NPC Loot) - Omgorn the Lost - Special Items');

-- Table 'creature_loot_template' entry 17680 (creature entry) not exist but used as loot id in DB.
UPDATE creature_template SET LootId = 0 WHERE Entry = 17680;

-- Table 'reference_loot_template' entry 50498 (reference id) not exist but used as loot id in DB.
-- Table 'reference_loot_template' entry 50499 (reference id) not exist but used as loot id in DB.
-- Table 'reference_loot_template' entry 50557 (reference id) not exist but used as loot id in DB.
DELETE FROM `reference_loot_template` WHERE entry IN (50498,50499,50557);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- 50498
(50498,11732,0,1,1,1,0,'Libram of Rumination'),
(50498,11733,0,1,1,1,0,'Libram of Constitution'),
(50498,11734,0,1,1,1,0,'Libram of Tenacity'),
(50498,11736,0,1,1,1,0,'Libram of Resilience'),
(50498,11737,0,1,1,1,0,'Libram of Voracity'),
-- 50499
(50499,17413,0,1,1,1,0,'Codex: Prayer of Fortitude'),
(50499,17414,15,1,1,1,0,'Codex: Prayer of Fortitude II'),
(50499,17682,0,1,1,1,0,'Book: Gift of the Wild'),
(50499,17683,15,1,1,1,0,'Book: Gift of the Wild II'),
(50499,18600,15,1,1,1,0,'Tome of Arcane Brilliance'),
(50499,22393,15,1,1,1,0,'Codex: Prayer of Shadow Protection'),
(50499,22890,15,1,1,1,0,'Tome of Frost Ward V'),
(50499,22891,15,1,1,1,0,'Grimoire of Shadow Ward IV'),
-- 50557
(50557,3395,0,1,1,1,0,'Recipe: Limited Invulnerability Potion'),
(50557,7989,0,1,1,1,0,'Plans: Mithril Spurs'),
(50557,7990,0,1,1,1,0,'Plans: Heavy Mithril Helm'),
(50557,7991,0,1,1,1,0,'Plans: Mithril Scale Shoulders'),
(50557,7993,0,1,1,1,0,'Plans: Dazzling Mithril Rapier'),
(50557,8028,0,1,1,1,0,'Plans: Runed Mithril Hammer'),
(50557,8389,0,1,1,1,0,'Pattern: Big Voodoo Pants'),
(50557,8390,0,1,1,1,0,'Pattern: Big Voodoo Cloak'),
(50557,9295,0,1,1,1,0,'Recipe: Invisibility Potion'),
(50557,9297,0,1,1,1,0,'Recipe: Elixir of Dream Vision'),
(50557,9298,0,1,1,1,0,'Recipe: Elixir of Giants'),
(50557,10315,0,1,1,1,0,'Pattern: Red Mageweave Shoulders'),
(50557,10320,0,1,1,1,0,'Pattern: Red Mageweave Headband'),
(50557,10608,0,1,1,1,0,'Schematic: Sniper Scope'),
(50557,11208,0,1,1,1,0,'Formula: Enchant Weapon - Demonslaying'),
(50557,11224,0,1,1,1,0,'Formula: Enchant Shield - Frost Resistance'),
(50557,11225,0,1,1,1,0,'Formula: Enchant Bracer - Greater Stamina'),
(50557,11226,0,1,1,1,0,'Formula: Enchant Gloves - Riding Skill'),
(50557,12682,0,1,1,1,0,'Plans: Thorium Armor'),
(50557,12683,0,1,1,1,0,'Plans: Thorium Belt'),
(50557,12684,0,1,1,1,0,'Plans: Thorium Bracers'),
(50557,12685,0,1,1,1,0,'Plans: Radiant Belt'),
(50557,12689,0,1,1,1,0,'Plans: Radiant Breastplate'),
(50557,12691,0,1,1,1,0,'Plans: Wildthorn Mail'),
(50557,12692,0,1,1,1,0,'Plans: Thorium Shield Spike'),
(50557,12693,0,1,1,1,0,'Plans: Thorium Boots'),
(50557,12694,0,1,1,1,0,'Plans: Thorium Helm'),
(50557,12695,0,1,1,1,0,'Plans: Radiant Gloves'),
(50557,12697,0,1,1,1,0,'Plans: Radiant Boots'),
(50557,12698,0,1,1,1,0,'Plans: Dawnbringer Shoulders'),
(50557,12702,0,1,1,1,0,'Plans: Radiant Circlet'),
(50557,12703,0,1,1,1,0,'Plans: Storm Gauntlets'),
(50557,12704,0,1,1,1,0,'Plans: Thorium Leggings'),
(50557,12711,0,1,1,1,0,'Plans: Whitesoul Helm'),
(50557,12713,0,1,1,1,0,'Plans: Radiant Leggings'),
(50557,12716,0,1,1,1,0,'Plans: Helm of the Great Chief'),
(50557,12717,0,1,1,1,0,'Plans: Lionheart Helm'),
(50557,12720,0,1,1,1,0,'Plans: Stronghold Gauntlets'),
(50557,12728,0,1,1,1,0,'Plans: Invulnerable Mail'),
(50557,13486,0,1,1,1,0,'Recipe: Transmute Undeath to Water'),
(50557,13487,0,1,1,1,0,'Recipe: Transmute Water to Undeath'),
(50557,13488,0,1,1,1,0,'Recipe: Transmute Life to Earth'),
(50557,13489,0,1,1,1,0,'Recipe: Transmute Earth to Life'),
(50557,13490,0,1,1,1,0,'Recipe: Greater Stoneshield Potion'),
(50557,13492,0,1,1,1,0,'Recipe: Purification Potion'),
(50557,13493,0,1,1,1,0,'Recipe: Greater Arcane Elixir'),
(50557,13518,0,1,1,1,0,'Recipe: Flask of Petrification'),
(50557,14466,0,1,1,1,0,'Pattern: Frostweave Tunic'),
(50557,14467,0,1,1,1,0,'Pattern: Frostweave Robe'),
(50557,14470,0,1,1,1,0,'Pattern: Runecloth Tunic'),
(50557,14474,0,1,1,1,0,'Pattern: Frostweave Gloves'),
(50557,14478,0,1,1,1,0,'Pattern: Brightcloth Robe'),
(50557,14479,0,1,1,1,0,'Pattern: Brightcloth Gloves'),
(50557,14484,0,1,1,1,0,'Pattern: Brightcloth Cloak'),
(50557,14489,0,1,1,1,0,'Pattern: Frostweave Pants'),
(50557,14491,0,1,1,1,0,'Pattern: Runecloth Pants'),
(50557,14492,0,1,1,1,0,'Pattern: Felcloth Boots'),
(50557,14494,0,1,1,1,0,'Pattern: Brightcloth Pants'),
(50557,14496,0,1,1,1,0,'Pattern: Felcloth Hood'),
(50557,14497,0,1,1,1,0,'Pattern: Mooncloth Leggings'),
(50557,14498,0,1,1,1,0,'Pattern: Runecloth Headband'),
(50557,14499,0,1,1,1,0,'Pattern: Mooncloth Bag'),
(50557,14501,0,1,1,1,0,'Pattern: Mooncloth Vest'),
(50557,14504,0,1,1,1,0,'Pattern: Runecloth Shoulders'),
(50557,14506,0,1,1,1,0,'Pattern: Felcloth Robe'),
(50557,14507,0,1,1,1,0,'Pattern: Mooncloth Shoulders'),
(50557,14508,0,1,1,1,0,'Pattern: Felcloth Shoulders'),
(50557,14509,0,1,1,1,0,'Pattern: Mooncloth Circlet'),
(50557,14510,0,1,1,1,0,'Pattern: Bottomless Bag'),
(50557,14511,0,1,1,1,0,'Pattern: Gloves of Spell Mastery'),
(50557,15731,0,1,1,1,0,'Pattern: Runic Leather Gauntlets'),
(50557,15737,0,1,1,1,0,'Pattern: Chimeric Boots'),
(50557,15742,0,1,1,1,0,'Pattern: Warbear Harness'),
(50557,15743,0,1,1,1,0,'Pattern: Heavy Scorpid Belt'),
(50557,15745,0,1,1,1,0,'Pattern: Runic Leather Belt'),
(50557,15746,0,1,1,1,0,'Pattern: Chimeric Leggings'),
(50557,15755,0,1,1,1,0,'Pattern: Chimeric Vest'),
(50557,15757,0,1,1,1,0,'Pattern: Wicked Leather Pants'),
(50557,15765,0,1,1,1,0,'Pattern: Runic Leather Pants'),
(50557,16043,0,1,1,1,0,'Schematic: Thorium Rifle'),
(50557,16044,0,1,1,1,0,'Schematic: Lifelike Mechanical Toad'),
(50557,16051,0,1,1,1,0,'Schematic: Thorium Shells'),
(50557,16055,0,1,1,1,0,'Schematic: Arcane Bomb'),
(50557,16215,0,1,1,1,0,'Formula: Enchant Boots - Greater Stamina'),
(50557,16218,0,1,1,1,0,'Formula: Enchant Bracer - Superior Spirit'),
(50557,16220,0,1,1,1,0,'Formula: Enchant Boots - Spirit'),
(50557,16245,0,1,1,1,0,'Formula: Enchant Boots - Greater Agility'),
(50557,16251,0,1,1,1,0,'Formula: Enchant Bracer - Superior Stamina'),
(50557,16253,0,1,1,1,0,'Formula: Enchant Chest - Greater Stats'),
(50557,21944,0,1,1,1,0,'Design: Truesilver Boar'),
(50557,21945,0,1,1,1,0,'Design: The Aquamarine Ward'),
(50557,21947,0,1,1,1,0,'Design: Gem Studded Band'),
(50557,21949,0,1,1,1,0,'Design: Ruby Serpent'),
(50557,21953,0,1,1,1,0,'Design: Emerald Owl'),
(50557,22388,0,1,1,1,0,'Plans: Titanic Leggings'),
(50557,22389,0,1,1,1,0,'Plans: Sageblade'),
(50557,22390,0,1,1,1,0,'Plans: Persuader');
DELETE FROM reference_loot_template_names WHERE entry IN (50498,50499,50557);
INSERT INTO reference_loot_template_names (entry, name) VALUES
(50498,'NPC LOOT (World Drop) - Libram of X - (NPC Levels 48+) - VANILLA NPC ONLY'),
(50499,'NPC LOOT (World Drop) - (Level: 48/50/60 - Book / Codex / Tome / Grimoire) - NPC Levels 52+ (WORLD CLASS LOOT DROP)'),
(50557,'LOOT (World Drop) - (RequiredSkillRank: 230-300 (Profession Recipes)) - (NPC Levels ~57)');

-- 'creature_loot_template' entry 15981 isn't creature entry and not referenced from loot, and then useless.
-- 'creature_loot_template' entry 16020 isn't creature entry and not referenced from loot, and then useless.
-- 'creature_loot_template' entry 16022 isn't creature entry and not referenced from loot, and then useless.
-- 'creature_loot_template' entry 16145 isn't creature entry and not referenced from loot, and then useless.
-- 'creature_loot_template' entry 16163 isn't creature entry and not referenced from loot, and then useless.
-- 'creature_loot_template' entry 16193 isn't creature entry and not referenced from loot, and then useless.
-- Wotlk uses diff ids.
DELETE FROM creature_loot_template WHERE entry IN (15981,16020,16022,16145,16163,16193);

-- 'reference_loot_template' entry 65053 isn't reference id and not referenced from loot, and then useless.
-- 'reference_loot_template' entry 65081 isn't reference id and not referenced from loot, and then useless.
-- 'reference_loot_template' entry 65110 isn't reference id and not referenced from loot, and then useless.
-- 'reference_loot_template' entry 65142 isn't reference id and not referenced from loot, and then useless.
DELETE FROM creature_loot_template WHERE entry IN (1948,3068,5807,8201);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
-- 1948
(1948,858,1.04,0,1,1,0,'Lesser Healing Potion'),
(1948,1179,4.6512,0,1,1,0,'Ice Cold Milk'),
(1948,1206,1.58,0,1,1,0,'Moss Agate'),
(1948,2455,2.1,0,1,1,0,'Minor Mana Potion'),
(1948,2589,20.9302,0,1,3,0,'Linen Cloth'),
(1948,2592,9.3023,0,1,2,0,'Wool Cloth'),
(1948,4605,11.6279,0,1,1,0,'Red-speckled Mushroom'),
(1948,50600,0.75,0,-50600,1,0,'NPC LOOT (White World Drop) - (Scrolls I) - (NPC Levels 10-25)'),
(1948,60004,6,0,-60004,1,0,'NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)'),
(1948,60206,0.1,0,-60206,1,0,'NPC LOOT (Blue World Drop) - (Item Levels: 21-25) - (NPC Levels: 23)'),
(1948,60436,10,0,-60436,1,0,'NPC LOOT (White World Drop) - (Item Levels: 23-24) - (NPC Levels: 23)'),
(1948,60443,0.5,0,-60443,1,0,'NPC LOOT (White World Drop) - (Item Levels: 25 (10 Slot Bag)) - (NPC Levels: 21-30)'),
(1948,65053,100,0,-65053,1,0,'NPC LOOT (Rare NPC Loot) - Snarlmane - Special Items'),
-- 3068
(3068,774,1.36,0,1,1,0,'Malachite'),
(3068,818,0.22,0,1,1,0,'Tigerseye'),
(3068,4757,22.9508,0,1,1,0,'Cracked Egg Shells'),
(3068,4759,-50,0,1,1,0,'Plainstrider Talon'),
(3068,4775,28.2332,0,1,1,0,'Cracked Bill'),
(3068,4776,9.6539,0,1,1,0,'Ruffled Feather'),
(3068,4806,-9,0,1,1,0,'Plainstrider Scale'),
(3068,7096,21.1293,0,1,1,0,'Plucked Feather'),
(3068,7097,8.1967,0,1,1,0,'Leg Meat'),
(3068,33009,-10,2,1,1,0,'Tender Strider Meat'),
(3068,50502,0.3,0,-50502,1,0,'LOOT (World Drop) - (RequiredSkillRank: 20-90 (Profession Recipes)) - (NPC Levels ~5-10)'),
(3068,60101,0.75,0,-60101,1,0,'NPC LOOT (Green World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)'),
(3068,60441,0.5,0,-60441,1,0,'NPC LOOT (White World Drop) - (Item Levels: 5 (6 Slot Bag)) - (NPC Levels: 1-10)'),
(3068,65081,100,0,-65081,1,0,'NPC LOOT (Rare NPC Loot) - Mazzranache - Special Items'),
-- 5807
(5807,774,0.34,0,1,1,0,'Malachite'),
(5807,818,0.34,0,1,1,0,'Tigerseye'),
(5807,4813,23.7942,0,1,1,0,'Small Leather Collar'),
(5807,4814,69.1318,0,1,1,0,'Discolored Fang'),
(5807,50502,0.3,0,-50502,1,0,'LOOT (World Drop) - (RequiredSkillRank: 20-90 (Profession Recipes)) - (NPC Levels ~5-10)'),
(5807,60409,10,0,-60409,1,0,'NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)'),
(5807,60441,0.5,0,-60441,1,0,'NPC LOOT (White World Drop) - (Item Levels: 5 (6 Slot Bag)) - (NPC Levels: 1-10)'),
(5807,65110,100,0,-65110,1,0,'NPC LOOT (Rare NPC Loot) - The Rake - Special Items'),
-- 8201
(8201,1645,4.2,0,1,1,0,'Moonberry Juice'),
(8201,3928,2.36,0,1,1,0,'Superior Healing Potion'),
(8201,4338,27.6316,0,1,3,0,'Mageweave Cloth'),
(8201,4599,7.8947,0,1,1,0,'Cured Ham Steak'),
(8201,4638,0.26,0,1,1,0,'Reinforced Steel Lockbox'),
(8201,6149,0.52,0,1,1,0,'Greater Mana Potion'),
(8201,7909,0.26,0,1,1,0,'Aquamarine'),
(8201,7910,0.26,0,1,1,0,'Star Ruby'),
(8201,7989,0.26,0,1,1,0,'Plans: Mithril Spurs'),
(8201,7990,0.26,0,1,1,0,'Plans: Heavy Mithril Helm'),
(8201,8389,0.26,0,1,1,0,'Pattern: Big Voodoo Pants'),
(8201,50602,0.75,0,-50602,1,0,'NPC LOOT (White World Drop) - (Scrolls III) - (NPC Levels 40-55)'),
(8201,60007,6,0,-60007,1,0,'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(8201,60260,0.1,0,-60260,1,0,'NPC LOOT (Blue World Drop) - (Item Levels: 48-52) - (NPC Levels: 50)'),
(8201,60320,0.01,0,-60320,1,0,'NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 50)'),
(8201,60445,0.1,0,-60445,1,0,'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),
(8201,65142,100,0,-65142,1,0,'NPC LOOT (Rare NPC Loot) - Omgorn the Lost - Special Items');

-- LoadCreatureSpellLists: Invalid creature_spell_list 1726901 list does not exist. Skipping.
-- LoadCreatureSpellLists: Invalid creature_spell_list 1730901 list does not exist. Skipping.
-- LoadCreatureSpellLists: Invalid creature_spell_list 1747801 list does not exist. Skipping.
-- LoadCreatureSpellLists: Invalid creature_spell_list 1804901 list does not exist. Skipping.
-- LoadCreatureSpellLists: Invalid creature_spell_list 1805001 list does not exist. Skipping.
-- LoadCreatureSpellLists: Invalid creature_spell_list 1805801 list does not exist. Skipping.
-- LoadCreatureSpellLists: Invalid creature_spell_list 1966807 list does not exist. Skipping.
DELETE FROM creature_spell_list WHERE Id IN (1726901,1730901,1747801,1804901,1805001,1805801,1966807);
INSERT INTO creature_spell_list (Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
-- 1726901
(1726901,1,20754,0,-1,1,0,100,0,16000,28000,20000,45000,'Bleeding Hollow Darkcaster - Rain of Fire - on current'),
(1726901,2,15241,2,-1,1,0,100,0,0,0,0,0,'Bleeding Hollow Darkcaster - Scorch - on current'),
-- 1730901
(1730901,1,8362,0,-1,201,0,100,0,2000,10000,12000,19000,'Hellfire Watcher - Renew - on friendly missing 50% including self'),
(1730901,2,12039,0,-1,201,0,100,0,3000,11000,13000,27000,'Hellfire Watcher - Heal - on friendly missing 50% including self'),
(1730901,3,14032,0,-1,1,0,100,0,6000,15000,33000,40000,'Hellfire Watcher - Shadow Word: Pain - on current'),
-- 1747801
(1747801,1,30615,0,-1,101,0,100,0,6600,23500,17100,23800,'Bleeding Hollow Scryer - Fear - random not tank'),
(1747801,2,12471,2,-1,1,0,100,0,0,0,0,0,'Bleeding Hollow Scryer - Shadowbolt - on current'),
-- 1804901
(1804901,1,36808,0,-1,1,0,100,0,16000,28000,20000,45000,'Bleeding Hollow Darkcaster - Rain of Fire - on current'),
(1804901,2,36807,2,-1,1,0,100,0,0,0,0,0,'Bleeding Hollow Darkcaster - Scorch - on current'),
-- 1805001
(1805001,1,30615,0,-1,101,0,100,0,6600,23500,17100,23800,'Bleeding Hollow Scryer - Fear - random not tank'),
(1805001,2,15232,2,-1,1,0,100,0,0,0,0,0,'Bleeding Hollow Scryer - Shadowbolt - on current'),
-- 1805801
(1805801,1,8362,0,-1,201,0,100,0,2000,10000,12000,19000,'Hellfire Watcher - Renew - on friendly missing 50% including self'),
(1805801,2,12039,0,-1,201,0,100,0,3000,11000,13000,27000,'Hellfire Watcher - Heal - on friendly missing 50% including self'),
(1805801,3,14032,0,-1,1,0,100,0,6000,15000,33000,40000,'Hellfire Watcher - Shadow Word: Pain - on current'),
-- 1966807
(1966807,0,2,0,-1,0,0,100,1,0,0,0,0,'Shadowfiend - Attack'),
(1966807,6,63619,0,-1,0,0,100,1,0,0,0,0,'Shadowfiend - Shadowcrawl');
DELETE FROM creature_spell_list_entry WHERE Id IN (1726901,1730901,1747801,1804901,1805001,1805801,1966807);
INSERT INTO creature_spell_list_entry (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1726901,'Hellfire Ramparts - Bleeding Hollow Darkcaster - Normal',0,80),
(1730901,'Hellfire Ramparts - Hellfire Watcher - Normal',0,0),
(1747801,'Hellfire Ramparts - Bleeding Hollow Scryer - Normal',0,80),
(1804901,'Hellfire Ramparts - Bleeding Hollow Darkcaster - Heroic',0,80),
(1805001,'Hellfire Ramparts - Bleeding Hollow Scryer - Heroic',0,80),
(1805801,'Hellfire Ramparts - Hellfire Watcher - Heroic',0,0),
(1966807,'Shadow Labyrinth - Shadowfiend',0,0);
