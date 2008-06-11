-- forum
-- roman npc
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 1371;
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 79816;
-- justin npc
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 1368;
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 79815;
-- Brandon npc
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 1370;
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 79817;
-- duplicate spawns of Taskmaster Whipfang
DELETE FROM `creature` WHERE `guid` IN ('86330', '86331', '86332', '86333', '86334', '86335') AND `id` = '5932';
-- Bale
INSERT IGNORE INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES
(2806, 4607, 0, 0), -- Delicious Cave Mold
(2806, 8948, 0, 0), -- Dried King Bolete
(2806, 4604, 0, 0), -- Forest Mushroom Cap
(2806, 8766, 0, 0), -- Morning Glory Dew
(2806, 4608, 0, 0), -- Raw Black Truffle
(2806, 4605, 0, 0), -- Red-speckled Mushroom
(2806, 4606, 0, 0); -- Spongy Morel
-- Malygen
INSERT IGNORE INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES
(2803, 4607, 0, 0),
(2803, 8948, 0, 0),
(2803, 4604, 0, 0),
(2803, 8766, 0, 0),
(2803, 4608, 0, 0),
(2803, 4605, 0, 0),
(2803, 4606, 0, 0);
-- double spawns of Murderous Blisterpaw
DELETE FROM `creature` WHERE `guid` IN ('44251', '44252', '44253', '44254', '44255', '44256', '44257') AND `id` = '8208';
-- UPDATE `quest_template` SET `ReqSourceId1` = 15447, `ReqSourceCount1` = 7, `ReqSourceRef1` = 2 WHERE `entry` = 6022;
UPDATE creature_template SET civilian=1 WHERE entry IN(18162, 24991);
delete from creature where id=1;
-- forum ends
-- nf
UPDATE `quest_template` SET `PrevQuestId`=1825, `NextQuestId`=0, `ExclusiveGroup`=0 WHERE `entry`=1838;
UPDATE `quest_template` SET `PrevQuestId`=1838, `NextQuestId`=0, `ExclusiveGroup`=0 WHERE `entry`=1848;
UPDATE `quest_template` SET `PrevQuestId`=1838, `NextQuestId`=0, `ExclusiveGroup`=0 WHERE `entry`=1839;
UPDATE `quest_template` SET `PrevQuestId`=1839, `NextQuestId`=0, `ExclusiveGroup`=0 WHERE `entry`=1842;
UPDATE `quest_template` SET `PrevQuestId`=1842, `NextQuestId`=0, `ExclusiveGroup`=0 WHERE `entry`=1843;
UPDATE `quest_template` SET `PrevQuestId`=1838, `NextQuestId`=0, `ExclusiveGroup`=0 WHERE `entry`=1840;
UPDATE `quest_template` SET `PrevQuestId`=1840, `NextQuestId`=0, `ExclusiveGroup`=0 WHERE `entry`=1844;
UPDATE `quest_template` SET `PrevQuestId`=1844, `NextQuestId`=0, `ExclusiveGroup`=0 WHERE `entry`=1845;
UPDATE `quest_template` SET `PrevQuestId`=1838, `NextQuestId`=0, `ExclusiveGroup`=0 WHERE `entry`=1841;
UPDATE `quest_template` SET `PrevQuestId`=1841, `NextQuestId`=0, `ExclusiveGroup`=0 WHERE `entry`=1846;
UPDATE `quest_template` SET `PrevQuestId`=1846, `NextQuestId`=0, `ExclusiveGroup`=0 WHERE `entry`=1847;
UPDATE `quest_template` SET `ReqCreatureOrGOCount2`=4 WHERE `entry`=532;
UPDATE `quest_template` SET `RewRepFaction1`=934, `RewRepValue1`=10 WHERE `entry`=11039;
UPDATE `quest_template` SET `RewRepFaction2`=932, `RewRepValue2`=-10 WHERE `entry`=11039;

UPDATE `gameobject_template` SET `data1`=0 WHERE `entry`=180516;

DELETE FROM `game_graveyard_zone` WHERE `id`=911 AND `ghost_zone` IN (12,40,1519);
DELETE FROM `game_graveyard_zone` WHERE `id`=104 AND `ghost_zone`=12;
UPDATE `game_graveyard_zone` SET `faction`=0 WHERE `id`=854 AND `ghost_zone`=12;
UPDATE `game_graveyard_zone` SET `faction`=0 WHERE `id`=4 AND `ghost_zone`=40;
INSERT IGNORE INTO `game_graveyard_zone` VALUES (854,1519,67);

