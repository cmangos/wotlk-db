-- DB loot errors fixed
-- WoTLK ONLY DATA
-- Based on TDB fixes

--  Table 'prospecting_loot_template' entry 23425 group 1 has total chance > 100% (139.000000)
UPDATE creature_loot_template SET groupid = 0 WHERE entry = 23425;
--  Table 'prospecting_loot_template' entry 23424 group 1 has total chance > 100% (112.199997)
UPDATE creature_loot_template SET groupid = 0 WHERE entry = 23424;
-- Table 'skinning_loot_template' entry 80300 group 1 has total chance > 100% (130.000000)
UPDATE skinning_loot_template SET groupid = 0 WHERE entry = 80300;
-- Table 'item_loot_template' entry 33857 group 1 has total chance > 100% (120.000000)
UPDATE item_loot_template SET groupid = 0 WHERE entry = 33857 AND item = 10004;
-- Table 'item_loot_template' entry 34548 group 1 has total chance > 100% (300.000000)
UPDATE item_loot_template SET groupid = 0 WHERE entry = 34548;
-- Table 'item_loot_template' entry 33844 group 1 has total chance > 100% (120.000000)
UPDATE item_loot_template SET groupid = 0 WHERE entry = 33844 AND item = 10003;
-- Table 'item_loot_template' entry 29569 group 1 has total chance > 100% (175.000000)
UPDATE item_loot_template SET groupid = 0 WHERE entry = 29569 AND item = 48999;
-- Table 'item_loot_template' entry 21156 group 1 has total chance > 100% (420.000000)
UPDATE item_loot_template SET groupid = 0 WHERE entry = 21156;
-- Table 'gameobject_loot_template' entry 16591 item 18416: equal-chanced grouped entry, but group not defined - skipped
UPDATE gameobject_loot_template SET groupid = 0 WHERE entry = 16591 AND item IN (12006,18240);
UPDATE gameobject_loot_template SET groupid = 1 WHERE entry = 16591 AND item IN (18414,18415,18416,18417,18418,18514,18515,18516,18517,18518,18519);
-- Table 'gameobject_loot_template' entry 16577 group 1 has items with chance=0% but group total chance >= 100% (100.000000)
-- need to be reconstructed
-- TDB data taken
DELETE FROM gameobject_loot_template WHERE entry = 16577; -- old system data
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id,comments) VALUES
(16577,8766	,100,0,15,20,0,'Morning Glory Dew'),
(16577,8952	,100,0,15,20,0,'Roasted Quail'),
(16577,35033,100,0,-35033,2,3155,'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Major Healing / Mana Potion'),
(16577,35034,100,0,-35034,1,3154,'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Green Items (Group 1)'),
(16577,35035,100,0,-35035,1,3153,'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Green Items (Group 2)'),
(16577,35036,100,0,-35036,1,3152,'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Blue Items (Group 1)'),
(16577,35037,100,0,-35037,1,3151,'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Blue Items & Schematic: Major Recombobulator (Group 2)'),
(16577,35038,100,0,-35038,1,3148,'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Blue Items & Treant\'s Bane (Group 3)');
DELETE FROM reference_loot_template WHERE entry = 12007; -- old system
DELETE FROM reference_loot_template WHERE entry BETWEEN 35033 AND 35038;
INSERT INTO reference_loot_template (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id,comments) VALUES
(35033,13444,0,1,2,3,0,'Major Mana Potion'),
(35033,13446,0,1,2,3,0,'Major Healing Potion'),
(35034,18475,0,1,1,1,0,'Oddly Magical Belt'),
(35034,18477,0,1,1,1,0,'Shaggy Leggings'),
(35034,18480,0,1,1,1,0,'Scarab Plate Helm'),
(35034,18482,0,1,1,1,0,'Ogre Toothpick Shooter'),
(35035,18476,0,1,1,1,0,'Mud Stained Boots'),
(35035,18478,0,1,1,1,0,'Hyena Hide Jerkin'),
(35035,18479,0,1,1,1,0,'Carrion Scorpid Helm'),
(35035,18481,0,1,1,1,0,'Skullcracking Mace'),
(35036,18500,0,1,1,1,0,'Tarnished Elven Ring'),
(35036,18528,0,1,1,1,0,'Cyclone Spaulders'),
(35036,18529,0,1,1,1,0,'Elemental Plate Girdle'),
(35037,18499,0,1,1,1,0,'Barrier Shield'),
(35037,18530,0,1,1,1,0,'Ogre Forged Hauberk'),
(35037,18531,0,1,1,1,0,'Unyielding Maul'),
(35037,18532,0,1,1,1,0,'Mindsurge Robe'),
(35037,18655,0,1,1,1,0,'Schematic: Major Recombobulator'),
(35038,18495,0,1,1,1,0,'Redoubt Cloak'),
(35038,18533,0,1,1,1,0,'Gordok Bracers of Power '),
(35038,18534,0,1,1,1,0,'Rod of the Ogre Magi'),
(35038,18537,0,1,1,1,0,'Counterattack Lodestone'),
(35038,18538,1,1,1,1,0,'Treant\'s Bane');
DELETE FROM reference_loot_template_names WHERE entry = 12007; -- old system
DELETE FROM reference_loot_template_names WHERE entry BETWEEN 35033 AND 35038;
INSERT INTO reference_loot_template_names (entry,name) VALUES
(35033,'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Major Healing / Mana Potion'),
(35034,'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Green Items (Group 1)'),
(35035,'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Green Items (Group 2)'),
(35036,'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Blue Items (Group 1)'),
(35037,'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Blue Items & Schematic: Major Recombobulator (Group 2)'),
(35038,'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Blue Items & Treant\'s Bane (Group 3)');
DELETE FROM reference_loot_template WHERE entry IN (12991,12992);
DELETE FROM reference_loot_template_names WHERE entry IN (12991,12992);
-- Table 'reference_loot_template' entry 34000 isn't reference id and not referenced from loot, and then useless.
DELETE FROM reference_loot_template WHERE entry IN (34000); -- pre 3.2.2 loot
DELETE FROM reference_loot_template_names WHERE entry IN (34000); -- pre 3.2.2 loot
-- REQ conditions
DELETE FROM conditions WHERE condition_entry IN (3147,3148,3151,3152,3153,3154,3155);
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(3147,18,5,0,0,0,0,'ScriptDev: InstanceConditionID Value: 5'), -- 3147 - allready exist
(3148,18,6,0,0,0,0,'ScriptDev: InstanceConditionID Value: 6'), -- 3148 - allready exist
(3151,-2,3147,3148,0,0,0,'(ScriptDev: InstanceConditionID Value: 5 OR ScriptDev: InstanceConditionID Value: 6)'),
(3152,-2,737,3151,0,0,0,'(ScriptDev: InstanceConditionID Value: 4 OR (ScriptDev: InstanceConditionID Value: 5 OR ScriptDev: InstanceConditionID Value: 6))'),
(3153,-2,736,3152,0,0,0,'(ScriptDev: InstanceConditionID Value: 3 OR (ScriptDev: InstanceConditionID Value: 4 OR (ScriptDev: InstanceConditionID Value: 5 OR ScriptDev: InstanceConditionID Value: 6)))'),
(3154,-2,735,3153,0,0,0,'(ScriptDev: InstanceConditionID Value: 2 OR (ScriptDev: InstanceConditionID Value: 3 OR (ScriptDev: InstanceConditionID Value: 4 OR (ScriptDev: InstanceConditionID Value: 5 OR ScriptDev: InstanceConditionID Value: 6))))'),
(3155,-2,734,3154,0,0,0,NULL);
-- ONyXIA - wotlk Redone
DELETE FROM creature_loot_template WHERE entry = 10184;
INSERT INTO creature_loot_template (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id,comments) VALUES
(10184,49636,2,0,1,1,0,'Reins of the Onyxian Drake'),
(10184,18705,100,0,1,1,0,'Mature Black Dragon Sinew'),
(10184,21108,100,0,1,1,65,'Draconic for Dummies'),
(10184,47241,100,0,1,1,0,'Emblem of Triumph'),
(10184,49294,100,0,1,1,0,'Ashen Sack of Gems'),
(10184,49295,100,0,1,1,0,'Enlarged Onyxia Hide Backpack'),
(10184,49643,100,0,1,1,21,'Head of Onyxia'),
(10184,49644,100,0,1,1,22,'Head of Onyxia'),
(10184,34000,100,0,-34000,2,0,'Onyxia\'s Lair (Boss Loot) - Onyxia - Epic Items(T2 Head)(Wotlk ONLY)'),
(10184,34001,100,0,-34001,1,0,'Onyxia\'s Lair (Boss Loot) - Onyxia - Epic Items(Wotlk ONLY)');
DELETE FROM reference_loot_template WHERE entry IN (45011,45012); -- old system
DELETE FROM reference_loot_template WHERE entry IN (34000,34001); -- new system (id - synced with TDB)
INSERT INTO reference_loot_template (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id,comments) VALUES
(34000,49315,0,2,1,1,0,'Nemesis Skullcover'),
(34000,49316,0,2,1,1,0,'Circlet of Transcendence'),
(34000,49317,0,2,1,1,0,'Coronet of Transcendence'),
(34000,49318,0,2,1,1,0,'Netherwind Hood'),
(34000,49319,0,2,1,1,0,'Dragonstalker\'s Helmet'),
(34000,49320,0,2,1,1,0,'Faceguard of Wrath'),
(34000,49321,0,2,1,1,0,'Greathelm of Wrath'),
(34000,49322,0,2,1,1,0,'Bloodfang Mask'),
(34000,49323,0,2,1,1,0,'Judgement Cover'),
(34000,49324,0,2,1,1,0,'Judgement Helmet'),
(34000,49325,0,2,1,1,0,'Judgement Helm'),
(34000,49326,0,2,1,1,0,'Stormrage Hood'),
(34000,49327,0,2,1,1,0,'Stormrage Antlers'),
(34000,49328,0,2,1,1,0,'Stormrage Helm'),
(34000,49329,0,2,1,1,0,'Gaze of Ten Storms'),
(34000,49330,0,2,1,1,0,'Cowl of Ten Storms'),
(34000,49331,0,2,1,1,0,'Coif of Ten Storms'),
(34000,49332,0,2,1,1,0,'Frostforged Ringhelm'),
(34000,49333,0,2,1,1,0,'Frostforged Helmet'),
(34001,49296,0,1,1,1,0,'Singed Vis\'kag the Bloodletter'),
(34001,49297,0,1,1,1,0,'Empowered Deathbringer'),
(34001,49298,0,1,1,1,0,'Glinting Azuresong Mageblade'),
(34001,49299,0,1,1,1,0,'Keen Obsidian Edged Blade'),
(34001,49302,0,1,1,1,0,'Reclaimed Shadowstrike'),
(34001,49303,0,1,1,1,0,'Gleaming Quel\'Serrar'),
(34001,49304,0,1,1,1,0,'Sharpened Fang of the Mystics'),
(34001,49305,0,1,1,1,0,'Snub-Nose Blastershot Launcher'),
(34001,49306,0,1,1,1,0,'Eskhandar\'s Choker'),
(34001,49307,0,1,1,1,0,'Fluttering Sapphiron Drape'),
(34001,49308,0,1,1,1,0,'Antique Cornerstone Grimoire'),
(34001,49309,0,1,1,1,0,'Runed Ring of Binding'),
(34001,49310,0,1,1,1,0,'Purified Shard of the Scale'),
(34001,49437,0,1,1,1,0,'Rusted Gutgore Ripper'),
(34001,49463,0,1,1,1,0,'Purified Shard of the Flame');
DELETE FROM reference_loot_template_names WHERE entry IN (45011,45012); -- old system
DELETE FROM reference_loot_template_names WHERE entry IN (34000,34001); -- new system (id - synced with TDB)
INSERT INTO reference_loot_template_names (entry,name) VALUES
(34000,'Onyxia\'s Lair (Boss Loot) - Onyxia - Epic Items (T2 Head)(Wotlk ONLY)'),
(34001,'Onyxia\'s Lair (Boss Loot) - Onyxia - Epic Items (Wotlk ONLY)');
-- 'gameobject_loot_template' entry 17532 group 1 has total chance > 100% (225.000000)
UPDATE gameobject_loot_template SET groupid = 0 WHERE entry = 17532;
-- 'gameobject_loot_template' entry 17533 group 1 has total chance > 100% (325.000000)
UPDATE gameobject_loot_template SET groupid = 0 WHERE entry = 17533;
-- 'prospecting_loot_template' entry 23425 group 1 has total chance > 100% (139.000000)
UPDATE prospecting_loot_template SET groupid = 0 WHERE entry = 23425;
-- 'prospecting_loot_template' entry 23424 group 1 has total chance > 100% (112.199997)
UPDATE prospecting_loot_template SET groupid = 0 WHERE entry = 23424;
-- wrong drop
DELETE FROM creature_loot_template WHERE entry = 11583 AND item = 34000; -- does not belong to this one
-- 'creature_loot_template' entry 639 group 1 has total chance > 100% (104.599998)
UPDATE gameobject_loot_template SET groupid = 0 WHERE entry = 639 AND item IN (50600,50610,60124,60443);
-- 'creature_loot_template' entry 643 group 1 has total chance > 100% (101.599998)
UPDATE gameobject_loot_template SET groupid = 0 WHERE entry = 643 AND item IN (50600,50610);
-- 'creature_loot_template' entry 644 group 1 has total chance > 100% (112.500000)
UPDATE gameobject_loot_template SET groupid = 0 WHERE entry = 644 AND item IN (50600,50610,50122);
-- 'creature_loot_template' entry 645 group 1 has total chance > 100% (102.000000)
UPDATE gameobject_loot_template SET groupid = 0 WHERE entry = 645 AND item IN (50600,50610);
-- 'creature_loot_template' entry 646 group 1 has total chance > 100% (101.799995)
UPDATE gameobject_loot_template SET groupid = 0 WHERE entry = 646 AND item IN (50600,50610);
-- 'creature_loot_template' entry 647 group 1 has total chance > 100% (101.900002)
UPDATE gameobject_loot_template SET groupid = 0 WHERE entry = 647 AND item IN (50600,50610);
