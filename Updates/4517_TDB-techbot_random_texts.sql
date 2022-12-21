-- Add random combat texts for Techbot 6231
-- https://www.youtube.com/watch?v=7SRk_NaF52U&ab_channel=ClassicRetroGaming
-- https://web.archive.org/web/20080220233412/http://wow.allakhazam.com/db/mob.html?wmob=6231
UPDATE `creature` SET `position_x` = -4925.538, `position_y` = 824.91534, `position_z` = 247.46948, `orientation` = 1.731216192245483398, `spawndist` = 3, `MovementType` = 1 WHERE `id` = 6231;
DELETE FROM `creature` WHERE `id` = 7732; -- s.10858
UPDATE `creature_template` SET `SpeedWalk` = (1 / 2.5), `SpeedRun` = (2 / 7) WHERE `entry` = 7732;

DELETE FROM `creature_loot_template` WHERE `entry` = 6231;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(6231, 9277, -100, 0, 1, 1, 0, 'Techbot\'s Memory Core'),
(6231, 9444, 69.1983, 0, 1, 1, 0, 'Techbot CPU Shell'),
(6231, 9309, -100, 0, 1, 1, 0, 'Robo-mechanical Guts'),

(6231, 4377, 3.4599, 0, 1, 1, 0, 'Heavy Blasting Powder'),
(6231, 4364, 1.7, 0, 1, 1, 0, 'Coarse Blasting Powder'),
(6231, 4371, 1.5, 0, 1, 1, 0, 'Bronze Tube'),
(6231, 4363, 1.3502, 0, 1, 1, 0, 'Copper Modulator'),
(6231, 4382, 1.34, 0, 1, 1, 0, 'Bronze Framework'),

(6231, 4633, 0.4, 0, 1, 1, 0, 'Heavy Bronze Lockbox'),

(6231, 1529, 0.44, 0, 1, 1, 0, 'Jade'),
(6231, 1206, 0.4, 0, 1, 1, 0, 'Moss Agate'),
(6231, 1705, 0.2532, 0, 1, 1, 0, 'Lesser Moonstone'),

(6231, 60443, 1, 0, -60443, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 25 (10 Slot Bag)) - (NPC Levels: 21-30)'),
(6231, 50504, 0.8, 0, -50504, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 110-175 (Profession Recipes)) - (NPC Levels ~20-30)'),
(6231, 60005, 9, 0, -60005, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)'),
(6231, 60136, 2, 0, -60136, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 25-29) - (NPC Levels: 26)'),
-- (6231, 50601, 0.75, 0, -50601, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 35 (Scrolls II)) - (NPC Levels 25-40)'), -- no scrolls
(6231, 30004, 0.1, 0, -30004, 1, 0, 'Gnomeregan - Zone Drop'),
(6231, 60212, 0.05, 0, -60212, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 24-28) - (NPC Levels: 26)');

DELETE FROM `reference_loot_template` WHERE `entry` = 50504;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 50504, `entry`, 0, 1 FROM `item_template` WHERE `entry` IN (
-- 50503 is included in 50504, hence the confusion about the range.
-- 1%
2601, -- Pattern: Gray Woolen Robe	105 -- confirmed
5972, -- Pattern: Fine Leather Pants	105
3393, -- Recipe: Minor Magic Resistance Potion	110 -- confirmed
11038, -- Formula: Enchant 2H Weapon - Lesser Spirit	110
11039, -- Formula: Enchant Cloak - Minor Agility	110 -- confirmed
11081, -- Formula: Enchant Shield - Lesser Protection	115 -- confirmed
3394, -- Recipe: Potion of Curing	120
4294, -- Pattern: Hillman's Belt	120
4347, -- Pattern: Reinforced Woolen Shoulders	120
4410, -- Schematic: Shadow Goggles	120
6375, -- Formula: Enchant Bracer - Lesser Spirit	120
6390, -- Pattern: Stylish Blue Shirt	120 -- confirmed
6391, -- Pattern: Stylish Green Shirt	120
7360, -- Pattern: Dark Leather Gloves	120
10316, -- Pattern: Colorful Kilt	120
2882, -- Plans: Silvered Bronze Shoulders	125 -- confirmed
2883, -- Plans: Deadly Bronze Poniard	125
4348, -- Pattern: Phoenix Gloves	125 -- confirmed
4349, -- Pattern: Phoenix Pants	125
5578, -- Plans: Silvered Bronze Breastplate	130
-- rest %
6454, -- Manual: Strong Anti-Venom', 130); -- confirmed
11098, -- Formula: Enchant Cloak - Lesser Shadow Resistance', 135); -- confirmed
4296, -- Pattern: Dark Leather Shoulders', 140); -- confirmed
4350, -- Pattern: Spider Silk Slippers', 140); -- confirmed
5543, -- Plans: Iridescent Hammer', 140);
7363, -- Pattern: Pilferer\'s Gloves', 140);
3396, -- Recipe: Elixir of Lesser Agility', 140);
4412, -- Schematic: Moonsight Rifle', 145);
7092, -- Pattern: Hands of Darkness', 145);
7364, -- Pattern: Heavy Earthen Gloves', 145); -- confirmed
3608, -- Plans: Mighty Iron Hammer', 145); -- confirmed
3611, -- Plans: Green Iron Boots', 145); -- confirmed
3612, -- Plans: Green Iron Gauntlets', 150);
4297, -- Pattern: Barbaric Gloves', 150); -- confirmed
6044, -- Plans: Iron Shield Spike', 150);
6211, -- Recipe: Elixir of Ogre\'s Strength', 150);
7091, -- Pattern: Truefaith Gloves', 150); -- confirmed
10424, -- Plans: Silvered Bronze Leggings', 155); -- confirmed
20974, -- Design: Jade Pendant of Blasting', 160);
3870, -- Plans: Green Iron Shoulders', 160);
4414, -- Schematic: Portable Bronze Mortar', 165); -- confirmed
6045, -- Plans: Iron Counterweight', 165);
7090, -- Pattern: Green Silk Armor', 165);
7449, -- Pattern: Dusky Leather Leggings', 165);
3867, -- Plans: Golden Iron Destroyer', 170); -- confirmed
3872, -- Plans: Golden Scale Leggings', 170);
4298, -- Pattern: Guardian Belt', 170); -- confirmed
4351, -- Pattern: Shadow Hood', 170);
11164, -- Formula: Enchant Weapon - Lesser Beastslayer', 175);
3830, -- Recipe: Elixir of Fortitude', 175); -- confirmed
11165, -- Formula: Enchant Weapon - Lesser Elemental Slayer', 175);
3866, -- Plans: Jade Serpentblade', 175);
3871, -- Plans: Golden Scale Shoulders', 175);
4299, -- Pattern: Guardian Armor', 175); -- confirmed
4352, -- Pattern: Boots of the Enchanter', 175);
5774, -- Pattern: Green Silk Pack', 175);
7450, -- Pattern: Green Whelp Armor', 175);
10601 -- Schematic: Bright-Eye Goggles', 175);
);

REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (50504, 'LOOT (World Drop) - (RequiredSkillRank: 110-175 (Profession Recipes)) - (NPC Levels ~20-30)');

-- Remove 130-175 for Level ~20-30 npcs
DELETE FROM `reference_loot_template` WHERE `entry` = 50505 AND `item` IN (6454,11098,4296,4350,5543,7363,3396,4412,7092,7364,3608,3611,3612,4297,6044,6211,7091,10424,20974,3870,4414,6045,7090,7449,3867,3872,4298,4351,11164,3830,11165,3866,3871,4299,4352,5774,7450,10601);
UPDATE `reference_loot_template_names` SET `name` = 'LOOT (World Drop) - (RequiredSkillRank: 130-300 (Profession Recipes)) - (NPC Levels ~31-63) (Split me up)' WHERE `entry` = 50505;

-- https://wowpedia.fandom.com/wiki/Instances_by_level?oldid=1626603
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(30001, 'Shadowfang Keep - Zone Drop'), -- 1489,2205,2292,1482,1935,1318,2807,1484,1974,1483,3194
(30002, 'Blackfathom Deeps - Zone Drop'), -- 1454,3414,3416,3417,1481,1491,3413,1486,3415,2271,2567 (2034, special npcs)
(30003, 'Razorfen Kraul - Zone Drop'), -- 776,1488,2264,4438,1976,2039,1727,1975,1978,2549
(30004, 'Gnomeregan - Zone Drop'), -- 9485,9486,9487,9488,9489,9490,9491,9508,9509,9510
(30005, 'Scarlet Monastery (Graveyard / Library / Armory / Cathedral) - Zone Drop'), -- /*G*/ 7728,7727,7754,5819,10332,2262,8226,8225,7761,7786,7752,7753,7730,7787,7729,/*L+?*/7755,7760,7759,1992,5756,7736,7758,7757,7729
(30006, 'Razorfen Downs - Zone Drop'), -- 10567,10570,10571,10572,10573,10574,10578,10581,10582,10583,10584
(30007, 'Uldaman - Zone Drop'), -- 9381,9383,9384,9386,9391,9392,9393,9396,9397,9406,9420,9422,9423,9424,9425,9426,9427,9428,9429,9430,9431,9432,9465
(30008, 'Zul\'Farrak - Zone Drop'), -- 9512,9484,862,6440,5616,9511,9481,9480,9482,9483,2040
(30009, 'Temple of Atal\'Hakkar - Zone Drop'), -- 10630,10629,10632,10631,10633,10634,10623,10625,10628,10626,10627,10624
(30010, 'Blackrock Depths - Zone Drop'), -- 12552,12551,12542,12546,12550,12547,12549,12555,12531,12535,12527,12528,12532
(30011, 'Dire Maul (East / West) - Zone Drop'); -- east: 18295,18298,18296,18289,/*west:*/18344,18340,18338 north: -
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30001,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (1489,2205,2292,1482,1935,1318,2807,1484,1974,1483,3194);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30002,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (1454,3414,3416,3417,1481,1491,3413,1486,3415,2271,2567);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30003,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (776,1488,2264,4438,1976,2039,1727,1975,1978,2549);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30004,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (9485,9486,9487,9488,9489,9490,9491,9508,9509,9510);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30005,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (7728,7727,7754,5819,10332,2262,8226,8225,7761,7786,7752,7753,7730,7787,7729,/*L+?*/7755,7760,7759,1992,5756,7736,7758,7757,7729);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30006,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (10567,10570,10571,10572,10573,10574,10578,10581,10582,10583,10584);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30007,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (9381,9383,9384,9386,9391,9392,9393,9396,9397,9406,9420,9422,9423,9424,9425,9426,9427,9428,9429,9430,9431,9432,9465);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30008,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (9512,9484,862,6440,5616,9511,9481,9480,9482,9483,2040);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30009,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (10630,10629,10632,10631,10633,10634,10623,10625,10628,10626,10627,10624);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30010,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (12552,12551,12542,12546,12550,12547,12549,12555,12531,12535,12527,12528,12532);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30011,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (18295,18298,18296,18289,/*west:*/18344,18340,18338);

-- https://web.archive.org/web/20080328083635/http://wow.allakhazam.com/db/item.html?witem=2034
DELETE FROM `reference_loot_template` WHERE `item` = 2034 AND `entry` BETWEEN 60127 AND 60137; -- only some drop it
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(4809, 2034, 1, 9, 1, 1, 0, 'Scholarly Robes'),
(4810, 2034, 1, 9, 1, 1, 0, 'Scholarly Robes'),
(4811, 2034, 1, 9, 1, 1, 0, 'Scholarly Robes'),
(4812, 2034, 1, 9, 1, 1, 0, 'Scholarly Robes'),
(4813, 2034, 1, 9, 1, 1, 0, 'Scholarly Robes'),
(4814, 2034, 1, 9, 1, 1, 0, 'Scholarly Robes');