UPDATE `quest_template` SET `RequestItemsText`='My scouts tell me that there hasn\'t yet been enough disruption of the naga today.' WHERE `entry`=11541;
UPDATE `quest_template` SET `OfferRewardText`='That\'s enough for today. Slow and steady is the key here. Too much disruption and they\'d turn their attention directly upon us; something that we don\'t want.$b$bCome back again tomorrow and we\'ll work on it some more.' WHERE `entry`=11541;
UPDATE `quest_template` SET `RequestItemsText`='Have you slain the Dawnblade scum, $n?' WHERE `entry`=11540;
UPDATE `quest_template` SET `OfferRewardText`='What thoughts go through Prince Kael\'thas Sunstrider\'s head when he hears of his armies\' defeats?$b$bDoes he feel despair? Helplessness? Fear?$b$bI sure hope so.' WHERE `entry`=11540;
UPDATE `quest_template` SET `RequestItemsText`='Have you accomplished your task, $n?' WHERE `entry`=11543;
UPDATE `quest_template` SET `OfferRewardText`='Well done, $n.  It should be a long time before the harbor receives any reinforcements.' WHERE `entry`=11543;
UPDATE `quest_template` SET `RequestItemsText`='Do you wish to make a donation?' WHERE `entry`=11545;
UPDATE `quest_template` SET `OfferRewardText`='You are a virtuous soul, $n.  It is easy to forget the fallen amidst the turmoil of war and the euphoria of victory.  The friends and families of the dead thank you.' WHERE `entry`=11545;
UPDATE `quest_template` SET `RequestItemsText`='Do you wish to make a donation?' WHERE `entry`=11548;
UPDATE `quest_template` SET `OfferRewardText`='You are a virtuous soul, $n.  It is easy to forget the fallen amidst the turmoil of war and the euphoria of victory.  The friends and families of the dead thank you.' WHERE `entry`=11548;
UPDATE `quest_template` SET `OfferRewardText`='<A\'dal appears to be extremely pleased with you.  With your help Tempest Keep will one day reclaimed from the clutches of evil.>' WHERE `entry`=10560;
UPDATE `quest_template` SET `RequestItemsText`='<A\'dal greets you.>' WHERE `entry`=10886;
UPDATE `quest_template` SET `RequestItemsText`='Have you completed your task, $n?' WHERE `entry`=11096;

UPDATE `creature_template` SET `skinloot`=80005 WHERE `entry`=17378;
DELETE FROM `skinning_loot_template` WHERE `entry`=80005;
INSERT IGNORE INTO `skinning_loot_template` VALUES (80005,22578,100,0,3,5,0,0,0); -- mote of water
UPDATE `creature_template` SET `skinloot`=80006 WHERE `entry`=17407;
DELETE FROM `skinning_loot_template` WHERE `entry`=80006;
INSERT IGNORE INTO `skinning_loot_template` VALUES (80006,22577,100,0,3,5,0,0,0); -- mote of shadow
UPDATE `creature_template` SET `skinloot`=80007 WHERE `entry`=17408;
DELETE FROM `skinning_loot_template` WHERE `entry`=80007;
INSERT IGNORE INTO `skinning_loot_template` VALUES (80007,22576,100,0,3,5,0,0,0); -- mote of mana
UPDATE `creature_template` SET `skinloot`=80008 WHERE `entry`=24222;
DELETE FROM `skinning_loot_template` WHERE `entry`=80008;
INSERT IGNORE INTO `skinning_loot_template` VALUES (80008,22572,100,0,3,5,0,0,0); -- mote of air
-- nf end

-- wdb
UPDATE `gameobject_template` SET `data0`=17607 WHERE `entry`=183322;
UPDATE `npc_text` SET `text2_0`='Lookin\' to take a gryphon ride, eh? Dungar keeps his birds up on the rampart in the Trade District. Just remember to hold on tight! ',`text2_1`='Lookin\' to take a gryphon ride, eh? Dungar keeps his birds up on the rampart in the Trade District. Just remember to hold on tight! ',`text3_0`='Gryphons, eh? Never really cared for the beasts but to each their own.$B$BYou can find Dungar Longdrink on the rampart in the Trade District.',`text3_1`='Gryphons, eh? Never really cared for the beasts but to each their own.$B$BYou can find Dungar Longdrink on the rampart in the Trade District.' WHERE `ID`=879;
UPDATE `npc_text` SET `text1_0`='A Hunter is it?  Well, then you will want to speak with Thorfin Stoneshield over in the Dwarven District.  $B$BOh, and you be sure to tell him that if I step in his pet\'s business one more time, he\'s going to be training other hunters from behind bars in the Stockade!',`text1_1`='A Hunter is it?  Well, then you will want to speak with Thorfin Stoneshield over in the Dwarven District.  $B$BOh, and you be sure to tell him that if I step in his pet\'s business one more time, he\'s going to be training other hunters from behind bars in the Stockade!' WHERE `ID`=905;
UPDATE `npc_text` SET `text0_0`='What? I don\'t know of any warlock trainers in Stormwind. $B$BAlthough... There have been some sightings of demonic activity over by The Slaughtered Lamb in the Mage Quarter. I suppose you could check there.',`text0_1`='What? I don\'t know of any warlock trainers in Stormwind. $B$BAlthough... There have been some sightings of demonic activity over by The Slaughtered Lamb in the Mage Quarter. I suppose you could check there.',`text1_0`='Warlocks, eh.  Well, you didn\'t hear it from me, but I\'ve heard rumors that those types gather at a bar called the Slaughtered Lamb in the Mage Quarter.  ',`text1_1`='Warlocks, eh.  Well, you didn\'t hear it from me, but I\'ve heard rumors that those types gather at a bar called the Slaughtered Lamb in the Mage Quarter.  ' WHERE `ID`=906;
UPDATE `npc_text` SET `text0_0`='If you are looking to become a great cook, venture over to the Pig and Whistle Tavern in Old Town and talk to Stephen Ryback. That man knows how to cook up a rack of ribs like no other.$B$BMan... now you got me hungry for some of his famous ribs. Don\'t count on him teaching you that recipe though!',`text0_1`='If you are looking to become a great cook, venture over to the Pig and Whistle Tavern in Old Town and talk to Stephen Ryback. That man knows how to cook up a rack of ribs like no other.$B$BMan... now you got me hungry for some of his famous ribs. Don\'t count on him teaching you that recipe though!' WHERE `ID`=921;
UPDATE `npc_text` SET `text1_0`='Hey, that reminds me, I need to have my rocket boots repaired.  Word to the wise my friend, rocket boots and gryphons don\'t mix.  $B$BOh, but you need directions...  just head on over to the Dwarven District, you\'ll find Lilliam Sparkspindle towards the back.',`text1_1`='Hey, that reminds me, I need to have my rocket boots repaired.  Word to the wise my friend, rocket boots and gryphons don\'t mix.  $B$BOh, but you need directions...  just head on over to the Dwarven District, you\'ll find Lilliam Sparkspindle towards the back.' WHERE `ID`=922;
UPDATE `npc_text` SET `text1_0`='No better place to learn First Aid than under the watchful eye of Shaina Fuller at the Cathedral of Light.  $B$BTo get there, just look for the yellow rooftops, or the towering spire of the Cathedral itself which you can see from almost anywhere in the city.',`text1_1`='No better place to learn First Aid than under the watchful eye of Shaina Fuller at the Cathedral of Light.  $B$BTo get there, just look for the yellow rooftops, or the towering spire of the Cathedral itself which you can see from almost anywhere in the city.' WHERE `ID`=923;
UPDATE `npc_text` SET `text0_0`='Nothing like spending a day down at Crystal Lake fishing. Arnold Leland is the man that taught me. You can usually find him out on the dock in the Canal District just fishing the day away. $B$BOh, and don\'t believe any of the stories he tells you about monsters in the canals either.',`text0_1`='Nothing like spending a day down at Crystal Lake fishing. Arnold Leland is the man that taught me. You can usually find him out on the dock in the Canal District just fishing the day away. $B$BOh, and don\'t believe any of the stories he tells you about monsters in the canals either.',`text1_0`='That bum Leland? all he does is sit out on the dock outside the Trade District and fish all day.  I sure hope he\'s good at it for all the time he spends fishing.  If you want to learn, why don\'t you go talk to him?',`text1_1`='That bum Leland? all he does is sit out on the dock outside the Trade District and fish all day.  I sure hope he\'s good at it for all the time he spends fishing.  If you want to learn, why don\'t you go talk to him?' WHERE `ID`=940;
UPDATE `npc_text` SET `text1_0`='Ah, you\'re looking for Lucan Cordell.  He runs a shop on the outside of the Magic Quarter on your way to the Stockade.  ',`text1_1`='Ah, you\'re looking for Lucan Cordell.  He runs a shop on the outside of the Magic Quarter on your way to the Stockade.  ' WHERE `ID`=941;
UPDATE `npc_text` SET `text0_0`='The Order of the Shattered Hand existed before Thrall and shall exist after Thrall. ' WHERE `ID`=1038;
UPDATE `npc_text` SET `text0_0`='Zando\'zan of the Shattered Hand. How can Zando\'zan help you? He can\'t! He won\'t!$B' WHERE `ID`=1039;
UPDATE `npc_text` SET `text0_0`='You don\'t have the stomach for the gryphon ride, huh.  Well lucky for you, we have an alternative where you can keep your feet on the ground? more or less.  It\'s the gnomish mover of people, the Deeprun Tram.  Conveniently located in the back of the Dwarven District.',`text0_1`='You don\'t have the stomach for the gryphon ride, huh.  Well lucky for you, we have an alternative where you can keep your feet on the ground? more or less.  It\'s the gnomish mover of people, the Deeprun Tram.  Conveniently located in the back of the Dwarven District.' WHERE `ID`=3813;
UPDATE `npc_text` SET `text1_0`='Another entrepreneur, eh? Well, the Auction House can be found in the Trade District.  Not far from the bank.$B' WHERE `ID`=3834;
UPDATE `npc_text` SET `text0_0`='There are many establishments where you can get a drink in Stormwind, but only one will let you spend the night. Head over to the Gilded Rose in the Trade District. I\'ve heard the cost of a room is reasonable and the sheets are clean. ',`text0_1`='There are many establishments where you can get a drink in Stormwind, but only one will let you spend the night. Head over to the Gilded Rose in the Trade District. I\'ve heard the cost of a room is reasonable and the sheets are clean. ' WHERE `ID`=3860;
UPDATE `npc_text` SET `text1_0`='Master Woo Ping has mastered nearly every weapon known to man.  He is especially deadly with his sword techniques.  He spends a good deal of time over in the Weller\'s Arsenal waiting on new shipments of weapons to arrive if you need some training.',`text1_1`='Master Woo Ping has mastered nearly every weapon known to man.  He is especially deadly with his sword techniques.  He spends a good deal of time over in the Weller\'s Arsenal waiting on new shipments of weapons to arrive if you need some training.' WHERE `ID`=4516;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=1 WHERE `ID`=4875;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=1,`em0_3`=2 WHERE `ID`=5813;
UPDATE `npc_text` SET `text0_0`='I have just completed a new dimensional imploder that will make me rich beyond my wildest goblin dreams!   All I need to do is get a skilled Goblin Engineer to build a dimensional ripper that connects to it and try it! $B' WHERE `ID`=7249;
UPDATE `npc_text` SET `em0_0`=1,`em0_1`=274 WHERE `ID`=7616;
UPDATE `npc_text` SET `text0_0`='Greetings, $c - I\'m a Commendation Officer acting on behalf of Stormwind.  It is my duty to assist adventurers who have received Alliance Commendation Signets.$B$BI accept signets in different quantities, but the most beneficial exchange for you is to hand in a set of ten at once.  I will enter your deeds into our records when you hand in your signets.  As a result, you will earn recognition from Stormwind for your duty and service.$B',`text0_1`='Greetings, $c - I\'m a Commendation Officer acting on behalf of Stormwind.  It is my duty to assist adventurers who have received Alliance Commendation Signets.$B$BI accept signets in different quantities, but the most beneficial exchange for you is to hand in a set of ten at once.  I will enter your deeds into our records when you hand in your signets.  As a result, you will earn recognition from Stormwind for your duty and service.$B$B' WHERE `ID`=8130;
UPDATE `npc_text` SET `em1_0`=0,`em1_1`=6,`em2_0`=0,`em2_1`=1,`em3_0`=0,`em3_1`=1 WHERE `ID`=8143;
UPDATE `npc_text` SET `em0_0`=0,`em0_2`=0,`em0_3`=1,`em0_5`=6 WHERE `ID`=9283;
UPDATE `npc_text` SET `text0_0`='I think I\'ll make my own money on the side while the others try to decide whether it\'s okay to go into Oshu\'gun.$B$BTime is profit!' WHERE `ID`=9429;
UPDATE `npc_text` SET `text0_0`='I don\'t know what\'s possessed you to look for a shaman... but I have seen someone who matches the profile. There\'s a woman who calls herself a Farseer on the shore in the Valley of Heroes.',`lang0`=7,`prob0`='1.0',`text1_0`='',`text2_0`='',`text3_0`='',`text4_0`='',`text5_0`='',`text6_0`='',`text7_0`='' WHERE `ID`=10106;
UPDATE `npc_text` SET `text0_0`='We have gained control of the armory, but our work on the island is not yet finished.' WHERE `ID`=12256;
UPDATE `page_text` SET `text`='As Nahni glided up, the grizzled warrior gave her a hard stare.  \"I suppose you\'re here to collect the reward for killing those murlocs?\"