-- https://tbc.wowhead.com/npc=6231/techbot
DELETE FROM `dbscript_random_templates` WHERE `id` = 906;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(906,0,2426,0,'Techbot 6231 - Combat Texts'), -- Please be patient, we will call your name when it is your turn. We are helping people in the order they appear to us on our screen.
(906,0,2427,0,'Techbot 6231 - Combat Texts'), -- Remember, if you harass the rep or spam the channel, your account may be kicked, banned, or worse.
(906,0,2428,0,'Techbot 6231 - Combat Texts'), -- I am a BOT. I have tons of information. To find out what I know whisper me
(906,0,2429,0,'Techbot 6231 - Combat Texts'), -- You are welcome, have a nice day.
(906,0,2430,0,'Techbot 6231 - Combat Texts'), -- There is no COW level... really! I repeat: there is no COW level. Well, maybe there is...
(906,0,2431,0,'Techbot 6231 - Combat Texts'), -- Techbot is sensitive and those words hurt my ears. :[ Please be nice to me.  I just want to help.
(906,0,2433,0,'Techbot 6231 - Combat Texts'), -- People think I like corndogs, but actually, they give me indigestion !!!
(906,0,2434,0,'Techbot 6231 - Combat Texts'), -- When the rep is talking to you, he will start each line with your name.  If you don't see your name, he's not yet speaking to you.
(906,0,2435,0,'Techbot 6231 - Combat Texts'), -- Some topics I can help you with are: | drivers | commands | lag | bots....zzzzzzzzttt!!
(906,0,2436,0,'Techbot 6231 - Combat Texts'), -- Please be patient, we will call your name when it is your turn. We are helping people in the order they appear to us on our screen. $N!
(906,0,2437,0,'Techbot 6231 - Combat Texts'), -- I love you too :).
(906,0,2438,0,'Techbot 6231 - Combat Texts'); -- If you have been muted, or have questions about the Muting/UnMuting process, please visit...zzzzttt!!