Her eyes wandered down to the glowing broadsword at his side.  \"That depends on what the reward is, Marcus.\"  She twirled her hair playfully, pretending not to notice how he shifted uncomfortably in her presence.  \"I may not want it.\"' WHERE `entry`=2986;
UPDATE `page_text` SET `text`='Marcus stepped toward her, bristling with a mixture of fear and anger. \"The reward is not negotiable!\"  He paused for a moment while gathering his nerve, and pressed himself against her diminutive form.  Their lips met hotly, melting her frost armor spell in a torrent of sweltering vapor.

\"So, is there another step to this quest?\" she teased, her eyes glittering with excitement.

<This goes on for several hundred more pages, without advancing the plot.>' WHERE `entry`=2987;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=4765;
UPDATE `item_template` SET `displayid`=5154,`InventoryType`=13 WHERE `entry`=4766;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=4948;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=11120;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=13024;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=17710;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=17780;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=17943;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=25519;
UPDATE `item_template` SET `bonding`=0,`Material`=4 WHERE `entry`=34831;
INSERT IGNORE INTO `item_template` SET `entry`=35219,`name`='Pattern: Sun-Drenched Scale Chestguard',`description`='Teaches you how to craft Sun-Drenched Scale Chestguard.',`class`=9,`subclass`=1,`unk0`=-1,`displayid`=7085,`Quality`=4,`Flags`=64,`SellPrice`=20000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=75,`RequiredLevel`=0,`RequiredSkill`=165,`RequiredSkillRank`=365,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=46139,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=0,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=8,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=80000;
INSERT IGNORE INTO `item_template` SET `entry`=35245,`name`='Design: Bright Crimson Spinel',`description`='Teaches you how to cut a Bright Crimson Spinel.',`class`=9,`subclass`=10,`unk0`=-1, `RequiredReputationRank`=4, `displayid`=1096,`Quality`=1,`Flags`=64,`SellPrice`=125000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=75,`RequiredLevel`=0,`RequiredSkill`=755,`RequiredSkillRank`=375,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=1077,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=39712,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=500000;