-- 2022-06-29 22:53:15 WaypointMovementGenerator::LoadPath: Creature (Entry: 3530 Guid: 18235) doesn't have waypoint path 0
-- 2022-06-29 22:53:15 void WaypointMovementGenerator<Creature>::InitializeWaypointPath> unable to intialize path for Creature (Entry: 3530 Guid: 18235)
REPLACE INTO `creature_movement_template` (`entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) -- changes entry at night/day
SELECT 3531 as `entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId` FROM `creature_movement_template` WHERE `entry` = 3530;

-- Fix Lord Kazzak Aggro Radius
UPDATE `creature_template` SET `Detection` = 70 WHERE `entry` = 12397;

UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` IN (
7044, -- Black Drake
7045, -- Scalding Drake
7046, -- Searscale Drake
7846, -- Teremus the Devourer (https://classic.wowhead.com/npc=7846/teremus-the-devourer#comments:id=2838902)
8976, -- Hematos
14388, -- Rogue Black Drake
14601, -- Ebonroc
11981, -- Flamegor
11983 -- Firemaw
);

-- Name unnamed RefLoots
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(5759, 'NPC LOOT (Darkmaster Gandling) - Random Item'),
(10500, 'NPC LOOT (Scourge Invasion) - Ghoul Berserker / Spectral Soldier / Skeletal Shocktrooper / Flameshocker - Quest Start Item'),
(11000, 'Fishing Loot - Zone Area: (1),(12),(141),(215),(367),(814),(2979),(3470),(3473),(3475),(3526),(3527),(3528)'),
(11001, 'Fishing Loot - Zone Area: (14),(168),(169),(702),(2322),(2399),(3430),(3524)'),
(11002, 'Fishing Loot - Zone Area: (38),(40),(384),(815),(1156),(1519),(1537),(1581),(1637),(1638),(1657),(1701),(3479),(3489),(3496),(3506),(3507),(3508),(3515)'),
(11003, 'Fishing Loot - Zone Area: (2),(17),(115),(226),(305),(306),(457),(2398),(3433),(3482),(3525)'),
(11004, 'Fishing Loot - Zone Area: (10),(11),(44),(267),(331),(406)'),
(11005, 'Fishing Loot - Zone Area: (150),(271),(294),(295),(298),(299),(414),(1039),(2104),(2325),(2365),(2397),(2402)'),
(11006, 'Fishing Loot - Swamp of Sorrows (8) / Dustwallow Marsh (15) / Stranglethorn Vale (33) / Alterac Mountains (36) / Arathi Highlands (45) / Thousand Needles (400) / Desolace (405) / Scarlet Monastery (796)'),
(11007, 'Fishing Loot - Zone Area: (35),(43),(104),(117),(122),(300),(301),(302),(311),(312),(327),(328),(513),(516),(517),(518),(598),(1577),(1578),(1739),(1797),(2079),(2324),(2339),(2403),(2405),(2406),(2408),(3357),(4047)'),
(11008, 'Fishing Loot - Azshara (16) / Western Plaguelands (28) / The Hinterlands (47) / Feralas (357) / Felwood (361) / Un’Goro Crater (490) / Moonglade (493) / Sunken Temple (1417) / Maraudon (2100) / Verdantis River (2521)'),
(11009, 'Fishing Loot - Jaguero Isle (297),The Overlook Cliffs (307),Tanaris (440),The Forgotten Coast (1108),Temple of Arkkoran (1226),The Shattered Strand (1228),Tower of Eldara (1229),Jagged Reef (1230),Southridge Beach (1231),The Ruined Reaches (1256),(3317)'),
(11010, 'Fishing Loot - Burning Steppes (46) / Eastern Plaguelands (139) / Winterspring (618) / Jademir Lake (1112) / Silithus (1377) / Zul’Gurub (1977) / Stratholme (2017) / Scholomance (2057)'),
(11011, 'Fishing Loot - Hellfire Peninsula (3483) / Forge Camp: Hate (3625)'),
(11012, 'Fishing Loot - Zangarmarsh (3521) / Serpentshrine Cavern (3607) / The Underbog (3716)'),
(11013, 'Fishing Loot - Terokkar Forest (3519) / Allerian Stronghold (3684) / Blackwind Lake (3690) / Lake Ere’Noru (3691) / Silmyr Lake (3859)'),
(11014, 'Fishing Loot - Nagrand (3518) / Netherstorm (3523) / Skysong Lake (3614) / Lake Sunspring (3621)'),
(11015, 'Fishing Loot - Shadowmoon Valley (3520)'),
(11016, 'Fishing Loot - Isle of Quel’Danas (4080)'),
(11017, 'Fishing Loot - Deadwind Pass (41) / Zul’Aman (3805)'),
(11099, 'Fishing Loot - Tirisfal Glades (85) / Silverpine Forest (130) / Blackfathom Deeps (719)'),
(11100, 'Fishing Loot - Undercity (1497)'),
(11101, 'Fishing Loot - The Sludge Fen (382) / Cragpool Lake (463) / Blackwolf River (636) / The Foul Pool (3595)'),
(11102, 'Fishing Loot - The Forgotten Pools (386) / Lushwater Oasis (387) / The Stagnant Oasis (388) / Wailing Caverns (718)'),
(11103, 'Fishing Loot - Ruins of Mathystra (443) / Cliffspring Falls (445) / Grove of the Ancients (448) / Wildbend River (454) / Cliffspring River (456) / Twilight Vale (2077)'),
(11104, 'Fishing Loot - Darkshore (148)'),
(11105, 'Fishing Loot - Hetaera’s Clutch (1222) / Bay of Storms (1227) / Scalebeard’s Cave (3140)'),
(11106, 'Fishing Loot - Fire Plume Ridge (537)'),
(12002, 'Naxxramas (Boss Loot) - Four Horsemen Chest (181366) - Tokens (T3 Tokens)'),
(12006, 'Dire Maul (Boss Loot) - Knot Thimblejack\'s Cache (179501) - Random Crafting Loot'),
(34000, 'Onyxia\'s Lair (Boss Loot) - Onyxia - Epic Items (T2 Head)'),
(34001, 'Onyxia\'s Lair (Boss Loot) - Onyxia - Epic Items'),
(34002, 'NPC LOOT (Blue NPC Loot & Patterns) - Classic World bosses and dragons'),
-- 34003	NPC LOOT (Green NPC Loot) - Classic World bosses and dragons
(34004, '(Boss Loot) - Azuregos - Epic Items'),
(34005, '(Boss Loot) - Lethon - Epic Items'),
(34006, '(Boss Loot) - Emeriss - Epic Items'),
(34007, '(Boss Loot) - Taerar - Epic Items'),
(34008, '(Boss Loot) - Ysondre - Epic Items'),
(34009, 'Blackwing Lair (Boss Loot) - Nefarian - Epic Items (T2 Chest)'),
(34010, 'NPC LOOT (Green World Drop) - (Item Levels: 59-63) - VANILLA NPC ONLY'),
(34011, 'Molten Core (Boss Loot) - Epic Patterns'),
(34024, 'Ruins of Ahn\'Qiraj (Boss Loot) - Book / Guide / Tome / Libram / Codex / Handbook / Tablet / Grimoire / Manual (Class Item)'),
-- 34030	Molten Core (Boss Loot) - Ragnaros - Epic Items (T2 Legs)
(34032, 'Blackwing Lair (Boss Loot) - Razorgore the Untamed - Epic Items (T2 Wrist)'),
(34033, 'Blackwing Lair (Boss Loot) - Vaelastrasz the Corrupt - Epic Items (T2 Waist)'),
(34034, 'Blackwing Lair (Boss Loot) - Broodlord Lashlayer - Epic Items (T2 Feet)'),
(34037, 'Blackwing Lair (Boss Loot) - Ebonroc / Firemaw / Flamegor - (Epic Items & T2 Hands)'),
(34038, 'Blackwing Lair (Boss Loot) - Chromaggus - Epic Items (Group 1)'),
(34040, 'Naxxramas (Boss Loot) - Maexxna - Tokens (T3 Hands)'),
(34041, 'Naxxramas (Boss Loot) - Thaddius - Tokens (T3 Head)'),
(34042, 'Naxxramas (Boss Loot) - Loatheb - Tokens (T3 Legs)'),
-- 34044	Naxxramas (Boss Loot) - Kel'thuzad  - Epic Items (T3 Ring)
(34045, 'Temple of Ahn\'Qiraj (Boss Loot) - Patterns & Imperial Qiraji Armaments / Regalia'),
(34050, 'Molten Core (Boss Loot) - Magmadar - Epic Items (Group 1)'),
(34051, 'Molten Core (Boss Loot) - Magmadar - Epic Items (Group 2)'),
(34052, 'Molten Core (Boss Loot) - Magmadar - Epic Items (Group 3)'),
(34053, 'Molten Core (Boss Loot) - Garr - Epic Items (Group 1)'),
(34054, 'Molten Core (Boss Loot) - Garr - Epic Items (Group 2)'),
(34055, 'Molten Core (Boss Loot) - Garr - Epic Items (Group 3)'),
(34056, 'Molten Core (Boss Loot) - Baron Geddon - Epic Items (Group 1)'),
(34057, 'Molten Core (Boss Loot) - Baron Geddon - Epic Items (Group 2)'),
(34058, 'Molten Core (Boss Loot) - Golemagg the Incinerator - Epic Items (Group 1)'),
(34059, 'Molten Core (Boss Loot) - Golemagg the Incinerator - Epic Items (Group 2)'),
(34060, 'Molten Core (Boss Loot) - Golemagg the Incinerator - Epic Items (Group 3)'),
(34061, 'Molten Core (Boss Loot) - Lucifron - Epic Items (Group 1)'),
(34062, 'Molten Core (Boss Loot) - Lucifron - Epic Items (Group 2)'),
(34063, 'Molten Core (Boss Loot) - Gehennas - Epic Items (Group 1)'),
(34064, 'Molten Core (Boss Loot) - Gehennas - Epic Items (Group 2)'),
(34065, 'Molten Core (Boss Loot) - Shazzrah - Epic Items (Group 1)'),
(34066, 'Molten Core (Boss Loot) - Shazzrah - Epic Items (Group 2)'),
(34067, 'Molten Core (Boss Loot) - Sulfuron Harbinger - Epic Items (Group 1)'),
(34068, 'Molten Core (Boss Loot) - Sulfuron Harbinger - Epic Items (Group 2)'),
-- 34069	Molten Core (Boss Loot) - Ragnaros - Epic Items (Group 1)
-- 34070	Molten Core (Boss Loot) - Ragnaros - Epic Items (Group 2)
(34071, 'Blackwing Lair (Boss Loot) - Nefarian - Epic Items (Group 1)'),
(34072, 'Blackwing Lair (Boss Loot) - Nefarian - Epic Items (Group 2)'),
(34073, 'Blackwing Lair (Boss Loot) - Chromaggus - Epic Items (Group 1)'),
(34074, 'Blackwing Lair (Boss Loot) - Chromaggus - Epic Items (Group 2)'),
(34075, 'Blackwing Lair (Boss Loot) - Flamegor - Epic Items (Group 1)'),
(34076, 'Blackwing Lair (Boss Loot) - Ebonroc - Epic Items (Group 1)'),
(34077, 'Blackwing Lair (Boss Loot) - Firemaw - Epic Items (Group 1)'),
(34078, 'Zul\'Gurub (Boss Loot) - Hakkar - Epic Items (Group 1)'),
(34079, 'Zul\'Gurub (Boss Loot) - Hakkar - Epic Items (Group 2)'),
(34080, 'Temple of Ahn\'Qiraj (Boss Loot) - The Prophet Skeram - Epic Items (Group 1)'),
(34081, 'Temple of Ahn\'Qiraj (Boss Loot) - The Prophet Skeram - Epic Items (Group 2)'),
(34082, 'Temple of Ahn\'Qiraj (Boss Loot) - Battleguard Sartura - Epic Items (Group 1)'),
(34083, 'Temple of Ahn\'Qiraj (Boss Loot) - Battleguard Sartura - Epic Items (Group 2)'),
(34084, 'Temple of Ahn\'Qiraj (Boss Loot) - Fankriss the Unyielding - Epic Items (Group 1)'),
(34085, 'Temple of Ahn\'Qiraj (Boss Loot) - Fankriss the Unyielding - Epic Items (Group 2)'),
(34086, 'Zul\'Gurub (Boss Loot) - Primal Hakkari Tokens'),
(34087, 'Zul\'Gurub (Boss Loot) - Primal Hakkari Tokens'),
(34088, 'Zul\'Gurub (Boss Loot) - Bloodlord Mandokir - Epic Items (Group 1)'),
(34089, 'Zul\'Gurub (Boss Loot) - Jin\'do the Hexxer - Epic Items (Group 1)'),
(34101, 'Temple of Ahn\'Qiraj (Boss Loot) - C\'Thun - Epic Items (Group 1)'),
(34102, 'Temple of Ahn\'Qiraj (Boss Loot) - C\'Thun - Epic Items (Group 2)'),
(34103, 'Ruins of Ahn\'Qiraj (Boss Loot) - Ossirian the Unscarred - Epic Items (Group 1)'),
(34104, 'Ruins of Ahn\'Qiraj (Boss Loot) - Ossirian the Unscarred - Epic Items (Group 2)'),
(35009, 'Maraudon (Boss Loot) - Princess Theradras - Blue Items & Blade of Eternal Darkness (Group 1)'),
(35010, 'Sunken Temple (Boss Loot) - Atal\'ai Defenders - Atal\'ai Items'),
(35011, 'Sunken Temple (Boss Loot) - Weaver / Hazzas / Dreamscythe / Morphaz - Items'),
(35012, 'Sunken Temple (Boss Loot) - Avatar of Hakkar - Items'),
(35013, 'Sunken Temple (Boss Loot) - Shade of Eranikus - Items'),
(35015, 'Dire Maul (The Maul) - Skarr the Unbreakable / The Razza / Mushgog - Items'),
-- 35016	Dire Maul: Class Quest Books
(35018, 'Dire Maul (Boss Loot) - Guard Mol\'dar / Slip\'kik - Items'),
(35024, 'Upper Blackrock Spire (Boss Loot) - Lord Valthalak - Items'),
(35030, 'Scholomance (Boss Loot) - Ras Frostwhisper - Items'),
(35031, 'Scholomance (Boss Loot) - Shared Boss Loot - Items'),
-- 35032	(World Boss Loot) - Lord Kazzak / Highlord Kruul - Epic Items
(35033, 'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Major Healing / Mana Potion'),
(35034, 'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Green Items (Group 1)'),
(35035, 'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Green Items (Group 2)'),
(35036, 'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Blue Items (Group 1)'),
(35037, 'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Blue Items & Schematic: Major Recombobulator (Group 2)'),
(35038, 'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Blue Items & Treant\'s Bane (Group 3)'),
(44000, 'Item Loot - A Crazy Grab Bag (15902) - (Green World Drop) - (Item Levels: 45-49)'), -- should contain ilvl 56-61
(44001, 'Item Loot - Scum Covered Bag (20767) - Herbs, Potions, Gems, Patterns'), -- Patterns currently missing

-- TBC+
(10001, 'Item Loot - Aldor / Scryer Supplies Package (34583,34584,34585,34587,34592,34593,34594,34595) - Scrolls V'), -- 50604
(10005, 'Item Loot - Black Sack of Gems (34846) - Rare & Epic Gems - TBC'),
(10007, 'Item Loot - Bundle of Nether Spikes (30320) - Nether Spike'),
(29500, 'Zul\'Aman - (Timed Event Loot) - Tanzar\'s Trunk (186648) / Kraz\'s Package (186667) / Ashli\'s Bag (186672) / Harkor\'s Satchel (187021)'),
(39000, 'NPC LOOT - Quagmirran - Herbalism Items'),
(39001, 'NPC LOOT - Tavarok - Mining Items'),

(40034, 'Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Vazruden and Nazan (Normal) - Rare Items (Group 1)'),
(40035, 'Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Vazruden and Nazan (Heroic) - Rare Items (Group 1)'),
(40036, 'Hellfire Citadel: Hellfire Ramparts (Boss Loot) - Vazruden and Nazan (Heroic) - Epic Items'),
(40037, 'Hellfire Citadel: Hellfire Ramparts (Heroic) - Epic Gems'),

(42001, 'Solid / Bound Fel Iron Chest - Common & Rare Gems - TBC'),
(42002, 'Solid / Bound Fel Iron Chest - Random Item - TBC'),
(42004, 'Solid / Bound Adamantite Chest - Common & Rare Gems - TBC'),
(42005, 'Outland Chest - Random Item - TBC'),
(42007, 'Solid / Bound Adamantite Chest - Common & Rare Gems - TBC'),
(42008, 'Solid / Bound Adamantite Chest - Random Item - TBC');

-- Remove leftover Race Condition, TBC+ only
UPDATE `reference_loot_template` SET `condition_id` = 0 WHERE `entry` = 34037 AND `item` IN (16948,16956); -- Gauntlets of Ten Storms & Judgement Gauntlets

-- WotlkDB
DELETE FROM `reference_loot_template_names` WHERE `entry` IN (60136,30004,60212);
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('30004','Gnomeregan - Zone Drop'),
('60136','NPC LOOT (Green World Drop) - (Item Levels: 25-29) - (NPC Levels: 26)'),
('60212','NPC LOOT (Blue World Drop) - (Item Levels: 24-28) - (NPC Levels: 26)');

DELETE FROM `reference_loot_template` WHERE `entry` IN (60136,30004,60212);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('60136','2072','0','1','1','1','0','Dwarven Magestaff'),
('60136','2077','0','1','1','1','0','Magician Staff'),
('60136','2819','0','1','1','1','0','Cross Dagger'),
('60136','3045','0','1','1','1','0','Lambent Scale Boots'),
('60136','3047','0','1','1','1','0','Lambent Scale Gloves'),
('60136','3048','0','1','1','1','0','Lambent Scale Legguards'),
('60136','3049','0','1','1','1','0','Lambent Scale Breastplate'),
('60136','3055','0','1','1','1','0','Forest Leather Chestpiece'),
('60136','3056','0','1','1','1','0','Forest Leather Pants'),
('60136','3058','0','1','1','1','0','Forest Leather Gloves'),
('60136','3067','0','1','1','1','0','Bright Pants'),
('60136','3069','0','1','1','1','0','Bright Robe'),
('60136','3201','0','1','1','1','0','Barbarian War Axe'),
('60136','3206','0','1','1','1','0','Cavalier Two-hander'),
('60136','3212','0','1','1','1','0','Lambent Scale Bracers'),
('60136','3656','0','1','1','1','0','Lambent Scale Shield'),
('60136','4036','0','1','1','1','0','Silver-thread Cuffs'),
('60136','4049','0','1','1','1','0','Emblazoned Bracers'),
('60136','4661','0','1','1','1','0','Bright Mantle'),
('60136','4705','0','1','1','1','0','Lambent Scale Pauldrons'),
('60136','4707','0','1','1','1','0','Lambent Scale Girdle'),
('60136','4709','0','1','1','1','0','Forest Leather Mantle'),
('60136','4711','0','1','1','1','0','Glimmering Cloak'),
('60136','4712','0','1','1','1','0','Glimmering Mail Girdle'),
('60136','4713','0','1','1','1','0','Silver-thread Cloak'),
('60136','4714','0','1','1','1','0','Silver-thread Sash'),
('60136','4715','0','1','1','1','0','Emblazoned Cloak'),
('60136','4999','0','1','1','1','0','Azora\'s Will'),
('60136','5001','0','1','1','1','0','Heart Ring'),
('60136','6387','0','1','1','1','0','Glimmering Mail Bracers'),
('60136','6393','0','1','1','1','0','Silver-thread Gloves'),
('60136','6394','0','1','1','1','0','Silver-thread Boots'),
('60136','6395','0','1','1','1','0','Silver-thread Amice'),
('60136','6397','0','1','1','1','0','Emblazoned Gloves'),
('60136','6398','0','1','1','1','0','Emblazoned Belt'),
('60136','6567','0','1','1','1','0','Shimmering Armor'),
('60136','6569','0','1','1','1','0','Shimmering Robe'),
('60136','6584','0','1','1','1','0','Scouting Tunic'),
('60136','6590','0','1','1','1','0','Battleforge Boots'),
('60136','6591','0','1','1','1','0','Battleforge Wristguards'),
('60136','6592','0','1','1','1','0','Battleforge Armor'),
('60136','6593','0','1','1','1','0','Battleforge Cloak'),
('60136','6594','0','1','1','1','0','Battleforge Girdle'),
('60136','6595','0','1','1','1','0','Battleforge Gauntlets'),
('60136','6596','0','1','1','1','0','Battleforge Legguards'),
('60136','6597','0','1','1','1','0','Battleforge Shoulderguards'),
('60136','6598','0','1','1','1','0','Dervish Buckler'),
('60136','6599','0','1','1','1','0','Battleforge Shield'),
('60136','6600','0','1','1','1','0','Dervish Belt'),
('60136','6601','0','1','1','1','0','Dervish Boots'),
('60136','6602','0','1','1','1','0','Dervish Bracers'),
('60136','6604','0','1','1','1','0','Dervish Cape'),
('60136','6605','0','1','1','1','0','Dervish Gloves'),
('60136','6608','0','1','1','1','0','Bright Armor'),
('60136','6611','0','1','1','1','0','Sage\'s Sash'),
('60136','6612','0','1','1','1','0','Sage\'s Boots'),
('60136','6613','0','1','1','1','0','Sage\'s Bracers'),
('60136','6614','0','1','1','1','0','Sage\'s Cloak'),
('60136','6615','0','1','1','1','0','Sage\'s Gloves'),
('60136','7415','0','1','1','1','0','Dervish Spaulders'),
('60136','7558','0','1','1','1','0','Shimmering Stave'),
('60136','8183','0','1','1','1','0','Precision Bow'),
('60136','8184','0','1','1','1','0','Firestarter'),
('60136','8186','0','1','1','1','0','Dire Wand'),
('60136','9769','0','1','1','1','0','Greenweave Branch'),
('60136','9771','0','1','1','1','0','Greenweave Gloves'),
('60136','9772','0','1','1','1','0','Greenweave Leggings'),
('60136','9773','0','1','1','1','0','Greenweave Robe'),
('60136','9774','0','1','1','1','0','Greenweave Vest'),
('60136','9791','0','1','1','1','0','Ivycloth Tunic'),
('60136','9792','0','1','1','1','0','Ivycloth Boots'),
('60136','9793','0','1','1','1','0','Ivycloth Bracelets'),
('60136','9794','0','1','1','1','0','Ivycloth Cloak'),
('60136','9795','0','1','1','1','0','Ivycloth Gloves'),
('60136','9796','0','1','1','1','0','Ivycloth Mantle'),
('60136','9797','0','1','1','1','0','Ivycloth Pants'),
('60136','9798','0','1','1','1','0','Ivycloth Robe'),
('60136','9799','0','1','1','1','0','Ivycloth Sash'),
('60136','9800','0','1','1','1','0','Ivy Orb'),
('60136','9801','0','1','1','1','0','Superior Belt'),
('60136','9802','0','1','1','1','0','Superior Boots'),
('60136','9803','0','1','1','1','0','Superior Bracers'),
('60136','9804','0','1','1','1','0','Superior Buckler'),
('60136','9806','0','1','1','1','0','Superior Gloves'),
('60136','9807','0','1','1','1','0','Superior Shoulders'),
('60136','9808','0','1','1','1','0','Superior Leggings'),
('60136','9809','0','1','1','1','0','Superior Tunic'),
('60136','9810','0','1','1','1','0','Fortified Boots'),
('60136','9813','0','1','1','1','0','Fortified Gauntlets'),
('60136','9815','0','1','1','1','0','Fortified Leggings'),
('60136','9816','0','1','1','1','0','Fortified Shield'),
('60136','9817','0','1','1','1','0','Fortified Spaulders'),
('60136','9818','0','1','1','1','0','Fortified Chain'),
('60136','9822','0','1','1','1','0','Durable Cape'),
('60136','9829','0','1','1','1','0','Scaled Leather Bracers'),
('60136','9831','0','1','1','1','0','Scaled Cloak'),
('60136','9838','0','1','1','1','0','Banded Cloak'),
('60136','10287','0','1','1','1','0','Greenweave Mantle'),
('60136','11968','0','1','1','1','0','Amber Hoop'),
('60136','11969','0','1','1','1','0','Jacinth Circle'),
('60136','11983','0','1','1','1','0','Chrome Ring'),
('60136','11984','0','1','1','1','0','Cobalt Ring'),
('60136','11994','0','1','1','1','0','Coral Band'),
('60136','11995','0','1','1','1','0','Ivory Band'),
('60136','12007','0','1','1','1','0','Prairie Ring'),
('60136','12008','0','1','1','1','0','Savannah Ring'),
('60136','14158','0','1','1','1','0','Pagan Vest'),
('60136','14163','0','1','1','1','0','Pagan Wraps'),
('60136','14165','0','1','1','1','0','Pagan Britches'),
('60136','14176','0','1','1','1','0','Watcher\'s Boots'),
('60136','14177','0','1','1','1','0','Watcher\'s Cuffs'),
('60136','14181','0','1','1','1','0','Watcher\'s Handwraps'),
('60136','14182','0','1','1','1','0','Watcher\'s Mantle'),
('60136','14185','0','1','1','1','0','Watcher\'s Cinch'),
('60136','14186','0','1','1','1','0','Raincaller Mantle'),
('60136','14187','0','1','1','1','0','Raincaller Cuffs'),
('60136','14188','0','1','1','1','0','Raincaller Cloak'),
('60136','14194','0','1','1','1','0','Raincaller Cord'),
('60136','14195','0','1','1','1','0','Raincaller Boots'),
('60136','14372','0','1','1','1','0','Sanguine Armor'),
('60136','14373','0','1','1','1','0','Sanguine Belt'),
('60136','14375','0','1','1','1','0','Sanguine Cuffs'),
('60136','14377','0','1','1','1','0','Sanguine Handwraps'),
('60136','14378','0','1','1','1','0','Sanguine Mantle'),
('60136','14379','0','1','1','1','0','Sanguine Trousers'),
('60136','14380','0','1','1','1','0','Sanguine Robe'),
('60136','14400','0','1','1','1','0','Resilient Cape'),
('60136','14402','0','1','1','1','0','Resilient Bands'),
('60136','14566','0','1','1','1','0','Prospector\'s Pads'),
('60136','14570','0','1','1','1','0','Bristlebark Blouse'),
('60136','14573','0','1','1','1','0','Bristlebark Amice'),
('60136','14574','0','1','1','1','0','Bristlebark Britches'),
('60136','14578','0','1','1','1','0','Dokebi Cord'),
('60136','14580','0','1','1','1','0','Dokebi Bracers'),
('60136','14582','0','1','1','1','0','Dokebi Cape'),
('60136','14744','0','1','1','1','0','Hulking Chestguard'),
('60136','14748','0','1','1','1','0','Hulking Leggings'),
('60136','14749','0','1','1','1','0','Hulking Spaulders'),
('60136','14750','0','1','1','1','0','Slayer\'s Cuffs'),
('60136','14752','0','1','1','1','0','Slayer\'s Cape'),
('60136','14754','0','1','1','1','0','Slayer\'s Gloves'),
('60136','14755','0','1','1','1','0','Slayer\'s Sash'),
('60136','14756','0','1','1','1','0','Slayer\'s Slippers'),
('60136','15116','0','1','1','1','0','Rigid Shoulders'),
('60136','15118','0','1','1','1','0','Rigid Tunic'),
('60136','15120','0','1','1','1','0','Robust Girdle'),
('60136','15121','0','1','1','1','0','Robust Boots'),
('60136','15122','0','1','1','1','0','Robust Bracers'),
('60136','15123','0','1','1','1','0','Robust Buckler'),
('60136','15124','0','1','1','1','0','Robust Cloak'),
('60136','15125','0','1','1','1','0','Robust Gloves'),
('60136','15126','0','1','1','1','0','Robust Leggings'),
('60136','15132','0','1','1','1','0','Cutthroat\'s Armguards'),
('60136','15212','0','1','1','1','0','Fighter Broadsword'),
('60136','15224','0','1','1','1','0','Battlesmasher'),
('60136','15230','0','1','1','1','0','Ridge Cleaver'),
('60136','15241','0','1','1','1','0','Battle Knife'),
('60136','15249','0','1','1','1','0','Polished Zweihander'),
('60136','15259','0','1','1','1','0','Hefty Battlehammer'),
('60136','15284','0','1','1','1','0','Long Battle Bow'),
('60136','15330','0','1','1','1','0','Wrangler\'s Boots'),
('60136','15332','0','1','1','1','0','Wrangler\'s Buckler'),
('60136','15334','0','1','1','1','0','Wrangler\'s Gloves'),
('60136','15336','0','1','1','1','0','Wrangler\'s Leggings'),
('60136','15337','0','1','1','1','0','Wrangler\'s Wraps'),
('60136','15338','0','1','1','1','0','Wrangler\'s Mantle'),
('60136','15340','0','1','1','1','0','Pathfinder Cloak'),
('60136','15347','0','1','1','1','0','Pathfinder Belt'),
('60136','15348','0','1','1','1','0','Pathfinder Bracers'),
('60136','15513','0','1','1','1','0','Grunt\'s Pauldrons'),
('60136','15514','0','1','1','1','0','Grunt\'s Chestpiece'),
('60136','15515','0','1','1','1','0','Spiked Chain Belt'),
('60136','15516','0','1','1','1','0','Spiked Chain Slippers'),
('60136','15517','0','1','1','1','0','Spiked Chain Wristbands'),
('60136','15520','0','1','1','1','0','Spiked Chain Gauntlets'),
('60136','15521','0','1','1','1','0','Spiked Chain Leggings'),
('60136','15522','0','1','1','1','0','Spiked Chain Shield'),
('60136','15523','0','1','1','1','0','Spiked Chain Shoulder Pads'),
('60136','15525','0','1','1','1','0','Sentry\'s Slippers'),
('60136','15527','0','1','1','1','0','Sentry\'s Gloves'),
('60136','15528','0','1','1','1','0','Sentry\'s Sash'),
('60136','15529','0','1','1','1','0','Sentry\'s Leggings'),
('60136','15532','0','1','1','1','0','Sentry\'s Armsplints'),
('60136','15535','0','1','1','1','0','Wicked Chain Bracers'),
('60136','15537','0','1','1','1','0','Wicked Chain Cloak'),
('60136','15547','0','1','1','1','0','Thick Scale Cloak'),
('60136','15891','0','1','1','1','0','Hulking Shield'),
('60136','15894','0','1','1','1','0','Bristlebark Buckler'),
('60136','15927','0','1','1','1','0','Bright Sphere'),
('60136','15947','0','1','1','1','0','Sanguine Star'),
('60136','15974','0','1','1','1','0','Pagan Rod'),
-- 30004
('30004','9485','0','1','1','1','0','Vibroblade'),
('30004','9486','0','1','1','1','0','Supercharger Battle Axe'),
('30004','9487','0','1','1','1','0','Hi-tech Supergun'),
('30004','9488','0','1','1','1','0','Oscillating Power Hammer'),
('30004','9489','0','1','1','1','0','Gyromatic Icemaker'),
('30004','9490','0','1','1','1','0','Gizmotron Megachopper'),
('30004','9491','0','1','1','1','0','Hotshot Pilot\'s Gloves'),
('30004','9508','0','1','1','1','0','Mechbuilder\'s Overalls'),
('30004','9509','0','1','1','1','0','Petrolspill Leggings'),
('30004','9510','0','1','1','1','0','Caverndeep Trudgers'),
-- 60212
('60212','720','0','1','1','1','0','Brawler Gloves'),
('60212','890','0','1','1','1','0','Twisted Chanter\'s Staff'),
('60212','1121','0','1','1','1','0','Feet of the Lynx'),
('60212','2011','0','1','1','1','0','Twisted Sabre'),
('60212','2059','0','1','1','1','0','Sentry Cloak'),
('60212','2098','0','1','1','1','0','Double-barreled Shotgun'),
('60212','2194','0','1','1','1','0','Diamond Hammer'),
('60212','2236','0','1','1','1','0','Blackfang'),
('60212','2256','0','1','1','1','0','Skeletal Club'),
('60212','2800','0','1','1','1','0','Black Velvet Robes'),
('60212','3021','0','1','1','1','0','Ranger Bow'),
('60212','3203','0','1','1','1','0','Dense Triangle Mace'),
('60212','12997','0','1','1','1','0','Redbeard Crest'),
('60212','12998','0','1','1','1','0','Magician\'s Mantle'),
('60212','12999','0','1','1','1','0','Drakewing Bands'),
('60212','13005','0','1','1','1','0','Amy\'s Blanket'),
('60212','13010','0','1','1','1','0','Dreamsinger Legguards'),
('60212','13011','0','1','1','1','0','Silver-lined Belt'),
('60212','13012','0','1','1','1','0','Yorgen Bracers'),
('60212','13016','0','1','1','1','0','Killmaim'),
('60212','13031','0','1','1','1','0','Orb of Mistmantle'),
('60212','13032','0','1','1','1','0','Sword of Corruption'),
('60212','13041','0','1','1','1','0','Guardian Blade'),
('60212','13057','0','1','1','1','0','Bloodpike'),
('60212','13062','0','1','1','1','0','Thunderwood');