--
update `gameobject_template` set `flags`=`flags`&~4 where `type`=10;
update `gameobject_template` set `flags`=`flags`|4 where `type`=10 and `data1`<>0;


-- acid 12
UPDATE `creature_template` SET `ScriptName` = 'mob_eventai' WHERE `entry` in (22960,22963,23030,23172,23196,23222,23223,23239,23330,12429,12423,12427,12428,12430,3380,4665,4663,3379,12320,4666,4705,4664,13019,4667,4668,18134,18135,15246,15240,15230,15312,15537,15236,15262,15229,15233,15277,15249,15252,15311,15630,15247,15250,15538);

-- cleanup
UPDATE `creature_template` SET `flags`=`flags`&~2056 WHERE `flags`&2048=2048 OR `flags`&8=8;
UPDATE `creature`, `creature_template` SET `creature`.`curhealth`=`creature_template`.`minhealth`,`creature`.`curmana`=`creature_template`.`minmana` WHERE `creature`.`id`=`creature_template`.`entry` and `creature_template`.`RegenHealth` = '1';
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|1 WHERE `QuestFlags`=`QuestFlags`|4096;
DELETE FROM `gameobject` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `gameobject_involvedrelation` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `gameobject_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `gameobject_template`);
DELETE FROM `game_event_gameobject` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_movement` WHERE `id` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_involvedrelation`);
DELETE FROM `db_version`;
INSERT IGNORE INTO `db_version` VALUES ('UDB 0.10.2 (353) for MaNGOS rev. 6085 with SD2 SQL for rev. 428');
-- END
