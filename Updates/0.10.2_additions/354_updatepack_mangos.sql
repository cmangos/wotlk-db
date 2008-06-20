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
REPLACE INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES
(2806, 4607, 0, 0), -- Delicious Cave Mold
(2806, 8948, 0, 0), -- Dried King Bolete
(2806, 4604, 0, 0), -- Forest Mushroom Cap
(2806, 8766, 0, 0), -- Morning Glory Dew
(2806, 4608, 0, 0), -- Raw Black Truffle
(2806, 4605, 0, 0), -- Red-speckled Mushroom
(2806, 4606, 0, 0); -- Spongy Morel
-- Malygen
REPLACE INTO `npc_vendor` (entry, item, maxcount, incrtime) VALUES
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
REPLACE INTO `game_graveyard_zone` VALUES (854,1519,67);

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
REPLACE INTO `skinning_loot_template` VALUES (80005,22578,100,0,3,5,0,0,0); -- mote of water
UPDATE `creature_template` SET `skinloot`=80006 WHERE `entry`=17407;
DELETE FROM `skinning_loot_template` WHERE `entry`=80006;
REPLACE INTO `skinning_loot_template` VALUES (80006,22577,100,0,3,5,0,0,0); -- mote of shadow
UPDATE `creature_template` SET `skinloot`=80007 WHERE `entry`=17408;
DELETE FROM `skinning_loot_template` WHERE `entry`=80007;
REPLACE INTO `skinning_loot_template` VALUES (80007,22576,100,0,3,5,0,0,0); -- mote of mana
UPDATE `creature_template` SET `skinloot`=80008 WHERE `entry`=24222;
DELETE FROM `skinning_loot_template` WHERE `entry`=80008;
REPLACE INTO `skinning_loot_template` VALUES (80008,22572,100,0,3,5,0,0,0); -- mote of air
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
REPLACE INTO `item_template` SET `entry`=35219,`name`='Pattern: Sun-Drenched Scale Chestguard',`description`='Teaches you how to craft Sun-Drenched Scale Chestguard.',`class`=9,`subclass`=1,`unk0`=-1,`displayid`=7085,`Quality`=4,`Flags`=64,`SellPrice`=20000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=75,`RequiredLevel`=0,`RequiredSkill`=165,`RequiredSkillRank`=365,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=46139,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=0,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=8,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=80000;
REPLACE INTO `item_template` SET `entry`=35245,`name`='Design: Bright Crimson Spinel',`description`='Teaches you how to cut a Bright Crimson Spinel.',`class`=9,`subclass`=10,`unk0`=-1, `RequiredReputationRank`=4, `displayid`=1096,`Quality`=1,`Flags`=64,`SellPrice`=125000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=75,`RequiredLevel`=0,`RequiredSkill`=755,`RequiredSkillRank`=375,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=1077,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=39712,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=500000;

--
update `gameobject_template` set `flags`=`flags`&~4 where `type`=10;
update `gameobject_template` set `flags`=`flags`|4 where `type`=10 and `data1`<>0;


-- acid 12
UPDATE `creature_template` SET `ScriptName` = 'mob_eventai' WHERE `entry` in (22960,22963,23030,23172,23196,23222,23223,23239,23330,12429,12423,12427,12428,12430,3380,4665,4663,3379,12320,4666,4705,4664,13019,4667,4668,18134,18135,15246,15240,15230,15312,15537,15236,15262,15229,15233,15277,15249,15252,15311,15630,15247,15250,15538);

-- Start update pack 352 -- 2008-05-25

-- isle
-- delete old
delete from creature where map=530 and position_y>'-7933' and position_y<'-5767' and position_x>11200 and position_x<13570;
delete from gameobject where map=530 and position_y>'-7933' and position_y<'-5767' and position_x>11200 and position_x<13570;
delete from creature_addon where guid not in (select guid from creature);
delete from creature_movement where id not in (select guid from creature);
delete from npc_gossip where npc_guid not in (select guid from creature);

-- new
REPLACE INTO `creature` VALUES (12719,24994,530,1,0,0,12848.6,-7040.74,18.6604,2.20449,300,0.0,0,8490,0,0,2);
REPLACE INTO `creature` VALUES (51857,26560,530,1,0,0,13012.7,-6910.98,9.58312,2.48128,600,0.0,0,15000,0,0,0);
REPLACE INTO `creature` VALUES (53930,25175,530,1,0,0,13011.3,-6918.07,9.58312,2.52998,600,0.0,0,8036,0,0,0);
REPLACE INTO `creature` VALUES (53964,25175,530,1,0,0,13015.0,-6911.84,9.58312,2.58495,600,0.0,0,8036,0,0,0);
REPLACE INTO `creature` VALUES (53965,24967,530,1,0,0,12890.7,-6881.36,10.5983,0.626942,600,0.0,0,16510,0,0,0);
REPLACE INTO `creature` VALUES (53966,24813,530,1,0,0,12886.9,-6879.34,10.6031,0.600454,600,0.0,0,15000,0,0,0);
REPLACE INTO `creature` VALUES (53967,25032,530,1,0,0,12885.6,-6874.22,10.6047,0.125286,600,0.0,0,15000,0,0,0);
REPLACE INTO `creature` VALUES (53979,24965,530,1,0,0,12886.5,-6869.97,10.5939,0.18419,600,0.0,0,16510,0,0,0);
REPLACE INTO `creature` VALUES (53980,25059,530,1,0,0,13009.1,-6916.25,9.58312,2.11293,600,0.0,0,10227,0,0,0);
REPLACE INTO `creature` VALUES (53981,24938,530,1,0,0,12956.7,-6905.94,5.8758,5.3481,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (53982,24938,530,1,0,0,12984.4,-6927.63,10.2318,5.55622,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54004,24938,530,1,0,0,13004.7,-6915.27,9.58418,4.11268,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54023,24938,530,1,0,0,12946.1,-6983.61,19.0217,5.09283,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54028,24938,530,1,0,0,12959.6,-6962.5,14.7312,6.06673,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54029,24938,530,1,0,0,12966.7,-6952.63,8.84554,5.7133,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54030,24938,530,1,22757,0,12928.2,-6929.16,3.88093,3.88804,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54031,24938,530,1,22757,0,12926.1,-6926.92,3.88093,3.99643,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54032,24938,530,1,22757,0,12900.8,-6857.34,7.84174,2.54665,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54034,24938,530,1,22757,0,12917.6,-6878.1,7.76374,0.431172,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54038,24938,530,1,0,0,12921.0,-6879.1,7.53825,0.600033,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54049,24938,530,1,0,0,12923.2,-6877.61,7.60696,0.600033,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54092,24938,530,1,22757,0,12920.2,-6883.16,7.18029,0.501858,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54113,24938,530,1,0,0,12765.3,-6885.82,40.2951,3.06779,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54114,24938,530,1,22757,0,12766.3,-6878.14,40.2951,2.71043,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54143,24938,530,1,22757,0,12770.8,-6870.07,40.2951,2.41591,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54165,24938,530,1,22757,0,12794.4,-6864.34,40.2951,1.6148,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54176,24938,530,1,0,0,12786.5,-6863.01,40.2951,2.09075,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54177,24938,530,1,0,0,12802.0,-6868.65,40.2951,0.883018,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54178,24938,530,1,22757,0,12807.4,-6875.51,40.2951,0.498174,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54181,24938,530,1,22757,0,12810.2,-6884.42,40.2951,0.0858385,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54182,24938,530,1,22757,0,12808.7,-6892.19,40.2949,5.98967,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54183,24938,530,1,22757,0,12808.2,-6914.55,41.1163,5.24354,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54184,24938,530,1,22757,0,12808.3,-6906.81,41.1163,0.959192,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (54185,24938,530,1,0,0,12801.5,-6912.46,41.1143,3.85653,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (56315,24938,530,1,0,0,12789.0,-6907.87,40.2951,4.57595,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65680,24938,530,1,0,0,12779.4,-6906.03,40.2951,4.18718,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65681,24938,530,1,22757,0,12777.6,-6864.85,40.2953,2.11765,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65682,24938,530,1,22757,0,12670.0,-6940.37,23.4912,2.31322,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65683,24938,530,1,22757,0,12653.2,-6982.73,36.2363,4.41101,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65684,24938,530,1,0,0,12650.6,-6975.45,36.2363,3.11118,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65685,24938,530,1,22757,0,12656.6,-6958.53,36.2309,3.17794,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65686,24938,530,1,22757,0,12658.7,-6947.37,36.2338,2.73419,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65687,24938,530,1,0,0,12684.5,-6984.73,36.2314,4.85869,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65688,24938,530,1,0,0,12693.9,-6982.56,36.2314,5.35349,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65689,24938,530,1,0,0,12701.9,-6976.18,36.232,5.57733,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65690,24938,530,1,0,0,12707.5,-6947.1,36.2325,0.487951,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65691,24938,530,1,22757,0,12701.9,-6938.17,36.2298,0.684298,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65692,24938,530,1,22757,0,12692.3,-6932.35,36.2315,1.19481,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65693,24938,530,1,22757,0,12682.1,-6930.29,36.2296,1.59536,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65694,24938,530,1,22757,0,12680.7,-6845.13,12.5501,0.707069,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65695,24938,530,1,0,0,12688.8,-6853.61,12.5505,0.734558,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65696,24938,530,1,22757,0,12678.7,-6862.69,12.4261,3.89579,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65697,24938,530,1,0,0,12670.4,-6854.46,12.422,3.89579,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65698,24938,530,1,0,0,12667.8,-6831.93,12.5473,0.809175,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65699,24938,530,1,0,0,12658.0,-6841.25,12.4231,3.90757,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65700,24938,530,1,22757,0,12690.9,-6874.34,12.4344,3.88401,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65701,24938,530,1,0,0,12905.1,-6891.62,7.30957,3.6661,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65702,24938,530,1,22757,0,12700.2,-6865.85,12.5483,0.742416,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (65703,25115,530,1,0,0,12902.3,-6856.36,8.08843,1.40415,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (65704,25115,530,1,0,0,12918.9,-6880.55,7.68833,0.600033,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (65705,25115,530,1,0,0,12920.1,-6877.09,7.73399,0.511508,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (65706,25115,530,1,0,0,12922.5,-6875.68,7.72595,0.493161,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (65707,25115,530,1,0,0,12922.6,-6881.68,7.15929,0.579554,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (65708,25115,530,1,0,0,12925.0,-6880.22,7.16147,0.536357,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (65709,25115,530,1,0,0,12971.3,-6899.97,6.44309,1.66305,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (65802,25115,530,1,0,0,12939.3,-6935.45,3.97957,2.35379,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (65803,25115,530,1,0,0,12942.4,-6930.77,4.21306,2.43792,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (65804,25115,530,1,0,0,12964.9,-6943.02,8.64083,4.19179,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (68746,25115,530,1,0,0,12950.7,-6958.5,14.6474,0.714041,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (69909,25115,530,1,0,0,12936.6,-6962.85,19.0193,2.34899,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (70088,25115,530,1,0,0,12950.3,-6974.24,19.0951,5.65552,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (71916,25115,530,1,0,0,12927.3,-6932.03,3.88082,3.79883,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (71917,25115,530,1,0,0,12925.4,-6930.31,3.88082,3.95591,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (71919,25115,530,1,0,0,12922.9,-6927.93,3.88082,3.94413,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (71920,25115,530,1,0,0,12905.2,-6889.54,7.51444,3.84674,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (71925,25115,530,1,0,0,12769.9,-6902.31,13.3916,3.82632,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (71926,25115,530,1,0,0,12766.2,-6897.72,13.3786,3.82632,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (71927,25115,530,1,0,0,12696.0,-6944.83,15.559,0.719284,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (71928,25115,530,1,0,0,12699.6,-6949.89,15.5593,0.616394,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (72677,25115,530,1,0,0,12664.2,-6967.43,14.5645,3.68966,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (72989,25115,530,1,0,0,12668.2,-6972.63,14.57,3.86166,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (76574,24994,530,1,0,0,12907.6,-6888.87,7.47258,3.9724,600,0.0,0,8490,0,0,0);
REPLACE INTO `creature` VALUES (76575,24994,530,1,0,0,12903.0,-6859.41,7.7871,2.01675,600,0.0,0,8490,0,0,0);
REPLACE INTO `creature` VALUES (76576,24994,530,1,0,0,12756.9,-6890.52,12.293,4.74759,600,0.0,0,8490,0,0,0);
REPLACE INTO `creature` VALUES (76577,24994,530,1,0,0,12807.5,-6870.31,12.3562,0.764831,600,0.0,0,8490,0,0,0);
REPLACE INTO `creature` VALUES (76578,24994,530,1,0,0,12781.4,-6876.23,13.3886,5.2738,600,0.0,0,8490,0,0,0);
REPLACE INTO `creature` VALUES (76579,24994,530,1,0,0,12703.9,-6952.95,15.5653,1.31618,600,0.0,0,8490,0,0,0);
REPLACE INTO `creature` VALUES (76580,24994,530,1,0,0,12726.7,-6907.8,12.2365,2.34204,600,0.0,0,8490,0,0,2);
REPLACE INTO `creature` VALUES (76581,24994,530,1,0,0,12767.8,-6840.21,14.2391,0.345556,600,0.0,0,8490,0,0,2);
REPLACE INTO `creature` VALUES (76582,24994,530,1,0,0,12871.0,-6897.76,8.89026,3.29787,600,0.0,0,8490,0,0,2);
REPLACE INTO `creature` VALUES (77479,24994,530,1,0,0,12645.2,-6984.1,14.5803,0.746108,600,0.0,0,8490,0,0,0);
REPLACE INTO `creature` VALUES (78385,24994,530,1,0,0,12627.6,-6983.43,17.3992,4.55922,600,0.0,0,8490,0,0,2);
REPLACE INTO `creature` VALUES (78386,24994,530,1,0,0,12716.5,-6971.41,17.6263,4.45397,600,0.0,0,8490,0,0,2);
REPLACE INTO `creature` VALUES (78387,24994,530,1,0,0,12773.5,-6914.23,12.2413,3.15649,600,0.0,0,8490,0,0,0);
REPLACE INTO `creature` VALUES (78388,24994,530,1,0,0,12673.7,-6956.33,15.5553,0.039927,600,0.0,0,8490,0,0,0);
REPLACE INTO `creature` VALUES (78389,24994,530,1,0,0,12694.8,-6965.15,36.2517,2.70604,600,0.0,0,8490,0,0,0);
REPLACE INTO `creature` VALUES (78390,25236,530,1,0,0,13182.1,-7046.39,7.09177,6.17751,600,0.0,0,6200,0,0,0);
REPLACE INTO `creature` VALUES (78391,25087,530,1,0,0,13245.2,-7054.56,5.18296,3.06812,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78392,25087,530,1,0,0,13233.1,-7044.16,2.80542,1.50361,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78393,25087,530,1,0,0,13231.0,-7061.18,2.80893,4.58629,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78394,25087,530,1,22782,0,13217.5,-7042.69,3.00477,1.46433,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78395,25087,530,1,0,0,13215.6,-7058.45,3.00346,4.54183,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78396,25087,530,1,0,0,13197.4,-7054.25,3.9766,4.43187,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78397,25087,530,1,0,0,13198.6,-7042.44,4.00408,1.46699,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78398,25087,530,1,0,0,13209.6,-7049.95,3.20542,2.92783,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78399,25087,530,1,22782,0,13304.0,-6991.09,5.15827,4.25122,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78400,25087,530,1,22782,0,13304.4,-6984.17,5.16431,2.27391,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78401,25087,530,1,22782,0,13326.4,-6988.84,3.55386,3.07894,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78402,25087,530,1,0,0,13318.4,-6995.21,4.07232,4.59476,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78403,25087,530,1,0,0,13319.2,-6982.03,4.06546,1.54741,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78508,25087,530,1,0,0,13342.8,-6981.01,3.21321,1.49636,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78510,25087,530,1,0,0,13341.6,-6998.81,3.21236,4.66152,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78511,25087,530,1,0,0,13362.6,-6991.31,5.60708,3.09936,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78512,25087,530,1,22782,0,13365.1,-6999.54,3.75512,4.91363,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78513,25087,530,1,22782,0,13366.2,-6983.5,3.75932,1.93697,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78514,25087,530,1,22782,0,13317.7,-7148.96,6.38785,3.09149,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78515,25087,530,1,22782,0,13320.0,-7157.21,4.53115,4.69764,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78519,25087,530,1,0,0,13321.4,-7141.24,4.53553,1.48536,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78520,25087,530,1,22782,0,13297.8,-7138.37,3.98102,1.49321,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78521,25087,530,1,0,0,13296.3,-7156.24,3.98197,4.65051,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78522,25087,530,1,0,0,13281.3,-7146.08,4.32403,3.07186,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78523,25087,530,1,0,0,13273.2,-7152.25,4.8516,4.68978,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78524,25087,530,1,0,0,13274.4,-7138.96,4.83264,1.4775,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78525,25087,530,1,0,0,13257.7,-7140.75,6.17595,2.16865,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78526,25087,530,1,0,0,13257.0,-7147.58,6.18486,4.00255,600,0.0,0,5800,3155,0,0);
REPLACE INTO `creature` VALUES (78527,25073,530,1,0,0,12629.7,-7307.74,2.11799,3.84077,600,4.0,0,4847,7196,0,1);
REPLACE INTO `creature` VALUES (78528,25073,530,1,0,0,12660.0,-7340.04,4.35034,4.72041,600,4.0,0,5169,7332,0,1);
REPLACE INTO `creature` VALUES (78529,25073,530,1,0,0,12654.8,-7426.56,1.72821,5.42334,600,4.0,0,4847,7196,0,1);
REPLACE INTO `creature` VALUES (78530,25073,530,1,0,0,12579.2,-7425.33,0.298493,4.1451,600,4.0,0,4847,7196,0,1);
REPLACE INTO `creature` VALUES (78531,25073,530,1,0,0,12569.3,-7315.6,0.00291209,5.60122,600,4.0,0,5169,7332,0,1);
REPLACE INTO `creature` VALUES (78532,25073,530,1,0,0,12505.3,-7301.55,0.0337529,3.49714,600,4.0,0,4847,7196,0,1);
REPLACE INTO `creature` VALUES (78533,25073,530,1,0,0,12499.1,-7380.97,0.620093,4.2095,600,4.0,0,5169,7332,0,1);
REPLACE INTO `creature` VALUES (78534,25073,530,1,0,0,12458.3,-7264.55,5.04765,2.14783,600,4.0,0,5169,7332,0,1);
REPLACE INTO `creature` VALUES (78535,25073,530,1,0,0,12426.3,-7306.36,0.599607,1.16215,600,4.0,0,5169,7332,0,1);
REPLACE INTO `creature` VALUES (78536,25073,530,1,0,0,12459.1,-7431.94,0.504508,4.67288,600,4.0,0,4847,7196,0,1);
REPLACE INTO `creature` VALUES (78537,25073,530,1,0,0,12514.7,-7451.32,0.740595,5.20381,600,4.0,0,4847,7196,0,1);
REPLACE INTO `creature` VALUES (78538,25073,530,1,0,0,12343.3,-7318.42,6.13054,3.88984,600,4.0,0,5169,7332,0,1);
REPLACE INTO `creature` VALUES (78539,25073,530,1,0,0,12315.8,-7368.8,0.503497,3.88748,600,4.0,0,4847,7196,0,1);
REPLACE INTO `creature` VALUES (78540,25073,530,1,0,0,12370.7,-7376.96,1.13245,2.09141,600,4.0,0,4847,7196,0,1);
REPLACE INTO `creature` VALUES (78541,25073,530,1,0,0,12225.4,-7349.74,-1.87945,3.03153,600,4.0,0,5169,7332,0,1);
REPLACE INTO `creature` VALUES (78542,25073,530,1,0,0,12116.3,-7315.88,4.99978,3.77373,600,4.0,0,5169,7332,0,1);
REPLACE INTO `creature` VALUES (78543,25073,530,1,0,0,12109.3,-7365.18,0.748135,4.35571,600,4.0,0,5169,7332,0,1);
REPLACE INTO `creature` VALUES (78544,25073,530,1,0,0,11937.9,-7319.12,1.64456,2.84932,600,4.0,0,5169,7332,0,1);
REPLACE INTO `creature` VALUES (78545,25073,530,1,0,0,11849.5,-7274.5,3.73191,2.59956,600,4.0,0,4847,7196,0,1);
REPLACE INTO `creature` VALUES (78546,25073,530,1,0,0,11832.2,-7204.84,8.33156,1.94768,600,4.0,0,4847,7196,0,1);
REPLACE INTO `creature` VALUES (78547,25073,530,1,0,0,11747.9,-7225.19,8.76475,1.85814,600,4.0,0,5169,7332,0,1);
REPLACE INTO `creature` VALUES (78548,25060,530,1,0,0,12641.5,-7319.7,0.75396,5.4215,600,5.0,0,7154,0,0,1);
REPLACE INTO `creature` VALUES (78549,25060,530,1,0,0,11752.5,-7266.27,2.0155,5.15053,600,5.0,0,7154,0,0,1);
REPLACE INTO `creature` VALUES (78550,25060,530,1,0,0,11787.5,-7259.81,1.60674,0.193884,600,5.0,0,7154,0,0,1);
REPLACE INTO `creature` VALUES (78551,25060,530,1,0,0,11808.2,-7197.47,8.39841,0.0234525,600,5.0,0,7154,0,0,1);
REPLACE INTO `creature` VALUES (78949,25060,530,1,0,0,11815.6,-7318.41,-1.91814,4.87015,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (81436,25060,530,1,0,0,11856.0,-7316.9,0.563613,0.809642,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (81437,25060,530,1,0,0,11905.7,-7271.3,-1.07254,0.749167,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (81438,25060,530,1,0,0,11905.8,-7320.94,0.630542,4.72485,600,5.0,0,7154,0,0,1);
REPLACE INTO `creature` VALUES (81439,25060,530,1,0,0,11955.9,-7346.94,-0.772672,6.22417,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (83271,25060,530,1,0,0,12025.2,-7337.2,-0.235646,5.58015,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (83272,25060,530,1,0,0,12064.5,-7316.13,8.08898,2.0647,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (83273,25060,530,1,0,0,12071.3,-7383.54,0.17178,5.95007,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (83274,25060,530,1,0,0,12132.2,-7393.33,0.34414,6.02547,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (83275,25060,530,1,0,0,12144.3,-7357.03,0.243587,2.1079,600,5.0,0,7154,0,0,1);
REPLACE INTO `creature` VALUES (83276,25060,530,1,0,0,12182.6,-7312.6,-0.500418,4.26146,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (83277,25060,530,1,0,0,12295.6,-7328.9,4.87015,0.464848,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (83288,25060,530,1,0,0,12272.3,-7382.83,-1.70579,4.15858,600,5.0,0,7154,0,0,1);
REPLACE INTO `creature` VALUES (84485,25060,530,1,0,0,12335.9,-7401.03,0.427933,5.943,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (84631,25060,530,1,0,0,12380.2,-7398.01,-0.0926816,3.57895,600,5.0,0,7154,0,0,1);
REPLACE INTO `creature` VALUES (84643,25060,530,1,0,0,12405.4,-7344.3,-4.74973,0.417721,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (84644,25060,530,1,0,0,12389.8,-7288.75,3.73313,2.94435,600,5.0,0,7154,0,0,1);
REPLACE INTO `creature` VALUES (84745,25060,530,1,0,0,12383.7,-7323.44,-0.846219,4.27717,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (84746,25060,530,1,0,0,12422.1,-7273.6,0.800745,4.30387,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (84747,25060,530,1,0,0,12490.8,-7337.95,1.84042,5.26048,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (84748,25060,530,1,0,0,12530.3,-7382.32,1.8523,5.45605,600,5.0,0,7154,0,0,1);
REPLACE INTO `creature` VALUES (84749,25060,530,1,0,0,12536.8,-7328.87,-0.99031,1.0963,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (84764,25060,530,1,0,0,12597.7,-7331.4,0.175781,4.27795,600,5.0,0,7154,0,0,1);
REPLACE INTO `creature` VALUES (84765,25060,530,1,0,0,12615.6,-7407.13,3.83442,5.35395,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (84947,25060,530,1,0,0,12620.4,-7469.6,0.796419,4.60939,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (85137,25060,530,1,0,0,12701.3,-7451.38,-0.682114,6.00426,600,5.0,0,6919,0,0,1);
REPLACE INTO `creature` VALUES (85138,25084,530,1,0,0,12542.1,-7405.38,0.262524,3.33469,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85407,25084,530,1,0,0,12530.7,-7411.58,1.11035,2.63019,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85408,25084,530,1,0,0,12530.3,-7403.9,1.23995,0.685544,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85409,25084,530,1,0,0,12539.0,-7414.1,0.388992,4.77197,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85410,25084,530,1,0,0,12540.8,-7410.36,0.284434,2.35766,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85411,25084,530,1,0,0,12546.7,-7351.55,-0.274908,2.00423,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85412,25084,530,1,0,0,12538.5,-7351.79,0.0828348,2.10555,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85413,25084,530,1,0,0,12542.1,-7349.66,-0.0434351,0.53789,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85414,25084,530,1,0,0,12536.9,-7345.86,-0.274418,0.672978,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85415,25084,530,1,0,0,12523.9,-7447.32,0.371532,4.62196,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85416,25084,530,1,0,0,12518.6,-7458.92,-0.267732,0.739738,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85417,25084,530,1,0,0,12520.1,-7452.16,0.298182,1.12694,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85418,25084,530,1,0,0,12526.9,-7450.79,-0.73286,6.06081,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85419,25084,530,1,0,0,12527.2,-7456.04,-1.72351,5.38301,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85420,25084,530,1,0,0,12531.5,-7447.76,-1.24001,1.83223,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85421,25084,530,1,0,0,12485.7,-7460.12,0.549933,4.18606,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85422,25084,530,1,0,0,12492.0,-7463.06,0.483126,5.49375,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85423,25084,530,1,0,0,12484.1,-7469.51,-0.442996,3.95987,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85424,25084,530,1,0,0,12476.1,-7469.18,-0.309632,2.93414,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85425,25084,530,1,0,0,12474.9,-7463.04,0.491216,0.883462,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85426,25084,530,1,0,0,12445.1,-7460.34,0.459271,3.73996,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85427,25084,530,1,0,0,12440.6,-7456.91,0.396649,2.79748,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85428,25084,530,1,0,0,12435.8,-7459.84,-0.172999,5.07592,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85429,25084,530,1,0,0,12439.7,-7465.92,-0.440938,0.113773,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85430,25084,530,1,0,0,12446.2,-7468.53,-0.403588,1.16385,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85431,25084,530,1,0,0,12419.7,-7398.38,1.12209,1.75997,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85432,25084,530,1,0,0,12423.4,-7391.62,1.01851,1.57697,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85433,25084,530,1,0,0,12425.1,-7384.57,0.735295,2.95456,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85434,25084,530,1,0,0,12419.5,-7387.46,-0.0335927,4.2646,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85435,25084,530,1,0,0,12414.8,-7395.22,0.0938978,4.68008,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85436,25084,530,1,0,0,12435.0,-7340.52,-0.349992,1.89663,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85437,25084,530,1,0,0,12428.6,-7331.88,-0.470127,1.89506,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85438,25084,530,1,0,0,12423.1,-7319.25,0.201678,3.01975,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85439,25084,530,1,0,0,12416.3,-7323.73,-0.511799,3.98422,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85440,25084,530,1,0,0,12421.2,-7328.68,-0.90498,5.77571,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85441,25084,530,1,0,0,12435.7,-7333.37,0.182378,4.90706,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85442,25084,530,1,0,0,12375.9,-7333.76,-0.656714,4.91099,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85443,25084,530,1,0,0,12372.0,-7339.99,-0.034546,4.14915,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85444,25084,530,1,0,0,12373.9,-7346.88,-0.020678,5.39165,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85445,25084,530,1,0,0,12377.8,-7352.9,-0.104543,0.837127,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85446,25084,530,1,0,0,12379.4,-7346.07,-0.975087,1.35942,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85447,25084,530,1,0,0,12366.7,-7401.93,0.244847,4.46096,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85448,25084,530,1,0,0,12363.1,-7405.26,0.0703276,4.12088,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85449,25084,530,1,0,0,12358.1,-7409.08,-0.154494,3.74389,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85450,25084,530,1,0,0,12363.9,-7413.96,-0.420385,0.450713,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85579,25084,530,1,0,0,12368.8,-7411.31,-0.408994,1.10731,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85980,25084,530,1,0,0,12308.5,-7380.9,0.545283,2.49118,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85981,25084,530,1,0,0,12304.5,-7378.14,0.549608,2.98991,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85982,25084,530,1,0,0,12297.9,-7375.74,0.333433,2.88466,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85983,25084,530,1,0,0,12294.4,-7380.38,-0.254241,5.39401,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85984,25084,530,1,0,0,12298.3,-7384.85,-0.205152,6.00741,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (85985,25084,530,1,0,0,12306.3,-7388.78,0.24541,1.07511,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86009,25084,530,1,0,0,12275.2,-7355.83,-0.223647,2.16917,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86014,25084,530,1,0,0,12271.5,-7348.73,0.0025348,0.191534,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86015,25084,530,1,0,0,12274.1,-7344.4,0.325529,2.89252,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86016,25084,530,1,0,0,12270.4,-7343.48,0.0729893,3.39125,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86040,25084,530,1,0,0,12275.5,-7350.02,0.124617,5.17253,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86041,25084,530,1,0,0,12151.3,-7379.42,0.0633689,5.13955,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86043,25084,530,1,0,0,12151.0,-7388.22,-0.0240877,0.621937,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86100,25084,530,1,0,0,12107.0,-7392.28,0.331598,3.19098,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86114,25084,530,1,0,0,12097.5,-7392.56,0.338231,2.9907,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86121,25084,530,1,0,0,12094.4,-7389.71,0.465381,2.18095,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86122,25084,530,1,0,0,12095.0,-7397.96,-0.612862,0.969086,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86123,25084,530,1,0,0,12104.8,-7396.86,-0.349692,6.17942,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86124,25084,530,1,0,0,12057.3,-7367.21,0.201145,2.76372,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86125,25084,530,1,0,0,12050.0,-7359.85,0.215348,2.78807,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86126,25084,530,1,0,0,12043.6,-7354.77,0.0125002,2.06786,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86127,25084,530,1,0,0,12041.9,-7361.78,-0.624412,5.72939,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86128,25084,530,1,0,0,12050.3,-7370.96,-0.554271,5.3359,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86129,25084,530,1,0,0,11986.2,-7309.14,-0.757014,2.67497,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86130,25084,530,1,0,0,11981.9,-7304.01,0.774388,2.18803,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86161,25084,530,1,0,0,11979.8,-7306.15,0.309107,3.54519,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86326,25084,530,1,0,0,11920.2,-7345.41,0.438685,3.83029,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86397,25084,530,1,0,0,11912.4,-7348.02,0.00341299,3.27894,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86481,25084,530,1,0,0,11904.8,-7347.33,-0.58174,1.49688,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86482,25084,530,1,0,0,11902.7,-7339.66,-0.40795,0.535548,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86627,25084,530,1,0,0,11908.3,-7336.85,0.438099,6.11894,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86871,25084,530,1,0,0,11913.3,-7340.69,0.567312,5.62336,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86934,25084,530,1,0,0,11876.1,-7310.65,-0.298671,2.48962,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86935,25084,530,1,0,0,11868.4,-7308.5,0.808729,1.32252,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86936,25084,530,1,0,0,11872.5,-7304.24,0.825783,0.0925814,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86937,25084,530,1,0,0,11846.7,-7320.58,0.418539,3.86249,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (86938,25084,530,1,0,0,11838.6,-7320.03,0.33236,3.45801,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (87078,25084,530,1,0,0,11843.0,-7323.55,0.157183,4.86309,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (87079,25084,530,1,0,0,11839.1,-7327.15,-0.372534,3.23967,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (87080,25084,530,1,0,0,11835.7,-7323.36,0.000864357,2.16682,600,2.0,0,1200,0,0,1);
REPLACE INTO `creature` VALUES (87081,24972,530,1,0,0,12809.9,-6820.77,11.3109,3.75724,450,8.0,0,4879,0,0,1);
REPLACE INTO `creature` VALUES (87544,24972,530,1,0,0,12925.5,-6766.89,9.92207,0.205662,450,8.0,0,4879,0,0,1);
REPLACE INTO `creature` VALUES (87545,24972,530,1,0,0,13022.0,-6724.36,0.82918,0.768008,450,8.0,0,4879,0,0,1);
REPLACE INTO `creature` VALUES (87546,24972,530,1,0,0,13091.2,-6843.87,0.474743,3.16739,450,8.0,0,4879,0,0,1);
REPLACE INTO `creature` VALUES (87547,24972,530,1,0,0,12922.7,-6639.28,12.2029,2.2469,450,8.0,0,4879,0,0,1);
REPLACE INTO `creature` VALUES (87548,24972,530,1,0,0,12837.1,-6559.89,9.24182,2.31445,450,8.0,0,4879,0,0,1);
REPLACE INTO `creature` VALUES (87549,24972,530,1,0,0,12569.9,-6423.84,9.29875,1.11043,450,8.0,0,4879,0,0,1);
REPLACE INTO `creature` VALUES (87550,24972,530,1,0,0,12576.3,-6485.92,5.81085,5.0492,450,8.0,0,4879,0,0,1);
REPLACE INTO `creature` VALUES (87551,24972,530,1,0,0,12478.0,-6508.93,8.04349,3.71245,450,8.0,0,4879,0,0,1);
REPLACE INTO `creature` VALUES (87552,24972,530,1,0,0,12535.3,-6586.92,14.6124,5.95712,450,8.0,0,4879,0,0,1);
REPLACE INTO `creature` VALUES (87553,24972,530,1,0,0,12632.6,-6396.63,4.80103,0.975339,450,8.0,0,4879,0,0,1);
REPLACE INTO `creature` VALUES (87554,24972,530,1,0,0,12692.8,-6372.53,3.34742,6.01995,450,8.0,0,4879,0,0,1);
REPLACE INTO `creature` VALUES (87555,24972,530,1,0,0,12727.8,-6514.55,4.15694,4.04074,450,8.0,0,4879,0,0,1);
REPLACE INTO `creature` VALUES (87556,24972,530,1,0,0,12806.2,-6645.1,0.287019,3.84126,450,8.0,0,4879,0,0,1);
REPLACE INTO `creature` VALUES (87557,24972,530,1,0,0,12869.7,-6460.56,0.792148,5.46232,450,8.0,0,4879,0,0,1);
REPLACE INTO `creature` VALUES (87558,24972,530,1,0,0,12729.5,-6591.48,10.0598,1.82494,450,7.0,0,4879,0,0,1);
REPLACE INTO `creature` VALUES (88065,24972,530,1,0,0,12678.6,-6553.68,7.88563,5.92856,450,7.0,0,4879,0,0,1);
REPLACE INTO `creature` VALUES (88066,24972,530,1,0,0,13023.5,-6617.85,0.860966,4.35354,450,8.0,0,4879,0,0,1);
REPLACE INTO `creature` VALUES (88067,24966,530,1,0,0,13058.9,-6828.91,2.27351,5.96832,700,0.0,0,5355,0,0,0);
REPLACE INTO `creature` VALUES (90444,24966,530,1,0,0,12671.8,-6565.27,8.66896,0.0459249,700,3.0,0,5355,0,0,1);
REPLACE INTO `creature` VALUES (90928,24966,530,1,0,0,12694.0,-6548.08,7.6178,2.84194,700,3.0,0,5355,0,0,1);
REPLACE INTO `creature` VALUES (90929,24966,530,1,0,0,12673.8,-6519.28,6.07817,2.76576,700,3.0,0,5355,0,0,1);
REPLACE INTO `creature` VALUES (90930,24966,530,1,0,0,12715.8,-6572.5,9.03772,6.00945,700,3.0,0,5355,0,0,1);
REPLACE INTO `creature` VALUES (90931,24966,530,1,0,0,13020.2,-6861.82,2.28979,3.16053,700,3.0,0,5355,0,0,1);
REPLACE INTO `creature` VALUES (90932,24966,530,1,0,0,12980.4,-6829.91,8.30555,1.984,600,0.0,0,5355,0,0,0);
REPLACE INTO `creature` VALUES (90933,24966,530,1,0,0,12934.3,-6845.1,8.84219,3.6836,600,3.0,0,5355,0,0,1);
REPLACE INTO `creature` VALUES (90934,24966,530,1,0,0,12909.3,-6810.11,8.50484,0.854595,600,0.0,0,5355,0,0,0);
REPLACE INTO `creature` VALUES (90935,24966,530,1,0,0,12825.5,-6797.61,10.7407,3.12125,600,3.0,0,5355,0,0,1);
REPLACE INTO `creature` VALUES (90936,24966,530,1,0,0,12883.3,-6735.15,12.2649,1.27007,600,0.0,0,5355,0,0,0);
REPLACE INTO `creature` VALUES (90937,24966,530,1,0,0,12881.2,-6730.15,12.2649,5.79789,600,0.0,0,5355,0,0,0);
REPLACE INTO `creature` VALUES (90938,24966,530,1,0,0,12884.1,-6749.97,11.8963,0.590692,600,0.0,0,5355,0,0,0);
REPLACE INTO `creature` VALUES (90939,24966,530,1,0,0,12935.2,-6732.26,12.546,2.55026,600,0.0,0,5355,0,0,0);
REPLACE INTO `creature` VALUES (90940,24966,530,1,0,0,12961.3,-6786.39,7.76078,1.78003,600,0.0,0,5355,0,0,0);
REPLACE INTO `creature` VALUES (90941,24966,530,1,0,0,13053.1,-6683.54,0.270741,0.089762,600,3.0,0,5355,0,0,1);
REPLACE INTO `creature` VALUES (90942,24966,530,1,0,0,13100.0,-6810.88,0.437475,0.605614,600,0.0,0,5355,0,0,0);
REPLACE INTO `creature` VALUES (90943,24966,530,1,0,0,13038.4,-6762.34,0.380007,0.841233,600,0.0,0,5355,0,0,0);
REPLACE INTO `creature` VALUES (90944,24966,530,1,0,0,12956.6,-6599.57,9.0259,1.95571,600,3.0,0,5355,0,0,1);
REPLACE INTO `creature` VALUES (90945,24966,530,1,0,0,12912.5,-6586.79,11.684,5.34392,600,0.0,0,5355,0,0,0);
REPLACE INTO `creature` VALUES (90946,24966,530,1,0,0,12841.5,-6646.38,7.42791,2.43166,600,0.0,0,5355,0,0,0);
REPLACE INTO `creature` VALUES (90947,24966,530,1,0,0,12771.8,-6585.68,11.4256,2.60523,600,3.0,0,5355,0,0,1);
REPLACE INTO `creature` VALUES (90948,24966,530,1,0,0,12543.8,-6496.3,4.66083,4.69832,600,3.0,0,5355,0,0,1);
REPLACE INTO `creature` VALUES (93910,24966,530,1,0,0,12527.9,-6505.3,5.24037,6.00758,600,3.0,0,5355,0,0,1);
REPLACE INTO `creature` VALUES (93911,24966,530,1,0,0,12565.6,-6574.99,14.4147,4.60328,600,3.0,0,5355,0,0,1);
REPLACE INTO `creature` VALUES (93912,24966,530,1,0,0,12592.2,-6611.09,12.0839,5.5489,600,0.0,0,5355,0,0,0);
REPLACE INTO `creature` VALUES (93913,24966,530,1,0,0,12543.5,-6615.83,17.2293,2.42537,600,0.0,0,5355,0,0,0);
REPLACE INTO `creature` VALUES (93914,24966,530,1,0,0,12543.5,-6615.83,17.2293,2.42537,600,3.0,0,5355,0,0,1);
REPLACE INTO `creature` VALUES (93915,24966,530,1,0,0,12438.3,-6495.17,0.110122,2.79059,600,3.0,0,5355,0,0,1);
REPLACE INTO `creature` VALUES (93916,24966,530,1,0,0,12549.4,-6398.57,7.04997,0.677863,600,3.0,0,5355,0,0,1);
REPLACE INTO `creature` VALUES (93917,24966,530,1,0,0,12603.2,-6369.12,0.492099,1.37687,600,0.0,0,5355,0,0,0);
REPLACE INTO `creature` VALUES (93918,24966,530,1,0,0,12657.9,-6419.86,8.05706,1.31843,600,0.0,0,5355,0,0,0);
REPLACE INTO `creature` VALUES (93919,24960,530,1,0,0,12572.5,-6616.64,14.0252,4.61082,600,0.0,0,5246,0,0,0);
REPLACE INTO `creature` VALUES (93920,24960,530,1,0,0,12634.8,-6474.38,11.0038,5.66718,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93921,24960,530,1,0,0,12651.2,-6553.38,7.11687,0.102632,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93922,24960,530,1,0,0,12536.2,-6609.16,16.8551,5.45905,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93923,24960,530,1,0,0,12512.8,-6525.45,8.97557,1.86271,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93924,24960,530,1,0,0,12514.6,-6467.48,7.11409,1.68992,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93925,24960,530,1,0,0,12634.1,-6438.12,9.61691,1.42132,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93926,24960,530,1,0,0,12719.6,-6456.24,11.3224,6.20203,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93927,24960,530,1,0,0,12757.5,-6513.67,3.54686,5.80148,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93928,24960,530,1,0,0,12811.2,-6541.07,8.487,2.61276,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93929,24960,530,1,0,0,12803.2,-6604.13,9.1974,5.12761,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93930,24960,530,1,0,0,12810.3,-6611.48,8.79787,2.28996,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93931,24960,530,1,0,0,12882.4,-6538.66,8.59911,0.0641465,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93932,24960,530,1,0,0,12856.3,-6513.54,8.44505,3.38717,600,0.0,0,5246,0,0,0);
REPLACE INTO `creature` VALUES (93933,24960,530,1,0,0,12928.9,-6498.44,0.410185,1.14485,600,0.0,0,5246,0,0,0);
REPLACE INTO `creature` VALUES (93934,24960,530,1,0,0,12944.6,-6549.15,5.17741,1.42916,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93935,24960,530,1,0,0,12880.0,-6635.86,10.0333,2.27425,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93936,24960,530,1,0,0,12849.1,-6594.59,5.17459,4.62259,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93937,24960,530,1,0,0,12902.3,-6690.72,12.1034,3.36438,600,0.0,0,5246,0,0,0);
REPLACE INTO `creature` VALUES (93938,24960,530,1,0,0,12912.9,-6770.59,9.70877,4.68778,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93939,24960,530,1,0,0,13003.7,-6774.46,9.74154,5.52816,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93940,24960,530,1,0,0,12967.2,-6662.53,12.6927,4.3854,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93941,24960,530,1,0,0,12929.5,-6702.01,11.7265,3.92594,600,4.0,0,5246,0,0,1);
REPLACE INTO `creature` VALUES (93942,25164,530,1,0,0,13002.1,-6910.43,9.58451,2.52238,300,0.0,0,8000,0,0,2);
REPLACE INTO `creature` VALUES (93943,25164,530,1,0,0,13002.5,-6907.53,9.58451,2.38887,300,0.0,0,8000,0,0,2);
REPLACE INTO `creature` VALUES (93944,25164,530,1,0,0,13004.5,-6906.68,9.58451,2.60878,300,0.0,0,8000,0,0,2);
REPLACE INTO `creature` VALUES (93945,25170,530,1,0,0,12938.0,-6975.96,18.9591,0.878596,600,0.0,0,15000,0,0,0);
REPLACE INTO `creature` VALUES (93946,25977,530,1,0,0,12942.7,-6974.54,18.991,2.58684,600,0.0,0,15000,0,0,0);
REPLACE INTO `creature` VALUES (93947,25169,530,1,0,0,12942.3,-6970.19,19.0298,4.07517,600,0.0,0,8379,0,0,0);
REPLACE INTO `creature` VALUES (93948,25976,530,1,0,0,12938.0,-6971.36,18.9576,5.56743,600,0.0,0,15000,0,0,0);
REPLACE INTO `creature` VALUES (93949,25162,530,1,0,0,12925.3,-6875.31,7.52808,6.03317,600,0.0,0,6026,0,0,0);
REPLACE INTO `creature` VALUES (93950,25061,530,1,0,0,12791.2,-6886.97,13.3885,2.9158,600,0.0,0,8023,0,0,0);
REPLACE INTO `creature` VALUES (93951,25057,530,1,0,0,12790.7,-6883.16,13.3886,3.74832,600,0.0,0,5800,0,0,0);
REPLACE INTO `creature` VALUES (93952,25034,530,1,0,0,12791.6,-6874.57,13.3886,4.01614,600,0.0,0,9400,0,0,0);
REPLACE INTO `creature` VALUES (93953,25133,530,1,0,0,12784.4,-6882.24,13.3887,4.37037,600,0.0,0,9475,0,0,0);
REPLACE INTO `creature` VALUES (93954,25035,530,1,0,0,12689.2,-6964.2,15.5547,2.01714,600,0.0,0,10000,0,0,0);
REPLACE INTO `creature` VALUES (93955,25108,530,1,0,0,12703.5,-6984.97,25.6016,5.87737,600,0.0,0,9475,0,0,0);
REPLACE INTO `creature` VALUES (93956,26090,530,1,0,0,12669.0,-6955.39,36.2519,6.25358,600,0.0,0,6000,0,0,0);
REPLACE INTO `creature` VALUES (93957,25069,530,1,0,0,12672.9,-6942.86,36.2541,5.37236,600,0.0,0,6400,0,0,0);
REPLACE INTO `creature` VALUES (93958,26092,530,1,0,0,12687.0,-6942.73,36.2523,4.49695,600,0.0,0,10000,0,0,0);
REPLACE INTO `creature` VALUES (93959,26091,530,1,0,0,12678.7,-6972.44,36.2525,1.9392,600,0.0,0,6000,0,0,0);
REPLACE INTO `creature` VALUES (93960,26089,530,1,0,0,12686.7,-6972.61,36.2519,1.84288,600,0.0,0,6000,0,0,0);
REPLACE INTO `creature` VALUES (93961,26253,530,1,0,0,12683.0,-6957.72,15.5545,0.582321,600,0.0,0,4224,0,0,2);
REPLACE INTO `creature` VALUES (93962,26253,530,1,0,0,12913.7,-6881.79,7.72066,5.79972,600,0.0,0,4224,0,0,0);
REPLACE INTO `creature` VALUES (93963,26253,530,1,0,0,12912.7,-6879.51,7.6554,2.02588,600,0.0,0,4224,0,0,0);
REPLACE INTO `creature` VALUES (93964,25046,530,1,0,0,12664.3,-6984.76,14.5446,4.93263,600,0.0,0,10000,0,0,0);
REPLACE INTO `creature` VALUES (93965,25001,530,1,0,0,12683.1,-7043.16,19.7468,4.36159,500,2.0,0,6900,0,0,0);
REPLACE INTO `creature` VALUES (93966,25001,530,1,0,0,12567.1,-6975.7,16.7516,1.25534,500,2.0,0,6900,0,0,0);
REPLACE INTO `creature` VALUES (93967,25001,530,1,0,0,12601.6,-6827.86,13.8724,4.86425,500,2.0,0,6900,0,0,0);
REPLACE INTO `creature` VALUES (93968,25001,530,1,0,0,12635.1,-6888.74,4.94535,4.63768,500,2.0,0,6900,0,0,0);
REPLACE INTO `creature` VALUES (93969,25001,530,1,0,0,12636.8,-7073.24,16.4142,1.16187,500,2.0,0,7100,0,0,0);
REPLACE INTO `creature` VALUES (93970,24999,530,1,0,0,12663.5,-6927.35,5.09172,1.69594,500,0.0,0,5120,0,0,0);
REPLACE INTO `creature` VALUES (93971,24999,530,1,0,0,12679.0,-6917.06,4.94273,2.65806,500,0.0,0,5120,0,0,0);
REPLACE INTO `creature` VALUES (93972,24999,530,1,0,0,12614.5,-6926.89,4.60176,2.02581,500,0.0,0,5120,0,0,0);
REPLACE INTO `creature` VALUES (93973,24999,530,1,0,0,12614.1,-6909.74,4.60176,4.05214,500,0.0,0,5120,0,0,0);
REPLACE INTO `creature` VALUES (93974,24999,530,1,0,0,12553.7,-6930.43,5.07072,0.638006,500,0.0,0,5120,0,0,0);
REPLACE INTO `creature` VALUES (93975,24999,530,1,0,0,12566.0,-6900.14,4.77854,1.80039,500,0.0,0,5120,0,0,0);
REPLACE INTO `creature` VALUES (93976,25003,530,1,0,0,12584.7,-6916.02,4.60096,0.0,700,0.0,0,5867,0,0,2);
REPLACE INTO `creature` VALUES (93977,25002,530,1,0,0,12588.4,-6923.11,4.60061,0.388752,450,2.0,0,13718,0,0,0);
REPLACE INTO `creature` VALUES (93978,25002,530,1,0,0,12588.6,-6910.22,4.60232,5.69019,450,2.0,0,13718,0,0,0);
REPLACE INTO `creature` VALUES (93979,25002,530,1,0,0,12572.3,-6915.23,4.60232,6.19285,450,2.0,0,13718,0,0,0);
REPLACE INTO `creature` VALUES (93980,25002,530,1,0,0,12580.0,-6948.72,4.69724,0.793238,450,2.0,0,5543,0,0,0);
REPLACE INTO `creature` VALUES (93981,25002,530,1,0,0,12608.9,-6951.37,4.61639,1.559,450,2.0,0,13718,0,0,0);
REPLACE INTO `creature` VALUES (93982,25002,530,1,0,0,12614.2,-7004.2,19.2205,1.23541,450,2.0,0,5543,0,0,0);
REPLACE INTO `creature` VALUES (93983,25002,530,1,0,0,12667.5,-7094.47,18.3963,1.39092,450,2.0,0,13718,0,0,0);
REPLACE INTO `creature` VALUES (93984,25002,530,1,0,0,12601.7,-6888.89,4.60264,0.749246,450,2.0,0,13718,0,0,0);
REPLACE INTO `creature` VALUES (93985,25002,530,1,0,0,12644.0,-6857.34,4.60158,4.904,450,2.0,0,5543,0,0,0);
REPLACE INTO `creature` VALUES (93986,25002,530,1,0,0,12672.8,-6879.03,4.60156,3.35677,450,2.0,0,13718,0,0,0);
REPLACE INTO `creature` VALUES (93987,25002,530,1,0,0,12557.8,-6842.75,15.4964,5.36267,450,2.0,0,5543,0,0,0);
REPLACE INTO `creature` VALUES (93988,25031,530,1,0,0,11807.8,-7128.04,66.817,3.11479,300,1.0,0,34000,32310,0,1);
REPLACE INTO `creature` VALUES (93989,25031,530,1,0,0,11755.2,-7073.52,23.8761,3.01268,300,1.0,0,34000,32310,0,1);
REPLACE INTO `creature` VALUES (93990,25031,530,1,0,0,12040.0,-7074.81,33.9972,3.07002,300,1.0,0,34000,32310,0,1);
REPLACE INTO `creature` VALUES (93991,25031,530,1,0,0,12114.8,-7058.9,28.7152,3.20116,300,1.0,0,34000,32310,0,1);
REPLACE INTO `creature` VALUES (93992,25031,530,1,0,0,12113.3,-7086.85,27.1612,3.09513,300,1.0,0,34000,32310,0,1);
REPLACE INTO `creature` VALUES (93993,25033,530,1,0,0,12045.5,-7071.58,73.4483,3.09513,300,0.0,0,20955,0,0,0);
REPLACE INTO `creature` VALUES (93994,25033,530,1,0,0,12046.8,-7040.89,48.5351,4.71854,300,0.0,0,20955,0,0,0);
REPLACE INTO `creature` VALUES (93995,25033,530,1,0,0,11828.6,-7024.85,66.8174,4.17032,300,0.0,0,20955,0,0,0);
REPLACE INTO `creature` VALUES (93996,25033,530,1,0,0,11739.6,-7074.08,82.1196,1.50389,300,0.0,0,20955,0,0,0);
REPLACE INTO `creature` VALUES (93997,25033,530,1,0,0,11774.6,-7036.13,54.2206,4.42871,300,0.0,0,20955,0,0,0);
REPLACE INTO `creature` VALUES (93998,25033,530,1,0,0,11717.2,-7021.81,39.8711,3.72814,300,0.0,0,20955,0,0,0);
REPLACE INTO `creature` VALUES (93999,25033,530,1,0,0,11766.8,-7096.56,55.6564,2.42044,300,0.0,0,20955,0,0,0);
REPLACE INTO `creature` VALUES (94000,25030,530,1,0,0,11634.5,-7076.38,3.58185,6.17072,300,3.0,0,6400,3080,0,1);
REPLACE INTO `creature` VALUES (94001,25030,530,1,0,0,11637.4,-7121.87,8.33953,4.59207,300,3.0,0,6400,3080,0,1);
REPLACE INTO `creature` VALUES (94002,25030,530,1,0,0,11657.0,-7099.12,10.9323,1.28554,300,3.0,0,6600,3155,0,1);
REPLACE INTO `creature` VALUES (94003,25030,530,1,0,0,11663.5,-7037.3,11.2245,1.23449,300,3.0,0,6600,3155,0,1);
REPLACE INTO `creature` VALUES (94004,25030,530,1,0,0,11680.8,-7092.85,14.6685,2.41808,300,3.0,0,6400,3080,0,1);
REPLACE INTO `creature` VALUES (94005,25030,530,1,0,0,11730.5,-7079.22,25.4133,0.905399,300,3.0,0,6600,3155,0,1);
REPLACE INTO `creature` VALUES (94006,25030,530,1,0,0,11784.0,-7072.25,25.5529,0.771883,300,3.0,0,6600,3155,0,1);
REPLACE INTO `creature` VALUES (94007,25030,530,1,0,0,11865.5,-7080.68,28.6349,6.16757,300,3.0,0,6600,3155,0,1);
REPLACE INTO `creature` VALUES (94008,25030,530,1,0,0,11900.3,-7059.85,27.0343,5.36961,300,3.0,0,6600,3155,0,1);
REPLACE INTO `creature` VALUES (94009,25030,530,1,0,0,11937.1,-7075.02,32.2254,5.39002,300,3.0,0,6400,3080,0,1);
REPLACE INTO `creature` VALUES (94010,25030,530,1,0,0,12005.9,-7055.34,36.3564,1.03813,300,3.0,0,6400,3080,0,1);
REPLACE INTO `creature` VALUES (94011,25030,530,1,0,0,12002.8,-7086.44,37.8136,5.09628,300,3.0,0,6600,3155,0,1);
REPLACE INTO `creature` VALUES (94012,25030,530,1,0,0,12187.7,-7055.41,19.1018,1.18892,300,3.0,0,6600,3155,0,1);
REPLACE INTO `creature` VALUES (94013,25030,530,1,0,0,12200.3,-7036.8,20.0714,0.68234,300,3.0,0,6600,3155,0,1);
REPLACE INTO `creature` VALUES (94014,25030,530,1,0,0,12223.6,-7053.35,22.0234,5.8102,300,3.0,0,6400,3080,0,1);
REPLACE INTO `creature` VALUES (94015,25030,530,1,0,0,12210.5,-7152.12,24.593,4.42397,300,3.0,0,6600,3155,0,1);
REPLACE INTO `creature` VALUES (94016,25030,530,1,0,0,12249.1,-7160.28,29.3579,6.03796,300,3.0,0,6400,3080,0,1);
REPLACE INTO `creature` VALUES (94017,25028,530,1,0,0,12196.3,-7056.23,19.8011,3.63463,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94018,25028,530,1,0,0,12184.9,-7062.12,18.2623,3.61892,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94019,25028,530,1,0,0,12177.9,-7056.09,17.2716,2.37407,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94020,25028,530,1,0,0,12180.1,-7047.05,17.9921,0.646191,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94021,25028,530,1,0,0,12187.7,-7049.86,19.0879,5.71672,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94022,25028,530,1,0,0,12201.9,-7039.41,20.2854,0.636766,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94023,25028,530,1,0,0,12204.9,-7028.4,19.8296,1.30278,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94024,25028,530,1,0,0,12195.0,-7031.52,19.9269,3.44535,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94025,25028,530,1,0,0,12191.1,-7039.97,19.0697,4.64544,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94026,25028,530,1,0,0,12202.0,-7046.65,20.3496,5.93742,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94027,25028,530,1,0,0,12204.0,-7040.02,20.5402,1.27216,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94028,25028,530,1,0,0,12206.4,-7032.32,20.1665,1.27216,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94029,25028,530,1,0,0,12222.5,-7047.86,21.5475,5.71437,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94030,25028,530,1,0,0,12231.4,-7053.55,23.8914,5.71437,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94031,25028,530,1,0,0,12225.8,-7057.7,22.7745,3.776,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94032,25028,530,1,0,0,12217.7,-7053.11,21.2521,2.62618,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94033,25028,530,1,0,0,12215.8,-7046.37,21.0047,1.84078,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94034,25028,530,1,0,0,12222.2,-7043.49,21.3704,0.423923,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94035,25028,530,1,0,0,12227.3,-7051.33,22.6639,5.29339,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94036,25028,530,1,0,0,12213.2,-7147.68,24.6599,4.79073,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94037,25028,530,1,0,0,12216.2,-7152.64,24.8415,5.26197,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94038,25028,530,1,0,0,12213.7,-7163.96,23.3222,3.97313,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94039,25028,530,1,0,0,12209.3,-7162.25,23.0809,2.7699,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94040,25028,530,1,0,0,12208.4,-7152.99,24.1548,1.67034,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94041,25028,530,1,0,0,12203.6,-7146.43,22.8233,2.20127,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94042,25028,530,1,0,0,12210.2,-7141.58,23.4145,6.18795,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94043,25028,530,1,0,0,12210.1,-7148.82,24.3643,5.97197,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94044,25028,530,1,0,0,12237.3,-7159.59,27.586,5.96019,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94045,25028,530,1,0,0,12247.3,-7162.93,28.6691,5.96019,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94046,25028,530,1,0,0,12258.7,-7159.7,30.8322,1.51169,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94047,25028,530,1,0,0,12245.0,-7156.7,29.1814,2.92541,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94048,25028,530,1,0,0,12252.9,-7151.75,30.924,0.56293,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94049,25028,530,1,0,0,12255.6,-7167.5,28.8693,5.31616,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94050,25028,530,1,0,0,12251.1,-7176.97,26.734,4.26608,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94051,25028,530,1,0,0,12244.4,-7174.99,26.6102,2.85236,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94052,25028,530,1,0,0,12240.4,-7166.59,27.5898,2.0167,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94053,25028,530,1,0,0,12124.5,-7052.12,27.5656,4.63679,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94054,25028,530,1,0,0,12123.0,-7071.95,25.9334,4.63679,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94055,25028,530,1,0,0,12114.3,-7081.28,27.6969,3.9582,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94056,25028,530,1,0,0,12101.0,-7085.65,30.5565,3.43277,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94057,25028,530,1,0,0,12104.6,-7091.6,29.2507,5.31851,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94058,25028,530,1,0,0,12111.4,-7101.15,27.5291,6.02694,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94059,25028,530,1,0,0,12119.2,-7096.03,25.2891,0.945415,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94060,25028,530,1,0,0,12124.6,-7088.48,24.4658,1.36325,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94061,25028,530,1,0,0,12128.0,-7072.59,24.4959,1.36325,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94062,25028,530,1,0,0,12131.8,-7054.28,25.4305,1.54703,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94063,25028,530,1,0,0,12124.8,-7043.56,28.4173,2.17613,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94064,25028,530,1,0,0,12113.2,-7043.25,29.4367,3.11547,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94065,25028,530,1,0,0,12106.1,-7052.51,30.018,4.05795,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94066,25028,530,1,0,0,12111.6,-7078.67,28.4515,5.78661,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94067,25028,530,1,0,0,12121.2,-7060.87,27.7496,1.67662,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94068,25028,530,1,0,0,12120.0,-7049.18,28.7001,2.45888,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94069,25028,530,1,0,0,12100.5,-7069.07,30.5221,2.65916,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94070,25028,530,1,0,0,12100.5,-7057.83,30.6785,2.26567,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94071,25028,530,1,0,0,12110.9,-7060.39,28.7036,6.22801,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94072,25028,530,1,0,0,12046.4,-7083.71,72.6806,1.58631,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94073,25028,530,1,0,0,12046.3,-7077.95,73.4546,2.25861,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94074,25028,530,1,0,0,12042.0,-7069.62,73.4536,2.04812,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94075,25028,530,1,0,0,12044.8,-7063.21,73.1162,1.15905,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94076,25028,530,1,0,0,12049.2,-7071.36,73.4534,5.31381,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94077,25028,530,1,0,0,12044.5,-7071.19,73.4503,3.44063,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94078,25028,530,1,0,0,12066.4,-7091.05,35.5074,0.365796,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94079,25028,530,1,0,0,12066.3,-7082.45,34.6702,1.26508,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94080,25028,530,1,0,0,12060.7,-7041.87,38.5643,1.88554,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94081,25028,530,1,0,0,12040.1,-7063.01,33.0841,3.28041,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94082,25028,530,1,0,0,12032.2,-7071.28,33.9069,4.76874,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94083,25028,530,1,0,0,12034.5,-7082.5,35.1996,5.59733,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94084,25028,530,1,0,0,12042.5,-7087.15,35.5152,5.90364,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94085,25028,530,1,0,0,12055.8,-7091.44,34.5041,0.751424,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94086,25028,530,1,0,0,12046.1,-7066.45,33.314,1.96094,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94087,25028,530,1,0,0,12057.3,-7060.05,34.2542,0.519732,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94088,25028,530,1,0,0,12008.9,-7055.21,36.2704,3.09584,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94089,25028,530,1,0,0,12003.3,-7046.01,37.6835,3.39822,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94090,25028,530,1,0,0,11998.3,-7057.52,36.628,5.04362,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94091,25028,530,1,0,0,12007.2,-7060.33,36.0737,0.0367103,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94092,25028,530,1,0,0,12003.9,-7056.98,36.3579,3.21757,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94093,25028,530,1,0,0,12000.0,-7080.89,38.1275,4.7059,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94094,25028,530,1,0,0,11998.4,-7088.8,37.9005,5.84866,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94095,25028,530,1,0,0,12010.0,-7088.69,37.636,0.390137,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94096,25028,530,1,0,0,12004.8,-7084.14,37.7587,2.47144,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94097,25028,530,1,0,0,11978.8,-7072.58,37.74,3.18223,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94098,25028,530,1,0,0,11965.3,-7068.54,36.5758,2.80524,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94099,25028,530,1,0,0,11948.9,-7077.41,33.4396,3.86552,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94100,25028,530,1,0,0,11943.2,-7064.56,34.6727,1.96486,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94101,25028,530,1,0,0,11932.0,-7052.02,33.0531,3.0762,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94102,25028,530,1,0,0,11934.0,-7066.87,32.9442,4.87083,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94103,25028,530,1,0,0,11935.1,-7077.29,31.623,4.8669,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94104,25028,530,1,0,0,11941.3,-7084.33,31.1251,0.0445566,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94105,25028,530,1,0,0,11940.2,-7075.12,32.619,1.83919,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94106,25028,530,1,0,0,11931.0,-7076.18,31.3614,2.45966,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94107,25028,530,1,0,0,11940.3,-7080.91,31.4697,0.452964,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94108,25028,530,1,0,0,11910.9,-7063.95,28.2988,2.68742,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94109,25028,530,1,0,0,11904.1,-7062.58,26.8451,3.00551,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94110,25028,530,1,0,0,11893.7,-7061.16,27.7986,2.12979,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94111,25028,530,1,0,0,11897.4,-7055.25,27.6059,0.900641,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94112,25028,530,1,0,0,11905.5,-7053.97,28.4391,0.158439,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94113,25028,530,1,0,0,11909.7,-7052.56,28.5497,4.61165,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94114,25028,530,1,0,0,11905.9,-7048.15,29.4801,2.28294,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94115,25028,530,1,0,0,11882.8,-7058.46,26.2301,3.68488,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94116,25028,530,1,0,0,11874.2,-7078.31,29.125,3.95191,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94117,25028,530,1,0,0,11862.5,-7083.56,29.8636,3.50816,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94118,25028,530,1,0,0,11857.5,-7077.16,28.5833,1.50147,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94119,25028,530,1,0,0,11863.2,-7071.73,27.1758,6.23349,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94120,25028,530,1,0,0,11867.0,-7077.53,27.8645,5.08289,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94121,25028,530,1,0,0,11869.5,-7086.52,28.7933,5.00042,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94122,25028,530,1,0,0,11869.5,-7086.52,28.7933,3.11546,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94123,25028,530,1,0,0,11863.9,-7088.22,29.2451,3.43748,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94124,25028,530,1,0,0,11832.5,-7090.27,28.1429,3.60241,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94125,25028,530,1,0,0,11825.6,-7080.94,27.6912,2.05125,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94126,25028,530,1,0,0,11832.8,-7043.87,23.9972,1.77243,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94127,25028,530,1,0,0,11819.2,-7035.25,22.9764,3.20971,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94128,25028,530,1,0,0,11810.1,-7044.25,23.2578,3.9794,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94129,25028,530,1,0,0,11798.9,-7066.96,25.4191,5.12608,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94130,25028,530,1,0,0,11812.0,-7079.91,26.8844,5.62088,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94131,25028,530,1,0,0,11786.5,-7069.33,25.7913,3.42962,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94132,25028,530,1,0,0,11788.0,-7076.17,25.8581,4.74124,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94133,25028,530,1,0,0,11780.4,-7079.23,25.4105,2.34577,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94134,25028,530,1,0,0,11772.4,-7070.81,24.17,2.37326,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94135,25028,530,1,0,0,11773.7,-7059.19,24.6661,1.45827,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94136,25028,530,1,0,0,11766.9,-7051.36,25.0756,3.80661,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94137,25028,530,1,0,0,11759.4,-7073.08,23.8028,4.64699,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94138,25028,530,1,0,0,11759.0,-7084.7,23.9929,4.67448,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94139,25028,530,1,0,0,11745.9,-7091.89,25.1825,2.40075,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94140,25028,530,1,0,0,11744.7,-7077.95,24.4372,1.64284,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94141,25028,530,1,0,0,11753.8,-7059.24,26.0138,1.03808,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94142,25028,530,1,0,0,11732.2,-7073.28,25.2117,4.45457,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94143,25028,530,1,0,0,11736.2,-7094.91,25.0706,4.36032,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94144,25028,530,1,0,0,11723.0,-7090.19,24.6167,1.73709,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94145,25028,530,1,0,0,11725.9,-7078.94,25.2402,1.47398,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94146,25028,530,1,0,0,11727.3,-7059.18,24.7135,2.07088,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94147,25028,530,1,0,0,11726.9,-7073.09,24.6411,4.95329,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94148,25028,530,1,0,0,11687.8,-7098.4,16.1647,2.68742,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94149,25028,530,1,0,0,11675.0,-7098.55,13.8775,1.89024,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94150,25028,530,1,0,0,11677.3,-7090.68,14.0569,0.790681,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94151,25028,530,1,0,0,11686.7,-7090.93,15.7985,6.13532,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94152,25028,530,1,0,0,11689.8,-7098.1,16.2818,4.1247,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94153,25028,530,1,0,0,11679.4,-7096.1,14.5509,2.98587,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94154,25028,530,1,0,0,11672.5,-7091.64,13.6588,3.5278,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94155,25028,530,1,0,0,11660.2,-7098.61,11.4496,3.65739,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94156,25028,530,1,0,0,11658.9,-7105.41,11.1334,4.14041,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94157,25028,530,1,0,0,11650.4,-7109.11,9.58227,2.26723,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94158,25028,530,1,0,0,11648.0,-7101.2,9.19327,2.11408,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94159,25028,530,1,0,0,11653.3,-7096.68,10.4227,0.759267,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94160,25028,530,1,0,0,11662.0,-7093.63,12.1011,6.07641,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94161,25028,530,1,0,0,11655.2,-7098.12,10.6854,3.70451,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94162,25028,530,1,0,0,11638.1,-7114.81,7.84212,4.25822,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94163,25028,530,1,0,0,11634.2,-7121.98,7.82697,4.31319,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94164,25028,530,1,0,0,11636.5,-7128.56,7.78726,6.25705,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94165,25028,530,1,0,0,11640.0,-7124.06,8.89896,1.07735,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94166,25028,530,1,0,0,11638.2,-7117.36,8.12915,3.13117,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94167,25028,530,1,0,0,11638.2,-7117.36,8.12915,4.94544,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94168,25028,530,1,0,0,11643.3,-7122.13,9.2821,5.09073,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94169,25028,530,1,0,0,11643.3,-7122.13,9.2821,2.07873,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94170,25028,530,1,0,0,11636.6,-7120.03,8.10461,2.84057,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94171,25028,530,1,0,0,11631.0,-7118.33,6.94662,4.33282,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94172,25028,530,1,0,0,11631.5,-7080.01,3.51235,1.45041,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94173,25028,530,1,0,0,11628.5,-7072.39,2.74036,0.621817,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94174,25028,530,1,0,0,11636.5,-7071.64,3.33639,0.0877462,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94175,25028,530,1,0,0,11641.2,-7076.84,4.91647,3.6456,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94176,25028,530,1,0,0,11634.4,-7075.11,3.45872,2.85235,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94177,25028,530,1,0,0,11629.1,-7068.99,2.40853,2.35362,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94178,25028,530,1,0,0,11634.0,-7075.35,3.42999,5.93896,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94179,25028,530,1,0,0,11638.1,-7073.09,3.74414,0.519715,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94180,25028,530,1,0,0,11637.3,-7079.45,4.27198,3.69273,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94181,25028,530,1,0,0,11650.4,-7061.36,6.68844,1.28548,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94182,25028,530,1,0,0,11637.7,-7038.04,5.45243,1.37973,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94183,25028,530,1,0,0,11658.5,-7035.75,10.007,6.24134,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94184,25028,530,1,0,0,11671.5,-7031.35,13.3447,5.16928,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94185,25028,530,1,0,0,11667.0,-7039.52,12.3736,4.20716,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94186,25028,530,1,0,0,11659.1,-7044.35,10.2188,2.31043,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94187,25028,530,1,0,0,11663.5,-7040.4,11.4449,0.947762,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94188,25028,530,1,0,0,11661.2,-7027.77,10.7442,0.594333,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94189,25028,530,1,0,0,11665.3,-7033.33,11.4882,5.35385,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94190,25028,530,1,0,0,11630.7,-7008.88,7.90234,0.629677,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94191,25028,530,1,0,0,11656.0,-6997.67,13.4677,6.27276,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94192,25028,530,1,0,0,11681.5,-7000.25,16.4063,5.55412,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94193,25028,530,1,0,0,11693.8,-7014.31,16.7984,5.60518,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94194,25028,530,1,0,0,11703.5,-7018.08,20.0001,5.92326,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94195,25028,530,1,0,0,11706.0,-7026.97,21.1193,4.94937,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94196,25028,530,1,0,0,11706.0,-7026.97,21.1193,4.05009,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94197,25028,530,1,0,0,11692.6,-7043.17,18.6606,4.00297,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94198,25028,530,1,0,0,11692.6,-7043.17,18.6606,4.00297,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94199,25028,530,1,0,0,11666.1,-7067.34,12.4642,3.66132,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94200,25028,530,1,0,0,11658.7,-7076.3,11.2887,4.17575,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94201,25028,530,1,0,0,11609.6,-7090.19,0.706613,0.680731,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94202,25028,530,1,0,0,11599.6,-7106.68,-0.292655,4.13648,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94203,25028,530,1,0,0,11586.8,-7116.88,0.635812,4.57631,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94204,25028,530,1,0,0,11589.4,-7124.32,1.32514,5.87221,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94205,25028,530,1,0,0,11602.6,-7131.55,6.12904,5.00042,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94206,25028,530,1,0,0,11762.3,-7182.23,5.9203,0.174147,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94207,25028,530,1,0,0,11785.3,-7179.01,9.7016,6.26491,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94208,25028,530,1,0,0,11824.4,-7183.04,10.0349,5.87221,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94209,25028,530,1,0,0,11840.1,-7196.06,9.91402,5.29102,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94210,25028,530,1,0,0,11745.6,-7185.94,6.7963,3.09583,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94211,25028,530,1,0,0,11709.2,-7146.72,26.4529,0.445112,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94212,25028,530,1,0,0,11736.1,-7153.78,28.5588,6.09213,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94213,25028,530,1,0,0,11778.8,-7150.09,28.2676,0.413696,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94214,25028,530,1,0,0,11828.8,-7156.63,28.3188,5.76619,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94215,25028,530,1,0,0,11857.0,-7170.42,29.4202,5.01613,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94216,25028,530,1,0,0,11742.4,-7086.28,24.888,2.50286,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94217,25028,530,1,0,0,11826.6,-7066.04,25.5344,5.89185,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94218,25028,530,1,0,0,11839.1,-7076.4,27.6426,5.62874,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94219,25028,530,1,0,0,11852.7,-7054.89,25.9019,1.16768,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94220,25028,530,1,0,0,11867.1,-7038.26,26.3575,0.37835,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94221,25028,530,1,0,0,11885.4,-7036.03,28.8217,6.11176,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94222,25028,530,1,0,0,12058.6,-7076.96,34.5177,0.213413,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94223,25028,530,1,0,0,12065.2,-7054.52,35.0453,1.34046,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94224,25028,530,1,0,0,11775.8,-7134.13,66.8166,6.27669,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94225,25028,530,1,0,0,11781.6,-7133.96,66.8166,0.162364,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94226,25028,530,1,0,0,11788.6,-7133.06,66.8166,6.27669,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94227,25028,530,1,0,0,11790.9,-7132.92,66.8166,0.0641885,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94228,25028,530,1,0,0,11775.1,-7129.39,66.8166,0.00920963,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94229,25028,530,1,0,0,11779.8,-7128.92,66.8166,0.0995304,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94230,25028,530,1,0,0,11786.7,-7128.23,66.8166,0.0995304,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94231,25028,530,1,0,0,11791.3,-7127.77,66.8166,0.62182,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94232,25028,530,1,0,0,11772.8,-7125.33,66.8166,0.170217,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94233,25028,530,1,0,0,11777.4,-7124.65,66.8166,0.146655,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94234,25028,530,1,0,0,11784.4,-7123.62,66.8166,0.146655,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94235,25028,530,1,0,0,11791.3,-7122.6,66.8166,0.146655,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94236,25028,530,1,0,0,11769.9,-6978.49,26.5486,6.00965,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94237,25028,530,1,0,0,11828.0,-6989.72,28.1304,0.00528288,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94238,25028,530,1,0,0,11841.1,-6985.97,27.9641,0.802462,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94239,25028,530,1,0,0,11546.3,-7000.11,6.91098,5.94681,250,4.0,0,6981,0,0,1);
REPLACE INTO `creature` VALUES (94240,25028,530,1,0,0,11577.5,-7009.4,0.701381,5.6248,250,4.0,0,3502,0,0,1);
REPLACE INTO `creature` VALUES (94241,5202,530,1,0,0,12689.3,-6762.36,4.98655,0.459904,180,0.0,0,100,0,0,0);
REPLACE INTO `creature` VALUES (94242,5202,530,1,0,0,12686.8,-6758.03,5.11337,0.431894,180,0.0,0,100,0,0,0);
REPLACE INTO `creature` VALUES (94243,5202,530,1,0,0,12679.4,-6612.92,5.32855,1.7739,180,0.0,0,100,0,0,0);
REPLACE INTO `creature` VALUES (94244,5202,530,1,0,0,12675.9,-6612.5,5.29466,1.67965,180,0.0,0,100,0,0,0);
REPLACE INTO `creature` VALUES (94245,5202,530,1,0,0,12671.4,-6613.1,5.18267,1.22098,180,0.0,0,100,0,0,0);
REPLACE INTO `creature` VALUES (94246,5202,530,1,0,0,12685.1,-6753.48,5.03629,0.442888,180,0.0,0,100,0,0,0);
REPLACE INTO `creature` VALUES (94247,25225,530,1,0,0,12733.2,-6645.98,1.12147,3.1719,90,0.0,0,1200,0,0,0);
REPLACE INTO `creature` VALUES (94248,25225,530,1,0,0,12735.7,-6630.99,2.32646,3.12085,90,0.0,0,1200,0,0,0);
REPLACE INTO `creature` VALUES (94249,24979,530,1,0,0,12709.2,-6754.35,4.34263,3.48685,700,0.0,0,5004,0,0,0);
REPLACE INTO `creature` VALUES (94250,24979,530,1,0,0,12707.7,-6747.59,4.15349,3.64,700,0.0,0,5004,0,0,0);
REPLACE INTO `creature` VALUES (94251,24979,530,1,0,0,12706.6,-6741.57,4.11793,3.68712,700,0.0,0,5004,0,0,0);
REPLACE INTO `creature` VALUES (94252,24979,530,1,0,0,12761.7,-6649.4,-0.789808,0.0860729,700,0.0,0,5004,0,0,0);
REPLACE INTO `creature` VALUES (94253,24979,530,1,0,0,12761.7,-6663.98,18.8759,1.865,700,0.0,0,5004,0,0,0);
REPLACE INTO `creature` VALUES (94254,24979,530,1,0,0,12796.0,-6737.25,18.8756,5.38358,700,0.0,0,5004,0,0,0);
REPLACE INTO `creature` VALUES (94255,24979,530,1,0,0,12682.2,-6592.91,5.41698,4.24397,700,0.0,0,5004,0,0,0);
REPLACE INTO `creature` VALUES (94256,24979,530,1,0,0,12675.0,-6591.64,5.38248,4.51965,700,0.0,0,5004,0,0,0);
REPLACE INTO `creature` VALUES (94257,24979,530,1,0,0,12666.4,-6592.96,5.02305,4.87543,700,0.0,0,5004,0,0,0);
REPLACE INTO `creature` VALUES (94258,24979,530,1,0,0,12660.7,-6596.05,4.56759,5.20923,700,0.0,0,5004,0,0,0);
REPLACE INTO `creature` VALUES (94259,24979,530,1,0,0,12692.8,-6655.74,3.91284,0.026384,700,0.0,0,5004,0,0,2);
REPLACE INTO `creature` VALUES (94260,24979,530,1,0,0,12646.4,-6647.75,22.9036,4.99393,700,0.0,0,5004,0,0,0);
REPLACE INTO `creature` VALUES (94261,24979,530,1,0,0,12688.4,-6624.05,22.9022,5.62303,700,0.0,0,5004,0,0,0);
REPLACE INTO `creature` VALUES (94262,24979,530,1,0,0,12680.4,-6636.73,22.9025,5.9961,700,0.0,0,5004,0,0,0);
REPLACE INTO `creature` VALUES (94263,24979,530,1,0,0,12661.7,-6647.33,22.9033,4.69233,700,0.0,0,5004,0,0,0);
REPLACE INTO `creature` VALUES (94264,24978,530,1,0,0,12666.9,-6632.91,22.9112,2.28037,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94265,24978,530,1,0,0,12667.9,-6729.69,4.53948,1.57979,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94266,24978,530,1,0,0,12601.8,-6704.28,7.36639,0.524215,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94267,24978,530,1,0,0,12601.9,-6696.23,7.36708,5.89006,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94268,24978,530,1,0,0,12617.9,-6724.08,5.5832,6.11546,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94269,24978,530,1,0,0,12640.9,-6732.42,5.08842,2.66364,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94270,24978,530,1,0,0,12650.3,-6671.85,4.57117,5.96231,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94271,24978,530,1,0,0,12637.0,-6681.78,4.71687,2.12564,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94272,24978,530,1,0,0,12593.9,-6665.05,5.446,5.39682,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94273,24978,530,1,0,0,12624.3,-6642.6,5.645,5.85235,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94274,24978,530,1,0,0,12614.6,-6632.94,4.908,2.42408,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94275,24978,530,1,0,0,12604.6,-6673.48,5.011,2.22381,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94276,24978,530,1,0,0,12664.2,-6628.15,7.01759,5.22403,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94277,24978,530,1,0,0,12720.1,-6707.0,0.325278,5.7958,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94278,24978,530,1,0,0,12736.2,-6744.13,0.319372,0.65929,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94279,24978,530,1,0,0,12766.2,-6696.76,2.27275,5.89004,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94280,24978,530,1,0,0,12780.9,-6691.22,2.2614,4.33103,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94281,24978,530,1,0,0,12786.9,-6705.36,2.26545,2.6542,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94282,24978,530,1,0,0,12772.4,-6712.68,2.27262,1.10697,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94283,24978,530,1,0,0,12822.7,-6674.9,5.00234,4.01765,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94284,24978,530,1,0,0,12826.2,-6683.58,5.00234,2.88668,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94285,24978,530,1,0,0,12793.0,-6707.21,18.7516,2.0306,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94286,24978,530,1,0,0,12770.0,-6718.51,18.7513,1.96384,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94287,24978,530,1,0,0,12782.6,-6686.01,18.7504,5.17611,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94288,24978,530,1,0,0,12759.5,-6696.21,18.7513,5.18789,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94289,24978,530,1,0,0,12781.5,-6754.72,1.64079,5.09757,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94290,24978,530,1,0,0,12775.1,-6774.4,2.69635,4.25719,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94291,24978,530,1,0,0,12764.0,-6795.94,6.09497,3.19691,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94292,24978,530,1,0,0,12820.6,-6760.14,1.39103,3.58568,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94293,24978,530,1,0,0,12838.0,-6722.7,1.03416,5.75338,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94294,24978,530,1,0,0,12670.2,-6812.42,5.5193,6.26546,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94295,24978,530,1,0,0,12702.9,-6786.36,7.03549,5.40937,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94296,24978,530,1,0,0,12716.4,-6801.53,7.03396,2.45627,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94297,24978,530,1,0,0,12701.7,-6800.56,7.03341,0.97894,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94298,24978,530,1,0,0,12717.5,-6787.1,7.03369,3.90926,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94299,24978,530,1,0,0,12730.4,-6832.68,6.05992,2.18295,600,0.0,0,5516,0,0,0);
REPLACE INTO `creature` VALUES (94300,24976,530,1,0,0,12626.8,-6702.56,7.40842,0.12207,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94301,24976,530,1,0,0,12626.7,-6697.0,7.41318,6.23325,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94302,24976,530,1,0,0,12670.8,-6682.64,4.77111,3.94188,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94303,24976,530,1,0,0,12668.8,-6685.63,4.89474,0.96366,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94304,24976,530,1,0,0,12686.7,-6694.69,3.97621,4.12646,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94305,24976,530,1,0,0,12684.6,-6698.61,3.82967,1.11446,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94306,24976,530,1,0,0,12690.6,-6686.43,3.89516,2.80385,700,0.0,0,4590,0,0,2);
REPLACE INTO `creature` VALUES (94307,24976,530,1,0,0,12698.5,-6686.15,3.19096,1.3705,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94308,24976,530,1,0,0,12699.0,-6683.05,2.54011,4.49639,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94309,24976,530,1,0,0,12689.2,-6627.58,4.6838,6.2007,700,0.0,0,4590,0,0,2);
REPLACE INTO `creature` VALUES (94310,24976,530,1,0,0,12676.1,-6643.3,7.0243,5.30614,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94311,24976,530,1,0,0,12670.1,-6646.14,7.02252,5.19382,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94312,24976,530,1,0,0,12753.2,-6682.36,2.28874,0.498508,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94313,24976,530,1,0,0,12775.7,-6672.63,2.28771,3.49952,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94314,24976,530,1,0,0,12805.5,-6671.8,2.67589,3.76498,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94315,24976,530,1,0,0,12818.3,-6698.67,2.67482,3.84743,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94316,24976,530,1,0,0,12799.8,-6720.97,2.28866,3.76559,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94317,24976,530,1,0,0,12776.3,-6732.34,2.28927,0.308268,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94318,24976,530,1,0,0,12812.5,-6745.93,0.461605,3.91325,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94319,24976,530,1,0,0,12762.1,-6726.29,2.71863,3.28396,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94320,24976,530,1,0,0,12748.7,-6698.04,2.72258,3.75404,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94321,24976,530,1,0,0,12712.9,-6778.41,7.08046,1.1397,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94322,24976,530,1,0,0,12724.6,-6797.18,7.08191,5.64003,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94323,24976,530,1,0,0,12706.0,-6808.94,7.08167,4.58681,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94324,24976,530,1,0,0,12694.5,-6790.08,7.08134,2.85578,700,0.0,0,4590,0,0,0);
REPLACE INTO `creature` VALUES (94325,24976,530,1,0,0,12691.8,-6648.18,4.38754,6.19757,700,0.0,0,4590,0,0,2);
REPLACE INTO `creature` VALUES (94326,6491,530,1,0,0,12843.1,-6850.85,12.8124,5.87178,25,0.0,0,5100,0,0,1);
REPLACE INTO `creature` VALUES (94327,25027,530,1,0,0,12106.7,-7073.89,29.4297,0.986605,250,0.0,0,6701,0,0,0);
REPLACE INTO `creature` VALUES (94328,25027,530,1,0,0,12110.9,-7102.05,27.7219,0.948905,250,0.0,0,6701,0,0,0);
REPLACE INTO `creature` VALUES (94329,25027,530,1,0,0,12021.1,-7068.54,34.982,1.53874,250,0.0,0,6701,0,0,0);
REPLACE INTO `creature` VALUES (94330,25027,530,1,0,0,11992.8,-7070.29,38.0136,5.66915,250,0.0,0,6701,0,0,0);
REPLACE INTO `creature` VALUES (94331,25027,530,1,0,0,11928.5,-7056.43,32.2871,3.47082,250,0.0,0,7039,0,0,0);
REPLACE INTO `creature` VALUES (94332,25027,530,1,0,0,11919.9,-7050.33,30.6959,4.2248,250,0.0,0,6701,0,0,0);
REPLACE INTO `creature` VALUES (94333,25027,530,1,0,0,11865.0,-7033.55,25.7658,3.79912,250,0.0,0,7039,0,0,0);
REPLACE INTO `creature` VALUES (94334,25027,530,1,0,0,11865.7,-7058.24,25.7891,3.05142,250,0.0,0,7039,0,0,0);
REPLACE INTO `creature` VALUES (94335,25027,530,1,0,0,11863.0,-7074.91,27.6166,2.65558,250,0.0,0,7039,0,0,0);
REPLACE INTO `creature` VALUES (94336,25027,530,1,0,0,11850.3,-7098.35,28.5336,2.40111,250,0.0,0,7039,0,0,0);
REPLACE INTO `creature` VALUES (94337,25027,530,1,0,0,11805.1,-7086.47,25.9899,2.47808,250,0.0,0,7039,0,0,0);
REPLACE INTO `creature` VALUES (94338,25027,530,1,0,0,11796.5,-7071.92,26.267,2.9179,250,0.0,0,7039,0,0,0);
REPLACE INTO `creature` VALUES (94339,25027,530,1,0,0,11800.7,-7055.26,24.9745,3.75356,250,0.0,0,7039,0,0,0);
REPLACE INTO `creature` VALUES (94340,25027,530,1,0,0,11802.3,-7035.26,24.996,4.14548,250,0.0,0,7039,0,0,0);
REPLACE INTO `creature` VALUES (94341,25027,530,1,0,0,11709.9,-7090.31,21.0734,3.06791,250,0.0,0,7039,0,0,0);
REPLACE INTO `creature` VALUES (94342,25027,530,1,0,0,11691.6,-7054.25,18.0676,2.71919,250,0.0,0,7039,0,0,0);
REPLACE INTO `creature` VALUES (94343,25027,530,1,0,0,11680.7,-7025.95,15.0012,4.2303,250,0.0,0,7039,0,0,0);
REPLACE INTO `creature` VALUES (94344,25027,530,1,0,0,11634.2,-7020.59,4.10396,3.98211,250,0.0,0,7039,0,0,0);
REPLACE INTO `creature` VALUES (94345,25027,530,1,0,0,11648.1,-7051.55,6.70706,3.68995,250,0.0,0,6701,0,0,0);
REPLACE INTO `creature` VALUES (94346,25027,530,1,0,0,11653.3,-7090.0,10.4912,3.05456,250,0.0,0,6701,0,0,0);
REPLACE INTO `creature` VALUES (94347,25027,530,1,0,0,11620.3,-7104.92,3.18779,2.70506,250,0.0,0,6701,0,0,0);
REPLACE INTO `creature` VALUES (94348,25027,530,1,0,0,11835.8,-7240.97,1.81198,5.07695,250,0.0,0,7039,0,0,0);
REPLACE INTO `creature` VALUES (94349,25027,530,1,0,0,11684.0,-7220.82,5.47795,3.37735,250,0.0,0,6701,0,0,0);
REPLACE INTO `creature` VALUES (94350,25027,530,1,0,0,11583.2,-6960.08,7.47485,5.28272,250,0.0,0,6701,0,0,0);
REPLACE INTO `creature` VALUES (94351,25027,530,1,0,0,11667.1,-6938.93,9.42426,2.59981,250,0.0,0,7039,0,0,0);
REPLACE INTO `creature` VALUES (94352,25027,530,1,0,0,11879.9,-6900.78,7.64539,0.801244,250,0.0,0,7039,0,0,0);
REPLACE INTO `creature` VALUES (94353,25027,530,1,0,0,12041.9,-6811.55,2.31816,2.02804,250,0.0,0,6701,0,0,0);
REPLACE INTO `creature` VALUES (94354,25027,530,1,0,0,12216.1,-6753.44,4.46701,6.21892,250,0.0,0,6701,0,0,0);
REPLACE INTO `creature` VALUES (94355,25049,530,1,0,0,12689.1,-6653.9,4.27622,2.54134,450,0.0,0,6987,0,0,0);
REPLACE INTO `creature` VALUES (94356,25049,530,1,0,0,12689.0,-6644.74,4.60986,3.55058,425,0.0,0,6987,0,0,0);
REPLACE INTO `creature` VALUES (94357,25049,530,1,0,0,12690.4,-6647.67,4.46614,3.52309,425,0.0,0,6987,0,0,0);
REPLACE INTO `creature` VALUES (94358,25049,530,1,0,0,12691.2,-6650.54,4.31934,3.07149,425,0.0,0,6987,0,0,0);
REPLACE INTO `creature` VALUES (94359,25092,530,1,0,0,13272.2,-7144.51,4.93783,3.72311,180,0.0,0,8,0,0,0);
REPLACE INTO `creature` VALUES (94360,25090,530,1,0,0,13200.6,-7048.38,3.82285,3.17961,180,0.0,0,8,0,0,0);
REPLACE INTO `creature` VALUES (94361,25091,530,1,21072,0,13317.5,-6988.85,4.13809,3.11521,180,0.0,0,8,0,0,0);
REPLACE INTO `creature` VALUES (94362,24991,530,1,20559,0,12915.4,-6646.39,10.7231,0.993928,180,0.0,0,8,0,0,0);
REPLACE INTO `creature` VALUES (94363,25160,530,1,22965,0,12164.9,-7066.29,72.0305,1.32201,12660,0.0,0,490000,0,0,2);
REPLACE INTO `creature` VALUES (94364,25158,530,1,22711,0,12221.2,-7096.87,24.4145,3.28266,12660,0.0,0,9929522,0,0,0);
REPLACE INTO `creature` VALUES (94365,25132,530,1,0,0,12650.4,-7227.82,32.1155,4.36332,920,0.0,0,1000,0,0,0);
REPLACE INTO `creature` VALUES (94366,25132,530,1,0,0,12680.8,-7190.65,32.1155,0.593412,920,0.0,0,1000,0,0,0);
REPLACE INTO `creature` VALUES (94367,25132,530,1,0,0,12654.7,-7163.87,32.0938,0.221469,920,0.0,0,1000,0,0,0);
REPLACE INTO `creature` VALUES (94368,25132,530,1,0,0,12654.0,-7187.21,32.1156,5.49779,920,0.0,0,1000,0,0,0);
REPLACE INTO `creature` VALUES (94369,25132,530,1,0,0,12639.6,-7209.45,32.1155,0.296706,920,0.0,0,1000,0,0,0);
REPLACE INTO `creature` VALUES (94370,25132,530,1,0,0,12663.1,-7197.13,32.1156,4.31096,920,0.0,0,1000,0,0,0);
REPLACE INTO `creature` VALUES (94371,25132,530,1,0,0,12683.9,-7175.38,32.1155,5.46288,920,0.0,0,1000,0,0,0);
REPLACE INTO `creature` VALUES (94372,25132,530,1,0,0,12674.0,-7202.18,32.1155,0.139626,920,0.0,0,1000,0,0,0);
REPLACE INTO `creature` VALUES (94373,25132,530,1,0,0,12672.4,-7182.06,32.1156,5.95157,920,0.0,0,1000,0,0,0);
REPLACE INTO `creature` VALUES (94374,25132,530,1,0,0,12658.2,-7177.6,32.1156,0.261799,920,0.0,0,1000,0,0,0);
REPLACE INTO `creature` VALUES (94375,25132,530,1,0,0,12669.3,-7222.97,32.1155,6.26573,920,0.0,0,1000,0,0,0);
REPLACE INTO `creature` VALUES (94376,25132,530,1,0,0,12660.3,-7210.45,32.1156,5.89921,920,0.0,0,1000,0,0,0);
REPLACE INTO `creature` VALUES (94377,24994,530,1,0,0,12902.6,-6935.12,3.89913,3.77508,600,0.0,0,8490,0,0,2);
REPLACE INTO `creature` VALUES (94378,24975,530,1,0,0,12848.4,-7015.24,18.5931,3.28139,600,0.0,0,6400,0,0,0);
REPLACE INTO `creature` VALUES (94379,25036,530,1,0,0,12817.0,-7004.92,18.5937,2.21166,600,0.0,0,10000,0,0,0);
REPLACE INTO `creature` VALUES (94380,25037,530,1,0,0,12782.5,-6975.85,15.6433,2.16798,600,0.0,0,7008,3309,0,0);
REPLACE INTO `creature` VALUES (94381,25043,530,1,0,0,12806.4,-7032.2,20.2524,0.891575,600,0.0,0,7008,3309,0,0);
REPLACE INTO `creature` VALUES (94382,25045,530,1,0,0,12782.3,-6983.42,15.7889,2.35551,600,1.0,0,7008,3309,0,0);
REPLACE INTO `creature` VALUES (94383,25088,530,1,0,0,12808.6,-7091.09,7.26203,5.4638,600,0.0,0,6400,0,0,0);
REPLACE INTO `creature` VALUES (94384,25112,530,1,0,0,12732.2,-6910.18,12.2357,2.10209,600,0.0,0,10000,0,0,0);
REPLACE INTO `creature` VALUES (94385,25163,530,1,0,0,12834.1,-7004.53,71.5241,3.77854,600,0.0,0,10000,0,0,0);
REPLACE INTO `creature` VALUES (94386,25950,530,1,0,0,12846.6,-7016.71,18.5936,0.776903,600,0.0,0,6000,0,0,0);
REPLACE INTO `creature` VALUES (94387,25115,530,1,0,0,12750.8,-6925.88,12.2379,4.35963,600,0.0,0,9493,0,0,2);
REPLACE INTO `creature` VALUES (94388,24980,530,1,0,0,12630.3,-6973.65,15.8386,4.40555,180,0.0,0,8,0,0,0);
REPLACE INTO `creature` VALUES (94389,24980,530,1,0,0,12690.1,-7007.15,21.3425,3.49842,180,0.0,0,8,0,0,0);
REPLACE INTO `creature` VALUES (94390,24980,530,1,0,0,12696.5,-6929.97,14.5332,0.387862,180,0.0,0,8,0,0,0);
REPLACE INTO `creature` VALUES (94391,24980,530,1,0,0,12723.2,-6973.3,18.3323,4.26419,180,0.0,0,8,0,0,0);
REPLACE INTO `creature` VALUES (94392,24980,530,1,0,0,12751.4,-6882.72,13.5636,3.62094,180,0.0,0,8,0,0,0);
REPLACE INTO `creature` VALUES (94393,24980,530,1,0,0,12765.0,-7090.63,6.44272,3.73053,180,0.0,0,8,0,0,0);
REPLACE INTO `creature` VALUES (94394,24980,530,1,0,0,12775.8,-7005.19,13.0259,1.59974,360,0.0,0,8,0,0,0);
REPLACE INTO `creature` VALUES (94395,24980,530,1,0,0,12785.0,-6853.72,14.1508,4.7605,180,0.0,0,8,0,0,0);
REPLACE INTO `creature` VALUES (94396,24980,530,1,0,0,12789.2,-6919.12,13.6691,3.54314,180,0.0,0,8,0,0,0);
REPLACE INTO `creature` VALUES (94397,24980,530,1,0,0,12819.3,-6883.41,12.7846,3.19049,180,0.0,0,8,0,0,0);
REPLACE INTO `creature` VALUES (94398,24980,530,1,0,0,12821.0,-6967.57,10.4511,0.335245,180,0.0,0,8,0,0,0);
REPLACE INTO `creature` VALUES (94399,24980,530,1,0,0,12912.5,-6939.06,3.77427,4.26303,180,0.0,0,8,0,0,0);
REPLACE INTO `creature` VALUES (94400,24976,530,1,0,0,12744.9,-6787.73,5.42303,1.4628,600,1.5,0,4590,0,0,2);
REPLACE INTO `creature` VALUES (94401,24994,530,1,0,0,12797.4,-6996.79,18.6664,1.43165,600,0.0,0,8490,0,0,0);
REPLACE INTO `creature` VALUES (94402,24994,530,1,0,0,12838.7,-7014.98,71.5165,3.25614,600,0.0,0,8490,0,0,0);
REPLACE INTO `creature` VALUES (94403,24994,530,1,0,0,12813.2,-7013.24,71.5302,6.18567,600,0.0,0,8490,0,0,0);
REPLACE INTO `creature` VALUES (94404,18562,530,1,22862,0,12599.2,-6669.15,5.41298,0.890118,180,0.0,0,5000,0,0,0);
REPLACE INTO `creature` VALUES (94405,18562,530,1,22862,0,12619.4,-6637.9,5.52388,3.90954,180,0.0,0,5000,0,0,0);
REPLACE INTO `creature` VALUES (94406,24994,530,1,0,0,12811.6,-6984.88,18.6622,2.49833,600,0.0,0,8490,0,0,0);
REPLACE INTO `creature` VALUES (94407,24938,530,1,0,0,12851.4,-7125.42,6.75772,5.57194,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94408,24938,530,1,0,0,12839.6,-7108.11,5.33743,0.623151,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94409,24938,530,1,0,0,12849.8,-7065.3,3.28482,5.02139,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94410,24938,530,1,0,0,12874.9,-7044.66,3.2928,5.52483,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94411,24938,530,1,0,0,12881.2,-7028.98,3.26899,6.01571,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94412,24938,530,1,0,0,12883.5,-7010.71,3.00433,6.0644,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94413,24938,530,1,0,0,12849.8,-7050.08,18.9649,4.19283,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94414,24938,530,1,0,0,12857.6,-7052.45,18.9502,5.41334,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94415,24938,530,1,0,0,12857.7,-7042.47,18.9762,0.70095,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94416,24938,530,1,0,0,12834.7,-7049.65,19.1077,3.74044,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94417,24938,530,1,0,0,12803.4,-6981.09,47.5908,0.846249,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94418,24938,530,1,0,0,12796.3,-6979.2,47.536,2.25997,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94419,24938,530,1,0,0,12794.8,-6988.47,47.5893,3.72081,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94420,24938,530,1,0,0,12795.2,-6998.43,47.3655,3.43807,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94421,24938,530,1,0,0,12850.4,-7034.92,47.8346,0.391501,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94422,24938,530,1,0,0,12850.4,-7034.92,47.8346,0.391501,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94423,24938,530,1,0,0,12849.4,-7042.26,47.7683,5.23349,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94424,24938,530,1,0,0,12841.5,-7039.79,47.8495,4.05931,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94425,24938,530,1,0,0,12816.4,-6996.21,71.1693,2.22776,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94426,24938,530,1,0,0,12843.8,-7002.13,71.2075,0.366371,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94427,24938,530,1,0,0,12845.9,-7016.31,71.2065,5.88772,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94428,24938,530,1,0,0,12836.4,-7032.06,71.3394,3.89281,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94429,24938,530,1,0,0,12843.8,-7027.08,71.3697,0.664819,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94430,24938,530,1,0,0,12824.5,-7030.75,71.4883,4.60359,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94431,24938,530,1,0,0,12813.4,-7024.65,71.4962,3.75928,600,0.0,0,9765,0,0,0);
REPLACE INTO `creature` VALUES (94432,25115,530,1,0,0,12798.7,-6976.59,18.6969,2.44749,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (94433,25115,530,1,0,0,12791.8,-6983.53,18.6969,2.3878,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (94434,25115,530,1,0,0,12791.8,-7113.58,5.41688,3.87929,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (94435,25115,530,1,0,0,12795.6,-7117.78,5.41688,3.85416,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (94436,25115,530,1,0,0,12805.1,-7090.44,7.57268,5.49051,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (94437,25115,530,1,0,0,12807.3,-7087.94,7.5728,5.42532,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature` VALUES (94438,25115,530,1,0,0,12802.1,-7085.75,5.79984,5.53684,600,0.0,0,9493,0,0,0);
REPLACE INTO `creature_addon` VALUES (53982,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (54029,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (54030,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (54031,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (54032,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (54113,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (54114,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (54143,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (54165,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (54176,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (54177,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (54178,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (54181,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (54182,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (54183,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (54184,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (54185,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (56315,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65680,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65681,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65682,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65683,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65684,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65685,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65686,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65687,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65688,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65689,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65690,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65691,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65692,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65693,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65694,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65695,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65696,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65697,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65698,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65699,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65700,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65701,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65702,0,0,0,0,48,0,'');
REPLACE INTO `creature_addon` VALUES (65703,0,0,0,0,45,0,'');
REPLACE INTO `creature_addon` VALUES (71916,0,0,0,0,45,0,'');
REPLACE INTO `creature_addon` VALUES (71917,0,0,0,0,45,0,'');
REPLACE INTO `creature_addon` VALUES (71919,0,0,0,0,45,0,'');
REPLACE INTO `creature_addon` VALUES (71920,0,0,0,0,45,0,'');
REPLACE INTO `creature_addon` VALUES (88067,0,0,0,0,12,0,'');
REPLACE INTO `creature_addon` VALUES (90932,0,0,0,0,12,0,'');
REPLACE INTO `creature_addon` VALUES (90934,0,512,1,4097,13,0,'');
REPLACE INTO `creature_addon` VALUES (90936,0,512,1,4097,13,0,'');
REPLACE INTO `creature_addon` VALUES (90937,0,512,1,4097,13,0,'');
REPLACE INTO `creature_addon` VALUES (90938,0,0,0,0,12,0,'');
REPLACE INTO `creature_addon` VALUES (90939,0,512,1,4097,13,0,'');
REPLACE INTO `creature_addon` VALUES (90940,0,512,1,4097,13,0,'');
REPLACE INTO `creature_addon` VALUES (90942,0,512,1,4097,13,0,'');
REPLACE INTO `creature_addon` VALUES (90943,0,512,1,4097,13,0,'');
REPLACE INTO `creature_addon` VALUES (90945,0,0,0,0,12,0,'');
REPLACE INTO `creature_addon` VALUES (90946,0,0,0,0,12,0,'');
REPLACE INTO `creature_addon` VALUES (93912,0,0,0,0,12,0,'');
REPLACE INTO `creature_addon` VALUES (93916,0,0,0,0,12,0,'');
REPLACE INTO `creature_addon` VALUES (93917,0,512,1,4097,13,0,'');
REPLACE INTO `creature_addon` VALUES (93918,0,512,1,4097,13,0,'');
REPLACE INTO `creature_addon` VALUES (93919,0,512,1,4097,13,0,'');
REPLACE INTO `creature_addon` VALUES (93921,0,0,0,0,12,0,'');
REPLACE INTO `creature_addon` VALUES (93932,0,0,0,0,12,0,'');
REPLACE INTO `creature_addon` VALUES (93933,0,512,1,4097,13,0,'');
REPLACE INTO `creature_addon` VALUES (93937,0,512,1,4097,13,0,'');
REPLACE INTO `creature_addon` VALUES (94249,0,0,0,0,384,0,'');
REPLACE INTO `creature_addon` VALUES (94250,0,0,0,0,384,0,'');
REPLACE INTO `creature_addon` VALUES (94251,0,0,0,0,384,0,'');
REPLACE INTO `creature_addon` VALUES (94255,0,0,0,0,384,0,'');
REPLACE INTO `creature_addon` VALUES (94256,0,0,0,0,384,0,'');
REPLACE INTO `creature_addon` VALUES (94257,0,0,0,0,384,0,'');
REPLACE INTO `creature_addon` VALUES (94258,0,0,0,0,384,0,'');
REPLACE INTO `creature_addon` VALUES (94302,0,0,0,0,36,0,'');
REPLACE INTO `creature_addon` VALUES (94303,0,0,0,0,36,0,'');
REPLACE INTO `creature_addon` VALUES (94304,0,0,0,0,36,0,'');
REPLACE INTO `creature_addon` VALUES (94305,0,0,0,0,36,0,'');
REPLACE INTO `creature_addon` VALUES (94307,0,0,0,0,36,0,'');
REPLACE INTO `creature_addon` VALUES (94308,0,0,0,0,36,0,'');
REPLACE INTO `creature_addon` VALUES (94309,19085,0,0,0,0,0,'');
REPLACE INTO `creature_addon` VALUES (94325,19085,0,0,0,0,0,'');
REPLACE INTO `creature_addon` VALUES (94387,19482,512,0,4097,0,0,'');
REPLACE INTO `creature_addon` VALUES (94400,19085,0,0,0,0,0,'');
REPLACE INTO `creature_movement` VALUES (12719,1,12855.8,-7032.47,18.9525,0,'','','','','',0,0,0,1.10179,0,0);
REPLACE INTO `creature_movement` VALUES (12719,2,12858.4,-7006.76,25.2855,0,'','','','','',0,0,0,1.87462,0,0);
REPLACE INTO `creature_movement` VALUES (12719,3,12850.2,-6994.06,32.3065,0,'','','','','',0,0,0,2.2092,0,0);
REPLACE INTO `creature_movement` VALUES (12719,4,12840.5,-6986.8,38.0928,0,'','','','','',0,0,0,2.79354,0,0);
REPLACE INTO `creature_movement` VALUES (12719,5,12826.7,-6983.79,43.9748,0,'','','','','',0,0,0,3.01266,0,0);
REPLACE INTO `creature_movement` VALUES (12719,6,12815.7,-6985.14,47.3124,0,'','','','','',0,0,0,3.56873,0,0);
REPLACE INTO `creature_movement` VALUES (12719,7,12806.8,-6991.77,47.6362,0,'','','','','',0,0,0,5.35079,0,0);
REPLACE INTO `creature_movement` VALUES (12719,8,12816.0,-7002.94,47.4295,0,'','','','','',0,0,0,5.45289,0,0);
REPLACE INTO `creature_movement` VALUES (12719,9,12832.2,-7003.82,47.4274,0,'','','','','',0,0,0,6.22887,0,0);
REPLACE INTO `creature_movement` VALUES (12719,10,12837.0,-7022.8,47.4028,0,'','','','','',0,0,0,4.76724,0,0);
REPLACE INTO `creature_movement` VALUES (12719,11,12844.0,-7033.88,47.8643,0,'','','','','',0,0,0,2.18721,0,0);
REPLACE INTO `creature_movement` VALUES (12719,12,12835.7,-7023.58,47.4043,0,'','','','','',0,0,0,2.24611,0,0);
REPLACE INTO `creature_movement` VALUES (12719,13,12834.8,-7008.85,47.4273,0,'','','','','',0,0,0,1.7898,0,0);
REPLACE INTO `creature_movement` VALUES (12719,14,12817.0,-7001.99,47.4273,0,'','','','','',0,0,0,2.80296,0,0);
REPLACE INTO `creature_movement` VALUES (12719,15,12807.0,-6992.42,47.6398,0,'','','','','',0,0,0,1.02011,0,0);
REPLACE INTO `creature_movement` VALUES (12719,16,12815.9,-6984.86,47.1909,0,'','','','','',0,0,0,0.556721,0,0);
REPLACE INTO `creature_movement` VALUES (12719,17,12832.4,-6983.44,41.6628,0,'','','','','',0,0,0,6.21552,0,0);
REPLACE INTO `creature_movement` VALUES (12719,18,12847.7,-6989.91,34.3545,0,'','','','','',0,0,0,5.79533,0,0);
REPLACE INTO `creature_movement` VALUES (12719,19,12858.2,-7005.1,25.8451,0,'','','','','',0,0,0,5.189,0,0);
REPLACE INTO `creature_movement` VALUES (12719,20,12858.1,-7022.35,20.3098,0,'','','','','',0,0,0,4.74604,0,0);
REPLACE INTO `creature_movement` VALUES (12719,21,12848.7,-7041.35,18.6506,0,'','','','','',0,0,0,0.914868,0,0);
REPLACE INTO `creature_movement` VALUES (76580,1,12657.2,-6835.91,12.4504,0,'','','','','',0,0,0,2.31869,0,0);
REPLACE INTO `creature_movement` VALUES (76580,2,12662.7,-6830.83,12.519,0,'','','','','',0,0,0,5.46421,0,0);
REPLACE INTO `creature_movement` VALUES (76580,3,12730.8,-6900.96,12.2364,0,'','','','','',0,0,0,5.48385,0,0);
REPLACE INTO `creature_movement` VALUES (76580,4,12726.5,-6907.71,12.2347,0,'','','','','',0,0,0,2.36582,0,0);
REPLACE INTO `creature_movement` VALUES (76581,1,12840.0,-6808.5,9.54349,0,'','','','','',0,0,0,0.262938,0,0);
REPLACE INTO `creature_movement` VALUES (76581,2,12764.7,-6840.96,14.2673,0,'','','','','',0,0,0,0.333622,0,0);
REPLACE INTO `creature_movement` VALUES (76582,1,12811.5,-6910.03,13.1049,0,'','','','','',0,0,0,3.49678,0,0);
REPLACE INTO `creature_movement` VALUES (76582,2,12870.3,-6897.78,9.03495,0,'','','','','',0,0,0,3.28158,0,0);
REPLACE INTO `creature_movement` VALUES (78385,1,12640.0,-7035.84,19.864,0,'','','','','',0,0,0,5.09193,0,0);
REPLACE INTO `creature_movement` VALUES (78385,2,12626.7,-6983.02,17.4307,0,'','','','','',0,0,0,5.17283,0,0);
REPLACE INTO `creature_movement` VALUES (78386,1,12699.9,-7016.5,20.7951,0,'','','','','',0,0,0,4.37644,0,0);
REPLACE INTO `creature_movement` VALUES (78386,2,12715.9,-6970.72,17.5154,0,'','','','','',0,0,0,4.57358,0,0);
REPLACE INTO `creature_movement` VALUES (93942,1,12933.4,-6875.25,7.06605,0,NULL,NULL,NULL,NULL,NULL,0,0,0,2.96183,0,0);
REPLACE INTO `creature_movement` VALUES (93943,1,12932.8,-6873.2,7.23205,0,NULL,NULL,NULL,NULL,NULL,0,0,0,3.10398,0,0);
REPLACE INTO `creature_movement` VALUES (93944,1,12934.8,-6871.98,7.24047,0,NULL,NULL,NULL,NULL,NULL,0,0,0,3.15896,0,0);
REPLACE INTO `creature_movement` VALUES (93961,1,12698.6,-6946.95,15.559,0,'','','','','',0,0,0,2.34137,0,0);
REPLACE INTO `creature_movement` VALUES (93961,2,12689.0,-6938.74,17.1275,0,'','','','','',0,0,0,2.57306,0,0);
REPLACE INTO `creature_movement` VALUES (93961,3,12682.0,-6937.63,20.4209,0,'','','','','',0,0,0,3.42522,0,0);
REPLACE INTO `creature_movement` VALUES (93961,4,12673.1,-6942.94,23.4894,0,'','','','','',0,0,0,5.31017,0,0);
REPLACE INTO `creature_movement` VALUES (93961,5,12700.0,-6981.77,25.6014,0,'','','','','',0,0,0,3.90431,0,0);
REPLACE INTO `creature_movement` VALUES (93961,6,12686.7,-6990.88,27.3841,0,'','','','','',0,0,0,3.69225,0,0);
REPLACE INTO `creature_movement` VALUES (93961,7,12673.6,-6992.16,31.1864,0,'','','','','',0,0,0,3.05608,0,0);
REPLACE INTO `creature_movement` VALUES (93961,8,12664.5,-6985.19,35.0522,0,'','','','','',0,0,0,2.23141,0,0);
REPLACE INTO `creature_movement` VALUES (93961,9,12660.6,-6978.56,36.2306,0,'','','','','',0,0,0,2.06647,0,0);
REPLACE INTO `creature_movement` VALUES (93961,10,12667.6,-6989.83,33.47,0,'','','','','',0,0,0,5.39106,0,0);
REPLACE INTO `creature_movement` VALUES (93961,11,12679.8,-6992.55,28.9449,0,'','','','','',0,0,0,6.14897,0,0);
REPLACE INTO `creature_movement` VALUES (93961,12,12700.4,-6984.62,25.6013,0,'','','','','',0,0,0,0.501959,0,0);
REPLACE INTO `creature_movement` VALUES (93961,13,12672.2,-6943.58,23.4893,0,'','','','','',0,0,0,0.455621,0,0);
REPLACE INTO `creature_movement` VALUES (93961,14,12683.2,-6937.64,19.7995,0,'','','','','',0,0,0,0.538088,0,0);
REPLACE INTO `creature_movement` VALUES (93961,15,12698.3,-6946.98,15.5602,0,'','','','','',0,0,0,3.74958,0,0);
REPLACE INTO `creature_movement` VALUES (93961,16,12683.2,-6957.76,15.5557,0,'','','','','',0,0,0,3.76136,0,0);
REPLACE INTO `creature_movement` VALUES (93976,1,12598.0,-6916.56,4.60168,0,NULL,NULL,NULL,NULL,NULL,0,0,0,6.24961,0,0);
REPLACE INTO `creature_movement` VALUES (94259,1,12731.4,-6653.77,1.27485,0,NULL,NULL,NULL,NULL,NULL,0,0,0,0.079296,0,0);
REPLACE INTO `creature_movement` VALUES (94306,1,12673.4,-6685.24,4.81905,0,'','','','','',0,0,0,2.74651,0,0);
REPLACE INTO `creature_movement` VALUES (94306,2,12684.0,-6692.72,3.93958,0,'','','','','',0,0,0,5.17339,0,0);
REPLACE INTO `creature_movement` VALUES (94306,3,12695.1,-6685.6,3.44222,0,'','','','','',0,0,0,0.310992,0,0);
REPLACE INTO `creature_movement` VALUES (94309,1,12737.6,-6632.48,2.07391,0,'','','','','',0,0,0,6.14649,0,0);
REPLACE INTO `creature_movement` VALUES (94309,2,12738.5,-6627.65,2.42508,0,'','','','','',0,0,0,1.45374,0,0);
REPLACE INTO `creature_movement` VALUES (94309,3,12689.1,-6627.59,4.6849,0,'','','','','',0,0,0,6.14021,0,0);
REPLACE INTO `creature_movement` VALUES (94325,1,12734.3,-6648.6,0.875474,0,'','','','','',0,0,0,0.153906,0,0);
REPLACE INTO `creature_movement` VALUES (94325,2,12734.9,-6645.29,1.06355,0,'','','','','',0,0,0,1.72078,0,0);
REPLACE INTO `creature_movement` VALUES (94325,3,12691.7,-6647.97,4.4013,0,'','','','','',0,0,0,3.47221,0,0);
REPLACE INTO `creature_movement` VALUES (94377,1,12902.6,-6935.12,3.89914,0,'','','','','',0,0,127592,3.77508,0,0);
REPLACE INTO `creature_movement` VALUES (94377,2,12891.7,-6943.86,3.84171,0,'','','','','',0,0,127593,3.97928,0,0);
REPLACE INTO `creature_movement` VALUES (94377,3,12894.9,-6953.32,3.41157,0,'','','','','',0,0,127594,5.03957,0,0);
REPLACE INTO `creature_movement` VALUES (94377,4,12870.4,-6982.76,3.27686,0,'','','','','',0,0,127595,4.23925,0,0);
REPLACE INTO `creature_movement` VALUES (94377,5,12867.6,-7030.14,3.29529,0,'','','','','',0,0,127596,4.05861,0,0);
REPLACE INTO `creature_movement` VALUES (94377,6,12841.6,-7054.02,3.29062,0,'','','','','',0,0,127597,3.76801,0,0);
REPLACE INTO `creature_movement` VALUES (94377,7,12830.0,-7056.83,3.28703,0,'','','','','',0,0,127598,3.28499,0,0);
REPLACE INTO `creature_movement` VALUES (94377,8,12797.0,-7047.92,3.65106,0,'','','','','',0,0,127599,3.79157,0,0);
REPLACE INTO `creature_movement` VALUES (94377,9,12776.4,-7061.28,4.82354,0,'','','','','',0,0,127600,4.28638,0,0);
REPLACE INTO `creature_movement` VALUES (94377,10,12769.5,-7077.45,6.26966,0,'','','','','',0,0,127601,4.83615,0,0);
REPLACE INTO `creature_movement` VALUES (94377,11,12777.3,-7096.83,6.21525,0,'','','','','',0,0,127602,5.10711,0,0);
REPLACE INTO `creature_movement` VALUES (94377,12,12789.8,-7117.87,5.41759,0,'','','','','',0,0,127603,5.382,0,0);
REPLACE INTO `creature_movement` VALUES (94377,13,12789.8,-7117.87,5.41759,0,'','','','','',0,0,127604,2.33858,0,0);
REPLACE INTO `creature_movement` VALUES (94377,14,12773.9,-7097.35,6.30494,0,'','','','','',0,0,127605,2.22077,0,0);
REPLACE INTO `creature_movement` VALUES (94377,15,12772.6,-7078.14,6.44247,0,'','','','','',0,0,127606,1.59245,0,0);
REPLACE INTO `creature_movement` VALUES (94377,16,12783.5,-7058.63,4.38109,0,'','','','','',0,0,127607,0.962564,0,0);
REPLACE INTO `creature_movement` VALUES (94377,17,12796.1,-7052.62,3.6789,0,'','','','','',0,0,127608,0.287122,0,0);
REPLACE INTO `creature_movement` VALUES (94377,18,12835.5,-7057.43,3.2826,0,'','','','','',0,0,127609,6.15797,0,0);
REPLACE INTO `creature_movement` VALUES (94377,19,12855.5,-7044.08,3.28763,0,'','','','','',0,0,127610,0.679822,0,0);
REPLACE INTO `creature_movement` VALUES (94377,20,12868.8,-7000.27,3.27994,0,'','','','','',0,0,127611,1.36862,0,0);
REPLACE INTO `creature_movement` VALUES (94377,21,12873.7,-6979.97,3.27539,0,'','','','','',0,0,127612,1.21939,0,0);
REPLACE INTO `creature_movement` VALUES (94377,22,12903.1,-6947.58,3.54187,0,'','','','','',0,0,127613,0.846326,0,0);
REPLACE INTO `creature_movement` VALUES (94377,23,12903.7,-6934.46,3.90939,0,'','','','','',0,0,127614,3.72874,0,0);
REPLACE INTO `creature_movement` VALUES (94387,1,12742.3,-6958.21,15.2337,0,'','','','','',0,0,0,4.47744,0,0);
REPLACE INTO `creature_movement` VALUES (94387,2,12736.0,-6984.64,19.0822,0,'','','','','',0,0,0,4.2536,0,0);
REPLACE INTO `creature_movement` VALUES (94387,3,12714.9,-7029.29,20.1284,0,'','','','','',0,0,0,4.75154,0,0);
REPLACE INTO `creature_movement` VALUES (94387,4,12731.0,-7174.66,8.25184,0,'','','','','',0,0,0,4.83401,0,0);
REPLACE INTO `creature_movement` VALUES (94387,5,12729.5,-7182.24,7.69132,0,'','','','','',0,0,0,4.33528,0,0);
REPLACE INTO `creature_movement` VALUES (94387,6,12723.7,-7190.36,7.99292,0,'','','','','',0,0,0,4.1405,0,0);
REPLACE INTO `creature_movement` VALUES (94387,7,12727.2,-7194.55,7.65928,0,'','','','','',0,0,0,5.56207,0,0);
REPLACE INTO `creature_movement` VALUES (94387,8,12736.1,-7192.57,7.06488,0,'','','','','',0,0,0,0.225288,0,0);
REPLACE INTO `creature_movement` VALUES (94387,9,12738.3,-7183.29,7.1643,0,'','','','','',0,0,0,1.88483,0,0);
REPLACE INTO `creature_movement` VALUES (94387,10,12719.8,-7083.67,17.6816,0,'','','','','',0,0,0,1.66492,0,0);
REPLACE INTO `creature_movement` VALUES (94387,11,12715.1,-7029.22,20.124,0,'','','','','',0,0,0,1.17798,0,0);
REPLACE INTO `creature_movement` VALUES (94387,12,12740.7,-6972.05,17.9499,0,'','','','','',0,0,0,1.5157,0,0);
REPLACE INTO `creature_movement` VALUES (94387,13,12743.6,-6932.51,12.2359,0,'','','','','',0,0,0,2.0482,0,0);
REPLACE INTO `creature_movement` VALUES (94387,14,12730.1,-6916.26,12.2367,0,'','','','','',0,0,0,1.5047,0,0);
REPLACE INTO `creature_movement` VALUES (94387,15,12733.8,-6908.22,12.2367,0,'','','','','',0,0,0,0.874811,0,0);
REPLACE INTO `creature_movement` VALUES (94387,16,12743.1,-6905.72,12.2383,0,'','','','','',0,0,0,0.179734,0,0);
REPLACE INTO `creature_movement` VALUES (94387,17,12751.5,-6910.08,12.2362,0,'','','','','',0,0,0,5.4097,0,0);
REPLACE INTO `creature_movement` VALUES (94387,18,12749.8,-6927.16,12.2366,0,'','','','','',0,0,0,4.48293,0,0);
REPLACE INTO `creature_movement` VALUES (94400,1,12744.7,-6742.67,0.374358,0,'','','','','',0,0,0,1.9851,0,0);
REPLACE INTO `creature_movement` VALUES (94400,2,12717.7,-6671.36,-0.073843,0,'','','','','',0,0,0,2.88045,0,0);
REPLACE INTO `creature_movement` VALUES (94400,3,12687.5,-6667.27,3.88784,0,'','','','','',0,0,0,3.17105,0,0);
REPLACE INTO `creature_movement` VALUES (94400,4,12663.5,-6669.88,4.54454,0,'','','','','',0,0,0,3.13178,0,0);
REPLACE INTO `creature_movement` VALUES (94400,5,12651.9,-6675.38,4.57013,0,'','','','','',0,0,0,4.28238,0,0);
REPLACE INTO `creature_movement` VALUES (94400,6,12655.5,-6727.74,4.57296,0,'','','','','',0,0,0,4.89107,0,0);
REPLACE INTO `creature_movement` VALUES (94400,7,12678.6,-6776.74,4.59928,0,'','','','','',0,0,0,5.13846,0,0);
REPLACE INTO `creature_movement` VALUES (94400,8,12700.4,-6768.35,4.62427,0,'','','','','',0,0,0,0.55488,0,0);
REPLACE INTO `creature_movement` VALUES (94400,9,12719.8,-6770.86,5.34093,0,'','','','','',0,0,0,5.96628,0,0);
REPLACE INTO `creature_movement` VALUES (94400,10,12737.0,-6793.05,5.42356,0,'','','','','',0,0,0,5.25942,0,0);
REPLACE INTO `creature_movement` VALUES (94400,11,12745.0,-6780.58,5.42392,0,'','','','','',0,0,0,1.39919,0,0);
REPLACE INTO `gameobject` VALUES (13539,181281,530,1,12696.2,-7066.53,19.3097,4.20522,0.0,0.0,0.861889,-0.507097,300,0,1);
REPLACE INTO `gameobject` VALUES (23985,181281,530,1,12599.0,-6930.48,5.01902,4.00416,0.0,0.0,0.908431,-0.418036,300,0,1);
REPLACE INTO `gameobject` VALUES (27591,181281,530,1,12588.0,-6619.87,12.4062,1.5278,0.0,0.0,0.691742,0.722145,300,0,1);
REPLACE INTO `gameobject` VALUES (27592,181280,530,1,11621.3,-7061.17,1.39133,1.51908,0.0,0.0,0.688587,0.725154,300,0,1);
REPLACE INTO `gameobject` VALUES (27617,181281,530,1,11744.2,-7218.29,9.25358,2.99719,0.0,0.0,0.997395,0.0721389,300,0,1);
REPLACE INTO `gameobject` VALUES (27742,181281,530,1,12330.0,-7353.95,2.96635,5.98563,0.0,0.0,0.148232,-0.988953,300,0,1);
REPLACE INTO `gameobject` VALUES (27743,181281,530,1,12669.1,-7420.74,2.88691,0.790224,0.0,0.0,0.384912,0.922953,300,0,1);
REPLACE INTO `gameobject` VALUES (27744,181570,530,1,12529.2,-6950.3,18.7393,3.27601,0.0,0.0,0.997742,-0.067158,300,0,1);
REPLACE INTO `gameobject` VALUES (27745,181570,530,1,12682.9,-7329.17,5.70932,0.157973,0.0,0.0,0.0789045,0.996882,300,0,1);
REPLACE INTO `gameobject` VALUES (27750,187345,530,1,12940.0,-6973.13,18.9518,0.872317,0.0,0.0,0.422461,0.906381,300,0,1);
REPLACE INTO `gameobject` VALUES (27751,187428,530,1,12789.5,-6888.58,31.5548,2.1439,0.0,0.0,0.878134,0.478414,180,0,1);
REPLACE INTO `gameobject` VALUES (27752,187431,530,1,12784.5,-6882.47,23.4404,5.37582,0.0,0.0,0.438279,-0.898839,180,0,1);
REPLACE INTO `gameobject` VALUES (27753,188171,530,1,12895.5,-7300.07,65.4923,0.100751,0.0,0.0,0.0503541,0.998731,180,0,1);
REPLACE INTO `gameobject` VALUES (27754,188172,530,1,12599.3,-6808.31,13.3259,5.32994,0.0,0.0,0.458782,-0.888549,180,0,1);
REPLACE INTO `gameobject` VALUES (27755,187335,530,1,12807.2,-6911.97,41.1164,2.18755,0.0,0.0,0.888366,0.459136,300,0,1);
REPLACE INTO `gameobject` VALUES (27756,187371,530,1,12776.6,-6701.81,9.23255,1.57142,0.0,0.0,0.976995,-0.213261,300,0,1);
REPLACE INTO `gameobject` VALUES (27757,187264,530,1,11820.6,-7306.59,-0.296268,5.5122,0.0,0.0,0.376015,-0.926614,180,0,1);
REPLACE INTO `gameobject` VALUES (27762,187264,530,1,11837.2,-7317.23,0.445331,5.85856,0.0,0.0,0.210719,-0.977547,180,0,1);
REPLACE INTO `gameobject` VALUES (27763,187264,530,1,11845.3,-7328.02,-0.293482,2.41224,0.0,0.0,0.934239,0.356648,180,0,1);
REPLACE INTO `gameobject` VALUES (27764,187264,530,1,11857.3,-7319.35,0.318168,3.75998,0.0,0.0,0.952579,-0.304291,180,0,1);
REPLACE INTO `gameobject` VALUES (27765,187264,530,1,11876.0,-7302.41,0.496499,2.92824,0.0,0.0,0.994316,0.106472,180,0,1);
REPLACE INTO `gameobject` VALUES (27766,187264,530,1,11904.5,-7335.4,0.0389657,1.33546,0.0,0.0,0.619204,0.78523,180,0,1);
REPLACE INTO `gameobject` VALUES (27767,187264,530,1,11910.7,-7345.79,0.0739558,3.72621,0.0,0.0,0.957581,-0.288163,180,0,1);
REPLACE INTO `gameobject` VALUES (27768,187264,530,1,11983.7,-7307.9,-0.44332,4.59643,0.0,0.0,0.746893,-0.664944,180,0,1);
REPLACE INTO `gameobject` VALUES (27769,187264,530,1,12042.0,-7355.52,-0.200113,2.60545,0.0,0.0,0.964284,0.264872,180,0,1);
REPLACE INTO `gameobject` VALUES (27770,187264,530,1,12051.7,-7362.3,0.137042,2.67457,0.0,0.0,0.972859,0.231397,180,0,1);
REPLACE INTO `gameobject` VALUES (27771,187264,530,1,12056.3,-7373.7,-0.247891,2.24181,0.0,0.0,0.900495,0.434867,180,0,1);
REPLACE INTO `gameobject` VALUES (27772,187264,530,1,12096.2,-7389.97,0.4531,3.69165,0.0,0.0,0.962417,-0.271576,180,0,1);
REPLACE INTO `gameobject` VALUES (27773,187264,530,1,12103.0,-7391.86,0.389581,3.62882,0.0,0.0,0.970472,-0.241212,180,0,1);
REPLACE INTO `gameobject` VALUES (27778,187264,530,1,12151.5,-7386.17,-0.0319182,5.72976,0.0,0.0,0.273195,-0.961959,180,0,1);
REPLACE INTO `gameobject` VALUES (27779,187264,530,1,12267.0,-7343.11,-0.149998,5.06847,0.0,0.0,0.570701,-0.821158,180,0,1);
REPLACE INTO `gameobject` VALUES (27780,187264,530,1,12273.1,-7347.34,0.0332886,3.41913,0.0,0.0,0.990387,-0.138325,180,0,1);
REPLACE INTO `gameobject` VALUES (27781,187264,530,1,12277.3,-7354.07,0.0902594,2.51435,0.0,0.0,0.951223,0.308504,180,0,1);
REPLACE INTO `gameobject` VALUES (27782,187264,530,1,12300.9,-7375.88,0.53353,4.26972,0.0,0.0,0.845089,-0.534625,180,0,1);
REPLACE INTO `gameobject` VALUES (27783,187264,530,1,12309.5,-7384.56,0.670447,2.85915,0.0,0.0,0.990045,0.140754,180,0,1);
REPLACE INTO `gameobject` VALUES (27784,187264,530,1,12360.3,-7406.1,0.0242472,4.65928,0.0,0.0,0.725633,-0.688082,180,0,1);
REPLACE INTO `gameobject` VALUES (27785,187264,530,1,12371.2,-7407.37,-0.286348,5.64181,0.0,0.0,0.315218,-0.949019,180,0,1);
REPLACE INTO `gameobject` VALUES (27786,187264,530,1,12373.0,-7343.31,-0.0671595,6.28034,0.0,0.0,0.00142399,-0.999999,180,0,1);
REPLACE INTO `gameobject` VALUES (27787,187264,530,1,12373.1,-7335.79,-0.209474,5.42818,0.0,0.0,0.414597,-0.910005,180,0,1);
REPLACE INTO `gameobject` VALUES (27788,187264,530,1,12380.4,-7350.36,-0.781412,4.44801,0.0,0.0,0.794139,-0.607736,180,0,1);
REPLACE INTO `gameobject` VALUES (27789,187264,530,1,12422.2,-7395.14,1.09432,2.07768,0.0,0.0,0.861816,0.507221,180,0,1);
REPLACE INTO `gameobject` VALUES (27790,187264,530,1,12425.9,-7329.82,-0.562498,1.92453,0.0,0.0,0.820487,0.571665,180,0,1);
REPLACE INTO `gameobject` VALUES (27791,187264,530,1,12436.8,-7456.57,0.0951019,5.27032,0.0,0.0,0.48506,-0.874481,180,0,1);
REPLACE INTO `gameobject` VALUES (27792,187264,530,1,12447.6,-7463.19,0.376171,3.33825,0.0,0.0,0.99517,-0.0981701,180,0,1);
REPLACE INTO `gameobject` VALUES (27793,187264,530,1,12477.4,-7460.92,0.726978,5.36458,0.0,0.0,0.443325,-0.896361,180,0,1);
REPLACE INTO `gameobject` VALUES (27794,187264,530,1,12489.6,-7461.15,0.507408,3.78593,0.0,0.0,0.948551,-0.316625,180,0,1);
REPLACE INTO `gameobject` VALUES (27795,187264,530,1,12527.2,-7445.04,0.0984223,4.82423,0.0,0.0,0.666481,-0.745522,180,0,1);
REPLACE INTO `gameobject` VALUES (27796,187264,530,1,12536.0,-7411.68,0.682582,1.01898,0.0,0.0,0.487732,0.872994,180,0,1);
REPLACE INTO `gameobject` VALUES (27797,187264,530,1,12545.0,-7350.27,-0.186935,1.2546,0.0,0.0,0.586962,0.809615,180,0,1);
REPLACE INTO `gameobject` VALUES (27798,187120,530,1,12656.0,-6922.25,8.42259,5.88672,0.0,0.0,0.196938,-0.980416,180,0,1);
REPLACE INTO `gameobject` VALUES (27799,187120,530,1,12669.9,-6914.38,8.81931,5.64089,0.0,0.0,0.315656,-0.948874,180,0,1);
REPLACE INTO `gameobject` VALUES (27800,187355,530,1,12730.4,-7189.04,10.9953,4.58264,0.0,0.0,0.751459,-0.65978,180,0,1);
REPLACE INTO `gameobject` VALUES (27801,187354,530,1,12729.8,-7189.11,10.9953,1.92486,0.0,0.0,0.820581,0.57153,180,0,1);
REPLACE INTO `gameobject` VALUES (27802,187333,530,1,13006.9,-6687.63,9.33114,2.04454,0.0,0.0,0.853294,0.52143,120,0,1);
REPLACE INTO `gameobject` VALUES (27803,187333,530,1,12910.0,-6567.19,10.7515,4.11956,0.0,0.0,0.88281,-0.46973,120,0,1);
REPLACE INTO `gameobject` VALUES (27804,187333,530,1,12792.4,-6452.4,9.03202,5.28823,0.0,0.0,0.477209,-0.87879,120,0,1);
REPLACE INTO `gameobject` VALUES (27805,187333,530,1,12590.4,-6437.78,8.91063,5.6503,0.0,0.0,0.311187,-0.950349,120,0,1);
REPLACE INTO `gameobject` VALUES (27806,187333,530,1,12990.8,-6722.41,7.17799,3.07184,0.0,0.0,0.999392,0.034869,120,0,1);
REPLACE INTO `gameobject` VALUES (27807,187333,530,1,12684.6,-6507.9,7.03268,6.06028,0.0,0.0,0.111222,-0.993796,120,0,1);
REPLACE INTO `gameobject` VALUES (27808,187333,530,1,12445.9,-6414.55,5.00344,0.729782,0.0,0.0,0.356848,0.934163,120,0,1);
REPLACE INTO `gameobject` VALUES (27809,188081,530,1,12583.1,-6915.61,4.60073,3.08056,0.0,0.0,0.999534,0.0305111,25,0,1);
REPLACE INTO `gameobject` VALUES (27810,187111,530,1,12664.7,-6986.3,14.576,3.28624,0.0,0.0,0.997386,-0.072261,300,0,1);
REPLACE INTO `gameobject` VALUES (27811,187112,530,1,12667.9,-6982.81,14.573,6.23526,0.0,0.0,0.0239615,-0.999713,300,0,1);
-- REPLACE INTO `gameobject` VALUES (27825,401003,530,1,12664.4,-6987.84,14.6622,1.74862,0.0,0.0,0.767102,0.641525,250,0,1);
-- REPLACE INTO `gameobject` VALUES (27826,401004,530,1,12582.1,-6916.41,4.60065,3.20143,0.0,0.0,0.999552,-0.029916,250,0,1);
REPLACE INTO `gameobject` VALUES (27827,187357,530,1,12797.1,-7116.73,5.41653,-2.33874,0.0,0.0,0.920505,-0.390731,0,0,0);
REPLACE INTO `gameobject` VALUES (27828,187356,530,1,12793.3,-7112.08,5.41654,-2.33874,0.0,0.0,0.920505,-0.390731,0,0,0);
REPLACE INTO `gameobject` VALUES (27829,187363,530,1,12769.5,-6898.52,20.7102,-2.51327,0.0,0.0,0.951057,-0.309017,0,0,0);
REPLACE INTO `gameobject` VALUES (27830,187356,530,1,12784.4,-7051.83,4.8097,-2.46091,0.0,0.0,0.942641,-0.333807,0,0,0);
REPLACE INTO `gameobject` VALUES (27831,187356,530,1,12795.0,-6966.03,15.4883,2.30383,0.0,0.0,0.913545,0.406737,0,0,0);
REPLACE INTO `gameobject` VALUES (27832,187363,530,1,12807.5,-6870.46,28.3581,0.575959,0.0,0.0,0.284015,0.95882,0,0,0);
REPLACE INTO `gameobject` VALUES (27833,187357,530,1,12763.2,-6891.48,12.9921,-2.72271,0.0,0.0,0.978148,-0.207912,0,0,0);
REPLACE INTO `gameobject` VALUES (27834,187357,530,1,12662.6,-6965.48,14.5475,-2.51327,0.0,0.0,0.951057,-0.309017,0,0,0);
REPLACE INTO `gameobject` VALUES (27835,187363,530,1,12706.9,-6940.88,23.7452,0.593412,0.0,0.0,0.292372,0.956305,0,0,0);
REPLACE INTO `gameobject` VALUES (27836,187357,530,1,12857.1,-6989.39,3.43268,0.872665,0.0,0.0,0.422618,0.906308,0,0,0);
REPLACE INTO `gameobject` VALUES (27837,187357,530,1,12707.9,-6897.73,12.4043,-0.855212,0.0,0.0,0.414693,-0.909961,0,0,0);
REPLACE INTO `gameobject` VALUES (27838,187357,530,1,12713.5,-6940.06,14.1267,0.506145,0.0,0.0,0.25038,0.968148,0,0,0);
REPLACE INTO `gameobject` VALUES (27839,187356,530,1,12774.0,-6906.35,13.4713,-2.53073,0.0,0.0,0.953717,-0.300706,0,0,0);
REPLACE INTO `gameobject` VALUES (27840,187356,530,1,12637.3,-6823.0,12.9209,2.30383,0.0,0.0,0.913545,0.406737,0,0,0);
REPLACE INTO `gameobject` VALUES (27841,187356,530,1,12721.8,-6884.64,12.8955,-0.837758,0.0,0.0,0.406737,-0.913545,0,0,0);
REPLACE INTO `gameobject` VALUES (27842,187357,530,1,12651.1,-6810.05,13.0358,2.23402,0.0,0.0,0.898794,0.438371,0,0,0);
REPLACE INTO `gameobject` VALUES (27843,187356,530,1,12669.3,-6974.52,15.0437,-2.56563,0.0,0.0,0.95882,-0.284015,0,0,0);
REPLACE INTO `gameobject` VALUES (27844,187356,530,1,12709.9,-6934.53,14.4047,0.593412,0.0,0.0,0.292372,0.956305,0,0,0);
REPLACE INTO `gameobject` VALUES (27845,187113,530,1,12793.1,-6966.52,15.4447,2.37358,0.0,0.0,0.927172,0.374636,300,0,1);
REPLACE INTO `gameobject` VALUES (27846,187114,530,1,12848.2,-7011.65,18.5925,1.70367,0.0,0.0,0.75249,0.658603,300,0,1);
REPLACE INTO `gameobject` VALUES (27847,187078,530,1,12630.3,-6973.65,15.8386,4.40555,0.0,0.0,0.806859,-0.590744,300,0,1);
REPLACE INTO `gameobject` VALUES (27848,187078,530,1,12690.1,-7007.15,21.3425,3.49842,0.0,0.0,0.984126,-0.177469,300,0,1);
REPLACE INTO `gameobject` VALUES (27849,187078,530,1,12696.5,-6929.97,14.5332,0.387862,0.0,0.0,0.192718,0.981254,25,0,1);
REPLACE INTO `gameobject` VALUES (27850,187078,530,1,12723.2,-6973.3,18.3323,4.26419,0.0,0.0,0.846566,-0.532284,300,0,1);
REPLACE INTO `gameobject` VALUES (27851,187078,530,1,12751.4,-6882.72,13.5636,3.62094,0.0,0.0,0.971416,-0.237385,300,0,1);
REPLACE INTO `gameobject` VALUES (27852,187078,530,1,12765.0,-7090.63,6.44272,3.73053,0.0,0.0,0.956957,-0.29023,25,0,1);
REPLACE INTO `gameobject` VALUES (27853,187078,530,1,12775.8,-7005.19,13.0259,1.59974,0.0,0.0,0.717265,0.696801,25,0,1);
REPLACE INTO `gameobject` VALUES (27855,187078,530,1,12785.0,-6853.72,14.1508,4.7605,0.0,0.0,0.689893,-0.723912,180,0,1);
REPLACE INTO `gameobject` VALUES (27856,187078,530,1,12789.2,-6919.12,13.6691,3.54314,0.0,0.0,0.979913,-0.199427,180,0,1);
REPLACE INTO `gameobject` VALUES (27858,187078,530,1,12819.3,-6883.41,12.7846,3.19049,0.0,0.0,0.999701,-0.0244483,180,0,1);
REPLACE INTO `gameobject` VALUES (27859,187078,530,1,12821.0,-6967.57,10.4511,0.335245,0.0,0.0,0.166839,0.985984,25,0,1);
REPLACE INTO `gameobject` VALUES (27860,187078,530,1,12912.5,-6939.06,3.77427,4.26303,0.0,0.0,0.846874,-0.531793,25,0,1);
REPLACE INTO `gameobject` VALUES (27861,187357,530,1,12782.2,-6978.14,15.7882,2.26908,0.0,0.0,0.906341,0.422548,25,0,1);
REPLACE INTO `gameobject` VALUES (27862,187116,530,1,12741.8,-6915.58,12.7101,6.27286,0.0,0.0,0.00516261,-0.999987,250,0,1);
-- REPLACE INTO `gameobject` VALUES (27863,400081,530,1,12181.7,-7337.9,3.64455,3.51007,0.0,0.0,0.983076,-0.1832,25,0,1);
-- REPLACE INTO `gameobject` VALUES (27864,400082,530,1,12582.7,-6916.06,4.60116,3.18493,0.0,0.0,0.999765,-0.021665,25,0,1);
update creature set modelid=22911 where id=24938;
update creature set modelid=22753 where id=25115;
delete from creature_addon where guid in (select guid from creature where id in (25003, 25315, 25608) );
delete from creature where id in (25003, 25315, 25608);

-- last minute fixes
DELETE FROM `creature` WHERE `id`= '17537';
UPDATE `creature_template` SET `pickpocketloot`=23386 WHERE `entry`=23386;
UPDATE `quest_template` SET `ReqSpellCast1`=0 WHERE `entry`=10854;
REPLACE INTO `page_text` (`entry` ,`text` ,`next_page`) VALUES (3076, '<No recognizable words remain on this badly burnt page.>', 0);

-- last min forum
-- Smuggled Mana Cell
DELETE FROM `gameobject_loot_template` WHERE `entry` = '22992';
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES ('22992', '34246', '-100', '0', '1', '1', '0', '0', '0');
UPDATE `gameobject_template` SET `flags` = `flags`|'4' WHERE `entry` = '187039';

-- Remove old learning spells for Lockpicking
DELETE FROM `npc_trainer` WHERE `spell` IN ('1810', '6460');
-- Pick Lock spellcost was different at each trainer, one trainer had reqlevel 0
UPDATE `npc_trainer` SET `spellcost` = '2000', `reqlevel` = '16' WHERE `spell` = '1804';

UPDATE creature_loot_template SET ChanceOrQuestchance= -100 WHERE item=23250;


DELETE FROM `creature_loot_template` WHERE `item` = '12799';

-- quest Apothecary Antonivich
Update `quest_template` set `requestItemsText`='Good day, $N. And how is your stay in Hellfire Peninsula? I trust it has been fruitful...', `offerRewardText`='Ah, a report from Albreck? Very good. The Royal Apothecary Society works feverishly to determine how the orcs of Hellfire Peninsula became fel orcs. Their betrayal is unforgivable... and we must ensure that our orc friends are forever safe from future corruption.' where `entry`='10835';

-- quest Burn It Up... For the Horde!
Update `quest_template` set `requestItemsText`='I''ve been looking for the telltale signs of burning cannons -- smoke plumes, or the cries of burning fel orcs...$B$BAny luck on your mission?', `offerRewardText`='I thought so! I couldn''t quite make out the destruction from here, but I can imagine how it must have looked. Splendid!$B$BWell done, $N. Thrallmar command will be happy to hear of your success!' where `entry`='10087';

-- last min forum end

-- forum starts
-- Strange Gong for Zul'Aman doesnt work need SD2
DELETE FROM `gameobject` WHERE `id`=187359;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(20584, 187359, 568, 1, 134.654, 1641.46, 42.0217, 3.22909, 0, 0, 0.999043, -0.0437352, 25, 0, 1);
-- Lumber Pile offi spawns by przemratajczak
DELETE FROM `gameobject` WHERE `id` IN ('181686', '181687');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(27825,'181686','1','1','2321.44','-3219.12','111.41','2.50748','0','0','0.950158','0.311769','125','100','1'),
(27826,'181686','1','1','2171.54','-3270.43','107.861','4.1537','0','0','0.874665','-0.484727','125','100','1'),
(27863,'181686','1','1','2287.18','-3244.99','108.514','6.12897','0','0','0.0770336','-0.997028','125','100','1'),
(27864,'181686','1','1','2330.81','-3308.22','103.76','3.67539','0','0','0.964593','-0.263743','125','100','1'),
(27865,'181686','1','1','2337.77','-3305.39','103.864','3.21751','0','0','0.99928','-0.0379481','125','100','1'),
(27866,'181686','1','1','2198.83','-3275.82','104.249','1.3145','0','0','0.610942','0.791675','125','100','1'),
(27867,'181686','1','1','2221.89','-3323.49','97.7415','4.44039','0','0','0.796449','-0.604706','125','100','1'),
(27868,'181687','1','1','2274.12','-3463.42','104.985','5.23599','0','0','0.499997','-0.866027','125','100','1'),
(27869,'181687','1','1','2258.49','-3411.94','100.149','3.42173','0','0','0.990206','-0.139613','125','100','1'),
(27870,'181687','1','1','2279.44','-3394.71','100.667','4.81425','0','0','0.670193','-0.742187','125','100','1'),
(27871,'181687','1','1','2177.97','-3378.67','95.2331','4.70588','0','0','0.709406','-0.7048','125','100','1'),
(27872,'181687','1','1','2236.65','-3391.83','93.0131','3.30081','0','0','0.996833','-0.0795223','125','100','1'),
(27873,'181687','1','1','2354.97','-3436.89','110.192','5.62559','0','0','0.322908','-0.946431','125','100','1'),
(27874,'181686','1','1','2368.24','-3415.28','109.938','3.99982','0','0','0.909335','-0.416064','125','100','1'),
(27875,'181687','1','1','2466.29','-3425.45','100.611','2.3332','0','0','0.91942','0.393278','125','100','1'),
(27876,'181687','1','1','2459.31','-3455.38','94.9126','1.83448','0','0','0.793925','0.608015','125','100','1'),
(27877,'181686','1','1','2478.06','-3482.39','92.6503','2.15649','0','0','0.881129','0.472876','125','100','1'),
(27878,'181686','1','1','2462.72','-3499.18','92.894','5.88713','0','0','0.196736','-0.980457','125','100','1'),
(27879,'181686','1','1','2554.15','-3390.19','103.366','4.29673','0','0','0.837794','-0.545987','125','100','1'),
(27880,'181687','1','1','2540.88','-3374.77','102.284','5.93899','0','0','0.171249','-0.985228','125','100','1'),
(27881,'181687','1','1','2540.54','-3375.68','102.21','5.93506','0','0','0.173183','-0.98489','125','100','1'),
(27882,'181687','1','1','2666.21','-3355.99','119.989','5.74344','0','0','0.266609','-0.963805','125','100','1'),
(27883,'181687','1','1','2613.26','-3252.05','141.158','3.00634','0','0','0.997714','0.0675767','125','100','1'),
(27884,'181687','1','1','2647.16','-3271.42','140.242','0.535474','0','0','0.26455','0.964372','125','100','1'),
(27885,'181687','1','1','2560','-3308.04','125.321','0.0720751','0','0','0.0360297','0.999351','125','100','1'),
(27886,'181687','1','1','2484.96','-3316.45','115.011','4.25435','0','0','0.849174','-0.528113','125','100','1'),
(27887,'181686','1','1','2513.71','-3299.62','120.082','5.511','0','0','0.376574','-0.926387','125','100','1'),
(27888,'181687','1','1','2469.96','-3184.12','119.285','1.18345','0','0','0.557795','0.829979','125','100','1'),
(27889,'181687','1','1','2400.48','-3229.83','112.29','0.116895','0','0','0.0584144','0.998292','125','100','1'),
(27890,'181687','1','1','2400.6','-3228.87','112.367','0.134174','0','0','0.0670367','0.997751','125','100','1'),
(27891,'181686','1','1','2444.28','-3141.26','125.783','1.361','0','0','0.629184','0.777257','125','100','1'),
(27892,'181687','1','1','2399.73','-3130.86','124.515','2.94202','0','0','0.995025','0.0996215','125','100','1'),
(27893,'181686','1','1','2343.11','-3170.62','118.353','4.20261','0','0','0.86255','-0.505971','125','100','1'),
(27894,'181687','1','1','2356.54','-3088.83','125.244','1.51654','0','0','0.687668','0.726025','125','100','1'),
(27895,'181686','1','1','2356.68','-3088.8','124.121','1.58173','0','0','0.710962','0.70323','125','100','1'),
(27896,'181686','1','1','2356.54','-3088.83','124.682','1.50476','0','0','0.683379','0.730063','125','100','1'),
(27897,'181687','1','1','2281.06','-3163.09','119.772','0.982477','0','0','0.471718','0.881749','125','100','1');
DELETE FROM `gameobject` where `id` = 187039;
REPLACE INTO `gameobject` (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1,rotation2, rotation3, spawntimesecs, animprogress, state) VALUE
(28115, 187039, 530, 1, 3975.32, 6078.22, 266.584, 1.28244, 0, 0, 0.598174, 0.801366, 300, 100, 1),
(28282, 187039, 530, 1, 3932.46, 6028.16, 269.179, 6.05923, 0, 0, 0.111743, -0.993737, 300,100, 1),
(47209, 187039, 530, 1, 3925.84, 6095.39, 271.076, 0.770403, 0, 0, 0.375746, 0.926723, 300, 100, 1),
(47210, 187039, 530, 1, 3841.06, 6025.76, 270.227, 4.70759, 0, 0, 0.708802, -0.705407, 300, 100, 1),
(47211, 187039, 530, 1, 3802.5, 6071.06, 267.132, 2.83991, 0, 0, 0.988645, 0.15027, 300, 100,1),
(47212, 187039, 530, 1, 3809.84, 6123.52, 265.946, 5.3948, 0, 0, 0.429729, -0.902958, 300, 100, 1),
(47213, 187039, 530, 1, 3783.95, 6084.12, 266.18, 0.831637, 0, 0, 0.403939, 0.914786, 300, 100, 1),
(47214, 187039, 530, 1, 3792.39, 6161.76, 266.065, 2.40636, 0, 0, 0.933187, 0.359392, 300, 100,1),
(47215, 187039, 530, 1, 3765.71, 6170.88, 266.224, 6.2501, 0, 0, 0.0165428, -0.999863, 300, 100, 1),
(47216, 187039, 530, 1, 3720.59, 6183.41, 265.501, 2.78335, 0, 0, 0.984001, 0.178164, 300, 100, 1),
(47217, 187039, 530, 1, 3686.08, 6173.06, 266.134, 1.90449, 0, 0, 0.814719, 0.579855, 300, 100, 1),
(47218, 187039, 530, 1, 3712.68, 6107.97, 266.461, 4.26382, 0, 0, 0.846663, -0.532129, 300, 100, 1),
(47219, 187039, 530, 1, 3727.06, 5909.39, 266.414, 3.07395, 0, 0, 0.999428, 0.0338166, 300, 100, 1);
-- Atal'ai Statue
DELETE FROM `gameobject` WHERE `id`=148830;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(27898, 148830, 109, 1, -515.553, 95.2582, -148.74, -1.50098, 0, 0, 0.681998, -0.731354, 180, 100, 1);
-- Atal'ai Statue
DELETE FROM `gameobject` WHERE `id`=148831;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(27899, 148831, 109, 1, -419.849, 94.4837, -148.74, 1.53589, 0, 0, 0.694658, 0.71934, 180, 100, 1);
-- Atal'ai Statue
DELETE FROM `gameobject` WHERE `id`=148832;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(28111, 148832, 109, 1, -491.4, 135.97, -148.74, -2.68781, 0, 0, 0.97437, -0.224951, 180, 100, 1);
-- Atal'ai Statue
DELETE FROM `gameobject` WHERE `id`=148833;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(28112, 148833, 109, 1, -491.491, 53.4818, -148.74, -0.610865, 0, 0, 0.300706, -0.953717, 180, 100, 1);
-- Atal'ai Statue
DELETE FROM `gameobject` WHERE `id`=148834;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(28113, 148834, 109, 1, -443.855, 136.101, -148.74, 2.53073, 0, 0, 0.953717, 0.300706, 180, 100, 1);
-- Atal'ai Statue
DELETE FROM `gameobject` WHERE `id`=148835;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(28114, 148835, 109, 1, -443.417, 53.8312, -148.74, 0.471239, 0, 0, 0.233445, 0.97237, 180, 100, 1);
-- Ethereum Nullifier spawns
DELETE FROM `creature` WHERE `id`=22822;
REPLACE INTO `creature` (`guid`,`id`,`map`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`, `curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(94439, 22822, 530, 0, 0, 3623.95, 2224.99, 105.777, 0.687946, 360, 0, 0, 6986, 0, 0, 0),
(94440, 22822, 530, 0, 0, 3602.21, 2320.32, 84.6047, 4.827, 360, 0, 0, 6986, 0, 0, 0),
(94441, 22822, 530, 0, 0, 3656.92, 2373.05, 88.5391, 4.31649, 360, 0, 0, 6986, 0, 0, 0),
(94442, 22822, 530, 0, 0, 3640.48, 2346.34, 92.6645, 3.4447, 360, 0, 0, 6986, 0, 0, 0),
(94443, 22822, 530, 0, 0, 4306.48, 1880.22, 128.064, 3.62933, 360, 0, 0, 6986, 0, 0, 0),
(94444, 22822, 530, 0, 0, 3865.85, 1805.37, 229.494, 0.31496, 360, 0, 0, 6986, 0, 0, 0),
(94445, 22822, 530, 0, 0, 4361.1, 2038.16, 115.131, 3.15416, 360, 0, 0, 6986, 0, 0, 0),
(94446, 22822, 530, 0, 0, 4304.71, 2082.27, 133.99, 6.11512, 360, 0, 0, 6986, 0, 0, 0),
(94447, 22822, 530, 0, 0, 4291.2, 2009.75, 128.247, 3.91208, 360, 0, 0, 6986, 0, 0, 0),
(94448, 22822, 530, 0, 0, 4168.84, 1824.39, 147.881, 0.17751, 360, 0, 0, 6986, 0, 0, 0),
(94449, 22822, 530, 0, 0, 4298.99, 1754.72, 116.626, 3.92386, 360, 0, 0, 6986, 0, 0, 0),
(94450, 22822, 530, 0, 0, 4226.86, 1796.83, 136.298, 4.68962, 360, 0, 0, 6986, 0, 0, 0),
(94451, 22822, 530, 0, 0, 4304.44, 1721.33, 111.923, 2.71042, 360, 0, 0, 6986, 0, 0, 0),
(94452, 22822, 530, 0, 0, 4286.84, 1705.55, 110.233, 1.55196, 360, 0, 0, 6986, 0, 0, 0),
(94453, 22822, 530, 0, 0, 3798.23, 1654.34, 137.78, 3.78642, 360, 0, 0, 6986, 0, 0, 0),
(94454, 22822, 530, 0, 0, 3741.09, 1684.48, 139.013, 0.538806, 360, 0, 0, 6986, 0, 0, 0),
(94455, 22822, 530, 0, 0, 3754.7, 1728.55, 147.159, 6.02482, 360, 0, 0, 6986, 0, 0, 0),
(94456, 22822, 530, 0, 0, 3738.92, 1724.65, 143.465, 3.42908, 360, 0, 0, 6986, 0, 0, 0),
(94457, 22822, 530, 0, 0, 3564.44, 2231.77, 91.075, 4.92125, 360, 0, 0, 6986, 0, 0, 0),
(94458, 22822, 530, 0, 0, 3663.2, 1787.57, 126.156, 0.574154, 360, 0, 0, 6986, 0, 0, 0),
(94459, 22822, 530, 0, 0, 3574.25, 1826.95, 109.534, 1.23389, 360, 0, 0, 6986, 0, 0, 0),
(94460, 22822, 530, 0, 0, 3612.29, 1851.63, 113.282, 4.77211, 360, 0, 0, 6986, 0, 0, 0),
(94461, 22822, 530, 0, 0, 3676.62, 1902.61, 119.987, 2.72223, 360, 0, 0, 6986, 0, 0, 0),
(94462, 22822, 530, 0, 0, 3600.72, 2044.21, 103.371, 1.67373, 360, 0, 0, 6986, 0, 0, 0),
(94463, 22822, 530, 0, 0, 3608.25, 2046.67, 105.723, 1.21428, 360, 0, 0, 6986, 0, 0, 0),
(94464, 22822, 530, 0, 0, 3636.18, 2164.9, 114.142, 2.40023, 360, 0, 0, 6986, 0, 0, 0),
(94465, 22822, 530, 0, 0, 3587.82, 2181.7, 95.407, 6.17407, 360, 0, 0, 6986, 0, 0, 0),
(94466, 22822, 530, 0, 0, 3591.4, 1810.96, 111.546, 2.67902, 360, 0, 0, 6986, 0, 0, 0),
(94467, 22822, 530, 0, 0, 3604.69, 1978.68, 108.104, 5.54955, 360, 0, 0, 6986, 0, 0, 0),
(94468, 22822, 530, 0, 0, 3576.63, 1993.81, 99.5505, 4.94087, 360, 0, 0, 6986, 0, 0, 0),
(94469, 22822, 530, 0, 0, 3567.88, 2186.46, 87.2871, 5.93833, 360, 0, 0, 6986, 0, 0, 0),
(94470, 22822, 530, 0, 0, 3584.08, 2300.47, 73.296, 5.22362, 360, 0, 0, 6986, 0, 0, 0),
(94471, 22822, 530, 0, 0, 3730.52, 2231.31, 128.261, 0.248253, 360, 0, 0, 6986, 0, 0, 0),
(94472, 22822, 530, 0, 0, 3756.96, 2233.31, 132.258, 2.75368, 360, 0, 0, 6986, 0, 0, 0),
(94473, 22822, 530, 0, 0, 3718.5, 2268.29, 121.473, 5.38083, 360, 0, 0, 6986, 0, 0, 0),
(94474, 22822, 530, 0, 0, 3675.37, 2277.2, 111.502, 1.71303, 360, 0, 0, 6986, 0, 0, 0);

-- Seer Kanai spawn
delete from `creature` where `id` = 23158;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(94475, 23158, 564, 1, 0, 2147, 786.158, 972.771, 56.7196, 3.91706, 2400, 0, 0, 15053, 0, 0, 0);

-- Fizim Blastwrench
REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(94476, 20499, 1, 0, 0, -1375.33, -103.74, 158.935, 2.74403, 6300, 0, 0, 4200, 0, 0, 0);
UPDATE `creature_template` SET `npcflag` = `npcflag`|1048576, `flags` = `flags`|512 WHERE `entry` = 20499;
-- Max Luna
REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(94477, 19859, 1, 0, 0, -7117.79, -3779.96, 8.70093, 0.412232, 6300, 0, 0, 7500, 0, 0, 0);
UPDATE `creature_template` SET `npcflag` = `npcflag`|1048576, `flags` = `flags`|512 WHERE `entry` = 19859;
-- Zeggon Botsnap
REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(94478, 19912, 1, 0, 0, 1996.43, -4789.68, 56.7645, 0.734321, 25, 0, 0, 7500, 0, 0, 0);

-- brend
DELETE FROM `creature` WHERE `id`=23762;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(94479, 23762, 530, 1, 0, 0, 6735.54, -7559.46, 127.102, 1.57651, 900, 0, 0, 3700, 0, 0, 1);
-- Kurzel
DELETE FROM `creature` WHERE `id`=23748;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(94480, 23748, 530, 1, 0, 0, 6788.71, -7538.12, 126.109, 3.25117, 900, 0, 1, 8200, 0, 0, 2);
-- Marge
DELETE FROM `creature` WHERE `id`=23764;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(94481, 23764, 530, 1, 0, 0, 6739.72, -7559.07, 126.472, 2.10952, 900, 0, 0, 9300, 0, 0, 0);
-- Turgore
DELETE FROM `creature` WHERE `id`=23565;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(94482, 23565, 530, 1, 0, 0, 6797.41, -7537.59, 126.194, 3.1079, 900, 0, 0, 820, 0, 0, 0);
-- morgom
DELETE FROM `creature` WHERE `id`=23565;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(94483, 23565, 530, 1, 0, 0, 6797.41, -7537.59, 126.194, 3.1079, 900, 0, 0, 820, 0, 0, 0);

-- Mack spawned plus WPs
DELETE FROM `creature` WHERE `id`=23718;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(94484, 23718, 530, 1, 0, 0, 6743.03, -7551.57, 126.327, 3.40335, 900, 0, 0, 12000, 0, 0, 2);
DELETE FROM `creature_movement` WHERE `id`=125545;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(94484, 1, 6740.69, -7607.24, 126.194, 20000, 'Ahh, my precious Ameenah! How wonderful to see you again.', '', '', '', '', 1, 0, 0, 4.01019, 0, 0),
(94484, 2, 6740.69, -7607.24, 126.194, 15000, 'Yer wearin down, princess, I can sense it!', '', '', '', '', 1, 0, 0, 4.01019, 0, 0),
(94484, 3, 6771.95, -7585.33, 127.31, 10000, 'Hmm, don\'t mind if I do!', '', '', '', '', 68, 0, 0, 0.534801, 0, 0),
(94484, 4, 6751.85, -7549.6, 126.132, 4000, '', '', '', '', '', 61, 0, 0, 2.59961, 0, 0),
(94484, 5, 6743.03, -7551.57, 126.327, 1200000, '', '', '', '', '', 0, 0, 0, 3.40335, 0, 0);

-- Andrissa Heartspear (Eye of the Storm Battlemaster), Zeggon Botsnap (Arena Battlemaster)
DELETE FROM `creature` WHERE `id` IN ('19912', '20385');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
(94485,'19912','1','1','0','0','1988.29','-4813.63','56.7654','1.65368','25','0','0','10020','0','0','0'),
(94486,'20385','1','1','0','1546','2002.21','-4789.93','56.7668','3.13573','25','0','0','7100','0','0','0');

-- Althallen Brightblade (Eye of the Storm Battlemaster), Fizim Blastwrench (Arena Battlemaster)
DELETE FROM `creature` WHERE `id` IN ('20388', '20499');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(94487,'20388','1','1','0','1552','-1384.04','-100.771','158.935','2.40813','25','0','0','11000','0','0','0'),
(94488,'20499','1','1','0','0','-1382.96','-98.6871','158.935','2.85973','25','0','0','11000','0','0','0');

-- Okuno spawn
DELETE FROM `creature` WHERE `id` = '23159';
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(94489, '23159', '564', '1', '0', '0', '409.958', '391.689', '118.538', '6.16139', '25', '0', '0', '15324', '0', '0', '0');

-- Bodley retrieved spawn from UDB 0.8.1
DELETE FROM `creature` WHERE `id` = '16033';
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('94490', '16033', '0', '1', '0', '0', '-7534.79', '-1212.62', '285.44', '5.2131', '25', '0', '0', '3600', '5751', '0', '0');

DELETE FROM `creature` WHERE id = 13016;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('52988','13016','369','1','0','0','-47.1974','41.9389','-13.8634','0.139822','1','10','0','1','0','0','1'),
(94494,'13016','369','1','0','0','21.3299','25.4681','-4.29735','2.55038','1','10','0','1','0','0','1'),
(94491,'13016','369','1','0','0','-33.0721','71.5201','-4.29736','1.48675','1','0','0','1','0','0','2'),
(94493,'13016','369','1','0','0','35.2117','16.0156','-4.29664','1.87101','1','10','0','1','0','0','1'),
(94495,'13016','369','1','0','0','28.3432','-18.4329','-4.29664','1.57099','1','10','0','1','0','0','1'),
(94496,'13016','369','1','0','0','-56.91','-14.3913','-4.29736','2.53387','1','10','0','1','0','0','1'),
(94492,'13016','369','1','0','0','13.6699','80.6694','-4.29734','4.79662','1','10','0','1','0','0','2'),
(94497,'13016','369','1','0','0','-72.5352','-21.7311','-4.29736','3.14963','1','10','0','1','0','0','1'),
(94498,'13016','369','1','0','0','-74.642','23.6852','-4.29736','1.85529','1','10','0','1','0','0','1'),
(94499,'13016','369','1','0','0','-64.5688','12.0402','-4.29735','6.01711','1','10','0','1','0','0','1'),
(94500,'13016','369','1','0','0','-43.0466','-5.68566','-13.8634','1.77597','1','10','0','1','0','0','1'),
(94501,'13016','369','1','0','0','-40.713','-32.7486','-4.29735','4.30648','1','10','0','1','0','0','1'),
(94502,'13016','369','1','0','0','27.0473','1.40549','-4.29616','5.5639','1','10','0','1','0','0','1');
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `model1`, `model2`) VALUES
(94491,'1','-35.4841','-30.2711','-4.29708','4.73437','0','0'),
(94491,'2','-56.0961','-31.6461','-4.29708','3.23426','0','0'),
(94491,'3','-55.7774','32.6622','-4.2916','1.62812','0','0'),
(94491,'4','-54.2186','-31.3126','-4.29707','4.76579','0','0'),
(94491,'5','-34.9726','-30.6625','-4.29707','0.033761','0','0'),
(94491,'6','-32.2148','67.2404','-4.29736','1.58492','0','0'),
(94492,'1','14.6092','45.7124','-4.29734','6.26923','0','0'),
(94492,'2','31.3584','45.4554','-4.29734','0.029242','0','0'),
(94492,'3','30.5822','35.0525','-4.29734','4.72593','0','0'),
(94492,'4','15.1504','35.1517','-4.29734','3.14335','0','0'),
(94492,'5','13.7748','-29.8373','-4.2964','4.65917','0','0'),
(94492,'6','-6.1644','-28.7273','-4.2964','3.0923','0','0'),
(94492,'7','-5.80192','101.079','-4.29655','1.5647','0','0'),
(94492,'8','-6.17008','-31.1455','-4.29662','4.68273','0','0'),
(94492,'9','14.8173','-30.7478','-4.29662','6.27316','0','0'),
(94492,'10','16.4157','31.0773','-4.29735','1.63538','0','0'),
(94492,'11','29.8023','34.3541','-4.29735','6.17498','0','0'),
(94492,'12','30.9201','44.7862','-4.29735','1.48615','0','0'),
(94492,'13','15.1982','45.4932','-4.29735','3.13942','0','0'),
(94492,'14','15.2006','80.4575','-4.29735','1.56862','0','0');
-- apprentice tasserel spawn
DELETE FROM `creature` WHERE `id`=23948;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('94503', 23948, 530, 1, 0, 0, -1765.38, 5152.51, -37.2043, 3.42272, 25, 0, 0, 1, 0, 0, 0);
-- Zephyr
DELETE FROM `creature` WHERE `id`=25967;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('94504', 25967, 530, 1, 0, 0, -1747.77, 5160.32, -37.2045, 0.0125163, 25, 0, 0, 9800, 0, 0, 0);
-- Zephyr npc_gossip
DELETE FROM `npc_gossip` WHERE `textid`=12507;
INSERT `npc_gossip` (`npc_guid`,`textid`) VALUES
('94504', 12507);
-- Ysuria spawn
DELETE FROM `creature` WHERE (`id` = '27703');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('94505', '27703', '1', '1', '0', '0', '-3750.088135', '-4442.593262', '30.568748', '0.810732', '120', '0', '0', '2280', '4393', '0', '0');
-- Lorrin Foxfire spawn
DELETE FROM `creature` WHERE (`id` = '27705');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('94506', '27705', '0', '1', '0', '0', '-10469.901367', '-3321.371826', '20.964247', '1.129151', '120', '0', '0', '1100', '1332', '0', '0');



-- forum ends


-- Fix forgotten in pack 351 but good in dump
UPDATE `item_template` SET `Description`='Insert into nearest energy receptacle.' WHERE `entry`=32902;

-- random
delete from game_event where entry=100;
delete from game_event_creature where event=100;
delete from game_event_gameobject where event=100;
-- 96.314354643543535% blizzlike. "Query of the Week!" -MysqlMagazine, "Skills I sense" - Vlad
insert ignore into `spell_teleport` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) values('17159','1','6106.4','-4191.1','849.74','0.0201');
insert ignore into `spell_teleport` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) values('17160','1','5904.2','-4045.9','596.43','0.0083');
-- random isle(<all) related vendors
DELETE FROM `npc_vendor` WHERE `entry` = '18525';
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29273, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29271, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29268, 0, 0, 1037);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29275, 0, 0, 1040);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29270, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29269, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29274, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29267, 0, 0, 1037);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29272, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29266, 0, 0, 1037);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29367, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29373, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29379, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29384, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29368, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29374, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29381, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29386, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29369, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29375, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29382, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29385, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29370, 0, 0, 1027);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29376, 0, 0, 1027);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29383, 0, 0, 1027);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29387, 0, 0, 1027);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29390, 0, 0, 1642);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29388, 0, 0, 1642);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 29389, 0, 0, 1642);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 23572, 0, 0, 1909);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 30183, 0, 0, 1642);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 30770, 0, 0, 1452);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 30774, 0, 0, 1452);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 30773, 0, 0, 1454);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 30772, 0, 0, 1454);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 30779, 0, 0, 1452);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 30776, 0, 0, 1454);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 30780, 0, 0, 1452);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 30778, 0, 0, 1454);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 30768, 0, 0, 1452);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 30769, 0, 0, 1454);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 30767, 0, 0, 1452);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 30766, 0, 0, 1454);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 30763, 0, 0, 1452);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 30764, 0, 0, 1452);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 30761, 0, 0, 1454);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 30762, 0, 0, 1454);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 32083, 0, 0, 1040);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 32084, 0, 0, 1040);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 32088, 0, 0, 1040);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 32087, 0, 0, 1040);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 32086, 0, 0, 1040);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 32085, 0, 0, 1040);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 32089, 0, 0, 1040);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 32090, 0, 0, 1040);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33509, 0, 0, 1452);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33508, 0, 0, 1452);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33510, 0, 0, 1452);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33503, 0, 0, 1452);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33504, 0, 0, 1452);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33502, 0, 0, 1452);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33506, 0, 0, 1452);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33507, 0, 0, 1452);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33505, 0, 0, 1452);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33810, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33501, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33517, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33279, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33516, 0, 0, 2060);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33513, 0, 0, 2060);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33331, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33512, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33514, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33515, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33522, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33524, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33519, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33518, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33207, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33523, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33520, 0, 0, 2060);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33528, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33527, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33280, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33529, 0, 0, 2060);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33535, 0, 0, 2060);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33965, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33970, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33532, 0, 0, 2060);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33534, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33386, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33530, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33324, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33531, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33536, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33537, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33540, 0, 0, 2060);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33538, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33222, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33539, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33578, 0, 0, 2060);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33580, 0, 0, 2060);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33566, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33582, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33577, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33287, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33552, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33557, 0, 0, 2060);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33974, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33973, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33559, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33972, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33579, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33583, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33588, 0, 0, 2060);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33584, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33586, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33291, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33585, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33587, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33589, 0, 0, 2060);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33593, 0, 0, 2060);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33333, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 35324, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33304, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 35321, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33484, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33334, 0, 0, 2060);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33325, 0, 0, 2060);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33192, 0, 0, 1015);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33296, 0, 0, 2060);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 33832, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 34050, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 34049, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 34163, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 34162, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (18525, 35326, 0, 0, 2049);
DELETE FROM `npc_vendor` WHERE `entry` = '25977';
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34406, 0, 0, 2316);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34405, 0, 0, 2315);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34386, 0, 0, 2297);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34399, 0, 0, 2309);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34393, 0, 0, 2303);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34397, 0, 0, 2307);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34392, 0, 0, 2302);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34408, 0, 0, 2318);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34385, 0, 0, 2296);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34404, 0, 0, 2314);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34384, 0, 0, 2295);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34403, 0, 0, 2313);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34391, 0, 0, 2301);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34407, 0, 0, 2317);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34398, 0, 0, 2308);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34409, 0, 0, 2319);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34383, 0, 0, 2294);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34402, 0, 0, 2312);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34390, 0, 0, 2300);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34396, 0, 0, 2306);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34395, 0, 0, 2305);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34389, 0, 0, 2299);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34388, 0, 0, 2298);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34394, 0, 0, 2304);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34400, 0, 0, 2310);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34381, 0, 0, 2292);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34401, 0, 0, 2311);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25977, 34382, 0, 0, 2293);
DELETE FROM `npc_vendor` WHERE `entry` = '25032';
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 34780, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 34872, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 35500, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 35505, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 35502, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 29193, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 35697, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 35699, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 35695, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 35696, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 35698, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 35708, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 35769, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 35766, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 35767, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 35768, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 34673, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 34670, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 34667, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 34674, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 34671, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 34665, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 34666, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 34672, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 34675, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 34676, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 34678, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 34677, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 34680, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 34679, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 35755, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 35752, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 35754, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 35753, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25032, 35221, 0, 0, 0);
DELETE FROM `npc_vendor` WHERE `entry` = '25034';
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25034, 14341, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25034, 18256, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25034, 6532, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25034, 3713, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25034, 4471, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25034, 4470, 0, 0, 0);
DELETE FROM `npc_vendor` WHERE `entry` = '25035';
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25035, 11285, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25035, 28053, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25035, 28056, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25035, 11284, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25035, 28060, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25035, 28061, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25035, 4470, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25035, 4471, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25035, 29014, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25035, 29013, 0, 0, 0);
DELETE FROM `npc_vendor` WHERE `entry` = '25046';
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34919, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34918, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34917, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34926, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34925, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34924, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34938, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34937, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34936, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34900, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34902, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34901, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34906, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34911, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34910, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34903, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34904, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34905, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34929, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34927, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34928, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34912, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34916, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34914, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34932, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34930, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34931, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34935, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34933, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34934, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34923, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34921, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34922, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34947, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34945, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34946, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34944, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34942, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34943, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34941, 0, 0, 2049);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34939, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34940, 0, 0, 2333);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34889, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34890, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34887, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34888, 0, 0, 2059);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34891, 0, 0, 2329);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34895, 0, 0, 2329);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34892, 0, 0, 2329);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34898, 0, 0, 2329);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34896, 0, 0, 2329);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34893, 0, 0, 2331);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34950, 0, 0, 2332);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34951, 0, 0, 2332);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34894, 0, 0, 2331);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34949, 0, 0, 2332);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25046, 34952, 0, 0, 2332);
DELETE FROM `npc_vendor` WHERE `entry` = '25036';
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25036, 8957, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25036, 27858, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25036, 29452, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25036, 8952, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25036, 27854, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25036, 29451, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25036, 8953, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25036, 27856, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25036, 29450, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25036, 8766, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25036, 28399, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25036, 27860, 0, 0, 0);
DELETE FROM `npc_vendor` WHERE `entry` = '25043';
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25043, 8925, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25043, 5140, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25043, 3777, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25043, 8924, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25043, 8923, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25043, 5173, 0, 0, 0);
INSERT  INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES (25043, 2931, 0, 0, 0);


-- wdb
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`) values('34255','12','0','-1','Razorthorn Flayer Gland','4045','1','64','1','0','0','0','-1','32767','1','0','0','0','0','0','0','0','0','5','5','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','44881','0','-1','0','-1','24','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','4','Foul smelling pheromones hover around the gooey gland.','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`) values('34376','4','3','-1','Sun-Drenched Scale Gloves','48919','4','0','1','238644','47728','10','32767','32767','159','70','0','0','0','0','0','0','0','0','1','0','7','45','5','36','30','32','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','694','0','0','0','0','0','0','0','0','0','17320','1','0','0','-1','0','-1','0','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','2','','0','0','0','0','0','5','0','0','0','0','0','50','0','0','0','0','2','0','2','0','0','0','2881','0','300','0','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`) values('34537','0','2','-1','Bloodberry Elixir','38720','1','0','1','10000','2500','0','-1','-1','70','70','0','0','0','0','0','0','0','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','45373','0','-1','0','0','79','3000','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','0','0','0','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`) values('35192','9','3','-1','Schematic: Primal-Attuned Goggles','7085','4','64','1','150000','37500','0','64','-1','70','0','202','375','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46110','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','Teaches you how to make Primal-Attuned Goggles.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','128','0','0','0','0','0','0','0','0','0','-1','0','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`) values('35198','9','10','-1','Design: Loop of Forged Power','7085','4','64','1','140000','35000','0','-1','-1','70','0','755','365','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46122','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','Teaches you how to craft a Loop of Forged Power.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`) values('35201','9','10','-1','Design: Pendant of Sunfire','7085','4','64','1','140000','35000','0','-1','-1','70','0','755','365','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46125','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','Teaches you how to craft a Pendant of Sunfire.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`) values('35204','9','2','-1','Pattern: Sunfire Handwraps','7085','4','64','1','80000','20000','0','-1','-1','70','0','197','365','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46128','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','Teaches you how to sew Sunfire Handwraps.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`) values('35215','9','1','-1','Pattern: Sun-Drenched Scale Gloves','7085','4','64','1','80000','20000','0','-1','-1','75','0','165','365','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46135','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','Teaches you how to craft Sun-Drenched Scale Gloves.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','8','0','0','0','0','0','0','0','0','0','-1','0','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`) values('35216','9','1','-1','Pattern: Leather Chestguard of the Sun','7085','4','64','1','80000','20000','0','-1','-1','75','0','165','365','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','483','0','-1','0','-1','0','-1','46136','6','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','Teaches you how to craft Leather Chestguard of the Sun.','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','8','0','0','0','0','0','0','0','0','0','-1','0','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`) values('35349','15','2','-1','Snarly\'s Bucket','33467','3','0','1','0','0','0','-1','-1','20','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','46425','0','0','0','1500','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','4096','0','0','0','0','0','0','0','0','0','-1','0','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`) values('35350','15','2','-1','Chuck\'s Bucket','33467','3','0','1','0','0','0','-1','-1','20','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','46426','0','0','0','1500','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','4096','0','0','0','0','0','0','0','0','0','-1','0','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`) values('37148','15','0','-1','Singed Page','7629','1','0','1','35000','8750','0','-1','-1','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','One page remains after breaking the seal on the \'Wrath of the Titans.\'','3076','0','1','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0');
insert ignore into `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`) values('37588','7','8','-1','Mostly Digested Fish','49840','0','0','1','5500','275','0','-1','-1','35','0','0','0','0','0','0','0','0','0','20','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','11','1000','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','','0','0','0','0','0','8','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0');
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=1925;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=2256;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=5587;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=8224;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=9684;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=13027;
UPDATE `item_template` SET `BagFamily`=8 WHERE `entry`=18252;
UPDATE `item_template` SET `BagFamily`=128 WHERE `entry`=20816;
UPDATE `item_template` SET `BagFamily`=1224 WHERE `entry`=22452;
UPDATE `item_template` SET `BagFamily`=200 WHERE `entry`=22456;
UPDATE `item_template` SET `BagFamily`=200 WHERE `entry`=23571;
UPDATE `item_template` SET `BagFamily`=128 WHERE `entry`=23737;
UPDATE `item_template` SET `BagFamily`=128 WHERE `entry`=23821;
UPDATE `item_template` SET `BagFamily`=128 WHERE `entry`=23827;
UPDATE `item_template` SET `BagFamily`=128 WHERE `entry`=23828;
UPDATE `item_template` SET `BagFamily`=128 WHERE `entry`=23839;
UPDATE `item_template` SET `BagFamily`=1536 WHERE `entry`=24243;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=24356;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=30278;
UPDATE `item_template` SET `InventoryType`=13 WHERE `entry`=30364;
UPDATE `item_template` SET `BagFamily`=128 WHERE `entry`=32413;
UPDATE `item_template` SET `BagFamily`=128 WHERE `entry`=32423;
REPLACE INTO `item_template` SET `entry`=34232,`name`='Fel Conquerer Raiments',`description`='',`class`=4,`subclass`=1,`unk0`=-1,`displayid`=48299,`Quality`=4,`Flags`=0,`SellPrice`=65744,`InventoryType`=20,`AllowableRace`=-1,`ItemLevel`=159,`RequiredLevel`=70,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=7,`stat_value1`=60,`stat_type2`=5,`stat_value2`=41,`stat_type3`=30,`stat_value3`=33,`stat_type4`=21,`stat_value4`=24,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=266,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=23929,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=1,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=7,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=100,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=4,`socketContent_3`=0,`socketBonus`=2889,`GemProperties`=0,`RequiredDisenchantSkill`=300,`ArmorDamageModifier`=0.0,`BuyPrice`=328721;
REPLACE INTO `item_template` SET `entry`=34331,`name`='Hand of the Deceiver',`description`='',`class`=2,`subclass`=13,`unk0`=-1,`displayid`=48028,`Quality`=4,`Flags`=0,`SellPrice`=156503,`InventoryType`=21,`AllowableRace`=32767,`ItemLevel`=164,`RequiredLevel`=70,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=7,`stat_value1`=28,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=238.0,`dmg_max1`=357.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=2600,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=15813,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=40226,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=7,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=75,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2973,`GemProperties`=0,`RequiredDisenchantSkill`=300,`ArmorDamageModifier`=0.0,`BuyPrice`=782515;
UPDATE `item_template` SET `BagFamily`=128 WHERE `entry`=34354;
REPLACE INTO `item_template` SET `entry`=35195,`name`='Schematic: Mayhem Projection Goggles',`description`='Teaches you how to make Mayhem Projection Goggles.',`class`=9,`subclass`=3,`unk0`=-1,`displayid`=7085,`Quality`=4,`Flags`=64,`SellPrice`=37500,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=70,`RequiredLevel`=0,`RequiredSkill`=202,`RequiredSkillRank`=375,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=46114,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=0,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=128,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=150000;
REPLACE INTO `item_template` SET `entry`=35294,`name`='Recipe: Elixir of Empowerment',`description`='Teaches you how to make an Elixir of Empowerment.',`class`=9,`subclass`=6,`unk0`=-1,`displayid`=15274,`Quality`=2,`Flags`=64,`SellPrice`=25000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=73,`RequiredLevel`=0,`RequiredSkill`=171,`RequiredSkillRank`=365,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=28578,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=100000;
REPLACE INTO `item_template` SET `entry`=35295,`name`='Recipe: Haste Potion',`description`='Teaches you how to make a Haste Potion.',`class`=9,`subclass`=6,`unk0`=-1,`displayid`=15274,`Quality`=2,`Flags`=64,`SellPrice`=20000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=70,`RequiredLevel`=0,`RequiredSkill`=171,`RequiredSkillRank`=350,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=28564,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=80000;
REPLACE INTO `item_template` SET `entry`=35296,`name`='Plans: Adamantite Weapon Chain',`description`='Teaches you how to make an Adamantite Weapon Chain.',`class`=9,`subclass`=4,`unk0`=-1,`displayid`=15274,`Quality`=2,`Flags`=64,`SellPrice`=950,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=63,`RequiredLevel`=0,`RequiredSkill`=164,`RequiredSkillRank`=335,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=42688,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=3800;
REPLACE INTO `item_template` SET `entry`=35297,`name`='Formula: Enchant Boots - Boar\'s Speed',`description`='Teaches you how to permanently enchant boots to increase move speed slightly and Stamina by 9.',`class`=9,`subclass`=8,`unk0`=-1,`displayid`=7798,`Quality`=3,`Flags`=64,`SellPrice`=30000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=72,`RequiredLevel`=0,`RequiredSkill`=333,`RequiredSkillRank`=360,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=34008,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=64,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=120000;
REPLACE INTO `item_template` SET `entry`=35298,`name`='Formula: Enchant Boots - Vitality',`description`='Teaches you how to permanently enchant boots to restore 4 mana and health every 5 seconds.',`class`=9,`subclass`=8,`unk0`=-1,`displayid`=7798,`Quality`=2,`Flags`=64,`SellPrice`=10000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=61,`RequiredLevel`=0,`RequiredSkill`=333,`RequiredSkillRank`=305,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=27948,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=64,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=40000;
REPLACE INTO `item_template` SET `entry`=35302,`name`='Pattern: Cobrascale Gloves',`description`='Teaches you how to make Cobrascale Gloves.',`class`=9,`subclass`=1,`unk0`=-1,`displayid`=1096,`Quality`=4,`Flags`=64,`SellPrice`=60000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=73,`RequiredLevel`=0,`RequiredSkill`=165,`RequiredSkillRank`=365,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=35559,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=8,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=240000;
REPLACE INTO `item_template` SET `entry`=35307,`name`='Design: Rigid Dawnstone',`description`='Teaches you how to cut a Rigid Dawnstone.',`class`=9,`subclass`=10,`unk0`=-1,`displayid`=6270,`Quality`=3,`Flags`=64,`SellPrice`=30000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=70,`RequiredLevel`=0,`RequiredSkill`=755,`RequiredSkillRank`=350,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=31098,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=120000;
REPLACE INTO `item_template` SET `entry`=35310,`name`='Schematic: Healing Potion Injector',`description`='Teaches you how to make a Healing Potion Injector.',`class`=9,`subclass`=3,`unk0`=-1,`displayid`=6270,`Quality`=3,`Flags`=64,`SellPrice`=17500,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=66,`RequiredLevel`=0,`RequiredSkill`=202,`RequiredSkillRank`=330,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=30551,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=128,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=70000;
REPLACE INTO `item_template` SET `entry`=35691,`name`='Ruined Metal Parts',`description`='',`class`=15,`subclass`=0,`unk0`=-1,`displayid`=35301,`Quality`=0,`Flags`=0,`SellPrice`=237,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=1,`RequiredLevel`=0,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=10,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=0,`spelltrigger_1`=0,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=0,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=950;
REPLACE INTO `item_template` SET `entry`=34232,`name`='Fel Conquerer Raiments',`description`='',`class`=4,`subclass`=1,`unk0`=-1,`displayid`=48299,`Quality`=4,`Flags`=0,`SellPrice`=65744,`InventoryType`=20,`AllowableRace`=-1,`ItemLevel`=159,`RequiredLevel`=70,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=7,`stat_value1`=60,`stat_type2`=5,`stat_value2`=41,`stat_type3`=30,`stat_value3`=33,`stat_type4`=21,`stat_value4`=24,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=266,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=23929,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=1,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=1,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=7,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=100,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=2,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=4,`socketContent_3`=0,`socketBonus`=2889,`GemProperties`=0,`RequiredDisenchantSkill`=300,`ArmorDamageModifier`=0.0,`BuyPrice`=328721;
REPLACE INTO `item_template` SET `entry`=34331,`name`='Hand of the Deceiver',`description`='',`class`=2,`subclass`=13,`unk0`=-1,`displayid`=48028,`Quality`=4,`Flags`=0,`SellPrice`=156503,`InventoryType`=21,`AllowableRace`=32767,`ItemLevel`=164,`RequiredLevel`=70,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=7,`stat_value1`=28,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=238.0,`dmg_max1`=357.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=2600,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=15813,`spelltrigger_1`=1,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=40226,`spelltrigger_2`=1,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=1,`sheath`=7,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=75,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=4,`socketContent_1`=0,`socketColor_2`=4,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=2973,`GemProperties`=0,`RequiredDisenchantSkill`=300,`ArmorDamageModifier`=0.0,`BuyPrice`=782515;
REPLACE INTO `item_template` SET `entry`=35195,`name`='Schematic: Mayhem Projection Goggles',`description`='Teaches you how to make Mayhem Projection Goggles.',`class`=9,`subclass`=3,`unk0`=-1,`displayid`=7085,`Quality`=4,`Flags`=64,`SellPrice`=37500,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=70,`RequiredLevel`=0,`RequiredSkill`=202,`RequiredSkillRank`=375,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=46114,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=0,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=128,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=150000;
REPLACE INTO `item_template` SET `entry`=35196,`name`='Schematic: Hard Khorium Goggles',`description`='Teaches you how to make Hard Khorium Goggles.',`class`=9,`subclass`=3,`unk0`=-1,`displayid`=7085,`Quality`=4,`Flags`=64,`SellPrice`=37500,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=70,`RequiredLevel`=0,`RequiredSkill`=202,`RequiredSkillRank`=375,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=46115,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=0,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=128,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=150000;
REPLACE INTO `item_template` SET `entry`=35208,`name`='Plans: Sunblessed Gauntlets',`description`='Teaches you how to make a Sunblessed Gauntlets.',`class`=9,`subclass`=4,`unk0`=-1,`displayid`=7085,`Quality`=4,`Flags`=64,`SellPrice`=20000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=70,`RequiredLevel`=0,`RequiredSkill`=164,`RequiredSkillRank`=365,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=46140,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=80000;
REPLACE INTO `item_template` SET `entry`=35294,`name`='Recipe: Elixir of Empowerment',`description`='Teaches you how to make an Elixir of Empowerment.',`class`=9,`subclass`=6,`unk0`=-1,`displayid`=15274,`Quality`=2,`Flags`=64,`SellPrice`=25000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=73,`RequiredLevel`=0,`RequiredSkill`=171,`RequiredSkillRank`=365,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=28578,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=100000;
REPLACE INTO `item_template` SET `entry`=35295,`name`='Recipe: Haste Potion',`description`='Teaches you how to make a Haste Potion.',`class`=9,`subclass`=6,`unk0`=-1,`displayid`=15274,`Quality`=2,`Flags`=64,`SellPrice`=20000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=70,`RequiredLevel`=0,`RequiredSkill`=171,`RequiredSkillRank`=350,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=28564,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=80000;
REPLACE INTO `item_template` SET `entry`=35296,`name`='Plans: Adamantite Weapon Chain',`description`='Teaches you how to make an Adamantite Weapon Chain.',`class`=9,`subclass`=4,`unk0`=-1,`displayid`=15274,`Quality`=2,`Flags`=64,`SellPrice`=950,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=63,`RequiredLevel`=0,`RequiredSkill`=164,`RequiredSkillRank`=335,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=42688,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=3800;
REPLACE INTO `item_template` SET `entry`=35297,`name`='Formula: Enchant Boots - Boar\'s Speed',`description`='Teaches you how to permanently enchant boots to increase move speed slightly and Stamina by 9.',`class`=9,`subclass`=8,`unk0`=-1,`displayid`=7798,`Quality`=3,`Flags`=64,`SellPrice`=30000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=72,`RequiredLevel`=0,`RequiredSkill`=333,`RequiredSkillRank`=360,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=34008,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=64,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=120000;
REPLACE INTO `item_template` SET `entry`=35298,`name`='Formula: Enchant Boots - Vitality',`description`='Teaches you how to permanently enchant boots to restore 4 mana and health every 5 seconds.',`class`=9,`subclass`=8,`unk0`=-1,`displayid`=7798,`Quality`=2,`Flags`=64,`SellPrice`=10000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=61,`RequiredLevel`=0,`RequiredSkill`=333,`RequiredSkillRank`=305,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=27948,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=64,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=40000;
REPLACE INTO `item_template` SET `entry`=35299,`name`='Formula: Enchant Boots - Cat\'s Swiftness',`description`='Teaches you how to permanently enchant boots to increase move speed slightly and Agility by 6.',`class`=9,`subclass`=8,`unk0`=-1,`displayid`=7798,`Quality`=3,`Flags`=64,`SellPrice`=30000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=72,`RequiredLevel`=0,`RequiredSkill`=333,`RequiredSkillRank`=360,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=34007,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=64,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=120000;
REPLACE INTO `item_template` SET `entry`=35302,`name`='Pattern: Cobrascale Gloves',`description`='Teaches you how to make Cobrascale Gloves.',`class`=9,`subclass`=1,`unk0`=-1,`displayid`=1096,`Quality`=4,`Flags`=64,`SellPrice`=60000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=73,`RequiredLevel`=0,`RequiredSkill`=165,`RequiredSkillRank`=365,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=35559,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=8,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=240000;
REPLACE INTO `item_template` SET `entry`=35303,`name`='Pattern: Gloves of the Living Touch',`description`='Teaches you how to make Gloves of the Living Touch.',`class`=9,`subclass`=1,`unk0`=-1,`displayid`=1096,`Quality`=4,`Flags`=64,`SellPrice`=60000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=73,`RequiredLevel`=0,`RequiredSkill`=165,`RequiredSkillRank`=365,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=35562,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=8,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=240000;
REPLACE INTO `item_template` SET `entry`=35305,`name`='Design: Runed Living Ruby',`description`='Teaches you how to cut a Runed Living Ruby.',`class`=9,`subclass`=10,`unk0`=-1,`displayid`=6270,`Quality`=3,`Flags`=64,`SellPrice`=30000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=70,`RequiredLevel`=0,`RequiredSkill`=755,`RequiredSkillRank`=350,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=31088,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=120000;
REPLACE INTO `item_template` SET `entry`=35306,`name`='Design: Bright Living Ruby',`description`='Teaches you how to cut a Bright Living Ruby.',`class`=9,`subclass`=10,`unk0`=-1,`displayid`=6270,`Quality`=3,`Flags`=64,`SellPrice`=30000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=70,`RequiredLevel`=0,`RequiredSkill`=755,`RequiredSkillRank`=350,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=31089,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=120000;
REPLACE INTO `item_template` SET `entry`=35307,`name`='Design: Rigid Dawnstone',`description`='Teaches you how to cut a Rigid Dawnstone.',`class`=9,`subclass`=10,`unk0`=-1,`displayid`=6270,`Quality`=3,`Flags`=64,`SellPrice`=30000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=70,`RequiredLevel`=0,`RequiredSkill`=755,`RequiredSkillRank`=350,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=31098,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=120000;
REPLACE INTO `item_template` SET `entry`=35308,`name`='Pattern: Unyielding Bracers',`description`='Teaches you how to sew Unyielding Bracers.',`class`=9,`subclass`=2,`unk0`=-1,`displayid`=6270,`Quality`=3,`Flags`=64,`SellPrice`=20000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=70,`RequiredLevel`=0,`RequiredSkill`=197,`RequiredSkillRank`=350,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=31434,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=80000;
REPLACE INTO `item_template` SET `entry`=35309,`name`='Pattern: Unyielding Girdle',`description`='Teaches you how to sew an Unyielding Girdle.',`class`=9,`subclass`=2,`unk0`=-1,`displayid`=6270,`Quality`=4,`Flags`=64,`SellPrice`=30000,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=73,`RequiredLevel`=0,`RequiredSkill`=197,`RequiredSkillRank`=365,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=31442,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=120000;
REPLACE INTO `item_template` SET `entry`=35310,`name`='Schematic: Healing Potion Injector',`description`='Teaches you how to make a Healing Potion Injector.',`class`=9,`subclass`=3,`unk0`=-1,`displayid`=6270,`Quality`=3,`Flags`=64,`SellPrice`=17500,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=66,`RequiredLevel`=0,`RequiredSkill`=202,`RequiredSkillRank`=330,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=1,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=483,`spelltrigger_1`=0,`spellcharges_1`=-1,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=30551,`spelltrigger_2`=6,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=1,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=128,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=70000;
REPLACE INTO `item_template` SET `entry`=35314,`name`='Partially Digested Weeds',`description`='',`class`=15,`subclass`=0,`unk0`=-1,`displayid`=7415,`Quality`=0,`Flags`=0,`SellPrice`=75,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=60,`RequiredLevel`=0,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=5,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=0,`spelltrigger_1`=0,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=0,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=300;
REPLACE INTO `item_template` SET `entry`=35691,`name`='Ruined Metal Parts',`description`='',`class`=15,`subclass`=0,`unk0`=-1,`displayid`=35301,`Quality`=0,`Flags`=0,`SellPrice`=237,`InventoryType`=0,`AllowableRace`=-1,`ItemLevel`=1,`RequiredLevel`=0,`RequiredSkill`=0,`RequiredSkillRank`=0,`requiredspell`=0,`requiredhonorrank`=0,`RequiredCityRank`=0,`RequiredReputationFaction`=0,`maxcount`=0,`stackable`=10,`ContainerSlots`=0,`stat_type1`=0,`stat_value1`=0,`stat_type2`=0,`stat_value2`=0,`stat_type3`=0,`stat_value3`=0,`stat_type4`=0,`stat_value4`=0,`stat_type5`=0,`stat_value5`=0,`stat_type6`=0,`stat_value6`=0,`stat_type7`=0,`stat_value7`=0,`stat_type8`=0,`stat_value8`=0,`stat_type9`=0,`stat_value9`=0,`stat_type10`=0,`stat_value10`=0,`dmg_min1`=0.0,`dmg_max1`=0.0,`dmg_type1`=0,`dmg_min2`=0.0,`dmg_max2`=0.0,`dmg_type2`=0,`dmg_min3`=0.0,`dmg_max3`=0.0,`dmg_type3`=0,`dmg_min4`=0.0,`dmg_max4`=0.0,`dmg_type4`=0,`dmg_min5`=0.0,`dmg_max5`=0.0,`dmg_type5`=0,`armor`=0,`holy_res`=0,`fire_res`=0,`nature_res`=0,`frost_res`=0,`shadow_res`=0,`arcane_res`=0,`delay`=0,`ammo_type`=0,`RangedModRange`=0.0,`spellid_1`=0,`spelltrigger_1`=0,`spellcharges_1`=0,`spellcooldown_1`=-1,`spellcategory_1`=0,`spellcategorycooldown_1`=-1,`spellid_2`=0,`spelltrigger_2`=0,`spellcharges_2`=0,`spellcooldown_2`=-1,`spellcategory_2`=0,`spellcategorycooldown_2`=-1,`spellid_3`=0,`spelltrigger_3`=0,`spellcharges_3`=0,`spellcooldown_3`=-1,`spellcategory_3`=0,`spellcategorycooldown_3`=-1,`spellid_4`=0,`spelltrigger_4`=0,`spellcharges_4`=0,`spellcooldown_4`=-1,`spellcategory_4`=0,`spellcategorycooldown_4`=-1,`spellid_5`=0,`spelltrigger_5`=0,`spellcharges_5`=0,`spellcooldown_5`=-1,`spellcategory_5`=0,`spellcategorycooldown_5`=-1,`bonding`=0,`PageText`=0,`LanguageID`=0,`PageMaterial`=0,`startquest`=0,`lockid`=0,`Material`=-1,`sheath`=0,`RandomProperty`=0,`RandomSuffix`=0,`block`=0,`itemset`=0,`MaxDurability`=0,`area`=0,`Map`=0,`BagFamily`=0,`TotemCategory`=0,`socketColor_1`=0,`socketContent_1`=0,`socketColor_2`=0,`socketContent_2`=0,`socketColor_3`=0,`socketContent_3`=0,`socketBonus`=0,`GemProperties`=0,`RequiredDisenchantSkill`=-1,`ArmorDamageModifier`=0.0,`BuyPrice`=950;


insert ignore into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) values('187113','19','6870','Mailbox','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
insert ignore into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) values('187114','5','7591','Alchemy Table','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
insert ignore into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) values('187072','3','271','Razorthorn Root','','57','22993','0','1','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
insert ignore into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) values('187116','5','7629','Monument to the Fallen','','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
insert ignore into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) values('188214','8','200','Bonfire','','0','10','179900','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
insert ignore into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) values('3881','8','351','Blazing Fire','','4','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
insert ignore into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) values('3884','8','351','Blazing Fire','','4','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
insert ignore into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) values('3882','8','349','Blazing Fire','','4','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
insert ignore into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) values('3880','8','351','Blazing Fire','','4','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
insert ignore into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) values('188123','19','1948','Mailbox','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
-- WDB Bruegg
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`) VALUES
(189993, 22, 7848, 'Portal to Theramore', '', 49362, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(189994, 22, 7849, 'Portal to Stonard', '', 49363, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE `gameobject_template` SET `data0`=4,`data2`=2061 WHERE `entry`=1921;
UPDATE `gameobject_template` SET `name`='Wildmane Water Pump' WHERE `entry`=2909;
UPDATE `gameobject_template` SET `name`='Highback Chair' WHERE `entry`=24390;
UPDATE `gameobject_template` SET `data0`=1 WHERE `entry`=51948;
UPDATE `gameobject_template` SET `data0`=3 WHERE `entry`=51949;
UPDATE `gameobject_template` SET `data0`=4,`data2`=2066 WHERE `entry`=51950;
UPDATE `gameobject_template` SET `data0`=4,`data2`=2061 WHERE `entry`=55535;
UPDATE `gameobject_template` SET `data2`=327680 WHERE `entry`=182060;
UPDATE `gameobject_template` SET `data2`=327680 WHERE `entry`=182061;
UPDATE `gameobject_template` SET `name`='Steam Pump Controls' WHERE `entry`=182107;
UPDATE `gameobject_template` SET `data0`=1690 WHERE `entry`=182797;
UPDATE `gameobject_template` SET `data0`=1690 WHERE `entry`=182798;
UPDATE `gameobject_template` SET `data0`=1690 WHERE `entry`=182799;
UPDATE `gameobject_template` SET `data0`=1690 WHERE `entry`=182936;
UPDATE `gameobject_template` SET `data0`=1690 WHERE `entry`=182937;
UPDATE `gameobject_template` SET `data0`=1690 WHERE `entry`=182938;
UPDATE `gameobject_template` SET `name`='Theatric Lightning' WHERE `entry`=183356;
UPDATE `gameobject_template` SET `name`='Strange Bookcase' WHERE `entry`=184453;
UPDATE `gameobject_template` SET `name`='Cook Fire' WHERE `entry`=184473;
UPDATE `gameobject_template` SET `data0`=1691 WHERE `entry`=184729;
UPDATE `gameobject_template` SET `data0`=0 WHERE `entry`=184737;
UPDATE `gameobject_template` SET `data14`=19676 WHERE `entry`=184744;
UPDATE `gameobject_template` SET `data0`=1706,`data11`=1,`data13`=1,`data15`=1 WHERE `entry`=184849;
UPDATE `gameobject_template` SET `name`='Terokkar Forest' WHERE `entry`=185062;
UPDATE `gameobject_template` SET `name`='Legion Hold' WHERE `entry`=185063;
UPDATE `gameobject_template` SET `name`='Shadowmoon Valley' WHERE `entry`=185064;
UPDATE `gameobject_template` SET `data14`=19676 WHERE `entry`=185152;
UPDATE `gameobject_template` SET `data11`=1,`data13`=1,`data15`=1 WHERE `entry`=185169;

insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('12286','1','','Hello, $n.$b$bNow that I\'ve finished creating my anvil I can begin outfitting our troops. It\'s an important step, but there\'s still much to be done.$b$bMore importantly for you, there are new things that I can create, which you may be interested in.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10001','1','Ah, welcome back, hero. You have returned to protect the Guardian once more? Do not forget to take a chrono-beacon with you!','','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('11082','1','My brethren were here not long ago.  My connection to them has grown tenuous.  A powerful presence in the courtyard guards the way forward.','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('12320','1','We\'ve done it, $N.  With Sun\'s Reach under our control we are but mere moments away from absolute victory.','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('12340','1','Sun\'s Reach is ours.  Kael\'s dogs are on the run... it is time to put them out of their misery!','','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('12496','1','','Did you know that alchemists can transmute certain gems?  Mar\'nah and I have been talking about this.$B$BI\'m convinced that given her prowess, once her lab is complete, she and I will be able to create gems that were thought to be lost in time.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('12238','1','','Good day to you, $c.$b$bThere\'s much to be done to assist in the effort here. Sadly, there\'s very little I can do for you until I get all of my supplies.$b$bI\'ve now got $3223w percent of the razorthorn roots I need to get started. Any assistance you provide will be well worth the effort, I assure you.','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('12287','1','','We\'ve taken the harbor, and this ship is a nice bonus. Too bad she\'s not yet sea-worthy.$B$BIn the meantime, I\'ve been instructed to oversee the disruption of the naga on the Greengill Coast.$B$BThink you can help me out?','0','0','1','0','6','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('12322','1','','I\'m gathering funds to build a monument in honor of those who\'ve died in the war.  It is important to not forget the sacrifices we\'ve made to achieve victory.$B$BWe are $3275w percent done with this goal.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('10064','1','<The apprentice occasionally looks over his shoulder, apparently responding to sounds that you can\'t hear.>$B$BGood day, $N. Pardon me if I seem distracted, but I\'m in the middle of a job for Farmer Natin. I want to have all of his horses shoed by the time he returns from the town hall. What can I help you with?','','0','0','1','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('12323','1','','Isn\'t the memorial beautiful?  It is important to remember moments in our history when great sacrifices are made, lest we forget the price of all wars - even ones that are won.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');
insert ignore into `npc_text` (`ID`, `prob0`, `text0_0`, `text0_1`, `lang0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `prob1`, `text1_0`, `text1_1`, `lang1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `prob2`, `text2_0`, `text2_1`, `lang2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `prob3`, `text3_0`, `text3_1`, `lang3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `prob4`, `text4_0`, `text4_1`, `lang4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `prob5`, `text5_0`, `text5_1`, `lang5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `prob6`, `text6_0`, `text6_1`, `lang6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `prob7`, `text7_0`, `text7_1`, `lang7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) values('12507','1','','This world has been damaged in ways beyond what our eyes can see.  Even the passage of time feels different somehow.','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0','0','','','0','0','0','0','0','0','0');

UPDATE `npc_text` SET `text0_0`='You don\'t have the stomach for the gryphon ride, huh.  Well lucky for you, we have an alternative where you can keep your feet on the ground? more or less.  It\'s the gnomish mover of people, the Deeprun Tram.  Conveniently located in the back of the Dwarven District.',`text0_1`='You don\'t have the stomach for the gryphon ride, huh.  Well lucky for you, we have an alternative where you can keep your feet on the ground? more or less.  It\'s the gnomish mover of people, the Deeprun Tram.  Conveniently located in the back of the Dwarven District.' WHERE `ID`=3813;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=1 WHERE `ID`=4933;
UPDATE `npc_text` SET `text0_0`='What I wouldn\'t give to be out on the open plains on a day like this... but my duty binds me.' WHERE `ID`=5196;
UPDATE `npc_text` SET `text0_0`='If you require more training, I would be happy to tell you who can aid you. What weapon has caught your eye?' WHERE `ID`=6281;
UPDATE `npc_text` SET `text0_0`='I can teach you how to cook!',`text0_1`='I can teach you how to cook!' WHERE `ID`=7021;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=1 WHERE `ID`=7190;
UPDATE `npc_text` SET `text0_0`='$N, the Stormpike Guard is in need of your aid in the battle against the Frostwolf Clan in Alterac Valley, now more than ever.  The opportunities for honor and repute are greater than ever as well! Will you join the battle?',`text0_1`='$N, the Stormpike Guard is in need of your aid in the battle against the Frostwolf Clan in Alterac Valley, now more than ever.  The opportunities for honor and repute are greater than ever as well! Will you join the battle?',`em0_5`=6 WHERE `ID`=7694;
UPDATE `npc_text` SET `text0_0`='The war against the Horde has reached full tilt, $N.  This is a time of great need for the Alliance and it\'s necessary that all of us do our part to help.' WHERE `ID`=7818;
UPDATE `npc_text` SET `text0_0`='<The footman stand resolute, muscles tense.>',`text0_1`='',`prob0`='1.0' WHERE `ID`=8952;
UPDATE `npc_text` SET `em0_0`=0,`em0_2`=500,`em0_3`=1,`em0_4`=0 WHERE `ID`=9121;
UPDATE `npc_text` SET `text0_0`='Now that the rude interruption is over, as I was saying, Quagmirran is nearby!$B$BAs promised, I can fortify you with a magical boon that should aid you in your fight with him.',`text0_1`='' WHERE `ID`=9144;
UPDATE `npc_text` SET `prob0`='1.0' WHERE `ID`=9261;
UPDATE `npc_text` SET `prob0`='1.0',`em0_1`=1 WHERE `ID`=9262;
UPDATE `npc_text` SET `prob0`='1.0',`em0_1`=1 WHERE `ID`=9263;
UPDATE `npc_text` SET `em3_0`=0,`em3_1`=1 WHERE `ID`=9901;
UPDATE `npc_text` SET `em0_0`=0,`em0_1`=1,`em1_0`=0,`em1_1`=2,`em2_0`=0,`em2_1`=1 WHERE `ID`=9902;
UPDATE `npc_text` SET `text0_0`='The men and women of Honor Hold have shed such blood and have lost their youth in this monstrous land... and yet they still hold their spirits high!$B$BNow, you and your cohorts from Azeroth can help us turn the tide.  You give us hope that we may one day return to our homelands.',`prob0`='1.0',`em0_1`=1,`em0_3`=1,`em0_5`=25 WHERE `ID`=9944;
UPDATE `npc_text` SET `text0_0`='Ah, such an odd place to find potential customers!',`text0_1`='' WHERE `ID`=10127;
UPDATE `npc_text` SET `text0_1`='How are ye? Had yer fill o\' Outland, and ready ta head back ta Alterac Valley and give the Horde what for?' WHERE `ID`=10285;
UPDATE `npc_text` SET `text0_0`='I came to Outland hoping to discover powerful artifacts to assist the League of Arathor against the Defilers in Arathi Basin... but all I\'ve found is this smashing magical loincloth, a ridiculous gnome sidekick, and an egomaniacal undead stalker who insists I\'ve stolen his grey skull, or some such.$B$b$BIn any case, would you care to join the League in their fight while I continue my search?',`text0_1`='' WHERE `ID`=10287;
UPDATE `npc_text` SET `text0_0`='Prospecting is the primary method of finding gems!   You simply use the prospecting ability (which is found in the general tab of your spellbook) on a stack of five ore to extract the gems from it.   Any type of non-precious ore will do!    $B$BBetter quality ores will provide more valuable gems so you will find higher quality gems in iron ore than in copper ore.',`text0_1`='Prospecting is the primary method of finding gems!   You simply use the prospecting ability (which is found in the general tab of your spellbook) on a stack of five ore to extract the gems from it.   Any type of non-precious ore will do!    $B$BBetter quality ores will provide more valuable gems so you will find higher quality gems in iron ore than in copper ore.' WHERE `ID`=10452;
UPDATE `npc_text` SET `text0_0`='Ileda of the blood elves, found within Farstrider Square of Silvermoon, trains her students in both one and two-handed swords. Archibald, Undercity\'s weapon master, can also train you; he is in the War Quarter.',`lang0`=1 WHERE `ID`=10779;

-- lets make sure iconnnames are good too:
update creature_template set IconName='Directions' where entry='68';
update creature_template set IconName='Directions' where entry='1976';
update creature_template set IconName='Directions' where entry='727';
update creature_template set IconName='Directions' where entry='1423';
update creature_template set IconName='Directions' where entry='1738';
update creature_template set IconName='Directions' where entry='1742';
update creature_template set IconName='Directions' where entry='1743';
update creature_template set IconName='Directions' where entry='1744';
update creature_template set IconName='Directions' where entry='1745';
update creature_template set IconName='Directions' where entry='1746';
update creature_template set IconName='Directions' where entry='2209';
update creature_template set IconName='Directions' where entry='2210';
update creature_template set IconName='Directions' where entry='3084';
update creature_template set IconName='Directions' where entry='3212';
update creature_template set IconName='Directions' where entry='3215';
update creature_template set IconName='Directions' where entry='3217';
update creature_template set IconName='Directions' where entry='3218';
update creature_template set IconName='Directions' where entry='3219';
update creature_template set IconName='Directions' where entry='3220';
update creature_template set IconName='Directions' where entry='3221';
update creature_template set IconName='Directions' where entry='3222';
update creature_template set IconName='Directions' where entry='3223';
update creature_template set IconName='Directions' where entry='3224';
update creature_template set IconName='Directions' where entry='3296';
update creature_template set IconName='Directions' where entry='3571';
update creature_template set IconName='Directions' where entry='4262';
update creature_template set IconName='Directions' where entry='5595';
update creature_template set IconName='Directions' where entry='5624';
update creature_template set IconName='Directions' where entry='5725';
update creature_template set IconName='Directions' where entry='5953';
update creature_template set IconName='Buy' where entry='7940';
update creature_template set IconName='Taxi' where entry='11798';
update creature_template set IconName='Taxi' where entry='11800';
update creature_template set IconName='Directions' where entry='12996';
update creature_template set IconName='Directions' where entry='16221';
update creature_template set IconName='Directions' where entry='16222';
update creature_template set IconName='Directions' where entry='16733';
update creature_template set IconName='Directions' where entry='18038';
update creature_template set IconName='Directions' where entry='18549';
update creature_template set IconName='Directions' where entry='18568';
update creature_template set IconName='Trainer' where entry='18753';
update creature_template set IconName='Trainer' where entry='18773';
update creature_template set IconName='Trainer' where entry='19252';
update creature_template set IconName='Trainer' where entry='19540';
update creature_template set IconName='Directions' where entry='19687';
update creature_template set IconName='Directions' where entry='20556';
update creature_template set IconName='Directions' where entry='20674';
update creature_template set IconName='Directions' where entry='24491';
update creature_template set IconName='Buy' where entry='26123';
update creature_template set IconName='Buy' where entry='26124';



-- Missing model_info from 2.4.1 to 2.4.2
REPLACE INTO `creature_model_info` VALUES ('24043','0.0','0.0','1','0');
REPLACE INTO `creature_model_info` VALUES ('24058','0.0','0.0','1','0');
REPLACE INTO `creature_model_info` VALUES ('24368','0.0','0.0','1','0');
REPLACE INTO `creature_model_info` VALUES ('24371','0.0','0.0','1','0');
REPLACE INTO `creature_model_info` VALUES ('24419','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24420','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24508','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24509','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24510','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24511','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24512','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24513','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24514','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24515','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24516','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24517','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24518','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24519','0.0','0.0','1','0');
REPLACE INTO `creature_model_info` VALUES ('24520','0.0','0.0','1','0');
REPLACE INTO `creature_model_info` VALUES ('24521','0.0','0.0','1','0');
REPLACE INTO `creature_model_info` VALUES ('24522','0.0','0.0','1','0');
REPLACE INTO `creature_model_info` VALUES ('24523','0.0','0.0','1','0');
REPLACE INTO `creature_model_info` VALUES ('24524','0.0','0.0','1','0');
REPLACE INTO `creature_model_info` VALUES ('24525','0.0','0.0','1','0');
REPLACE INTO `creature_model_info` VALUES ('24526','0.0','0.0','1','0');
REPLACE INTO `creature_model_info` VALUES ('24527','0.0','0.0','1','0');
REPLACE INTO `creature_model_info` VALUES ('24528','0.0','0.0','1','0');
REPLACE INTO `creature_model_info` VALUES ('24529','0.0','0.0','1','0');
REPLACE INTO `creature_model_info` VALUES ('24615','0.0','0.0','1','0');
REPLACE INTO `creature_model_info` VALUES ('24616','0.0','0.0','1','0');
REPLACE INTO `creature_model_info` VALUES ('24730','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24731','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24735','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24754','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24755','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24756','0.0','0.0','1','0');
REPLACE INTO `creature_model_info` VALUES ('24761','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24764','0.0','0.0','0','0');
REPLACE INTO `creature_model_info` VALUES ('24392','0.0','0.0','2','0');
REPLACE INTO `creature_model_info` VALUES ('24393','0.0','0.0','2','0');
REPLACE INTO `creature_model_info` VALUES ('24569','0.0','0.0','2','0');
REPLACE INTO `creature_model_info` VALUES ('24620','0.0','0.0','2','0');
REPLACE INTO `creature_model_info` VALUES ('24725','0.0','0.0','2','0');
REPLACE INTO `creature_model_info` VALUES ('24745','0.0','0.0','2','0');
REPLACE INTO `creature_model_info` VALUES ('24810','0.0','0.0','2','0');
REPLACE INTO `creature_model_info` VALUES ('24811','0.0','0.0','2','0');
REPLACE INTO `creature_model_info` VALUES ('20392','0.0','0.0','2','0');
REPLACE INTO `creature_model_info` VALUES ('23290','0.0','0.0','2','0');
REPLACE INTO `creature_model_info` VALUES ('23296','0.0','0.0','2','0');

-- SD2 Stuff start
-- 417
UPDATE `item_template` SET `ScriptName` = 'item_tame_beast_rods' WHERE `entry` IN (15908,15911,15913,15914,15915,15916,15917,15919,15920,15921,15922,15923,23697,23702,23703,23896,23897,23898);

-- 428
-- Quest Support 10804 (Kindness)
UPDATE creature_template SET scriptname = 'mob_mature_netherwing_drake' WHERE entry = 21648;
-- Quest Support 10854 (The Force of Neltharaku)
UPDATE creature_template SET scriptname = 'mob_enslaved_netherwing_drake' WHERE entry = 21722;

-- 431
UPDATE `creature_template` SET `ScriptName`='npc_zephyr' WHERE `entry`=25967;
UPDATE `instance_template` SET `script`='instance_old_hillsbrad' WHERE `map`=560;
UPDATE `creature_template` SET `ScriptName`='npc_brazen' WHERE `entry`=18725;
UPDATE `creature_template` SET `ScriptName`='npc_erozion' WHERE `entry`=18723;

-- 444
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=22120;
UPDATE `creature_template` SET `ScriptName`='mob_fathom_sporebat' WHERE `entry`=22140;
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=20318;
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (3927,3914,4274);
UPDATE `creature_template` SET `ScriptName`='mob_eventai' WHERE `entry` IN (21717,21718,21719,21720,22331,21878,21879,18371,18343,13083,17808);

-- 445
UPDATE `creature_template` SET `ScriptName`='boss_high_astromancer_solarian' WHERE `entry`=18805;
UPDATE `creature_template` SET `ScriptName`='mob_solarium_priest' WHERE `entry`=18806;

-- 446
-- Set ACID (mob_eventai) ScriptName for 4 Hyjal-wave bosses
UPDATE `creature_template` SET `ScriptName` = 'mob_eventai' WHERE `entry` IN (17767, 17808, 17888, 17842);


-- SD2 Stuff end

-- ACID Stuff start
-- up to rev 0.0.2
-- Define ACID 0.0.2 Full Release Script Creatures by setting Scriptname
UPDATE creature_template SET ScriptName='mob_eventai' WHERE entry IN (6,38,40,46,79,80,95,97,98,103,115,116,117,121,122,123,124,125,126,127,154,157,171,257,299,314,391,441,448,449,450,452,453,454,456,458,474,475,476,478,480,481,500,501,502,504,513,515,517,520,547,550,589,590,594,598,599,619,622,623,624,625,626,634,636,639,641,642,643,644,645,646,647,657,688,689,690,728,731,746,824,832,833,1051,1052,1053,1054,1065,1109,1130,1137,1169,1196,1222,1393,1402,1405,1426,1534,1550,1551,1552,1553,1554,1561,1562,1563,1564,1565,1653,1663,1666,1696,1706,1707,1708,1711,1715,1716,1717,1725,1726,1727,1729,1731,1732,1763,1804,1815,1816,1867,1888,1889,1911,1912,1913,1914,1915,1920,2015,2017,2018,2019,2020,2021,2163,2164,2271,2272,2306,2336,2337,2358,2368,2369,2370,2371,2529,2575,2577,2595,2596,2598,2990,3099,3100,3110,3111,3112,3113,3114,3116,3118,3119,3120,3122,3123,3127,3128,3129,3130,3131,3183,3192,3196,3197,3198,3199,3203,3204,3205,3206,3207,3225,3226,3227,3228,3231,3374,3375,3377,3378,3417,3461,3518,3577,3586,3631,3632,3633,3636,3654,3655,3662,3669,3670,3671,3672,3673,3674,3725,3727,3728,3818,3840,3851,3853,3854,3855,3857,3859,3861,3863,3864,3866,3868,3872,3873,3875,3877,3887,3914,3927,3987,4018,4019,4023,4024,4025,4026,4027,4035,4041,4042,4044,4053,4062,4120,4142,4143,4144,4147,4150,4151,4274,4275,4278,4279,4286,4289,4290,4291,4292,4294,4295,4297,4298,4301,4302,4303,4306,4416,4417,4418,4428,4515,4516,4517,4518,4519,4539,4540,4627,4670,4671,4672,4673,4674,4675,4728,4729,4818,4819,4820,4825,4842,4847,4852,4853,4854,4860,4861,5048,5053,5055,5056,5274,5299,5357,5358,5359,5360,5361,5419,5420,5421,5441,5450,5451,5453,5454,5648,5649,5650,5682,5755,5756,5761,5775,5808,5809,5822,5823,5826,5839,5840,5844,5846,5990,5991,6180,6212,6228,6229,6235,6426,6427,6489,6523,6788,6789,6910,7011,7012,7022,7030,7040,7041,7044,7047,7153,7154,7155,7156,7157,7158,7206,7246,7247,7268,7269,7276,7291,7335,7337,7369,7371,7372,7379,7396,7397,7443,7444,7445,7446,7604,7605,7606,7607,7608,7789,7800,7846,7872,7915,8095,8120,8138,8156,8302,8535,8540,8541,8542,8566,8600,8601,8602,8637,8761,8876,8877,8927,8956,8957,8958,9026,9437,9438,9439,9441,9442,9443,9445,9456,9461,9583,9692,9693,9716,9717,10077,10356,10357,10381,10382,10383,10387,10388,10389,10390,10391,10394,10398,10400,10405,10406,10407,10408,10409,10411,10412,10413,10414,10416,10417,10418,10419,10420,10421,10422,10423,10424,10425,10426,10463,10464,10642,10697,10737,10814,10827,10876,10947,10948,11043,11054,11064,11256,11318,11319,11320,11322,11323,11324,11340,11350,11351,11352,11368,11372,11469,11470,11471,11472,11473,11475,11517,11518,11519,11520,11658,11659,11661,11663,11664,11666,11667,11668,11746,11747,11777,11778,11780,11781,11782,11785,11786,11830,12119,12236,12237,12258,12265,12377,12457,12459,12460,12461,12463,12464,12465,12467,12557,12579,12876,13285,13596,13599,13601,13996,14232,14261,14262,14263,14264,14265,14388,14398,14750,15196,15205,15547,15548,15551,16036,16037,16170,16171,16173,16174,16175,16176,16177,16178,16321,16329,16354,16355,16406,16407,16408,16409,16410,16411,16414,16415,16424,16425,16459,16460,16461,16468,16470,16471,16472,16473,16481,16482,16485,16488,16489,16491,16492,16504,16507,16523,16525,16526,16529,16530,16540,16544,16545,16593,16594,16595,16699,16704,16809,16871,16873,16907,16964,17014,17067,17083,17156,17187,17201,17259,17264,17269,17270,17271,17280,17281,17283,17301,17309,17347,17348,17370,17371,17395,17397,17399,17414,17416,17420,17427,17455,17462,17464,17465,17477,17478,17491,17517,17536,17537,17621,17622,17623,17624,17626,17669,17670,17671,17672,17681,17694,17695,17721,17722,17723,17724,17725,17726,17727,17728,17729,17730,17731,17732,17734,17735,17767,17771,17800,17801,17802,17803,17805,17842,17871,17882,17888,17895,17897,17898,17899,17905,17906,17907,17908,17916,17919,17920,17922,17928,17932,17933,17935,17936,17938,17940,17941,17942,17952,17957,17958,17959,17960,17961,17963,17964,17975,17976,17978,17991,17993,17994,18048,18049,18050,18051,18052,18053,18054,18059,18062,18064,18086,18087,18105,18176,18177,18179,18182,18259,18309,18311,18312,18313,18314,18315,18317,18331,18394,18404,18405,18411,18419,18420,18421,18422,18429,18461,18463,18633,18647,18731,18794,18829,18860,18970,19136,19166,19167,19168,19208,19218,19219,19231,19307,19389,19422,19424,19434,19440,19442,19456,19457,19458,19459,19486,19493,19505,19507,19508,19509,19510,19511,19512,19513,19530,19532,19543,19632,19633,19706,19712,19713,19716,19730,19735,19754,19756,19792,19796,19806,19825,19826,19827,19843,19865,19874,19875,19946,19947,19953,19958,19962,19964,19969,19978,19979,20031,20032,20033,20034,20035,20039,20041,20043,20046,20052,20059,20075,20083,20143,20208,20216,20279,20280,20405,20502,20607,20867,20868,20870,20872,20878,20885,20886,20887,20924,20925,20988,20990,21050,21200,21221,21224,21225,21226,21227,21228,21246,21298,21299,21338,21339,21346,21350,21384,21385,21386,21497,21694,21695,21696,21704,21708,21729,21816,21854,22016,22017,22018,22143,22144,22148,22241,22242,22243,22295,22315,22341,22342,22343,22362,22363,22393,22394,22844,22845,22846,22849,22853,22855,22869,22873,22874,22875,22876,22877,22878,22879,22880,22881,22882,22883,22884,22885,22939,22945,22953,22954,22955,22956,22957,22959,22962,22964,23018,23022,23029,23035,23047,23049,23083,23136,23153,23196,23216,23219,23235,23236,23237,23247,23249,23318,23332,23337,23339,23368,23390,23391,23393,23394,23397,23400,23402,23403,23414,23523,23524,23542,23574,23580,23581,23582,23584,23586,23587,23596,23597,23619,23623,23624,23625,23626,23830,23834,23889,24043,24047,24064,24065,24179,24530,24656,24683,24684,24685,24686,24687,24688,24689,24690,24696,24697,24698,24761,24762,24815,24858,24999,25001,25002,25545,25547,25551,25553,25563,25565,25566,25567,25568,25569,25570,25572,25575,25576,25577);

-- r13
UPDATE `creature_template` SET `ScriptName` = 'mob_eventai' WHERE `entry` in (21717,21718,21719,21720,22331,21878,21879,18371,18343,13083,17808);

-- Any Script Changes from ACID to SD2 Script (Required Fixes)
UPDATE `creature_template` SET `ScriptName` = 'npc_elder_kuruti' WHERE `entry` = '18197';
UPDATE `creature_template` SET `ScriptName` = 'mob_shattered_rumbler' WHERE `entry` = '17157';

-- Removal of leftovers from First ACID Version of L70ETC (General Cleanup)
DELETE FROM `game_event` WHERE `entry`=100;
DELETE FROM `game_event_creature` WHERE `event`=100;

-- ACID stuff end


-- Triddy start
-- Scholomance
-- Blood Steward of Kirtonos
DELETE FROM `creature_loot_template` WHERE `entry`=14861;
REPLACE INTO `creature_loot_template` VALUES 
(14861, 12841, 35, 0, 1, 1, 10, 0, 0), -- Invader's Scourgestone
(14861, 14047, 29, 0, 1, 4, 0, 0, 0), -- Runecloth
(14861, 13523, 100, 0, 1, 1, 8, 5384, 0); -- Blood of Innocents(lootable only after completion of qid 5384)

-- Kirtonos the Herald
DELETE FROM `creature_loot_template` WHERE `entry`=10506;
REPLACE INTO `creature_loot_template` VALUES 
(10506, 13955, 0, 1, 1, 1, 0, 0, 0), -- Stoneform Shoulders
(10506, 14024, 0, 1, 1, 1, 0, 0, 0), -- Frightalon
(10506, 13983, 0, 1, 1, 1, 0, 0, 0), -- Gravestone War Axe
(10506, 16734, 0, 1, 1, 1, 0, 0, 0), -- Boots of Valor
(10506, 13957, 0, 1, 1, 1, 0, 0, 0), -- Gargoyle Slashers
(10506, 13969, 0, 1, 1, 1, 0, 0, 0), -- Loomguard Armbraces
(10506, 13967, 0, 1, 1, 1, 0, 0, 0), -- Windreaver Greaves
(10506, 13956, 0, 1, 1, 1, 0, 0, 0), -- Clutch of Andros
(10506, 13960, 0, 1, 1, 1, 0, 0, 0), -- Heart of the Fiend
(10506, 91029, 100, 1, -91029, 2, 0, 0, 0), -- 2 Drops
(10506, 4552, 14, 0, 1, 1, 0, 0, 0), -- Smooth Stone Chip
(10506, 4554, 5, 0, 1, 1, 0, 0, 0), -- Shiny Polished Stone
(10506, 12843, 100, 0, 1, 1, 10, 0, 0); -- Corruptor's Scourgestone

-- Lord Blackwood(Scourge Invasion Mob)
DELETE FROM `creature_loot_template` WHERE `entry`=14695;
REPLACE INTO `creature_loot_template` VALUES 
(14695, 23139, 0, 1, 1, 1, 0, 0, 0), -- Lord Blackwood's Buckler
(14695, 23132, 0, 1, 1, 1, 0, 0, 0), -- Lord Blackwood's Blade
(14695, 23156, 0, 1, 1, 1, 0, 0, 0), -- Blackwood's Thigh
(14695, 12841, 35, 0, 1, 1, 10, 0, 0); -- Invader's Scourgestone

-- Jandice Barov
DELETE FROM `creature_loot_template` WHERE `entry`=10503;
REPLACE INTO `creature_loot_template` VALUES
(10503, 14541, 0, 1, 1, 1, 0, 0, 0), -- Barovian Family Sword
(10503, 16701, 17, 1, 1, 1, 0, 0, 0), -- Dreadmist Mantle
(10503, 18690, 0, 1, 1, 1, 0, 0, 0), -- Wraithplate Leggings
(10503, 18689, 0, 1, 1, 1, 0, 0, 0), -- Phantasmal Cloak
(10503, 14548, 0, 1, 1, 1, 0, 0, 0), -- Royal Cap Spaulders
(10503, 14545, 0, 1, 1, 1, 0, 0, 0), -- Ghostloom Leggings
(10503, 22394, 0, 1, 1, 1, 0, 0, 0), -- Staff of Metanoia
(10503, 80016, 100, 1, -80016, 1, 0, 0, 0), -- 1 random 55/56 green item
(10503, 14047, 12, 0, 2, 5, 0, 0, 0), -- Runecloth
(10503, 12843, 100, 0, 1, 1, 10, 0, 0), -- Corruptor's Scourgestone
(10503, 13523, 100, 0, 1, 1, 8, 5384, 0), -- Blood of Innocents(lootable only after completion of qid 5384)
(10503, 13725, -100, 0, 1, 1, 0, 0, 0); -- Krastinov's Bag of Horrors (qid 5515)

-- Rattlegore
DELETE FROM `creature_loot_template` WHERE `entry`=11622;
REPLACE INTO `creature_loot_template` VALUES 
(11622, 16711, 16, 1, 1, 1, 0, 0, 0), -- Shadowcraft Boots
(11622, 14531, 0, 1, 1, 1, 0, 0, 0), -- Frightskull Shaft
(11622, 14537, 0, 1, 1, 1, 0, 0, 0), -- Corpselight Greaves
(11622, 14538, 0, 1, 1, 1, 0, 0, 0), -- Deadwalker Mantle
(11622, 14539, 0, 1, 1, 1, 0, 0, 0), -- Bone Ring Helm
(11622, 18686, 0, 1, 1, 1, 0, 0, 0), -- Bone Golem Shoulders
(11622, 14528, 0, 1, 1, 1, 0, 0, 0), -- Rattlecage Buckler
(11622, 22526, 48, 0, 1, 4, 0, 0, 0), -- Bone Fragments
(11622, 14047, 16, 0, 1, 5, 0, 0, 0), -- Runecloth
(11622, 12841, 35, 0, 1, 1, 10, 0, 0), -- Invader's Scourgestone
(11622, 13873, 100, 0, 1, 1, 0, 0, 0), -- Viewing Room Key
(11622, 18782, 40, 0, 1, 1, 0, 0, 0); -- Top Half of Advanced Armorsmithing Volume 2

-- Death Knight Darkreaver
DELETE FROM `creature_loot_template` WHERE `entry`=14516;
REPLACE INTO `creature_loot_template` VALUES 
(14516, 18759, 0, 1, 1, 1, 0, 0, 0), -- Malicious Axe
(14516, 18758, 0, 1, 1, 1, 0, 0, 0), -- Specter's Blade
(14516, 18761, 0, 1, 1, 1, 0, 0, 0), -- Oblivion's Touch
(14516, 18760, 0, 1, 1, 1, 0, 0, 0), -- Necromatic Band
(14516, 14047, 10, 0, 2, 5, 0, 0, 0), -- Runecloth
(14516, 12843, 100, 0, 1, 1, 10, 0, 0), -- Corruptor's Scourgestone
(14516, 18749, -100, 0, 1, 1, 0, 0, 0), -- Charger's Lost Soul(qid 7647)
(14516, 18880, -100, 0, 1, 1, 0, 0, 0); -- Darkreaver's Head(qid 8258)

-- Marduk Blackpool
DELETE FROM `creature_loot_template` WHERE `entry`=10433;
REPLACE INTO `creature_loot_template` VALUES 
(10433, 18692, 5, 1, 1, 1, 0, 0, 0), -- Death Knight Sabatons
(10433, 14576, 8, 1, 1, 1, 0, 0, 0), -- Ebon Hilt of Marduk
(10433, 14047, 20, 0, 2, 4, 0, 0, 0), -- Runecloth
(10433, 12843, 100, 0, 1, 1, 10, 0, 0); -- Corruptor's Scourgestone

-- Vectus
DELETE FROM `creature_loot_template` WHERE `entry`=10432;
REPLACE INTO `creature_loot_template` VALUES
(10432, 18691, 7, 1, 1, 1, 0, 0, 0), -- Dark Advisor's Pendant
(10432, 14577, 7, 1, 1, 1, 0, 0, 0), -- Skullsmoke Pants 
(10432, 22526, 50, 0, 2, 4, 0, 0, 0), -- Bone Fragments
(10432, 14047, 18, 0, 2, 4, 0, 0, 0), -- Runecloth
(10432, 12843, 100, 0, 1, 1, 10, 0, 0); -- Corruptor's Scourgestone

-- Kormok(Dungeon 2 Summon)
DELETE FROM `creature_loot_template` WHERE `entry`=16118;
REPLACE INTO `creature_loot_template` VALUES 
(16118, 22331, 0, 1, 1, 1, 0, 0, 0), -- Band of the Steadfast Hero
(16118, 22333, 0, 1, 1, 1, 0, 0, 0), -- Hammer of Divine Might
(16118, 22332, 0, 1, 1, 1, 0, 0, 0), -- Blade of Necromancy
(16118, 22326, 0, 1, 1, 1, 0, 0, 0), -- Amalgam's Band
(16118, 22303, 0, 1, 1, 1, 0, 0, 0), -- Ironweave Pants
(16118, 21984, -100, 0, 1, 1, 0, 0, 0), -- Left Piece of Lord Valthalak's Amulet(qid 8969)
(16118, 22046, -100, 0, 1, 1, 0, 0, 0); -- Right Piece of Lord Valthalak's Amulet(qid 8992)

-- Ras Frostwhisper 
DELETE FROM `creature_loot_template` WHERE `entry`=10508;
REPLACE INTO `creature_loot_template` VALUES 
(91030, 14503, 0, 1, 1, 1, 0, 0, 0), -- Death's Clutch
(91030, 14487, 0, 1, 1, 1, 0, 0, 0), -- Bonechill Hammer
(91030, 13952, 0, 1, 1, 1, 0, 0, 0), -- Iceblade Hacker
(91030, 18696, 0, 1, 1, 1, 0, 0, 0), -- Intricately Runed Shield
(91030, 14522, 0, 1, 1, 1, 0, 0, 0), -- Maelstrom Leggings
(91030, 18694, 0, 1, 1, 1, 0, 0, 0), -- Shadowy Mail Greaves
(91030, 16689, 0, 1, 1, 1, 0, 0, 0), -- Magister's Mantle
(91030, 18693, 0, 1, 1, 1, 0, 0, 0), -- Shivery Handwraps
(91030, 14502, 0, 1, 1, 1, 0, 0, 0), -- Frostbite Girdle
(91030, 14340, 0, 1, 1, 1, 0, 0, 0), -- Freezing Lich Robes
(91030, 14525, 0, 1, 1, 1, 0, 0, 0), -- Boneclenched Gauntlets
(91030, 18695, 0, 1, 1, 1, 0, 0, 0), -- Spellbound Tome
(91030, 13314, 2, 1, 1, 1, 0, 0, 0), -- Alanna's Embrace
(10508, 91030, 100, 1, -91030, 2, 0, 0, 0), -- 2 Drops
(10508, 14047, 15, 0, 2, 5, 0, 0, 0), -- Runecloth
(10508, 13521, 4, 0, 1, 1, 0, 0, 0), -- Recipe Flask of Supreme Power
(10508, 13626, -100, 0, 1, 1, 0, 0, 0), -- Human Head of Ras Frostwhisper(qid 5466)
(10508, 12843, 100, 0, 1, 1, 10, 0, 0); -- Corruptor's Scourgestone

-- Mini-boss loot 91031
REPLACE INTO `creature_loot_template` VALUES 
(91031, 18680, 0, 1, 1, 1, 0, 0, 0), -- Ancient Bone Bow
(91031, 14614, 0, 1, 1, 1, 0, 0, 0), -- Bloodmail set
(91031, 14616, 0, 1, 1, 1, 0, 0, 0),
(91031, 14615, 0, 1, 1, 1, 0, 0, 0),
(91031, 14611, 0, 1, 1, 1, 0, 0, 0),
(91031, 14612, 0, 1, 1, 1, 0, 0, 0),
(91031, 18681, 0, 1, 1, 1, 0, 0, 0), -- Burial Shawl
(91031, 14637, 0, 1, 1, 1, 0, 0, 0), -- Cadaverous set
(91031, 14636, 0, 1, 1, 1, 0, 0, 0),
(91031, 14640, 0, 1, 1, 1, 0, 0, 0),
(91031, 14638, 0, 1, 1, 1, 0, 0, 0),
(91031, 14641, 0, 1, 1, 1, 0, 0, 0),
(91031, 14624, 0, 1, 1, 1, 0, 0, 0), -- Deathbone set
(91031, 14622, 0, 1, 1, 1, 0, 0, 0),
(91031, 14620, 0, 1, 1, 1, 0, 0, 0),
(91031, 14623, 0, 1, 1, 1, 0, 0, 0),
(91031, 14621, 0, 1, 1, 1, 0, 0, 0),
(91031, 18684, 0, 1, 1, 1, 0, 0, 0), -- Dimly Opalescent Ring
(91031, 18682, 0, 1, 1, 1, 0, 0, 0), -- Ghoul Skin Leggings
(91031, 18683, 0, 1, 1, 1, 0, 0, 0), -- Hammer of the Vesper
(91031, 23201, 0, 1, 1, 1, 0, 0, 0), -- Libram of Divinity
(91031, 14631, 0, 1, 1, 1, 0, 0, 0), -- Necropile set
(91031, 14629, 0, 1, 1, 1, 0, 0, 0),
(91031, 14632, 0, 1, 1, 1, 0, 0, 0),
(91031, 14633, 0, 1, 1, 1, 0, 0, 0),
(91031, 14626, 0, 1, 1, 1, 0, 0, 0),
(91031, 23200, 0, 1, 1, 1, 0, 0, 0); -- Totem of Sustaining

-- Instructor Malicia
DELETE FROM `creature_loot_template` WHERE `entry`=10505;
REPLACE INTO `creature_loot_template` VALUES 
(10505, 91031, 30, 1, -91031, 1, 0, 0, 0), -- Chance to drop from the shared table
(10505, 16710, 5, 1, 1, 1, 0, 0, 0), -- Shadowcraft Bracers
(10505, 20520, 44, 0, 1, 1, 0, 0, 0), -- Dark Rune
(10505, 14047, 18, 0, 1, 4, 0, 0, 0), -- Runecloth
(10505, 12753, 17, 0, 1, 1, 0, 0, 0), -- Skin of Shadow
(10505, 12843, 100, 0, 1, 1, 10, 0, 0); -- Corruptor's Scourgestone

-- Doctor Theolen Krastinov
DELETE FROM `creature_loot_template` WHERE `entry`=11261;
REPLACE INTO `creature_loot_template` VALUES 
(11261, 91031, 30, 1, -91031, 1, 0, 0, 0), -- Chance to drop from the shared table
(11261, 16684, 14, 1, 1, 1, 0, 0, 0), -- Magister's Gloves
(11261, 14047, 14, 0, 1, 4, 0, 0, 0), -- Runecloth
(11261, 14617, 2, 0, 1, 1, 0, 0, 0), -- Sawbones Shirt
(11261, 13523, 100, 0, 1, 1, 8, 5384, 0), -- Blood of Innocents(lootable only after completion of qid 5384)
(11261, 12843, 100, 0, 1, 1, 10, 0, 0); -- Corruptor's Scourgestone

-- Lorekeeper Polkelt
DELETE FROM `creature_loot_template` WHERE `entry`=10901;
REPLACE INTO `creature_loot_template` VALUES 
(10901, 91031, 30, 1, -91031, 1, 0, 0, 0), -- Chance to drop from the shared table
(10901, 16705, 17, 1, 1, 1, 0, 0, 0), -- Dreadmist Wraps
(10901, 20520, 44, 0, 1, 1, 0, 0, 0), -- Dark Rune
(10901, 12841, 35, 0, 1, 1, 10, 0, 0), -- Invader's Scourgestone
(10901, 6530, 11, 0, 1, 1, 0, 0, 0), -- Nightcrawlers
(10901, 14047, 17, 0, 2, 4, 0, 0, 0), -- Runecloth
(10901, 12753, 17, 0, 1, 1, 0, 0, 0); -- Skin of Shadow

-- The Ravenian
DELETE FROM `creature_loot_template` WHERE `entry`=10507;
REPLACE INTO `creature_loot_template` VALUES
(10507, 91031, 30, 1, -91031, 1, 0, 0, 0), -- Chance to drop from the shared table
(10507, 16716, 4, 1, 1, 1, 0, 0, 0), -- Wildheart Belt
(10507, 20520, 44, 0, 1, 1, 0, 0, 0), -- Dark Rune
(10507, 6530, 11, 0, 1, 1, 0, 0, 0), -- Nightcrawlers
(10507, 14047, 16, 0, 1, 4, 0, 0, 0), -- Runecloth
(10507, 12843, 100, 0, 1, 1, 10, 0, 0), -- Corruptor's Scourgestone
(10507, 12753, 17, 0, 1, 1, 0, 0, 0); -- Skin of Shadow

-- Lord Alexi Barov
DELETE FROM `creature_loot_template` WHERE `entry`=10504;
REPLACE INTO `creature_loot_template` VALUES 
(10504, 91031, 60, 1, -91031, 1, 0, 0, 0), -- Higher chance to drop from the shared table
(10504, 14047, 17, 0, 1, 4, 0, 0, 0), -- Runecloth
(10504, 16722, 5, 1, 1, 1, 0, 0, 0), -- Lightforge Bracers
(10504, 12843, 100, 0, 1, 1, 10, 0, 0); -- Corruptor's Scourgestone

-- Lord Illucia Barov
DELETE FROM `creature_loot_template` WHERE `entry`=10502;
REPLACE INTO `creature_loot_template` VALUES
(10502, 91031, 30, 1, -91031, 1, 0, 0, 0), -- Chance to drop from the shared table
(10502, 20520, 48, 0, 1, 1, 0, 0, 0), -- Dark Rune
(10502, 14047, 17, 0, 1, 4, 0, 0, 0), -- Runecloth 
(10502, 12753, 19, 0, 1, 1, 0, 0, 0), -- Skin of Shadow
(10502, 12843, 100, 0, 1, 1, 10, 0, 0); -- Corruptor's Scourgestone

-- Darkmaster Gandling
DELETE FROM `creature_loot_template` WHERE (`entry`=1853);
REPLACE INTO `creature_loot_template` VALUES 
(1853, 16698, 0, 1, 1, 1, 0, 0, 0), -- Dungeon 1 Helms
(1853, 16667, 0, 1, 1, 1, 0, 0, 0),
(1853, 16677, 0, 1, 1, 1, 0, 0, 0),
(1853, 16686, 0, 1, 1, 1, 0, 0, 0),
(1853, 16693, 0, 1, 1, 1, 0, 0, 0),
(1853, 16707, 0, 1, 1, 1, 0, 0, 0),
(1853, 16720, 0, 1, 1, 1, 0, 0, 0),
(1853, 16727, 0, 1, 1, 1, 0, 0, 0),
(1853, 16731, 0, 1, 1, 1, 0, 0, 0),
(1853, 13937, 2, 2, 1, 1, 0, 0, 0), -- Headmaster's Charge
(1853, 13964, 0, 2, 1, 1, 0, 0, 0), -- Witchblade
(1853, 13953, 0, 2, 1, 1, 0, 0, 0), -- Silent Fang
(1853, 13938, 0, 2, 1, 1, 0, 0, 0), -- Bonecreeper Stylus
(1853, 13951, 0, 2, 1, 1, 0, 0, 0), -- Vigorsteel Vambraces
(1853, 13398, 0, 2, 1, 1, 0, 0, 0), -- Boots of the Shrieker
(1853, 13944, 0, 2, 1, 1, 0, 0, 0), -- Tombstone Breastplate
(1853, 22433, 0, 2, 1, 1, 0, 0, 0), -- Don Mauricio's Band of Domination
(1853, 19276, 3, 0, 1, 1, 0, 0, 0), -- Ace of Portals
(1853, 14514, 7, 0, 1, 1, 0, 0, 0), -- Pattern Robe of the Void
(1853, 13501, 10, 0, 1, 1, 7, 171, 1), -- Recipe Major Mana Potion
(1853, 12843, 100, 0, 1, 1, 10, 0, 0); -- Corruptor's Scourgestone

-- Skin of Shadow is not a quest drop
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=17 WHERE `item`=12753 AND `entry` IN (10488, 10491);

-- Live Strath
-- Skul (RARE)
DELETE FROM `creature_loot_template` WHERE `entry`=10393;
REPLACE INTO `creature_loot_template` VALUES 
(10393, 13395, 0, 1, 1, 1, 0, 0, 0), -- Skul's Fingerbone Claws
(10393, 13394, 0, 1, 1, 1, 0, 0, 0), -- Skul's Cold Embrace
(10393, 13396, 0, 1, 1, 1, 0, 0, 0), -- Skul's Ghastly Touch
(10393, 22526, 57, 0, 2, 4, 0, 0, 0), -- Bone Fragments
(10393, 14047, 22, 0, 2, 4, 0, 0, 0), -- Runecloth
(10393, 12843, 100, 0, 1, 1, 10, 0, 0); -- Corruptor's Scourgestone

-- Balzaphon (Scourge Invasion Mob)
DELETE FROM `creature_loot_template` WHERE `entry`=14684;
REPLACE INTO `creature_loot_template` VALUES 
(14684, 23126, 0, 1, 1, 1, 0, 0, 0), -- Waistband of Balzaphon
(14684, 23124, 0, 1, 1, 1, 0, 0, 0), -- Staff of Balzaphon
(14684, 23125, 0, 1, 1, 1, 0, 0, 0), -- Chains of the Lich
(14684, 14047, 19, 0, 2, 4, 0, 0, 0), -- Runecloth
(14684, 12843, 100, 0, 1, 1, 10, 0, 0); -- Corruptor's Scourgestone

-- Stratholme Courier
DELETE FROM `creature_loot_template` WHERE `entry`=11082;
REPLACE INTO `creature_loot_template` VALUES 
(11082, 13307, 0, 1, 1, 1, 0, 0, 0), -- Postbox keys, have to arbitrarily group to ensure 3 separate keys drop
(11082, 13306, 0, 1, 1, 1, 0, 0, 0),
(11082, 13305, 0, 2, 1, 1, 0, 0, 0),
(11082, 13303, 0, 2, 1, 1, 0, 0, 0),
(11082, 13302, 0, 3, 1, 1, 0, 0, 0),
(11082, 13304, 0, 3, 1, 1, 0, 0, 0),
(11082, 12841, 35, 0, 1, 1, 10, 0, 0), -- Invader's Scourgestone
(11082, 14047, 39, 0, 2, 4, 0, 0, 0), -- Runecloth
(11082, 22526, 27, 0, 2, 4, 0, 0, 0); -- Bone Fragments

-- Fras Siabi
DELETE FROM `creature_loot_template` WHERE `entry`=11058;
REPLACE INTO `creature_loot_template` VALUES 
(11058, 12843, 100, 0, 1, 1, 10, 0, 0), -- Corruptor's Scourgestone
(11058, 22526, 38, 0, 2, 4, 0, 0, 0), -- Bone Fragments
(11058, 14047, 11, 0, 2, 5, 0, 0, 0), -- Runecloth
(11058, 13172, -100, 0, 1, 1, 0, 0, 0); -- Siabi's Premium Tobacco(qid 5214)

-- Hearthsinger Forresten
DELETE FROM `creature_loot_template` WHERE `entry`=10558;
REPLACE INTO `creature_loot_template` VALUES
(10558, 13383, 0, 1, 1, 1, 0, 0, 0), -- Woolies of the Prancing Minstrel
(10558, 13384, 0, 1, 1, 1, 0, 0, 0), -- Rainbow Girdle
(10558, 13379, 0, 1, 1, 1, 0, 0, 0), -- Piccolo of the Flaming Fire
(10558, 16682, 0, 1, 1, 1, 0, 0, 0), -- Magister's Boots
(10558, 13378, 0, 1, 1, 1, 0, 0, 0), -- Songbird Blouse
(10558, 14047, 25, 0, 2, 4, 0, 0, 0), -- Runecloth
(10558, 12843, 100, 0, 1, 1, 10, 0, 0), -- Corruptor's Scourgestone
(10558, 13174, -80, 0, 1, 3, 0, 0, 0); -- Plagued Flesh Sample (qid 5212)

-- The Unforgiven
DELETE FROM `creature_loot_template` WHERE `entry`=10516;
REPLACE INTO `creature_loot_template` VALUES
(10516, 13408, 0, 1, 1, 1, 0, 0, 0), -- Soul Breaker
(10516, 13409, 0, 1, 1, 1, 0, 0, 0), -- Tearfall Bracers
(10516, 13404, 0, 1, 1, 1, 0, 0, 0), -- Mask of the Unforgiven
(10516, 13405, 0, 1, 1, 1, 0, 0, 0), -- Wailing Nightbane Pauldrons
(10516, 16717, 0, 1, 1, 1, 0, 0, 0), -- Wildheart Gloves
(10516, 14047, 24, 0, 2, 4, 0, 0, 0), -- Runecloth
(10516, 12843, 100, 0, 1, 1, 10, 0, 0), -- Corruptor's Scourgestone
(10516, 13174, -80, 0, 1, 1, 0, 0, 0); -- Plagued Flesh Sample (qid 5212)

-- Postmaster Malown
DELETE FROM `creature_loot_template` WHERE `entry`=11143;
REPLACE INTO `creature_loot_template` VALUES
(11143, 13392, 0, 1, 1, 1, 0, 0, 0), -- The Postmaster's Seal
(11143, 13393, 0, 1, 1, 1, 0, 0, 0), -- Malown's Slam
(11143, 13389, 0, 1, 1, 1, 0, 0, 0), -- The Postmaster's Trousers
(11143, 13391, 0, 1, 1, 1, 0, 0, 0), -- The Postmaster's Treads
(11143, 13388, 0, 1, 1, 1, 0, 0, 0), -- The Postmaster's Tunic
(11143, 13390, 3, 1, 1, 1, 0, 0, 0),  -- The Postmaster's Band
(11143, 14047, 20, 0, 2, 4, 0, 0, 0), -- Runecloth
(11143, 12843, 100, 0, 1, 1, 10, 0, 0), -- Corruptor's Scourgestone
(11143, 13174, -80, 0, 1, 1, 0, 0, 0); -- Plagued Flesh Sample (qid 5212)

-- Timmy the Cruel
DELETE FROM `creature_loot_template` WHERE `entry`=10808;
REPLACE INTO `creature_loot_template` VALUES 
(10808, 13402, 0, 1, 1, 1, 0, 0, 0), -- Timmy's Galoshes
(10808, 13401, 0, 1, 1, 1, 0, 0, 0), -- The Cruel Hand of Timmy
(10808, 13403, 0, 1, 1, 1, 0, 0, 0), -- Grimgore Noose
(10808, 13400, 0, 1, 1, 1, 0, 0, 0), -- Vambraces of the Sadist
(10808, 16724, 0, 1, 1, 1, 0, 0, 0), -- Lightforge Gauntlets
(10808, 6530, 11, 0, 1, 1, 0, 0, 0), -- Nightcrawlers
(10808, 14047, 17, 0, 2, 4, 0, 0, 0), -- Runecloth
(10808, 12843, 100, 0, 1, 1, 10, 0, 0), -- Corruptor's Scourgestone
(10808, 13174, -80, 0, 2, 4, 0, 0, 0); -- Plagued Flesh Sample (qid 5212)

-- Medallion of Faith or Enchanted Scarlet Thread do not drop from any mobs, they are looted through gameobjects in Malor the Zealous' room
DELETE FROM `creature_loot_template` WHERE `item` IN (12734, 12845);

-- Crimson Hammersmith
DELETE FROM `creature_loot_template` WHERE `entry`=11120;
REPLACE INTO `creature_loot_template` VALUES
(11120, 18781, 40, 0, 1, 1, 0, 0, 0), -- Bottom Half of Advanced Armorsmithing Volume 2
(11120, 14047, 26, 0, 2, 4, 0, 0, 0), -- Runecloth
(11120, 13351, -100, 0, 1, 1, 0, 0, 0); -- Crimson Hammersmith's Apron(qid 5305)

-- Cannon Master Willey
DELETE FROM `creature_loot_template` WHERE `entry`=10997;
REPLACE INTO `creature_loot_template` VALUES 
(91026, 22405, 20, 1, 1, 1, 0, 0, 0), -- Mantle of the Scarlet Crusade
(91026, 22403, 20, 1, 1, 1, 0, 0, 0), -- Diana's Pearl Necklace
(91026, 22407, 20, 1, 1, 1, 0, 0, 0), -- Helm of the New Moon
(91026, 13382, 0, 1, 1, 1, 0, 0, 0), -- Cannonball Runner
(91026, 13381, 0, 1, 1, 1, 0, 0, 0), -- Master Cannoneer Boots
(91026, 16708, 0, 1, 1, 1, 0, 0, 0), -- Shadowcraft Spaulders
(91026, 18721, 0, 1, 1, 1, 0, 0, 0), -- Barrage Girdle
(91026, 13380, 0, 1, 1, 1, 0, 0, 0), -- Willey's Portable Howitzer
(91026, 22406, 10, 1, 1, 1, 0, 0, 0), -- Redemption
(91026, 22404, 8, 1, 1, 1, 0, 0, 0), -- Willey's Back Scratcher
(10997, 91026, 100, 1, -91026, 2, 0, 0, 0), -- 2 Drops
(10997, 12839, 6, 0, 1, 1, 0, 0, 0), -- Plans Heartseeker
(10997, 13377, 100, 0, 50, 199, 0, 0, 0), -- Minature Cannon Balls
(10997, 14047, 13, 0, 2, 4, 0, 0, 0); -- Runecloth

-- Archivist Galford
DELETE FROM `creature_loot_template` WHERE `entry`=10811;
REPLACE INTO `creature_loot_template` VALUES 
(10811, 16692, 0, 1, 1, 1, 0, 0, 0), -- Devout Gloves
(10811, 13387, 0, 1, 1, 1, 0, 0, 0), -- Foresight Girdle
(10811, 13386, 0, 1, 1, 1, 0, 0, 0), -- Archivist Cape
(10811, 18716, 0, 1, 1, 1, 0, 0, 0), -- Ash Covered Boots
(10811, 13385, 12, 1, 1, 1, 0, 0, 0), -- Tome of Knowledge
(10811, 22897, 14, 0, 1, 1, 0, 0, 0), -- Tome of Conjure Food VII
(10811, 14047, 19, 0, 2, 4, 0, 0, 0), -- Runecloth
(10811, 12811, 66, 0, 1, 1, 0, 0, 0); -- Righteous Orb

-- Dathrohan/Balnazzar
-- Dathrohan has no loot
UPDATE `creature_template` SET `lootid`=0 WHERE `entry`=10812;
DELETE FROM `creature_loot_template` WHERE `entry`=10812;

-- Balnazzar
UPDATE `creature_template` SET `lootid`=10813 WHERE `entry`=10813;
REPLACE INTO `creature_loot_template` VALUES 
(91027, 13353, 2, 1, 1, 1, 0, 0, 0), -- Book of the Dead
(91027, 13369, 0, 1, 1, 1, 0, 0, 0), -- Fire Striders
(91027, 16725, 0, 1, 1, 1, 0, 0, 0), -- Lightforge Boots
(91027, 18717, 0, 1, 1, 1, 0, 0, 0), -- Hammer of the Grand Crusader
(91027, 13359, 0, 1, 1, 1, 0, 0, 0), -- Crown of Tyranny
(91027, 18718, 0, 1, 1, 1, 0, 0, 0), -- Grand Crusader's Helm
(91027, 12103, 0, 1, 1, 1, 0, 0, 0), -- Star of Mystaria
(91027, 18720, 0, 1, 1, 1, 0, 0, 0), -- Shroud of the Nathrezim
(91027, 13358, 0, 1, 1, 1, 0, 0, 0), -- Wyrmtongue Shoulders
(91027, 13348, 0, 1, 1, 1, 0, 0, 0), -- Demonshear
(91027, 13360, 0, 1, 1, 1, 0, 0, 0), -- Gift of the Elven Magi
(10813, 91027, 100, 1, -91027, 2, 0, 0, 0), -- 2 Drops
(10813, 13250, 100, 0, 1, 1, 8, 5251, 0), -- Head of Balnazzar(requires qid 5251 completed to drop)
(10813, 13520, 3, 0, 1, 1, 0, 0, 0), -- Recipe Flask of Distilled Wisdom
(10813, 14512, 6, 0, 1, 1, 0, 0, 0), -- Pattern Truefaith Vestments
(10813, 12662, 8, 0, 1, 1, 0, 0, 0), -- Demonic Rune
(10813, 14047, 15, 0, 2, 5, 0, 0, 0); -- Runecloth

-- Jarien and Sothos(Dungeon 2 Summonable)
-- Sothos
DELETE FROM `creature_loot_template` WHERE `entry`=16102;
REPLACE INTO `creature_loot_template` VALUES 
(16102, 21984, -100, 0, 1, 1, 0, 0, 0), -- Left Piece of Lord Valthalak's Amulet
(16102, 22046, -100, 0, 1, 1, 0, 0, 0); -- Right Piece of Lord Valthalak's Amulet

-- Jarien
DELETE FROM `creature_loot_template` WHERE `entry`=16101;
REPLACE INTO `creature_loot_template` VALUES 
(16101, 21984, -100, 0, 1, 1, 0, 0, 0), -- Left Piece of Lord Valthalak's Amulet
(16101, 22046, -100, 0, 1, 1, 0, 0, 0); -- Right Piece of Lord Valthalak's Amulet

-- Sothos and Jarien's Heirlooms(GO 181083) chest for loot
REPLACE INTO `gameobject_loot_template` VALUES 
(17919, 22329, 0, 1, 1, 1, 0, 0, 0), -- Scepter of Interminable Focus
(17919, 22327, 0, 1, 1, 1, 0, 0, 0), -- Amulet of the Redeemed
(17919, 22301, 0, 1, 1, 1, 0, 0, 0), -- Ironweave Robe
(17919, 22334, 0, 1, 1, 1, 0, 0, 0), -- Band of Mending
(17919, 22328, 0, 1, 1, 1, 0, 0, 0); -- Legplates of Vigilance

-- UD Strath
-- Stratholme Holy Water should only drop in Stratholme Crates
DELETE FROM `creature_loot_template` WHERE `item`=13180;

-- Stonespine (RARE)
DELETE FROM `creature_loot_template` WHERE `entry`=10809;
REPLACE INTO `creature_loot_template` VALUES 
(10809, 13399, 0, 1, 1, 1, 0, 0, 0), -- Gargoyle Shredder Talons
(10809, 13954, 0, 1, 1, 1, 0, 0, 0), -- Verdant Footpads
(10809, 13397, 0, 1, 1, 1, 0, 0, 0), -- Stoneskin Gargoyle Cape
(10809, 4552, 18, 0, 1, 1, 0, 0, 0), -- Smooth Stone Chip
(10809, 4554, 6, 0, 1, 1, 0, 0, 0), -- Shiny Polished Stone
(10809, 12843, 100, 0, 1, 1, 10, 0, 0); -- Corruptor's Scourgestone

-- Nerub'enkan
DELETE FROM `creature_loot_template` WHERE `entry`=10437;
REPLACE INTO `creature_loot_template` VALUES 
(10437, 13529, 0, 1, 1, 1, 0, 0, 0), -- Husk of Nerub'enkan
(10437, 16675, 0, 1, 1, 1, 0, 0, 0), -- Beaststalker's Boots
(10437, 18738, 0, 1, 1, 1, 0, 0, 0), -- Carapace Spine Crossbow
(10437, 18740, 0, 1, 1, 1, 0, 0, 0), -- Thuzadin Sash
(10437, 18739, 0, 1, 1, 1, 0, 0, 0), -- Chitinous Plate Legguards
(10437, 13532, 0, 2, 1, 1, 0, 0, 0), -- Darkspinner Claws
(10437, 13530, 0, 2, 1, 1, 0, 0, 0), -- Fangdrip Runners
(10437, 13531, 0, 2, 1, 1, 0, 0, 0), -- Crypt Stalker Leggings
(10437, 13533, 0, 2, 1, 1, 0, 0, 0), -- Acid-etched Pauldrons
(10437, 13508, 0, 2, 1, 1, 0, 0, 0), -- Eye of Arachnida
(10437, 22525, 47, 0, 2, 4, 0, 0, 0), -- Crypt Fiend Parts
(10437, 4585, 17, 0, 1, 1, 0, 0, 0), -- Dripping Spider Mandible
(10437, 1074, 6, 0, 1, 1, 0, 0, 0), -- Hard Spider Leg Tip
(10437, 10285, 7, 0, 1, 1, 0, 0, 0), -- Shadow Silk
(10437, 4337, 6, 0, 1, 1, 0, 0, 0), -- Thick Spider's Silk
(10437, 12843, 100, 0, 1, 1, 10, 0, 0), -- Corruptor's Scourgestone
(10437, 13174, -80, 0, 2, 4, 0, 0, 0); -- Plagued Flesh Sample (qid 5212)

-- Baroness Anastari
DELETE FROM `creature_loot_template` WHERE `entry`=10436;
REPLACE INTO `creature_loot_template` VALUES 
(10436, 13534, 0, 1, 1, 1, 0, 0, 0), -- Banshee Finger
(10436, 18729, 0, 1, 1, 1, 0, 0, 0), -- Screeching Bow
(10436, 16704, 0, 1, 1, 1, 0, 0, 0), -- Dreadmist Sandals
(10436, 18730, 0, 1, 1, 1, 0, 0, 0), -- Shadowy Laced Handwraps
(10436, 18728, 0, 1, 1, 1, 0, 0, 0), -- Anastari Heirloom
(10436, 13539, 0, 2, 1, 1, 0, 0, 0), -- Banshee's Touch
(10436, 13514, 0, 2, 1, 1, 0, 0, 0), -- Wail of the Banshee
(10436, 13538, 0, 2, 1, 1, 0, 0, 0), -- Windshrieker Pauldrons
(10436, 13537, 0, 2, 1, 1, 0, 0, 0), -- Chillhide Bracers
(10436, 13535, 0, 2, 1, 1, 0, 0, 0), -- Coldtouch Phantom Wraps
(10436, 14047, 18, 0, 2, 4, 0, 0, 0), -- Runecloth
(10436, 12843, 100, 0, 1, 1, 10, 0, 0), -- Corruptor's Scourgestone
(10436, 13174, -80, 0, 1, 3, 0, 0, 0); -- Plagued Flesh Sample (qid 5212)

-- Black Guard Swordsmith
DELETE FROM `creature_loot_template` WHERE `entry`=11121;
REPLACE INTO `creature_loot_template` VALUES 
(11121, 18783, 40, 0, 1, 1, 0, 0, 0), -- Bottom Half of Advanced Armorsmithing Volume III
(11121, 12841, 35, 0, 1, 1, 10, 0, 0), -- Invader's Scourgestone
(11121, 22526, 25, 0, 2, 4, 0, 0, 0), -- Bone Fragments
(11121, 14047, 19, 0, 2, 4, 0, 0, 0), -- Runecloth
(11121, 13350, -100, 0, 1, 1, 0, 0, 0); -- Insignia of the Black Guard(qid 5307)

-- Maleki The Pallid
DELETE FROM `creature_loot_template` WHERE `entry`=10438;
REPLACE INTO `creature_loot_template` VALUES 
(10438, 16691, 0, 1, 1, 1, 0, 0, 0), -- Devout Sandals
(10438, 18735, 0, 1, 1, 1, 0, 0, 0), -- Maleki's Footwraps
(10438, 18737, 0, 1, 1, 1, 0, 0, 0), -- Bone Slicing Hatchet
(10438, 18734, 0, 1, 1, 1, 0, 0, 0), -- Pale Moon Cloak
(10438, 13524, 0, 1, 1, 1, 0, 0, 0), -- Skull of Burning Shadows
(10438, 13509, 0, 2, 1, 1, 0, 0, 0), -- Clutch of Foresight
(10438, 13526, 0, 2, 1, 1, 0, 0, 0), -- Flamescarred Girdle
(10438, 13527, 0, 2, 1, 1, 0, 0, 0), -- Lavawalker Greaves
(10438, 13525, 0, 2, 1, 1, 0, 0, 0), -- Darkbind Fingers
(10438, 13528, 0, 2, 1, 1, 0, 0, 0), -- Twilight Void Bracers
(10438, 14047, 17, 0, 2, 5, 0, 0, 0), -- Runecloth
(10438, 12833, 6, 0, 1, 1, 0, 0, 0), -- Plans Hammer of the Titans
(10438, 12843, 100, 0, 1, 1, 10, 0, 0); -- Corruptor's Scourgestone

-- Magistrate Barthilas
DELETE FROM `creature_loot_template` WHERE `entry`=10435;
REPLACE INTO `creature_loot_template` VALUES 
(10435, 18725, 0, 1, 1, 1, 0, 0, 0), -- Peacemaker
(10435, 18726, 0, 1, 1, 1, 0, 0, 0), -- Magistrate's Cuffs
(10435, 18722, 0, 1, 1, 1, 0, 0, 0), -- Death Grips
(10435, 18727, 0, 1, 1, 1, 0, 0, 0), -- Crimson Felt Hat
(10435, 23198, 0, 1, 1, 1, 0, 0, 0), -- Idol of Brutality
(10435, 13376, 0, 1, 1, 1, 0, 0, 0), -- Royal Tribunal Cloak
(10435, 14047, 17, 0, 1, 4, 0, 0, 0), -- Runecloth
(10435, 6530, 11, 0, 1, 1, 0, 0, 0), -- Nightcrawlers
(10435, 12382, 100, 0, 1, 1, 0, 0, 0), -- Key to the City
(10435, 12843, 100, 0, 1, 1, 10, 0, 0), -- Corruptor's Scourgestone
(10435, 13174, -80, 0, 2, 4, 0, 0, 0); -- Plagued Flesh Sample (qid 5212)

-- Frayed Abomination Stitchings are not quest drops
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=15 WHERE `item`=12735;

-- Ramstein the Gorger
DELETE FROM `creature_loot_template` WHERE `entry`=10439;
REPLACE INTO `creature_loot_template` VALUES 
(10439, 16737, 12, 1, 1, 1, 0, 0, 0), -- Gauntlets of Valor
(10439, 13372, 0, 1, 1, 1, 0, 0, 0), -- Slavedriver's Cane
(10439, 13515, 0, 1, 1, 1, 0, 0, 0), -- Ramstein's Lightning Bolts
(10439, 13375, 0, 1, 1, 1, 0, 0, 0), -- Crest of Retribution
(10439, 13374, 0, 1, 1, 1, 0, 0, 0), -- Soulstealer Mantle
(10439, 18723, 0, 1, 1, 1, 0, 0, 0), -- Animated Chain Necklace
(10439, 13373, 0, 1, 1, 1, 0, 0, 0), -- Band of Flesh
(10439, 80016, 100, 1, -80016, 1, 0, 0, 0), -- 1 random 55/56 green item
(10439, 12843, 100, 0, 1, 1, 10, 0, 0), -- Corruptor's Scourgestone
(10439, 15880, -100, 0, 1, 1, 0, 0, 0), -- Head of Ramstein the Gorger (qid 6163)
(10439, 12735, 100, 0, 1, 1, 0, 0, 0), -- Frayed Abomination Stitching
(10439, 13174, -80, 0, 1, 4, 0, 0, 0); -- Plagued Flesh Sample (qid 5212)

-- Baron Rivendare 
DELETE FROM `creature_loot_template` WHERE `entry`=10440;
REPLACE INTO `creature_loot_template` VALUES 
(91028, 22410, 0, 1, 1, 1, 0, 0, 0), -- Gauntlets of Deftness
(91028, 13361, 6, 1, 1, 1, 0, 0, 0), -- Skullforge Reaver
(91028, 13340, 0, 1, 1, 1, 0, 0, 0), -- Cape of the Black Baron
(91028, 13349, 0, 1, 1, 1, 0, 0, 0), -- Scepter of the Unholy
(91028, 22409, 0, 1, 1, 1, 0, 0, 0), -- Tunic of the Crescent Moon
(91028, 22411, 0, 1, 1, 1, 0, 0, 0), -- Helm of the Executioner
(91028, 22412, 0, 1, 1, 1, 0, 0, 0), -- Thuzadin Mantle
(91028, 13344, 0, 1, 1, 1, 0, 0, 0), -- Dracorian Gauntlets
(91028, 13346, 0, 1, 1, 1, 0, 0, 0), -- Robes of the Exalted
(91028, 13345, 0, 1, 1, 1, 0, 0, 0), -- Seal of Rivendare
(91028, 13368, 6, 1, 1, 1, 0, 0, 0), -- Bonescraper
(91028, 22408, 0, 1, 1, 1, 0, 0, 0), -- Ritssyn's Wand of Bad Mojo
(91028, 13505, 1, 1, 1, 1, 0, 0, 0), -- Runeblade of Baron Rivendare
(10440, 91028, 100, 1, -91028, 2, 0, 0, 0), -- 2 Drops
(10440, 16699, 0, 1, 1, 1, 0, 0, 0), -- Dungeon 1 Pants
(10440, 16668, 0, 1, 1, 1, 0, 0, 0),
(10440, 16678, 0, 1, 1, 1, 0, 0, 0),
(10440, 16687, 0, 1, 1, 1, 0, 0, 0),
(10440, 16694, 0, 1, 1, 1, 0, 0, 0),
(10440, 16709, 0, 1, 1, 1, 0, 0, 0),
(10440, 16719, 0, 1, 1, 1, 0, 0, 0),
(10440, 16728, 0, 1, 1, 1, 0, 0, 0),
(10440, 16732, 0, 1, 1, 1, 0, 0, 0),
(10440, 13335, 0.01, 0, 1, 1, 0, 0, 0), -- Deathcharger's Reins
(10440, 14047, 16, 0, 2, 5, 0, 0, 0), -- Runecloth
(10440, 12843, 100, 0, 1, 1, 10, 0, 0), -- Corruptor's Scourgestone
(10440, 13251, -100, 0, 1, 1, 0, 0, 0), -- Head of Baron Rivendare(qid 5263)
(10440, 13174, -80, 0, 4, 6, 0, 0, 0); -- Plagued Flesh Sample (qid 5212)

-- Delete non used creature_loot_template entries
DELETE FROM `creature_loot_template` WHERE `entry` IN (5983, 8889);

-- Sunwell Trash Mobs (Missing items are commented out)
-- 90091 Sunwell Trash BOP patterns(6% chanced)
REPLACE INTO creature_loot_template VALUES
-- (90091, 35200, 0, 1, 1, 1, 7, 755, 1),
(90091, 35198, 0, 1, 1, 1, 7, 755, 1),
(90091, 35199, 0, 1, 1, 1, 7, 755, 1),
-- (90091, 35205, 0, 1, 1, 1, 7, 197, 1),
(90091, 35204, 0, 1, 1, 1, 7, 197, 1),
-- (90091, 35209, 0, 1, 1, 1, 7, 164, 1),
(90091, 35208, 0, 1, 1, 1, 7, 164, 1),
(90091, 35273, 0, 1, 1, 1, 7, 186, 1),
-- (90091, 35213, 0, 1, 1, 1, 7, 165, 1),
(90091, 35212, 0, 1, 1, 1, 7, 165, 1),
-- (90091, 35214, 0, 1, 1, 1, 7, 165, 1),
(90091, 35215, 0, 1, 1, 1, 7, 165, 1);

-- 90092 Sunwell Trash NonBop patterns (2% chanced)
REPLACE INTO creature_loot_template VALUES
(90092, 35203, 0, 1, 1, 1, 0, 0, 0),
(90092, 35201, 0, 1, 1, 1, 0, 0, 0),
(90092, 35207, 0, 1, 1, 1, 0, 0, 0),
(90092, 35206, 0, 1, 1, 1, 0, 0, 0),
(90092, 35211, 0, 1, 1, 1, 0, 0, 0),
(90092, 35210, 0, 1, 1, 1, 0, 0, 0),
(90092, 35186, 0, 1, 1, 1, 0, 0, 0),
(90092, 35196, 0, 1, 1, 1, 0, 0, 0),
(90092, 35190, 0, 1, 1, 1, 0, 0, 0),
(90092, 35193, 0, 1, 1, 1, 0, 0, 0),
(90092, 35195, 0, 1, 1, 1, 0, 0, 0),
(90092, 35187, 0, 1, 1, 1, 0, 0, 0),
(90092, 35189, 0, 1, 1, 1, 0, 0, 0),
(90092, 35192, 0, 1, 1, 1, 0, 0, 0),
(90092, 35191, 0, 1, 1, 1, 0, 0, 0),
(90092, 35197, 0, 1, 1, 1, 0, 0, 0),
(90092, 35194, 0, 1, 1, 1, 0, 0, 0),
(90092, 35216, 0, 1, 1, 1, 0, 0, 0),
-- (90092, 35202, 0, 1, 1, 1, 0, 0, 0),
(90092, 35217, 0, 1, 1, 1, 0, 0, 0),
(90092, 35218, 0, 1, 1, 1, 0, 0, 0);
-- (90092, 35219, 0, 1, 1, 1, 0, 0, 0);

-- 90093 Sunwell Trash(Maybe for Hyjal/BT trash as well) Gems 3%
REPLACE INTO creature_loot_template VALUES
(90093, 32227, 0, 1, 1, 1, 0, 0, 0),
(90093, 32228, 0, 1, 1, 1, 0, 0, 0),
(90093, 32229, 0, 1, 1, 1, 0, 0, 0),
(90093, 32231, 0, 1, 1, 1, 0, 0, 0),
(90093, 32249, 0, 1, 1, 1, 0, 0, 0),
(90093, 32230, 0, 1, 1, 1, 0, 0, 0);

-- 90094 Sunwell Trash Loot 1% chanced 
REPLACE INTO creature_loot_template VALUES
(90094, 34349, 0, 1, 1, 1, 0, 0, 0),
(90094, 34350, 0, 1, 1, 1, 0, 0, 0),
(90094, 34346, 0, 1, 1, 1, 0, 0, 0),
(90094, 35733, 0, 1, 1, 1, 0, 0, 0),
(90094, 34183, 0, 1, 1, 1, 0, 0, 0),
(90094, 34351, 0, 1, 1, 1, 0, 0, 0),
(90094, 34347, 0, 1, 1, 1, 0, 0, 0),
(90094, 34348, 0, 1, 1, 1, 0, 0, 0);

-- Apocalypse Guard
UPDATE `creature_template` SET `lootid`=25593, `mingold`=9000, `maxgold`=11000 WHERE `entry`=25593;
REPLACE INTO creature_loot_template VALUES
(25593, 90091, 6, 1, -90091, 1, 0, 0, 0), -- Chance for BOP pattern
(25593, 90092, 2, 1, -90092, 1, 0, 0, 0), -- Chance for NonBOP pattern
(25593, 90093, 5, 1, -90093, 1, 0, 0, 0), -- Chance for Gem drop
(25593, 90094, 1, 1, -90094, 1, 0, 0, 0), -- Chance for Sunwell Zone epic loot
(25593, 80001, 5, 1, -80001, 1, 0, 0, 0), --  Chance for world gray
(25593, 80002, 5, 1, -80002, 1, 0, 0, 0), 
(25593, 80013, 1, 1, -80013, 1, 0, 0, 0), -- Chance for world green
(25593, 80011, 1, 1, -80011, 1, 0, 0, 0),
(25593, 80014, .5, 1, -80014, 1, 0, 0, 0), -- Chance for world blue
(25593, 80012, .5, 1, -80012, 1, 0, 0, 0),
(25593, 80015, .1, 1, -80015, 1, 0, 0, 0), -- Chance for world epic
(25593, 21877, 28, 0, 2, 3, 0, 0, 0), -- Netherweave Cloth
(25593, 34664, 5, 0, 1, 1, 0, 0, 0), -- 5% Sunmote chance
(25593, 32897, 15, 0, 1, 1, 0, 0, 0); -- Mark of the Illidari 15%

-- Cataclysm Hound
UPDATE `creature_template` SET `lootid`=25599 WHERE `entry`=25599;
REPLACE INTO creature_loot_template VALUES
(25599, 90091, 6, 1, -90091, 1, 0, 0, 0), -- Chance for BOP pattern
(25599, 90092, 2, 1, -90092, 1, 0, 0, 0), -- Chance for NonBOP pattern
(25599, 90093, 5, 1, -90093, 1, 0, 0, 0), -- Chance for Gem drop
(25599, 90094, 1, 1, -90094, 1, 0, 0, 0), -- Chance for Sunwell Zone epic loot
(25599, 80001, 5, 1, -80001, 1, 0, 0, 0), --  Chance for world gray
(25599, 80002, 5, 1, -80002, 1, 0, 0, 0), 
(25599, 80013, 1, 1, -80013, 1, 0, 0, 0), -- Chance for world green
(25599, 80011, 1, 1, -80011, 1, 0, 0, 0),
(25599, 80014, .5, 1, -80014, 1, 0, 0, 0), -- Chance for world blue
(25599, 80012, .5, 1, -80012, 1, 0, 0, 0),
(25599, 80015, .1, 1, -80015, 1, 0, 0, 0), -- Chance for world epic
(25599, 25418, 47, 0, 2, 4, 0, 0, 0), -- Razor Sharp Fang
(25599, 34664, 5, 0, 1, 1, 0, 0, 0), -- 5% Sunmote chance
(25599, 32897, 15, 0, 1, 1, 0, 0, 0); -- Mark of the Illidari 15%

-- Chaos Gazer
UPDATE `creature_template` SET `lootid`=25595 WHERE `entry`=25595;
REPLACE INTO creature_loot_template VALUES
(25595, 90091, 6, 1, -90091, 1, 0, 0, 0), -- Chance for BOP pattern
(25595, 90092, 2, 1, -90092, 1, 0, 0, 0), -- Chance for NonBOP pattern
(25595, 90093, 5, 1, -90093, 1, 0, 0, 0), -- Chance for Gem drop
(25595, 90094, 1, 1, -90094, 1, 0, 0, 0), -- Chance for Sunwell Zone epic loot
(25595, 80001, 5, 1, -80001, 1, 0, 0, 0), --  Chance for world gray
(25595, 80002, 5, 1, -80002, 1, 0, 0, 0), 
(25595, 80013, 1, 1, -80013, 1, 0, 0, 0), -- Chance for world green
(25595, 80011, 1, 1, -80011, 1, 0, 0, 0),
(25595, 80014, .5, 1, -80014, 1, 0, 0, 0), -- Chance for world blue
(25595, 80012, .5, 1, -80012, 1, 0, 0, 0),
(25595, 80015, .1, 1, -80015, 1, 0, 0, 0), -- Chance for world epic
(25595, 34664, 5, 0, 1, 1, 0, 0, 0), -- 5% Sunmote chance
(25595, 32897, 15, 0, 1, 1, 0, 0, 0); -- Mark of the Illidari 15%

-- Doomfire Destroyer
UPDATE `creature_template` SET `lootid`=25593, `mingold`=9000, `maxgold`=11000 WHERE `entry`=25592;

-- Oblivion Mage
UPDATE `creature_template` SET `lootid`=25593, `mingold`=9000, `maxgold`=11000 WHERE `entry`=25597;

-- Painbringer
UPDATE `creature_template` SET `lootid`=25595, `mingold`=9000, `maxgold`=11000 WHERE `entry`=25591;

-- Priestess of Torment
UPDATE `creature_template` SET `lootid`=25593, `mingold`=9000, `maxgold`=11000 WHERE `entry`=25509;

-- Shadowsword Assassin
UPDATE `creature_template` SET `lootid`=25593, `mingold`=9000, `maxgold`=11000 WHERE `entry`=25484;

-- Shadowsword Commander
UPDATE `creature_template` SET `lootid`=25593, `mingold`=9000, `maxgold`=11000 WHERE `entry`=25837;

-- Shadowsword Lifeshaper
UPDATE `creature_template` SET `lootid`=25593, `mingold`=9000, `maxgold`=11000 WHERE `entry`=25506;

-- Shadowsword Manafiend
UPDATE `creature_template` SET `lootid`=25593, `mingold`=9000, `maxgold`=11000 WHERE `entry`=25483;

-- Shadowsword Vanquisher
UPDATE `creature_template` SET `lootid`=25593, `mingold`=9000, `maxgold`=11000 WHERE `entry`=25486;

-- Sunblade Archmage
UPDATE `creature_template` SET `lootid`=25593, `mingold`=9000, `maxgold`=11000 WHERE `entry`=25367;

-- Sunblade Cabalist
UPDATE `creature_template` SET `lootid`=25593, `mingold`=9000, `maxgold`=11000 WHERE `entry`=25363;

-- Sunblade Dawn Priest
UPDATE `creature_template` SET `lootid`=25593, `mingold`=9000, `maxgold`=11000 WHERE `entry`=25371;

-- Sunblade Dragonhawk
UPDATE `creature_template` SET `lootid`=25867 WHERE `entry`=25867;
REPLACE INTO creature_loot_template VALUES
(25867, 90091, 6, 1, -90091, 1, 0, 0, 0), -- Chance for BOP pattern
(25867, 90092, 2, 1, -90092, 1, 0, 0, 0), -- Chance for NonBOP pattern
(25867, 90093, 5, 1, -90093, 1, 0, 0, 0), -- Chance for Gem drop
(25867, 90094, 1, 1, -90094, 1, 0, 0, 0), -- Chance for Sunwell Zone epic loot
(25867, 80001, 5, 1, -80001, 1, 0, 0, 0), --  Chance for world gray
(25867, 80002, 5, 1, -80002, 1, 0, 0, 0), 
(25867, 80013, 1, 1, -80013, 1, 0, 0, 0), -- Chance for world green
(25867, 80011, 1, 1, -80011, 1, 0, 0, 0),
(25867, 80014, .5, 1, -80014, 1, 0, 0, 0), -- Chance for world blue
(25867, 80012, .5, 1, -80012, 1, 0, 0, 0),
(25867, 80015, .1, 1, -80015, 1, 0, 0, 0), -- Chance for world epic
(25867, 25426, 55, 0, 3, 4, 0, 0, 0), -- Brilliant Feather
(25867, 25428, 11, 0, 1, 2, 0, 0, 0), -- Savage Talon
(25867, 34664, 5, 0, 1, 1, 0, 0, 0), -- 5% Sunmote chance
(25867, 32897, 15, 0, 1, 1, 0, 0, 0); -- Mark of the Illidari 15%

-- Sunblade Dusk Priest
UPDATE `creature_template` SET `lootid`=25593, `mingold`=9000, `maxgold`=11000 WHERE `entry`=25370;

-- Sunblade Protector
UPDATE `creature_template` SET `lootid`=25595, `mingold`=9000, `maxgold`=11000 WHERE `entry`=25507;

-- Sunblade Scout
UPDATE `creature_template` SET `lootid`=25593, `mingold`=9000, `maxgold`=11000 WHERE `entry`=25372;

-- Sunblade Slayer
UPDATE `creature_template` SET `lootid`=25593, `mingold`=9000, `maxgold`=11000 WHERE `entry`=25368;

-- Sunblade Vindicator
UPDATE `creature_template` SET `lootid`=25593, `mingold`=9000, `maxgold`=11000 WHERE `entry`=25369;

-- Eredars, Entropius, Kil'Jaeden still missing items from their templates

-- Triddy end

-- forum start


UPDATE `creature` SET `spawntimesecs` = '360' WHERE `id` = '1492';
-- Tresa MacGregor
UPDATE `creature_template` SET `npcflag` = `npcflag`&~'18', `speed` = '1', `rangeattacktime` = '0', `trainer_type` = '0', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0' WHERE `entry` = '2801';
UPDATE `gameobject` SET `spawntimesecs` = '300' WHERE `id` = '142191';
-- Avenger's Shield rank 2
DELETE FROM `npc_trainer` WHERE `spell` = '32699';
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES
('5491', '32699', '2300', '60'),
('1232', '32699', '2300', '60'),
('16761', '32699', '2300', '60'),
('5148', '32699', '2300', '60'),
('5149', '32699', '2300', '60'),
('8140', '32699', '2300', '60'),
('927', '32699', '2300', '60'),
('16681', '32699', '2300', '60'),
('20406', '32699', '2300', '60'),
('16680', '32699', '2300', '60'),
('17509', '32699', '2300', '60'),
('5492', '32699', '2300', '60'),
('17121', '32699', '2300', '60'),
('928', '32699', '2300', '60'),
('23128', '32699', '2300', '60'),
('16275', '32699', '2300', '60'),
('16679', '32699', '2300', '60'),
('5147', '32699', '2300', '60'),
('17844', '32699', '2300', '60');
-- Wrath Herald loot
DELETE FROM `creature_loot_template` WHERE (`entry` = '24919');
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
('24919', '80001', '5', '1', '-80001', '1', '0', '0', '0'),
('24919', '80002', '5', '1', '-80002', '1', '0', '0', '0'),
('24919', '80009', '1', '1', '-80009', '1', '0', '0', '0'),
('24919', '80011', '1', '1', '-80011', '1', '0', '0', '0'),
('24919', '80013', '1', '1', '-80013', '1', '0', '0', '0');
-- Wrath Herald pickpocket
DELETE FROM `pickpocketing_loot_template` WHERE (`entry` = '24919');
REPLACE INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
('24919', '22829', '2.5889', '0', '1', '1', '0', '0', '0'),
('24919', '27854', '3.6381', '0', '1', '1', '0', '0', '0'),
('24919', '29569', '9.7288', '0', '1', '1', '0', '0', '0'),
('24919', '29570', '10.1649', '0', '1', '1', '0', '0', '0'),
('24919', '27855', '18.1864', '0', '1', '1', '0', '0', '0');
-- Wrath Herald dmg and misc
UPDATE `creature_template` SET `lootid` = '24919', `pickpocketloot` = '24919', `mingold` = '1250', `maxgold` = '1500', `armor` = '6800', `faction_A` = '90', `faction_H` = '90', `mindmg` = '252', `maxdmg` = '363', `baseattacktime` = '1500', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '24919';
-- Felblood Initiate loot
DELETE FROM `creature_loot_template` WHERE (`entry` = '24918');
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
('24918', '80001', '5', '1', '-80001', '1', '0', '0', '0'),
('24918', '80002', '5', '1', '-80002', '1', '0', '0', '0'),
('24918', '80009', '1', '1', '-80009', '1', '0', '0', '0'),
('24918', '80011', '1', '1', '-80011', '1', '0', '0', '0'),
('24918', '80013', '1', '1', '-80013', '1', '0', '0', '0');
-- Felblood Initiate pickpocket
DELETE FROM `pickpocketing_loot_template` WHERE (`entry` = '24918');
REPLACE INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
('24918', '22829', '2.5889', '0', '1', '1', '0', '0', '0'),
('24918', '29571', '10.6381', '0', '1', '1', '0', '0', '0'),
('24918', '29569', '9.7288', '0', '1', '1', '0', '0', '0'),
('24918', '27856', '6.7288', '0', '1', '1', '0', '0', '0'),
('24918', '30458', '6.7288', '0', '1', '1', '0', '0', '0'),
('24918', '27855', '18.1864', '0', '1', '1', '0', '0', '0');
-- Felblood Initiate dmg and misc
UPDATE `creature_template` SET `armor` = '7090', `speed` = '1.2', `mindmg` = '368', `maxdmg` = '522', `baseattacktime` = '2000', `lootid` = '24918', `pickpocketloot` = '24918', `spell1` = '29098', `spell2` = '14873', `spell3` = '35871', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '24918';
-- Emaciated Felblood loot
DELETE FROM `creature_loot_template` WHERE (`entry` = '24955');
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
('24955', '80001', '5', '1', '-80001', '1', '0', '0', '0'),
('24955', '80002', '5', '1', '-80002', '1', '0', '0', '0'),
('24955', '80009', '1', '1', '-80009', '1', '0', '0', '0'),
('24955', '80011', '1', '1', '-80011', '1', '0', '0', '0'),
('24955', '80013', '1', '1', '-80013', '1', '0', '0', '0');
-- Emaciated Felblood dmg and misc
UPDATE `creature_template` SET `armor` = '6802', `faction_A` = '14', `faction_H` = '14', `mindmg` = '252', `maxdmg` = '363', `baseattacktime` = '2000', `lootid` = '24955', `mingold` = '1251', `maxgold` = '1503', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '24955';
-- quest Blood for Blood (2.4 daily)
UPDATE `quest_template` SET `ReqSourceId1` = '34259', `ReqSourceCount1` = '4', `ReqSourceRef1` = '1', `ReqSpellCast1` = '44937' WHERE `entry` = '11515';
-- Magistrix Seyla misc
UPDATE `creature_template` SET `minhealth` = '11000', `maxhealth` = '11000', `armor` = '6900', `faction_A` = '1960', `faction_H` = '1960', `mindmg` = '250', `maxdmg` = '340', `attackpower` = '3500', `baseattacktime` = '2000' WHERE `entry` = '24937';
-- Fix the speak to quest Bartleby the Drunk
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`&~2 WHERE `entry` =1639;
-- Fix quest with external event quest complete from script -- Beat Bartleby
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|2 WHERE `entry` =1640;
-- Emmithue Smails
DELETE FROM `creature` WHERE `id` = '14481';
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('86292', '14481', '0', '1', '0', '0', '-8864.46', '658.466', '96.5078', '5.47143', '480', '0', '0', '413', '0', '0', '0');
-- Emmithue Smails, Children's Week
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES
('86292', '10');
UPDATE creature_template SET flags = 32832 WHERE entry IN (23542, 23580);
-- Creature The Eye : Astromancer
UPDATE `creature_template` SET `maxhealth` = '143600' WHERE `entry` = '20033';
-- Quest 235 has wrong quest giver
DELETE FROM `creature_questrelation` WHERE `quest` = 235;
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES (10880, 235);
-- Roman fishing in stormwind
DELETE FROM `creature_movement` WHERE `id` IN ('79816', '79815', '79817');
REPLACE INTO `creature_movement`
(`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(79816, 1, -8583.88, 633.127, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 2, -8583.88, 633.127, 96.3386, 10000, 'Eww... that\'s not a fish!', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 3, -8583.88, 633.127, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 4, -8583.88, 633.127, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 5, -8583.88, 633.127, 96.3386, 10000, 'I got worm guts on my shoes.', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 6, -8583.88, 633.127, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 7, -8583.88, 633.127, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 8, -8583.88, 633.127, 96.3386, 10000, 'I think i see something.', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 9, -8583.88, 633.127, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 10, -8583.88, 633.127, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 11, -8583.88, 633.127, 96.3386, 10000, 'Eww... that\'s not a fish!', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 12, -8583.88, 633.127, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 13, -8583.88, 633.127, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 14, -8583.88, 633.127, 96.3386, 10000, 'I think i see something.', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 15, -8583.88, 633.127, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 16, -8583.88, 633.127, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 17, -8583.88, 633.127, 96.3386, 10000, 'I hope that was a fish!', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 18, -8583.88, 633.127, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 19, -8583.88, 633.127, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79816, 20, -8583.88, 633.127, 96.3386, 10000, 'Worm goes on the hook, hook goes in the water, Fish is in the water, our fish.', '', '', '', '', 0, 0, 0, 5.02218, 0, 0);
-- Jusin fishing in stormwind
REPLACE INTO `creature_movement`
(`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(79815, 1, -8582.03, 633.634, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 2, -8582.03, 633.634, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 3, -8582.03, 633.634, 96.3386, 10000, 'They say he can turn into a raven sometimes.', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 4, -8582.03, 633.634, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 5, -8582.03, 633.634, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 6, -8582.03, 633.634, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 7, -8582.03, 633.634, 96.3386, 10000, 'They say he can turn into a raven sometimes.', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 8, -8582.03, 633.634, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 9, -8582.03, 633.634, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 10, -8582.03, 633.634, 96.3386, 10000, 'And then the rabbit just bit his head off... I swear.', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 11, -8582.03, 633.634, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 12, -8582.03, 633.634, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 13, -8582.03, 633.634, 96.3386, 10000, 'I swear, people have actualy seen them. Pandaren really do exist!!', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 14, -8582.03, 633.634, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 15, -8582.03, 633.634, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 16, -8582.03, 633.634, 96.3386, 10000, 'You know why Orcs eyes glow red? It\'s because they drink blood!', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 17, -8582.03, 633.634, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 18, -8582.03, 633.634, 96.3386, 10000, 'I dont think there\'s any fish in these canals.', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 19, -8582.03, 633.634, 96.3386, 10000, 'And that\'s how Lother killed thirty six orcs with his bare hands!', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79815, 20, -8582.03, 633.634, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0);
-- Brandon fishing in stormwind
REPLACE INTO `creature_movement`
(`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(79817, 1, -8580.51, 635.108, 96.3386, 10000, 'Can you imagine?', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 2, -8580.51, 635.108, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 3, -8580.51, 635.108, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 4, -8580.51, 635.108, 96.3386, 10000, 'Really?', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 5, -8580.51, 635.108, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 6, -8580.51, 635.108, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 7, -8580.51, 635.108, 96.3386, 10000, 'Wow.', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 8, -8580.51, 635.108, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 9, -8580.51, 635.108, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 10, -8580.51, 635.108, 96.3386, 10000, 'My father says that\'s just a story.', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 11, -8580.51, 635.108, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 12, -8580.51, 635.108, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 13, -8580.51, 635.108, 96.3386, 10000, 'Really?', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 14, -8580.51, 635.108, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 15, -8580.51, 635.108, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 16, -8580.51, 635.108, 96.3386, 10000, 'Wow.', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 17, -8580.51, 635.108, 96.3386, 10000, 'That\'s neat.', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 18, -8580.51, 635.108, 96.3386, 10000, '', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 19, -8580.51, 635.108, 96.3386, 10000, 'Wow.', '', '', '', '', 0, 0, 0, 5.02218, 0, 0),
(79817, 20, -8580.51, 635.108, 96.3386, 10000, 'Really?', '', '', '', '', 0, 0, 0, 5.02218, 0, 0);
-- Season 3 Arena vendors
-- Ecton Brasstumbler misc
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '11000', `maxhealth` = '11000', `armor` = '6800', `npcflag` = `npcflag`|'128', `speed` = '1.5', `mindmg` = '220', `maxdmg` = '350', `attackpower` = '3800', `baseattacktime` = '2000', `flags` = `flags`|'512', `civilian` = '1' WHERE `entry` = '25178';
-- Meminnie misc
UPDATE `creature_template` SET `armor` = '6800', `npcflag` = `npcflag`|'128' WHERE `entry` = '19857';
-- Explodyne Fizzlespurt misc
UPDATE `creature_template` SET `armor` = '6900', `npcflag` = `npcflag`|'128', `MovementType` = '0' WHERE `entry` = '18898';
-- Leeni "Smiley" Smalls misc
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '11000', `maxhealth` = '11000', `armor` = '7100', `speed` = '1.5', `mindmg` = '220', `maxdmg` = '350', `attackpower` = '3500', `baseattacktime` = '2000', `flags` = `flags`|'512', `civilian` = '1' WHERE `entry` = '24392';

-- Meminnie vendor list
DELETE FROM `npc_vendor` WHERE (`entry`=19857);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(19857, 33006, 0, 0, 1664),
(19857, 33661, 0, 0, 1431),
(19857, 33662, 0, 0, 1432),
(19857, 33663, 0, 0, 1664),
(19857, 33664, 0, 0, 1431),
(19857, 33665, 0, 0, 1432),
(19857, 33666, 0, 0, 1431),
(19857, 33667, 0, 0, 1431),
(19857, 33668, 0, 0, 1435),
(19857, 33669, 0, 0, 1670),
(19857, 33670, 0, 0, 1664),
(19857, 33671, 0, 0, 1432),
(19857, 33672, 0, 0, 1431),
(19857, 33673, 0, 0, 1431),
(19857, 33674, 0, 0, 1435),
(19857, 33675, 0, 0, 1431),
(19857, 33676, 0, 0, 1432),
(19857, 33677, 0, 0, 1431),
(19857, 33678, 0, 0, 1431),
(19857, 33679, 0, 0, 1435),
(19857, 33680, 0, 0, 1431),
(19857, 33681, 0, 0, 1432),
(19857, 33682, 0, 0, 1435),
(19857, 33683, 0, 0, 1431),
(19857, 33684, 0, 0, 1432),
(19857, 33685, 0, 0, 1431),
(19857, 33686, 0, 0, 1431),
(19857, 33687, 0, 0, 1757),
(19857, 33688, 0, 0, 1664),
(19857, 33689, 0, 0, 1432),
(19857, 33690, 0, 0, 1432),
(19857, 33691, 0, 0, 1431),
(19857, 33692, 0, 0, 1431),
(19857, 33693, 0, 0, 1435),
(19857, 33694, 0, 0, 1431),
(19857, 33695, 0, 0, 1431),
(19857, 33696, 0, 0, 1432),
(19857, 33697, 0, 0, 1431),
(19857, 33698, 0, 0, 1431),
(19857, 33699, 0, 0, 1435),
(19857, 33700, 0, 0, 1432),
(19857, 33701, 0, 0, 1431),
(19857, 33702, 0, 0, 1431),
(19857, 33703, 0, 0, 1435),
(19857, 33704, 0, 0, 1431),
(19857, 33705, 0, 0, 1432),
(19857, 33706, 0, 0, 1431),
(19857, 33707, 0, 0, 1432),
(19857, 33708, 0, 0, 1431),
(19857, 33709, 0, 0, 1431),
(19857, 33710, 0, 0, 1435),
(19857, 33711, 0, 0, 1431),
(19857, 33712, 0, 0, 1432),
(19857, 33713, 0, 0, 1431),
(19857, 33714, 0, 0, 1431),
(19857, 33715, 0, 0, 1435),
(19857, 33716, 0, 0, 1664),
(19857, 33717, 0, 0, 1432),
(19857, 33718, 0, 0, 1431),
(19857, 33719, 0, 0, 1431),
(19857, 33720, 0, 0, 1435),
(19857, 33721, 0, 0, 1431),
(19857, 33722, 0, 0, 1431),
(19857, 33723, 0, 0, 1432),
(19857, 33724, 0, 0, 1431),
(19857, 33725, 0, 0, 1431),
(19857, 33726, 0, 0, 1435),
(19857, 33727, 0, 0, 1664),
(19857, 33728, 0, 0, 1431),
(19857, 33729, 0, 0, 1432),
(19857, 33730, 0, 0, 1431),
(19857, 33731, 0, 0, 1431),
(19857, 33732, 0, 0, 1435),
(19857, 33733, 0, 0, 1670),
(19857, 33734, 0, 0, 1432),
(19857, 33735, 0, 0, 1431),
(19857, 33736, 0, 0, 1432),
(19857, 33737, 0, 0, 1670),
(19857, 33738, 0, 0, 1431),
(19857, 33739, 0, 0, 1432),
(19857, 33740, 0, 0, 1431),
(19857, 33741, 0, 0, 1431),
(19857, 33742, 0, 0, 1435),
(19857, 33743, 0, 0, 1757),
(19857, 33744, 0, 0, 1432),
(19857, 33745, 0, 0, 1431),
(19857, 33746, 0, 0, 1431),
(19857, 33747, 0, 0, 1435),
(19857, 33748, 0, 0, 1431),
(19857, 33749, 0, 0, 1431),
(19857, 33750, 0, 0, 1432),
(19857, 33751, 0, 0, 1431),
(19857, 33752, 0, 0, 1431),
(19857, 33753, 0, 0, 1435),
(19857, 33754, 0, 0, 1670),
(19857, 33755, 0, 0, 1431),
(19857, 33756, 0, 0, 1432),
(19857, 33757, 0, 0, 1435),
(19857, 33758, 0, 0, 1431),
(19857, 33759, 0, 0, 1432),
(19857, 33760, 0, 0, 1431),
(19857, 33761, 0, 0, 1431),
(19857, 33762, 0, 0, 1670),
(19857, 33763, 0, 0, 1757),
(19857, 33764, 0, 0, 1758),
(19857, 33765, 0, 0, 1758),
(19857, 33766, 0, 0, 1664),
(19857, 33767, 0, 0, 1432),
(19857, 33768, 0, 0, 1431),
(19857, 33769, 0, 0, 1431),
(19857, 33770, 0, 0, 1435),
(19857, 33771, 0, 0, 1431),
(19857, 33801, 0, 0, 1432),
(19857, 33841, 0, 0, 1758),
(19857, 33842, 0, 0, 1758),
(19857, 33843, 0, 0, 1758),
(19857, 33938, 0, 0, 146),
(19857, 33941, 0, 0, 146),
(19857, 33944, 0, 0, 146),
(19857, 33947, 0, 0, 146),
(19857, 33950, 0, 0, 146),
(19857, 33953, 0, 0, 146),
(19857, 34014, 0, 0, 1758),
(19857, 34015, 0, 0, 1432),
(19857, 34016, 0, 0, 1432),
(19857, 34033, 0, 0, 1432),
(19857, 34059, 0, 0, 1758),
(19857, 34066, 0, 0, 1758),
(19857, 34529, 0, 0, 1664),
(19857, 34530, 0, 0, 1664),
(19857, 34540, 0, 0, 1664);
-- Ecton Brasstumbler vendor list
DELETE FROM `npc_vendor` WHERE (`entry`=25178);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(25178, 33006, 0, 0, 1664),
(25178, 33661, 0, 0, 1431),
(25178, 33662, 0, 0, 1432),
(25178, 33663, 0, 0, 1664),
(25178, 33664, 0, 0, 1431),
(25178, 33665, 0, 0, 1432),
(25178, 33666, 0, 0, 1431),
(25178, 33667, 0, 0, 1431),
(25178, 33668, 0, 0, 1435),
(25178, 33669, 0, 0, 1670),
(25178, 33670, 0, 0, 1664),
(25178, 33671, 0, 0, 1432),
(25178, 33672, 0, 0, 1431),
(25178, 33673, 0, 0, 1431),
(25178, 33674, 0, 0, 1435),
(25178, 33675, 0, 0, 1431),
(25178, 33676, 0, 0, 1432),
(25178, 33677, 0, 0, 1431),
(25178, 33678, 0, 0, 1431),
(25178, 33679, 0, 0, 1435),
(25178, 33680, 0, 0, 1431),
(25178, 33681, 0, 0, 1432),
(25178, 33682, 0, 0, 1435),
(25178, 33683, 0, 0, 1431),
(25178, 33684, 0, 0, 1432),
(25178, 33685, 0, 0, 1431),
(25178, 33686, 0, 0, 1431),
(25178, 33687, 0, 0, 1757),
(25178, 33688, 0, 0, 1664),
(25178, 33689, 0, 0, 1432),
(25178, 33690, 0, 0, 1432),
(25178, 33691, 0, 0, 1431),
(25178, 33692, 0, 0, 1431),
(25178, 33693, 0, 0, 1435),
(25178, 33694, 0, 0, 1431),
(25178, 33695, 0, 0, 1431),
(25178, 33696, 0, 0, 1432),
(25178, 33697, 0, 0, 1431),
(25178, 33698, 0, 0, 1431),
(25178, 33699, 0, 0, 1435),
(25178, 33700, 0, 0, 1432),
(25178, 33701, 0, 0, 1431),
(25178, 33702, 0, 0, 1431),
(25178, 33703, 0, 0, 1435),
(25178, 33704, 0, 0, 1431),
(25178, 33705, 0, 0, 1432),
(25178, 33706, 0, 0, 1431),
(25178, 33707, 0, 0, 1432),
(25178, 33708, 0, 0, 1431),
(25178, 33709, 0, 0, 1431),
(25178, 33710, 0, 0, 1435),
(25178, 33711, 0, 0, 1431),
(25178, 33712, 0, 0, 1432),
(25178, 33713, 0, 0, 1431),
(25178, 33714, 0, 0, 1431),
(25178, 33715, 0, 0, 1435),
(25178, 33716, 0, 0, 1664),
(25178, 33717, 0, 0, 1432),
(25178, 33718, 0, 0, 1431),
(25178, 33719, 0, 0, 1431),
(25178, 33720, 0, 0, 1435),
(25178, 33721, 0, 0, 1431),
(25178, 33722, 0, 0, 1431),
(25178, 33723, 0, 0, 1432),
(25178, 33724, 0, 0, 1431),
(25178, 33725, 0, 0, 1431),
(25178, 33726, 0, 0, 1435),
(25178, 33727, 0, 0, 1664),
(25178, 33728, 0, 0, 1431),
(25178, 33729, 0, 0, 1432),
(25178, 33730, 0, 0, 1431),
(25178, 33731, 0, 0, 1431),
(25178, 33732, 0, 0, 1435),
(25178, 33733, 0, 0, 1670),
(25178, 33734, 0, 0, 1432),
(25178, 33735, 0, 0, 1431),
(25178, 33736, 0, 0, 1432),
(25178, 33737, 0, 0, 1670),
(25178, 33738, 0, 0, 1431),
(25178, 33739, 0, 0, 1432),
(25178, 33740, 0, 0, 1431),
(25178, 33741, 0, 0, 1431),
(25178, 33742, 0, 0, 1435),
(25178, 33743, 0, 0, 1757),
(25178, 33744, 0, 0, 1432),
(25178, 33745, 0, 0, 1431),
(25178, 33746, 0, 0, 1431),
(25178, 33747, 0, 0, 1435),
(25178, 33748, 0, 0, 1431),
(25178, 33749, 0, 0, 1431),
(25178, 33750, 0, 0, 1432),
(25178, 33751, 0, 0, 1431),
(25178, 33752, 0, 0, 1431),
(25178, 33753, 0, 0, 1435),
(25178, 33754, 0, 0, 1670),
(25178, 33755, 0, 0, 1431),
(25178, 33756, 0, 0, 1432),
(25178, 33757, 0, 0, 1435),
(25178, 33758, 0, 0, 1431),
(25178, 33759, 0, 0, 1432),
(25178, 33760, 0, 0, 1431),
(25178, 33761, 0, 0, 1431),
(25178, 33762, 0, 0, 1670),
(25178, 33763, 0, 0, 1757),
(25178, 33764, 0, 0, 1758),
(25178, 33765, 0, 0, 1758),
(25178, 33766, 0, 0, 1664),
(25178, 33767, 0, 0, 1432),
(25178, 33768, 0, 0, 1431),
(25178, 33769, 0, 0, 1431),
(25178, 33770, 0, 0, 1435),
(25178, 33771, 0, 0, 1431),
(25178, 33801, 0, 0, 1432),
(25178, 33841, 0, 0, 1758),
(25178, 33842, 0, 0, 1758),
(25178, 33843, 0, 0, 1758),
(25178, 33938, 0, 0, 146),
(25178, 33941, 0, 0, 146),
(25178, 33944, 0, 0, 146),
(25178, 33947, 0, 0, 146),
(25178, 33950, 0, 0, 146),
(25178, 33953, 0, 0, 146),
(25178, 34014, 0, 0, 1758),
(25178, 34015, 0, 0, 1432),
(25178, 34016, 0, 0, 1432),
(25178, 34033, 0, 0, 1432),
(25178, 34059, 0, 0, 1758),
(25178, 34066, 0, 0, 1758),
(25178, 34529, 0, 0, 1664),
(25178, 34530, 0, 0, 1664),
(25178, 34540, 0, 0, 1664);
-- Explodyne Fizzlespurt vendor list
DELETE FROM `npc_vendor` WHERE (`entry`=18898);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(18898, 33006, 0, 0, 1664),
(18898, 33661, 0, 0, 1431),
(18898, 33662, 0, 0, 1432),
(18898, 33663, 0, 0, 1664),
(18898, 33664, 0, 0, 1431),
(18898, 33665, 0, 0, 1432),
(18898, 33666, 0, 0, 1431),
(18898, 33667, 0, 0, 1431),
(18898, 33668, 0, 0, 1435),
(18898, 33669, 0, 0, 1670),
(18898, 33670, 0, 0, 1664),
(18898, 33671, 0, 0, 1432),
(18898, 33672, 0, 0, 1431),
(18898, 33673, 0, 0, 1431),
(18898, 33674, 0, 0, 1435),
(18898, 33675, 0, 0, 1431),
(18898, 33676, 0, 0, 1432),
(18898, 33677, 0, 0, 1431),
(18898, 33678, 0, 0, 1431),
(18898, 33679, 0, 0, 1435),
(18898, 33680, 0, 0, 1431),
(18898, 33681, 0, 0, 1432),
(18898, 33682, 0, 0, 1435),
(18898, 33683, 0, 0, 1431),
(18898, 33684, 0, 0, 1432),
(18898, 33685, 0, 0, 1431),
(18898, 33686, 0, 0, 1431),
(18898, 33687, 0, 0, 1757),
(18898, 33688, 0, 0, 1664),
(18898, 33689, 0, 0, 1432),
(18898, 33690, 0, 0, 1432),
(18898, 33691, 0, 0, 1431),
(18898, 33692, 0, 0, 1431),
(18898, 33693, 0, 0, 1435),
(18898, 33694, 0, 0, 1431),
(18898, 33695, 0, 0, 1431),
(18898, 33696, 0, 0, 1432),
(18898, 33697, 0, 0, 1431),
(18898, 33698, 0, 0, 1431),
(18898, 33699, 0, 0, 1435),
(18898, 33700, 0, 0, 1432),
(18898, 33701, 0, 0, 1431),
(18898, 33702, 0, 0, 1431),
(18898, 33703, 0, 0, 1435),
(18898, 33704, 0, 0, 1431),
(18898, 33705, 0, 0, 1432),
(18898, 33706, 0, 0, 1431),
(18898, 33707, 0, 0, 1432),
(18898, 33708, 0, 0, 1431),
(18898, 33709, 0, 0, 1431),
(18898, 33710, 0, 0, 1435),
(18898, 33711, 0, 0, 1431),
(18898, 33712, 0, 0, 1432),
(18898, 33713, 0, 0, 1431),
(18898, 33714, 0, 0, 1431),
(18898, 33715, 0, 0, 1435),
(18898, 33716, 0, 0, 1664),
(18898, 33717, 0, 0, 1432),
(18898, 33718, 0, 0, 1431),
(18898, 33719, 0, 0, 1431),
(18898, 33720, 0, 0, 1435),
(18898, 33721, 0, 0, 1431),
(18898, 33722, 0, 0, 1431),
(18898, 33723, 0, 0, 1432),
(18898, 33724, 0, 0, 1431),
(18898, 33725, 0, 0, 1431),
(18898, 33726, 0, 0, 1435),
(18898, 33727, 0, 0, 1664),
(18898, 33728, 0, 0, 1431),
(18898, 33729, 0, 0, 1432),
(18898, 33730, 0, 0, 1431),
(18898, 33731, 0, 0, 1431),
(18898, 33732, 0, 0, 1435),
(18898, 33733, 0, 0, 1670),
(18898, 33734, 0, 0, 1432),
(18898, 33735, 0, 0, 1431),
(18898, 33736, 0, 0, 1432),
(18898, 33737, 0, 0, 1670),
(18898, 33738, 0, 0, 1431),
(18898, 33739, 0, 0, 1432),
(18898, 33740, 0, 0, 1431),
(18898, 33741, 0, 0, 1431),
(18898, 33742, 0, 0, 1435),
(18898, 33743, 0, 0, 1757),
(18898, 33744, 0, 0, 1432),
(18898, 33745, 0, 0, 1431),
(18898, 33746, 0, 0, 1431),
(18898, 33747, 0, 0, 1435),
(18898, 33748, 0, 0, 1431),
(18898, 33749, 0, 0, 1431),
(18898, 33750, 0, 0, 1432),
(18898, 33751, 0, 0, 1431),
(18898, 33752, 0, 0, 1431),
(18898, 33753, 0, 0, 1435),
(18898, 33754, 0, 0, 1670),
(18898, 33755, 0, 0, 1431),
(18898, 33756, 0, 0, 1432),
(18898, 33757, 0, 0, 1435),
(18898, 33758, 0, 0, 1431),
(18898, 33759, 0, 0, 1432),
(18898, 33760, 0, 0, 1431),
(18898, 33761, 0, 0, 1431),
(18898, 33762, 0, 0, 1670),
(18898, 33763, 0, 0, 1757),
(18898, 33764, 0, 0, 1758),
(18898, 33765, 0, 0, 1758),
(18898, 33766, 0, 0, 1664),
(18898, 33767, 0, 0, 1432),
(18898, 33768, 0, 0, 1431),
(18898, 33769, 0, 0, 1431),
(18898, 33770, 0, 0, 1435),
(18898, 33771, 0, 0, 1431),
(18898, 33801, 0, 0, 1432),
(18898, 33841, 0, 0, 1758),
(18898, 33842, 0, 0, 1758),
(18898, 33843, 0, 0, 1758),
(18898, 33938, 0, 0, 146),
(18898, 33941, 0, 0, 146),
(18898, 33944, 0, 0, 146),
(18898, 33947, 0, 0, 146),
(18898, 33950, 0, 0, 146),
(18898, 33953, 0, 0, 146),
(18898, 34014, 0, 0, 1758),
(18898, 34015, 0, 0, 1432),
(18898, 34016, 0, 0, 1432),
(18898, 34033, 0, 0, 1432),
(18898, 34059, 0, 0, 1758),
(18898, 34066, 0, 0, 1758),
(18898, 34529, 0, 0, 1664),
(18898, 34530, 0, 0, 1664),
(18898, 34540, 0, 0, 1664);

-- Arena Season 3 Arena Points required and Personal Rating Required fixes
-- Sets (1875 arena, 0 rating)
UPDATE `npc_vendor` SET `ExtendedCost`='2285' WHERE `item` IN ('33677','33678','33680','33683','33685','33686','33718','33719','33721','33745','33746', '33748','33758','33760','33672','33673','33675','33691','33692','33694','33701','33702','33704', '33768','33769','33771','33664','33666','33667','33706','33708','33709','33711','33713','33714', '33738','33740','33741','33695','33697','33698','33722','33724','33725','33728','33730','33731', '33749','33751','33752');
-- Gloves (1125 arena, 0 rating)
UPDATE `npc_vendor` SET `ExtendedCost`='2283' WHERE `item` IN ('33676','33684','33717','33744','33759','33671','33690','33700','33767','33665','33707','33712', '33739','33696','33723','33729','33750');
-- Hunter Axe, Librams, Totems, Idols, Wands, Throwns (1000 arena. 0 rating)
UPDATE `npc_vendor` SET `ExtendedCost`='1758' WHERE `item` IN ('33947','33944','33938','33950','33941','33953');
-- Other Weapons (3750 arena, 1850 rating)
UPDATE `npc_vendor` SET `ExtendedCost`='2282' WHERE `item` IN ('34540','33663','33670','33688','33006','34529','33727','34530','33716','33766');
-- Pooka's faction
UPDATE `creature_template` SET `faction_A` = '85', `faction_H` = '85' WHERE `entry` = '14909';
UPDATE `npc_vendor` SET `item` = '29148' WHERE `entry` =20240 AND `item` =29228;
-- quest Redemption of the Ashtongue
delete from `creature_involvedrelation` where `quest` = 10957;
REPLACE INTO `creature_involvedrelation` (`id`,`quest`) values
(23158,10957);
-- Seer Kanai misc
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '15053', `maxhealth` = '15053', `armor` = '6800', `faction_A` = '1820', `faction_H` = '1820', `mindmg` = '344', `maxdmg` = '429', `attackpower` = '4200', `baseattacktime` = '2000' WHERE `entry` = '23158';
-- Correct spawn Brumeran
DELETE FROM `creature` WHERE `guid` IN ('48165', '48166', '48167') AND (`id` = '10807');
update ignore npc_trainer set spell=13947 where spell=13949;
update ignore npc_trainer set spell=20023 where spell=20080;
delete from npc_trainer where spell in (13949,20080);
UPDATE `creature_template` SET `npcflag`='0' WHERE `entry`='2802';
delete from spell_teleport where id=46149;
REPLACE INTO spell_teleport values (46149, 530, -1842.07, 5497.17, -12.4306, 4.40609);
-- Soul Mirror on Ancient Orc Ancestor
REPLACE INTO `spell_script_target` VALUES (34063, 1, 18688);
-- Adding missing spelltarget entry for spells 33423, 33424, 33425
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES (33423, 1, 19139),(33424, 1, 19139),(33425, 1, 19139);
UPDATE `gameobject_loot_template` SET `lootcondition`=6 , `condition_value1`=67 WHERE `item`=9546;
UPDATE `npc_trainer` SET `spell`=36954 WHERE `spell`=36956;
REPLACE INTO `creature_loot_template` VALUES
(6, 80073, 5, 1, -80073, 1, 0, 0, 0),
(80, 80073, 5, 1, -80073, 1, 0, 0, 0),
(257, 80073, 5, 1, -80073, 1, 0, 0, 0); 
UPDATE `creature_loot_template` SET `lootcondition`=9, `condition_value1`=10980 WHERE `item`=32567;
UPDATE `creature_template` SET `faction_A` = '1960', `faction_H` = '1960' WHERE `creature_template`.`entry` =19202;
update `creature_template` set `maxhealth`='5500' where (`entry`='25087');
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
('461', '1710', '10000', '0', '0', '40'),
('906', '1710', '10000', '0', '0', '40'),
('988', '1710', '10000', '0', '0', '40'),
('2127', '1710', '10000', '0', '0', '40'),
('5171', '1710', '10000', '0', '0', '40'),
('5172', '1710', '10000', '0', '0', '40'),
('5173', '1710', '10000', '0', '0', '40'),
('5495', '1710', '10000', '0', '0', '40'),
('5496', '1710', '10000', '0', '0', '40'),
('5612', '1710', '10000', '0', '0', '40'),
('3172', '1710', '10000', '0', '0', '40'),
('3324', '1710', '10000', '0', '0', '40'),
('3325', '1710', '10000', '0', '0', '40'),
('3326', '1710', '10000', '0', '0', '40'),
('4563', '1710', '10000', '0', '0', '40'),
('4564', '1710', '10000', '0', '0', '40'),
('4565', '1710', '10000', '0', '0', '40'),
('23534', '1710', '10000', '0', '0', '40'),
('26331', '1710', '10000', '0', '0', '40'),
('16266', '1710', '10000', '0', '0', '40'),
('16646', '1710', '10000', '0', '0', '40'),
('16647', '1710', '10000', '0', '0', '40'),
('16648', '1710', '10000', '0', '0', '40');
DELETE FROM `creature_template_addon` WHERE (`entry`=23565);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (23565, 0, 512, 3, 4097, 65, 0, '');
-- Heal Ragnaros
REPLACE INTO `spell_script_target` VALUES (19952, 1, 11502);
update `creature_template` set
`faction_A` = 29,
`faction_H` = 29
where `entry` = 17355;
UPDATE `creature_template` SET
`minlevel` = '42',
`maxlevel` = '42',
`minhealth` = '6600',
`maxhealth` = '6600'
where `entry` = '1492';
UPDATE `creature_template` SET
`minlevel` = 70,
`maxlevel` = 70,
`minhealth` = 8400,
`maxhealth` = 8400,
`minmana` = 7196,
`maxmana` = 7196,
`npcflag`=npcflag|128,
`mindmg` = '193',
`maxdmg` = '324',
`attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
`mindmg` = ROUND(`mindmg` - `attackpower` / 7),
`maxdmg` = ROUND(`maxdmg` - `attackpower` / 7)
where `entry` = 26091;
UPDATE `creature_template` SET
`minlevel` = 70,
`maxlevel` = 70,
`minhealth` = 8400,
`maxhealth` = 8400,
`minmana` = 7196,
`maxmana` = 7196,
`npcflag`=npcflag|128,
`mindmg` = '193',
`maxdmg` = '324',
`attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
`mindmg` = ROUND(`mindmg` - `attackpower` / 7),
`maxdmg` = ROUND(`maxdmg` - `attackpower` / 7)
where `entry` = 26091;

UPDATE `creature_template` SET
`minlevel` = 70,
`maxlevel` = 70,
`minhealth` = 2500,
`maxhealth` = 2500,
`minmana` = 7196,
`maxmana` = 7196,
`npcflag`=npcflag|128,
`mindmg` = '193',
`maxdmg` = '324',
`attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
`mindmg` = ROUND(`mindmg` - `attackpower` / 7),
`maxdmg` = ROUND(`maxdmg` - `attackpower` / 7)
where `entry` = 26092;
UPDATE `creature_template` SET
`minlevel` = 70,
`maxlevel` = 70,
`minhealth` = 6300,
`maxhealth` = 6300,
`minmana` = 8925,
`maxmana` = 8925,
`npcflag`=npcflag|128,
`mindmg` = '193',
`maxdmg` = '324',
`attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
`mindmg` = ROUND(`mindmg` - `attackpower` / 7),
`maxdmg` = ROUND(`maxdmg` - `attackpower` / 7)
where `entry` = 26090;
-- Fix ZoneOrSort for quests 11499, 11500
UPDATE `quest_template` SET `ZoneOrSort`=4131 WHERE `entry` IN (11499,11500);
UPDATE `quest_template` SET `RewRepFaction1`=529, `RewRepValue1`=1000 WHERE `entry`=8945;
delete from spell_teleport where id=37778;
REPLACE INTO spell_teleport values ('37778','1','-8167.184082','-4766.798340','33.964806','5.165');
UPDATE `gameobject_template` SET `data1`=8345 WHERE `entry`=180516;
update `creature_template` set `mindmg`= '155' , `maxdmg` = '208' , `attackpower` = '635' where (`entry`='3210');
update `creature_template` set `mindmg`= '129' , `maxdmg` = '173' , `attackpower` = '635' where (`entry`='3211');
update `creature_template` set `mindmg`= '155' , `maxdmg` = '208' , `attackpower` = '635' where (`entry`='3213');
update `creature_template` set `mindmg`= '155' , `maxdmg` = '208' , `attackpower` = '635' where (`entry`='3214');
update `creature_template` set `mindmg`= '134' , `maxdmg` = '180' , `attackpower` = '549' where (`entry`='3502');
update `creature_template` set `mindmg`= '155' , `maxdmg` = '208' , `attackpower` = '635' where (`entry`='11822');
update `creature_template` set `mindmg`= '0' , `maxdmg` = '0' , `attackpower` = '0' where (`entry`='18225');
update `creature_template` set `mindmg`= '134' , `maxdmg` = '180' , `attackpower` = '549' where (`entry`='22656');
update `creature_template` set `mindmg`= '285' , `maxdmg` = '368' , `attackpower` = '1142' where (`entry`='25367');
-- Madrigosa Frost Blast on Brutallus of Sunwell Plateau
REPLACE INTO `spell_script_target` VALUES
('45203', '1', '24882');
-- Madrigosa Frost Blast on Brutallus of Isle of Quel'Danas .
REPLACE INTO `spell_script_target` VALUES
('44872', '1', '25158');
update areatrigger_teleport set required_quest_done=0 where id=4887;
-- Item Dread Relic does not drop from NPCs -- (fill)
Delete from `creature_loot_template` where `item` in ('31697') and entry in ('21941', '22045');
DELETE FROM `creature` WHERE `id`=24358;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(86177, 24358, 568, 1, 22340, 0, 131.742, 1644.66, 42.0217, 2.49083, 7200, 0, 0, 16000, 0, 0, 0);
UPDATE creature_template SET npcflag=2 WHERE entry=11218;
DELETE FROM npc_vendor WHERE entry=11218;
UPDATE quest_template SET RewRepFaction1=911, RewRepValue1=10 WHERE entry=10071;
DELETE FROM `npc_trainer` WHERE `entry` =2796;
UPDATE `creature_template` SET `npcflag` = '0', `trainer_type` = '0' WHERE `entry` =2796;
-- Andrissa Heartspear misc
UPDATE `creature_template` SET `armor` = '6800', `npcflag` = `npcflag`|'1048576', `MovementType` = '0' WHERE `entry` = '20385';
-- Zeggon Botsnap misc
UPDATE `creature_template` SET `minhealth` = '10020', `maxhealth` = '10020', `armor` = '6900', `rangedattackpower` = '0', `MovementType` = '0' WHERE `entry` = '19912';
-- Althallen Brightblade
UPDATE `creature_template` SET `minhealth` = '11000', `maxhealth` = '11000', `armor` = '6850', `npcflag` = `npcflag`|'1048577', `rangeattacktime` = '0', `rangedattackpower` = '0' WHERE `entry` = '20388';
-- Fizim Blastwrench
UPDATE `creature_template` SET `minhealth` = '11000', `maxhealth` = '11000', `armor` = '7010', `npcflag` = `npcflag`|'1048577', `rangeattacktime` = '0', `flags` = `flags`|'512', `rangedattackpower` = '0', `MovementType` = '0' WHERE `entry` = '20499';
-- Orgrimmar
-- Hall of Brave creature spawn alteration
UPDATE `creature` SET `position_x` = '1984.46', `position_y` = '-4801.25', `position_z` = '55.8192', `orientation` = '1.43539', `spawndist` = '0', `MovementType` = '0' WHERE guid = '25110';
UPDATE `creature` SET `position_x` = '1974.86', `position_y` = '-1103', `position_z` = '90.234', `orientation` = '4.893', `spawndist` = '0', `MovementType` = '0' WHERE guid = '27577';
UPDATE `creature` SET `position_x` = '2003.03', `position_y` = '-4798.05', `position_z` = '56.7647' , `orientation` = '3.01792', `spawndist` = '0', `MovementType` = '0' WHERE guid = '54623';
UPDATE `creature` SET `position_x` = '1989.31', `position_y` = '-4798.76', `position_z` = '55.8205', `orientation` = '2.13684', `spawndist` = '0', `MovementType` = '0' WHERE guid = '55105';
-- Thunder Bluff
-- Hunter Rise spawns alteration
UPDATE `creature` SET `position_x` = '6147.8', `position_y` = '-4425', `position_z` = '661.804', `orientation` = '3.875', `spawndist` = '0', `MovementType` = '0' WHERE guid = '42985';
UPDATE `creature` SET `position_x` = '565.406', `position_y` = '-238.728', `position_z` = '-35.5046', `orientation` = '1.01229', `spawndist` = '0', `MovementType` = '0' WHERE guid = '47693';
UPDATE `creature` SET `position_x` = '-1382.72', `position_y` = '-97.0669', `position_z` = '158.935', `orientation` = '3.36239', `spawndist` = '0', `MovementType` = '0' WHERE guid = '52099';
-- Okuno misc
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '15324', `maxhealth` = '15324', `armor` = '6800', `faction_A` = '1820', `faction_H` = '1820', `npcflag` = `npcflag`|'4096', `mindmg` = '230', `maxdmg` = '420', `attackpower` = '1850', `baseattacktime` = '2000', `civilian` = '1' WHERE `entry` = '23159';
-- Ice Barrier rank 2 - 6
UPDATE npc_trainer set spellcost = 1700 WHERE spell = 13031;
UPDATE npc_trainer set spellcost = 1900 WHERE spell = 13032;
UPDATE npc_trainer set spellcost = 2100 WHERE spell = 13033;
UPDATE npc_trainer set spellcost = 2500 WHERE spell = 27134;
UPDATE npc_trainer set spellcost = 10500 WHERE spell = 33405;
-- Dragon's Breath rank 2 - 4
UPDATE npc_trainer set spellcost = 1900 WHERE spell = 33041;
UPDATE npc_trainer set spellcost = 22000 WHERE spell = 33042;
UPDATE npc_trainer set spellcost = 25000 WHERE spell = 33043;
-- Bodley ghost invisibility aura to be visible with Ghost Revealer
DELETE FROM `creature_template_addon` WHERE (`entry` = '16033');
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES ('16033', '27614 0');
-- Lumber Pile (181687) loot
DELETE FROM `gameobject_loot_template` WHERE (`entry` = '18451');
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
('18451', '23776', '-100', '0', '1', '1', '0', '0', '0');
UPDATE `gameobject_template` SET `flags` = `flags`|'4' WHERE `entry` = '181687';
UPDATE `creature_template` SET `minhealth` = 30000, `maxhealth` = 30000 WHERE `entry` = 17454;
DELETE FROM `creature_loot_template` WHERE `entry` = '80047' AND `item` = '6196';
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`)
VALUES
(5477, 6196, 100, 0, 1, 1, 0, 0, 0);
DELETE FROM creature_loot_template WHERE item=21776 AND entry IN (15668, 15670, 15669);

-- Grimscale Murloc
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15668, 21776, 10, 0, 1, 1, 6, 67, 0);

-- Grimscale Forager
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15670, 21776, 10, 0, 1, 1, 6, 67, 0);

-- Grimscale Forager
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (15669, 21776, 10, 0, 1, 1, 6, 67, 0);

-- Grimscale Forager
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=10 WHERE (`entry`=15950) AND (`item`=21776);

-- Mmmrrrggglll
Update `creature_loot_template` SET `ChanceOrQuestChance`=10 WHERE (`entry`=15937) AND (`item`=21776);
UPDATE `creature_loot_template` SET `lootcondition`=9, `condition_value1`=10821 WHERE `item`=31536;
UPDATE `quest_template` SET `ReqSourceId1` = '6074', `ReqSourceCount1` = '1', `ReqSourceRef1` = '1' WHERE `entry` IN (1380, 1381);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-8' WHERE `item` = '6074';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-33' WHERE `item` = '11834';
UPDATE `quest_template` SET `RewRepFaction1` = 911, `RewRepValue1` = 75 WHERE `entry` = 9393;
UPDATE quest_template SET RewRepFaction1=911, RewRepValue1=10 WHERE entry IN (10068, 10069, 10070, 10072, 10073);
-- Quest WANTED: Overseer Maltorius
Update `quest_template` set `offerRewardText`='I never thunk I''d be lookin'' at thish ugly mug again!$B$BHe acshually looksh better without the resht o'' him attached.$B$BHere''s yer reward *hic*, $R.' where `entry`='7701';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-100' WHERE `item` = '12230';
UPDATE creature_template SET maxhealth = 1, minhealth = 1, maxdmg = 1, speed = 2 WHERE entry = 13016;
-- Gibbert is not a questgiver
UPDATE `creature_template` SET `npcflag` = `npcflag`&~'2' WHERE `entry` = '3000';
-- Gibbert spawn by Klark20
DELETE FROM `creature` WHERE `id` = '3000';
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('20525', '3000', '1', '1', '0', '0', '-6146', '-1096', '-202', '3.971', '60', '0', '0', '3400', '0', '0', '0');
-- Add missing ReqSource for Quest 8201
UPDATE `quest_template` SET `ReqSourceId1`='19881', `ReqSourceCount1`='5', `ReqSourceRef1`='1' WHERE `entry`='8201';
-- Add missing ReqSource for Quest 6022
UPDATE `quest_template` SET `ReqSourceId2`='15447', `ReqSourceCount2`='7', `ReqSourceRef2`='2' WHERE `entry`='6022';
UPDATE creature_template SET faction_A=14, faction_H=14 WHERE entry IN (21205, 21044, 20932);
UPDATE creature_template SET faction_A=38, faction_H=38 WHERE entry=21196;
-- Nuramoc bestiary
UPDATE `creature_template` SET `minlevel`='70', `maxlevel`='70', `minhealth`='104790', `maxhealth`='104790', `minmana`='0', `maxmana`='0', `mindmg`='2020', `maxdmg`='2856', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='6792' WHERE `entry`='20932';
UPDATE `creature` SET `MovementType`= 2 WHERE guid = 48197;

REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `orientation`) VALUES
('48197','1','1564.7','-4422.48','7.42214','0','3.54844'),
('48197','2','1587.7','-4441.3','5.23192','0','5.57869'),
('48197','3','1631.52','-4425.69','13.9711','0','0.355795'),
('48197','4','1674.63','-4399.66','19.4286','0','0.536436'),
('48197','5','1694.11','-4378.09','24.3573','0','0.834888'),
('48197','6','1710.18','-4377.36','28.1364','0','0.045562'),
('48197','7','1735.08','-4408.05','37.1363','0','5.39413'),
('48197','8','1742.59','-4436.82','37.6164','0','4.95823'),
('48197','9','1727.76','-4474.61','33.1723','0','4.33777'),
('48197','10','1742.3','-4510.25','26.9457','0','5.09961'),
('48197','11','1771.87','-4529.57','24.6942','0','5.70436'),
('48197','12','1823.86','-4536','19.6821','0','6.1167'),
('48197','13','1847.99','-4536.04','22.6039','0','6.26592'),
('48197','14','1886.26','-4526.1','27.4421','0','0.2537'),
('48197','15','1900.42','-4547.77','28.1189','20000','5.28418'),
('48197','16','1891.44','-4524.78','27.9649','0','0.822332'),
('48197','17','1923.42','-4489.18','23.7277','0','0.83804'),
('48197','18','1943.4','-4440.67','22.983','0','1.18362'),
('48197','19','1937.27','-4367.47','21.7622','0','1.65486'),
('48197','20','1934.79','-4323.13','20.1493','0','1.61166'),
('48197','21','1928.82','-4287.29','27.7765','0','1.81193'),
('48197','22','1891.54','-4283.86','30.3329','0','3.05679'),
('48197','23','1877.46','-4268.28','31.5454','0','2.32637'),
('48197','24','1852.39','-4246.42','41.5389','0','2.42847'),
('48197','25','1792.57','-4229.18','39.3166','0','6.00595'),
('48197','26','1768.95','-4246.56','35.9472','0','3.79899'),
('48197','27','1747.1','-4256.78','26.8496','0','3.59085'),
('48197','28','1733.03','-4270.88','18.6','0','3.83825'),
('48197','29','1735.43','-4282.17','16.0138','0','4.9221'),
('48197','30','1743.49','-4298.88','13.7999','0','5.16164'),
('48197','31','1761.03','-4306.29','6.81094','0','5.84101'),
('48197','32','1776.65','-4295.06','6.37703','0','0.618116'),
('48197','33','1796.87','-4326.96','-11.6104','0','5.22055'),
('48197','34','1815.26','-4362.32','-9.76158','0','5.2127'),
('48197','35','1836.61','-4398.87','3.87476','0','5.25197'),
('48197','36','1850.79','-4416.65','5.09657','0','5.38548'),
('48197','37','1885.25','-4420.12','11.2285','0','6.18266'),
('48197','38','1893.94','-4427.17','13.9081','0','5.60147'),
('48197','39','1895.79','-4440.35','16.538','0','4.85142'),
('48197','40','1887.54','-4470.73','19.5547','0','4.44301'),
('48197','41','1905.9','-4494.11','23.0677','0','5.38549'),
('48197','42','1938.07','-4453.51','23.4853','0','0.900861'),
('48197','43','1942.62','-4419.18','22.5359','0','1.43886'),
('48197','44','1935.41','-4367.92','21.5777','0','1.70982'),
('48197','45','1933.75','-4323.19','20.0552','0','1.60772'),
('48197','46','1929.5','-4287.44','27.5804','0','1.69804'),
('48197','47','1913.05','-4283.71','30.2131','0','3.18716'),
('48197','48','1892.18','-4285.96','30.4216','0','3.25392'),
('48197','49','1874.43','-4265.24','32.2564','0','2.28002'),
('48197','50','1853.86','-4246.33','41.2289','0','2.41354'),
('48197','51','1793.08','-4228.69','39.126','0','2.82587'),
('48197','52','1751.91','-4213.96','42.5911','0','2.82194'),
('48197','53','1740.59','-4216.27','44.0316','0','3.36387'),
('48197','54','1729.89','-4223.83','45.3951','0','3.75657'),
('48197','55','1702.22','-4235.78','49.9939','0','3.59556'),
('48197','56','1681.24','-4249.03','50.9917','0','3.7173'),
('48197','57','1665.07','-4257.4','51.3441','0','3.61912'),
('48197','58','1653.3','-4265.64','50.0957','0','3.75264'),
('48197','59','1637.73','-4272.79','47.3286','0','3.572'),
('48197','60','1619.78','-4261.88','46.2517','0','2.59025'),
('48197','61','1586.94','-4223.11','44.2321','0','2.27217'),
('48197','62','1581.58','-4204.27','41.854','0','1.84805'),
('48197','63','1545.23','-4209.53','42.7078','0','3.28533'),
('48197','64','1550.94','-4177.83','40.2393','0','1.39252'),
('48197','65','1579.94','-4178.34','38.3645','0','6.25021'),
('48197','66','1579.83','-4205.28','42.0607','0','4.71082'),
('48197','67','1593.04','-4230.34','44.4662','0','5.19777'),
('48197','68','1621.19','-4262.88','46.4023','0','5.42553'),
('48197','69','1637.29','-4272.73','47.3343','0','5.7554'),
('48197','70','1655.96','-4263.11','50.5674','0','0.469664'),
('48197','71','1672.27','-4253.59','51.1794','0','0.528569'),
('48197','72','1671.76','-4273.51','50.8345','0','4.67941'),
('48197','73','1669.64','-4321.01','61.2462','0','4.77365'),
('48197','74','1669.82','-4338.71','60.481','0','6.24627'),
('48197','75','1681.13','-4338.42','57.364','0','1.31004'),
('48197','76','1679.14','-4329.87','55.5343','0','1.76164'),
('48197','77','1669.15','-4331.63','53.069','0','3.32851'),
('48197','78','1671.07','-4340.18','50.4022','0','4.9425'),
('48197','79','1677.69','-4337.92','47.9389','0','0.336141'),
('48197','80','1675.88','-4331.16','45.4615','0','1.83232'),
('48197','81','1668.82','-4334.2','42.8529','0','3.54842'),
('48197','82','1673.21','-4341.36','40.2228','0','5.26451'),
('48197','83','1678.35','-4336.63','37.9279','0','0.744545'),
('48197','84','1674.7','-4330.69','35.5344','0','2.12292'),
('48197','85','1667.46','-4336.76','32.6587','0','3.83901'),
('48197','86','1665.23','-4345.93','32.4401','0','4.39665'),
('48197','87','1653.46','-4359.32','23.5261','0','4.02751'),
('48197','88','1661.4','-4376.06','24.2616','0','5.15848'),
('48197','89','1677.32','-4394.21','20.3577','0','5.43729'),
('48197','90','1695.86','-4376.65','24.5836','0','0.760245'),
('48197','91','1726.97','-4358.55','29.302','0','0.504991'),
('48197','92','1731.05','-4350.83','29.4986','0','1.08618'),
('48197','93','1731.76','-4338.23','29.0793','0','1.51423'),
('48197','94','1720.94','-4303.51','29.83','0','1.87944'),
('48197','95','1686.12','-4278.89','31.9626','0','2.56666'),
('48197','96','1657.2','-4268.41','28.3303','0','2.80621'),
('48197','97','1629.41','-4282.32','22.1238','0','3.62695'),
('48197','98','1611.69','-4294.85','18.2318','0','3.73298'),
('48197','99','1573.26','-4318.52','21.7043','0','3.68978'),
('48197','100','1555.26','-4330.15','20.3809','0','3.7212'),
('48197','101','1539.25','-4335.17','18.138','0','3.45416'),
('48197','102','1525.22','-4405.84','14.3862','0','4.51445'),
('48197','103','1564.96','-4423.49','7.34514','0','5.86533');
UPDATE npc_trainer SET spellcost = 32000 WHERE spell IN (11419, 11420);
UPDATE npc_trainer SET spellcost = 8000 WHERE spell IN (3566, 3565);
UPDATE npc_trainer SET spellcost = 15000 WHERE spell IN (11416, 11417, 11418, 10059);
UPDATE npc_trainer SET spellcost = 2000 WHERE spell IN (3561, 3562, 3563, 3567);
-- New Trainers
REPLACE INTO npc_trainer (entry, spell, spellcost, reqlevel) VALUES
-- Ysuria
(27703, 49360, 15000, 35),
(27703, 49359, 2000, 35),
-- Lorrin Foxfire
(27705, 49361, 15000, 35),
(27705, 49358, 2000, 35);
UPDATE `creature_template` SET `faction_A` = 62, `faction_H` = 62 WHERE `entry` = 22331;
-- Zephyr must have a gossip
UPDATE `creature_template` SET `npcflag` = `npcflag`|'1' WHERE `entry` = '25967';
-- apprentice tasserel template
UPDATE `creature_template` SET `minlevel`=68 , `maxlevel`=68, `minhealth`=6000, `maxhealth`=6000, `minmana`=6882, `maxmana`=6882, `faction_A`=1696 , `faction_H`=1696 WHERE entry=23948;
-- Zephyr npc_text
REPLACE INTO `npc_text` (`id`, `text0_0`, `text0_1`, `text1_0`, `text1_1`, `text2_0`, `text2_1`, `text3_0`, `text3_1`, `text4_0`, `text4_1`, `text5_0`, `text5_1`, `text6_0`, `text6_1`, `text7_0`, `text7_1`) VALUES
(12507, 'This world has been damaged in ways beyond what our eyes can see. Even the passage of time feels different somehow.', 'This world has been damaged in ways beyond what our eyes can see. Even the passage of time feels different somehow.', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
-- Parry from lvl 8 (for all paladins)
UPDATE npc_trainer SET reqlevel = 8 WHERE spell = 3127 AND entry IN (925, 926, 927, 928, 1232, 5147, 5148, 5149, 5491, 5492, 8140, 15280, 16275, 16501, 16679, 16680, 16681, 16761, 17121, 17483, 17509, 20406, 23128, 26327, 26754);
-- Hammer of Wrath rank1, Blessing of Might rank5
UPDATE npc_trainer SET reqlevel = 44 WHERE spell = 24275;
UPDATE npc_trainer SET reqlevel = 42 WHERE spell = 19837;
-- spell cost
UPDATE npc_trainer SET spellcost = 1300 WHERE spell = 20929;
UPDATE npc_trainer SET spellcost = 2100 WHERE spell = 20930;
UPDATE npc_trainer SET spellcost = 46000 WHERE spell = 25890;
UPDATE npc_trainer SET spellcost = 46000 WHERE spell = 25918;
UPDATE npc_trainer SET spellcost = 3350 WHERE spell = 27174;
UPDATE npc_trainer SET spellcost = 110000 WHERE spell = 27139;
UPDATE npc_trainer SET spellcost = 6500 WHERE spell = 33072;
UPDATE npc_trainer SET spellcost = 1000 WHERE spell = 20912;
UPDATE npc_trainer SET spellcost = 1400 WHERE spell = 20913;
UPDATE npc_trainer SET spellcost = 1400 WHERE spell = 20927;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 20914;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 25898;
UPDATE npc_trainer SET spellcost = 46000 WHERE spell = 25895;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 25899;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 20928;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 32700;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 27168;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 27169;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 27179;
UPDATE npc_trainer SET spellcost = 550 WHERE spell = 20915;
UPDATE npc_trainer SET spellcost = 1000 WHERE spell = 20918;
UPDATE npc_trainer SET spellcost = 21000 WHERE spell = 19837;
UPDATE npc_trainer SET spellcost = 1400 WHERE spell = 20919;
UPDATE npc_trainer SET spellcost = 34000 WHERE spell = 19838;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 20920;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 27170;
UPDATE npc_trainer SET spellcost = 46000 WHERE spell = 25894;

-- forum end

-- Neo start


-- creature_equip_template cleanup of all equipement not used anymore
-- Selection done with this query:
-- select cet.entry from creature_equip_template cet left join (select distinct equipment_id as equip from creature_template union select distinct equipment_id  as equip from creature union select distinct equipment_id as equip from game_event_model_equip) as uni on cet.entry=uni.equip where uni.equip is null;
DELETE FROM `creature_equip_template` WHERE `entry` IN
    (3,12,14,16,22,23,24,26,45,47,53,55,57,61,67,72,73,78,80,83,84,87,88,93,98,99,100,102,112,126,129,
    135,139,153,154,161,169,175,176,177,180,184,187,190,197,200,202,203,205,206,207,208,209,212,213,
    217,218,221,223,225,226,227,230,235,240,247,249,250,251,252,253,254,260,265,269,271,273,275,279,
    283,284,285,293,295,301,302,303,306,307,310,311,314,316,322,324,330,333,336,337,338,343,348,350,
    352,353,355,357,362,368,372,376,379,387,390,393,394,395,399,404,407,409,410,411,413,416,425,427,
    433,438,440,441,449,450,456,460,461,462,471,473,478,484,492,494,497,505,506,513,514,517,518,522,
    527,528,531,532,533,535,540,541,546,551,552,554,556,557,558,561,563,565,568,574,579,581,582,584,
    585,589,590,593,600,601,602,607,608,611,615,616,622,623,627,630,631,635,637,638,641,648,650,655,
    657,658,659,662,666,669,670,672,674,677,678,679,680,682,683,684,686,687,688,689,693,697,704,705,
    709,711,712,713,716,719,720,723,729,732,733,736,740,744,745,746,751,756,760,761,762,768,769,773,
    776,778,779,789,794,795,800,802,807,819,821,825,827,840,853,855,858,860,863,868,870,871,872,874,
    875,876,878,880,891,892,893,894,896,900,901,904,907,924,925,933,946,948,949,956,957,960,965,967,
    968,969,970,971,977,978,980,984,988,989,990,995,998,1003,1005,1010,1015,1025,1028,1032,1033,1042,
    1045,1047,1054,1064,1077,1079,1115,1116,1117,1121,1127,1129,1143,1147,1148,1152,1155,1156,1160,1161,
    1167,1168,1170,1172,1173,1178,1180,1186,1188,1189,1190,1191,1193,1206,1208,1209,1214,1218,1224,1225,
    1233,1238,1244,1246,1255,1259,1262,1265,1269,1285,1295,1308,1312,1318,1319,1325,1326,1327,1328,1329,
    1330,1332,1334,1336,1344,1345,1350,1352,1358,1370,1394,1395,1397,1403,1404,1406,1412,1414,1417,1420,
    1423,1426,1434,1439,1452,1462,1479,1722,1728,1733,1879,1880,1894,1898,1899,1905,1906,2102);

-- Now add some new equipments added in 2.4.1 and 2.4.2 in the first holes
REPLACE INTO `creature_equip_template` VALUES (3,8600,0,0,50267394,0,0,273,0,0);
REPLACE INTO `creature_equip_template` VALUES (12,19766,0,0,50267394,0,0,273,0,0);
REPLACE INTO `creature_equip_template` VALUES (14,7482,7486,0,33490690,33490690,0,781,781,0);
REPLACE INTO `creature_equip_template` VALUES (16,7434,1757,0,33492738,33490436,0,781,1038,0);
REPLACE INTO `creature_equip_template` VALUES (22,7465,6534,0,33492482,50266116,0,13,23,0);
REPLACE INTO `creature_equip_template` VALUES (23,24595,1705,0,33492482,33490436,0,13,1038,0);
REPLACE INTO `creature_equip_template` VALUES (24,7487,1755,10671,33490690,33490436,33493506,781,1038,26);
REPLACE INTO `creature_equip_template` VALUES (26,6443,0,10671,33492738,0,33493506,781,0,26);
REPLACE INTO `creature_equip_template` VALUES (45,7437,0,23639,33490434,0,50266626,529,0,15);
REPLACE INTO `creature_equip_template` VALUES (47,6443,6530,0,33492738,50266116,0,781,1815,0);
REPLACE INTO `creature_equip_template` VALUES (53,7487,0,8106,33490690,0,50266626,781,0,15);
REPLACE INTO `creature_equip_template` VALUES (55,7428,0,6235,33488898,0,50266626,781,0,15);
REPLACE INTO `creature_equip_template` VALUES (57,7508,0,6232,33488898,0,50266626,781,0,15);
REPLACE INTO `creature_equip_template` VALUES (61,7439,7476,0,50267138,50267138,0,781,781,0);
REPLACE INTO `creature_equip_template` VALUES (67,23948,2080,0,50267138,33490436,0,781,1038,0);
REPLACE INTO `creature_equip_template` VALUES (72,7482,18814,0,33490690,33490436,0,781,1038,0);
REPLACE INTO `creature_equip_template` VALUES (73,8377,0,8106,33488898,0,50266626,1037,0,15);
REPLACE INTO `creature_equip_template` VALUES (78,7493,24281,0,33488898,50266116,0,781,23,0);
REPLACE INTO `creature_equip_template` VALUES (80,7426,1706,0,33488898,33490436,0,781,1038,0);
REPLACE INTO `creature_equip_template` VALUES (83,7439,23319,0,50267138,33488900,0,781,23,0);
REPLACE INTO `creature_equip_template` VALUES (84,8377,0,8106,33488898,0,50266626,1037,0,15);
REPLACE INTO `creature_equip_template` VALUES (87,23253,22638,0,50267138,33490436,0,781,1038,0);
REPLACE INTO `creature_equip_template` VALUES (88,25470,0,0,33488898,0,0,781,0,0);
REPLACE INTO `creature_equip_template` VALUES (93,23692,0,6231,33490690,0,50266626,781,0,15);
REPLACE INTO `creature_equip_template` VALUES (98,8377,0,8106,33488898,0,50266626,1037,0,15);
REPLACE INTO `creature_equip_template` VALUES (99,8043,0,0,50267138,0,0,13,0,0);
REPLACE INTO `creature_equip_template` VALUES (100,5027,0,0,33488898,0,0,785,0,0);
REPLACE INTO `creature_equip_template` VALUES (102,5027,0,0,33488898,0,0,785,0,0);
REPLACE INTO `creature_equip_template` VALUES (112,5569,21540,0,33492482,33490436,0,1813,1038,0);
REPLACE INTO `creature_equip_template` VALUES (126,0,0,24931,0,0,50266626,0,0,15);

-- Now update creature_template to use new or existing equipments changed since 2.4.x
UPDATE `creature_template` SET `equipment_id`=344 WHERE `entry`=100;
UPDATE `creature_template` SET `equipment_id`=838 WHERE `entry`=460;
UPDATE `creature_template` SET `equipment_id`=3 WHERE `entry`=644;
UPDATE `creature_template` SET `equipment_id`=12 WHERE `entry`=646;
UPDATE `creature_template` SET `equipment_id`=1773 WHERE `entry`=667;
UPDATE `creature_template` SET `equipment_id`=446 WHERE `entry`=706;
UPDATE `creature_template` SET `equipment_id`=422 WHERE `entry`=713;
UPDATE `creature_template` SET `equipment_id`=619 WHERE `entry`=714;
UPDATE `creature_template` SET `equipment_id`=466 WHERE `entry`=724;
UPDATE `creature_template` SET `equipment_id`=730 WHERE `entry`=775;
UPDATE `creature_template` SET `equipment_id`=1776 WHERE `entry`=781;
UPDATE `creature_template` SET `equipment_id`=1777 WHERE `entry`=784;
UPDATE `creature_template` SET `equipment_id`=725 WHERE `entry`=808;
UPDATE `creature_template` SET `equipment_id`=463 WHERE `entry`=829;
UPDATE `creature_template` SET `equipment_id`=1738 WHERE `entry`=836;
UPDATE `creature_template` SET `equipment_id`=838 WHERE `entry`=837;
UPDATE `creature_template` SET `equipment_id`=10 WHERE `entry`=895;
UPDATE `creature_template` SET `equipment_id`=702 WHERE `entry`=912;
UPDATE `creature_template` SET `equipment_id`=397 WHERE `entry`=916;
UPDATE `creature_template` SET `equipment_id`=429 WHERE `entry`=926;
UPDATE `creature_template` SET `equipment_id`=838 WHERE `entry`=944;
UPDATE `creature_template` SET `equipment_id`=14 WHERE `entry`=945;
UPDATE `creature_template` SET `equipment_id`=690 WHERE `entry`=1000;
UPDATE `creature_template` SET `equipment_id`=690 WHERE `entry`=1001;
UPDATE `creature_template` SET `equipment_id`=1874 WHERE `entry`=1061;
UPDATE `creature_template` SET `equipment_id`=667 WHERE `entry`=1095;
UPDATE `creature_template` SET `equipment_id`=690 WHERE `entry`=1098;
UPDATE `creature_template` SET `equipment_id`=690 WHERE `entry`=1099;
UPDATE `creature_template` SET `equipment_id`=690 WHERE `entry`=1100;
UPDATE `creature_template` SET `equipment_id`=690 WHERE `entry`=1101;
UPDATE `creature_template` SET `equipment_id`=1876 WHERE `entry`=1104;
UPDATE `creature_template` SET `equipment_id`=446 WHERE `entry`=1115;
UPDATE `creature_template` SET `equipment_id`=397 WHERE `entry`=1116;
UPDATE `creature_template` SET `equipment_id`=466 WHERE `entry`=1117;
UPDATE `creature_template` SET `equipment_id`=131 WHERE `entry`=1118;
UPDATE `creature_template` SET `equipment_id`=131 WHERE `entry`=1119;
UPDATE `creature_template` SET `equipment_id`=694 WHERE `entry`=1122;
UPDATE `creature_template` SET `equipment_id`=1754 WHERE `entry`=1123;
UPDATE `creature_template` SET `equipment_id`=1096 WHERE `entry`=1182;
UPDATE `creature_template` SET `equipment_id`=16 WHERE `entry`=1211;
UPDATE `creature_template` SET `equipment_id`=22 WHERE `entry`=1215;
UPDATE `creature_template` SET `equipment_id`=838 WHERE `entry`=1218;
UPDATE `creature_template` SET `equipment_id`=1315 WHERE `entry`=1226;
UPDATE `creature_template` SET `equipment_id`=1309 WHERE `entry`=1229;
UPDATE `creature_template` SET `equipment_id`=10 WHERE `entry`=1231;
UPDATE `creature_template` SET `equipment_id`=23 WHERE `entry`=1232;
UPDATE `creature_template` SET `equipment_id`=397 WHERE `entry`=1234;
UPDATE `creature_template` SET `equipment_id`=463 WHERE `entry`=1237;
UPDATE `creature_template` SET `equipment_id`=454 WHERE `entry`=1240;
UPDATE `creature_template` SET `equipment_id`=429 WHERE `entry`=1241;
UPDATE `creature_template` SET `equipment_id`=10 WHERE `entry`=1243;
UPDATE `creature_template` SET `equipment_id`=429 WHERE `entry`=1245;
UPDATE `creature_template` SET `equipment_id`=1315 WHERE `entry`=1247;
UPDATE `creature_template` SET `equipment_id`=1315 WHERE `entry`=1252;
UPDATE `creature_template` SET `equipment_id`=1304 WHERE `entry`=1253;
UPDATE `creature_template` SET `equipment_id`=738 WHERE `entry`=1255;
UPDATE `creature_template` SET `equipment_id`=508 WHERE `entry`=1256;
UPDATE `creature_template` SET `equipment_id`=838 WHERE `entry`=1261;
UPDATE `creature_template` SET `equipment_id`=502 WHERE `entry`=1265;
UPDATE `creature_template` SET `equipment_id`=1315 WHERE `entry`=1267;
UPDATE `creature_template` SET `equipment_id`=752 WHERE `entry`=1268;
UPDATE `creature_template` SET `equipment_id`=752 WHERE `entry`=1269;
UPDATE `creature_template` SET `equipment_id`=639 WHERE `entry`=1273;
UPDATE `creature_template` SET `equipment_id`=429 WHERE `entry`=1322;
UPDATE `creature_template` SET `equipment_id`=865 WHERE `entry`=1354;
UPDATE `creature_template` SET `equipment_id`=515 WHERE `entry`=1355;
UPDATE `creature_template` SET `equipment_id`=738 WHERE `entry`=1358;
UPDATE `creature_template` SET `equipment_id`=738 WHERE `entry`=1360;
UPDATE `creature_template` SET `equipment_id`=1315 WHERE `entry`=1373;
UPDATE `creature_template` SET `equipment_id`=1322 WHERE `entry`=1375;
UPDATE `creature_template` SET `equipment_id`=446 WHERE `entry`=1376;
UPDATE `creature_template` SET `equipment_id`=519 WHERE `entry`=1377;
UPDATE `creature_template` SET `equipment_id`=1315 WHERE `entry`=1378;
UPDATE `creature_template` SET `equipment_id`=298 WHERE `entry`=1380;
UPDATE `creature_template` SET `equipment_id`=85 WHERE `entry`=1397;
UPDATE `creature_template` SET `equipment_id`=690 WHERE `entry`=1436;
UPDATE `creature_template` SET `equipment_id`=422 WHERE `entry`=1679;
UPDATE `creature_template` SET `equipment_id`=429 WHERE `entry`=1690;
UPDATE `creature_template` SET `equipment_id`=1322 WHERE `entry`=1691;
UPDATE `creature_template` SET `equipment_id`=385 WHERE `entry`=1695;
UPDATE `creature_template` SET `equipment_id`=319 WHERE `entry`=1698;
UPDATE `creature_template` SET `equipment_id`=515 WHERE `entry`=1699;
UPDATE `creature_template` SET `equipment_id`=487 WHERE `entry`=1700;
UPDATE `creature_template` SET `equipment_id`=738 WHERE `entry`=1701;
UPDATE `creature_template` SET `equipment_id`=178 WHERE `entry`=1702;
UPDATE `creature_template` SET `equipment_id`=381 WHERE `entry`=1718;
UPDATE `creature_template` SET `equipment_id`=277 WHERE `entry`=1755;
UPDATE `creature_template` SET `equipment_id`=10 WHERE `entry`=1959;
UPDATE `creature_template` SET `equipment_id`=752 WHERE `entry`=1960;
UPDATE `creature_template` SET `equipment_id`=458 WHERE `entry`=1965;
-- UPDATE `creature_template` SET `equipment_id`=504 WHERE `entry`=1976; -- don't touch this one, it's night event equipment change
UPDATE `creature_template` SET `equipment_id`=85 WHERE `entry`=1977;
UPDATE `creature_template` SET `equipment_id`=730 WHERE `entry`=1981;
UPDATE `creature_template` SET `equipment_id`=752 WHERE `entry`=2092;
UPDATE `creature_template` SET `equipment_id`=730 WHERE `entry`=2149;
UPDATE `creature_template` SET `equipment_id`=417 WHERE `entry`=2167;
UPDATE `creature_template` SET `equipment_id`=381 WHERE `entry`=2168;
UPDATE `creature_template` SET `equipment_id`=85 WHERE `entry`=2169;
UPDATE `creature_template` SET `equipment_id`=667 WHERE `entry`=2324;
UPDATE `creature_template` SET `equipment_id`=1315 WHERE `entry`=2326;
UPDATE `creature_template` SET `equipment_id`=119 WHERE `entry`=2338;
UPDATE `creature_template` SET `equipment_id`=136 WHERE `entry`=2339;
UPDATE `creature_template` SET `equipment_id`=385 WHERE `entry`=2434;
UPDATE `creature_template` SET `equipment_id`=85 WHERE `entry`=2624;
UPDATE `creature_template` SET `equipment_id`=694 WHERE `entry`=2796;
UPDATE `creature_template` SET `equipment_id`=508 WHERE `entry`=2913;
UPDATE `creature_template` SET `equipment_id`=1112 WHERE `entry`=2916;
UPDATE `creature_template` SET `equipment_id`=145 WHERE `entry`=2918;
UPDATE `creature_template` SET `equipment_id`=575 WHERE `entry`=2949;
UPDATE `creature_template` SET `equipment_id`=730 WHERE `entry`=2950;
UPDATE `creature_template` SET `equipment_id`=24 WHERE `entry`=2951;
UPDATE `creature_template` SET `equipment_id`=699 WHERE `entry`=2967;
UPDATE `creature_template` SET `equipment_id`=13 WHERE `entry`=2968;
UPDATE `creature_template` SET `equipment_id`=397 WHERE `entry`=2975;
UPDATE `creature_template` SET `equipment_id`=738 WHERE `entry`=2976;
UPDATE `creature_template` SET `equipment_id`=1891 WHERE `entry`=3177;
UPDATE `creature_template` SET `equipment_id`=401 WHERE `entry`=3258;
UPDATE `creature_template` SET `equipment_id`=119 WHERE `entry`=3260;
UPDATE `creature_template` SET `equipment_id`=774 WHERE `entry`=3261;
UPDATE `creature_template` SET `equipment_id`=143 WHERE `entry`=3263;
UPDATE `creature_template` SET `equipment_id`=344 WHERE `entry`=3266;
UPDATE `creature_template` SET `equipment_id`=149 WHERE `entry`=3301;
UPDATE `creature_template` SET `equipment_id`=667 WHERE `entry`=3381;
UPDATE `creature_template` SET `equipment_id`=754 WHERE `entry`=3382;
UPDATE `creature_template` SET `equipment_id`=645 WHERE `entry`=3385;
UPDATE `creature_template` SET `equipment_id`=1071 WHERE `entry`=3386;
UPDATE `creature_template` SET `equipment_id`=26 WHERE `entry`=3456;
UPDATE `creature_template` SET `equipment_id`=242 WHERE `entry`=3457;
UPDATE `creature_template` SET `equipment_id`=660 WHERE `entry`=3467;
UPDATE `creature_template` SET `equipment_id`=1030 WHERE `entry`=3516;
UPDATE `creature_template` SET `equipment_id`=1887 WHERE `entry`=3561;
UPDATE `creature_template` SET `equipment_id`=487 WHERE `entry`=3607;
UPDATE `creature_template` SET `equipment_id`=417 WHERE `entry`=3639;
UPDATE `creature_template` SET `equipment_id`=358 WHERE `entry`=3644;
UPDATE `creature_template` SET `equipment_id`=417 WHERE `entry`=3657;
UPDATE `creature_template` SET `equipment_id`=105 WHERE `entry`=3663;
UPDATE `creature_template` SET `equipment_id`=752 WHERE `entry`=3666;
UPDATE `creature_template` SET `equipment_id`=45 WHERE `entry`=3691;
UPDATE `creature_template` SET `equipment_id`=145 WHERE `entry`=3732;
UPDATE `creature_template` SET `equipment_id`=47 WHERE `entry`=3733;
UPDATE `creature_template` SET `equipment_id`=725 WHERE `entry`=3743;
UPDATE `creature_template` SET `equipment_id`=1725 WHERE `entry`=3745;
UPDATE `creature_template` SET `equipment_id`=619 WHERE `entry`=3746;
UPDATE `creature_template` SET `equipment_id`=143 WHERE `entry`=3748;
UPDATE `creature_template` SET `equipment_id`=639 WHERE `entry`=3749;
UPDATE `creature_template` SET `equipment_id`=119 WHERE `entry`=3750;
UPDATE `creature_template` SET `equipment_id`=2 WHERE `entry`=3841;
UPDATE `creature_template` SET `equipment_id`=143 WHERE `entry`=3924;
UPDATE `creature_template` SET `equipment_id`=308 WHERE `entry`=3925;
UPDATE `creature_template` SET `equipment_id`=1 WHERE `entry`=3951;
UPDATE `creature_template` SET `equipment_id`=463 WHERE `entry`=3959;
UPDATE `creature_template` SET `equipment_id`=365 WHERE `entry`=3960;
UPDATE `creature_template` SET `equipment_id`=1 WHERE `entry`=3963;
UPDATE `creature_template` SET `equipment_id`=529 WHERE `entry`=3964;
UPDATE `creature_template` SET `equipment_id`=851 WHERE `entry`=3965;
UPDATE `creature_template` SET `equipment_id`=85 WHERE `entry`=3996;
UPDATE `creature_template` SET `equipment_id`=417 WHERE `entry`=4079;
UPDATE `creature_template` SET `equipment_id`=136 WHERE `entry`=4095;
UPDATE `creature_template` SET `equipment_id`=145 WHERE `entry`=4097;
UPDATE `creature_template` SET `equipment_id`=277 WHERE `entry`=4099;
UPDATE `creature_template` SET `equipment_id`=604 WHERE `entry`=4111;
UPDATE `creature_template` SET `equipment_id`=844 WHERE `entry`=4114;
UPDATE `creature_template` SET `equipment_id`=85 WHERE `entry`=4116;
UPDATE `creature_template` SET `equipment_id`=463 WHERE `entry`=4190;
UPDATE `creature_template` SET `equipment_id`=841 WHERE `entry`=4200;
UPDATE `creature_template` SET `equipment_id`=1913 WHERE `entry`=4215;
UPDATE `creature_template` SET `equipment_id`=1895 WHERE `entry`=4217;
UPDATE `creature_template` SET `equipment_id`=258 WHERE `entry`=4218;
UPDATE `creature_template` SET `equipment_id`=358 WHERE `entry`=4219;
UPDATE `creature_template` SET `equipment_id`=572 WHERE `entry`=4220;
UPDATE `creature_template` SET `equipment_id`=2 WHERE `entry`=4319;
UPDATE `creature_template` SET `equipment_id`=1073 WHERE `entry`=4320;
UPDATE `creature_template` SET `equipment_id`=1266 WHERE `entry`=4456;
UPDATE `creature_template` SET `equipment_id`=105 WHERE `entry`=4484;
UPDATE `creature_template` SET `equipment_id`=319 WHERE `entry`=4632;
UPDATE `creature_template` SET `equipment_id`=53 WHERE `entry`=4633;
UPDATE `creature_template` SET `equipment_id`=193 WHERE `entry`=4634;
UPDATE `creature_template` SET `equipment_id`=117 WHERE `entry`=4636;
UPDATE `creature_template` SET `equipment_id`=147 WHERE `entry`=4637;
UPDATE `creature_template` SET `equipment_id`=55 WHERE `entry`=4638;
UPDATE `creature_template` SET `equipment_id`=619 WHERE `entry`=4639;
UPDATE `creature_template` SET `equipment_id`=385 WHERE `entry`=4640;
UPDATE `creature_template` SET `equipment_id`=119 WHERE `entry`=4641;
UPDATE `creature_template` SET `equipment_id`=143 WHERE `entry`=4642;
UPDATE `creature_template` SET `equipment_id`=639 WHERE `entry`=4643;
UPDATE `creature_template` SET `equipment_id`=344 WHERE `entry`=4644;
UPDATE `creature_template` SET `equipment_id`=220 WHERE `entry`=4645;
UPDATE `creature_template` SET `equipment_id`=319 WHERE `entry`=4646;
UPDATE `creature_template` SET `equipment_id`=57 WHERE `entry`=4647;
UPDATE `creature_template` SET `equipment_id`=575 WHERE `entry`=4648;
UPDATE `creature_template` SET `equipment_id`=838 WHERE `entry`=4649;
UPDATE `creature_template` SET `equipment_id`=385 WHERE `entry`=4652;
UPDATE `creature_template` SET `equipment_id`=127 WHERE `entry`=4653;
UPDATE `creature_template` SET `equipment_id`=85 WHERE `entry`=4668;
UPDATE `creature_template` SET `equipment_id`=586 WHERE `entry`=4677;
UPDATE `creature_template` SET `equipment_id`=136 WHERE `entry`=4687;
UPDATE `creature_template` SET `equipment_id`=752 WHERE `entry`=4708;
UPDATE `creature_template` SET `equipment_id`=502 WHERE `entry`=4772;
UPDATE `creature_template` SET `equipment_id`=136 WHERE `entry`=5113;
UPDATE `creature_template` SET `equipment_id`=613 WHERE `entry`=5115;
UPDATE `creature_template` SET `equipment_id`=136 WHERE `entry`=5232;
UPDATE `creature_template` SET `equipment_id`=61 WHERE `entry`=5234;
UPDATE `creature_template` SET `equipment_id`=110 WHERE `entry`=5240;
UPDATE `creature_template` SET `equipment_id`=381 WHERE `entry`=5249;
UPDATE `creature_template` SET `equipment_id`=1932 WHERE `entry`=5251;
UPDATE `creature_template` SET `equipment_id`=136 WHERE `entry`=5253;
UPDATE `creature_template` SET `equipment_id`=119 WHERE `entry`=5254;
UPDATE `creature_template` SET `equipment_id`=127 WHERE `entry`=5255;
UPDATE `creature_template` SET `equipment_id`=114 WHERE `entry`=5359;
UPDATE `creature_template` SET `equipment_id`=117 WHERE `entry`=5360;
UPDATE `creature_template` SET `equipment_id`=173 WHERE `entry`=5390;
UPDATE `creature_template` SET `equipment_id`=738 WHERE `entry`=5392;
UPDATE `creature_template` SET `equipment_id`=632 WHERE `entry`=5396;
UPDATE `creature_template` SET `equipment_id`=422 WHERE `entry`=5411;
UPDATE `creature_template` SET `equipment_id`=1791 WHERE `entry`=5547;
UPDATE `creature_template` SET `equipment_id`=547 WHERE `entry`=5594;
UPDATE `creature_template` SET `equipment_id`=619 WHERE `entry`=5600;
UPDATE `creature_template` SET `equipment_id`=594 WHERE `entry`=5601;
UPDATE `creature_template` SET `equipment_id`=277 WHERE `entry`=5602;
UPDATE `creature_template` SET `equipment_id`=193 WHERE `entry`=5616;
UPDATE `creature_template` SET `equipment_id`=838 WHERE `entry`=5617;
UPDATE `creature_template` SET `equipment_id`=1821 WHERE `entry`=5618;
UPDATE `creature_template` SET `equipment_id`=10 WHERE `entry`=5638;
UPDATE `creature_template` SET `equipment_id`=1815 WHERE `entry`=5642;
UPDATE `creature_template` SET `equipment_id`=67 WHERE `entry`=5752;
UPDATE `creature_template` SET `equipment_id`=613 WHERE `entry`=5786;
UPDATE `creature_template` SET `equipment_id`=72 WHERE `entry`=5999;
UPDATE `creature_template` SET `equipment_id`=814 WHERE `entry`=6086;
UPDATE `creature_template` SET `equipment_id`=73 WHERE `entry`=6087;
UPDATE `creature_template` SET `equipment_id`=291 WHERE `entry`=6114;
UPDATE `creature_template` SET `equipment_id`=1735 WHERE `entry`=6221;
UPDATE `creature_template` SET `equipment_id`=103 WHERE `entry`=6244;
UPDATE `creature_template` SET `equipment_id`=110 WHERE `entry`=6247;
UPDATE `creature_template` SET `equipment_id`=193 WHERE `entry`=6288;
UPDATE `creature_template` SET `equipment_id`=838 WHERE `entry`=6376;
UPDATE `creature_template` SET `equipment_id`=542 WHERE `entry`=6568;
UPDATE `creature_template` SET `equipment_id`=1073 WHERE `entry`=6706;
UPDATE `creature_template` SET `equipment_id`=502 WHERE `entry`=6782;
UPDATE `creature_template` SET `equipment_id`=1322 WHERE `entry`=6806;
UPDATE `creature_template` SET `equipment_id`=397 WHERE `entry`=6886;
UPDATE `creature_template` SET `equipment_id`=119 WHERE `entry`=6887;
UPDATE `creature_template` SET `equipment_id`=886 WHERE `entry`=7296;
UPDATE `creature_template` SET `equipment_id`=178 WHERE `entry`=7407;
UPDATE `creature_template` SET `equipment_id`=752 WHERE `entry`=7408;
UPDATE `creature_template` SET `equipment_id`=865 WHERE `entry`=7564;
UPDATE `creature_template` SET `equipment_id`=2001 WHERE `entry`=7583;
UPDATE `creature_template` SET `equipment_id`=78 WHERE `entry`=7724;
UPDATE `creature_template` SET `equipment_id`=147 WHERE `entry`=7725;
UPDATE `creature_template` SET `equipment_id`=85 WHERE `entry`=7726;
UPDATE `creature_template` SET `equipment_id`=143 WHERE `entry`=7727;
UPDATE `creature_template` SET `equipment_id`=1309 WHERE `entry`=7733;
UPDATE `creature_template` SET `equipment_id`=178 WHERE `entry`=7763;
UPDATE `creature_template` SET `equipment_id`=1112 WHERE `entry`=7764;
UPDATE `creature_template` SET `equipment_id`=119 WHERE `entry`=7773;
UPDATE `creature_template` SET `equipment_id`=1162 WHERE `entry`=7799;
UPDATE `creature_template` SET `equipment_id`=422 WHERE `entry`=7804;
UPDATE `creature_template` SET `equipment_id`=1241 WHERE `entry`=7823;
UPDATE `creature_template` SET `equipment_id`=613 WHERE `entry`=7824;
UPDATE `creature_template` SET `equipment_id`=80 WHERE `entry`=7875;
UPDATE `creature_template` SET `equipment_id`=83 WHERE `entry`=7876;
UPDATE `creature_template` SET `equipment_id`=727 WHERE `entry`=7882;
UPDATE `creature_template` SET `equipment_id`=1165 WHERE `entry`=7907;
UPDATE `creature_template` SET `equipment_id`=814 WHERE `entry`=7939;
UPDATE `creature_template` SET `equipment_id`=487 WHERE `entry`=7946;
UPDATE `creature_template` SET `equipment_id`=474 WHERE `entry`=7947;
UPDATE `creature_template` SET `equipment_id`=529 WHERE `entry`=7948;
UPDATE `creature_template` SET `equipment_id`=178 WHERE `entry`=7954;
UPDATE `creature_template` SET `equipment_id`=178 WHERE `entry`=7955;
UPDATE `creature_template` SET `equipment_id`=84 WHERE `entry`=8015;
UPDATE `creature_template` SET `equipment_id`=2 WHERE `entry`=8019;
UPDATE `creature_template` SET `equipment_id`=1141 WHERE `entry`=8124;
UPDATE `creature_template` SET `equipment_id`=369 WHERE `entry`=8125;
UPDATE `creature_template` SET `equipment_id`=752 WHERE `entry`=8126;
UPDATE `creature_template` SET `equipment_id`=738 WHERE `entry`=8128;
UPDATE `creature_template` SET `equipment_id`=422 WHERE `entry`=8129;
UPDATE `creature_template` SET `equipment_id`=17 WHERE `entry`=8131;
UPDATE `creature_template` SET `equipment_id`=1856 WHERE `entry`=8137;
UPDATE `creature_template` SET `equipment_id`=1118 WHERE `entry`=8139;
UPDATE `creature_template` SET `equipment_id`=119 WHERE `entry`=8142;
UPDATE `creature_template` SET `equipment_id`=385 WHERE `entry`=8144;
UPDATE `creature_template` SET `equipment_id`=133 WHERE `entry`=8147;
UPDATE `creature_template` SET `equipment_id`=515 WHERE `entry`=8150;
UPDATE `creature_template` SET `equipment_id`=653 WHERE `entry`=8151;
UPDATE `creature_template` SET `equipment_id`=529 WHERE `entry`=8157;
UPDATE `creature_template` SET `equipment_id`=1956 WHERE `entry`=8305;
UPDATE `creature_template` SET `equipment_id`=178 WHERE `entry`=8320;
UPDATE `creature_template` SET `equipment_id`=487 WHERE `entry`=8508;
UPDATE `creature_template` SET `equipment_id`=1315 WHERE `entry`=8579;
UPDATE `creature_template` SET `equipment_id`=64 WHERE `entry`=8661;
UPDATE `creature_template` SET `equipment_id`=178 WHERE `entry`=8736;
UPDATE `creature_template` SET `equipment_id`=1202 WHERE `entry`=8979;
UPDATE `creature_template` SET `equipment_id`=8 WHERE `entry`=8997;
UPDATE `creature_template` SET `equipment_id`=766 WHERE `entry`=9047;
UPDATE `creature_template` SET `equipment_id`=159 WHERE `entry`=9460;
UPDATE `creature_template` SET `equipment_id`=752 WHERE `entry`=9706;
UPDATE `creature_template` SET `equipment_id`=508 WHERE `entry`=9980;
UPDATE `creature_template` SET `equipment_id`=119 WHERE `entry`=9985;
UPDATE `creature_template` SET `equipment_id`=1073 WHERE `entry`=10059;
UPDATE `creature_template` SET `equipment_id`=487 WHERE `entry`=10118;
UPDATE `creature_template` SET `equipment_id`=487 WHERE `entry`=10216;
UPDATE `creature_template` SET `equipment_id`=945 WHERE `entry`=10293;
UPDATE `creature_template` SET `equipment_id`=738 WHERE `entry`=10460;
UPDATE `creature_template` SET `equipment_id`=17 WHERE `entry`=10610;
UPDATE `creature_template` SET `equipment_id`=10 WHERE `entry`=10611;
UPDATE `creature_template` SET `equipment_id`=1969 WHERE `entry`=10696;
UPDATE `creature_template` SET `equipment_id`=730 WHERE `entry`=10758;
UPDATE `creature_template` SET `equipment_id`=87 WHERE `entry`=10759;
UPDATE `creature_template` SET `equipment_id`=1022 WHERE `entry`=10760;
UPDATE `creature_template` SET `equipment_id`=19 WHERE `entry`=10803;
UPDATE `creature_template` SET `equipment_id`=19 WHERE `entry`=10804;
UPDATE `creature_template` SET `equipment_id`=502 WHERE `entry`=11104;
UPDATE `creature_template` SET `equipment_id`=1215 WHERE `entry`=11137;
UPDATE `creature_template` SET `equipment_id`=766 WHERE `entry`=11438;
UPDATE `creature_template` SET `equipment_id`=500 WHERE `entry`=11596;
UPDATE `creature_template` SET `equipment_id`=508 WHERE `entry`=11625;
UPDATE `creature_template` SET `equipment_id`=973 WHERE `entry`=11715;
UPDATE `creature_template` SET `equipment_id`=397 WHERE `entry`=11749;
UPDATE `creature_template` SET `equipment_id`=814 WHERE `entry`=11806;
UPDATE `creature_template` SET `equipment_id`=17 WHERE `entry`=11807;
UPDATE `creature_template` SET `equipment_id`=4 WHERE `entry`=11820;
UPDATE `creature_template` SET `equipment_id`=1375 WHERE `entry`=11937;
UPDATE `creature_template` SET `equipment_id`=105 WHERE `entry`=12197;
UPDATE `creature_template` SET `equipment_id`=88 WHERE `entry`=12338;
UPDATE `creature_template` SET `equipment_id`=107 WHERE `entry`=12427;
UPDATE `creature_template` SET `equipment_id`=1857 WHERE `entry`=12576;
UPDATE `creature_template` SET `equipment_id`=1315 WHERE `entry`=12738;
UPDATE `creature_template` SET `equipment_id`=93 WHERE `entry`=12856;
UPDATE `creature_template` SET `equipment_id`=198 WHERE `entry`=12862;
UPDATE `creature_template` SET `equipment_id`=198 WHERE `entry`=12864;
UPDATE `creature_template` SET `equipment_id`=1867 WHERE `entry`=12867;
UPDATE `creature_template` SET `equipment_id`=98 WHERE `entry`=12896;
UPDATE `creature_template` SET `equipment_id`=639 WHERE `entry`=12897;
UPDATE `creature_template` SET `equipment_id`=325 WHERE `entry`=12903;
UPDATE `creature_template` SET `equipment_id`=515 WHERE `entry`=12960;
UPDATE `creature_template` SET `equipment_id`=107 WHERE `entry`=13076;
UPDATE `creature_template` SET `equipment_id`=85 WHERE `entry`=13096;
UPDATE `creature_template` SET `equipment_id`=99 WHERE `entry`=13546;
UPDATE `creature_template` SET `equipment_id`=1219 WHERE `entry`=13656;
UPDATE `creature_template` SET `equipment_id`=1754 WHERE `entry`=13737;
UPDATE `creature_template` SET `equipment_id`=1078 WHERE `entry`=14487;
UPDATE `creature_template` SET `equipment_id`=1824 WHERE `entry`=14567;
UPDATE `creature_template` SET `equipment_id`=178 WHERE `entry`=14743;
UPDATE `creature_template` SET `equipment_id`=1101 WHERE `entry`=14901;
UPDATE `creature_template` SET `equipment_id`=814 WHERE `entry`=14982;
UPDATE `creature_template` SET `equipment_id`=2049 WHERE `entry`=14984;
UPDATE `creature_template` SET `equipment_id`=523 WHERE `entry`=15045;
UPDATE `creature_template` SET `equipment_id`=523 WHERE `entry`=15046;
UPDATE `creature_template` SET `equipment_id`=100 WHERE `entry`=15062;
UPDATE `creature_template` SET `equipment_id`=429 WHERE `entry`=15063;
UPDATE `creature_template` SET `equipment_id`=429 WHERE `entry`=15064;
UPDATE `creature_template` SET `equipment_id`=738 WHERE `entry`=15074;
UPDATE `creature_template` SET `equipment_id`=738 WHERE `entry`=15075;
UPDATE `creature_template` SET `equipment_id`=523 WHERE `entry`=15086;
UPDATE `creature_template` SET `equipment_id`=738 WHERE `entry`=15087;
UPDATE `creature_template` SET `equipment_id`=102 WHERE `entry`=15089;
UPDATE `creature_template` SET `equipment_id`=112 WHERE `entry`=16014;
UPDATE `creature_template` SET `equipment_id`=1022 WHERE `entry`=17100;
UPDATE `creature_template` SET `equipment_id`=1742 WHERE `entry`=17106;
UPDATE `creature_template` SET `equipment_id`=15 WHERE `entry`=19860;
UPDATE `creature_template` SET `equipment_id`=52 WHERE `entry`=19861;
UPDATE `creature_template` SET `equipment_id`=1513 WHERE `entry`=20374;
UPDATE `creature_template` SET `equipment_id`=159 WHERE `entry`=21448;
UPDATE `creature_template` SET `equipment_id`=126 WHERE `entry`=23900;
UPDATE `creature_template` SET `equipment_id`=1971 WHERE `entry`=24477;
UPDATE `creature_template` SET `equipment_id`=1229 WHERE `entry`=24671;
UPDATE `creature_template` SET `equipment_id`=790 WHERE `entry`=24672;
UPDATE `creature_template` SET `equipment_id`=145 WHERE `entry`=27703;
UPDATE `creature_template` SET `equipment_id`=173 WHERE `entry`=27704;

-- More old equipments to remove after this update
DELETE FROM `creature_equip_template` WHERE `entry` IN
    (18,40,65,108,138,164,181,228,248,296,315,326,331,335,356,402,406,420,428,439,442,511,534,544,595,
    624,633,636,691,698,700,714,715,748,775,804,824,842,856,944,974,997,1037,1038,1049,1113,1134,1163,
    1203,1234,1242,1243,1317,1338,1775,1779,1780,1792,1917,2024,2042,2070,2084);

-- 54 more fishing holes (pool patch more and more needed)
REPLACE INTO `gameobject` VALUES ('24059','180750','1','1','-7020.72','-4871.83','0.0','4.71239','0.0','0.0','0.707107','-0.707107','3600','100','1');
REPLACE INTO `gameobject` VALUES ('28321','180750','1','1','-7230.44','-4919.24','0.0','2.07694','0.0','0.0','0.861629','0.507538','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47501','180752','1','1','-6710.04','-4814.66','0.0','-1.09956','0.0','0.0','0.522499','-0.85264','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47502','180582','1','1','6648.43','540.152','0.0','0.802851','0.0','0.0','0.390731','0.920505','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47503','180582','1','1','-1951.5','-3759.95','0.0','0.663225','0.0','0.0','0.325568','0.945519','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47504','180582','1','1','-1925.76','-3760.7','0.0','1.11701','0.0','0.0','0.529919','0.848048','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47505','180900','0','1','-13235.1','558.615','0.0','-3.00197','0.0','0.0','0.997564','-0.069756','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47506','180901','0','1','-13290.2','651.097','0.0','-2.74017','0.0','0.0','0.979925','-0.199368','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47507','180901','0','1','-14012.5','599.186','0.0','3.07178','0.0','0.0','0.999391','0.034899','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47508','180901','0','1','-12679.1','154.718','0.0','-2.96706','0.0','0.0','0.996195','-0.087156','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47509','180902','0','1','-14141.9','517.923','0.0','2.72271','0.0','0.0','0.978148','0.207912','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47510','180902','0','1','-12968.7','489.778','0.0','-1.13446','0.0','0.0','0.5373','-0.843391','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47511','180902','0','1','-14424.6','465.557','0.0','3.12414','0.0','0.0','0.999962','0.008727','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47512','180902','0','1','-14345.0','481.232','0.0','-0.191986','0.0','0.0','0.095846','-0.995396','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47513','180902','0','1','-13693.8','670.814','0.0','0.139626','0.0','0.0','0.069756','0.997564','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47514','180655','1','1','6486.94','822.047','0.0','0.994838','0.0','0.0','0.477159','0.878817','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47515','180655','1','1','-1981.99','-3767.3','0.0','1.5708','0.0','0.0','0.707107','0.707107','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47516','180657','0','1','-1169.1','-796.219','0.0','4.71239','0.0','0.0','0.707107','-0.707107','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47517','180657','0','1','-2704.53','-1210.83','0.0','2.14675','0.0','0.0','0.878817','0.477159','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47518','180657','0','1','-3873.45','-634.351','0.0','-0.837758','0.0','0.0','0.406737','-0.913545','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47519','180657','0','1','-2904.7','-1007.43','0.0','-0.418879','0.0','0.0','0.207912','-0.978148','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47520','180662','0','1','-1032.62','-405.506','0.0','-0.174533','0.0','0.0','0.087156','-0.996195','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47521','180662','0','1','-1101.77','-285.447','0.0','0.959931','0.0','0.0','0.461749','0.887011','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47522','180664','0','1','-1474.17','-1098.55','0.0','2.93215','0.0','0.0','0.994522','0.104528','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47523','180664','0','1','-896.287','-696.348','0.0','-2.68781','0.0','0.0','0.97437','-0.224951','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47524','180664','0','1','-1093.24','-33.4709','0.0','-0.139626','0.0','0.0','0.069756','-0.997564','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47525','180664','0','1','-1037.98','-736.12','0.0','-1.65806','0.0','0.0','0.737277','-0.67559','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47526','180664','0','1','-3649.69','-665.087','0.0','0.191986','0.0','0.0','0.095846','0.995396','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47527','180682','1','1','-2871.48','-4241.04','0.0','0.314159','0.0','0.0','0.156434','0.987688','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47528','180682','0','1','-12067.7','871.853','0.0','2.49582','0.0','0.0','0.948324','0.317305','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47529','180682','0','1','-11882.0','876.11','0.0','1.53589','0.0','0.0','0.694658','0.71934','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47530','180682','0','1','-11801.6','961.14','0.0','-0.436333','0.0','0.0','0.21644','-0.976296','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47531','180682','0','1','-11950.8','847.183','0.0','2.77507','0.0','0.0','0.983255','0.182236','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47532','180682','0','1','-11882.0','876.11','0.0','1.53589','0.0','0.0','0.694658','0.71934','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47533','180682','1','1','-2994.52','-4235.53','0.0','-1.51844','0.0','0.0','0.688354','-0.725374','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47534','180682','1','1','-3548.39','-4378.76','0.0','1.65806','0.0','0.0','0.737277','0.67559','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47535','180683','1','1','-3250.99','-4297.08','0.0','1.09956','0.0','0.0','0.522499','0.85264','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47536','180683','0','1','-11958.1','738.97','0.0','2.94961','0.0','0.0','0.995396','0.095846','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47537','180683','0','1','-11801.6','961.14','0.0','-0.436333','0.0','0.0','0.21644','-0.976296','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47538','180683','1','1','-2591.33','-4100.78','0.0','-2.89725','0.0','0.0','0.992546','-0.121869','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47539','180683','0','1','-12349.4','342.822','0.0','2.26893','0.0','0.0','0.906308','0.422618','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47540','180684','0','1','-11517.9','141.394','10.0699','1.36136','0.0','0.0','0.62932','0.777146','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47541','180684','0','1','-11483.7','187.406','10.0699','-2.33874','0.0','0.0','0.920505','-0.390731','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47542','180684','0','1','-11517.9','141.394','10.0699','1.36136','0.0','0.0','0.62932','0.777146','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47543','180684','0','1','-12313.4','-311.831','10.0699','1.79769','0.0','0.0','0.782608','0.622515','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47544','180684','0','1','-12578.5','-108.159','10.0699','-2.11185','0.0','0.0','0.870356','-0.492423','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47545','180685','0','1','-11542.9','43.4788','10.0699','1.72788','0.0','0.0','0.760406','0.649448','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47546','180685','0','1','-11701.4','-331.587','10.0699','-2.87979','0.0','0.0','0.991445','-0.130526','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47547','180712','0','1','-14012.5','599.186','0.0','3.07178','0.0','0.0','0.999391','0.034899','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47548','180712','0','1','-12968.7','489.778','0.0','-1.13446','0.0','0.0','0.5373','-0.843391','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47549','180712','0','1','-12771.4','378.642','0.0','-0.523599','0.0','0.0','0.258819','-0.965926','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47550','180712','0','1','-13646.9','547.157','0.0','1.95477','0.0','0.0','0.829038','0.559193','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47551','180712','0','1','-13150.0','482.661','0.0','-1.98968','0.0','0.0','0.838671','-0.544639','3600','100','1');
REPLACE INTO `gameobject` VALUES ('47552','180712','0','1','-12771.4','378.642','0.0','-0.523599','0.0','0.0','0.258819','-0.965926','3600','100','1');

-- In missing go_template I found, there are 2 boats and a flying horde transport that are clearly on official but for
-- which the TaxiPath entry (data0) is not in TaxiPath.dbc. I can't find the reason.
REPLACE INTO `gameobject_template` (entry, type, displayId, name, castBarCaption, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, ScriptName) VALUES
  -- (176357, 15, 3015, "Test de Josh", "", 0, 0, 1, 297, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
  -- (181688, 15, 3015, "Vaisseau de l'Exodar", "", 0, 0, 1, 504, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
  -- (181689, 15, 3015, "Vaisseau de l'Exodar", "", 0, 0, 1, 505, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ""),
  (188123, 19, 1948, "Mailbox", "", 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "");

-- Neo end

-- seph start
-- Noggle's Satchel is dropped by GO
DELETE FROM `creature_loot_template` WHERE `item` = '20379';
-- Stonetalon Standstill is also an escort, not just kill
UPDATE `quest_template` SET `SpecialFlags` = '2' WHERE `entry` = '25';
-- BRUTALLUS_WALL_ICE
UPDATE `gameobject_template` SET `faction` = '114' WHERE `entry` = '188119';
-- BRUTALLUS_WALL_FIRE
UPDATE `gameobject_template` SET `faction` = '114' WHERE `entry` = '188075';
-- KALECGOS_FORCE_FIELD
UPDATE `gameobject_template` SET `faction` = '114' WHERE `entry` = '188421';
-- Befouled Water Globe is not quest item, it start a quest
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '100' WHERE `item` = '16408';
-- Piglet's Collar in Fel Iron Deposit, typo, should be Blood Garnet
UPDATE `gameobject_loot_template` SET `item` = '23077' WHERE `item` = '23007';
-- Hydross the Unstable bestiary
UPDATE `creature_template` SET `minhealth` = '3414600', `maxhealth` = '3414600', `minmana` = '303520', `maxmana` = '303520', `mindmg` = '5974', `maxdmg` = '8447', `baseattacktime` = '2000', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '21216';
-- SSC bosses with baseattacktime 0 (all...)
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE `entry` IN ('21217', '21215', '21214', '21966', '21965', '21964', '21213', '21212');
-- Krixel Pinchwhistle should be inside the hut
REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('91798', '23396', '530', '0', '0', '3073.99', '3633.34', '143.779', '2.09012', '120', '0', '0', '11000', '0', '0', '0');
-- Justine Demalier was again male sometimes
UPDATE `creature_model_info` SET `gender` = '2' WHERE (`modelid` = '5446');
-- Frogs in zul'aman looking dead and moving
UPDATE `creature_template` SET `minhealth` = '1600', `maxhealth` = '1600' WHERE `entry` = '24396';
UPDATE `creature` SET `curhealth` = '1600' WHERE `id` = '24396';
-- Torloth the magnificent had an invisible model as alternative
UPDATE `creature_model_info` SET `modelid_other_gender` = '0' WHERE (`modelid` = '20780');
-- Nalorakk shouldn't be unattackable
UPDATE `creature_template` SET `armor` = '7200', `flags` = '0' WHERE `entry` = '23576';
-- Jaedenar Cultist misc
UPDATE `creature_template` SET `spell1` = '11980', `spell2` = '20825', `spell3` = '11639', `ScriptName` = '' WHERE `entry` = '7112';
-- invisibility for triggers
DELETE FROM `creature_template_addon` WHERE `entry` IN ('19028', '19029', '19032');
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES
('19028', '23196 0'), -- Overlook
('19029', '23196 0'), -- Stadium
('19032', '23196 0'); -- Broken Hill

-- Stadium and Broken Hill triggers were killable with AoE giving pvp quest complete
UPDATE `creature_template` SET `flags` = `flags`|'33554432' WHERE `entry` IN ('19029', '19032');
-- Dalliah the Doomsayer shouldn't be immune to interrupt
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`&~'33554432' WHERE `entry` IN ('20885', '21590');
-- lets add immunity to turn evil to all arcatraz bosses, demons
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|'4194304' WHERE `entry` IN ('20885', '21590', '20870', '21626', '20886', '21624');
-- Harbinger Skyriss didn't have any immunity
UPDATE `creature_template` SET `mechanic_immune_mask` = '115752959' WHERE `entry` IN ('20912', '21599');
-- The Scroll of Skyriss drops in heroic
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
('21599', '33861', '-100', '0', '1', '1', '0', '0', '0');
-- Soul portal is used by players, another Arcatraz bad spawn, that instance sux really hard atm
DELETE FROM `gameobject` WHERE `id` = '181622';
-- players Shadowfiend in Arcatraz
DELETE FROM `creature` WHERE `id` = '19668';
-- same for Eye of Kilrogg
DELETE FROM `creature` WHERE `id` = '4277';
-- the friendly npc Harrison Jones in Zul'Aman was shown as skinnable while alive
UPDATE `creature_template` SET `flags` = `flags`&~'256' WHERE `entry` = '24358';
-- some stats to his 2 versions
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `baseattacktime` = '2000', `minhealth` = '26000', `maxhealth` = '26000', `armor` = '6800', `mindmg` = '250', `maxdmg` = '320', `attackpower` = '840', `spell1` = '34189' WHERE `entry` IN ('24358', '24375');
-- Suspended Terrorguard stats, and not attackable
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '5600', `maxhealth` = '5600', `minmana` = '3155', `maxmana` = '3155', `faction_A` = '7', `faction_H` = '7', `flags` = `flags`|'2' WHERE `entry` = '24933';
-- Double spawn of Crusty Bob
DELETE FROM `creature` WHERE `guid` = '74807';
-- Crusty Bob should spawn on children's week
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES
('74808', '10');
-- Lord Kragaru should be summoned, GO is type button, maybe possible to fix from db like time ago with button_scripts (now event_scripts)
DELETE FROM `creature` WHERE `id` = '12369';
-- Eye of the Storm Emissary (alliance) misc
UPDATE `creature_template` SET `armor` = '5450', `npcflag` = `npcflag`|'1048577', `rangeattacktime` = '0', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0' WHERE `entry` = '22013';
-- Eye of the Storm Envoy (horde) misc (need more spawns and to be spawned in game event, Call to Arms: Eye of the Storm)
UPDATE `creature_template` SET `armor` = '5450', `faction_A` = '83', `faction_H` = '83', `npcflag` = `npcflag`|'1048577', `rangeattacktime` = '0', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `MovementType` = '0' WHERE `entry` = '22015';

REPLACE INTO `battlemaster_entry` (`entry`, `bg_template`) VALUES
('22013', '7'), -- Eye of the Storm Emissary (alliance) should be EotS battlemaster
('22015', '7'), -- Eye of the Storm Envoy (horde) should be EotS battlemaster
('14990', '3'), -- Defilers Emissary (horde) should be Arathi Basin battlemaster
('14991', '3'), -- League of Arathor Emissary (alliance) should be Arathi Basin battlemaster
('15102', '2'), -- Silverwing Emissary (alliance) should be Warsong Gulch battlemaster
('15105', '2'), -- Warsong Emissary (horde) should be Warsong Gulch battlemaster
('15106', '1'), -- Frostwolf Emissary (horde) should be Alterac Valley battlemaster
('15103', '1'); -- Stormpike Emissary (alliance) should be Alterac Valley battlemaster
-- Courser Antlers fix
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-8' WHERE `item` = '20017';
-- Wrangled Aether Ray stats
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '71', `minhealth` = '5589', `maxhealth` = '5744', minmana = '3155', maxmana = '3231', `armor` = '5714', `mindmg` = '91', `maxdmg` = '194', `attackpower` = '999', `baseattacktime` = '2000' WHERE `entry` = '23343';
-- Converted Sentry should have same stats of Erratic Sentry
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '5500', `maxhealth` = '5500', `armor` = '5000', `mindmg` = '87', `maxdmg` = '337', `attackpower` = '1488', `minmana` = '3155', `maxmana` = '3155', `baseattacktime` = '2000' WHERE `entry` = '24981';
-- from WDB Ysuria, Portal Trainer (Theramore)
DELETE FROM `creature_template` WHERE (`entry`=27703);
INSERT INTO `creature_template` (`entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `ScriptName`) VALUES (27703, 24756, 0, 24756, 0, 'Ysuria', 'Portal Trainer', '', 50, 50, 2280, 2280, 4393, 4393, 1600, 84, 84, 17, 1.25, 1, 0, 35, 69, 0, 394, 2000, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 0, 0, '');
-- from WDB Lorrin Foxfire, Portal Trainer (Stonard)
DELETE FROM `creature_template` WHERE (`entry`=27705);
INSERT INTO `creature_template` (`entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `ScriptName`) VALUES (27705, 24754, 0, 24754, 0, 'Lorrin Foxfire', 'Portal Trainer', '', 41, 41, 1100, 1100, 1332, 1332, 1500, 83, 83, 17, 1.35, 1, 0, 25, 59, 0, 294, 2000, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 0, 0, '');
DELETE FROM `spell_teleport` WHERE `id` IN ('49362', '49359', '49363', '49358');
INSERT INTO `spell_teleport` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
('49362', '1', '-3730.715088', '-4422.212402', '30.483583', '0.810732'), -- Portal Effect: Theramore
('49359', '1', '-3730.715088', '-4422.212402', '30.483583', '0.810732'), -- Teleport: Theramore
('49363', '0', '-10441.973633', '-3291.458740', '20.179045', '1.302921'), -- Portal Effect: Stonard
('49358', '0', '-10441.973633', '-3291.458740', '20.179045', '1.302921'); -- Teleport: Stonard
-- Nuramoc loot grouped
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '25', `groupid`= '1' WHERE (`entry` = '20932') AND `item` IN ('31209', '31210', '31211', '31212');
-- Big Wagon Full of Explosives Trigger invisibility
UPDATE `creature_template_addon` SET `auras` = '23196 0' WHERE entry = '21261';
-- Exorcist Sullivan misc
UPDATE `creature_template` SET `minhealth` = '4600', `maxhealth` = '4600', `armor` = '5300', `faction_A` = '84', `faction_H` = '84', `mindmg` = '120', `maxdmg` = '300', `attackpower` = '1300', `baseattacktime` = '2000' WHERE `entry` = '24885';
-- The Master Planner's Blueprints should be guaranteed drop
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-100' WHERE `item` = '25751';
-- Xeleth is summoned by a working sendevent
DELETE FROM `creature` WHERE `id` = '21894';
-- Xeleth was friendly
UPDATE `creature_template` SET `faction_A` = '90', `faction_H` = '90' WHERE `entry` = '21894';

-- seph end

-- NF start

-- Bloated Smallfish
DELETE FROM `item_loot_template` WHERE `entry`=6643;
REPLACE INTO `item_loot_template` VALUES 
(6643, 774, 0, 1, 1, 1, 0, 0, 0),
(6643, 818, 20, 1, 1, 1, 0, 0, 0);
-- Bloated Mud Snapper
DELETE FROM `item_loot_template` WHERE `entry`=6645;
REPLACE INTO `item_loot_template` VALUES 
(6645, 774, 10, 1, 1, 1, 0, 0, 0),
(6645, 818, 45, 1, 1, 1, 0, 0, 0),
(6645, 1206, 15, 1, 1, 1, 0, 0, 0),
(6645, 1210, 30, 1, 1, 1, 0, 0, 0);
-- Bloated Catfish
DELETE FROM `item_loot_template` WHERE `entry`=6647;
REPLACE INTO `item_loot_template` VALUES 
(6647, 1206, 47, 1, 1, 1, 0, 0, 0),
(6647, 1705, 30, 1, 1, 1, 0, 0, 0),
(6647, 1529, 12, 1, 1, 1, 0, 0, 0),
(6647, 1210, 8, 1, 1, 1, 0, 0, 0),
(6647, 4998, 0, 1, 1, 1, 0, 0, 0),
(6647, 4999, 0, 1, 1, 1, 0, 0, 0),
(6647, 5000, 0, 1, 1, 1, 0, 0, 0),
(6647, 5001, 0, 1, 1, 1, 0, 0, 0),
(6647, 5002, 0, 1, 1, 1, 0, 0, 0),
(6647, 11965, 0, 1, 1, 1, 0, 0, 0),
(6647, 11967, 0, 1, 1, 1, 0, 0, 0),
(6647, 11968, 0, 1, 1, 1, 0, 0, 0),
(6647, 11969, 0, 1, 1, 1, 0, 0, 0),
(6647, 11981, 0, 1, 1, 1, 0, 0, 0),
(6647, 11982, 0, 1, 1, 1, 0, 0, 0),
(6647, 11983, 0, 1, 1, 1, 0, 0, 0),
(6647, 11984, 0, 1, 1, 1, 0, 0, 0),
(6647, 11993, 0, 1, 1, 1, 0, 0, 0),
(6647, 11994, 0, 1, 1, 1, 0, 0, 0),
(6647, 11995, 0, 1, 1, 1, 0, 0, 0),
(6647, 12006, 0, 1, 1, 1, 0, 0, 0),
(6647, 12007, 0, 1, 1, 1, 0, 0, 0),
(6647, 12008, 0, 1, 1, 1, 0, 0, 0),
(6647, 12047, 0, 1, 1, 1, 0, 0, 0),
(6647, 12052, 0, 1, 1, 1, 0, 0, 0),
(6647, 12053, 0, 1, 1, 1, 0, 0, 0),
(6647, 12054, 0, 1, 1, 1, 0, 0, 0);
-- Bloated Trout
DELETE FROM `item_loot_template` WHERE `entry`=8366;
REPLACE INTO `item_loot_template` VALUES 
(8366, 1529, 47, 1, 1, 1, 0, 0, 0),
(8366, 1705, 15, 1, 1, 1, 0, 0, 0),
(8366, 3864, 25, 1, 1, 1, 0, 0, 0),
(8366, 7909, 10, 1, 1, 1, 0, 0, 0),
(8366, 4614, 0, 1, 1, 1, 0, 0, 0),
(8366, 5003, 0, 1, 1, 1, 0, 0, 0),
(8366, 5007, 0, 1, 1, 1, 0, 0, 0),
(8366, 5009, 0, 1, 1, 1, 0, 0, 0),
(8366, 5011, 0, 1, 1, 1, 0, 0, 0),
(8366, 11970, 0, 1, 1, 1, 0, 0, 0),
(8366, 11971, 0, 1, 1, 1, 0, 0, 0),
(8366, 11972, 0, 1, 1, 1, 0, 0, 0),
(8366, 11985, 0, 1, 1, 1, 0, 0, 0),
(8366, 11986, 0, 1, 1, 1, 0, 0, 0),
(8366, 11996, 0, 1, 1, 1, 0, 0, 0),
(8366, 11997, 0, 1, 1, 1, 0, 0, 0),
(8366, 12009, 0, 1, 1, 1, 0, 0, 0),
(8366, 12010, 0, 1, 1, 1, 0, 0, 0),
(8366, 12019, 0, 1, 1, 1, 0, 0, 0),
(8366, 12020, 0, 1, 1, 1, 0, 0, 0),
(8366, 12028, 0, 1, 1, 1, 0, 0, 0),
(8366, 12029, 0, 1, 1, 1, 0, 0, 0),
(8366, 12030, 0, 1, 1, 1, 0, 0, 0),
(8366, 12039, 0, 1, 1, 1, 0, 0, 0),
(8366, 12040, 0, 1, 1, 1, 0, 0, 0);
-- Bloated Redgill
DELETE FROM `item_loot_template` WHERE `entry`=13881;
REPLACE INTO `item_loot_template` VALUES 
(13881, 3864, 20, 1, 1, 1, 0, 0, 0),
(13881, 7909, 40, 1, 1, 1, 0, 0, 0),
(13881, 7910, 30, 1, 1, 1, 0, 0, 0),
(13881, 12799, 7, 1, 1, 1, 0, 0, 0),
(13881, 7549, 0, 1, 1, 1, 0, 0, 0),
(13881, 7551, 0, 1, 1, 1, 0, 0, 0),
(13881, 7552, 0, 1, 1, 1, 0, 0, 0),
(13881, 7553, 0, 1, 1, 1, 0, 0, 0),
(13881, 11973, 0, 1, 1, 1, 0, 0, 0),
(13881, 11974, 0, 1, 1, 1, 0, 0, 0),
(13881, 11975, 0, 1, 1, 1, 0, 0, 0),
(13881, 11987, 0, 1, 1, 1, 0, 0, 0),
(13881, 11988, 0, 1, 1, 1, 0, 0, 0),
(13881, 11998, 0, 1, 1, 1, 0, 0, 0),
(13881, 11999, 0, 1, 1, 1, 0, 0, 0),
(13881, 12001, 0, 1, 1, 1, 0, 0, 0),
(13881, 12011, 0, 1, 1, 1, 0, 0, 0),
(13881, 12012, 0, 1, 1, 1, 0, 0, 0),
(13881, 12013, 0, 1, 1, 1, 0, 0, 0),
(13881, 12022, 0, 1, 1, 1, 0, 0, 0),
(13881, 12023, 0, 1, 1, 1, 0, 0, 0),
(13881, 12024, 0, 1, 1, 1, 0, 0, 0),
(13881, 12031, 0, 1, 1, 1, 0, 0, 0),
(13881, 12032, 0, 1, 1, 1, 0, 0, 0),
(13881, 12042, 0, 1, 1, 1, 0, 0, 0),
(13881, 12043, 0, 1, 1, 1, 0, 0, 0);
-- Bloated Salmon
DELETE FROM `item_loot_template` WHERE `entry`=13891;
REPLACE INTO `item_loot_template` VALUES 
(13891, 12361, 19, 1, 1, 1, 0, 0, 0),
(13891, 12800, 19, 1, 1, 1, 0, 0, 0),
(13891, 12799, 19, 1, 1, 1, 0, 0, 0),
(13891, 12364, 19, 1, 1, 1, 0, 0, 0),
(13891, 7910, 19, 1, 1, 1, 0, 0, 0),
(13891, 11976, 0, 1, 1, 1, 0, 0, 0),
(13891, 11977, 0, 1, 1, 1, 0, 0, 0),
(13891, 11978, 0, 1, 1, 1, 0, 0, 0),
(13891, 11989, 0, 1, 1, 1, 0, 0, 0),
(13891, 11990, 0, 1, 1, 1, 0, 0, 0),
(13891, 11991, 0, 1, 1, 1, 0, 0, 0),
(13891, 12002, 0, 1, 1, 1, 0, 0, 0),
(13891, 12004, 0, 1, 1, 1, 0, 0, 0),
(13891, 12014, 0, 1, 1, 1, 0, 0, 0),
(13891, 12015, 0, 1, 1, 1, 0, 0, 0),
(13891, 12025, 0, 1, 1, 1, 0, 0, 0),
(13891, 12026, 0, 1, 1, 1, 0, 0, 0),
(13891, 12034, 0, 1, 1, 1, 0, 0, 0),
(13891, 12035, 0, 1, 1, 1, 0, 0, 0),
(13891, 12044, 0, 1, 1, 1, 0, 0, 0),
(13891, 12045, 0, 1, 1, 1, 0, 0, 0),
(13891, 12046, 0, 1, 1, 1, 0, 0, 0),
(13891, 12055, 0, 1, 1, 1, 0, 0, 0),
(13891, 12056, 0, 1, 1, 1, 0, 0, 0),
(13891, 12057, 0, 1, 1, 1, 0, 0, 0);
-- Bloated Barbed Gill Trout
DELETE FROM `item_loot_template` WHERE `entry`=35313;
REPLACE INTO `item_loot_template` VALUES 
(35313, 35314, 100, 0, 1, 1, 0, 0, 0),
(35313, 34866, -100, 0, 1, 2, 0, 0, 0);
-- Bloated Giant Sunfish
DELETE FROM `item_loot_template` WHERE `entry`=35286;
REPLACE INTO `item_loot_template` VALUES 
(35286, 37588, 26, 1, 2, 5, 0, 0, 0),
(35286, 22578, 15, 1, 1, 1, 0, 0, 0),
(35286, 13757, 15, 1, 1, 1, 0, 0, 0),
(35286, 35287, 15, 1, 1, 1, 0, 0, 0),
(35286, 5569, 26, 1, 1, 1, 0, 0, 0),
(35286, 11980, 0, 1, 1, 1, 0, 0, 0),
(35286, 11979, 0, 1, 1, 1, 0, 0, 0),
(35286, 11992, 0, 1, 1, 1, 0, 0, 0),
(35286, 12005, 0, 1, 1, 1, 0, 0, 0),
(35286, 12016, 0, 1, 1, 1, 0, 0, 0),
(35286, 12017, 0, 1, 1, 1, 0, 0, 0),
(35286, 12027, 0, 1, 1, 1, 0, 0, 0),
(35286, 12036, 0, 1, 1, 1, 0, 0, 0),
(35286, 12048, 0, 1, 1, 1, 0, 0, 0),
(35286, 12058, 0, 1, 1, 1, 0, 0, 0);

-- Nether Residue (ore,herbs)
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-25 WHERE `item`=35229;
REPLACE INTO `gameobject_loot_template` VALUES (18361, 35229, -25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `gameobject_loot_template` VALUES (18363, 35229, -25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `gameobject_loot_template` VALUES (18111, 35229, -25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `gameobject_loot_template` VALUES (18112, 35229, -25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `gameobject_loot_template` VALUES (18114, 35229, -25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `gameobject_loot_template` VALUES (18115, 35229, -25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `gameobject_loot_template` VALUES (18116, 35229, -25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `gameobject_loot_template` VALUES (18117, 35229, -25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `gameobject_loot_template` VALUES (18118, 35229, -25, 0, 1, 1, 0, 0, 0);
REPLACE INTO `gameobject_loot_template` VALUES (18119, 35229, -25, 0, 1, 1, 0, 0, 0);

-- Bag of Fishing Treasures
UPDATE `item_template` SET `minMoneyLoot`=60000, `maxMoneyLoot`=80000 WHERE `entry` IN (34863,35348);
DELETE FROM `item_loot_template` WHERE `entry`=35348;
REPLACE INTO `item_loot_template` VALUES 
(35348, 34863, 100, 1, -34863, 0, 0, 0, 0),
(35348, 35350, 1.5, 2, 1, 1, 0, 0, 0),
(35348, 33816, 1.5, 2, 1, 1, 0, 0, 0),
(35348, 35349, 1.5, 2, 1, 1, 0, 0, 0),
(35348, 33818, 1.5, 2, 1, 1, 0, 0, 0);

DELETE FROM `item_loot_template` WHERE `entry`=34863;
REPLACE INTO `item_loot_template` VALUES 
(34863, 34861, 75, 1, 3, 6, 0, 0, 0),
(34863, 8827, 25, 1, 3, 6, 0, 0, 0),
(34863, 34859, 0, 2, 1, 1, 0, 0, 0),
(34863, 34860, 0, 2, 1, 1, 0, 0, 0),
(34863, 34843, 0, 2, 1, 1, 0, 0, 0),
(34863, 34841, 0, 2, 2, 4, 0, 0, 0),
(34863, 34840, 0, 2, 1, 1, 0, 0, 0),
(34863, 24478, 0, 2, 2, 3, 0, 0, 0),
(34863, 34839, 0, 2, 1, 1, 0, 0, 0),
(34863, 22578, 0, 2, 2, 4, 0, 0, 0),
(34863, 34834, 4, 2, 1, 1, 0, 0, 0),
(34863, 24479, 3, 2, 1, 1, 0, 0, 0),
(34863, 34836, 2, 2, 1, 1, 0, 0, 0),
(34863, 34826, 1.5, 2, 1, 1, 0, 0, 0),
(34863, 34827, 1.5, 2, 1, 1, 0, 0, 0),
(34863, 34828, 1.5, 2, 1, 1, 0, 0, 0),
(34863, 34829, 1.5, 2, 1, 1, 0, 0, 0),
(34863, 34824, 1.5, 2, 1, 1, 0, 0, 0),
(34863, 34822, 1.5, 2, 1, 1, 0, 0, 0),
(34863, 34825, 1.5, 2, 1, 1, 0, 0, 0),
(34863, 34823, 1.5, 2, 1, 1, 0, 0, 0),
(34863, 34838, 1.5, 2, 1, 1, 0, 0, 0),
(34863, 33820, 1, 2, 1, 1, 0, 0, 0),
(34863, 34831, 1, 2, 1, 1, 0, 0, 0),
(34863, 34109, 1, 2, 1, 1, 0, 0, 0),
(34863, 34837, 0.001, 2, 1, 1, 0, 0, 0);

-- 
-- fixes
-- 

-- Demonic Blood
UPDATE `creature_template` SET `lootid`=24919 WHERE `entry`=24919;
REPLACE INTO `creature_loot_template` VALUES (24919, 34259, -100, 0, 1, 1, 9, 11515, 0);
-- Razorthorn Flayer Gland
UPDATE `creature_template` SET `lootid`=24920 WHERE `entry`=24920;
REPLACE INTO `creature_loot_template` VALUES (24920, 34255, -35, 0, 1, 1, 0, 0, 0);

-- fixing typo in 351
DELETE FROM `fishing_loot_template` WHERE `entry` IN (3614,3621);
REPLACE INTO `fishing_loot_template` VALUES 
(3614, 34868, -33, 0, 1, 1, 0, 0, 0),
(3614, 70015, 100, 1, -70015, 1, 0, 0, 0),
(3621, 34868, -33, 0, 1, 1, 0, 0, 0),
(3621, 70015, 100, 1, -70015, 1, 0, 0, 0);

DELETE FROM `fishing_loot_template` WHERE `entry` IN (854,855);

UPDATE `creature_loot_template` SET `lootcondition`=8, `condition_value1`=6383 WHERE `item`=16303;
UPDATE `creature_loot_template` SET `lootcondition`=8, `condition_value1`=6383 WHERE `item`=16304;
UPDATE `creature_loot_template` SET `lootcondition`=8, `condition_value1`=6383 WHERE `item`=16305;

UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=100, `lootcondition`=8, `condition_value1`=5087 WHERE `item`=12842;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=10 WHERE `item`=12771;

UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=5, `lootcondition`=8, `condition_value1`=5128 WHERE `item`=12842;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=100, `lootcondition`=8, `condition_value1`=5128 WHERE `item`=12842 AND `entry`=10738;

-- 
-- quest
-- 

UPDATE `quest_template` SET `RewMailTemplateId`=87 WHERE `entry`=1141;
UPDATE `quest_template` SET `RewMailTemplateId`=119 WHERE `entry`=7735;
UPDATE `quest_template` SET `RewMailTemplateId`=120 WHERE `entry`=7738;
UPDATE `quest_template` SET `RewMailTemplateId`=180 WHERE `entry`=9671;
REPLACE INTO `quest_mail_loot_template` VALUES 
(1141,6529,100,0,1,1,0,0,0),
(7735,15564,100,0,1,1,0,0,0),
(7738,15564,100,0,1,1,0,0,0),
(9671,24132,100,0,1,1,0,0,0);
UPDATE `quest_template` SET `RewMailTemplateId`=103, `RewMailDelaySecs`=86400 WHERE `entry`=3644;
UPDATE `quest_template` SET `RewMailTemplateId`=99, `RewMailDelaySecs`=86400 WHERE `entry`=3645;
UPDATE `quest_template` SET `RewMailTemplateId`=104, `RewMailDelaySecs`=86400 WHERE `entry`=3646;
UPDATE `quest_template` SET `RewMailTemplateId`=100, `RewMailDelaySecs`=86400 WHERE `entry`=3647;
REPLACE INTO `quest_mail_loot_template` VALUES 
(3644,11422,100,0,1,1,0,0,0),
(3645,11423,100,0,1,1,0,0,0),
(3646,11422,100,0,1,1,0,0,0),
(3647,11423,100,0,1,1,0,0,0);
UPDATE `quest_template` SET `RewMailTemplateId`=92, `RewMailDelaySecs`=21600 WHERE `entry`=8323;
UPDATE `quest_template` SET `RewMailTemplateId`=93, `RewMailDelaySecs`=21600 WHERE `entry`=8324;
REPLACE INTO `quest_mail_loot_template` VALUES 
(8323,20469,100,0,1,1,0,0,0),
(8324,20469,100,0,1,1,0,0,0);
UPDATE `quest_template` SET `RewMailTemplateId`=98, `RewMailDelaySecs`=86400 WHERE `entry`=5128;
REPLACE INTO `quest_mail_loot_template` VALUES 
(5128,13158,100,0,1,1,0,0,0);
UPDATE `quest_template` SET `RewMailTemplateId`=101, `RewMailDelaySecs`=86400 WHERE `entry`=5237;
UPDATE `quest_template` SET `RewMailTemplateId`=107, `RewMailDelaySecs`=86400 WHERE `entry`=5238;
UPDATE `quest_template` SET `RewMailTemplateId`=109, `RewMailDelaySecs`=86400 WHERE `entry`=8240;
REPLACE INTO `quest_mail_loot_template` VALUES 
(8240,19858,100,0,1,1,0,0,0);
UPDATE `quest_template` SET `RewMailTemplateId`=112, `RewMailDelaySecs`=21600 WHERE `entry`=6001;
UPDATE `quest_template` SET `RewMailTemplateId`=116, `RewMailDelaySecs`=21600 WHERE `entry`=6002;
UPDATE `quest_template` SET `RewMailTemplateId`=114, `RewMailDelaySecs`=21600 WHERE `entry`=6130;
UPDATE `quest_template` SET `RewMailTemplateId`=115, `RewMailDelaySecs`=21600 WHERE `entry`=6125;
UPDATE `quest_template` SET `RewMailTemplateId`=113, `RewMailDelaySecs`=86400 WHERE `entry`=8149;
UPDATE `quest_template` SET `RewMailTemplateId`=111, `RewMailDelaySecs`=86400 WHERE `entry`=8150;
REPLACE INTO `quest_mail_loot_template` VALUES 
(8149,19697,100,0,1,1,0,0,0),
(8150,19697,100,0,1,1,0,0,0);
UPDATE `quest_template` SET `RewMailTemplateId`=183 WHERE `entry`=10588;
REPLACE INTO `quest_mail_loot_template` VALUES 
(10588,31698,100,0,1,1,0,0,0);
-- lunar
UPDATE `quest_template` SET `RewMailTemplateId`=84, `RewMailDelaySecs`=21600 WHERE `entry`=8619;
UPDATE `quest_template` SET `RewMailTemplateId`=85, `RewMailDelaySecs`=21600 WHERE `entry`=8635;
UPDATE `quest_template` SET `RewMailTemplateId`=86, `RewMailDelaySecs`=21600 WHERE `entry`=8636;
UPDATE `quest_template` SET `RewMailTemplateId`=88, `RewMailDelaySecs`=21600 WHERE `entry`=8642;
UPDATE `quest_template` SET `RewMailTemplateId`=89, `RewMailDelaySecs`=21600 WHERE `entry`=8643;
UPDATE `quest_template` SET `RewMailTemplateId`=90, `RewMailDelaySecs`=21600 WHERE `entry`=8644;
UPDATE `quest_template` SET `RewMailTemplateId`=91, `RewMailDelaySecs`=21600 WHERE `entry`=8645;
UPDATE `quest_template` SET `RewMailTemplateId`=92, `RewMailDelaySecs`=21600 WHERE `entry`=8646;
UPDATE `quest_template` SET `RewMailTemplateId`=95, `RewMailDelaySecs`=21600 WHERE `entry`=8647;
UPDATE `quest_template` SET `RewMailTemplateId`=96, `RewMailDelaySecs`=21600 WHERE `entry`=8648;
UPDATE `quest_template` SET `RewMailTemplateId`=97, `RewMailDelaySecs`=21600 WHERE `entry`=8649;
UPDATE `quest_template` SET `RewMailTemplateId`=121, `RewMailDelaySecs`=21600 WHERE `entry`=8650;
UPDATE `quest_template` SET `RewMailTemplateId`=124, `RewMailDelaySecs`=21600 WHERE `entry`=8651;
UPDATE `quest_template` SET `RewMailTemplateId`=125, `RewMailDelaySecs`=21600 WHERE `entry`=8652;
UPDATE `quest_template` SET `RewMailTemplateId`=126, `RewMailDelaySecs`=21600 WHERE `entry`=8653;
UPDATE `quest_template` SET `RewMailTemplateId`=127, `RewMailDelaySecs`=21600 WHERE `entry`=8654;
UPDATE `quest_template` SET `RewMailTemplateId`=128, `RewMailDelaySecs`=21600 WHERE `entry`=8670;
UPDATE `quest_template` SET `RewMailTemplateId`=129, `RewMailDelaySecs`=21600 WHERE `entry`=8671;
UPDATE `quest_template` SET `RewMailTemplateId`=130, `RewMailDelaySecs`=21600 WHERE `entry`=8672;
UPDATE `quest_template` SET `RewMailTemplateId`=131, `RewMailDelaySecs`=21600 WHERE `entry`=8673;
UPDATE `quest_template` SET `RewMailTemplateId`=132, `RewMailDelaySecs`=21600 WHERE `entry`=8674;
UPDATE `quest_template` SET `RewMailTemplateId`=133, `RewMailDelaySecs`=21600 WHERE `entry`=8675;
UPDATE `quest_template` SET `RewMailTemplateId`=134, `RewMailDelaySecs`=21600 WHERE `entry`=8676;
UPDATE `quest_template` SET `RewMailTemplateId`=135, `RewMailDelaySecs`=21600 WHERE `entry`=8677;
UPDATE `quest_template` SET `RewMailTemplateId`=136, `RewMailDelaySecs`=21600 WHERE `entry`=8678;
UPDATE `quest_template` SET `RewMailTemplateId`=137, `RewMailDelaySecs`=21600 WHERE `entry`=8679;
UPDATE `quest_template` SET `RewMailTemplateId`=138, `RewMailDelaySecs`=21600 WHERE `entry`=8680;
UPDATE `quest_template` SET `RewMailTemplateId`=139, `RewMailDelaySecs`=21600 WHERE `entry`=8681;
UPDATE `quest_template` SET `RewMailTemplateId`=140, `RewMailDelaySecs`=21600 WHERE `entry`=8682;
UPDATE `quest_template` SET `RewMailTemplateId`=141, `RewMailDelaySecs`=21600 WHERE `entry`=8683;
UPDATE `quest_template` SET `RewMailTemplateId`=142, `RewMailDelaySecs`=21600 WHERE `entry`=8684;
UPDATE `quest_template` SET `RewMailTemplateId`=143, `RewMailDelaySecs`=21600 WHERE `entry`=8685;
UPDATE `quest_template` SET `RewMailTemplateId`=144, `RewMailDelaySecs`=21600 WHERE `entry`=8686;
UPDATE `quest_template` SET `RewMailTemplateId`=145, `RewMailDelaySecs`=21600 WHERE `entry`=8688;
UPDATE `quest_template` SET `RewMailTemplateId`=146, `RewMailDelaySecs`=21600 WHERE `entry`=8713;
UPDATE `quest_template` SET `RewMailTemplateId`=147, `RewMailDelaySecs`=21600 WHERE `entry`=8714;
UPDATE `quest_template` SET `RewMailTemplateId`=148, `RewMailDelaySecs`=21600 WHERE `entry`=8715;
UPDATE `quest_template` SET `RewMailTemplateId`=149, `RewMailDelaySecs`=21600 WHERE `entry`=8716;
UPDATE `quest_template` SET `RewMailTemplateId`=150, `RewMailDelaySecs`=21600 WHERE `entry`=8717;
UPDATE `quest_template` SET `RewMailTemplateId`=151, `RewMailDelaySecs`=21600 WHERE `entry`=8718;
UPDATE `quest_template` SET `RewMailTemplateId`=152, `RewMailDelaySecs`=21600 WHERE `entry`=8719;
UPDATE `quest_template` SET `RewMailTemplateId`=153, `RewMailDelaySecs`=21600 WHERE `entry`=8720;
UPDATE `quest_template` SET `RewMailTemplateId`=154, `RewMailDelaySecs`=21600 WHERE `entry`=8721;
UPDATE `quest_template` SET `RewMailTemplateId`=155, `RewMailDelaySecs`=21600 WHERE `entry`=8722;
UPDATE `quest_template` SET `RewMailTemplateId`=156, `RewMailDelaySecs`=21600 WHERE `entry`=8723;
UPDATE `quest_template` SET `RewMailTemplateId`=157, `RewMailDelaySecs`=21600 WHERE `entry`=8724;
UPDATE `quest_template` SET `RewMailTemplateId`=158, `RewMailDelaySecs`=21600 WHERE `entry`=8725;
UPDATE `quest_template` SET `RewMailTemplateId`=159, `RewMailDelaySecs`=21600 WHERE `entry`=8726;
UPDATE `quest_template` SET `RewMailTemplateId`=160, `RewMailDelaySecs`=21600 WHERE `entry`=8727;
UPDATE `quest_template` SET `RewMailTemplateId`=168, `RewMailDelaySecs`=21600 WHERE `entry`=8866;
REPLACE INTO `quest_mail_loot_template` VALUES 
(8619,21746,100,0,1,1,0,0,0),
(8635,21746,100,0,1,1,0,0,0),
(8636,21746,100,0,1,1,0,0,0),
(8642,21746,100,0,1,1,0,0,0),
(8643,21746,100,0,1,1,0,0,0),
(8644,21746,100,0,1,1,0,0,0),
(8645,21746,100,0,1,1,0,0,0),
(8646,21746,100,0,1,1,0,0,0),
(8647,21746,100,0,1,1,0,0,0),
(8648,21746,100,0,1,1,0,0,0),
(8649,21746,100,0,1,1,0,0,0),
(8650,21746,100,0,1,1,0,0,0),
(8651,21746,100,0,1,1,0,0,0),
(8652,21746,100,0,1,1,0,0,0),
(8653,21746,100,0,1,1,0,0,0),
(8654,21746,100,0,1,1,0,0,0),
(8670,21746,100,0,1,1,0,0,0),
(8671,21746,100,0,1,1,0,0,0),
(8672,21746,100,0,1,1,0,0,0),
(8673,21746,100,0,1,1,0,0,0),
(8674,21746,100,0,1,1,0,0,0),
(8675,21746,100,0,1,1,0,0,0),
(8676,21746,100,0,1,1,0,0,0),
(8677,21746,100,0,1,1,0,0,0),
(8678,21746,100,0,1,1,0,0,0),
(8679,21746,100,0,1,1,0,0,0),
(8680,21746,100,0,1,1,0,0,0),
(8681,21746,100,0,1,1,0,0,0),
(8682,21746,100,0,1,1,0,0,0),
(8683,21746,100,0,1,1,0,0,0),
(8684,21746,100,0,1,1,0,0,0),
(8685,21746,100,0,1,1,0,0,0),
(8686,21746,100,0,1,1,0,0,0),
(8688,21746,100,0,1,1,0,0,0),
(8713,21746,100,0,1,1,0,0,0),
(8714,21746,100,0,1,1,0,0,0),
(8715,21746,100,0,1,1,0,0,0),
(8716,21746,100,0,1,1,0,0,0),
(8717,21746,100,0,1,1,0,0,0),
(8718,21746,100,0,1,1,0,0,0),
(8719,21746,100,0,1,1,0,0,0),
(8720,21746,100,0,1,1,0,0,0),
(8721,21746,100,0,1,1,0,0,0),
(8722,21746,100,0,1,1,0,0,0),
(8723,21746,100,0,1,1,0,0,0),
(8724,21746,100,0,1,1,0,0,0),
(8725,21746,100,0,1,1,0,0,0),
(8726,21746,100,0,1,1,0,0,0),
(8727,21746,100,0,1,1,0,0,0),
(8866,21746,100,0,1,1,0,0,0);

-- Maintaining the Sunwell Portal
UPDATE `quest_template` SET `ReqSourceId1`=34248, `ReqSourceCount1`=1, `ReqSourceRef1`=1 WHERE `entry`=11514;
-- Beat Bartleby
UPDATE `quest_template` SET `ReqCreatureOrGOId1`=0, `ReqCreatureOrGOCount1`=0, `SpecialFlags`=`SpecialFlags`|2 WHERE `entry`=1640;
-- The Sanctum Wards / Arm the Wards!
UPDATE `quest_template` SET `ReqSourceId1`=34338, `ReqSourceCount1`=4, `ReqSourceRef1`=1, `ReqSpellCast1`=44969 WHERE `entry` IN (11496,11523);
-- Making Ready, Don't Stop Now....
UPDATE `quest_template` SET `ReqSourceId1`=34477, `ReqSourceCount1`=10, `ReqSourceRef1`=1 WHERE `entry` IN (11535,11536);
-- (Re)discovering Your Roots
UPDATE `quest_template` SET `ReqSourceId2`=34255, `ReqSourceCount2`=5, `ReqSourceRef2`=2 WHERE `entry` IN (11520,11521);
-- Shrimpin' Ain't Easy
UPDATE `quest_template` SET `ReqSourceId1`=35313, `ReqSourceCount1`=10, `ReqSourceRef1`=1 WHERE `entry`=11668;
-- Taming the Beast
UPDATE `quest_template` SET `ReqCreatureOrGOId1`=0, `ReqCreatureOrGOCount1`=0, `ReqSpellCast1`=0, `ObjectiveText1`='', `SpecialFlags`=`SpecialFlags`|2 WHERE `entry` IN (6061,6062,6063,6064,6082,6083,6084,6085,6087,6088,6101,6102,9484,9485,9486,9591,9592,9593);
-- Encrypted Scroll
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=3096;
-- Standards and Practices
UPDATE `quest_template` SET `ReqSpellCast1`=32205, `ReqSpellCast2`=32205, `ReqSpellCast3`=32205 WHERE `entry`=9910;
-- Keeping the Enemy at Bay / Intercept the Reinforcements
UPDATE `quest_template` SET `ReqSpellCast1`=45115, `ReqSpellCast2`=45115, `ReqSpellCast3`=45115 WHERE `entry` IN (11542,11543);
-- Know Your Ley Lines
UPDATE `quest_template` SET `ReqSpellCast1`=45191, `ReqSpellCast2`=45191, `ReqSpellCast3`=45191 WHERE `entry`=11547;
-- Returning the Favor
UPDATE `quest_template` SET `ReqSpellCast1`=32314 WHERE `entry`=9931;
-- Measuring Warp Energies
UPDATE `quest_template` SET `ReqSpellCast1`=35113, `ReqSpellCast2`=35113, `ReqSpellCast3`=35113, `ReqSpellCast4`=35113 WHERE `entry`=10313;
-- Forge Camp: Annihilated
UPDATE `quest_template` SET `ReqSpellCast1`=33531, `ReqSpellCast2`=33532, `ReqSourceId1`=25770, `ReqSourceCount1`=1, `ReqSourceRef1`=1,`ReqSourceId2`=25771, `ReqSourceCount2`=1, `ReqSourceRef2`=2 WHERE `entry`=10011;
-- Scarlet Diversions
UPDATE `quest_template` SET `ReqSpellCast1`=16989, `ReqSourceId1`=12814, `ReqSourceCount1`=1, `ReqSourceRef1`=1 WHERE `entry`=5096;
-- The Blackwood Corrupted
UPDATE `quest_template` SET `ReqSourceId1`=12341, `ReqSourceCount1`=1, `ReqSourceRef1`=1 WHERE `entry`=4763;
UPDATE `quest_template` SET `ReqSourceId2`=12342, `ReqSourceCount2`=1, `ReqSourceRef2`=1 WHERE `entry`=4763;
UPDATE `quest_template` SET `ReqSourceId3`=12343, `ReqSourceCount3`=1, `ReqSourceRef3`=1 WHERE `entry`=4763;
-- misc
UPDATE `quest_template` SET `PrevQuestId`=11132 WHERE `entry`=11166;
UPDATE `quest_template` SET `PrevQuestId`=11166 WHERE `entry`=11171;
UPDATE `quest_template` SET `MinLevel`=10 WHERE `entry` IN (7937,7938,7944,7945);
UPDATE `quest_template` SET `RequiredRaces`=16 WHERE `entry`=5651;
UPDATE `quest_template` SET `RequiredRaces`=16, `MinLevel`=4 WHERE `entry`=5650;
UPDATE `quest_template` SET `RequiredRaces`=8 WHERE `entry`=5622;
UPDATE `quest_template` SET `RequiredRaces`=8, `MinLevel`=4 WHERE `entry`=5621;
UPDATE `quest_template` SET `RequiredRaces`=128 WHERE `entry`=5649;
UPDATE `quest_template` SET `RequiredRaces`=128, `MinLevel`=4 WHERE `entry`=5648;
UPDATE `quest_template` SET `RequestItemsText`='' WHERE `entry`=5623;
UPDATE `quest_template` SET `MinLevel`=4 WHERE `entry`=5624;
UPDATE `quest_template` SET `MinLevel`=4 WHERE `entry`=5625;
UPDATE `quest_template` SET `ExclusiveGroup`=0 WHERE `entry` IN (5622,5626,5649);
UPDATE `quest_template` SET `RequiredRaces`=512 WHERE `entry`=5649;
UPDATE `quest_template` SET `PrevQuestId`=5087 WHERE `entry`=5123;
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=2460;
UPDATE `quest_template` SET `RequiredRaces`=690, `MinLevel`=1 WHERE `entry`=8;
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry`=376;
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry`=590;
UPDATE `quest_template` SET `PrevQuestId`=376 WHERE `entry`=6395;
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry`=380;
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry`=381;
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry`=382;
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry`=383;
UPDATE `quest_template` SET `RequiredRaces`=16 WHERE `entry`=3901;
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry`=3902;
UPDATE `quest_template` SET `PrevQuestId`=4681 WHERE `entry` IN (4722,4723,4725,4727,4728,4730,4731,4732,4733);
UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry` IN (4722,4723,4725,4727,4728,4730,4731,4732,4733);
-- desolace
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=1368;
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=1369;
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=1370;
UPDATE `quest_template` SET `NextQuestId`=1369 WHERE `entry` IN (1367,1386);
UPDATE `quest_template` SET `NextQuestId`=1370 WHERE `entry` IN (1368,1384);
UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry`=1386;
UPDATE `quest_template` SET `RequiredRaces`=0 WHERE `entry`=5501;
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=261;
UPDATE `quest_template` SET `PrevQuestId`=-5386 WHERE `entry`=5421;
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=1365;
UPDATE `quest_template` SET `PrevQuestId`=1365 WHERE `entry`=1366;
UPDATE `quest_template` SET `MinLevel`=55 WHERE `entry` IN (6568,6569,6570);
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=1362;
UPDATE `quest_template` SET `MinLevel`=31, `PrevQuestId`=1482 WHERE `entry`=1484;
UPDATE `quest_template` SET `MinLevel`=31, `PrevQuestId`=1484 WHERE `entry`=1488;
UPDATE `quest_template` SET `MinLevel`=30 WHERE `entry` IN (1454,1455);
-- barrens
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=870;
UPDATE `quest_template` SET `PrevQuestId`=880 WHERE `entry`=1489;
UPDATE `quest_template` SET `MinLevel`=10 WHERE `entry` IN (1489,1490,914);
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|1 WHERE `entry`=822;
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry`=860;
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=844;
UPDATE `quest_template` SET `PrevQuestId`=861 WHERE `entry`=860;
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry`=861;
UPDATE `quest_template` SET `MinLevel`=10 WHERE `entry` IN (3261,874);
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=871;
UPDATE `quest_template` SET `RequiredRaces`=32 WHERE `entry`=854;
UPDATE `quest_template` SET `RequiredRaces`=0 WHERE `entry`=858;
UPDATE `quest_template` SET `RequiredRaces`=0 WHERE `entry`=863;
UPDATE `quest_template` SET `RequiredMaxRepFaction`=470 WHERE `entry`=9267;
UPDATE `quest_template` SET `MinLevel`=10 WHERE `entry`=9267;
UPDATE `quest_template` SET `MinLevel`=10 WHERE `entry` IN (900,901,902);
UPDATE `quest_template` SET `ExclusiveGroup`=235 WHERE `entry`=6382;
UPDATE `quest_template` SET `MinLevel`=10 WHERE `entry`=897;
UPDATE `quest_template` SET `MinLevel`=9 WHERE `entry`=895;
UPDATE `quest_template` SET `MinLevel`=16 WHERE `entry`=1095;
-- durotar
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry` IN (2161,818,823,806,828,827,829,809,924,926,815,832,791,4641,837,812,813,784,825,816,808,817,834,835,826);
UPDATE `quest_template` SET `MinLevel`=4 WHERE `entry` IN (828,827,829,809,924,926);
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=794;
UPDATE `quest_template` SET `NextQuestId`=794 WHERE `entry`=792;
UPDATE `quest_template` SET `MinLevel`=1 WHERE `entry` IN (805,794);
-- rep
UPDATE `quest_template` SET `RewRepFaction1`=469, `RewRepValue1`=500 WHERE `entry`=2040;
UPDATE `quest_template` SET `RewRepFaction2`=0, `RewRepValue2`=0 WHERE `entry`=2040;
UPDATE `quest_template` SET `RewRepFaction1`=469, `RewRepValue1`=500 WHERE `entry`=171;
UPDATE `quest_template` SET `RewRepFaction1`=469, `RewRepValue1`=75 WHERE `entry`=1687;
UPDATE `quest_template` SET `RewRepFaction1`=469, `RewRepValue1`=75 WHERE `entry`=1479;
UPDATE `quest_template` SET `RewRepFaction1`=469, `RewRepValue1`=75 WHERE `entry`=1558;
UPDATE `quest_template` SET `RewRepFaction1`=609, `RewRepValue1`=500 WHERE `entry`=9419;
UPDATE `quest_template` SET `RewRepFaction1`=469, `RewRepValue1`=125 WHERE `entry`=6403;
UPDATE `quest_template` SET `RewRepFaction1`=469, `RewRepValue1`=500 WHERE `entry`=5102;
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepValue1`=250 WHERE `entry`=7081;
UPDATE `quest_template` SET `RewRepFaction2`=730, `RewRepValue2`=250 WHERE `entry`=7081;
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepValue1`=250 WHERE `entry`=7122;
UPDATE `quest_template` SET `RewRepFaction2`=730, `RewRepValue2`=250 WHERE `entry`=7122;
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepValue1`=10 WHERE `entry`=7027;
UPDATE `quest_template` SET `RewRepFaction2`=730, `RewRepValue2`=10 WHERE `entry`=7027;
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepValue1`=500 WHERE `entry`=7141;
UPDATE `quest_template` SET `RewRepFaction2`=730, `RewRepValue2`=500 WHERE `entry`=7141;
UPDATE `quest_template` SET `RewRepFaction1`=47, `RewRepValue1`=250 WHERE `entry`=7102;
UPDATE `quest_template` SET `RewRepFaction2`=730, `RewRepValue2`=250 WHERE `entry`=7102;
UPDATE `quest_template` SET `RewRepFaction1`=509, `RewRepValue1`=1000 WHERE `entry`=8114;
UPDATE `quest_template` SET `RewRepFaction1`=369, `RewRepValue1`=500 WHERE `entry`=2865;
UPDATE `quest_template` SET `RewRepFaction1`=369, `RewRepValue1`=250 WHERE `entry`=3042;

-- 
-- relation
--

DELETE FROM `creature_questrelation` WHERE `quest` IN (11389,11371,11376,11383,11364,11385,11387);
REPLACE INTO `creature_questrelation` VALUES 
(24370,11389),
(24370,11371),
(24370,11376),
(24370,11383),
(24370,11364),
(24370,11385),
(24370,11387);
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (11389,11371,11376,11383,11364,11385,11387);
REPLACE INTO `creature_involvedrelation` VALUES 
(24370,11389),
(24370,11371),
(24370,11376),
(24370,11383),
(24370,11364),
(24370,11385),
(24370,11387);
DELETE FROM `gameobject_questrelation` WHERE `quest` IN (4722,4723,4725,4727,4728,4730,4731,4732,4733);
REPLACE INTO `gameobject_questrelation` VALUES 
(176190,4722),
(175226,4723),
(175227,4725),
(176198,4727),
(176191,4728),
(175230,4730),
(175233,4731),
(176197,4732),
(176196,4733);
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (8322,7937,7938,7944,7945);
DELETE FROM `gameobject_involvedrelation` WHERE `quest` IN (8322,7937,7938,7944,7945);
REPLACE INTO `gameobject_involvedrelation` VALUES 
(180570,8322),
(180025,7937),
(180024,7938),
(180056,7945);

-- 
-- creature
-- 

UPDATE `creature_template` SET `npcflag`=`npcflag` &~2 WHERE `entry`=2386;

-- summoned
DELETE FROM `creature` WHERE `id`=12369;
DELETE FROM `creature` WHERE `id`=10373;

-- 
-- gameobject
-- 

DELETE FROM `gameobject` WHERE `id`=177624;

-- (below for later use)
-- update spawn
-- UPDATE `gameobject` SET `id`=180669 WHERE `id`=300057;
-- UPDATE `gameobject` SET `id`=15885 WHERE `id`=300142;
-- UPDATE `gameobject` SET `id`=181260 WHERE `id`=300086;
-- UPDATE `gameobject` SET `id`=184750 WHERE `id`=300121;
-- UPDATE `gameobject` SET `id`=142698 WHERE `id`=300016;
-- UPDATE `gameobject` SET `id`=185223 WHERE `id`=300119;
-- get rid of temp
-- DELETE FROM `gameobject_template` WHERE `entry`=300057;
-- DELETE FROM `gameobject_template` WHERE `entry`=300037;
-- DELETE FROM `gameobject_template` WHERE `entry`=300142;
-- DELETE FROM `gameobject_template` WHERE `entry`=300086;
-- DELETE FROM `gameobject_template` WHERE `entry`=300121;
-- DELETE FROM `gameobject_template` WHERE `entry`=300016;
-- DELETE FROM `gameobject_template` WHERE `entry`=300119;

--
-- spell,script
-- 

UPDATE `quest_template` SET `CompleteScript`=806 WHERE `entry`=806;
DELETE FROM `quest_end_scripts` WHERE `id`=806;
INSERT INTO `quest_end_scripts` VALUES (806, 0, 0, 0, 0, 'We will suffer no demon\'s servant in our lands!', 0, 0, 0, 0);
-- Lord Kragaru
DELETE FROM `gameobject_scripts` WHERE `id`=20691;
REPLACE INTO `gameobject_scripts` VALUES (20691, 2, 10, 12369, 300000, '', 242.86, 2958.85, 4.56, 0.74);

REPLACE INTO `spell_teleport` VALUES (45038,530,878.77,2539.18,297.85,3.90);
REPLACE INTO `spell_script_target` VALUES (9257,1,3977);
REPLACE INTO `spell_script_target` VALUES (12151,1,5273);
REPLACE INTO `spell_script_target` VALUES (12623,1,8443);
REPLACE INTO `spell_script_target` VALUES (12774,1,8662);
REPLACE INTO `spell_script_target` VALUES (17698,1,11197);
REPLACE INTO `spell_script_target` VALUES (18666,1,10937);
REPLACE INTO `spell_script_target` VALUES (19032,1,12202);
REPLACE INTO `spell_script_target` VALUES (26235,1,15727);
REPLACE INTO `spell_script_target` VALUES (30875,1,17326);
REPLACE INTO `spell_script_target` VALUES (30876,1,17326);
REPLACE INTO `spell_script_target` VALUES (31411,1,17886);
REPLACE INTO `spell_script_target` VALUES (31412,1,17886);
REPLACE INTO `spell_script_target` VALUES (31413,1,17886);
REPLACE INTO `spell_script_target` VALUES (31414,1,17886);
REPLACE INTO `spell_script_target` VALUES (32163,1,18247);
REPLACE INTO `spell_script_target` VALUES (32164,1,18246);
REPLACE INTO `spell_script_target` VALUES (32205,1,18305),(32205,1,18306),(32205,1,18307);
REPLACE INTO `spell_script_target` VALUES (32314,1,18393);
REPLACE INTO `spell_script_target` VALUES (32560,1,17893);
REPLACE INTO `spell_script_target` VALUES (32622,1,17545);
REPLACE INTO `spell_script_target` VALUES (32623,1,18660);
REPLACE INTO `spell_script_target` VALUES (35063,1,20251);
REPLACE INTO `spell_script_target` VALUES (35097,1,20251);
REPLACE INTO `spell_script_target` VALUES (35289,1,22963);
REPLACE INTO `spell_script_target` VALUES (35683,1,20769);
REPLACE INTO `spell_script_target` VALUES (35515,1,20454);
REPLACE INTO `spell_script_target` VALUES (37689,1,21847);
REPLACE INTO `spell_script_target` VALUES (38360,1,20216);
REPLACE INTO `spell_script_target` VALUES (38449,1,21214);
REPLACE INTO `spell_script_target` VALUES (38451,1,21214);
REPLACE INTO `spell_script_target` VALUES (38452,1,21214);
REPLACE INTO `spell_script_target` VALUES (38455,1,21214);
REPLACE INTO `spell_script_target` VALUES (39043,1,22377);
REPLACE INTO `spell_script_target` VALUES (44981,1,24980),(44969,1,24980);
REPLACE INTO `spell_script_target` VALUES (45115,1,25090),(45115,1,25091),(45115,1,25092);
REPLACE INTO `spell_script_target` VALUES (45191,1,25154),(45191,1,25156),(45191,1,25157);
REPLACE INTO `spell_script_target` VALUES (46474,1,25315);
REPLACE INTO `spell_script_target` VALUES (46475,1,25507);
REPLACE INTO `spell_script_target` VALUES (46964,1,26391);
REPLACE INTO `spell_script_target` VALUES (35113,1,20333),(35113,1,20336),(35113,1,20337),(35113,1,20338);
REPLACE INTO `spell_script_target` VALUES (38782,1,22423);
REPLACE INTO `spell_script_target` VALUES (42222,1,23616);
REPLACE INTO `spell_script_target` VALUES (45030,1,25065);
REPLACE INTO `spell_script_target` VALUES (46281,1,25882);
REPLACE INTO `spell_script_target` VALUES (39219,1,22443);
REPLACE INTO `spell_script_target` VALUES (40309,1,23055);
REPLACE INTO `spell_script_target` VALUES (37573,1,21823);
REPLACE INTO `spell_script_target` VALUES (37573,1,21817);
REPLACE INTO `spell_script_target` VALUES (37573,1,21820);
REPLACE INTO `spell_script_target` VALUES (41295,1,23418);
-- goodies ;)
REPLACE INTO `spell_script_target` VALUES (7393,1,15275);
REPLACE INTO `spell_script_target` VALUES (7393,1,15276);
REPLACE INTO `spell_script_target` VALUES (10348,1,6225);
REPLACE INTO `spell_script_target` VALUES (10348,1,6226);
REPLACE INTO `spell_script_target` VALUES (10348,1,6227);
REPLACE INTO `spell_script_target` VALUES (16452,1,10601);
REPLACE INTO `spell_script_target` VALUES (16452,1,10602);
REPLACE INTO `spell_script_target` VALUES (21794,1,10981);
REPLACE INTO `spell_script_target` VALUES (21866,1,10990);
REPLACE INTO `spell_script_target` VALUES (23394,1,14601);
REPLACE INTO `spell_script_target` VALUES (27184,1,16044);
REPLACE INTO `spell_script_target` VALUES (27190,1,16045);
REPLACE INTO `spell_script_target` VALUES (27191,1,16046);
REPLACE INTO `spell_script_target` VALUES (27202,1,16048);
REPLACE INTO `spell_script_target` VALUES (27203,1,16044);
REPLACE INTO `spell_script_target` VALUES (27203,1,16045);
REPLACE INTO `spell_script_target` VALUES (27203,1,16046);
REPLACE INTO `spell_script_target` VALUES (27203,1,16047);
REPLACE INTO `spell_script_target` VALUES (27203,1,16048);
REPLACE INTO `spell_script_target` VALUES (29612,1,16468);
REPLACE INTO `spell_script_target` VALUES (34063,1,18688);
REPLACE INTO `spell_script_target` VALUES (34239,1,19599);
REPLACE INTO `spell_script_target` VALUES (39246,2,22105);
REPLACE INTO `spell_script_target` VALUES (34630,1,19849);
REPLACE INTO `spell_script_target` VALUES (40076,1,22884);
REPLACE INTO `spell_script_target` VALUES (40468,1,22252);
REPLACE INTO `spell_script_target` VALUES (44320,1,24722);

-- 
-- text
-- 

UPDATE `quest_template` SET `RequestItemsText`='Have you gathered those berries yet?' WHERE `entry`=11546;
UPDATE `quest_template` SET `OfferRewardText`='Excellent, $n.$b$bI hope this will aid you in your efforts here.' WHERE `entry`=11546;
UPDATE `quest_template` SET `RequestItemsText`='Really, $n, I\'m far too busy for idle chatter.$b$bLet me know when you\'ve gathered those roots.' WHERE `entry`=11521;
UPDATE `quest_template` SET `OfferRewardText`='Excellent work, $n.$b$bThank you again for your help!' WHERE `entry`=11521;
UPDATE `quest_template` SET `OfferRewardText`='You have done well, $n.$b$bAlthough the vile familiars were merely pets of the darker powers within the Burning Blade, your success against them foretells greater deeds ahead.' WHERE `entry`=1499;
UPDATE `quest_template` SET `OfferRewardText`='Alright, $n. You want to earn your keep with the Horde? Well there\'s plenty to do here, so listen close and do what you\'re told.$b$b$$GI see that look in your eyes, do not think I will tolerate any insolence. Thrall himself has declared the Hordes females to be on equal footing with you men. Disrespect me in the slightest, and you will know true pain.:I\'m happy to have met you. Thrall will be glad to know that more females like you and I are taking the initiative to push forward in the Barrens.;' WHERE `entry`=842;

UPDATE `quest_template` SET `EndText`='Complete the Trial of the Lake.' WHERE `entry`=28;
UPDATE `quest_template` SET `EndText`='Complete the Trial of the Lake.' WHERE `entry`=29;
UPDATE `quest_template` SET `EndText`='Protect Daphne Stilwell' WHERE `entry`=1651;
UPDATE `quest_template` SET `EndText`='Step on the grate to begin the Affray' WHERE `entry`=1719;
UPDATE `quest_template` SET `EndText`='Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.' WHERE `entry`=5929;
UPDATE `quest_template` SET `EndText`='Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.' WHERE `entry`=5930;
UPDATE `quest_template` SET `EndText`='Frostwolf Muzzled and Returned' WHERE `entry`=7001;
UPDATE `quest_template` SET `EndText`='Ram Collared and Returned' WHERE `entry`=7027;
UPDATE `quest_template` SET `EndText`='Create the Scepter of Celebras' WHERE `entry`=7046;
UPDATE `quest_template` SET `EndText`='Defeat Drek\'thar.' WHERE `entry`=7141;
UPDATE `quest_template` SET `EndText`='Defeat Vanndar Stormpike.' WHERE `entry`=7142;
UPDATE `quest_template` SET `EndText`='Help Akama and Maiev enter the Black Temple.' WHERE `entry`=10985;
UPDATE `quest_template` SET `EndText`='Apexis Vibrations attained' WHERE `entry`=11058;
UPDATE `quest_template` SET `EndText`='Apexis Emanations attained' WHERE `entry`=11080;
UPDATE `quest_template` SET `EndText`='Ruse of the Ashtongue' WHERE `entry`=10946;
UPDATE `quest_template` SET `EndText`='Tame an Adult Plainstrider' WHERE `entry`=6061;
UPDATE `quest_template` SET `EndText`='Tame a Dire Mottled Boar' WHERE `entry`=6062;
UPDATE `quest_template` SET `EndText`='Tame a Webwood Lurker' WHERE `entry`=6063;
UPDATE `quest_template` SET `EndText`='Tame a Large Crag Boar' WHERE `entry`=6064;
UPDATE `quest_template` SET `EndText`='Tame an Armored Scorpid' WHERE `entry`=6082;
UPDATE `quest_template` SET `EndText`='Tame a Surf Crawler' WHERE `entry`=6083;
UPDATE `quest_template` SET `EndText`='Tame a Snow Leopard' WHERE `entry`=6084;
UPDATE `quest_template` SET `EndText`='Tame an Ice Claw Bear' WHERE `entry`=6085;
UPDATE `quest_template` SET `EndText`='Tame a Prairie Stalker' WHERE `entry`=6087;
UPDATE `quest_template` SET `EndText`='Tame a Swoop' WHERE `entry`=6088;
UPDATE `quest_template` SET `EndText`='Tame a Nightsaber Stalker' WHERE `entry`=6101;
UPDATE `quest_template` SET `EndText`='Tame a Strigid Screecher' WHERE `entry`=6102;
UPDATE `quest_template` SET `EndText`='Tame a Crazed Dragonhawk' WHERE `entry`=9484;
UPDATE `quest_template` SET `EndText`='Tame a Mistbat' WHERE `entry`=9485;
UPDATE `quest_template` SET `EndText`='Tame an Elder Springpaw' WHERE `entry`=9486;
UPDATE `quest_template` SET `EndText`='Tame a Barbed Crawler' WHERE `entry`=9591;
UPDATE `quest_template` SET `EndText`='Tame a Greater Timberstrider' WHERE `entry`=9592;
UPDATE `quest_template` SET `EndText`='Tame a Nightstalker' WHERE `entry`=9593;
UPDATE `quest_template` SET `ObjectiveText1`='Colonel Jules Saved' WHERE `entry`=10935;
UPDATE `quest_template` SET `ObjectiveText2`='Mana Bomb Activated' WHERE `entry` IN (10446,10447);
UPDATE `quest_template` SET `ObjectiveText2`='Put Dathric\'s Spirit to Rest' WHERE `entry`=10182;
UPDATE `quest_template` SET `ObjectiveText3`='Rescue Leokk' WHERE `entry`=10724;
UPDATE `quest_template` SET `ObjectiveText1`='' WHERE `entry` IN (28,219,29,870,976,1086,1090,1222,1270,1640,1651,1658,1719,2460,5929,5930,6523,6847,6848,7001,7027,7046,7141,7142,8488,9051,9528,9619,9759,9865,9868,9879,10045,10055,10182,10451,1390,11098,10989);
UPDATE `quest_template` SET `ObjectiveText2`='' WHERE `entry` IN (1390,9865,10045,10055,10852,11098);
UPDATE `quest_template` SET `ObjectiveText3`='' WHERE `entry` IN (1390,9164,10045,10055,10852,11098);
UPDATE `quest_template` SET `ObjectiveText4`='' WHERE `entry` IN (1390,10045,10055,10852,11098);
UPDATE `quest_template` SET `EndText`='' WHERE `entry` IN (280,1390,1955,8490,9283,9531,9670,9918,9955,9959,9976,10201,10351,10512,9294,9629,9667,10446,10447);

-- 
-- mangos 6038
-- 

UPDATE `creature_template` SET `PetSpellDataId`='5880' WHERE `entry`='30';
UPDATE `creature_template` SET `PetSpellDataId`='10495' WHERE `entry`='43';
UPDATE `creature_template` SET `PetSpellDataId`='9081' WHERE `entry`='113';
UPDATE `creature_template` SET `PetSpellDataId`='5943' WHERE `entry`='118';
UPDATE `creature_template` SET `PetSpellDataId`='9073' WHERE `entry`='119';
UPDATE `creature_template` SET `PetSpellDataId`='5884' WHERE `entry`='120';
UPDATE `creature_template` SET `PetSpellDataId`='8834' WHERE `entry`='154';
UPDATE `creature_template` SET `PetSpellDataId`='9085' WHERE `entry`='157';
UPDATE `creature_template` SET `PetSpellDataId`='10503' WHERE `entry`='217';
UPDATE `creature_template` SET `PetSpellDataId`='9077' WHERE `entry`='330';
UPDATE `creature_template` SET `PetSpellDataId`='9063' WHERE `entry`='345';
UPDATE `creature_template` SET `PetSpellDataId`='9076' WHERE `entry`='390';
UPDATE `creature_template` SET `PetSpellDataId`='5888' WHERE `entry`='442';
UPDATE `creature_template` SET `PetSpellDataId`='9088' WHERE `entry`='454';
UPDATE `creature_template` SET `PetSpellDataId`='5908' WHERE `entry`='471';
UPDATE `creature_template` SET `PetSpellDataId`='5891' WHERE `entry`='505';
UPDATE `creature_template` SET `PetSpellDataId`='5960' WHERE `entry`='521';
UPDATE `creature_template` SET `PetSpellDataId`='9078' WHERE `entry`='524';
UPDATE `creature_template` SET `PetSpellDataId`='10502' WHERE `entry`='539';
UPDATE `creature_template` SET `PetSpellDataId`='9086' WHERE `entry`='547';
UPDATE `creature_template` SET `PetSpellDataId`='5894' WHERE `entry`='569';
UPDATE `creature_template` SET `PetSpellDataId`='5911' WHERE `entry`='574';
UPDATE `creature_template` SET `PetSpellDataId`='5909' WHERE `entry`='616';
UPDATE `creature_template` SET `PetSpellDataId`='5949' WHERE `entry`='628';
UPDATE `creature_template` SET `PetSpellDataId`='5828' WHERE `entry`='681';
UPDATE `creature_template` SET `PetSpellDataId`='8264' WHERE `entry`='682';
UPDATE `creature_template` SET `PetSpellDataId`='5829' WHERE `entry`='683';
UPDATE `creature_template` SET `PetSpellDataId`='8880' WHERE `entry`='684';
UPDATE `creature_template` SET `PetSpellDataId`='9080' WHERE `entry`='708';
UPDATE `creature_template` SET `PetSpellDataId`='8279' WHERE `entry`='728';
UPDATE `creature_template` SET `PetSpellDataId`='8278' WHERE `entry`='729';
UPDATE `creature_template` SET `PetSpellDataId`='8887' WHERE `entry`='731';
UPDATE `creature_template` SET `PetSpellDataId`='5830' WHERE `entry`='736';
UPDATE `creature_template` SET `PetSpellDataId`='8265' WHERE `entry`='767';
UPDATE `creature_template` SET `PetSpellDataId`='8881' WHERE `entry`='768';
UPDATE `creature_template` SET `PetSpellDataId`='5903' WHERE `entry`='769';
UPDATE `creature_template` SET `PetSpellDataId`='5797' WHERE `entry`='822';
UPDATE `creature_template` SET `PetSpellDataId`='5946' WHERE `entry`='833';
UPDATE `creature_template` SET `PetSpellDataId`='5944' WHERE `entry`='834';
UPDATE `creature_template` SET `PetSpellDataId`='5845' WHERE `entry`='922';
UPDATE `creature_template` SET `PetSpellDataId`='10506' WHERE `entry`='930';
UPDATE `creature_template` SET `PetSpellDataId`='10507' WHERE `entry`='949';
UPDATE `creature_template` SET `PetSpellDataId`='8263' WHERE `entry`='976';
UPDATE `creature_template` SET `PetSpellDataId`='5854' WHERE `entry`='1087';
UPDATE `creature_template` SET `PetSpellDataId`='5846' WHERE `entry`='1088';
UPDATE `creature_template` SET `PetSpellDataId`='9059' WHERE `entry`='1108';
UPDATE `creature_template` SET `PetSpellDataId`='10505' WHERE `entry`='1111';
UPDATE `creature_template` SET `PetSpellDataId`='5910' WHERE `entry`='1112';
UPDATE `creature_template` SET `PetSpellDataId`='9057' WHERE `entry`='1114';
UPDATE `creature_template` SET `PetSpellDataId`='9068' WHERE `entry`='1125';
UPDATE `creature_template` SET `PetSpellDataId`='9072' WHERE `entry`='1126';
UPDATE `creature_template` SET `PetSpellDataId`='9070' WHERE `entry`='1127';
UPDATE `creature_template` SET `PetSpellDataId`='5795' WHERE `entry`='1129';
UPDATE `creature_template` SET `PetSpellDataId`='5812' WHERE `entry`='1130';
UPDATE `creature_template` SET `PetSpellDataId`='5940' WHERE `entry`='1131';
UPDATE `creature_template` SET `PetSpellDataId`='5959' WHERE `entry`='1132';
UPDATE `creature_template` SET `PetSpellDataId`='5941' WHERE `entry`='1133';
UPDATE `creature_template` SET `PetSpellDataId`='5937' WHERE `entry`='1138';
UPDATE `creature_template` SET `PetSpellDataId`='5890' WHERE `entry`='1185';
UPDATE `creature_template` SET `PetSpellDataId`='5801' WHERE `entry`='1189';
UPDATE `creature_template` SET `PetSpellDataId`='9075' WHERE `entry`='1190';
UPDATE `creature_template` SET `PetSpellDataId`='9087' WHERE `entry`='1191';
UPDATE `creature_template` SET `PetSpellDataId`='9084' WHERE `entry`='1192';
UPDATE `creature_template` SET `PetSpellDataId`='5885' WHERE `entry`='1195';
UPDATE `creature_template` SET `PetSpellDataId`='5796' WHERE `entry`='1196';
UPDATE `creature_template` SET `PetSpellDataId`='5816' WHERE `entry`='1199';
UPDATE `creature_template` SET `PetSpellDataId`='5840' WHERE `entry`='1216';
UPDATE `creature_template` SET `PetSpellDataId`='5815' WHERE `entry`='1225';
UPDATE `creature_template` SET `PetSpellDataId`='5950' WHERE `entry`='1258';
UPDATE `creature_template` SET `PetSpellDataId`='10524' WHERE `entry`='1504';
UPDATE `creature_template` SET `PetSpellDataId`='5879' WHERE `entry`='1505';
UPDATE `creature_template` SET `PetSpellDataId`='5935' WHERE `entry`='1509';
UPDATE `creature_template` SET `PetSpellDataId`='5786' WHERE `entry`='1553';
UPDATE `creature_template` SET `PetSpellDataId`='5886' WHERE `entry`='1555';
UPDATE `creature_template` SET `PetSpellDataId`='9055' WHERE `entry`='1557';
UPDATE `creature_template` SET `PetSpellDataId`='5881' WHERE `entry`='1688';
UPDATE `creature_template` SET `PetSpellDataId`='9079' WHERE `entry`='1689';
UPDATE `creature_template` SET `PetSpellDataId`='5847' WHERE `entry`='1693';
UPDATE `creature_template` SET `PetSpellDataId`='8267' WHERE `entry`='1713';
UPDATE `creature_template` SET `PetSpellDataId`='5945' WHERE `entry`='1765';
UPDATE `creature_template` SET `PetSpellDataId`='5799' WHERE `entry`='1778';
UPDATE `creature_template` SET `PetSpellDataId`='8311' WHERE `entry`='1809';
UPDATE `creature_template` SET `PetSpellDataId`='8312' WHERE `entry`='1811';
UPDATE `creature_template` SET `PetSpellDataId`='5810' WHERE `entry`='1816';
UPDATE `creature_template` SET `PetSpellDataId`='5956' WHERE `entry`='1817';
UPDATE `creature_template` SET `PetSpellDataId`='10514' WHERE `entry`='1822';
UPDATE `creature_template` SET `PetSpellDataId`='5906' WHERE `entry`='1824';
UPDATE `creature_template` SET `PetSpellDataId`='5938' WHERE `entry`='1922';
UPDATE `creature_template` SET `PetSpellDataId`='5947' WHERE `entry`='1923';
UPDATE `creature_template` SET `PetSpellDataId`='5814' WHERE `entry`='1961';
UPDATE `creature_template` SET `PetSpellDataId`='9083' WHERE `entry`='1984';
UPDATE `creature_template` SET `PetSpellDataId`='9082' WHERE `entry`='1985';
UPDATE `creature_template` SET `PetSpellDataId`='5913' WHERE `entry`='1994';
UPDATE `creature_template` SET `PetSpellDataId`='5859' WHERE `entry`='1995';
UPDATE `creature_template` SET `PetSpellDataId`='5860' WHERE `entry`='1997';
UPDATE `creature_template` SET `PetSpellDataId`='5882' WHERE `entry`='1999';
UPDATE `creature_template` SET `PetSpellDataId`='5883' WHERE `entry`='2000';
UPDATE `creature_template` SET `PetSpellDataId`='5887' WHERE `entry`='2001';
UPDATE `creature_template` SET `PetSpellDataId`='5817' WHERE `entry`='2042';
UPDATE `creature_template` SET `PetSpellDataId`='5821' WHERE `entry`='2070';
UPDATE `creature_template` SET `PetSpellDataId`='5849' WHERE `entry`='2089';
UPDATE `creature_template` SET `PetSpellDataId`='5798' WHERE `entry`='2163';
UPDATE `creature_template` SET `PetSpellDataId`='5837' WHERE `entry`='2232';
UPDATE `creature_template` SET `PetSpellDataId`='5823' WHERE `entry`='2237';
UPDATE `creature_template` SET `PetSpellDataId`='5916' WHERE `entry`='2321';
UPDATE `creature_template` SET `PetSpellDataId`='5919' WHERE `entry`='2323';
UPDATE `creature_template` SET `PetSpellDataId`='5896' WHERE `entry`='2348';
UPDATE `creature_template` SET `PetSpellDataId`='5895' WHERE `entry`='2349';
UPDATE `creature_template` SET `PetSpellDataId`='5893' WHERE `entry`='2350';
UPDATE `creature_template` SET `PetSpellDataId`='5804' WHERE `entry`='2351';
UPDATE `creature_template` SET `PetSpellDataId`='5824' WHERE `entry`='2384';
UPDATE `creature_template` SET `PetSpellDataId`='5826' WHERE `entry`='2385';
UPDATE `creature_template` SET `PetSpellDataId`='5525' WHERE `entry`='2406';
UPDATE `creature_template` SET `PetSpellDataId`='5924' WHERE `entry`='2408';
UPDATE `creature_template` SET `PetSpellDataId`='5856' WHERE `entry`='2476';
UPDATE `creature_template` SET `PetSpellDataId`='5928' WHERE `entry`='2505';
UPDATE `creature_template` SET `PetSpellDataId`='5833' WHERE `entry`='2522';
UPDATE `creature_template` SET `PetSpellDataId`='5898' WHERE `entry`='2563';
UPDATE `creature_template` SET `PetSpellDataId`='5900' WHERE `entry`='2565';
UPDATE `creature_template` SET `PetSpellDataId`='8303' WHERE `entry`='2578';
UPDATE `creature_template` SET `PetSpellDataId`='8304' WHERE `entry`='2579';
UPDATE `creature_template` SET `PetSpellDataId`='5958' WHERE `entry`='2681';
UPDATE `creature_template` SET `PetSpellDataId`='5904' WHERE `entry`='2686';
UPDATE `creature_template` SET `PetSpellDataId`='5952' WHERE `entry`='2727';
UPDATE `creature_template` SET `PetSpellDataId`='8293' WHERE `entry`='2728';
UPDATE `creature_template` SET `PetSpellDataId`='8294' WHERE `entry`='2729';
UPDATE `creature_template` SET `PetSpellDataId`='8295' WHERE `entry`='2730';
UPDATE `creature_template` SET `PetSpellDataId`='5831' WHERE `entry`='2731';
UPDATE `creature_template` SET `PetSpellDataId`='5832' WHERE `entry`='2732';
UPDATE `creature_template` SET `PetSpellDataId`='8266' WHERE `entry`='2734';
UPDATE `creature_template` SET `PetSpellDataId`='5961' WHERE `entry`='2753';
UPDATE `creature_template` SET `PetSpellDataId`='8275' WHERE `entry`='2850';
UPDATE `creature_template` SET `PetSpellDataId`='8847' WHERE `entry`='2924';
UPDATE `creature_template` SET `PetSpellDataId`='8864' WHERE `entry`='2925';
UPDATE `creature_template` SET `PetSpellDataId`='8296' WHERE `entry`='2926';
UPDATE `creature_template` SET `PetSpellDataId`='8314' WHERE `entry`='2931';
UPDATE `creature_template` SET `PetSpellDataId`='9066' WHERE `entry`='2954';
UPDATE `creature_template` SET `PetSpellDataId`='5915' WHERE `entry`='2957';
UPDATE `creature_template` SET `PetSpellDataId`='5936' WHERE `entry`='2958';
UPDATE `creature_template` SET `PetSpellDataId`='5939' WHERE `entry`='2959';
UPDATE `creature_template` SET `PetSpellDataId`='5942' WHERE `entry`='2960';
UPDATE `creature_template` SET `PetSpellDataId`='9065' WHERE `entry`='2966';
UPDATE `creature_template` SET `PetSpellDataId`='5819' WHERE `entry`='3035';
UPDATE `creature_template` SET `PetSpellDataId`='5921' WHERE `entry`='3068';
UPDATE `creature_template` SET `PetSpellDataId`='9074' WHERE `entry`='3098';
UPDATE `creature_template` SET `PetSpellDataId`='9069' WHERE `entry`='3099';
UPDATE `creature_template` SET `PetSpellDataId`='9071' WHERE `entry`='3100';
UPDATE `creature_template` SET `PetSpellDataId`='5835' WHERE `entry`='3106';
UPDATE `creature_template` SET `PetSpellDataId`='5836' WHERE `entry`='3108';
UPDATE `creature_template` SET `PetSpellDataId`='5800' WHERE `entry`='3110';
UPDATE `creature_template` SET `PetSpellDataId`='5818' WHERE `entry`='3121';
UPDATE `creature_template` SET `PetSpellDataId`='5864' WHERE `entry`='3124';
UPDATE `creature_template` SET `PetSpellDataId`='5865' WHERE `entry`='3127';
UPDATE `creature_template` SET `PetSpellDataId`='9067' WHERE `entry`='3225';
UPDATE `creature_template` SET `PetSpellDataId`='8848' WHERE `entry`='3226';
UPDATE `creature_template` SET `PetSpellDataId`='5822' WHERE `entry`='3241';
UPDATE `creature_template` SET `PetSpellDataId`='5918' WHERE `entry`='3245';
UPDATE `creature_template` SET `PetSpellDataId`='5917' WHERE `entry`='3246';
UPDATE `creature_template` SET `PetSpellDataId`='8903' WHERE `entry`='3247';
UPDATE `creature_template` SET `PetSpellDataId`='8904' WHERE `entry`='3249';
UPDATE `creature_template` SET `PetSpellDataId`='8849' WHERE `entry`='3250';
UPDATE `creature_template` SET `PetSpellDataId`='8850' WHERE `entry`='3252';
UPDATE `creature_template` SET `PetSpellDataId`='5875' WHERE `entry`='3281';
UPDATE `creature_template` SET `PetSpellDataId`='8902' WHERE `entry`='3424';
UPDATE `creature_template` SET `PetSpellDataId`='5839' WHERE `entry`='3460';
UPDATE `creature_template` SET `PetSpellDataId`='5923' WHERE `entry`='3461';
UPDATE `creature_template` SET `PetSpellDataId`='8908' WHERE `entry`='3472';
UPDATE `creature_template` SET `PetSpellDataId`='5857' WHERE `entry`='3581';
UPDATE `creature_template` SET `PetSpellDataId`='9477' WHERE `entry`='3619';
UPDATE `creature_template` SET `PetSpellDataId`='8898' WHERE `entry`='3630';
UPDATE `creature_template` SET `PetSpellDataId`='8900' WHERE `entry`='3631';
UPDATE `creature_template` SET `PetSpellDataId`='5934' WHERE `entry`='3653';
UPDATE `creature_template` SET `PetSpellDataId`='5803' WHERE `entry`='3809';
UPDATE `creature_template` SET `PetSpellDataId`='5805' WHERE `entry`='3810';
UPDATE `creature_template` SET `PetSpellDataId`='5841' WHERE `entry`='3812';
UPDATE `creature_template` SET `PetSpellDataId`='5897' WHERE `entry`='3821';
UPDATE `creature_template` SET `PetSpellDataId`='5948' WHERE `entry`='3823';
UPDATE `creature_template` SET `PetSpellDataId`='5951' WHERE `entry`='3825';
UPDATE `creature_template` SET `PetSpellDataId`='5889' WHERE `entry`='4005';
UPDATE `creature_template` SET `PetSpellDataId`='5892' WHERE `entry`='4006';
UPDATE `creature_template` SET `PetSpellDataId`='10504' WHERE `entry`='4040';
UPDATE `creature_template` SET `PetSpellDataId`='5825' WHERE `entry`='4067';
UPDATE `creature_template` SET `PetSpellDataId`='8905' WHERE `entry`='4117';
UPDATE `creature_template` SET `PetSpellDataId`='8907' WHERE `entry`='4118';
UPDATE `creature_template` SET `PetSpellDataId`='8906' WHERE `entry`='4119';
UPDATE `creature_template` SET `PetSpellDataId`='5827' WHERE `entry`='4126';
UPDATE `creature_template` SET `PetSpellDataId`='8853' WHERE `entry`='4139';
UPDATE `creature_template` SET `PetSpellDataId`='5867' WHERE `entry`='4140';
UPDATE `creature_template` SET `PetSpellDataId`='5926' WHERE `entry`='4143';
UPDATE `creature_template` SET `PetSpellDataId`='8836' WHERE `entry`='4158';
UPDATE `creature_template` SET `PetSpellDataId`='10498' WHERE `entry`='4263';
UPDATE `creature_template` SET `PetSpellDataId`='8287' WHERE `entry`='4304';
UPDATE `creature_template` SET `PetSpellDataId`='5853' WHERE `entry`='4341';
UPDATE `creature_template` SET `PetSpellDataId`='5851' WHERE `entry`='4343';
UPDATE `creature_template` SET `PetSpellDataId`='5852' WHERE `entry`='4344';
UPDATE `creature_template` SET `PetSpellDataId`='5855' WHERE `entry`='4345';
UPDATE `creature_template` SET `PetSpellDataId`='8317' WHERE `entry`='4346';
UPDATE `creature_template` SET `PetSpellDataId`='8318' WHERE `entry`='4347';
UPDATE `creature_template` SET `PetSpellDataId`='8319' WHERE `entry`='4348';
UPDATE `creature_template` SET `PetSpellDataId`='10508' WHERE `entry`='4376';
UPDATE `creature_template` SET `PetSpellDataId`='10510' WHERE `entry`='4377';
UPDATE `creature_template` SET `PetSpellDataId`='10509' WHERE `entry`='4378';
UPDATE `creature_template` SET `PetSpellDataId`='10511' WHERE `entry`='4379';
UPDATE `creature_template` SET `PetSpellDataId`='10512' WHERE `entry`='4380';
UPDATE `creature_template` SET `PetSpellDataId`='5925' WHERE `entry`='4396';
UPDATE `creature_template` SET `PetSpellDataId`='5927' WHERE `entry`='4400';
UPDATE `creature_template` SET `PetSpellDataId`='5901' WHERE `entry`='4411';
UPDATE `creature_template` SET `PetSpellDataId`='5902' WHERE `entry`='4412';
UPDATE `creature_template` SET `PetSpellDataId`='5899' WHERE `entry`='4413';
UPDATE `creature_template` SET `PetSpellDataId`='5794' WHERE `entry`='4425';
UPDATE `creature_template` SET `PetSpellDataId`='5957' WHERE `entry`='4482';
UPDATE `creature_template` SET `PetSpellDataId`='9089' WHERE `entry`='4511';
UPDATE `creature_template` SET `PetSpellDataId`='9091' WHERE `entry`='4512';
UPDATE `creature_template` SET `PetSpellDataId`='9090' WHERE `entry`='4514';
UPDATE `creature_template` SET `PetSpellDataId`='5790' WHERE `entry`='4538';
UPDATE `creature_template` SET `PetSpellDataId`='8300' WHERE `entry`='4539';
UPDATE `creature_template` SET `PetSpellDataId`='8282' WHERE `entry`='4662';
UPDATE `creature_template` SET `PetSpellDataId`='8280' WHERE `entry`='4688';
UPDATE `creature_template` SET `PetSpellDataId`='8281' WHERE `entry`='4691';
UPDATE `creature_template` SET `PetSpellDataId`='8305' WHERE `entry`='4693';
UPDATE `creature_template` SET `PetSpellDataId`='8837' WHERE `entry`='4694';
UPDATE `creature_template` SET `PetSpellDataId`='5866' WHERE `entry`='4696';
UPDATE `creature_template` SET `PetSpellDataId`='5868' WHERE `entry`='4697';
UPDATE `creature_template` SET `PetSpellDataId`='8852' WHERE `entry`='4699';
UPDATE `creature_template` SET `PetSpellDataId`='8292' WHERE `entry`='4724';
UPDATE `creature_template` SET `PetSpellDataId`='5922' WHERE `entry`='4725';
UPDATE `creature_template` SET `PetSpellDataId`='5842' WHERE `entry`='4821';
UPDATE `creature_template` SET `PetSpellDataId`='5843' WHERE `entry`='4822';
UPDATE `creature_template` SET `PetSpellDataId`='5844' WHERE `entry`='4823';
UPDATE `creature_template` SET `PetSpellDataId`='5929' WHERE `entry`='4824';
UPDATE `creature_template` SET `PetSpellDataId`='5930' WHERE `entry`='4825';
UPDATE `creature_template` SET `PetSpellDataId`='5858' WHERE `entry`='4841';
UPDATE `creature_template` SET `PetSpellDataId`='5791' WHERE `entry`='4861';
UPDATE `creature_template` SET `PetSpellDataId`='5792' WHERE `entry`='4862';
UPDATE `creature_template` SET `PetSpellDataId`='5932' WHERE `entry`='4887';
UPDATE `creature_template` SET `PetSpellDataId`='8299' WHERE `entry`='4950';
UPDATE `creature_template` SET `PetSpellDataId`='10543' WHERE `entry`='5048';
UPDATE `creature_template` SET `PetSpellDataId`='5848' WHERE `entry`='5053';
UPDATE `creature_template` SET `PetSpellDataId`='8899' WHERE `entry`='5056';
UPDATE `creature_template` SET `PetSpellDataId`='10544' WHERE `entry`='5224';
UPDATE `creature_template` SET `PetSpellDataId`='10544' WHERE `entry`='5225';
UPDATE `creature_template` SET `PetSpellDataId`='9054' WHERE `entry`='5262';
UPDATE `creature_template` SET `PetSpellDataId`='5806' WHERE `entry`='5268';
UPDATE `creature_template` SET `PetSpellDataId`='5807' WHERE `entry`='5274';
UPDATE `creature_template` SET `PetSpellDataId`='5953' WHERE `entry`='5286';
UPDATE `creature_template` SET `PetSpellDataId`='8865' WHERE `entry`='5287';
UPDATE `creature_template` SET `PetSpellDataId`='8909' WHERE `entry`='5291';
UPDATE `creature_template` SET `PetSpellDataId`='8320' WHERE `entry`='5307';
UPDATE `creature_template` SET `PetSpellDataId`='8321' WHERE `entry`='5308';
UPDATE `creature_template` SET `PetSpellDataId`='8322' WHERE `entry`='5349';
UPDATE `creature_template` SET `PetSpellDataId`='5813' WHERE `entry`='5352';
UPDATE `creature_template` SET `PetSpellDataId`='5963' WHERE `entry`='5356';
UPDATE `creature_template` SET `PetSpellDataId`='5869' WHERE `entry`='5422';
UPDATE `creature_template` SET `PetSpellDataId`='8857' WHERE `entry`='5423';
UPDATE `creature_template` SET `PetSpellDataId`='8856' WHERE `entry`='5424';
UPDATE `creature_template` SET `PetSpellDataId`='8283' WHERE `entry`='5425';
UPDATE `creature_template` SET `PetSpellDataId`='8284' WHERE `entry`='5426';
UPDATE `creature_template` SET `PetSpellDataId`='8285' WHERE `entry`='5427';
UPDATE `creature_template` SET `PetSpellDataId`='8307' WHERE `entry`='5428';
UPDATE `creature_template` SET `PetSpellDataId`='8308' WHERE `entry`='5429';
UPDATE `creature_template` SET `PetSpellDataId`='8309' WHERE `entry`='5430';
UPDATE `creature_template` SET `PetSpellDataId`='5931' WHERE `entry`='5432';
UPDATE `creature_template` SET `PetSpellDataId`='8323' WHERE `entry`='5708';
UPDATE `creature_template` SET `PetSpellDataId`='10543' WHERE `entry`='5755';
UPDATE `creature_template` SET `PetSpellDataId`='8901' WHERE `entry`='5756';
UPDATE `creature_template` SET `PetSpellDataId`='11587' WHERE `entry`='5762';
UPDATE `creature_template` SET `PetSpellDataId`='5820' WHERE `entry`='5766';
UPDATE `creature_template` SET `PetSpellDataId`='5876' WHERE `entry`='5823';
UPDATE `creature_template` SET `PetSpellDataId`='10513' WHERE `entry`='5856';
UPDATE `creature_template` SET `PetSpellDataId`='5877' WHERE `entry`='5937';
UPDATE `creature_template` SET `PetSpellDataId`='8286' WHERE `entry`='5986';
UPDATE `creature_template` SET `PetSpellDataId`='5870' WHERE `entry`='5987';
UPDATE `creature_template` SET `PetSpellDataId`='8858' WHERE `entry`='5988';
UPDATE `creature_template` SET `PetSpellDataId`='5871' WHERE `entry`='5989';
UPDATE `creature_template` SET `PetSpellDataId`='8261' WHERE `entry`='5992';
UPDATE `creature_template` SET `PetSpellDataId`='8306' WHERE `entry`='6013';
UPDATE `creature_template` SET `PetSpellDataId`='5838' WHERE `entry`='6250';
UPDATE `creature_template` SET `PetSpellDataId`='9053' WHERE `entry`='6516';
UPDATE `creature_template` SET `PetSpellDataId`='9051' WHERE `entry`='6585';
UPDATE `creature_template` SET `PetSpellDataId`='5802' WHERE `entry`='6788';
UPDATE `creature_template` SET `PetSpellDataId`='5873' WHERE `entry`='7022';
UPDATE `creature_template` SET `PetSpellDataId`='8298' WHERE `entry`='7055';
UPDATE `creature_template` SET `PetSpellDataId`='8851' WHERE `entry`='7078';
UPDATE `creature_template` SET `PetSpellDataId`='8315' WHERE `entry`='7097';
UPDATE `creature_template` SET `PetSpellDataId`='8316' WHERE `entry`='7098';
UPDATE `creature_template` SET `PetSpellDataId`='5861' WHERE `entry`='7099';
UPDATE `creature_template` SET `PetSpellDataId`='10544' WHERE `entry`='7268';
UPDATE `creature_template` SET `PetSpellDataId`='5914' WHERE `entry`='7319';
UPDATE `creature_template` SET `PetSpellDataId`='8854' WHERE `entry`='7405';
UPDATE `creature_template` SET `PetSpellDataId`='5834' WHERE `entry`='7430';
UPDATE `creature_template` SET `PetSpellDataId`='8270' WHERE `entry`='7432';
UPDATE `creature_template` SET `PetSpellDataId`='8268' WHERE `entry`='7433';
UPDATE `creature_template` SET `PetSpellDataId`='5809' WHERE `entry`='7444';
UPDATE `creature_template` SET `PetSpellDataId`='5811' WHERE `entry`='7445';
UPDATE `creature_template` SET `PetSpellDataId`='5862' WHERE `entry`='7455';
UPDATE `creature_template` SET `PetSpellDataId`='5863' WHERE `entry`='7456';
UPDATE `creature_template` SET `PetSpellDataId`='8855' WHERE `entry`='7803';
UPDATE `creature_template` SET `PetSpellDataId`='8310' WHERE `entry`='8207';
UPDATE `creature_template` SET `PetSpellDataId`='8288' WHERE `entry`='8208';
UPDATE `creature_template` SET `PetSpellDataId`='5962' WHERE `entry`='8211';
UPDATE `creature_template` SET `PetSpellDataId`='5933' WHERE `entry`='8213';
UPDATE `creature_template` SET `PetSpellDataId`='5912' WHERE `entry`='8277';
UPDATE `creature_template` SET `PetSpellDataId`='8313' WHERE `entry`='8299';
UPDATE `creature_template` SET `PetSpellDataId`='8289' WHERE `entry`='8300';
UPDATE `creature_template` SET `PetSpellDataId`='5878' WHERE `entry`='8301';
UPDATE `creature_template` SET `PetSpellDataId`='8262' WHERE `entry`='8303';
UPDATE `creature_template` SET `PetSpellDataId`='8910' WHERE `entry`='8336';
UPDATE `creature_template` SET `PetSpellDataId`='10544' WHERE `entry`='8437';
UPDATE `creature_template` SET `PetSpellDataId`='5787' WHERE `entry`='8600';
UPDATE `creature_template` SET `PetSpellDataId`='5788' WHERE `entry`='8601';
UPDATE `creature_template` SET `PetSpellDataId`='5789' WHERE `entry`='8602';
UPDATE `creature_template` SET `PetSpellDataId`='5905' WHERE `entry`='8762';
UPDATE `creature_template` SET `PetSpellDataId`='5874' WHERE `entry`='8926';
UPDATE `creature_template` SET `PetSpellDataId`='5793' WHERE `entry`='8927';
UPDATE `creature_template` SET `PetSpellDataId`='5907' WHERE `entry`='8933';
UPDATE `creature_template` SET `PetSpellDataId`='5808' WHERE `entry`='8958';
UPDATE `creature_template` SET `PetSpellDataId`='5954' WHERE `entry`='8959';
UPDATE `creature_template` SET `PetSpellDataId`='5955' WHERE `entry`='8961';
UPDATE `creature_template` SET `PetSpellDataId`='8297' WHERE `entry`='9416';
UPDATE `creature_template` SET `PetSpellDataId`='8301' WHERE `entry`='9521';
UPDATE `creature_template` SET `PetSpellDataId`='9050' WHERE `entry`='9622';
UPDATE `creature_template` SET `PetSpellDataId`='8860' WHERE `entry`='9691';
UPDATE `creature_template` SET `PetSpellDataId`='5872' WHERE `entry`='9695';
UPDATE `creature_template` SET `PetSpellDataId`='7344' WHERE `entry`='9696';
UPDATE `creature_template` SET `PetSpellDataId`='8833' WHERE `entry`='9698';
UPDATE `creature_template` SET `PetSpellDataId`='8276' WHERE `entry`='10200';
UPDATE `creature_template` SET `PetSpellDataId`='10497' WHERE `entry`='10359';
UPDATE `creature_template` SET `PetSpellDataId`='10515' WHERE `entry`='10375';
UPDATE `creature_template` SET `PetSpellDataId`='8866' WHERE `entry`='10644';
UPDATE `creature_template` SET `PetSpellDataId`='6706' WHERE `entry`='11291';
UPDATE `creature_template` SET `PetSpellDataId`='9001' WHERE `entry`='11357';
UPDATE `creature_template` SET `PetSpellDataId`='11582' WHERE `entry`='11359';
UPDATE `creature_template` SET `PetSpellDataId`='8274' WHERE `entry`='11365';
UPDATE `creature_template` SET `PetSpellDataId`='10519' WHERE `entry`='11370';
UPDATE `creature_template` SET `PetSpellDataId`='10530' WHERE `entry`='11371';
UPDATE `creature_template` SET `PetSpellDataId`='10530' WHERE `entry`='11372';
UPDATE `creature_template` SET `PetSpellDataId`='10530' WHERE `entry`='11373';
UPDATE `creature_template` SET `PetSpellDataId`='5956' WHERE `entry`='11614';
UPDATE `creature_template` SET `PetSpellDataId`='8859' WHERE `entry`='11735';
UPDATE `creature_template` SET `PetSpellDataId`='8832' WHERE `entry`='11736';
UPDATE `creature_template` SET `PetSpellDataId`='8861' WHERE `entry`='11737';
UPDATE `creature_template` SET `PetSpellDataId`='10516' WHERE `entry`='11739';
UPDATE `creature_template` SET `PetSpellDataId`='5945' WHERE `entry`='11871';
UPDATE `creature_template` SET `PetSpellDataId`='5892' WHERE `entry`='11921';
UPDATE `creature_template` SET `PetSpellDataId`='10500' WHERE `entry`='12433';
UPDATE `creature_template` SET `PetSpellDataId`='5953' WHERE `entry`='12800';
UPDATE `creature_template` SET `PetSpellDataId`='5953' WHERE `entry`='12801';
UPDATE `creature_template` SET `PetSpellDataId`='5953' WHERE `entry`='12802';
UPDATE `creature_template` SET `PetSpellDataId`='5953' WHERE `entry`='12803';
UPDATE `creature_template` SET `PetSpellDataId`='11601' WHERE `entry`='13599';
UPDATE `creature_template` SET `PetSpellDataId`='9062' WHERE `entry`='13896';
UPDATE `creature_template` SET `PetSpellDataId`='5924' WHERE `entry`='14223';
UPDATE `creature_template` SET `PetSpellDataId`='5858' WHERE `entry`='14233';
UPDATE `creature_template` SET `PetSpellDataId`='5890' WHERE `entry`='14266';
UPDATE `creature_template` SET `PetSpellDataId`='8841' WHERE `entry`='14274';
UPDATE `creature_template` SET `PetSpellDataId`='5893' WHERE `entry`='14279';
UPDATE `creature_template` SET `PetSpellDataId`='5954' WHERE `entry`='14339';
UPDATE `creature_template` SET `PetSpellDataId`='5861' WHERE `entry`='14343';
UPDATE `creature_template` SET `PetSpellDataId`='5808' WHERE `entry`='14344';
UPDATE `creature_template` SET `PetSpellDataId`='8861' WHERE `entry`='14476';
UPDATE `creature_template` SET `PetSpellDataId`='10517' WHERE `entry`='14532';
UPDATE `creature_template` SET `PetSpellDataId`='10518' WHERE `entry`='15041';
UPDATE `creature_template` SET `PetSpellDataId`='8272' WHERE `entry`='15067';
UPDATE `creature_template` SET `PetSpellDataId`='8271' WHERE `entry`='15068';
UPDATE `creature_template` SET `PetSpellDataId`='8272' WHERE `entry`='15101';
UPDATE `creature_template` SET `PetSpellDataId`='10481' WHERE `entry`='15649';
UPDATE `creature_template` SET `PetSpellDataId`='10391' WHERE `entry`='15650';
UPDATE `creature_template` SET `PetSpellDataId`='11553' WHERE `entry`='15651';
UPDATE `creature_template` SET `PetSpellDataId`='11094' WHERE `entry`='15652';
UPDATE `creature_template` SET `PetSpellDataId`='11562' WHERE `entry`='15653';
UPDATE `creature_template` SET `PetSpellDataId`='9161' WHERE `entry`='16117';
UPDATE `creature_template` SET `PetSpellDataId`='10522' WHERE `entry`='16170';
UPDATE `creature_template` SET `PetSpellDataId`='10523' WHERE `entry`='16171';
UPDATE `creature_template` SET `PetSpellDataId`='11556' WHERE `entry`='16347';
UPDATE `creature_template` SET `PetSpellDataId`='11092' WHERE `entry`='16348';
UPDATE `creature_template` SET `PetSpellDataId`='11093' WHERE `entry`='16349';
UPDATE `creature_template` SET `PetSpellDataId`='10496' WHERE `entry`='16350';
UPDATE `creature_template` SET `PetSpellDataId`='10499' WHERE `entry`='16351';
UPDATE `creature_template` SET `PetSpellDataId`='10501' WHERE `entry`='16352';
UPDATE `creature_template` SET `PetSpellDataId`='11567' WHERE `entry`='16932';
UPDATE `creature_template` SET `PetSpellDataId`='11565' WHERE `entry`='16934';
UPDATE `creature_template` SET `PetSpellDataId`='10705' WHERE `entry`='17034';
UPDATE `creature_template` SET `PetSpellDataId`='10708' WHERE `entry`='17035';
UPDATE `creature_template` SET `PetSpellDataId`='10705' WHERE `entry`='17039';
UPDATE `creature_template` SET `PetSpellDataId`='8311' WHERE `entry`='17042';
UPDATE `creature_template` SET `PetSpellDataId`='10709' WHERE `entry`='17053';
UPDATE `creature_template` SET `PetSpellDataId`='10711' WHERE `entry`='17128';
UPDATE `creature_template` SET `PetSpellDataId`='10706' WHERE `entry`='17129';
UPDATE `creature_template` SET `PetSpellDataId`='9504' WHERE `entry`='17178';
UPDATE `creature_template` SET `PetSpellDataId`='11593' WHERE `entry`='17198';
UPDATE `creature_template` SET `PetSpellDataId`='11594' WHERE `entry`='17199';
UPDATE `creature_template` SET `PetSpellDataId`='5904' WHERE `entry`='17236';
UPDATE `creature_template` SET `PetSpellDataId`='9613' WHERE `entry`='17399';
UPDATE `creature_template` SET `PetSpellDataId`='9612' WHERE `entry`='17401';
UPDATE `creature_template` SET `PetSpellDataId`='8267' WHERE `entry`='17411';
UPDATE `creature_template` SET `PetSpellDataId`='11563' WHERE `entry`='17526';
UPDATE `creature_template` SET `PetSpellDataId`='11564' WHERE `entry`='17527';
UPDATE `creature_template` SET `PetSpellDataId`='11595' WHERE `entry`='17556';
UPDATE `creature_template` SET `PetSpellDataId`='11596' WHERE `entry`='17620';
UPDATE `creature_template` SET `PetSpellDataId`='11591' WHERE `entry`='18033';
UPDATE `creature_template` SET `PetSpellDataId`='10483' WHERE `entry`='18155';
UPDATE `creature_template` SET `PetSpellDataId`='10710' WHERE `entry`='18220';
UPDATE `creature_template` SET `PetSpellDataId`='10707' WHERE `entry`='18257';
UPDATE `creature_template` SET `PetSpellDataId`='10525' WHERE `entry`='18464';
UPDATE `creature_template` SET `PetSpellDataId`='11577' WHERE `entry`='18465';
UPDATE `creature_template` SET `PetSpellDataId`='10520' WHERE `entry`='18466';
UPDATE `creature_template` SET `PetSpellDataId`='10521' WHERE `entry`='18467';
UPDATE `creature_template` SET `PetSpellDataId`='11592' WHERE `entry`='18476';
UPDATE `creature_template` SET `PetSpellDataId`='9612' WHERE `entry`='18605';
UPDATE `creature_template` SET `PetSpellDataId`='9613' WHERE `entry`='18614';
UPDATE `creature_template` SET `PetSpellDataId`='10480' WHERE `entry`='18851';
UPDATE `creature_template` SET `PetSpellDataId`='10482' WHERE `entry`='18854';
UPDATE `creature_template` SET `PetSpellDataId`='11573' WHERE `entry`='18878';
UPDATE `creature_template` SET `PetSpellDataId`='11576' WHERE `entry`='18884';
UPDATE `creature_template` SET `PetSpellDataId`='10712' WHERE `entry`='18963';
UPDATE `creature_template` SET `PetSpellDataId`='10712' WHERE `entry`='18996';
UPDATE `creature_template` SET `PetSpellDataId`='5830' WHERE `entry`='19022';
UPDATE `creature_template` SET `PetSpellDataId`='5830' WHERE `entry`='19023';
UPDATE `creature_template` SET `PetSpellDataId`='5830' WHERE `entry`='19024';
UPDATE `creature_template` SET `PetSpellDataId`='5830' WHERE `entry`='19025';
UPDATE `creature_template` SET `PetSpellDataId`='5830' WHERE `entry`='19026';
UPDATE `creature_template` SET `PetSpellDataId`='5830' WHERE `entry`='19027';
UPDATE `creature_template` SET `PetSpellDataId`='5830' WHERE `entry`='19030';
UPDATE `creature_template` SET `PetSpellDataId`='5830' WHERE `entry`='19031';
UPDATE `creature_template` SET `PetSpellDataId`='10713' WHERE `entry`='19055';
UPDATE `creature_template` SET `PetSpellDataId`='11566' WHERE `entry`='19189';
UPDATE `creature_template` SET `PetSpellDataId`='11570' WHERE `entry`='19349';
UPDATE `creature_template` SET `PetSpellDataId`='11569' WHERE `entry`='19350';
UPDATE `creature_template` SET `PetSpellDataId`='11586' WHERE `entry`='19428';
UPDATE `creature_template` SET `PetSpellDataId`='10530' WHERE `entry`='19784';
UPDATE `creature_template` SET `PetSpellDataId`='11588' WHERE `entry`='19785';
UPDATE `creature_template` SET `PetSpellDataId`='10487' WHERE `entry`='20038';
UPDATE `creature_template` SET `PetSpellDataId`='10486' WHERE `entry`='20039';
UPDATE `creature_template` SET `PetSpellDataId`='11590' WHERE `entry`='20058';
UPDATE `creature_template` SET `PetSpellDataId`='10709' WHERE `entry`='20109';
UPDATE `creature_template` SET `PetSpellDataId`='11589' WHERE `entry`='20330';
UPDATE `creature_template` SET `PetSpellDataId`='10480' WHERE `entry`='20502';
UPDATE `creature_template` SET `PetSpellDataId`='10480' WHERE `entry`='20517';
UPDATE `creature_template` SET `PetSpellDataId`='12153' WHERE `entry`='20634';
UPDATE `creature_template` SET `PetSpellDataId`='11572' WHERE `entry`='20671';
UPDATE `creature_template` SET `PetSpellDataId`='11581' WHERE `entry`='20673';
UPDATE `creature_template` SET `PetSpellDataId`='11586' WHERE `entry`='20688';
UPDATE `creature_template` SET `PetSpellDataId`='11584' WHERE `entry`='20749';
UPDATE `creature_template` SET `PetSpellDataId`='10540' WHERE `entry`='20797';
UPDATE `creature_template` SET `PetSpellDataId`='11583' WHERE `entry`='20999';
UPDATE `creature_template` SET `PetSpellDataId`='11571' WHERE `entry`='21022';
UPDATE `creature_template` SET `PetSpellDataId`='9071' WHERE `entry`='21033';
UPDATE `creature_template` SET `PetSpellDataId`='11585' WHERE `entry`='21123';
UPDATE `creature_template` SET `PetSpellDataId`='10709' WHERE `entry`='21468';
UPDATE `creature_template` SET `PetSpellDataId`='10856' WHERE `entry`='21470';
UPDATE `creature_template` SET `PetSpellDataId`='10483' WHERE `entry`='21544';
UPDATE `creature_template` SET `PetSpellDataId`='5918' WHERE `entry`='21634';
UPDATE `creature_template` SET `PetSpellDataId`='10709' WHERE `entry`='21804';
UPDATE `creature_template` SET `PetSpellDataId`='11579' WHERE `entry`='21864';
UPDATE `creature_template` SET `PetSpellDataId`='11091' WHERE `entry`='21956';
UPDATE `creature_template` SET `PetSpellDataId`='10525' WHERE `entry`='22039';
UPDATE `creature_template` SET `PetSpellDataId`='11580' WHERE `entry`='22100';
UPDATE `creature_template` SET `PetSpellDataId`='11568' WHERE `entry`='22123';
UPDATE `creature_template` SET `PetSpellDataId`='11574' WHERE `entry`='22191';
UPDATE `creature_template` SET `PetSpellDataId`='12056' WHERE `entry`='22193';
UPDATE `creature_template` SET `PetSpellDataId`='11575' WHERE `entry`='22255';
UPDATE `creature_template` SET `PetSpellDataId`='11578' WHERE `entry`='22257';
UPDATE `creature_template` SET `PetSpellDataId`='10712' WHERE `entry`='22265';
UPDATE `creature_template` SET `PetSpellDataId`='8841' WHERE `entry`='22793';
UPDATE `creature_template` SET `PetSpellDataId`='11669' WHERE `entry`='22807';
UPDATE `creature_template` SET `PetSpellDataId`='10708' WHERE `entry`='23051';
UPDATE `creature_template` SET `PetSpellDataId`='11576' WHERE `entry`='23219';
UPDATE `creature_template` SET `PetSpellDataId`='7264' WHERE `entry`='23761';
UPDATE `creature_template` SET `PetSpellDataId`='11571' WHERE `entry`='23812';
UPDATE `creature_template` SET `PetSpellDataId`='11571' WHERE `entry`='23877';
UPDATE `creature_template` SET `PetSpellDataId`='11571' WHERE `entry`='23878';
UPDATE `creature_template` SET `PetSpellDataId`='11571' WHERE `entry`='23879';
UPDATE `creature_template` SET `PetSpellDataId`='11571' WHERE `entry`='23880';

-- NF end

-- shalandris start

-- All mechanicals and elementals should be immune to Bleed
UPDATE creature_template SET mechanic_immune_mask=mechanic_immune_mask|16384 WHERE type IN (9) AND rank<>3;
-- And almost all undeads should be immune to Fear/Death Coil and Bleed
-- buug edit: removed bleed. 
UPDATE creature_template SET mechanic_immune_mask=mechanic_immune_mask|8388624 WHERE type=6;
-- Bosses shouldn't be immune to Bleed
UPDATE creature_template SET mechanic_immune_mask=mechanic_immune_mask&~16384 WHERE rank=3;
-- Kerlonian Evershade shouldn't be a vendor
UPDATE creature_template SET npcflag=npcflag&~128 WHERE entry=11218;
DELETE FROM npc_vendor WHERE entry=11218;
-- Fix for Well Watcher Solanian
UPDATE quest_template SET RewRepFaction1=911, RewRepValue1=10 WHERE entry=10071;
-- Remove some old quests not existing anymore (Invasion event, patch 1.11)
DELETE FROM creature_questrelation WHERE quest IN (9085, 9153, 9247, 9292, 9295, 9299, 9300, 9301, 9302, 9304, 9310, 9154, 9260, 9261, 9262, 9263, 9264, 9265, 9341, 9343);
DELETE FROM creature_involvedrelation WHERE quest IN (9085, 9153, 9247, 9292, 9295, 9299, 9300, 9301, 9302, 9304, 9310, 9154, 9260, 9261, 9262, 9263, 9264, 9265, 9341, 9343);
-- UPDATE item_template SET startquest=0 WHERE startquest IN (9085, 9153, 9247, 9292, 9295, 9299, 9300, 9301, 9302, 9304, 9310, 9154, 9260, 9261, 9262, 9263, 9264, 9265, 9341, 9343);
-- Lunaclaw shouldn't be spawned: summon is ok
DELETE FROM creature WHERE id=12138;
-- All items that begins a quest should be freeforall (don't trust WoWHead!), except for a few dropped by bosses (like Head of Onyixia or Blood of Zul'Jin)
-- UPDATE creature_loot_template SET freeforall=1 WHERE item IN (2794, 1357, 4614, 19424, 19423, 5877, 11818, 20741, 12771, 20742, 18358, 18360, 18357, 18362, 18359, 18364, 18356, 18363, 18361, 18703, 19018, 20943, 20944, 18401, 21749, 22624, 22970, 22973, 22974, 22975, 22977, 28552, 32405, 6196);
-- Fix for all creatures with mindmg>maxdmg (maybe not 100% blizzlike, but better than mindmg=262 and maxdmg=1 or than negative values)
UPDATE creature_template SET mindmg=152, maxdmg=239, attackpower=1367 WHERE entry IN (3210, 3211, 3213, 3214, 3502); -- Used datas from another guard with same level
UPDATE creature_template SET mindmg=36, maxdmg=77, attackpower=394 WHERE entry=11822; -- same
UPDATE creature_template SET mindmg=0, maxdmg=0, attackpower=0 WHERE entry=18225; -- trigger
UPDATE creature_template SET mindmg=0, maxdmg=0, attackpower=0 WHERE entry=22656; -- not used
UPDATE creature_template SET mindmg=285, maxdmg=368, attackpower=1142 WHERE entry=25367; -- from PSDB

-- shalandris end

-- PSDB merge start
REPLACE INTO `creature` VALUES (41817,25661,580,1,0,0,1775.34,925.941,15.5818,4.55588,21600,0.0,0,3100,0,0,0);
REPLACE INTO `creature` VALUES (42573,25661,580,1,23588,0,1769.2,927.208,15.5794,1.57137,21600,0.0,0,3100,0,0,0);
REPLACE INTO `creature` VALUES (42574,25661,580,1,0,0,1772.67,921.033,15.591,4.74045,21600,0.0,0,3100,0,0,0);
REPLACE INTO `creature` VALUES (42582,25661,580,1,23588,0,1761.43,927.409,15.5797,1.61064,21600,0.0,0,3100,0,0,0);
REPLACE INTO `creature` VALUES (42583,25661,580,1,23588,0,1755.51,927.438,15.5797,1.78343,21600,0.0,0,3100,0,0,0);
REPLACE INTO `creature` VALUES (42584,25661,580,1,23588,0,1754.66,921.767,15.591,1.60671,21600,0.0,0,3100,0,0,0);
REPLACE INTO `creature` VALUES (42585,25661,580,1,23588,0,1760.44,921.833,15.5908,4.80722,21600,0.0,0,3100,0,0,0);
REPLACE INTO `creature` VALUES (42586,25661,580,1,0,0,1769.05,934.42,15.5636,4.81355,21600,0.0,0,3100,0,0,0);
REPLACE INTO `creature` VALUES (42587,25661,580,1,0,0,1760.91,934.432,15.5647,4.66747,21600,0.0,0,3100,0,0,0);
REPLACE INTO `creature` VALUES (42588,25644,580,1,0,0,1756.8,925.755,15.5835,2.42936,21600,0.0,0,4700,0,0,2);
REPLACE INTO `creature` VALUES (42589,25639,580,1,0,0,1765.7,918.022,15.5987,3.06554,21600,0.0,0,4700,0,0,2);
REPLACE INTO `creature` VALUES (42590,25638,580,1,0,0,1762.17,899.91,14.6187,0.831871,21600,0.0,0,4700,0,0,0);
REPLACE INTO `creature` VALUES (42591,25632,580,1,0,0,1766.36,898.945,14.6187,1.29368,21600,0.0,0,8674,0,0,0);
REPLACE INTO `creature` VALUES (42592,25507,580,1,0,0,1667.76,897.378,14.6251,2.25657,21600,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (42593,25507,580,1,0,0,1615.25,971.1,17.3873,6.18985,21600,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (42594,25507,580,1,0,0,1690.87,1017.88,16.9311,3.22497,21600,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (42595,25507,580,1,0,0,1637.06,1023.9,16.8369,6.07283,21600,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (42640,25363,580,1,0,0,1655.94,923.5,15.5426,4.71173,21600,0.0,0,195943,0,0,0);
REPLACE INTO `creature` VALUES (42644,25363,580,1,0,0,1651.68,923.513,15.5431,3.73234,21600,0.0,0,195943,0,0,0);
REPLACE INTO `creature` VALUES (42645,25370,580,1,0,0,1665.09,926.266,17.0773,4.73058,21600,0.0,0,193817,0,0,0);
REPLACE INTO `creature` VALUES (42647,25368,580,1,0,0,1662.52,930.104,17.0773,3.10991,21600,0.0,0,233404,0,0,0);
REPLACE INTO `creature` VALUES (42655,25371,580,1,0,0,1653.34,925.969,16.4986,0.0507862,21600,0.0,0,192572,0,0,0);
REPLACE INTO `creature` VALUES (42656,25369,580,1,0,0,1655.33,928.328,17.0774,4.82522,21600,0.0,0,238637,0,0,0);
REPLACE INTO `creature` VALUES (42657,25867,580,1,0,0,1658.39,930.159,17.0773,5.62633,21600,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (42658,25367,580,1,0,0,1636.82,923.83,15.5434,4.77024,21600,0.0,0,196571,0,0,0);
REPLACE INTO `creature` VALUES (42659,25867,580,1,0,0,1630.37,931.427,17.0807,2.72821,21600,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (42660,25368,580,1,0,0,1634.69,930.666,17.0807,3.05965,21600,0.0,0,233404,0,0,0);
REPLACE INTO `creature` VALUES (42661,25369,580,1,0,0,1627.22,928.207,17.0809,4.2511,21600,0.0,0,238637,0,0,0);
REPLACE INTO `creature` VALUES (42870,25371,580,1,0,0,1625.34,926.446,16.5011,1.29014,21600,0.0,0,192572,0,0,0);
REPLACE INTO `creature` VALUES (42871,25363,580,1,0,0,1623.57,924.331,15.5469,5.03873,21600,0.0,0,195943,0,0,0);
REPLACE INTO `creature` VALUES (42874,25370,580,1,0,0,1636.48,927.13,17.0804,4.67901,21600,0.0,0,193817,0,0,0);
REPLACE INTO `creature` VALUES (42894,25363,580,1,0,0,1654.9,988.947,15.99,3.35797,21600,0.0,0,195943,0,0,0);
REPLACE INTO `creature` VALUES (43439,25369,580,1,0,0,1669.5,976.064,15.9881,1.27431,21600,0.0,0,238637,0,0,0);
REPLACE INTO `creature` VALUES (43440,25371,580,1,0,0,1684.01,982.253,15.9867,2.82547,21600,0.0,0,192572,0,0,0);
REPLACE INTO `creature` VALUES (43654,25371,580,1,0,0,1667.62,993.469,15.9858,0.504621,21600,0.0,0,192572,0,0,0);
REPLACE INTO `creature` VALUES (43655,25370,580,1,0,0,1673.1,995.846,15.9858,3.75224,21600,0.0,0,193817,0,0,0);
REPLACE INTO `creature` VALUES (43661,25367,580,1,0,0,1679.81,992.411,15.9858,5.18166,21600,0.0,0,196571,0,0,0);
REPLACE INTO `creature` VALUES (43738,25363,580,1,0,0,1662.91,1048.42,15.986,5.32382,21600,0.0,0,195943,0,0,0);
REPLACE INTO `creature` VALUES (43739,25370,580,1,0,0,1660.82,1039.34,15.9858,5.10863,21600,0.0,0,193817,0,0,0);
REPLACE INTO `creature` VALUES (43740,25867,580,1,0,0,1651.11,1056.16,15.9858,3.69099,21600,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (43741,25372,580,1,0,0,1657.18,1054.73,15.9858,3.8088,21600,0.0,0,20458,0,0,0);
REPLACE INTO `creature` VALUES (43742,25371,580,1,0,0,1653.35,1045.77,15.9912,1.13059,21600,0.0,0,192572,0,0,0);
REPLACE INTO `creature` VALUES (43769,25367,580,1,0,0,1656.95,1043.05,15.9857,1.3505,21600,0.0,0,196571,0,0,0);
REPLACE INTO `creature` VALUES (43770,24850,580,1,0,0,1704.34,928.173,53.0774,1.50679,21600,0.0,0,1100000,0,0,0);
REPLACE INTO `creature` VALUES (43772,24892,580,1,0,0,1707.51,1095.76,52.845,3.16013,21600,0.0,0,2753141,1693500,0,0);
REPLACE INTO `creature` VALUES (44018,24882,580,1,0,0,1476.88,601.069,23.3724,2.99126,21600,0.0,0,9929522,0,0,0);
REPLACE INTO `creature` VALUES (44021,25166,580,1,0,0,1821.53,625.499,33.4037,6.11994,21600,0.0,0,2933050,0,0,0);
REPLACE INTO `creature` VALUES (44023,25165,580,1,0,0,1811.82,625.756,33.4037,3.0993,21600,0.0,0,2810055,0,0,0);
REPLACE INTO `creature` VALUES (44024,25741,580,1,0,0,1816.25,625.484,69.6036,5.62435,21600,0.0,0,2974786,0,0,0);
REPLACE INTO `creature` VALUES (44025,25608,580,1,0,0,1698.61,628.414,27.5395,3.99799,25,0.0,0,9318871,0,0,0);
REPLACE INTO `creature` VALUES (44040,25363,580,1,0,0,1735.75,990.518,15.9859,1.33579,7200,0.0,0,195943,0,0,0);
REPLACE INTO `creature` VALUES (44046,25363,580,1,0,0,1610.32,835.625,36.0713,0.245693,7200,0.0,0,195943,0,0,0);
REPLACE INTO `creature` VALUES (44049,25363,580,1,0,0,1850.08,698.321,32.0312,3.09216,7200,0.0,0,195943,0,0,0);
REPLACE INTO `creature` VALUES (44050,25363,580,1,0,0,1566.36,640.63,50.7564,4.6447,7200,0.0,0,195943,0,0,0);
REPLACE INTO `creature` VALUES (44059,25363,580,1,0,0,1748.36,1074.68,15.9859,4.22291,7200,0.0,0,195943,0,0,0);
REPLACE INTO `creature` VALUES (44061,25363,580,1,0,0,1616.03,1013.87,36.0714,4.16797,7200,0.0,0,195943,0,0,0);
REPLACE INTO `creature` VALUES (44079,25367,580,1,0,0,1628.57,599.028,84.9952,6.24377,7200,0.0,0,196571,0,0,0);
REPLACE INTO `creature` VALUES (44148,25367,580,1,0,0,1603.24,577.994,50.5757,3.25061,7200,0.0,0,196571,0,0,0);
REPLACE INTO `creature` VALUES (44175,25367,580,1,0,0,1575.97,638.62,50.7508,3.95355,7200,0.0,0,196571,0,0,0);
REPLACE INTO `creature` VALUES (44239,25367,580,1,0,0,1609.4,1010.51,36.0714,4.70361,7200,0.0,0,196571,0,0,0);
REPLACE INTO `creature` VALUES (44268,25367,580,1,0,0,1696.29,499.512,86.2161,1.0288,7200,0.0,0,196571,0,0,0);
REPLACE INTO `creature` VALUES (44279,25367,580,1,0,0,1785.86,487.08,74.1182,2.057,7200,0.0,0,196571,0,0,0);
REPLACE INTO `creature` VALUES (44328,25367,580,1,0,0,1804.25,1034.09,36.0724,1.55495,7200,0.0,0,196571,0,0,0);
REPLACE INTO `creature` VALUES (44358,25367,580,1,0,0,1953.5,547.83,32.0315,4.09277,7200,0.0,0,196571,0,0,0);
REPLACE INTO `creature` VALUES (44373,25367,580,1,0,0,1599.28,835.602,36.0713,6.12047,7200,0.0,0,196571,0,0,0);
REPLACE INTO `creature` VALUES (44390,25367,580,1,0,0,1749.65,1067.11,15.9858,2.49739,7200,0.0,0,196571,0,0,0);
REPLACE INTO `creature` VALUES (44395,25368,580,1,0,0,1615.7,1022.2,36.0714,4.25829,7200,0.0,0,233404,0,0,0);
REPLACE INTO `creature` VALUES (44399,25368,580,1,0,0,1602.25,843.351,36.0713,0.360358,7200,0.0,0,233404,0,0,0);
REPLACE INTO `creature` VALUES (44401,25368,580,1,0,0,1555.24,630.992,50.7428,0.0650377,7200,0.0,0,233404,0,0,0);
REPLACE INTO `creature` VALUES (44407,25368,580,1,0,0,1730.91,992.546,15.986,0.522107,7200,0.0,0,233404,0,0,0);
REPLACE INTO `creature` VALUES (44408,25368,580,1,0,0,1754.07,1048.96,15.986,3.2608,7200,0.0,0,233404,0,0,0);
REPLACE INTO `creature` VALUES (44411,25368,580,1,0,0,1931.14,465.678,32.0311,2.14076,7200,0.0,0,233404,0,0,0);
REPLACE INTO `creature` VALUES (44413,25368,580,1,0,0,1575.63,629.021,50.7632,3.10296,7200,0.0,0,233404,0,0,0);
REPLACE INTO `creature` VALUES (44414,25368,580,1,0,0,1809.11,833.46,36.0113,1.46851,7200,0.0,0,233404,0,0,0);
REPLACE INTO `creature` VALUES (44420,25368,580,1,0,0,1640.92,559.962,85.2153,0.625103,7200,0.0,0,233404,0,0,0);
REPLACE INTO `creature` VALUES (44421,25368,580,1,0,0,1661.93,496.419,50.5757,2.09764,7200,0.0,0,233404,0,0,0);
REPLACE INTO `creature` VALUES (44458,25368,580,1,0,0,1632.09,595.131,84.9916,1.27376,7200,0.0,0,233404,0,0,0);
REPLACE INTO `creature` VALUES (44464,25368,580,1,0,0,1786.71,491.312,74.1197,2.26984,7200,0.0,0,233404,0,0,0);
REPLACE INTO `creature` VALUES (44465,25369,580,1,0,0,1839.7,703.547,32.0312,5.54888,7200,0.0,0,238637,0,0,0);
REPLACE INTO `creature` VALUES (44468,25369,580,1,0,0,1934.79,470.378,32.0311,2.93009,7200,0.0,0,238637,0,0,0);
REPLACE INTO `creature` VALUES (44948,25369,580,1,0,0,1562.25,619.207,50.7582,1.51802,7200,0.0,0,238637,0,0,0);
REPLACE INTO `creature` VALUES (45105,25369,580,1,0,0,1700.96,498.442,86.079,1.61785,7200,0.0,0,238637,0,0,0);
REPLACE INTO `creature` VALUES (45106,25369,580,1,0,0,1661.74,502.507,50.5756,4.14989,7200,0.0,0,238637,0,0,0);
REPLACE INTO `creature` VALUES (45489,25369,580,1,0,0,1659.82,521.32,50.5756,4.74679,7200,0.0,0,238637,0,0,0);
REPLACE INTO `creature` VALUES (45500,25369,580,1,0,0,1745.23,1071.52,15.9859,0.119205,7200,0.0,0,238637,0,0,0);
REPLACE INTO `creature` VALUES (45514,25369,580,1,0,0,1807.88,923.366,35.046,1.44809,7200,0.0,0,238637,0,0,0);
REPLACE INTO `creature` VALUES (45515,25369,580,1,0,0,1730.22,997.295,15.9866,6.09137,7200,0.0,0,238637,0,0,0);
REPLACE INTO `creature` VALUES (45516,25369,580,1,0,0,1948.89,490.294,32.0311,1.70437,7200,0.0,0,238637,0,0,0);
REPLACE INTO `creature` VALUES (45537,25369,580,1,0,0,1612.08,846.033,36.0713,0.8261,7200,0.0,0,238637,0,0,0);
REPLACE INTO `creature` VALUES (45570,25370,580,1,0,0,1637.18,563.028,85.2147,0.525358,7200,0.0,0,193817,0,0,0);
REPLACE INTO `creature` VALUES (45571,25370,580,1,0,0,1749.92,1045.18,15.986,1.04205,7200,0.0,0,193817,0,0,0);
REPLACE INTO `creature` VALUES (45574,25370,580,1,0,0,1954.71,538.296,32.0315,2.4827,7200,0.0,0,193817,0,0,0);
REPLACE INTO `creature` VALUES (45580,25370,580,1,0,0,1791.6,487.714,74.1182,2.12376,7200,0.0,0,193817,0,0,0);
REPLACE INTO `creature` VALUES (45712,25370,580,1,0,0,1612.09,1025.67,36.0714,4.66434,7200,0.0,0,193817,0,0,0);
REPLACE INTO `creature` VALUES (46283,25370,580,1,0,0,1800.75,844.615,35.9843,1.5659,7200,0.0,0,193817,0,0,0);
REPLACE INTO `creature` VALUES (46303,25370,580,1,0,0,1815.15,921.99,35.046,2.3945,7200,0.0,0,193817,0,0,0);
REPLACE INTO `creature` VALUES (46679,25370,580,1,0,0,1855.13,554.742,32.9004,0.958239,7200,0.0,0,193817,0,0,0);
REPLACE INTO `creature` VALUES (46687,25370,580,1,0,0,1554.94,622.715,50.7421,0.719272,7200,0.0,0,193817,0,0,0);
REPLACE INTO `creature` VALUES (46688,25371,580,1,0,0,1604.99,582.499,50.5785,3.15322,7200,0.0,0,192572,0,0,0);
REPLACE INTO `creature` VALUES (46689,25371,580,1,0,0,1736.2,1004.74,15.9902,4.51429,7200,0.0,0,192572,0,0,0);
REPLACE INTO `creature` VALUES (47028,25371,580,1,0,0,1642.98,564.774,85.6786,0.664373,7200,0.0,0,192572,0,0,0);
REPLACE INTO `creature` VALUES (47044,25371,580,1,0,0,1952.74,500.522,32.0311,3.83594,7200,0.0,0,192572,0,0,0);
REPLACE INTO `creature` VALUES (47153,25371,580,1,0,0,1605.09,1020.42,36.0714,4.71853,7200,0.0,0,192572,0,0,0);
REPLACE INTO `creature` VALUES (47154,25371,580,1,0,0,1793.23,841.822,35.9873,1.30672,7200,0.0,0,192572,0,0,0);
REPLACE INTO `creature` VALUES (47155,25371,580,1,0,0,1797.33,831.318,35.9888,1.29965,7200,0.0,0,192572,0,0,0);
REPLACE INTO `creature` VALUES (47265,25371,580,1,0,0,1557.24,639.057,50.7511,5.42538,7200,0.0,0,192572,0,0,0);
REPLACE INTO `creature` VALUES (47309,25371,580,1,0,0,1751.1,1053.04,15.986,4.86537,7200,0.0,0,192572,0,0,0);
REPLACE INTO `creature` VALUES (47313,25371,580,1,0,0,1925.72,464.445,32.0311,0.979157,7200,0.0,0,192572,0,0,0);
REPLACE INTO `creature` VALUES (47449,25371,580,1,0,0,1660.53,746.105,53.4004,5.9736,7200,0.0,0,192572,0,0,0);
REPLACE INTO `creature` VALUES (47454,25371,580,1,0,0,1701.27,504.465,86.0941,3.97404,7200,0.0,0,192572,0,0,0);
REPLACE INTO `creature` VALUES (47470,25371,580,1,0,0,1635.66,599.939,85.0076,3.34722,7200,0.0,0,192572,0,0,0);
REPLACE INTO `creature` VALUES (47471,25372,580,1,0,0,1926.18,470.699,32.0311,2.18867,7200,0.0,0,20458,0,0,0);
REPLACE INTO `creature` VALUES (47475,25372,580,1,0,0,1847.2,561.082,32.9326,0.494853,7200,0.0,0,20458,0,0,0);
REPLACE INTO `creature` VALUES (47578,25372,580,1,0,0,1694.63,502.66,86.1651,1.00445,7200,0.0,0,20458,0,0,0);
REPLACE INTO `creature` VALUES (47607,25372,580,1,0,0,1657.48,496.442,50.5757,0.981591,7200,0.0,0,20458,0,0,0);
REPLACE INTO `creature` VALUES (47608,25372,580,1,0,0,1664.96,747.069,53.3994,4.9463,7200,0.0,0,20458,0,0,0);
REPLACE INTO `creature` VALUES (47768,25372,580,1,0,0,1731.02,1003.35,15.9879,5.44106,7200,0.0,0,20458,0,0,0);
REPLACE INTO `creature` VALUES (47769,25372,580,1,0,0,1599.56,586.934,50.6069,4.8269,7200,0.0,0,20458,0,0,0);
REPLACE INTO `creature` VALUES (47875,25372,580,1,0,0,1799.21,923.229,35.046,0.659554,7200,0.0,0,20458,0,0,0);
REPLACE INTO `creature` VALUES (47884,25372,580,1,0,0,1574.29,621.406,50.7571,2.45343,7200,0.0,0,20458,0,0,0);
REPLACE INTO `creature` VALUES (47893,25506,580,1,0,0,1952.79,494.072,32.0311,2.96101,7200,0.0,0,190000,0,0,0);
REPLACE INTO `creature` VALUES (47897,25506,580,1,0,0,1844.98,702.372,32.0312,4.30874,7200,0.0,0,190000,0,0,0);
REPLACE INTO `creature` VALUES (47898,25506,580,1,0,0,1953.13,543.264,32.033,3.43696,7200,0.0,0,190000,0,0,0);
REPLACE INTO `creature` VALUES (47899,25506,580,1,0,0,1854.99,561.276,32.0323,0.600097,7200,0.0,0,190000,0,0,0);
REPLACE INTO `creature` VALUES (47901,25507,580,1,0,0,1771.2,542.162,62.0931,5.63841,7200,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (48151,25507,580,1,0,0,1892.06,491.911,32.0311,4.95641,7200,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (48160,25507,580,1,0,0,1706.97,837.053,35.6704,6.25473,7200,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (48161,25507,580,1,0,0,1921.21,583.682,32.029,3.38826,7200,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (48162,25507,580,1,0,0,1842.71,461.763,32.0329,0.0998938,7200,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (48194,25507,580,1,0,0,1778.52,1023.24,17.1692,2.4919,7200,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (48195,25507,580,1,0,0,1733.73,1037.96,16.381,0.404307,7200,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (48359,25507,580,1,0,0,1920.39,516.136,32.0311,5.63529,7200,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (48360,25507,580,1,0,0,1787.45,977.847,15.9859,2.37486,7200,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (48372,25507,580,1,0,0,1699.55,749.795,53.4363,1.56358,7200,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (48373,25507,580,1,0,0,1574.9,502.756,30.9913,2.40238,7200,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (48381,25507,580,1,0,0,1824.21,495.356,32.0072,5.66022,7200,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (48391,25507,580,1,0,0,1680.94,548.168,33.3212,2.54012,7200,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (48392,25507,580,1,0,0,1862.02,493.241,82.9061,0.813028,7200,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (48393,25507,580,1,0,0,1673.28,553.883,85.1031,2.41424,7200,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (48394,25507,580,1,0,0,1607.44,924.22,35.5576,4.69183,7200,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (48395,25507,580,1,0,0,1757.98,562.709,85.1758,3.74235,7200,0.0,0,555818,0,0,0);
REPLACE INTO `creature` VALUES (48396,25867,580,1,0,0,1726.73,961.247,17.2358,0.392541,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (48397,25867,580,1,0,0,1817.79,544.975,32.0221,3.18749,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (48398,25867,580,1,0,0,1801.61,834.487,35.9675,1.61462,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (48399,25867,580,1,0,0,1722.67,962.179,17.0368,0.246457,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (48400,25867,580,1,0,0,1629.5,562.245,85.2067,6.27369,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (48401,25867,580,1,0,0,1723.03,957.405,17.0938,0.922685,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (48402,25867,580,1,0,0,1677.01,976.736,15.9853,1.77092,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (48403,25867,580,1,0,0,1907.86,449.401,32.0316,2.21575,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (48404,25867,580,1,0,0,1918.53,469.343,32.0311,5.91439,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53026,25867,580,1,0,0,1930.98,474.726,32.0311,4.59964,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53027,25867,580,1,0,0,1752.35,1072.01,15.9879,3.54118,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53028,25867,580,1,0,0,1807.32,548.527,32.0209,5.52091,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53029,25867,580,1,0,0,1811.42,537.716,32.0252,0.576825,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53030,25867,580,1,0,0,1881.83,447.567,32.0323,1.02038,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53031,25867,580,1,0,0,1943.68,493.617,32.0311,0.37705,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53032,25867,580,1,0,0,1945.95,502.98,32.0311,5.41931,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53033,25867,580,1,0,0,1782.59,477.223,74.1182,2.22036,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53034,25867,580,1,0,0,1703.8,515.885,85.2734,1.28012,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53037,25867,580,1,0,0,1694.52,516.894,85.2734,2.26973,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53043,25867,580,1,0,0,1667.64,742.048,53.4012,2.81472,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53116,25867,580,1,0,0,1592.66,581.404,50.5982,0.135715,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53119,25867,580,1,0,0,1634.4,557.8,85.2284,1.03822,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53181,25867,580,1,0,0,1614.75,621.135,85.0964,4.50882,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53236,25867,580,1,0,0,1613.41,626.92,85.0282,4.72324,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53632,25867,580,1,0,0,1618.57,625.683,85.027,4.36038,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53633,25867,580,1,0,0,1801.49,487.245,74.1182,2.4764,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53636,25867,580,1,0,0,1796.13,1019.01,36.0724,1.26121,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53639,25867,580,1,0,0,1946.55,539.452,32.0311,0.408463,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53645,25867,580,1,0,0,1947.01,548.713,32.0284,5.53083,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53659,25867,580,1,0,0,1809.65,919.699,35.046,1.52585,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53668,25867,580,1,0,0,1802.18,920.27,35.046,1.02005,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53687,25867,580,1,0,0,1653.98,524.496,50.5756,5.45287,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53705,25867,580,1,0,0,1848.34,556.819,33.7248,0.511346,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53718,25867,580,1,0,0,1599.24,839.36,36.0713,6.20293,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53721,25867,580,1,0,0,1805.47,1024.69,36.0724,1.5039,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53760,25867,580,1,0,0,1808.79,1015.05,36.0724,1.59186,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature` VALUES (53832,25867,580,1,0,0,1663.28,523.952,50.5756,4.38551,7200,0.0,0,244988,0,0,0);
REPLACE INTO `creature_addon` VALUES (41817,0,512,3,4097,12,0,'');
REPLACE INTO `creature_addon` VALUES (42573,0,512,3,4097,12,0,'');
REPLACE INTO `creature_addon` VALUES (42574,0,512,3,4097,12,0,'');
REPLACE INTO `creature_addon` VALUES (42582,0,512,3,4097,12,0,'');
REPLACE INTO `creature_addon` VALUES (42583,0,512,3,4097,12,0,'');
REPLACE INTO `creature_addon` VALUES (42584,0,512,3,4097,12,0,'');
REPLACE INTO `creature_addon` VALUES (42585,0,512,3,4097,12,0,'');
REPLACE INTO `creature_addon` VALUES (42586,0,512,5,4097,12,0,'');
REPLACE INTO `creature_addon` VALUES (42587,0,512,5,4097,12,0,'');
REPLACE INTO `creature_movement` VALUES (42588,1,1758.71,924.822,15.5845,0,'','','','','',0,0,0,6.18404,0,0);
REPLACE INTO `creature_movement` VALUES (42588,2,1769.22,924.316,15.5845,0,'','','','','',0,0,0,6.12513,0,0);
REPLACE INTO `creature_movement` VALUES (42588,3,1771.61,922.168,15.5893,3000,'','','','','',16,0,0,5.57929,0,0);
REPLACE INTO `creature_movement` VALUES (42588,4,1769.97,924.453,15.5861,0,'','','','','',0,0,0,2.85395,0,0);
REPLACE INTO `creature_movement` VALUES (42588,5,1758.45,924.509,15.5847,0,'','','','','',0,0,0,3.17989,0,0);
REPLACE INTO `creature_movement` VALUES (42588,6,1757.05,925.586,15.5831,3000,'','','','','',16,0,0,2.48482,0,0);
REPLACE INTO `creature_movement` VALUES (42589,1,1752.75,918.129,15.5979,0,'','','','','',0,0,0,3.19482,0,0);
REPLACE INTO `creature_movement` VALUES (42589,2,1752.25,929.329,15.5752,0,'','','','','',0,0,0,1.63188,0,0);
REPLACE INTO `creature_movement` VALUES (42589,3,1778.49,930.7,15.5723,0,'','','','','',0,0,0,6.27358,0,0);
REPLACE INTO `creature_movement` VALUES (42589,4,1778.74,918.7,15.5951,0,'','','','','',0,0,0,3.14769,0,0);
REPLACE INTO `creature_movement` VALUES (42589,5,1766.08,918.519,15.5964,0,'','','','','',0,0,0,3.20267,0,0);
REPLACE INTO `creature_movement` VALUES (42592,1,1668.2,896.852,14.6256,0,'','','','','',0,0,0,2.26648,0,0);
REPLACE INTO `creature_movement` VALUES (42592,2,1653.34,903.431,14.6185,0,'','','','','',0,0,0,2.96156,0,0);
REPLACE INTO `creature_movement` VALUES (42592,3,1636.55,889.573,14.6173,0,'','','','','',0,0,0,4.05326,0,0);
REPLACE INTO `creature_movement` VALUES (42592,4,1640.77,876.579,14.6169,0,'','','','','',0,0,0,5.29026,0,0);
REPLACE INTO `creature_movement` VALUES (42592,5,1651.97,866.592,14.6212,0,'','','','','',0,0,0,6.17383,0,0);
REPLACE INTO `creature_movement` VALUES (42592,6,1666.49,870.589,14.6196,0,'','','','','',0,0,0,0.687821,0,0);
REPLACE INTO `creature_movement` VALUES (42592,7,1671.69,882.823,14.6209,0,'','','','','',0,0,0,1.15906,0,0);
REPLACE INTO `creature_movement` VALUES (42592,8,1666.77,897.192,14.6213,0,'','','','','',0,0,0,2.07405,0,0);
REPLACE INTO `gameobject` VALUES (47553,187229,580,1,1640.89,923.661,15.5426,4.71238,0.0,0.0,0.71122,-0.70297,25,0,1);
REPLACE INTO `gameobject` VALUES (47554,187229,580,1,1647.69,923.594,15.5428,4.71238,0.0,0.0,0.770477,-0.637468,25,0,1);
REPLACE INTO `gameobject` VALUES (47555,187229,580,1,1760.91,934.432,15.5647,4.71238,0.0,0.0,0.700484,-0.713668,25,0,1);
REPLACE INTO `gameobject` VALUES (47556,187229,580,1,1769.05,934.425,15.5636,4.71238,0.0,0.0,0.678587,-0.73452,25,0,1);


-- texts, 334

REPLACE INTO `npc_text` VALUES ('8759', 'Oh... do I know you?', 'Oh... do I know you?', '1', '0', '6', '0', '0', '0', '0', '1', 'Sorry, I don\'t speak with the help.', 'Sorry, I don\'t speak with the help.', '1', '0', '1', '0', '0', '0', '0', '1', 'And you would be?', 'And you would be?', '1', '0', '6', '0', '0', '0', '0', '1', 'I\'m afraid you have me confused with someone who wants to talk to you.', 'I\'m afraid you have me confused with someone who wants to talk to you.', '1', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9084', 'Good day, $c. If you wish to learn the smith\'s art, you\'ve come to the right place.', '', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9410', '', 'The moment we\'ve been dreading is now at hand, $C. Archimonde has made his way to Nordrassil, and is beginning to devour the World Tree\'s energies. Malfurion needs more time for his plan to work, so we must do the unthinkable. You must attack Archimonde directly, while my own troops hold off the streams of Burning Legion forces approaching the top of the mount.', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9477', 'This is just horrible.$B$BI care not for our own discomforts here, but we must do something to ease the pain of the dead in the Bone Wastes!', '', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9564', 'Thank you for choosing the Bank of Silvermoon. What may I do for you today?', 'Thank you for choosing the Bank of Silvermoon. What may I do for you today?', '0', '0', '0', '0', '0', '0', '0', '100', 'Welcome to the Bank of Silvermoon, $g sir : ma\'am;. Would you care to access the depository?', 'Welcome to the Bank of Silvermoon, $g sir : ma\'am;. Would you care to access the depository?', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9568', '', 'Hi!  Do you think you might help me to get out of here?', '0', '0', '6', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9579', 'What do you mean by this? Is Taretha in danger?', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9580', 'I will do no such thing. I simply cannot leave Taretha in danger while I run off into the mountains. I am no coward. Now, where is she?', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9626', 'Greatfather Winter leaves toys for everyone under the tree in Ironforge during the feast of Winter Veil!', 'Greatfather Winter leaves toys for everyone under the tree in Ironforge during the feast of Winter Veil!', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9717', 'Greatfather Winter can be found in front of the Ironforge bank. The tree near him is where presents are given out.', 'Greatfather Winter can be found in front of the Ironforge bank. The tree near him is where presents are given out.', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9959', 'All things for sale, my friend!  Large and small, whatever you need, Hazzin will provide.$B$BIf you value your life, do not approach Manaforge Ultris without a resupply.  Hazzin is the last chance that you have.', '', '0', '0', '1', '1000', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9970', 'If you have come all the way out here, then it must be that you dare to venture near Manaforge Ara.$B$BCare to buy or sell before you head over?', '', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9989', '', 'I\'m a little busy negotiating a bribe right now.  You might want to come back later.', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10001', 'Ah, welcome back, hero. You have returned to protect the Guardian once more? Do not forget to take a chrono-beacon with you!', '', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10032', 'Day in, day out, all we do is toil in this mine.  The blood elf male was not built for such manual labor.', '', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10039', '$N, please make sure that you tell Gahruj of our success.', '', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10064', '<The apprentice occasionally looks over his shoulder, apparently responding to sounds that you can\'t hear.>$B$BGood day, $N. Pardon me if I seem distracted, but I\'m in the middle of a job for Farmer Natin. I want to have all of his horses shoed by the time he returns from the town hall. What can I help you with?', '', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10202', 'Ameer might be worried about what the Ethereum are doing but I\'m squarely focused on the real danger here: Dimensius.', '', '0', '0', '1', '0', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10209', 'In a different time and place I would\'ve been considered but a youngling.  Here I am a seasoned combatant ready to live and die for the glory of the naaru.$B$BTen of us went into Manaforge Ara.  All the others fell to the Legion.', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10211', 'Did the Scryers send you to contact me?  You do not look like a Scryer at all.', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10229', 'Fleshling, I am Captain Saeed of the Protectorate and these soldiers that stand by me are my avengers. We await orders from the fleshling who destroyed the void conduit. On that fleshling\'s word, we will make our way up to Dimensius\'s lair and wait for the word to make a final strike!$B$BToo long it has been... The void lord will soon face our combined might!', '', '0', '0', '1', '0', '1', '0', '1', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10230', 'The nether drake looks upon you approvingly.', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10256', 'I hear that you\'ve already begun to pull your weight around here.$B$BGood.  I was worried that we were going to have to \'convince\' you to help out.', '', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10378', 'Just a small songbook that I thought you might like to have.  It contains the lyrics to a song known as the Lament of the Highborne; the one that Lady Sylvanas glamoured from the air.', '', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10401', 'Who dares interrupt the Grand Commander?', '', '0', '0', '5', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10405', 'I\'m listening.', '', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10406', 'Oh? Of course you have papers documenting this request.', '', '0', '0', '6', '0', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10407', 'Listen to me, peon. We have a process for the delivery and safekeeping of the cipher fragment. The envoy delivers the missive, which is sealed by Lord Illidan. No missive, no transfer.', '', '0', '0', '25', '0', '1', '0', '1', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10408', '<Ruusk swallows hard.>$B$BI... What do you mean?', '', '0', '0', '1', '0', '6', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10409', 'Wait. Where are you going? You needed a transfer, correct? Let\'s just get it done and over with, ok? Zuluhed at Dragonmaw? It will be done. Please let Lord Illidan know that his orders were carried out with the full cooperation of the Eclipsion.$B$BI will dispatch Ruul the Darkener to personally deliver the fragment!$B$BYou heard me right - Ruul...\r\r\n', '', '0', '0', '1', '0', '6', '0', '273', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10530', 'Greetings, $c - I\'m a Commendation Officer acting on behalf of Silvermoon City.  It is my duty to assist adventurers who have received Horde Commendation Signets.$B$BI accept signets in different quantities, but the most beneficial exchange for you is to hand in a set of ten at once.  I will enter your deeds into our records when you hand in your signets.  As a result, you will earn recognition from Silvermoon City for your duty and service.', 'Greetings, $c - I\'m a Commendation Officer acting on behalf of Silvermoon City.  It is my duty to assist adventurers who have received Horde Commendation Signets.$B$BI accept signets in different quantities, but the most beneficial exchange for you is to hand in a set of ten at once.  I will enter your deeds into our records when you hand in your signets.  As a result, you will earn recognition from Silvermoon City for your duty and service.\r\r\n', '0', '0', '66', '0', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10558', 'Here in Outland, our forces fight against the Horde to control the Eye of the Storm. It is dangerous, fighting amidst the raging energies of the Nether. Do you have what it takes to join us?', 'Here in Outland, our forces fight against the Horde to control the Eye of the Storm. It is dangerous, fighting amidst the raging energies of the Nether. Do you have what it takes to join us?', '7', '1', '66', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10675', '', 'These Tears of the Goddess have been blessed by Elune, and their power will help you combat Archimonde\'s vile magics. Use their power well.', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10791', 'Be wary of the Ethereum that surround us on all sides.', '', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10841', '', 'You better wake up real quick, rookie.  This isn\'t our cushy backyard outside of Skettis; this is the Blade\'s Edge Mountains!  One false move and it\'s crash and burn!', '0', '0', '25', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10887', 'How can I help you, $c?', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10888', 'The pile of skulls reeks of foulness.  You fear the arakkoa have made an addition to the pile fairly recently.', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10903', 'A thousand curses upon you, $r!  This prison will not hold me for long!', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10906', 'Oh, ye like me eyepatch now do ya?  Well, just make sure that ya don\'t have ta be wearing one yerself now $g boyo : girly;.', '', '0', '0', '6', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10907', '', 'Huh?  What?  I\'m a little busy here, friend!$B$BOf course, if you\'re here to help, I\'ve got all the time in the world.', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10913', 'The Bash\'ir crystalforge can be used to transform your apexis shards into unstable flasks of the sorcerer.  These flasks make the imbiber more intelligent, heartier, and increase the effectiveness of their damaging and healing magics.$B$BMake your choice, below.', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10914', '<As you place your apexis shards within the hollow of the Bash\'ir crystalforge and pull the lever, the device literally disintegrates them.  A few moments later your flask appears at your feet.>', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10920', 'We wish that we could create more than one darkrune in a day, but that would be a waste of time.  It\'s simply not physically possible.  Besides, we can\'t even reliably create them at that rate.$B$BAnd trust us, if there were anyone else here smart enough to help, they\'d be conscripted and we\'d have as many darkrunes as needed.', '', '0', '0', '1', '0', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10921', 'The Bash\'ir crystalforge can be used to transform your apexis shards into unstable flasks of the sorcerer.  These flasks make the imbiber more intelligent, heartier, and increase the effectiveness of their damaging and healing magics.$B$BIt appears, however, that you do not have the requisite ten shards to purchase even a single flask.', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10924', 'Gahk now smart!  Us know how ta make da darkrune into da crystalforged darkrune!', '', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10949', 'The Apexis Monument looms above you.', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10951', 'Burning eyes within the prism fill your mind with a sense of dread... especially knowing that you don\'t have the thirty-five apexis shards needed to summon forth its demon.', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10953', 'You\'re a young hatchling aren\'t you?  My eyes fail me.$B$BI assume you\'re here to purchase one of my exotic texts?', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10966', 'Greetings $G brother:sister;. How can we be of service?', '', '0', '1', '396', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10974', 'Still hungry $G brother:sister;? How can we help?', '', '0', '1', '396', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10988', 'Don\'t ya have something better ta do, $g lad : lass; than jaw with me?$B$BNow get out there and prove yer mettle!', '', '0', '0', '6', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10994', '', 'Your name seems to be on everyone\'s lips around the outpost.  Don\'t let it get to your head; I know that you can do better!$B$BI\'ll be watching you, rookie.', '0', '0', '1', '0', '25', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10997', '', 'Hey there, $c!$B$B<Khatie looks at you slyly.>$B$BAnytime you want to wrangle us up some more aether rays, you make sure to come and see me!', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11000', 'What are you looking for?', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11002', '', 'So, you\'ve been around a lot, but we seem to keep missing each other for getting together after work.$B$BIs it me?$B$B<Khatie purposely cheers up.>$B$BAnyway, I just wanted to say that I... we really appreciate everything that you\'ve been doing for the Skyguard!', '0', '0', '6', '0', '1', '0', '4', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11009', '<Chu\'a\'lor\'s left head says,>$B$BWe find your zeal to help us most appealing...$B$B<His right head concludes,>$B$B... and we want you to know that we greatly appreciate your efforts!', '', '0', '0', '1', '0', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11010', 'Your name is beginning to be revered around here.$B$B<Chu\'a\'lor\'s left eye pierces you with its stony gaze.>$B$BKeep up the good work, $N!', '', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11017', 'Do you have steel that needs shaping?', '', '0', '1', '396', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11036', 'Chu\'a\'lor\'s been saying good things about you, $N.  If you want, we have a couple of special ogre brews for sale.$B$BThey\'re really tasty!', '', '0', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11038', 'What can we say, $N?  $G Dude : Dudette;, anything that we have in the store is yours to purchase!$B$BRight on!', '', '0', '0', '2', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11061', 'Need to requisition some supplies?', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11075', 'Forgetting your skill in Elixir Mastery is not something to do lightly.\r\r\n\r\r\nAre you absolutely sure?', 'Forgetting your skill in Elixir Mastery is not something to do lightly.\r\r\n\r\r\nAre you absolutely sure?', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11076', 'Forgetting your skill in Transmutation Mastery is not something to do lightly.\r\r\n\r\r\nAre you absolutely sure?', 'Forgetting your skill in Transmutation Mastery is not something to do lightly.\r\r\n\r\r\nAre you absolutely sure?', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11077', 'All of Illidan\'s lieutenants have fallen, $N.  The way forward is open, if you\'re ready.', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11081', 'I sense you\'ve cleared the path to my brethren.  My connection to them and to the temple is still strong.  Do you wish to delve deeper inside?', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11233', '', 'I\'m sorry $N, but you\'ve already learned all I know about cooking.  Of course, you never know when our cooks will whip up something new, so don\'t be shy and be sure to visit again some time.', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11283', 'Hooray! Tanzar be free, mon!$b$bWhat luck! All that an\' not even a chipped tusk.$b$bCharmed, mon. That\'s what I be. No sense denyin\' it.', '', '0', '0', '5', '500', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11289', 'Ok mon, a deal be a deal....$b$bIt was night when we all snuck in to Zul\'Aman fer a look around.$b$bAll was quiet, til we be hearin\' a rustlin\' sound, like the wind through the trees. Before we know it, we be surrounded by these savages and their pets! Next day, I be wakin\' up here, stuck in a cage.$b$bDay an\' night, one by one, prisoners be gettin\' killed. Every time one be dyin\', that bear-troll be lookin\' stronger.$b$bThat be all I know \'bout this place, mon. And I don\'t wanna be knowin\' any more!', '', '0', '0', '5', '500', '1', '1000', '1', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11295', 'That man be nuthin\' but a fool!$b$bFame, fortune? Phooey! This place be nuthin\' but a deathtrap, mon!$b$bI seen all kinds a\' trolls in my day, but these, they be different - sneaky, strong, tricky.$b$bSeemed to me like they knew we was comin\'....\r\r\n', '', '0', '0', '5', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11302', 'Now, now, $n, just relax and take a deep breath. You really need to learn to trust me.$b$bYour lack of experience in these situations is causing you to panic, and panic always exaggerates the truth. So you see, there really is no crisis.$b$bNow that we\'ve settled that, I must ask that you stop being so negative. It\'s not good for the crew\'s morale....', '', '0', '0', '1', '1000', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11313', 'Wait, don\'t tell me... $n, right?$b$bWhat can I do for you?\r\r\n', '', '0', '0', '1', '1000', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11370', 'Indeed! They were given every advantage I could muster. I simply can\'t imagine what went wrong.$b$bHere, $c, take one. I\'ve made a couple of modifications - little refinements really. Now there\'s no excuse for failure!', '', '0', '0', '1', '1000', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11492', 'Welcome to Theramore, $c.', 'Welcome to Theramore, $c.', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('12198', 'This barrel of ale is guarded by Jarven Thunderbrew.  As long as he\'s in the basement, no barrels may be disturbed.', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('12207', 'Cap\'n Stash is the BEST!', '', '7', '0', '0', '0', '0', '0', '0', '1', 'I swab the decks!', '', '7', '0', '0', '0', '0', '0', '0', '1', 'The Lady Mehley is the best ship EVER!', '', '7', '0', '0', '0', '0', '0', '0', '1', 'Swabbin\' decks cured my rickets!', '', '7', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('12209', 'I\'ve little time for talk, sorry.', '', '7', '0', '274', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('12210', '', 'Can\'t ya see I\'m workin\' here, $glad:lass;? Off with ya, afore Kowalski sees me jawin.\'', '7', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('12215', 'The Lady Mehley is in Theramore enough that we\'ve been assigned to guard her passengers.', 'The Lady Mehley is in Theramore enough that we\'ve been assigned to guard her passengers.', '7', '0', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('328', 'Greetings $N', 'Greetings $N', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('1119', 'I\'ve not seen finer armor made in many years $N. Not since I trained under Grumnus Steelshaper in the Great Forge. I bet he could teach ye things about makin armor that would spark yer interest.', '', '7', '100', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('1120', 'If ye want to find Grumnus, the first thing ye should do is head to Ironforge. Go to the very center of the city and look for the Great Forge, ye should find him there.', '', '7', '100', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('1121', 'That\'s some impressive skill ye have there $N. The blades and hammers ye make surpass even my own, hard as that is to admit. Only person I ever met with skill even greater is Borgus Steelhand, I bet he could teach ye a thing or three.', '', '7', '100', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('1122', 'Want to train with Borgus? Aye, I can tell ye where to find him. Head through the Square northwest of me forge, then take the western road. Ye\'ll find him in the second building on yer right.', '', '7', '100', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('3297', 'May your skills in smelting dark iron serve you well, $N.  But do not let your knowledge corrupt you... as it corrupted us.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('4697', 'Come, take a trip to the wonderful, gorgeous, tropical jungles of Stranglethorn. That\'s right, you too can be spending your time sunbathing by the crystal blue waters while I stand here in this unbearable heat with nothing to look at but my brother Frezza all day! Enjoy your trip!', 'Come, take a trip to the wonderful, gorgeous, tropical jungles of Stranglethorn. That\'s right, you too can be spending your time sunbathing by the crystal blue waters while I stand here in this unbearable heat with nothing to look at but my brother Frezza all day! Enjoy your trip!', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('7248', 'If you wish to become a swordsmith, just ask.', '', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('7479', 'I\'ll patrol the pass leading up to Frostwolf Keep. Just give me the word and I\'ll take flight, Commander.', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('7530', 'Hi there, $N. How may I help you?', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('7635', 'The markings of this tablet show ancient diagrams and hold dire words of power, but their meaning is inscrutable to you.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('7669', 'Gri\'lek, of the Iron Blood$B$BThe wanderer.  May his strength and lust for battle pierce the ages.$B$BGri\'lek now lingers near the edge of madness...', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('7855', 'Alas $N, I am much too busy to talk.  As I mentioned, I need time to think on the situation at hand.$B$BI wish you luck in your travels.  Good day.', '', '0', '1', '0', '274', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('7880', 'You seek to harm me, $r?', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8007', 'As expected, the Horde has completed all of their preparations well in advance of you and your so-called Alliance. You are all holding us up as we cannot take final measures to begin the war until you finish your promised responsibilities.$B$BNow go and pull your weight, $r.', '', '0', '1', '1', '0', '25', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8061', 'The silithid are no match for the sons and daughters of Orgrimmar.  Soon all that will be left of them are their crushed limbs and wings under our feet, $N.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8168', 'Elder Rumblerock passes the years in a cave atop Dreadmaul Rock in the Burning Steppes.', 'Elder Rumblerock passes the years in a cave atop Dreadmaul Rock in the Burning Steppes.', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8169', 'Last I knew, Elder Starsong was in the Sunken Temple of the Swamp of Sorrows.', 'Last I knew, Elder Starsong was in the Sunken Temple of the Swamp of Sorrows.', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8170', 'Elder Stormbrow is most likely at the village of Goldshire in Elwynn Forest.', 'Elder Stormbrow is most likely at the village of Goldshire in Elwynn Forest.', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8171', 'Winterhoof? I hear he\'s living it up in Booty Bay.', 'Winterhoof? I hear he\'s living it up in Booty Bay.', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8172', 'Elder Skychaser looks out over Westfall from atop Sentinel Hill.', 'Elder Skychaser looks out over Westfall from atop Sentinel Hill.', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8176', 'Elder Bladeswift wanders the paths of Darnassus atop Teldrassil.', 'Elder Bladeswift wanders the paths of Darnassus atop Teldrassil.', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8180', 'Elder Nightwind passes the days at the shrine in Jaedenar in Felwood.', 'Elder Nightwind passes the days at the shrine in Jaedenar in Felwood.', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8181', 'The village of Astranaar in Ashenvale is Elder Riversong\'s current home.', 'The village of Astranaar in Ashenvale is Elder Riversong\'s current home.', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8191', 'Last I heard, Elder Runetotem was traveling to Razor Hill in Durotar.', 'Last I heard, Elder Runetotem was traveling to Razor Hill in Durotar.', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8220', 'The lunar celebration this year is quite magnificent!', 'The lunar celebration this year is quite magnificent!', '0', '1', '5', '0', '0', '0', '0', '0', 'They say these fireworks use the power of the moon!', 'They say these fireworks use the power of the moon!', '0', '1', '5', '0', '0', '0', '0', '0', 'This beam of greater moonlight will send you to Darnassus.', 'This beam of greater moonlight will send you to Darnassus.', '0', '1', '1', '0', '0', '0', '0', '0', 'Don\'t try to teleport to one of your enemies\' cities.  It won\'t work - we may all be friendly here, but back home old grudges remain...', 'Don\'t try to teleport to one of your enemies\' cities.  It won\'t work - we may all be friendly here, but back home old grudges remain...', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8221', 'If I didnt know better, I\'d say this party was organized by orcs!', 'If I didnt know better, I\'d say this party was organized by orcs!', '0', '1', '5', '0', '0', '0', '0', '0', 'Did you see?  That last firework almost caught that drawf\'s shirt on fire!  Hah!', 'Did you see?  That last firework almost caught that drawf\'s shirt on fire!  Hah!', '0', '1', '153', '0', '0', '0', '0', '0', 'This moon beam will send you to Orgrimmar.  Use your invitation when you want to go.', 'This moon beam will send you to Orgrimmar.  Use your invitation when you want to go.', '0', '1', '1', '0', '0', '0', '0', '0', 'Don\'t try to teleport to one of your enemies\' cities.  It won\'t work - we may all be friendly here, but back home old grudges remain...', 'Don\'t try to teleport to one of your enemies\' cities.  It won\'t work - we may all be friendly here, but back home old grudges remain...', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8223', 'There\'s nothing like a little Lunar celebration to warm your bones!', 'There\'s nothing like a little Lunar celebration to warm your bones!', '0', '1', '0', '5', '0', '0', '0', '0', 'You have to be careful lighting fireworks when you can\'t feel your fingers...', 'You have to be careful lighting fireworks when you can\'t feel your fingers...', '0', '1', '0', '1', '0', '0', '0', '0', 'This beam of moonlight leads to the Undercity.  Retire when ready.', 'This beam of moonlight leads to the Undercity.  Retire when ready.', '0', '1', '0', '1', '0', '0', '0', '0', 'Don\'t try to teleport to one of your enemies\' cities.  It won\'t work - we may all be friendly here, but back home old grudges remain...', 'Don\'t try to teleport to one of your enemies\' cities.  It won\'t work - we may all be friendly here, but back home old grudges remain...', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8226', 'Long have we toiled to see our land returned to its former glory, $c. Ever shall we remain vigilant against those who have invaded and defiled Quel\'thalas. We will not rest until they are driven from our sight.$B$BLet none exist who stand in the way of the sin\'dorei!', '', '0', '1', '0', '5', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8228', '', 'Hello, $c. These are troubling times indeed if this is what is to become of our beloved Quel\'Thalas.', '0', '1', '1', '18', '0', '0', '500', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8233', 'A man can only live with himself and his shame for so long, $c, before he must take action to undo the mistakes he\'s made.', '', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8234', 'A mess, that\'s what this is!  All of these creatures sprung up out of nowhere, and are running around out of control!  And where\'ve the Magister, and his apprentices, run off to?  Leaving me here all alone without as much as a, \"Hello there Wyllithen, would you like to come with?\"$B$BThe nerve!', '', '0', '1', '5', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8378', '', 'Greetings, my $g lord : lady;. I trust that you are having a pleasant time?', '0', '1', '2', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8379', '', 'Isn\'t this just so much fun? I\'m so glad that Lord Saltheril throws these parties every night, especially with all of that nastiness occurring to the south. Kind of just makes all of that go away, don\'t you think?', '0', '1', '0', '1', '500', '6', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8442', 'Good thing that you deactivated the moon crystal at An\'owyn when you did, $c! Come around any time you feel like pitching in with my research here.', '', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8456', '<The blood elf quickly regains consciousness as you pour the draught into his mouth.>$B$BI owe you my life, $c.  Without your help I would\'ve succumbed to the Scourge\'s painful torture.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8460', '', 'Ahhhhggg... this pain in my head is killing me.$B$BThey must\'ve sent you to rescue me.  Took them long enough!  Do you have any idea of the things they do to prisoners here?', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8463', '<Varnis coughs violently as the restorative draught takes effect.>$B$BThank you for rescuing me.  I must go back to Tranquillien at once!', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8475', 'Without delivery of the Underlight ore in such a timely fashion, our research would have failed.$B$BJust wait until Shatharia shows her head here again. I\'ve got some interesting tasks for her, you can be sure of it!', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8480', 'Indeed, the hills of Winterspring are currently attempting to withstand a renewed Scourge assault. Your assistance would help them greatly.$B$BNumber of Necropolises remaining: $2284W', '', '0', '1', '0', '25', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8484', 'If additional support is not soon sent to the Burning Steppes, I fear the Scourge will establish a base of operations there. If you can, you should go there to aid the defenders.$B$BNumber of Necropolises remaining: $2281W', '', '0', '1', '0', '25', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8490', 'You\'ve done us exemplary service, $N. Between dealing with the gnolls at the Underlight Mines, and the mummified trolls in the Amani Catacombs, you\'ve dealt a mighty blow to our enemies!$B$B$G Good job! : We should get together for drinks sometime, what do you say?;', '', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8496', 'You\'ve dealt the decisive blow against the Shadowpine trolls, $N. I only hope that we can muster our forces quickly enough to finish them off before they receive reinforcements from Zul\'Aman.$B$BIt would be nice if Tranquillien were to reinforce us.', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8501', 'The situation is more grim than many have been led to believe. The Forsaken are here as allies in the fight against our common enemy, the Scourge.$B$BTrust me when I say this, without them the Ghostlands would be lost and the Scourge would already have overrun all of Eversong Woods!$B$BBut more than anything else, we need your help in reclaiming our once proud lands!', '', '0', '1', '1', '5', '0', '0', '500', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8556', 'I have all manner of goods for sale, $c.  Browse at your leisure.', '', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8617', 'As you gain renown with our town, I can make more goods available to you, $N.  With equipment in such short supply we can only afford to provide it to those we trust.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8619', 'It is so good to see you, $g brother : sister;!  This place gives me the creeps.  While you\'re here, be sure to avail yourself of the many opportunities that these so-called Forsaken are providing.', '', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8620', 'It\'s not my fault... IT\'S NOT MY FAULT!!!$B$BIf they\'d just done what I told them to do everything would have been fine. But no! They wouldn\'t listen.$B$BNow they\'re all dead.$B$BI just want to go home. Home to Silvermoon. I\'m so tired.', '', '0', '1', '5', '18', '0', '0', '500', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8678', 'How may I serve?', 'How may I serve?', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8684', '', 'I really don\'t think our situation is so bad.  I am certain it will all be rectified soon and the Sunwell\'s power will be restored.  It just can\'t possibly be as bad as everyone is making it out to be.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8740', 'I\'ve heard something of your exploits, $N.  I know that while you\'re here in Forsaken lands that you\'ll comport yourself with dignity and as a true hero of the sin\'dorei!', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8788', '', 'Greetings.  You are here to help?', '0', '1', '6', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8789', '', 'Just remember, $N, it\'s in our best interests that you do as much as possible for these... these people.', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8791', '', 'Any news from home, $c?', '0', '1', '0', '6', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8798', 'Greetings.  I am Anchorite Delan - one of the draenei.  I am a teacher of sorts.  And who might you be?', '', '0', '1', '2', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8802', '', 'Greetings,  I am Vindicator Palanaar, a traveling paladin of the Light.  I am here to be of assistance to the night elves.', '0', '1', '2', '1', '0', '0', '500', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8821', '', 'Isn\'t that adorable! How did you make it out of the Vale? Maybe you should get back there before someone sends a search party after you.', '0', '1', '4', '6', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8825', 'Return to the draenei and tell them to send me one of their shaman.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8840', 'Greetings, $c. I have been sent here from the Exodar to oversee the construction of Azure Watch.', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8866', '', 'It is good to see you again, $N. Perhaps once things have settled down, I can talk to you about the priceless treasure that we have lost...', '0', '1', '1', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8873', 'Greetings, $c. Before the night elves invited the draenei to join them here, this glade was all but forgotten.$B$BThe kaldorei are deeply tied to these lands, and we draenei are honored that they have asked us to share in the task of revitalizing Forest Song.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8874', '', 'It\'s good to see a new face out here. Our outpost is small and our enemies plentiful. We are surrounded by those who seek to destroy us: the satyr to the west, the orcs of the Warsong Lumber camp to the south, and the demons of Felfire Hill.$B$BWe\'re grateful that the draenei have accepted our invitation to join us in fortifying Forest Song against these myriad threats.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8875', 'It\'s good to hear the voices of others here in Forest Song again. I\'d begun to feel as though I might be the last of the kaldorei ever to set eyes on these lands before their descent into corruption.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8881', 'You\'re a $r, right?  I am heartened to see you here!  We can use all of the help that we can get.', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8934', 'Hi there, $N. How may I help you?', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8954', 'What brings you all the way up here, little $r?', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8956', '', 'Greetings, $c.  I get so few visitors up here.  To what do I owe the pleasure?', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8974', 'The infected nightstalker runts seem to be coming from the north. If I were you, that\'s where I would start my hunt.', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8983', '[Furbolg] Mil\'ork kix ilfin o oomtor...', '', '0', '1', '0', '0', '0', '0', '0', '0', '[Furbolg] Poorov\'tarkh!', '', '0', '1', '0', '0', '0', '0', '0', '0', '[Furbolg] Yar vartslaf?', '', '0', '1', '0', '0', '0', '0', '0', '0', '[Furbolg] Boro gomsho!', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9002', 'I\'m afraid I\'m rather busy fixing horseshoes at the moment.  Would you mind coming back at another time?', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9006', 'I can sense your desire for power, $c.', 'I can sense your desire for power, $c.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9007', 'The Light gives us the strength and magic to triumph.', 'The Light gives us the strength and magic to triumph.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9062', 'This sign contains various announcements and notices of rewards for performing dangerous sounding tasks.  Nothing particularly catches your eye; perhaps you should check again at a later time.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9065', 'You made it! Outstanding! Marshal Windsor has been expecting you. Would you like me to signal him now?', '', '0', '1', '1', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9098', 'My story? It is kind of you to ask. Very well.$B$BLong ago on the planet Draenor - the remains of which are now known as the Outland - all of the draenei lived in peace. But then the Burning Legion came, and they corrupted the orcs with their fel magics.$B$BWith no other option we fought to survive, but exposure to these fel energies had horrible effects upon some of us, over time transforming us into the Broken like me, or worse, the seemingly mindless Lost Ones.$B$BShall I go on?', '', '0', '1', '1', '1', '6', '0', '500', '500', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9099', 'The fel energies also had the side-effect on the Broken and the Lost Ones of cutting us off from the Light. At the time I did not know exactly why, but as a vindicator I insisted on finding out. I decided to make a pilgrimage to do just that.$B$BAnd so it was that after the war came to its fateful end, I journeyed into the desert of the fragmented planet, beseeching the Light to return to us. But decades passed, and the Light never answered my prayers.$B$BIs this something that you wish to hear more of?', '', '0', '1', '1', '1', '6', '0', '500', '500', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9100', 'I had been fortunate to find an oasis and made the decision to stay there until I received an answer. So there I sat, moving only when absolutely necessary, living off of the creatures that would come near the pool. Such was my pride.$B$BAs I said, decades passed without an answer. But I can remember a particularly beautiful sunset one evening. A warm zephyr blew across the land and I was sure that I heard a voice, but no one was around.$B$BAs you can imagine, I thought that I was finally losing my mind.', '', '0', '1', '1', '1', '1', '0', '500', '500', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9101', 'There was something strange about that wind; it didn\'t stop. For weeks it blew across the land, waxing and waning, but never ceasing. And all the time the voice continued, though I could not understand it, nor did I know where it was coming from.$B$BMy time in solitude had taught me how to calm myself and look inward. This I did in order to keep my sanity. And that is when I began to understand the voice. It was coming from the wind itself and it had much to say!', '', '0', '1', '1', '1', '1', '0', '500', '500', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9102', 'It spoke to me of secrets and power, and also of truths. The Light had not forsaken the Broken! The fel energies that the orcs had wielded long ago against the draenei had infused us, causing a break in our ability to be heard by, or perhaps to hear, the Light. The same that had been responsible for the degradation of our bodies.$B$BBut our spirits were not broken, and the air offered to me another path, through which I might deliver my people.\r\n', '', '0', '1', '1', '1', '1', '0', '500', '500', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9103', 'It taught me the path of shamanism, which in a way is just another facet of the Light. Joining the wind was the water of the oasis, the fire from my camp and the earth upon which I sat. All had something to say.$B$BOver the next few years they taught me what it was to call upon and be one with the elements of the world. And they told me that the worlds of all of the stars in the sky, even this one, are made up of these elements.$B$BBut the day came when I felt that I had learned enough to leave.', '', '0', '1', '1', '1', '1', '0', '500', '500', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9104', 'I returned to my people and was greeted with smiling faces and outstretched arms, mostly from the Broken. The prejudices against us from many draenei had continued in my absence. But it was as if they knew that I was coming, and I soon found out why.$B$BVelen, the prophet and leader of all of the draenei, had seen my return in one of his visions and was there to greet me as well. He asked to speak with me in private and as I related my story to him, he nodded and smiled, for this too he had foreseen.', '', '0', '1', '1', '1', '1', '0', '500', '500', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9105', 'Velen urged me to take a leadership role amongst the Broken. But more importantly, he asked me to teach shamanism to all; Broken and draenei alike. I accepted.$B$BWe knew then that given the prejudices of some that this would be a difficult proposition at best. There are those that despise the Broken because we are a frightening reminder of the past. And there are others who believe the way of the shaman to be a blasphemy against the Light.$B$BIn any case, that is my tale.', '', '0', '1', '1', '1', '1', '0', '500', '500', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9124', 'Do not waste my time.  What is it you want?', 'Do not waste my time.  What is it you want?', '0', '1', '6', '0', '0', '0', '0', '0', 'Can you not see that I am busy here?', 'Can you not see that I am busy here?', '0', '1', '6', '0', '0', '0', '0', '0', 'Yes?  What do you want?', 'Yes?  What do you want?', '0', '1', '6', '0', '0', '0', '0', '0', 'And you are?', 'And you are?', '0', '1', '6', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9168', '', 'I have no idea who you are, but your presence is most welcome. Archimonde and his Scourge army could attack at any time, $C. Will you stand with us against this evil?', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9169', '', 'Thank you, $R. Now prepare yourselves. Archimonde is on the march, and we must hold off the inevitable for as long as we can.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9170', '', 'We must continue to hold on for as long as we can! Fight on!', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9173', '[In broken Common] Stillpine be ready! Many thanks!', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9174', 'Welcome to the headquarters of the Blood Knights, the defenders of Quel\'Thalas, the faithful servants of Prince Kael\'thas, and the true masters of the Light.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9184', 'I can sense your desire for power, $c.', 'I can sense your desire for power, $c.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9193', 'Ours is a path for those with an iron will and unfaltering resolve. You seem to possess none of these traits, $c.', 'Ours is a path for those with an iron will and unfaltering resolve. You seem to possess none of these traits, $c.', '1', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9197', 'This book contains information on the plant species of Outland.  Most of the plants detailed are native to Zangarmarsh.$B$BThe charts and diagrams are a bit beyond your understanding.  Perhaps the author could give you some pointers.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9257', 'You\'ve bagged them all: Bach\'lor, Banthar, Gutripper, and even the mighty Tusker!  You\'re truly the finest big game hunter that I know!', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9284', 'The mighty hunter, $N returns.  Tell me the tale of stalking your latest prey.', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9339', 'The alchemists are located in the Court of the Sun; you\'ll find Camberon eager to teach you anything you might want to know about the art of brewing potions.', 'The alchemists are located in the Court of the Sun; you\'ll find Camberon eager to teach you anything you might want to know about the art of brewing potions.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9341', 'The enchanter Sedana is currently accepting apprentices, I believe. You\'ll find her in one of the alcoves within the Court of the Sun.', 'The enchanter Sedana is currently accepting apprentices, I believe. You\'ll find her in one of the alcoves within the Court of the Sun.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9342', 'An old choice... but I suppose I\'m not one to judge. Danwe is the one you\'re after; his engineering stand lies near the Court of the Sun, on the path to Farstriders\' Square.', 'An old choice... but I suppose I\'m not one to judge. Danwe is the one you\'re after; his engineering stand lies near the Court of the Sun, on the path to Farstriders\' Square.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9343', 'Alestus is a master at the... messier way of mending wounds.  If learning first aid is your aim, seek him out on the Walk of Elders, near the entrance to the Royal Exchange.', 'Alestus is a master at the... messier way of mending wounds.  If learning first aid is your aim, seek him out on the Walk of Elders, near the entrance to the Royal Exchange.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9344', 'The waters of Quel\'thalas are teeming with fish; I take it they caught your eye? Drathen is quite experienced with the tricks of the fishing trade, and can be found on the Walk of Elders near the Royal Exchange.', 'The waters of Quel\'thalas are teeming with fish; I take it they caught your eye? Drathen is quite experienced with the tricks of the fishing trade, and can be found on the Walk of Elders near the Royal Exchange.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9345', 'Botanist Nathera has a keen eye for finding herbs, and I imagine she might impart her wisdom to the likes of you. You\'ll find her with the alchemists in an alcove of the Court of the Sun.', 'Botanist Nathera has a keen eye for finding herbs, and I imagine she might impart her wisdom to the likes of you. You\'ll find her with the alchemists in an alcove of the Court of the Sun.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9347', 'Along the southeast end of the Walk of Elders, Lynalis has set up a fine leatherworking stand. She\'ll train you... for a fee.', 'Along the southeast end of the Walk of Elders, Lynalis has set up a fine leatherworking stand. She\'ll train you... for a fee.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9349', 'Tyn is quite the talented skinner; she produces the finest lynx hides I\'ve yet seen. If you wish to learn from her, you\'ll find her on the southeast end of the Walk of Elders.', 'Tyn is quite the talented skinner; she produces the finest lynx hides I\'ve yet seen. If you wish to learn from her, you\'ll find her on the southeast end of the Walk of Elders.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9350', 'The tailor Keelen is always seeking more curious students to teach his delicate craft. His shop is somewhat difficult to uncover at first, but it\'s just north of the auction house in the Bazaar. You\'ll find him on the lower level of the building.', 'The tailor Keelen is always seeking more curious students to teach his delicate craft. His shop is somewhat difficult to uncover at first, but it\'s just north of the auction house in the Bazaar. You\'ll find him on the lower level of the building.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9395', 'Get out of my way, $r. Can\'t you see that we\'re in the middle of a battle!', '', '0', '1', '378', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9406', 'Now that I\'ve been beaten to within an inch of my life what do you want?', '', '0', '1', '6', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9408', '', 'Your assistance fighting the Burning Legion would be most appreciated. Lady Jaina Proudmoore could use your help on the front lines.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9490', '', 'The opening of the Dark Portal brought news of my people\'s fate. In a way, my exile shielded me from sharing in their downfall, but to see the Farstriders throw their lot in with Kael\'thas...$B$BI never imagined my one-time brethren capable of such a thing.$B$BThe homecoming I once dreamt of will never happen. This forest is the only home I have left.', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9508', '', 'Hello, dear. I am Geyah, matron of the Mag\'har.$B$B<Greatmother Geyah coughs.>$B$BIf you are here, it would be safe to assume that the portal has opened. Most of the orcs here were too young or too sick to remember the Dark Portal.$B$B<Greatmother Geyah points to the orcs around her.>$B$BMany of them were orphans or would soon become orphans. Aye, Blackhand would have it no other way. Keep the sick from the healthy. Only the strong would survive... Or so they say.', '0', '1', '1', '1', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9509', '', 'They have grown up here. We kept them safe from harm. We did the best that we could in nursing them back to health. Many perished but many, many more grew strong. Like Garrosh...$B$B<Greatmother Geyah sighs.>$B$BHe has lost his heart, you know. He tells me that I am his balance. That without me, the blood lust that consumed his father and ultimately cursed our people would take him over.', '0', '1', '273', '1', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9510', '', '<Greathmother Geyah laughs weakly.>$B$BOf course not, dear. But it\'s not me that has to believe...$B$BGarrosh can lead the Mag\'har. He is strong and wise. All of the spirits approve of him. He just needs to believe in himself. He fears so much... He fears so deeply that if he lets himself go, his rage will consume him and all that would be near him.', '0', '1', '11', '1', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9511', '', 'I wish I knew, dear. He will not listen to you nor will he listen to me. In truth, it is why I am still here. It is why I have not left with Mother Kashur. He must find his heart. Our people will not survive through the winter without leadership.', '0', '1', '1', '1', '274', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9512', '', '<Greatmother Geyah smiles.>$B$BI am old. It is my time. When I pass, my spirit will move on to the spirit realm. It is there that I will stand with my ancestors. It is there that we will watch over our people.$B$BWhen Garad was alive Mother Kashur\'s duty was the same as my duty now.', '0', '1', '1', '1', '273', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9513', '', 'The duty of a clan mother is to listen. To listen to the wind and the water and the fire and the earth. To gather information for her clan in the way others gather furs to stay warm. It is the spirits that I commune with... In my dreams, Mother Kashur speaks to me like the spirits that spoke to her once... When I pass, I will speak to Drakia and Celestine in this manner.$B$B<Greatmother Geyah smiles.>', '0', '1', '1', '1', '1', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9517', 'I\'m going to figure out what this shadowy group is up to no matter what!', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9583', 'Don\'t look so surprised to see me here, $r. The coming of the draenei and their alliance with my people was foretold by Kurz the Revelator.', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9621', 'Ah... another shaman seeks enlightenment, perhaps? Are the spirits speaking unclearly? Do you wish my help in seeing what lies before you?', '', '7', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9622', 'I am Skaltesh, guide to the shaman seeking enlightenment here... but even those who follow different paths can be shown a thing or two. Do you wish to see?', '', '7', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9623', 'Drink from this vial, and the fog will be cleared for a short time. Go with the spirits, my friend.', '', '7', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9624', 'Sylann, one of the finest cooks in the city, can be found upstairs in the Wayfarer\'s Rest tavern. You can purchase cooking supplies from her assistant there, too.', 'Sylann, one of the finest cooks in the city, can be found upstairs in the Wayfarer\'s Rest tavern. You can purchase cooking supplies from her assistant there, too.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9638', 'The Sethekk believe themselves to be the true and most loyal followers of the master of all arakkoa. Do not ask about the master, $r, for his mysteries are for the feathered people alone.$B$BThe Sethekk interpreted the destruction of Auchindoun to be the arrival of our master on this planet. They set out for the ruins, taking with them the relics of our greatest hero, Terokk.$B$BThey still seek the master in the temple\'s ruins, but I came to see through their lies. I am no longer one of them.', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9640', '\'Talon King\' Ikiss is one of the leaders of the Sethekk, along with my brother, Darkweaver Syth.$B$BIt was they who led the exodus of the Sethekk from Skettis to the ruins of Auchindoun. In the beginning, Ikiss was a charismatic leader, but he has descended into madness.$B$BNow, he openly proclaims that he is Terokk reborn! He truly expects the arakkoa to bend knee to him as their ruler. Can you believe his arrogance?', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9641', 'He is the greatest hero the arakkoa have ever known.$B$BIt is said that in ancient times, he built the city of Skettis with his own claws. He was our greatest champion and defender, but he left us when we turned away from the veneration of Rukhmar.$B$BWe came to worship a new master, one who promised us untold power and status in the cosmos.$B$BThere are some who say that Terokk and Rukhmar are one, and he withdrew his presence from us when we turned away from him.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9652', '', 'Are you lost? Most of the town\'s vendors are situated near the center of town.', '0', '1', '6', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9696', 'The druids of Azeroth hold a great celebration in the Moonglade. If you find the lunar festival revelers in the city, they can transport you there.', 'The druids of Azeroth hold a great celebration in the Moonglade. If you find the lunar festival revelers in the city, they can transport you there.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9715', 'Go to Ironforge\'s Mystic Ward and speak with the night elf druids there. They can transport you to Moonglade to join in the Lunar Festival celebration.', 'Go to Ironforge\'s Mystic Ward and speak with the night elf druids there. They can transport you to Moonglade to join in the Lunar Festival celebration.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9734', 'Get out of my face, kid! Can\'t you see that I\'m training? That\'s right, yours truly is going to be the next Warmaul champion.$B$BYep, I\'m almost ready for the Ring of Blood up north in the old Laughing Skull Ruins. But don\'t even think about it, kid. You\'re way too weak. Gurgthock, the ring announcer, wouldn\'t even let you peek inside that ring let alone fight in it.$B$BNow beat it before it beats you.', '', '0', '1', '25', '1', '273', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9750', 'We already have control of Twin Spire Ruins! Get out there and defend it!', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9788', '', 'Why faire, moans illidari does not catch up with me, then it will be of the naga mark cage Zangar.  join  Illidan and his alli\'aura actually apport that slavery most tribes Rous. There is no hope for my people.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9871', 'For years I was convinced we were doing the right thing in Silvermoon - working to reach Outland so we could be reunited with Kael.$B$BHad I known what Kael\'thas had in store for us, I would\'ve stayed right in Falconwing Square.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9925', 'Knowing a little magic comes in handy in this line of work.  Illusions can\'t always fool everyone, but they\'re usually good enough to get the job done.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9926', 'What are you doing here?  Shouldn\'t you be working on the energy pipeline?$B$BWe\'ve more than doubled the amount of energy we\'re sending to Tempest Keep and can\'t afford anyone loafing.  We don\'t want another Ultris to happen here.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9927', 'Manaforge Ultris, of course!  Where have you been?$B$BThe manaforge was overloaded and created a huge explosion.  It left a tear in reality and now void creatures have been pouring in through it.  You can see them all over the place towards the northeast.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9929', 'You ought to feel safe here; we\'ve stepped up security at this facility after the attacks on Manaforge Duro.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9930', 'Manaforge Duro is the closest facility to Tempest Keep, so it handles most of the load.$B$BAs you should know, overloading these manaforges causes leaks in the pipelines.  The emanating energy attracts unwanted mana creatures.  We\'ve had mana creature infestations at many leak locations; Manaforge Duro is being hit the hardest at the moment.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9931', '', 'Working with this technology is a huge headache.  Everything is constructed in such an alien way.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9934', '', 'Don\'t they teach you new recruits anything?  These manaforges were built from parts of Tempest Keep designed to siphon energy from the nether.$B$BThe naaru used this technology to power their vessel during its travels.  Some said the technology might not be safe to use on land.  They were promptly silenced.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9958', 'This ethereal teleport pad is covered in brightly colored buttons and switches, but seems to have fallen into disuse.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9968', '', 'I\'ve never seen anything like these nether dragons. They seem to have inherited their sire\'s temperment, but they have become something entirely different.', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9971', 'There are only 3 kinds of people in this world: competitors, customers, and employees. Competitors are to be crushed ruthlessly, customers indulged, and employees strictly supervised.$B$BIndependent contractors are a myth.They want to be paid better than employees, but treated like customers. Never trust one who calls himself by that title.', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9986', 'The forest sings with the seeds of change.  Our new friends, the draenei, are here, and we will help them to build a place of their own.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9990', '', 'I\'ve arranged for your flight to Manaforge Coruu.  Are you ready, $N?  You will be dropped off behind enemy lines so make sure you bring everything you need.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10002', 'Greetings, $N. Proceed with caution...', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10006', 'Our Expedition made it safely through the Portal and set up a new base called Thrallmar. Yet as you can see, the Burning Legion moved in and cut us off from our brothers. Clearly, the demons hope to retake the Dark Portal and prevent us from gathering reinforcements from Azeroth.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10008', 'With some help, I believe Taerix may be close to a breakthrough.', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10011', '', 'Hawkstriders are noble creatures.  Make sure to always treat yours well; there are fewer things more dangerous than an angry hawkstrider.', '1', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10044', '', 'I grow bored of guarding Ambassador Sunsorrow, $n. Care to spar a bit? Perhaps one of us will learn something.', '1', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10047', 'Hands off the cloak! Yes, yes, I know that you want one too. Everybody wants one of my cloaks. Believe me, person of low moral and social standing, one day I will make my fortune from the sale of my cloaks. Everyone from here to Ironforge will know the name of Bartolo Ginsetti. The Ginsetti label will be coveted by all!', '', '0', '1', '274', '5', '15', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10055', 'The work that you did for me at the Ruins of Farahlon has got me back on schedule.  I\'m assembling my team to head out there now.$B$BThank you, $N.', '', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10065', 'Agent Ya-six and I were given a high priority mission from Protectorate command to eradicate all signs of void creature infestation at Ultris. These were to be tactical strikes. Our last hit before returning to the Protectorate Watch Post was to be on a void lord named Arconus who had been getting fat off the fleshlings of the area.$B$BUnfortunately, we arrived a bit late. Ya-six and I got separated in the firefight with the flesh beasts. Now he\'s trapped inside, pinned down behind enemy lines.\r\n', '', '0', '1', '1', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10069', '', 'Be sure to visit Vixton Pinchwhistle in Netherstorm\'s Area 52. As the Steamwheedle Fighting Circuit\'s official Arena Vendor, he has all sorts of incredible items for sale to those with enough Arena Points.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10079', 'What? You wish to donate cloth to Silvermoon?$B$BYou\'re merely after a Hawkstrider, aren\'t you? Very well, very well... do the city this service, and I will see to it that your reputation here rises.', '', '1', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10109', '', 'Your help was invaluable, my friend.$B$BI can assure you that the Cenarion Expedition will do everything in its power to counter any future tainted crystals dropped from the heavens by Illidan.', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10128', 'WAIT $c! Your search for the next boss isn\'t this way. Try another way.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10232', 'This is it, $N. We charge on your orders! Just say the word and my men and I will engage!', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10234', 'With the Allerian Stronghold surrounded by enemies on all sides it\'s time for us to take the fight to them.', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10247', 'If I heard correctly, you\'re already doing good work for Sylvanaar.$B$BKeep it up and maybe we\'ll be able to keep our home here.', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10269', 'Are you ready to fight the Stormpike Guard in Alterac Valley, $n?', '', '1', '1', '1', '25', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10302', 'Forgetting elemental leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require elemental leatherworking as well!', 'Forgetting elemental leatherworking is not something to do lightly.  If you choose to abandon it you will forget all recipes that require elemental leatherworking as well!', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10308', 'If you\'ve the gold, I can teach you how to ride a hawkstrider.', '', '1', '1', '1', '0', '0', '1', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10329', 'Forgetting your swordsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require swordsmithing to create!', 'Forgetting your swordsmithing skill is not something to do lightly.  If you choose to abandon it you will forget all recipes that require swordsmithing to create!', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10338', 'As you wish, $N. The spirit hunter is ready.', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10363', 'I cannot believe they made me move my transporter out of town!   Most of the gnomes affected by the accident regained some sort of humanoid form within a few weeks and it should have been an honor to be a participant in such a grand gnomish experiment!\r\n\r\nBesides, we needed the eggs!\r\n', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10402', 'Shattrath\'s flight master is Nutral. You will find him east of the city\'s center.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10403', 'You will find mailboxes within or just outside the Aldor and Scryers banks and inns.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10404', 'There are stable masters just outside both the draenei and blood elf inns on Aldor Rise and Scryer\'s Tier.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10411', 'Inessera is a sharp woman who carries various gems as well as jewelcrafting supplies. You can find her shop in the northern part of Aldor Rise.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10412', 'Lisrythe may be a bit... intimidating at first, but she stocks what you are looking for. She sells her wares outside the large library on Scryer\'s Tier.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10415', 'High Enchanter Bardolan may be found in the Seer\'s Library on Scryer\'s Tier. A grand master of the art, he is surrounded by his students: masters, artisans, experts, and journeymen.', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10417', '<The conjurer stands fierce, its gaze distant.>', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10418', '<Llane\'s true wisdom and strength burn bright, even in this likeness of the king.>', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10419', 'Seymour, the principal skinner in Shattrath and grand master of the trade, may be found in the lower city\'s open marketplace.', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10421', 'We will fight when you are ready, $N.', '', '0', '1', '273', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10440', '<Behind the warlock\'s eyes smolders a deep malevolence.>', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10449', 'All rewards for services renedered to be dispensed by Warcaller Beersnout.$B$BPost no bills.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10451', '', 'Are you interested in learning the intricacies of Jewelcrafting?', '1', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10455', '', 'Until you have mastered the Apprentice level of Jewelcrafting we shall not speak again.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10456', '', 'My knowledge of Jewelcrafting I will share with you.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10459', '', 'I am blessed to be able to help someone of your skills to learn more of Jewelcrafting. What do you wish to know?', '0', '1', '1', '0', '0', '1', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10492', 'As a reward for his years of service, Illidan allowed Kael\'thas to send him five warriors to train under him.  It would be the first time blood elves would be allowed to train as demon hunters.$B$BThe training was brutal.  Illidan put Kael\'s warriors through trials that would defeat most fully capable demon hunters.$B$BThree of Kael\'s elves died in training - another went mad.$B$BOne succeeded.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10493', 'Varedis was his name.  To Illidan\'s surprise, not only did he succeed in the excrutiating rites of passage that are part of the training; Varedis was already displaying better command over his powers than many veteran demon hunters.$B$BIllidan sensed the potential in Varedis and assigned three master demon hunters to train him further in their ways.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10494', 'Within a year of training under Illidan\'s best three demon hunters, Varedis had surpassed them.$B$BNo longer content with the training they had to offer, Varedis infiltrated the Shadow Council where he learned of a powerful relic known as the Book of Fel Names.  He secretly read from this book, committing each passage to memory.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10495', 'Knowledge of a demon\'s true name is rumored to give a certain amount of power over that demon.$B$BThe Book of Fel names is said to contain the true name of every demon ever to have existed.  By memorizing the passages in the book, Varedis had found a source of power to rival Illidan\'s own drinking from the Skull of Gul\'dan.$B$BAt Illidan\'s request, Varedis now runs the training grounds at the Ruins of Karabor - along with the three masters that mentored Varedis.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10497', 'It is not surprising that a blood elf\'s potential for power as a demon hunter is so high.  After all, the sin\'dorei do not have the natural aversion to demonic magic that night elves do.$B$BHowever, I do not expect many to succeed.  Most of them, Varedis included, pursue power for its own sake.  That power will consume them, for they are not driven by the pure fire that burns inside a true demon hunter\'s heart.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10505', '\"It is too soon for you to control me, for you have recently left the game.\"', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10535', 'Haha, you\'re back?  You don\'t seriously expect me to change my mind do you?$B$BGet lost.', '', '0', '1', '11', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10539', 'Nuaar, are you feeling well?  You don\'t look like yourself today.', '', '0', '1', '6', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10541', 'Right, the meeting.  Let\'s get down to it then.$B$BThe fact is that the lumber and livestock being gathered from the Ruuan Weald, which you\'re responsible for, has slowed to a trickle.$B$BWe need those resources, but you\'ve allowed the druids of the Cenarion Expedition to get in the way!', '', '0', '1', '1', '5', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10542', 'I don\'t want excuses, I demand results!$B$BYou think what we\'re doing here is a joke?  If we don\'t do this right, then not only will the so-called do-gooders come calling, but we\'ll be found unworthy for elevation within the ranks of the Blackwing.$B$BIs that what you want?', '', '0', '1', '1', '6', '0', '0', '500', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10543', 'You could at least try to sound a little bit convincing.$B$BLook, Nuaar, I wasn\'t going to tell you this, but I might as well because it\'s going to involve you, too.  Maxnar is planning an all-out attack on the druids at Ruuan Weald.  And he intends to wipe them out.$B$BIt\'s bad enough that we\'ve been fighting with the Boulder\'mok ogres, so we can\'t afford another front to deal with.  I\'ve arranged for a temporary truce with the arakkoa.$B$BWell, what do you think?', '', '0', '1', '1', '1', '6', '0', '500', '500', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10544', 'We\'re putting the final preparations together even as we speak.  The rest will depend upon how quickly you can organize your forces at Ruuan Weald.$B$BDo you think that you can handle that and get it done quickly?', '', '0', '1', '1', '6', '0', '0', '500', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10545', 'That\'s the spirit!$B$BI\'m glad that we had this little meeting.  I feel much better about the attack now.  With leaders like you on the front, how can we lose?$B$BAlright, you have your marching orders.  Now get back to the Ruuan Weald and make it happen!', '', '0', '1', '4', '1', '0', '0', '500', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10547', 'You look like you might be needing passage across the Great Sea. Well you have come to the right place, this here is the berth of the Maiden\'s Fancy, finest passanger ship to travel these waters. When she arrives just climb aboard and the next thing you know you will find yourself basking on the sandy beaches of Stranglethorn.', null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10548', 'I must say, Booty Bay has the best Clam Chowder to be had anywhere in the South Seas. Oh, not interested in cuisine eh? Well then let me be the first to welcome you to the berth of the Maiden\'s Fancy, the finest passenger ship to travel between the Eastern Kingdoms and Kalimdor. She\'s due back for another trip to Ratchet soon, so make yourself comfortable till she arrives.', null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10550', 'Slip a little coin into the boss\'s hand and look what it gets ya. I love my job. Though, if I could find a way to get that little firecracker Snurk reassigned to this port....well, I can\'t imagine it any better. But i\'m betting that you aren\'t here about my bussiness practices. You\'re looking for a Zeppelin to Undercity, am I right? Well, that\'s great, because it docks rigt here behind me. Oh and hey, if you see Snurk, put a good word in for me, would ya?', null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10551', 'Hey there cutie, you looking for a ride to Grom\'gol? I hear it gets mighty steamy down in those jungles, maybe I could join you for a short vacation, show you a real jungle cat.', null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10552', 'Of course there\'s no danger in everything catching flames and exploding like a huge helium bomb. This baby will get you to Undercity faster and safer than any boat, and the view is truly breathtaking. Speaking of breath, smoking is not allowed on board the zeppelin, and fire spells are banned from being cast during the trip.', null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10553', 'My brother said we could make great money with this trade route, but he didn\'t tell me I would be the one living on this side. If you come back this way on the Zeppelin, could you bring me something to eat? They sell some of the finest meat in Orgrimmar, and I sure could use something that didn\'t die weeks before it stopped moving.', null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10555', 'On the northern dock, you can board a ship that will carry you to Rut\'theran Village and Darnassus. From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan. The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar. Safe journeys to you!', null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10557', 'You can find passage to Theramore from this dock. Heed my words, those lands are rarely safe to travel for people of the Alliance. Watch your step and your back.', null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10578', 'The goblin Steamwheedle Fighting Circuit has begun. You can find Arena Organizers selling arena team charters in Gadgetzan and outside the arenas in Nagrand and the Blade\'s Edge Mountains.', 'The goblin Steamwheedle Fighting Circuit has begun. You can find Arena Organizers selling arena team charters in Gadgetzan and outside the arenas in Nagrand and the Blade\'s Edge Mountains.', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10579', 'The goblin Steamwheedle Fighting Circuit has begun. You can find Arena Organizers selling arena team charters in Gadgetzan and outside the arenas in Nagrand and the Blade\'s Edge Mountains.', 'The goblin Steamwheedle Fighting Circuit has begun. You can find Arena Organizers selling arena team charters in Gadgetzan and outside the arenas in Nagrand and the Blade\'s Edge Mountains.', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10595', 'The goblin Steamwheedle Fighting Circuit has begun. You can find Arena Organizers selling arena team charters in Gadgetzan and outside the arenas in Nagrand and the Blade\'s Edge Mountains.', 'The goblin Steamwheedle Fighting Circuit has begun. You can find Arena Organizers selling arena team charters in Gadgetzan and outside the arenas in Nagrand and the Blade\'s Edge Mountains.', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10597', '<The grizzled gladiator speaks in halting Common.> What? You have a problem with me? Take it to the arena. I don\'t waste my time with your little \"hordes\" and \"alliances.\"', '', '0', '1', '25', '274', '0', '0', '3', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10598', 'Gladiators earn the right to wear equipment like mine by winning ranked arena matches.', '', '0', '1', '273', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10599', '<The veteran gladiator speaks in halting Orcish.> What? You have a problem with me? Take it to the arena. I don\'t waste my time with your little \"hordes\" and \"alliances.\"', '', '0', '1', '25', '274', '0', '0', '3', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10600', 'Gladiators earn the right to wear equipment like mine by winning ranked arena matches.', '', '0', '1', '273', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10602', 'Hey there.  Taking a break, overseer?  We don\'t get to see you around here much anymore since you were reassigned to Ruuan Weald.$B$BTake a look at what I have to offer.  It may not have changed much since last we spoke, but I\'ve got plenty.$B$BAnd don\'t be such a stranger!', '', '0', '1', '6', '1', '0', '0', '500', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10604', 'Ranked arena matches start in $4262d. Would-be champions are already busy honing their skills and acquiring the best gear they can. Are you going to be ready?', 'Ranked arena matches start in $4262d. Would-be champions are already busy honing their skills and acquiring the best gear they can. Are you going to be ready?', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10612', 'Fairweather and I are up here representing Sylvanaar\'s interests.$B$BThe druids have been more than accomodating, but allowing the Horde to travel through here gives me the willies.', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10631', 'I realize you have only recently joined us, and thus may be unaware of our traditions. In Moonglade, a tremendous celebration is taking place. This is a time of year when we honor our elders, and you are certainly invited! Travel to one of our cities if you wish to join in!', 'I realize you have only recently joined us, and thus may be unaware of our traditions. In Moonglade, a tremendous celebration is taking place. This is a time of year when we honor our elders, and you are certainly invited! Travel to one of our cities if you wish to join in!', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10649', 'I can instruct you in alchemy.  Interested?', 'I can instruct you in alchemy.  Interested?', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10652', 'I can instruct you in tailoring.  Interested?', 'I can instruct you in tailoring.  Interested?', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10653', 'I can instruct you in leatherworking.  Interested?', 'I can instruct you in leatherworking.  Interested?', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10654', 'I can instruct you in blacksmithing.  Interested?', 'I can instruct you in blacksmithing.  Interested?', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10724', 'If you seek our master of Paladin Trainer\'s, go to Champion Bachi. He will wait of you in Farstriders\' Square.', 'If you seek our master of Paladin Trainer\'s, go to Champion Bachi. He will wait of you in Farstriders\' Square.', '0', '1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10725', 'Sylann, one of the finest cooks in the city, can be found upstairs in the Wayfarer\'s Rest tavern. You can purchase cooking supplies from here assistant there, too.', 'Sylann, one of the finest cooks in the city, can be found upstairs in the Wayfarer\'s Rest tavern. You can purchase cooking supplies from here assistant there, too.', '0', '1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10726', 'Do you mean the Silvermoon City Inn, or the Wayfarer\'s Rest tavern.', 'Do you mean the Silvermoon City Inn, or the Wayfarer\'s Rest tavern.', '0', '1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10727', 'The Wayfarer\'s Rest tavern is located between the Walk of Elders and the Bazaar. You can reach it from either location.', 'The Wayfarer\'s Rest tavern is located between the Walk of Elders and the Bazaar. You can reach it from either location.', '0', '1', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10742', '', 'It is good to see you again, $C $N.  Dornaa has been asking about you.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10850', 'OH YEA! You want a taste of these guns, maggot? Step on in!', '', '0', '1', '23', '397', '0', '0', '0', '0', 'How do you compete with these pythons? Ooooooh yaaaaa, brother!', '', '0', '1', '23', '15', '0', '0', '0', '0', 'You hear that? You hear that chantin\', brother? They\'re cheerin\' for the Rulkster!', '', '0', '1', '53', '275', '0', '0', '0', '0', 'What are you gonna do when Rulk-a-mania runs wild on you, brother????!', '', '0', '1', '5', '397', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10922', 'The fel crystalforge can be used to transform your apexis shards into unstable flasks of the beast.  These flasks make the imbiber more agile, stronger and heartier.$B$BIt appears, however, that you do not have the ten shards necessary to purchase even a single flask.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10932', 'The egg appears resilient as an egg of the Black Dragonflight rightfully should.  Perhaps if you were to place a great many apexis shards next to it, their vibrations would cause it to crack open?$B$BToo bad that you don\'t appear to have the thirty-five apexis shards necessary to do the job.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10938', 'Ack, ye\'ve been busy now haven\'t ye?!  I canna thank ye enough for bombing them demons and resupplying us with mounts.$B$BYer making our job all the more easier.  Keep up the good work, $g laddy : lassie;!', '', '0', '1', '0', '5', '0', '1', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
-- REPLACE INTO `npc_text` VALUES ('10959', '<Flaskataur flaps his majestic wings.>', '', '0', '1', '19', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10961', 'We\'re currently focus testing the Battle of Mount Hyjal. You must have at least HONORED reputation with the Violet Eye to participate.$B$BThat\'s the reputation you gain while doing Karazhan.', '', '0', '1', '1', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10962', 'Now that you\'re attuned to Mount Hyjal, I can teleport you to the Caverns of Time. Just let me know when you are ready.', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10964', 'Now that you have your Black Temple key (Medallion of Karabor), I can teleport you directly to the Black Temple. Just tell me when you are ready.', '', '0', '1', '1', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10975', 'We have quite the feast for you friend.', '', '0', '1', '1', '396', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11016', 'Here in Ogri\'la we have time to contemplate the riddle of steel. But enough of that, how can we help?', '', '0', '1', '1', '396', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11025', 'Hello friend! What can we do for you?', '', '0', '1', '1', '396', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11035', 'Hey, remember, $N, we\'ll make this stuff available for you to buy as you do good deeds.  It\'s like a karma thing, or something.$B$BSo, help out where you can, including with our Skyguard friends just to the north.$B$BAwesome... thanks!', '', '0', '1', '0', '1', '0', '1', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11082', 'My brethren were here not long ago.  My connection to them has grown tenuous.  A powerful presence in the courtyard guards the way forward.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11163', 'I\'m not sure where the zeppelin is right now, actually...', 'I\'m not sure where the zeppelin is right now, actually...', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11219', 'Oh come now, don\'t be ridiculous! I\'m the one and only Budd Nedreck!$b$bI\'ve been all over this land, from the top of Mount Hyjal to the depths of the Sunken Temple. In fact, I was the first to call it the Sunken Temple!$b$bYes, that was me. Don\'t give it a second thought.\r\n\r\n', '', '0', '1', '0', '5', '500', '1', '1000', '274', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11221', 'Yes, well, listen here, $c. I\'m older than I look and wise beyond my years. You\'d do well not to question me so much.\r\n\r\nLook, you don\'t need to take my word for it. Read the postings on any local bulletin board for yourself. I\'m everywhere!$b$bJust do yourself a favor and ignore the ones with \'WANTED\' in the title. Simple misunderstandings, I assure you.', '', '0', '1', '0', '1', '1000', '5', '500', '274', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11406', '', 'Welcome to Theramore, $c.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11625', 'For ages, I was lost.  Now, finally, I see how dark my soul had become...', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11958', 'We\'re celebrating the who breaking free of the what? Bah, who cares?! More candy!', 'We\'re celebrating the who breaking free of the what? Bah, who cares?! More candy!', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('12135', 'A word to the wise, stranger, go back to wherever you\'re from.$b$bThis is no place for lighthearted adventurers. It\'ll chew up the likes of you and spit out your bones.', '', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('12137', 'This large jack-o\'-lantern rests in the middle of the village.  It eyes those who look up it, betraying a dark menace within.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('12138', 'The pumpkin has been smashed, and offers no more treasure.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('12140', 'Smashing the pumpkin reveals a hidden treasure!  This is the greatest day you\'ve ever known!', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('12212', 'Torgoley works us hard, but he\'s a good captain, aye.', '', '7', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('12214', 'I must keep my eyes on ship and crew, good $gsir:madame;. You must forgive my not pausing to speak with you.', '', '7', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('13444', 'I have a pretty good idea what ol-Greatfather Winters gonna be doing when this shift is over. I got a bottle of Winter Veil cheer right here in my bag, and I intend to get to the bottom of it.', null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('13445', 'I have a pretty good idea what ol-Greatfather Winters gonna be doing when this shift is over. I got a bottle of Winter Veil cheer right here in my bag, and I intend to get to the bottom of it.', null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('15296', 'You\'ve caught me at a critical time in my research! No worries, you\'re welcome to join me in quiet contemplation... emphasis on \"quiet\", if you don\'t mind though.', 'You\'ve caught me at a critical time in my research! No worries, you\'re welcome to join me in quiet contemplation... emphasis on \"quiet\", if you don\'t mind though.', '0', '0', '0', '0', '0', '0', '0', '0', 'You\'ve caught me at a critical time in my research! No worries, you\'re welcome to join me in quiet contemplation... emphasis on \"quiet\", if you don\'t mind though.', 'You\'ve caught me at a critical time in my research! No worries, you\'re welcome to join me in quiet contemplation... emphasis on \"quiet\", if you don\'t mind though.', '0', '0', '0', '0', '0', '0', '0', '0', 'You\'ve caught me at a critical time in my research! No worries, you\'re welcome to join me in quiet contemplation... emphasis on \"quiet\", if you don\'t mind though.', 'You\'ve caught me at a critical time in my research! No worries, you\'re welcome to join me in quiet contemplation... emphasis on \"quiet\", if you don\'t mind though.', '0', '0', '0', '0', '0', '0', '0', '0', 'You\'ve caught me at a critical time in my research! No worries, you\'re welcome to join me in quiet contemplation... emphasis on \"quiet\", if you don\'t mind though.', 'You\'ve caught me at a critical time in my research! No worries, you\'re welcome to join me in quiet contemplation... emphasis on \"quiet\", if you don\'t mind though.', '0', '0', '0', '0', '0', '0', '0', '0', 'You\'ve caught me at a critical time in my research! No worries, you\'re welcome to join me in quiet contemplation... emphasis on \"quiet\", if you don\'t mind though.', 'You\'ve caught me at a critical time in my research! No worries, you\'re welcome to join me in quiet contemplation... emphasis on \"quiet\", if you don\'t mind though.', '0', '0', '0', '0', '0', '0', '0', '0', 'You\'ve caught me at a critical time in my research! No worries, you\'re welcome to join me in quiet contemplation... emphasis on \"quiet\", if you don\'t mind though.', 'You\'ve caught me at a critical time in my research! No worries, you\'re welcome to join me in quiet contemplation... emphasis on \"quiet\", if you don\'t mind though.', '0', '0', '0', '0', '0', '0', '0', '0', 'You\'ve caught me at a critical time in my research! No worries, you\'re welcome to join me in quiet contemplation... emphasis on \"quiet\", if you don\'t mind though.', 'You\'ve caught me at a critical time in my research! No worries, you\'re welcome to join me in quiet contemplation... emphasis on \"quiet\", if you don\'t mind though.', '0', '0', '0', '0', '0', '0', '0', '0', 'You\'ve caught me at a critical time in my research! No worries, you\'re welcome to join me in quiet contemplation... emphasis on \"quiet\", if you don\'t mind though.', 'You\'ve caught me at a critical time in my research! No worries, you\'re welcome to join me in quiet contemplation... emphasis on \"quiet\", if you don\'t mind though.', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('20201', 'Stop! Do not go any further, mortal. You are ill-prepared to face the forces of the Infinite Dragonflight.Come, let me help you.', null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('20551', 'I hope this damned thing works. \"Araxes pounds on the portable trasnponder.\"', 'Iam Here, Commander', '0', '0', '0', '0', '0', '0', '0', '0', 'Weve located the mark, commander. Ya-six and i have been seperated. Requesting backup.', 'Arxes! Send help! Im pinned down in the mines, I...Im not sure where iam exactly but i had the presence of mind to drop tracers on the gro8und behind me', '0', '0', '0', '0', '0', '0', '0', '0', 'I cant follow the tracers back out, too many flesh beasts in the way.Send someone in... Follow the tracers... Ya-Six out.', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('20564', 'Araxes, come in....Are you there Araxes? Visibility is nil, Warp storms blocking us.', 'Copy, Status report, Soldier.', '0', '0', '0', '0', '0', '0', '0', '0', 'Copy that, Araxes. Backup is on the way. Hold your position. I repeat, Hold your Position', 'Ameer, Over and out.', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('21024', 'It is here that Gul`dan severed the tie between orcs and elemental spirits. His unquenchable thirst for power could not be satiated with the complete annihilation of the draenei. He had to also destroy Draenor, razing the land and siphoning all of its energies for use in his war.  Npw all that is left are remnants of his madness.   Look to the altar, night elf - the land is forever haunted......', null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0', null, null, '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('22990', 'Be wary, friends. The Betrayer meditates in the court just beyond.', 'Be wary, friends. The Betrayer meditates in the court just beyond.', '0', '1', '0', '0', '0', '0', '0', '0', ' ', ' ', '0', '0', '0', '0', '0', '0', '0', '0', ' ', ' ', '0', '0', '0', '0', '0', '0', '0', '0', ' ', ' ', '0', '0', '0', '0', '0', '0', '0', '0', ' ', ' ', '0', '0', '0', '0', '0', '0', '0', '0', ' ', ' ', '0', '0', '0', '0', '0', '0', '0', '0', ' ', ' ', '0', '0', '0', '0', '0', '0', '0', '0', ' ', ' ', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9014', 'Greetings, young shaman.  Make yourself at home within my reef.', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9015', 'Together we will deal with this corruption of the water.', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8801', '', 'Is this city not beautiful, $c?  It warms my heart that we have found such good friends in these night elves.', '0', '0', '6', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('9016', 'You have done a great thing, $N.  You are welcome here at any time.', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('11018', 'We cannot thank you enough for everything you\'ve done to protect our family, $N.$B$BAnd, you do realize that we were joking before when we offered to sell you one of our sons?  No, really... although we do feel a couple more headaches coming on.$B$BJunior, be still, will you?!', '', '0', '0', '2', '0', '6', '0', '15', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('12507', '', 'This world has been damaged in ways beyond what our eyes can see.  Even the passage of time feels different somehow.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '255', '0', '0', '0', '0', '0', '0', '0');

-- gos, 36 gameobjects
REPLACE INTO `gameobject_template` VALUES ('21511', '0', '0', 'Lashh\'an Spell Circle', '', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180669', '8', '6434', 'Swirling Maelstrom', '', '0', '0', '1', '1349', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('181374', '1', '6678', 'Necropolis (scale 2.0)', '', '0', '0', '1', '0', '0', '0', '181214', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('181373', '1', '6678', 'Necropolis (scale 1.5)', '', '0', '0', '1', '0', '0', '0', '181214', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('176110', '6', '10', 'Dawn\'s Gambit', '', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('211023', '2', '1327', 'Black Portal', '', '0', '40', '0.75', '0', '76', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('211036', '8', '731', 'Fire Totem', '', '0', '0', '0.75', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('211050', '27', '5491', 'Teleport-Stone to Hyjal', '', '0', '40', '1', '5242', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('178400', '8', '0', 'Maraudon Portal', '', '0', '0', '1', '1103', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('3881', '8', '351', 'Blazing Fire', '', '0', '0', '1', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('3884', '8', '351', 'Blazing Fire', '', '0', '0', '1', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180430', '1', '2570', 'Brazier of Madness - Inert', '', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('3880', '8', '351', 'Blazing Fire', '', '0', '0', '1', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('3882', '8', '349', 'Blazing Fire', '', '0', '0', '1', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('3879', '8', '351', 'Blazing Fire', '', '0', '0', '1', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('3869', '8', '349', 'Mighty Blaze', '', '0', '0', '1', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('3867', '8', '349', 'Mighty Blaze', '', '0', '0', '1', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('15885', '8', '9262', 'Shrine Of Remulos', '', '0', '0', '0.5', '1043', '30', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180654', '3', '5333', 'Hardpacked Snowdrift', '', '0', '0', '1', '43', '17489', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('181083', '3', '10', 'Sothos and Jarien\'s Heirlooms', '', '0', '0', '1', '57', '17919', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('180246', '5', '3013', 'Zul\'s Aura', '', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('181051', '5', '6661', 'Brazier of Invocation', '', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('181058', '5', '6663', 'Banner of Provocation', '', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('181260', '8', '0', 'Scorched Grove Runestone', '', '0', '0', '1', '1401', '35', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('184750', '8', '0', 'Unguarded Summoning Site', '', '0', '0', '1', '1448', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('142698', '8', '0', 'Witherbark Village', '', '0', '0', '1', '303', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('179676', '5', '410', 'Fel Fire', '', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('178726', '10', '5311', 'Ichman\'s Beacon', '', '0', '0', '1', '99', '0', '7320', '196608', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
-- REPLACE INTO `gameobject_template` VALUES ('176345', '3', '10', 'Document Chest', '', '0', '4', '1.5', '93', '176345', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
-- REPLACE INTO `gameobject_template` VALUES ('176347', '3', '10', 'Document Chest', '', '0', '4', '1.5', '93', '176347', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('185856', '5', '7376', 'Fetish of Sar\'this', '', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('185907', '6', '5931', 'Southfury Speed Buff', '', '0', '0', '1', '0', '0', '5', '40571', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('187116', '5', '7629', 'Monument to the Fallen', '', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('187113', '19', '6870', 'Mailbox', '', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('187114', '5', '7591', 'Alchemy Table', '', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('187055', '10', '1327', 'Spectral Rift (temp)', '', '0', '0', '1', '57', '0', '0', '0', '0', '0', '1000', '0', '0', '0', '44870', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('185223', '8', '211', 'Force Commander Gorax\'s Corpse', '', '0', '0', '1', '1446', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');
REPLACE INTO `gameobject_template` VALUES ('187072', '3', '271', 'Razorthorn Root', '', '0', '0', '0.3', '57', '187072', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');

-- 3 spell_teleports:
REPLACE INTO `spell_teleport` VALUES ('44870', '530', '12804', '-6908', '41.1', '2.21'); 
REPLACE INTO `spell_teleport` VALUES ('34661', '553', '5.03811', '593.451', '-15.1414', '4.68254'); 
REPLACE INTO `spell_teleport` VALUES ('45038', '530', '833.319', '2512.91', '292.2', '0.535559'); 

-- 700 pet_levelstats:
REPLACE INTO `pet_levelstats` VALUES ('17252', '70', '9250', '2090', '0', '152', '39', '102', '334', '360');
REPLACE INTO `pet_levelstats` VALUES ('17252', '69', '9022', '2071', '0', '149', '38', '100', '327', '350');
REPLACE INTO `pet_levelstats` VALUES ('17252', '68', '8799', '2052', '0', '146', '38', '99', '320', '340');
REPLACE INTO `pet_levelstats` VALUES ('17252', '67', '8576', '2032', '0', '143', '37', '97', '313', '330');
REPLACE INTO `pet_levelstats` VALUES ('17252', '66', '8353', '2013', '0', '140', '37', '96', '306', '320');
REPLACE INTO `pet_levelstats` VALUES ('17252', '65', '8130', '1994', '0', '137', '37', '94', '299', '310');
REPLACE INTO `pet_levelstats` VALUES ('17252', '64', '7907', '1975', '0', '134', '36', '93', '292', '300');
REPLACE INTO `pet_levelstats` VALUES ('17252', '63', '7684', '1956', '0', '131', '36', '91', '285', '290');
REPLACE INTO `pet_levelstats` VALUES ('17252', '62', '7461', '1937', '0', '128', '36', '89', '278', '280');
REPLACE INTO `pet_levelstats` VALUES ('17252', '61', '7238', '1918', '0', '125', '35', '88', '271', '270');
REPLACE INTO `pet_levelstats` VALUES ('17252', '60', '7015', '1898', '0', '122', '35', '86', '264', '260');
REPLACE INTO `pet_levelstats` VALUES ('17252', '59', '6792', '1878', '0', '120', '34', '84', '257', '250');
REPLACE INTO `pet_levelstats` VALUES ('17252', '58', '6569', '1859', '0', '117', '34', '83', '250', '240');
REPLACE INTO `pet_levelstats` VALUES ('17252', '57', '6346', '1839', '0', '115', '33', '81', '243', '230');
REPLACE INTO `pet_levelstats` VALUES ('17252', '56', '6123', '1820', '0', '113', '33', '80', '236', '220');
REPLACE INTO `pet_levelstats` VALUES ('17252', '55', '5900', '1801', '0', '111', '33', '78', '229', '210');
REPLACE INTO `pet_levelstats` VALUES ('17252', '54', '5677', '1781', '0', '109', '32', '77', '222', '200');
REPLACE INTO `pet_levelstats` VALUES ('17252', '53', '5454', '1762', '0', '107', '32', '75', '215', '190');
REPLACE INTO `pet_levelstats` VALUES ('17252', '52', '5231', '1743', '0', '105', '32', '74', '208', '180');
REPLACE INTO `pet_levelstats` VALUES ('17252', '51', '5008', '1723', '0', '103', '31', '72', '201', '170');
REPLACE INTO `pet_levelstats` VALUES ('17252', '50', '4785', '1704', '0', '101', '31', '71', '194', '160');
REPLACE INTO `pet_levelstats` VALUES ('17252', '49', '672', '1685', '0', '99', '31', '70', '188', '155');
REPLACE INTO `pet_levelstats` VALUES ('17252', '48', '649', '1627', '0', '96', '30', '68', '184', '152');
REPLACE INTO `pet_levelstats` VALUES ('17252', '47', '627', '1570', '0', '93', '30', '67', '181', '151');
REPLACE INTO `pet_levelstats` VALUES ('17252', '46', '605', '1514', '0', '91', '30', '66', '177', '149');
REPLACE INTO `pet_levelstats` VALUES ('17252', '45', '582', '1458', '0', '88', '29', '64', '174', '148');
REPLACE INTO `pet_levelstats` VALUES ('17252', '44', '560', '1402', '0', '86', '29', '63', '170', '147');
REPLACE INTO `pet_levelstats` VALUES ('17252', '43', '538', '1346', '0', '83', '29', '62', '167', '145');
REPLACE INTO `pet_levelstats` VALUES ('17252', '42', '516', '1290', '0', '80', '29', '60', '163', '144');
REPLACE INTO `pet_levelstats` VALUES ('17252', '41', '493', '1234', '0', '78', '28', '59', '160', '143');
REPLACE INTO `pet_levelstats` VALUES ('17252', '40', '471', '1178', '0', '75', '28', '58', '156', '142');
REPLACE INTO `pet_levelstats` VALUES ('17252', '39', '449', '1122', '0', '73', '28', '56', '153', '141');
REPLACE INTO `pet_levelstats` VALUES ('17252', '38', '427', '1066', '0', '70', '28', '55', '149', '139');
REPLACE INTO `pet_levelstats` VALUES ('17252', '37', '404', '1010', '0', '67', '27', '54', '146', '138');
REPLACE INTO `pet_levelstats` VALUES ('17252', '36', '382', '954', '0', '65', '27', '52', '142', '137');
REPLACE INTO `pet_levelstats` VALUES ('17252', '35', '360', '898', '0', '62', '27', '51', '139', '136');
REPLACE INTO `pet_levelstats` VALUES ('17252', '34', '338', '842', '0', '60', '27', '50', '136', '135');
REPLACE INTO `pet_levelstats` VALUES ('17252', '33', '324', '807', '0', '58', '27', '48', '132', '131');
REPLACE INTO `pet_levelstats` VALUES ('17252', '32', '312', '772', '0', '57', '26', '47', '128', '128');
REPLACE INTO `pet_levelstats` VALUES ('17252', '31', '299', '734', '0', '55', '26', '46', '124', '123');
REPLACE INTO `pet_levelstats` VALUES ('17252', '30', '287', '702', '0', '54', '26', '45', '120', '118');
REPLACE INTO `pet_levelstats` VALUES ('17252', '29', '274', '667', '0', '52', '26', '44', '114', '114');
REPLACE INTO `pet_levelstats` VALUES ('17252', '28', '262', '632', '0', '51', '25', '44', '109', '110');
REPLACE INTO `pet_levelstats` VALUES ('17252', '27', '249', '598', '0', '50', '25', '42', '102', '104');
REPLACE INTO `pet_levelstats` VALUES ('17252', '26', '237', '568', '0', '48', '25', '43', '98', '100');
REPLACE INTO `pet_levelstats` VALUES ('17252', '25', '224', '539', '0', '47', '25', '43', '94', '95');
REPLACE INTO `pet_levelstats` VALUES ('17252', '24', '212', '514', '0', '46', '25', '42', '94', '90');
REPLACE INTO `pet_levelstats` VALUES ('17252', '23', '202', '486', '0', '45', '24', '40', '95', '86');
REPLACE INTO `pet_levelstats` VALUES ('17252', '22', '193', '458', '0', '44', '24', '39', '91', '82');
REPLACE INTO `pet_levelstats` VALUES ('17252', '21', '184', '430', '0', '42', '24', '37', '87', '78');
REPLACE INTO `pet_levelstats` VALUES ('17252', '20', '175', '402', '0', '40', '24', '35', '74', '74');
REPLACE INTO `pet_levelstats` VALUES ('17252', '19', '165', '374', '0', '38', '23', '33', '70', '69');
REPLACE INTO `pet_levelstats` VALUES ('17252', '18', '156', '346', '0', '37', '23', '32', '65', '65');
REPLACE INTO `pet_levelstats` VALUES ('17252', '17', '147', '318', '0', '36', '23', '31', '61', '60');
REPLACE INTO `pet_levelstats` VALUES ('17252', '16', '138', '290', '0', '34', '23', '30', '57', '56');
REPLACE INTO `pet_levelstats` VALUES ('17252', '15', '129', '262', '0', '32', '23', '29', '54', '52');
REPLACE INTO `pet_levelstats` VALUES ('17252', '14', '120', '234', '0', '31', '22', '28', '50', '47');
REPLACE INTO `pet_levelstats` VALUES ('17252', '13', '91', '198', '0', '30', '22', '26', '44', '43');
REPLACE INTO `pet_levelstats` VALUES ('17252', '12', '83', '177', '0', '29', '22', '26', '41', '39');
REPLACE INTO `pet_levelstats` VALUES ('17252', '11', '75', '151', '0', '28', '22', '24', '37', '35');
REPLACE INTO `pet_levelstats` VALUES ('17252', '10', '64', '126', '0', '27', '22', '24', '33', '31');
REPLACE INTO `pet_levelstats` VALUES ('17252', '9', '58', '116', '0', '27', '21', '23', '32', '30');
REPLACE INTO `pet_levelstats` VALUES ('17252', '8', '52', '105', '0', '26', '21', '23', '31', '29');
REPLACE INTO `pet_levelstats` VALUES ('17252', '7', '46', '95', '0', '25', '21', '23', '30', '28');
REPLACE INTO `pet_levelstats` VALUES ('17252', '6', '40', '85', '0', '24', '21', '22', '29', '27');
REPLACE INTO `pet_levelstats` VALUES ('17252', '5', '34', '76', '0', '23', '21', '22', '28', '27');
REPLACE INTO `pet_levelstats` VALUES ('17252', '4', '29', '67', '0', '23', '21', '21', '27', '26');
REPLACE INTO `pet_levelstats` VALUES ('17252', '3', '24', '58', '0', '22', '20', '21', '26', '25');
REPLACE INTO `pet_levelstats` VALUES ('17252', '2', '19', '49', '0', '21', '20', '20', '25', '24');
REPLACE INTO `pet_levelstats` VALUES ('17252', '1', '14', '40', '0', '20', '20', '20', '24', '23');
REPLACE INTO `pet_levelstats` VALUES ('14385', '1', '48', '80', '10', '20', '16', '13', '20', '8');
REPLACE INTO `pet_levelstats` VALUES ('14385', '2', '105', '106', '67', '22', '17', '14', '21', '9');
REPLACE INTO `pet_levelstats` VALUES ('14385', '3', '162', '132', '124', '24', '18', '15', '22', '10');
REPLACE INTO `pet_levelstats` VALUES ('14385', '4', '219', '158', '181', '26', '19', '16', '23', '11');
REPLACE INTO `pet_levelstats` VALUES ('14385', '5', '276', '184', '238', '28', '20', '17', '24', '12');
REPLACE INTO `pet_levelstats` VALUES ('14385', '6', '333', '210', '295', '30', '21', '18', '25', '13');
REPLACE INTO `pet_levelstats` VALUES ('14385', '7', '390', '236', '352', '32', '22', '19', '26', '14');
REPLACE INTO `pet_levelstats` VALUES ('14385', '8', '447', '262', '409', '34', '23', '20', '27', '15');
REPLACE INTO `pet_levelstats` VALUES ('14385', '9', '504', '288', '466', '36', '24', '21', '28', '16');
REPLACE INTO `pet_levelstats` VALUES ('14385', '10', '561', '314', '523', '38', '25', '22', '29', '17');
REPLACE INTO `pet_levelstats` VALUES ('14385', '11', '618', '340', '580', '40', '26', '23', '30', '18');
REPLACE INTO `pet_levelstats` VALUES ('14385', '12', '675', '366', '637', '42', '27', '24', '31', '19');
REPLACE INTO `pet_levelstats` VALUES ('14385', '13', '732', '392', '694', '44', '28', '25', '32', '20');
REPLACE INTO `pet_levelstats` VALUES ('14385', '14', '789', '418', '751', '46', '29', '26', '33', '21');
REPLACE INTO `pet_levelstats` VALUES ('14385', '15', '846', '444', '808', '48', '30', '27', '34', '22');
REPLACE INTO `pet_levelstats` VALUES ('14385', '16', '903', '470', '865', '50', '31', '28', '35', '23');
REPLACE INTO `pet_levelstats` VALUES ('14385', '17', '960', '496', '922', '52', '32', '29', '36', '24');
REPLACE INTO `pet_levelstats` VALUES ('14385', '18', '1017', '522', '979', '54', '33', '30', '37', '25');
REPLACE INTO `pet_levelstats` VALUES ('14385', '19', '1074', '548', '1036', '56', '34', '31', '38', '26');
REPLACE INTO `pet_levelstats` VALUES ('14385', '20', '1131', '574', '1093', '58', '35', '32', '39', '27');
REPLACE INTO `pet_levelstats` VALUES ('14385', '21', '1188', '600', '1150', '60', '36', '33', '40', '28');
REPLACE INTO `pet_levelstats` VALUES ('14385', '22', '1245', '626', '1207', '62', '37', '34', '41', '29');
REPLACE INTO `pet_levelstats` VALUES ('14385', '23', '1302', '652', '1264', '64', '38', '35', '42', '30');
REPLACE INTO `pet_levelstats` VALUES ('14385', '24', '1359', '678', '1321', '66', '39', '36', '43', '31');
REPLACE INTO `pet_levelstats` VALUES ('14385', '25', '1416', '704', '1378', '68', '40', '37', '44', '32');
REPLACE INTO `pet_levelstats` VALUES ('14385', '26', '1473', '730', '1435', '70', '41', '38', '45', '33');
REPLACE INTO `pet_levelstats` VALUES ('14385', '27', '1530', '756', '1492', '72', '42', '39', '46', '34');
REPLACE INTO `pet_levelstats` VALUES ('14385', '28', '1587', '782', '1549', '74', '43', '40', '47', '35');
REPLACE INTO `pet_levelstats` VALUES ('14385', '29', '1644', '808', '1606', '76', '44', '41', '48', '36');
REPLACE INTO `pet_levelstats` VALUES ('14385', '30', '1701', '834', '1663', '78', '45', '42', '49', '37');
REPLACE INTO `pet_levelstats` VALUES ('14385', '31', '1758', '860', '1720', '80', '46', '43', '50', '38');
REPLACE INTO `pet_levelstats` VALUES ('14385', '32', '1815', '886', '1777', '82', '47', '44', '51', '39');
REPLACE INTO `pet_levelstats` VALUES ('14385', '33', '1872', '912', '1834', '84', '48', '45', '52', '40');
REPLACE INTO `pet_levelstats` VALUES ('14385', '34', '1929', '938', '1891', '86', '49', '46', '53', '41');
REPLACE INTO `pet_levelstats` VALUES ('14385', '35', '1986', '964', '1948', '88', '50', '47', '54', '42');
REPLACE INTO `pet_levelstats` VALUES ('14385', '36', '2043', '990', '2005', '90', '51', '48', '55', '43');
REPLACE INTO `pet_levelstats` VALUES ('14385', '37', '2100', '1016', '2062', '92', '52', '49', '56', '44');
REPLACE INTO `pet_levelstats` VALUES ('14385', '38', '2157', '1042', '2119', '94', '53', '50', '57', '45');
REPLACE INTO `pet_levelstats` VALUES ('14385', '39', '2214', '1068', '2176', '96', '54', '51', '58', '46');
REPLACE INTO `pet_levelstats` VALUES ('14385', '40', '2271', '1094', '2233', '98', '55', '52', '59', '47');
REPLACE INTO `pet_levelstats` VALUES ('14385', '41', '2328', '1120', '2290', '100', '56', '53', '60', '48');
REPLACE INTO `pet_levelstats` VALUES ('14385', '42', '2385', '1146', '2347', '102', '57', '54', '61', '49');
REPLACE INTO `pet_levelstats` VALUES ('14385', '43', '2442', '1172', '2404', '104', '58', '55', '62', '50');
REPLACE INTO `pet_levelstats` VALUES ('14385', '44', '2499', '1198', '2461', '106', '59', '56', '63', '51');
REPLACE INTO `pet_levelstats` VALUES ('14385', '45', '2556', '1224', '2518', '108', '60', '57', '64', '52');
REPLACE INTO `pet_levelstats` VALUES ('14385', '46', '2613', '1250', '2575', '110', '61', '58', '65', '53');
REPLACE INTO `pet_levelstats` VALUES ('14385', '47', '2670', '1276', '2632', '112', '62', '59', '66', '54');
REPLACE INTO `pet_levelstats` VALUES ('14385', '48', '2727', '1302', '2689', '114', '63', '60', '67', '55');
REPLACE INTO `pet_levelstats` VALUES ('14385', '49', '2784', '1328', '2746', '116', '64', '61', '68', '56');
REPLACE INTO `pet_levelstats` VALUES ('14385', '50', '2841', '1354', '2803', '118', '65', '62', '69', '57');
REPLACE INTO `pet_levelstats` VALUES ('14385', '51', '2898', '1380', '2860', '120', '66', '63', '70', '58');
REPLACE INTO `pet_levelstats` VALUES ('14385', '52', '2955', '1406', '2917', '122', '67', '64', '71', '59');
REPLACE INTO `pet_levelstats` VALUES ('14385', '53', '3012', '1432', '2974', '124', '68', '65', '72', '60');
REPLACE INTO `pet_levelstats` VALUES ('14385', '54', '3069', '1458', '3031', '126', '69', '66', '73', '61');
REPLACE INTO `pet_levelstats` VALUES ('14385', '55', '3126', '1484', '3088', '128', '70', '67', '74', '62');
REPLACE INTO `pet_levelstats` VALUES ('14385', '56', '3183', '1510', '3145', '130', '71', '68', '75', '63');
REPLACE INTO `pet_levelstats` VALUES ('14385', '57', '3240', '1536', '3202', '132', '72', '69', '76', '64');
REPLACE INTO `pet_levelstats` VALUES ('14385', '58', '3297', '1562', '3259', '134', '73', '70', '77', '65');
REPLACE INTO `pet_levelstats` VALUES ('14385', '59', '3354', '1588', '3316', '136', '74', '71', '78', '66');
REPLACE INTO `pet_levelstats` VALUES ('14385', '60', '3411', '1614', '3373', '138', '75', '72', '79', '67');
REPLACE INTO `pet_levelstats` VALUES ('14385', '61', '3468', '1640', '3430', '140', '76', '73', '80', '68');
REPLACE INTO `pet_levelstats` VALUES ('14385', '62', '3525', '1666', '3487', '142', '77', '74', '81', '69');
REPLACE INTO `pet_levelstats` VALUES ('14385', '63', '3582', '1692', '3544', '144', '78', '75', '82', '70');
REPLACE INTO `pet_levelstats` VALUES ('14385', '64', '3639', '1718', '3601', '146', '79', '76', '83', '71');
REPLACE INTO `pet_levelstats` VALUES ('14385', '65', '3696', '1744', '3658', '148', '80', '77', '84', '72');
REPLACE INTO `pet_levelstats` VALUES ('14385', '66', '3753', '1770', '3715', '150', '81', '78', '85', '73');
REPLACE INTO `pet_levelstats` VALUES ('14385', '67', '3810', '1796', '3772', '152', '82', '79', '86', '74');
REPLACE INTO `pet_levelstats` VALUES ('14385', '68', '3867', '1822', '3829', '154', '83', '80', '87', '75');
REPLACE INTO `pet_levelstats` VALUES ('14385', '69', '3924', '1848', '3886', '156', '84', '81', '88', '76');
REPLACE INTO `pet_levelstats` VALUES ('14385', '70', '3981', '1874', '3943', '158', '85', '82', '89', '77');
REPLACE INTO `pet_levelstats` VALUES ('3450', '1', '14', '40', '0', '20', '20', '20', '24', '23');
REPLACE INTO `pet_levelstats` VALUES ('3450', '2', '19', '49', '0', '21', '20', '20', '25', '24');
REPLACE INTO `pet_levelstats` VALUES ('3450', '3', '24', '58', '0', '22', '20', '21', '26', '25');
REPLACE INTO `pet_levelstats` VALUES ('3450', '4', '29', '67', '0', '23', '21', '21', '27', '26');
REPLACE INTO `pet_levelstats` VALUES ('3450', '5', '34', '76', '0', '23', '21', '22', '28', '27');
REPLACE INTO `pet_levelstats` VALUES ('3450', '6', '40', '85', '0', '24', '21', '22', '29', '27');
REPLACE INTO `pet_levelstats` VALUES ('3450', '7', '46', '95', '0', '25', '21', '23', '30', '28');
REPLACE INTO `pet_levelstats` VALUES ('3450', '8', '52', '105', '0', '26', '21', '23', '31', '29');
REPLACE INTO `pet_levelstats` VALUES ('3450', '9', '58', '116', '0', '27', '21', '23', '32', '30');
REPLACE INTO `pet_levelstats` VALUES ('3450', '10', '64', '126', '0', '27', '22', '24', '33', '31');
REPLACE INTO `pet_levelstats` VALUES ('3450', '11', '75', '151', '0', '28', '22', '24', '37', '35');
REPLACE INTO `pet_levelstats` VALUES ('3450', '12', '83', '177', '0', '29', '22', '26', '41', '39');
REPLACE INTO `pet_levelstats` VALUES ('3450', '13', '91', '198', '0', '30', '22', '26', '44', '43');
REPLACE INTO `pet_levelstats` VALUES ('3450', '14', '120', '234', '0', '31', '22', '28', '50', '47');
REPLACE INTO `pet_levelstats` VALUES ('3450', '15', '129', '262', '0', '32', '23', '29', '54', '52');
REPLACE INTO `pet_levelstats` VALUES ('3450', '16', '138', '290', '0', '34', '23', '30', '57', '56');
REPLACE INTO `pet_levelstats` VALUES ('3450', '17', '147', '318', '0', '36', '23', '31', '61', '60');
REPLACE INTO `pet_levelstats` VALUES ('3450', '18', '156', '346', '0', '37', '23', '32', '65', '65');
REPLACE INTO `pet_levelstats` VALUES ('3450', '19', '165', '374', '0', '38', '23', '33', '70', '69');
REPLACE INTO `pet_levelstats` VALUES ('3450', '20', '175', '402', '0', '40', '24', '35', '74', '74');
REPLACE INTO `pet_levelstats` VALUES ('3450', '21', '184', '430', '0', '42', '24', '37', '87', '78');
REPLACE INTO `pet_levelstats` VALUES ('3450', '22', '193', '458', '0', '44', '24', '39', '91', '82');
REPLACE INTO `pet_levelstats` VALUES ('3450', '23', '202', '486', '0', '45', '24', '40', '95', '86');
REPLACE INTO `pet_levelstats` VALUES ('3450', '24', '212', '514', '0', '46', '25', '42', '94', '90');
REPLACE INTO `pet_levelstats` VALUES ('3450', '25', '224', '539', '0', '47', '25', '43', '94', '95');
REPLACE INTO `pet_levelstats` VALUES ('3450', '26', '237', '568', '0', '48', '25', '43', '98', '100');
REPLACE INTO `pet_levelstats` VALUES ('3450', '27', '249', '598', '0', '50', '25', '42', '102', '104');
REPLACE INTO `pet_levelstats` VALUES ('3450', '28', '262', '632', '0', '51', '25', '44', '109', '110');
REPLACE INTO `pet_levelstats` VALUES ('3450', '29', '274', '667', '0', '52', '26', '44', '114', '114');
REPLACE INTO `pet_levelstats` VALUES ('3450', '30', '287', '702', '0', '54', '26', '45', '120', '118');
REPLACE INTO `pet_levelstats` VALUES ('3450', '31', '299', '734', '0', '55', '26', '46', '124', '123');
REPLACE INTO `pet_levelstats` VALUES ('3450', '32', '312', '772', '0', '57', '26', '47', '128', '128');
REPLACE INTO `pet_levelstats` VALUES ('3450', '33', '324', '807', '0', '58', '27', '48', '132', '131');
REPLACE INTO `pet_levelstats` VALUES ('3450', '34', '338', '842', '0', '60', '27', '50', '136', '135');
REPLACE INTO `pet_levelstats` VALUES ('3450', '35', '360', '898', '0', '62', '27', '51', '139', '136');
REPLACE INTO `pet_levelstats` VALUES ('3450', '36', '382', '954', '0', '65', '27', '52', '142', '137');
REPLACE INTO `pet_levelstats` VALUES ('3450', '37', '404', '1010', '0', '67', '27', '54', '146', '138');
REPLACE INTO `pet_levelstats` VALUES ('3450', '38', '427', '1066', '0', '70', '28', '55', '149', '139');
REPLACE INTO `pet_levelstats` VALUES ('3450', '39', '449', '1122', '0', '73', '28', '56', '153', '141');
REPLACE INTO `pet_levelstats` VALUES ('3450', '40', '471', '1178', '0', '75', '28', '58', '156', '142');
REPLACE INTO `pet_levelstats` VALUES ('3450', '41', '493', '1234', '0', '78', '28', '59', '160', '143');
REPLACE INTO `pet_levelstats` VALUES ('3450', '42', '516', '1290', '0', '80', '29', '60', '163', '144');
REPLACE INTO `pet_levelstats` VALUES ('3450', '43', '538', '1346', '0', '83', '29', '62', '167', '145');
REPLACE INTO `pet_levelstats` VALUES ('3450', '44', '560', '1402', '0', '86', '29', '63', '170', '147');
REPLACE INTO `pet_levelstats` VALUES ('3450', '45', '582', '1458', '0', '88', '29', '64', '174', '148');
REPLACE INTO `pet_levelstats` VALUES ('3450', '46', '605', '1514', '0', '91', '30', '66', '177', '149');
REPLACE INTO `pet_levelstats` VALUES ('3450', '47', '627', '1570', '0', '93', '30', '67', '181', '151');
REPLACE INTO `pet_levelstats` VALUES ('3450', '48', '649', '1627', '0', '96', '30', '68', '184', '152');
REPLACE INTO `pet_levelstats` VALUES ('3450', '49', '672', '1685', '0', '99', '31', '70', '188', '155');
REPLACE INTO `pet_levelstats` VALUES ('3450', '50', '694', '1704', '0', '101', '31', '71', '194', '160');
REPLACE INTO `pet_levelstats` VALUES ('3450', '51', '716', '1723', '0', '103', '31', '72', '201', '170');
REPLACE INTO `pet_levelstats` VALUES ('3450', '52', '738', '1743', '0', '105', '32', '74', '208', '180');
REPLACE INTO `pet_levelstats` VALUES ('3450', '53', '761', '1762', '0', '107', '32', '75', '215', '190');
REPLACE INTO `pet_levelstats` VALUES ('3450', '54', '783', '1781', '0', '109', '32', '77', '222', '200');
REPLACE INTO `pet_levelstats` VALUES ('3450', '55', '805', '1801', '0', '111', '33', '78', '229', '210');
REPLACE INTO `pet_levelstats` VALUES ('3450', '56', '827', '1820', '0', '113', '33', '80', '236', '220');
REPLACE INTO `pet_levelstats` VALUES ('3450', '57', '850', '1839', '0', '115', '33', '81', '243', '230');
REPLACE INTO `pet_levelstats` VALUES ('3450', '58', '872', '1859', '0', '117', '34', '83', '250', '240');
REPLACE INTO `pet_levelstats` VALUES ('3450', '59', '894', '1878', '0', '120', '34', '84', '257', '250');
REPLACE INTO `pet_levelstats` VALUES ('3450', '60', '917', '1898', '0', '122', '35', '86', '264', '260');
REPLACE INTO `pet_levelstats` VALUES ('3450', '61', '939', '1918', '0', '125', '35', '88', '271', '270');
REPLACE INTO `pet_levelstats` VALUES ('3450', '62', '961', '1937', '0', '128', '36', '89', '278', '280');
REPLACE INTO `pet_levelstats` VALUES ('3450', '63', '983', '1956', '0', '131', '36', '91', '285', '290');
REPLACE INTO `pet_levelstats` VALUES ('3450', '64', '1005', '1975', '0', '134', '36', '93', '292', '300');
REPLACE INTO `pet_levelstats` VALUES ('3450', '65', '1027', '1994', '0', '137', '37', '94', '299', '310');
REPLACE INTO `pet_levelstats` VALUES ('3450', '66', '1049', '2013', '0', '140', '37', '96', '306', '320');
REPLACE INTO `pet_levelstats` VALUES ('3450', '67', '1072', '2032', '0', '143', '37', '97', '313', '330');
REPLACE INTO `pet_levelstats` VALUES ('3450', '68', '1094', '2052', '0', '146', '38', '99', '320', '340');
REPLACE INTO `pet_levelstats` VALUES ('3450', '69', '1126', '2071', '0', '149', '38', '100', '327', '350');
REPLACE INTO `pet_levelstats` VALUES ('3450', '70', '1149', '2090', '0', '152', '39', '102', '334', '360');
REPLACE INTO `pet_levelstats` VALUES ('8996', '1', '14', '40', '0', '20', '20', '20', '24', '23');
REPLACE INTO `pet_levelstats` VALUES ('8996', '2', '19', '49', '0', '21', '20', '20', '25', '24');
REPLACE INTO `pet_levelstats` VALUES ('8996', '3', '24', '58', '0', '22', '20', '21', '26', '25');
REPLACE INTO `pet_levelstats` VALUES ('8996', '4', '29', '67', '0', '23', '21', '21', '27', '26');
REPLACE INTO `pet_levelstats` VALUES ('8996', '5', '34', '76', '0', '23', '21', '22', '28', '27');
REPLACE INTO `pet_levelstats` VALUES ('8996', '6', '40', '85', '0', '24', '21', '22', '29', '27');
REPLACE INTO `pet_levelstats` VALUES ('8996', '7', '46', '95', '0', '25', '21', '23', '30', '28');
REPLACE INTO `pet_levelstats` VALUES ('8996', '8', '52', '105', '0', '26', '21', '23', '31', '29');
REPLACE INTO `pet_levelstats` VALUES ('8996', '9', '58', '116', '0', '27', '21', '23', '32', '30');
REPLACE INTO `pet_levelstats` VALUES ('8996', '10', '64', '126', '0', '27', '22', '24', '33', '31');
REPLACE INTO `pet_levelstats` VALUES ('8996', '11', '75', '151', '0', '28', '22', '24', '37', '35');
REPLACE INTO `pet_levelstats` VALUES ('8996', '12', '83', '177', '0', '29', '22', '26', '41', '39');
REPLACE INTO `pet_levelstats` VALUES ('8996', '13', '91', '198', '0', '30', '22', '26', '44', '43');
REPLACE INTO `pet_levelstats` VALUES ('8996', '14', '120', '234', '0', '31', '22', '28', '50', '47');
REPLACE INTO `pet_levelstats` VALUES ('8996', '15', '129', '262', '0', '32', '23', '29', '54', '52');
REPLACE INTO `pet_levelstats` VALUES ('8996', '16', '138', '290', '0', '34', '23', '30', '57', '56');
REPLACE INTO `pet_levelstats` VALUES ('8996', '17', '147', '318', '0', '36', '23', '31', '61', '60');
REPLACE INTO `pet_levelstats` VALUES ('8996', '18', '156', '346', '0', '37', '23', '32', '65', '65');
REPLACE INTO `pet_levelstats` VALUES ('8996', '19', '165', '374', '0', '38', '23', '33', '70', '69');
REPLACE INTO `pet_levelstats` VALUES ('8996', '20', '175', '402', '0', '40', '24', '35', '74', '74');
REPLACE INTO `pet_levelstats` VALUES ('8996', '21', '184', '430', '0', '42', '24', '37', '87', '78');
REPLACE INTO `pet_levelstats` VALUES ('8996', '22', '193', '458', '0', '44', '24', '39', '91', '82');
REPLACE INTO `pet_levelstats` VALUES ('8996', '23', '202', '486', '0', '45', '24', '40', '95', '86');
REPLACE INTO `pet_levelstats` VALUES ('8996', '24', '212', '514', '0', '46', '25', '42', '94', '90');
REPLACE INTO `pet_levelstats` VALUES ('8996', '25', '224', '539', '0', '47', '25', '43', '94', '95');
REPLACE INTO `pet_levelstats` VALUES ('8996', '26', '237', '568', '0', '48', '25', '43', '98', '100');
REPLACE INTO `pet_levelstats` VALUES ('8996', '27', '249', '598', '0', '50', '25', '42', '102', '104');
REPLACE INTO `pet_levelstats` VALUES ('8996', '28', '262', '632', '0', '51', '25', '44', '109', '110');
REPLACE INTO `pet_levelstats` VALUES ('8996', '29', '274', '667', '0', '52', '26', '44', '114', '114');
REPLACE INTO `pet_levelstats` VALUES ('8996', '30', '287', '702', '0', '54', '26', '45', '120', '118');
REPLACE INTO `pet_levelstats` VALUES ('8996', '31', '299', '734', '0', '55', '26', '46', '124', '123');
REPLACE INTO `pet_levelstats` VALUES ('8996', '32', '312', '772', '0', '57', '26', '47', '128', '128');
REPLACE INTO `pet_levelstats` VALUES ('8996', '33', '324', '807', '0', '58', '27', '48', '132', '131');
REPLACE INTO `pet_levelstats` VALUES ('8996', '34', '338', '842', '0', '60', '27', '50', '136', '135');
REPLACE INTO `pet_levelstats` VALUES ('8996', '35', '360', '898', '0', '62', '27', '51', '139', '136');
REPLACE INTO `pet_levelstats` VALUES ('8996', '36', '382', '954', '0', '65', '27', '52', '142', '137');
REPLACE INTO `pet_levelstats` VALUES ('8996', '37', '404', '1010', '0', '67', '27', '54', '146', '138');
REPLACE INTO `pet_levelstats` VALUES ('8996', '38', '427', '1066', '0', '70', '28', '55', '149', '139');
REPLACE INTO `pet_levelstats` VALUES ('8996', '39', '449', '1122', '0', '73', '28', '56', '153', '141');
REPLACE INTO `pet_levelstats` VALUES ('8996', '40', '471', '1178', '0', '75', '28', '58', '156', '142');
REPLACE INTO `pet_levelstats` VALUES ('8996', '41', '493', '1234', '0', '78', '28', '59', '160', '143');
REPLACE INTO `pet_levelstats` VALUES ('8996', '42', '516', '1290', '0', '80', '29', '60', '163', '144');
REPLACE INTO `pet_levelstats` VALUES ('8996', '43', '538', '1346', '0', '83', '29', '62', '167', '145');
REPLACE INTO `pet_levelstats` VALUES ('8996', '44', '560', '1402', '0', '86', '29', '63', '170', '147');
REPLACE INTO `pet_levelstats` VALUES ('8996', '45', '582', '1458', '0', '88', '29', '64', '174', '148');
REPLACE INTO `pet_levelstats` VALUES ('8996', '46', '605', '1514', '0', '91', '30', '66', '177', '149');
REPLACE INTO `pet_levelstats` VALUES ('8996', '47', '627', '1570', '0', '93', '30', '67', '181', '151');
REPLACE INTO `pet_levelstats` VALUES ('8996', '48', '649', '1627', '0', '96', '30', '68', '184', '152');
REPLACE INTO `pet_levelstats` VALUES ('8996', '49', '672', '1685', '0', '99', '31', '70', '188', '155');
REPLACE INTO `pet_levelstats` VALUES ('8996', '50', '694', '1704', '0', '101', '31', '71', '194', '160');
REPLACE INTO `pet_levelstats` VALUES ('8996', '51', '716', '1723', '0', '103', '31', '72', '201', '170');
REPLACE INTO `pet_levelstats` VALUES ('8996', '52', '738', '1743', '0', '105', '32', '74', '208', '180');
REPLACE INTO `pet_levelstats` VALUES ('8996', '53', '761', '1762', '0', '107', '32', '75', '215', '190');
REPLACE INTO `pet_levelstats` VALUES ('8996', '54', '783', '1781', '0', '109', '32', '77', '222', '200');
REPLACE INTO `pet_levelstats` VALUES ('8996', '55', '805', '1801', '0', '111', '33', '78', '229', '210');
REPLACE INTO `pet_levelstats` VALUES ('8996', '56', '827', '1820', '0', '113', '33', '80', '236', '220');
REPLACE INTO `pet_levelstats` VALUES ('8996', '57', '850', '1839', '0', '115', '33', '81', '243', '230');
REPLACE INTO `pet_levelstats` VALUES ('8996', '58', '872', '1859', '0', '117', '34', '83', '250', '240');
REPLACE INTO `pet_levelstats` VALUES ('8996', '59', '894', '1878', '0', '120', '34', '84', '257', '250');
REPLACE INTO `pet_levelstats` VALUES ('8996', '60', '917', '1898', '0', '122', '35', '86', '264', '260');
REPLACE INTO `pet_levelstats` VALUES ('8996', '61', '939', '1918', '0', '125', '35', '88', '271', '270');
REPLACE INTO `pet_levelstats` VALUES ('8996', '62', '961', '1937', '0', '128', '36', '89', '278', '280');
REPLACE INTO `pet_levelstats` VALUES ('8996', '63', '983', '1956', '0', '131', '36', '91', '285', '290');
REPLACE INTO `pet_levelstats` VALUES ('8996', '64', '1005', '1975', '0', '134', '36', '93', '292', '300');
REPLACE INTO `pet_levelstats` VALUES ('8996', '65', '1027', '1994', '0', '137', '37', '94', '299', '310');
REPLACE INTO `pet_levelstats` VALUES ('8996', '66', '1049', '2013', '0', '140', '37', '96', '306', '320');
REPLACE INTO `pet_levelstats` VALUES ('8996', '67', '1072', '2032', '0', '143', '37', '97', '313', '330');
REPLACE INTO `pet_levelstats` VALUES ('8996', '68', '1094', '2052', '0', '146', '38', '99', '320', '340');
REPLACE INTO `pet_levelstats` VALUES ('8996', '69', '1126', '2071', '0', '149', '38', '100', '327', '350');
REPLACE INTO `pet_levelstats` VALUES ('8996', '70', '1149', '2090', '0', '152', '39', '102', '334', '360');
REPLACE INTO `pet_levelstats` VALUES ('10928', '1', '14', '40', '0', '20', '20', '20', '24', '23');
REPLACE INTO `pet_levelstats` VALUES ('10928', '2', '19', '49', '0', '21', '20', '20', '25', '24');
REPLACE INTO `pet_levelstats` VALUES ('10928', '3', '24', '58', '0', '22', '20', '21', '26', '25');
REPLACE INTO `pet_levelstats` VALUES ('10928', '4', '29', '67', '0', '23', '21', '21', '27', '26');
REPLACE INTO `pet_levelstats` VALUES ('10928', '5', '34', '76', '0', '23', '21', '22', '28', '27');
REPLACE INTO `pet_levelstats` VALUES ('10928', '6', '40', '85', '0', '24', '21', '22', '29', '27');
REPLACE INTO `pet_levelstats` VALUES ('10928', '7', '46', '95', '0', '25', '21', '23', '30', '28');
REPLACE INTO `pet_levelstats` VALUES ('10928', '8', '52', '105', '0', '26', '21', '23', '31', '29');
REPLACE INTO `pet_levelstats` VALUES ('10928', '9', '58', '116', '0', '27', '21', '23', '32', '30');
REPLACE INTO `pet_levelstats` VALUES ('10928', '10', '64', '126', '0', '27', '22', '24', '33', '31');
REPLACE INTO `pet_levelstats` VALUES ('10928', '11', '75', '151', '0', '28', '22', '24', '37', '35');
REPLACE INTO `pet_levelstats` VALUES ('10928', '12', '83', '177', '0', '29', '22', '26', '41', '39');
REPLACE INTO `pet_levelstats` VALUES ('10928', '13', '91', '198', '0', '30', '22', '26', '44', '43');
REPLACE INTO `pet_levelstats` VALUES ('10928', '14', '120', '234', '0', '31', '22', '28', '50', '47');
REPLACE INTO `pet_levelstats` VALUES ('10928', '15', '129', '262', '0', '32', '23', '29', '54', '52');
REPLACE INTO `pet_levelstats` VALUES ('10928', '16', '138', '290', '0', '34', '23', '30', '57', '56');
REPLACE INTO `pet_levelstats` VALUES ('10928', '17', '147', '318', '0', '36', '23', '31', '61', '60');
REPLACE INTO `pet_levelstats` VALUES ('10928', '18', '156', '346', '0', '37', '23', '32', '65', '65');
REPLACE INTO `pet_levelstats` VALUES ('10928', '19', '165', '374', '0', '38', '23', '33', '70', '69');
REPLACE INTO `pet_levelstats` VALUES ('10928', '20', '175', '402', '0', '40', '24', '35', '74', '74');
REPLACE INTO `pet_levelstats` VALUES ('10928', '21', '184', '430', '0', '42', '24', '37', '87', '78');
REPLACE INTO `pet_levelstats` VALUES ('10928', '22', '193', '458', '0', '44', '24', '39', '91', '82');
REPLACE INTO `pet_levelstats` VALUES ('10928', '23', '202', '486', '0', '45', '24', '40', '95', '86');
REPLACE INTO `pet_levelstats` VALUES ('10928', '24', '212', '514', '0', '46', '25', '42', '94', '90');
REPLACE INTO `pet_levelstats` VALUES ('10928', '25', '224', '539', '0', '47', '25', '43', '94', '95');
REPLACE INTO `pet_levelstats` VALUES ('10928', '26', '237', '568', '0', '48', '25', '43', '98', '100');
REPLACE INTO `pet_levelstats` VALUES ('10928', '27', '249', '598', '0', '50', '25', '42', '102', '104');
REPLACE INTO `pet_levelstats` VALUES ('10928', '28', '262', '632', '0', '51', '25', '44', '109', '110');
REPLACE INTO `pet_levelstats` VALUES ('10928', '29', '274', '667', '0', '52', '26', '44', '114', '114');
REPLACE INTO `pet_levelstats` VALUES ('10928', '30', '287', '702', '0', '54', '26', '45', '120', '118');
REPLACE INTO `pet_levelstats` VALUES ('10928', '31', '299', '734', '0', '55', '26', '46', '124', '123');
REPLACE INTO `pet_levelstats` VALUES ('10928', '32', '312', '772', '0', '57', '26', '47', '128', '128');
REPLACE INTO `pet_levelstats` VALUES ('10928', '33', '324', '807', '0', '58', '27', '48', '132', '131');
REPLACE INTO `pet_levelstats` VALUES ('10928', '34', '338', '842', '0', '60', '27', '50', '136', '135');
REPLACE INTO `pet_levelstats` VALUES ('10928', '35', '360', '898', '0', '62', '27', '51', '139', '136');
REPLACE INTO `pet_levelstats` VALUES ('10928', '36', '382', '954', '0', '65', '27', '52', '142', '137');
REPLACE INTO `pet_levelstats` VALUES ('10928', '37', '404', '1010', '0', '67', '27', '54', '146', '138');
REPLACE INTO `pet_levelstats` VALUES ('10928', '38', '427', '1066', '0', '70', '28', '55', '149', '139');
REPLACE INTO `pet_levelstats` VALUES ('10928', '39', '449', '1122', '0', '73', '28', '56', '153', '141');
REPLACE INTO `pet_levelstats` VALUES ('10928', '40', '471', '1178', '0', '75', '28', '58', '156', '142');
REPLACE INTO `pet_levelstats` VALUES ('10928', '41', '493', '1234', '0', '78', '28', '59', '160', '143');
REPLACE INTO `pet_levelstats` VALUES ('10928', '42', '516', '1290', '0', '80', '29', '60', '163', '144');
REPLACE INTO `pet_levelstats` VALUES ('10928', '43', '538', '1346', '0', '83', '29', '62', '167', '145');
REPLACE INTO `pet_levelstats` VALUES ('10928', '44', '560', '1402', '0', '86', '29', '63', '170', '147');
REPLACE INTO `pet_levelstats` VALUES ('10928', '45', '582', '1458', '0', '88', '29', '64', '174', '148');
REPLACE INTO `pet_levelstats` VALUES ('10928', '46', '605', '1514', '0', '91', '30', '66', '177', '149');
REPLACE INTO `pet_levelstats` VALUES ('10928', '47', '627', '1570', '0', '93', '30', '67', '181', '151');
REPLACE INTO `pet_levelstats` VALUES ('10928', '48', '649', '1627', '0', '96', '30', '68', '184', '152');
REPLACE INTO `pet_levelstats` VALUES ('10928', '49', '672', '1685', '0', '99', '31', '70', '188', '155');
REPLACE INTO `pet_levelstats` VALUES ('10928', '50', '694', '1704', '0', '101', '31', '71', '194', '160');
REPLACE INTO `pet_levelstats` VALUES ('10928', '51', '716', '1723', '0', '103', '31', '72', '201', '170');
REPLACE INTO `pet_levelstats` VALUES ('10928', '52', '738', '1743', '0', '105', '32', '74', '208', '180');
REPLACE INTO `pet_levelstats` VALUES ('10928', '53', '761', '1762', '0', '107', '32', '75', '215', '190');
REPLACE INTO `pet_levelstats` VALUES ('10928', '54', '783', '1781', '0', '109', '32', '77', '222', '200');
REPLACE INTO `pet_levelstats` VALUES ('10928', '55', '805', '1801', '0', '111', '33', '78', '229', '210');
REPLACE INTO `pet_levelstats` VALUES ('10928', '56', '827', '1820', '0', '113', '33', '80', '236', '220');
REPLACE INTO `pet_levelstats` VALUES ('10928', '57', '850', '1839', '0', '115', '33', '81', '243', '230');
REPLACE INTO `pet_levelstats` VALUES ('10928', '58', '872', '1859', '0', '117', '34', '83', '250', '240');
REPLACE INTO `pet_levelstats` VALUES ('10928', '59', '894', '1878', '0', '120', '34', '84', '257', '250');
REPLACE INTO `pet_levelstats` VALUES ('10928', '60', '917', '1898', '0', '122', '35', '86', '264', '260');
REPLACE INTO `pet_levelstats` VALUES ('10928', '61', '939', '1918', '0', '125', '35', '88', '271', '270');
REPLACE INTO `pet_levelstats` VALUES ('10928', '62', '961', '1937', '0', '128', '36', '89', '278', '280');
REPLACE INTO `pet_levelstats` VALUES ('10928', '63', '983', '1956', '0', '131', '36', '91', '285', '290');
REPLACE INTO `pet_levelstats` VALUES ('10928', '64', '1005', '1975', '0', '134', '36', '93', '292', '300');
REPLACE INTO `pet_levelstats` VALUES ('10928', '65', '1027', '1994', '0', '137', '37', '94', '299', '310');
REPLACE INTO `pet_levelstats` VALUES ('10928', '66', '1049', '2013', '0', '140', '37', '96', '306', '320');
REPLACE INTO `pet_levelstats` VALUES ('10928', '67', '1072', '2032', '0', '143', '37', '97', '313', '330');
REPLACE INTO `pet_levelstats` VALUES ('10928', '68', '1094', '2052', '0', '146', '38', '99', '320', '340');
REPLACE INTO `pet_levelstats` VALUES ('10928', '69', '1126', '2071', '0', '149', '38', '100', '327', '350');
REPLACE INTO `pet_levelstats` VALUES ('10928', '70', '1149', '2090', '0', '152', '39', '102', '334', '360');
REPLACE INTO `pet_levelstats` VALUES ('12922', '1', '14', '40', '0', '20', '20', '20', '24', '23');
REPLACE INTO `pet_levelstats` VALUES ('12922', '2', '19', '49', '0', '21', '20', '20', '25', '24');
REPLACE INTO `pet_levelstats` VALUES ('12922', '3', '24', '58', '0', '22', '20', '21', '26', '25');
REPLACE INTO `pet_levelstats` VALUES ('12922', '4', '29', '67', '0', '23', '21', '21', '27', '26');
REPLACE INTO `pet_levelstats` VALUES ('12922', '5', '34', '76', '0', '23', '21', '22', '28', '27');
REPLACE INTO `pet_levelstats` VALUES ('12922', '6', '40', '85', '0', '24', '21', '22', '29', '27');
REPLACE INTO `pet_levelstats` VALUES ('12922', '7', '46', '95', '0', '25', '21', '23', '30', '28');
REPLACE INTO `pet_levelstats` VALUES ('12922', '8', '52', '105', '0', '26', '21', '23', '31', '29');
REPLACE INTO `pet_levelstats` VALUES ('12922', '9', '58', '116', '0', '27', '21', '23', '32', '30');
REPLACE INTO `pet_levelstats` VALUES ('12922', '10', '64', '126', '0', '27', '22', '24', '33', '31');
REPLACE INTO `pet_levelstats` VALUES ('12922', '11', '75', '151', '0', '28', '22', '24', '37', '35');
REPLACE INTO `pet_levelstats` VALUES ('12922', '12', '83', '177', '0', '29', '22', '26', '41', '39');
REPLACE INTO `pet_levelstats` VALUES ('12922', '13', '91', '198', '0', '30', '22', '26', '44', '43');
REPLACE INTO `pet_levelstats` VALUES ('12922', '14', '120', '234', '0', '31', '22', '28', '50', '47');
REPLACE INTO `pet_levelstats` VALUES ('12922', '15', '129', '262', '0', '32', '23', '29', '54', '52');
REPLACE INTO `pet_levelstats` VALUES ('12922', '16', '138', '290', '0', '34', '23', '30', '57', '56');
REPLACE INTO `pet_levelstats` VALUES ('12922', '17', '147', '318', '0', '36', '23', '31', '61', '60');
REPLACE INTO `pet_levelstats` VALUES ('12922', '18', '156', '346', '0', '37', '23', '32', '65', '65');
REPLACE INTO `pet_levelstats` VALUES ('12922', '19', '165', '374', '0', '38', '23', '33', '70', '69');
REPLACE INTO `pet_levelstats` VALUES ('12922', '20', '175', '402', '0', '40', '24', '35', '74', '74');
REPLACE INTO `pet_levelstats` VALUES ('12922', '21', '184', '430', '0', '42', '24', '37', '87', '78');
REPLACE INTO `pet_levelstats` VALUES ('12922', '22', '193', '458', '0', '44', '24', '39', '91', '82');
REPLACE INTO `pet_levelstats` VALUES ('12922', '23', '202', '486', '0', '45', '24', '40', '95', '86');
REPLACE INTO `pet_levelstats` VALUES ('12922', '24', '212', '514', '0', '46', '25', '42', '94', '90');
REPLACE INTO `pet_levelstats` VALUES ('12922', '25', '224', '539', '0', '47', '25', '43', '94', '95');
REPLACE INTO `pet_levelstats` VALUES ('12922', '26', '237', '568', '0', '48', '25', '43', '98', '100');
REPLACE INTO `pet_levelstats` VALUES ('12922', '27', '249', '598', '0', '50', '25', '42', '102', '104');
REPLACE INTO `pet_levelstats` VALUES ('12922', '28', '262', '632', '0', '51', '25', '44', '109', '110');
REPLACE INTO `pet_levelstats` VALUES ('12922', '29', '274', '667', '0', '52', '26', '44', '114', '114');
REPLACE INTO `pet_levelstats` VALUES ('12922', '30', '287', '702', '0', '54', '26', '45', '120', '118');
REPLACE INTO `pet_levelstats` VALUES ('12922', '31', '299', '734', '0', '55', '26', '46', '124', '123');
REPLACE INTO `pet_levelstats` VALUES ('12922', '32', '312', '772', '0', '57', '26', '47', '128', '128');
REPLACE INTO `pet_levelstats` VALUES ('12922', '33', '324', '807', '0', '58', '27', '48', '132', '131');
REPLACE INTO `pet_levelstats` VALUES ('12922', '34', '338', '842', '0', '60', '27', '50', '136', '135');
REPLACE INTO `pet_levelstats` VALUES ('12922', '35', '360', '898', '0', '62', '27', '51', '139', '136');
REPLACE INTO `pet_levelstats` VALUES ('12922', '36', '382', '954', '0', '65', '27', '52', '142', '137');
REPLACE INTO `pet_levelstats` VALUES ('12922', '37', '404', '1010', '0', '67', '27', '54', '146', '138');
REPLACE INTO `pet_levelstats` VALUES ('12922', '38', '427', '1066', '0', '70', '28', '55', '149', '139');
REPLACE INTO `pet_levelstats` VALUES ('12922', '39', '449', '1122', '0', '73', '28', '56', '153', '141');
REPLACE INTO `pet_levelstats` VALUES ('12922', '40', '471', '1178', '0', '75', '28', '58', '156', '142');
REPLACE INTO `pet_levelstats` VALUES ('12922', '41', '493', '1234', '0', '78', '28', '59', '160', '143');
REPLACE INTO `pet_levelstats` VALUES ('12922', '42', '516', '1290', '0', '80', '29', '60', '163', '144');
REPLACE INTO `pet_levelstats` VALUES ('12922', '43', '538', '1346', '0', '83', '29', '62', '167', '145');
REPLACE INTO `pet_levelstats` VALUES ('12922', '44', '560', '1402', '0', '86', '29', '63', '170', '147');
REPLACE INTO `pet_levelstats` VALUES ('12922', '45', '582', '1458', '0', '88', '29', '64', '174', '148');
REPLACE INTO `pet_levelstats` VALUES ('12922', '46', '605', '1514', '0', '91', '30', '66', '177', '149');
REPLACE INTO `pet_levelstats` VALUES ('12922', '47', '627', '1570', '0', '93', '30', '67', '181', '151');
REPLACE INTO `pet_levelstats` VALUES ('12922', '48', '649', '1627', '0', '96', '30', '68', '184', '152');
REPLACE INTO `pet_levelstats` VALUES ('12922', '49', '672', '1685', '0', '99', '31', '70', '188', '155');
REPLACE INTO `pet_levelstats` VALUES ('12922', '50', '694', '1704', '0', '101', '31', '71', '194', '160');
REPLACE INTO `pet_levelstats` VALUES ('12922', '51', '716', '1723', '0', '103', '31', '72', '201', '170');
REPLACE INTO `pet_levelstats` VALUES ('12922', '52', '738', '1743', '0', '105', '32', '74', '208', '180');
REPLACE INTO `pet_levelstats` VALUES ('12922', '53', '761', '1762', '0', '107', '32', '75', '215', '190');
REPLACE INTO `pet_levelstats` VALUES ('12922', '54', '783', '1781', '0', '109', '32', '77', '222', '200');
REPLACE INTO `pet_levelstats` VALUES ('12922', '55', '805', '1801', '0', '111', '33', '78', '229', '210');
REPLACE INTO `pet_levelstats` VALUES ('12922', '56', '827', '1820', '0', '113', '33', '80', '236', '220');
REPLACE INTO `pet_levelstats` VALUES ('12922', '57', '850', '1839', '0', '115', '33', '81', '243', '230');
REPLACE INTO `pet_levelstats` VALUES ('12922', '58', '872', '1859', '0', '117', '34', '83', '250', '240');
REPLACE INTO `pet_levelstats` VALUES ('12922', '59', '894', '1878', '0', '120', '34', '84', '257', '250');
REPLACE INTO `pet_levelstats` VALUES ('12922', '60', '917', '1898', '0', '122', '35', '86', '264', '260');
REPLACE INTO `pet_levelstats` VALUES ('12922', '61', '939', '1918', '0', '125', '35', '88', '271', '270');
REPLACE INTO `pet_levelstats` VALUES ('12922', '62', '961', '1937', '0', '128', '36', '89', '278', '280');
REPLACE INTO `pet_levelstats` VALUES ('12922', '63', '983', '1956', '0', '131', '36', '91', '285', '290');
REPLACE INTO `pet_levelstats` VALUES ('12922', '64', '1005', '1975', '0', '134', '36', '93', '292', '300');
REPLACE INTO `pet_levelstats` VALUES ('12922', '65', '1027', '1994', '0', '137', '37', '94', '299', '310');
REPLACE INTO `pet_levelstats` VALUES ('12922', '66', '1049', '2013', '0', '140', '37', '96', '306', '320');
REPLACE INTO `pet_levelstats` VALUES ('12922', '67', '1072', '2032', '0', '143', '37', '97', '313', '330');
REPLACE INTO `pet_levelstats` VALUES ('12922', '68', '1094', '2052', '0', '146', '38', '99', '320', '340');
REPLACE INTO `pet_levelstats` VALUES ('12922', '69', '1126', '2071', '0', '149', '38', '100', '327', '350');
REPLACE INTO `pet_levelstats` VALUES ('12922', '70', '1149', '2090', '0', '152', '39', '102', '334', '360');
REPLACE INTO `pet_levelstats` VALUES ('8477', '1', '14', '40', '0', '20', '20', '20', '24', '23');
REPLACE INTO `pet_levelstats` VALUES ('8477', '2', '19', '49', '0', '21', '20', '20', '25', '24');
REPLACE INTO `pet_levelstats` VALUES ('8477', '3', '24', '58', '0', '22', '20', '21', '26', '25');
REPLACE INTO `pet_levelstats` VALUES ('8477', '4', '29', '67', '0', '23', '21', '21', '27', '26');
REPLACE INTO `pet_levelstats` VALUES ('8477', '5', '34', '76', '0', '23', '21', '22', '28', '27');
REPLACE INTO `pet_levelstats` VALUES ('8477', '6', '40', '85', '0', '24', '21', '22', '29', '27');
REPLACE INTO `pet_levelstats` VALUES ('8477', '7', '46', '95', '0', '25', '21', '23', '30', '28');
REPLACE INTO `pet_levelstats` VALUES ('8477', '8', '52', '105', '0', '26', '21', '23', '31', '29');
REPLACE INTO `pet_levelstats` VALUES ('8477', '9', '58', '116', '0', '27', '21', '23', '32', '30');
REPLACE INTO `pet_levelstats` VALUES ('8477', '10', '64', '126', '0', '27', '22', '24', '33', '31');
REPLACE INTO `pet_levelstats` VALUES ('8477', '11', '75', '151', '0', '28', '22', '24', '37', '35');
REPLACE INTO `pet_levelstats` VALUES ('8477', '12', '83', '177', '0', '29', '22', '26', '41', '39');
REPLACE INTO `pet_levelstats` VALUES ('8477', '13', '91', '198', '0', '30', '22', '26', '44', '43');
REPLACE INTO `pet_levelstats` VALUES ('8477', '14', '120', '234', '0', '31', '22', '28', '50', '47');
REPLACE INTO `pet_levelstats` VALUES ('8477', '15', '129', '262', '0', '32', '23', '29', '54', '52');
REPLACE INTO `pet_levelstats` VALUES ('8477', '16', '138', '290', '0', '34', '23', '30', '57', '56');
REPLACE INTO `pet_levelstats` VALUES ('8477', '17', '147', '318', '0', '36', '23', '31', '61', '60');
REPLACE INTO `pet_levelstats` VALUES ('8477', '18', '156', '346', '0', '37', '23', '32', '65', '65');
REPLACE INTO `pet_levelstats` VALUES ('8477', '19', '165', '374', '0', '38', '23', '33', '70', '69');
REPLACE INTO `pet_levelstats` VALUES ('8477', '20', '175', '402', '0', '40', '24', '35', '74', '74');
REPLACE INTO `pet_levelstats` VALUES ('8477', '21', '184', '430', '0', '42', '24', '37', '87', '78');
REPLACE INTO `pet_levelstats` VALUES ('8477', '22', '193', '458', '0', '44', '24', '39', '91', '82');
REPLACE INTO `pet_levelstats` VALUES ('8477', '23', '202', '486', '0', '45', '24', '40', '95', '86');
REPLACE INTO `pet_levelstats` VALUES ('8477', '24', '212', '514', '0', '46', '25', '42', '94', '90');
REPLACE INTO `pet_levelstats` VALUES ('8477', '25', '224', '539', '0', '47', '25', '43', '94', '95');
REPLACE INTO `pet_levelstats` VALUES ('8477', '26', '237', '568', '0', '48', '25', '43', '98', '100');
REPLACE INTO `pet_levelstats` VALUES ('8477', '27', '249', '598', '0', '50', '25', '42', '102', '104');
REPLACE INTO `pet_levelstats` VALUES ('8477', '28', '262', '632', '0', '51', '25', '44', '109', '110');
REPLACE INTO `pet_levelstats` VALUES ('8477', '29', '274', '667', '0', '52', '26', '44', '114', '114');
REPLACE INTO `pet_levelstats` VALUES ('8477', '30', '287', '702', '0', '54', '26', '45', '120', '118');
REPLACE INTO `pet_levelstats` VALUES ('8477', '31', '299', '734', '0', '55', '26', '46', '124', '123');
REPLACE INTO `pet_levelstats` VALUES ('8477', '32', '312', '772', '0', '57', '26', '47', '128', '128');
REPLACE INTO `pet_levelstats` VALUES ('8477', '33', '324', '807', '0', '58', '27', '48', '132', '131');
REPLACE INTO `pet_levelstats` VALUES ('8477', '34', '338', '842', '0', '60', '27', '50', '136', '135');
REPLACE INTO `pet_levelstats` VALUES ('8477', '35', '360', '898', '0', '62', '27', '51', '139', '136');
REPLACE INTO `pet_levelstats` VALUES ('8477', '36', '382', '954', '0', '65', '27', '52', '142', '137');
REPLACE INTO `pet_levelstats` VALUES ('8477', '37', '404', '1010', '0', '67', '27', '54', '146', '138');
REPLACE INTO `pet_levelstats` VALUES ('8477', '38', '427', '1066', '0', '70', '28', '55', '149', '139');
REPLACE INTO `pet_levelstats` VALUES ('8477', '39', '449', '1122', '0', '73', '28', '56', '153', '141');
REPLACE INTO `pet_levelstats` VALUES ('8477', '40', '471', '1178', '0', '75', '28', '58', '156', '142');
REPLACE INTO `pet_levelstats` VALUES ('8477', '41', '493', '1234', '0', '78', '28', '59', '160', '143');
REPLACE INTO `pet_levelstats` VALUES ('8477', '42', '516', '1290', '0', '80', '29', '60', '163', '144');
REPLACE INTO `pet_levelstats` VALUES ('8477', '43', '538', '1346', '0', '83', '29', '62', '167', '145');
REPLACE INTO `pet_levelstats` VALUES ('8477', '44', '560', '1402', '0', '86', '29', '63', '170', '147');
REPLACE INTO `pet_levelstats` VALUES ('8477', '45', '582', '1458', '0', '88', '29', '64', '174', '148');
REPLACE INTO `pet_levelstats` VALUES ('8477', '46', '605', '1514', '0', '91', '30', '66', '177', '149');
REPLACE INTO `pet_levelstats` VALUES ('8477', '47', '627', '1570', '0', '93', '30', '67', '181', '151');
REPLACE INTO `pet_levelstats` VALUES ('8477', '48', '649', '1627', '0', '96', '30', '68', '184', '152');
REPLACE INTO `pet_levelstats` VALUES ('8477', '49', '672', '1685', '0', '99', '31', '70', '188', '155');
REPLACE INTO `pet_levelstats` VALUES ('8477', '50', '694', '1704', '0', '101', '31', '71', '194', '160');
REPLACE INTO `pet_levelstats` VALUES ('8477', '51', '716', '1723', '0', '103', '31', '72', '201', '170');
REPLACE INTO `pet_levelstats` VALUES ('8477', '52', '738', '1743', '0', '105', '32', '74', '208', '180');
REPLACE INTO `pet_levelstats` VALUES ('8477', '53', '761', '1762', '0', '107', '32', '75', '215', '190');
REPLACE INTO `pet_levelstats` VALUES ('8477', '54', '783', '1781', '0', '109', '32', '77', '222', '200');
REPLACE INTO `pet_levelstats` VALUES ('8477', '55', '805', '1801', '0', '111', '33', '78', '229', '210');
REPLACE INTO `pet_levelstats` VALUES ('8477', '56', '827', '1820', '0', '113', '33', '80', '236', '220');
REPLACE INTO `pet_levelstats` VALUES ('8477', '57', '850', '1839', '0', '115', '33', '81', '243', '230');
REPLACE INTO `pet_levelstats` VALUES ('8477', '58', '872', '1859', '0', '117', '34', '83', '250', '240');
REPLACE INTO `pet_levelstats` VALUES ('8477', '59', '894', '1878', '0', '120', '34', '84', '257', '250');
REPLACE INTO `pet_levelstats` VALUES ('8477', '60', '917', '1898', '0', '122', '35', '86', '264', '260');
REPLACE INTO `pet_levelstats` VALUES ('8477', '61', '939', '1918', '0', '125', '35', '88', '271', '270');
REPLACE INTO `pet_levelstats` VALUES ('8477', '62', '961', '1937', '0', '128', '36', '89', '278', '280');
REPLACE INTO `pet_levelstats` VALUES ('8477', '63', '983', '1956', '0', '131', '36', '91', '285', '290');
REPLACE INTO `pet_levelstats` VALUES ('8477', '64', '1005', '1975', '0', '134', '36', '93', '292', '300');
REPLACE INTO `pet_levelstats` VALUES ('8477', '65', '1027', '1994', '0', '137', '37', '94', '299', '310');
REPLACE INTO `pet_levelstats` VALUES ('8477', '66', '1049', '2013', '0', '140', '37', '96', '306', '320');
REPLACE INTO `pet_levelstats` VALUES ('8477', '67', '1072', '2032', '0', '143', '37', '97', '313', '330');
REPLACE INTO `pet_levelstats` VALUES ('8477', '68', '1094', '2052', '0', '146', '38', '99', '320', '340');
REPLACE INTO `pet_levelstats` VALUES ('8477', '69', '1126', '2071', '0', '149', '38', '100', '327', '350');
REPLACE INTO `pet_levelstats` VALUES ('8477', '70', '1149', '2090', '0', '152', '39', '102', '334', '360');
REPLACE INTO `pet_levelstats` VALUES ('24815', '1', '14', '40', '0', '20', '20', '20', '24', '23');
REPLACE INTO `pet_levelstats` VALUES ('24815', '2', '19', '49', '0', '21', '20', '20', '25', '24');
REPLACE INTO `pet_levelstats` VALUES ('24815', '3', '24', '58', '0', '22', '20', '21', '26', '25');
REPLACE INTO `pet_levelstats` VALUES ('24815', '4', '29', '67', '0', '23', '21', '21', '27', '26');
REPLACE INTO `pet_levelstats` VALUES ('24815', '5', '34', '76', '0', '23', '21', '22', '28', '27');
REPLACE INTO `pet_levelstats` VALUES ('24815', '6', '40', '85', '0', '24', '21', '22', '29', '27');
REPLACE INTO `pet_levelstats` VALUES ('24815', '7', '46', '95', '0', '25', '21', '23', '30', '28');
REPLACE INTO `pet_levelstats` VALUES ('24815', '8', '52', '105', '0', '26', '21', '23', '31', '29');
REPLACE INTO `pet_levelstats` VALUES ('24815', '9', '58', '116', '0', '27', '21', '23', '32', '30');
REPLACE INTO `pet_levelstats` VALUES ('24815', '10', '64', '126', '0', '27', '22', '24', '33', '31');
REPLACE INTO `pet_levelstats` VALUES ('24815', '11', '75', '151', '0', '28', '22', '24', '37', '35');
REPLACE INTO `pet_levelstats` VALUES ('24815', '12', '83', '177', '0', '29', '22', '26', '41', '39');
REPLACE INTO `pet_levelstats` VALUES ('24815', '13', '91', '198', '0', '30', '22', '26', '44', '43');
REPLACE INTO `pet_levelstats` VALUES ('24815', '14', '120', '234', '0', '31', '22', '28', '50', '47');
REPLACE INTO `pet_levelstats` VALUES ('24815', '15', '129', '262', '0', '32', '23', '29', '54', '52');
REPLACE INTO `pet_levelstats` VALUES ('24815', '16', '138', '290', '0', '34', '23', '30', '57', '56');
REPLACE INTO `pet_levelstats` VALUES ('24815', '17', '147', '318', '0', '36', '23', '31', '61', '60');
REPLACE INTO `pet_levelstats` VALUES ('24815', '18', '156', '346', '0', '37', '23', '32', '65', '65');
REPLACE INTO `pet_levelstats` VALUES ('24815', '19', '165', '374', '0', '38', '23', '33', '70', '69');
REPLACE INTO `pet_levelstats` VALUES ('24815', '20', '175', '402', '0', '40', '24', '35', '74', '74');
REPLACE INTO `pet_levelstats` VALUES ('24815', '21', '184', '430', '0', '42', '24', '37', '87', '78');
REPLACE INTO `pet_levelstats` VALUES ('24815', '22', '193', '458', '0', '44', '24', '39', '91', '82');
REPLACE INTO `pet_levelstats` VALUES ('24815', '23', '202', '486', '0', '45', '24', '40', '95', '86');
REPLACE INTO `pet_levelstats` VALUES ('24815', '24', '212', '514', '0', '46', '25', '42', '94', '90');
REPLACE INTO `pet_levelstats` VALUES ('24815', '25', '224', '539', '0', '47', '25', '43', '94', '95');
REPLACE INTO `pet_levelstats` VALUES ('24815', '26', '237', '568', '0', '48', '25', '43', '98', '100');
REPLACE INTO `pet_levelstats` VALUES ('24815', '27', '249', '598', '0', '50', '25', '42', '102', '104');
REPLACE INTO `pet_levelstats` VALUES ('24815', '28', '262', '632', '0', '51', '25', '44', '109', '110');
REPLACE INTO `pet_levelstats` VALUES ('24815', '29', '274', '667', '0', '52', '26', '44', '114', '114');
REPLACE INTO `pet_levelstats` VALUES ('24815', '30', '287', '702', '0', '54', '26', '45', '120', '118');
REPLACE INTO `pet_levelstats` VALUES ('24815', '31', '299', '734', '0', '55', '26', '46', '124', '123');
REPLACE INTO `pet_levelstats` VALUES ('24815', '32', '312', '772', '0', '57', '26', '47', '128', '128');
REPLACE INTO `pet_levelstats` VALUES ('24815', '33', '324', '807', '0', '58', '27', '48', '132', '131');
REPLACE INTO `pet_levelstats` VALUES ('24815', '34', '338', '842', '0', '60', '27', '50', '136', '135');
REPLACE INTO `pet_levelstats` VALUES ('24815', '35', '360', '898', '0', '62', '27', '51', '139', '136');
REPLACE INTO `pet_levelstats` VALUES ('24815', '36', '382', '954', '0', '65', '27', '52', '142', '137');
REPLACE INTO `pet_levelstats` VALUES ('24815', '37', '404', '1010', '0', '67', '27', '54', '146', '138');
REPLACE INTO `pet_levelstats` VALUES ('24815', '38', '427', '1066', '0', '70', '28', '55', '149', '139');
REPLACE INTO `pet_levelstats` VALUES ('24815', '39', '449', '1122', '0', '73', '28', '56', '153', '141');
REPLACE INTO `pet_levelstats` VALUES ('24815', '40', '471', '1178', '0', '75', '28', '58', '156', '142');
REPLACE INTO `pet_levelstats` VALUES ('24815', '41', '493', '1234', '0', '78', '28', '59', '160', '143');
REPLACE INTO `pet_levelstats` VALUES ('24815', '42', '516', '1290', '0', '80', '29', '60', '163', '144');
REPLACE INTO `pet_levelstats` VALUES ('24815', '43', '538', '1346', '0', '83', '29', '62', '167', '145');
REPLACE INTO `pet_levelstats` VALUES ('24815', '44', '560', '1402', '0', '86', '29', '63', '170', '147');
REPLACE INTO `pet_levelstats` VALUES ('24815', '45', '582', '1458', '0', '88', '29', '64', '174', '148');
REPLACE INTO `pet_levelstats` VALUES ('24815', '46', '605', '1514', '0', '91', '30', '66', '177', '149');
REPLACE INTO `pet_levelstats` VALUES ('24815', '47', '627', '1570', '0', '93', '30', '67', '181', '151');
REPLACE INTO `pet_levelstats` VALUES ('24815', '48', '649', '1627', '0', '96', '30', '68', '184', '152');
REPLACE INTO `pet_levelstats` VALUES ('24815', '49', '672', '1685', '0', '99', '31', '70', '188', '155');
REPLACE INTO `pet_levelstats` VALUES ('24815', '50', '694', '1704', '0', '101', '31', '71', '194', '160');
REPLACE INTO `pet_levelstats` VALUES ('24815', '51', '716', '1723', '0', '103', '31', '72', '201', '170');
REPLACE INTO `pet_levelstats` VALUES ('24815', '52', '738', '1743', '0', '105', '32', '74', '208', '180');
REPLACE INTO `pet_levelstats` VALUES ('24815', '53', '761', '1762', '0', '107', '32', '75', '215', '190');
REPLACE INTO `pet_levelstats` VALUES ('24815', '54', '783', '1781', '0', '109', '32', '77', '222', '200');
REPLACE INTO `pet_levelstats` VALUES ('24815', '55', '805', '1801', '0', '111', '33', '78', '229', '210');
REPLACE INTO `pet_levelstats` VALUES ('24815', '56', '827', '1820', '0', '113', '33', '80', '236', '220');
REPLACE INTO `pet_levelstats` VALUES ('24815', '57', '850', '1839', '0', '115', '33', '81', '243', '230');
REPLACE INTO `pet_levelstats` VALUES ('24815', '58', '872', '1859', '0', '117', '34', '83', '250', '240');
REPLACE INTO `pet_levelstats` VALUES ('24815', '59', '894', '1878', '0', '120', '34', '84', '257', '250');
REPLACE INTO `pet_levelstats` VALUES ('24815', '60', '917', '1898', '0', '122', '35', '86', '264', '260');
REPLACE INTO `pet_levelstats` VALUES ('24815', '61', '939', '1918', '0', '125', '35', '88', '271', '270');
REPLACE INTO `pet_levelstats` VALUES ('24815', '62', '961', '1937', '0', '128', '36', '89', '278', '280');
REPLACE INTO `pet_levelstats` VALUES ('24815', '63', '983', '1956', '0', '131', '36', '91', '285', '290');
REPLACE INTO `pet_levelstats` VALUES ('24815', '64', '1005', '1975', '0', '134', '36', '93', '292', '300');
REPLACE INTO `pet_levelstats` VALUES ('24815', '65', '1027', '1994', '0', '137', '37', '94', '299', '310');
REPLACE INTO `pet_levelstats` VALUES ('24815', '66', '1049', '2013', '0', '140', '37', '96', '306', '320');
REPLACE INTO `pet_levelstats` VALUES ('24815', '67', '1072', '2032', '0', '143', '37', '97', '313', '330');
REPLACE INTO `pet_levelstats` VALUES ('24815', '68', '1094', '2052', '0', '146', '38', '99', '320', '340');
REPLACE INTO `pet_levelstats` VALUES ('24815', '69', '1126', '2071', '0', '149', '38', '100', '327', '350');
REPLACE INTO `pet_levelstats` VALUES ('24815', '70', '1149', '2090', '0', '152', '39', '102', '334', '360');
REPLACE INTO `pet_levelstats` VALUES ('22362', '1', '14', '40', '0', '20', '20', '20', '24', '23');
REPLACE INTO `pet_levelstats` VALUES ('22362', '2', '19', '49', '0', '21', '20', '20', '25', '24');
REPLACE INTO `pet_levelstats` VALUES ('22362', '3', '24', '58', '0', '22', '20', '21', '26', '25');
REPLACE INTO `pet_levelstats` VALUES ('22362', '4', '29', '67', '0', '23', '21', '21', '27', '26');
REPLACE INTO `pet_levelstats` VALUES ('22362', '5', '34', '76', '0', '23', '21', '22', '28', '27');
REPLACE INTO `pet_levelstats` VALUES ('22362', '6', '40', '85', '0', '24', '21', '22', '29', '27');
REPLACE INTO `pet_levelstats` VALUES ('22362', '7', '46', '95', '0', '25', '21', '23', '30', '28');
REPLACE INTO `pet_levelstats` VALUES ('22362', '8', '52', '105', '0', '26', '21', '23', '31', '29');
REPLACE INTO `pet_levelstats` VALUES ('22362', '9', '58', '116', '0', '27', '21', '23', '32', '30');
REPLACE INTO `pet_levelstats` VALUES ('22362', '10', '64', '126', '0', '27', '22', '24', '33', '31');
REPLACE INTO `pet_levelstats` VALUES ('22362', '11', '75', '151', '0', '28', '22', '24', '37', '35');
REPLACE INTO `pet_levelstats` VALUES ('22362', '12', '83', '177', '0', '29', '22', '26', '41', '39');
REPLACE INTO `pet_levelstats` VALUES ('22362', '13', '91', '198', '0', '30', '22', '26', '44', '43');
REPLACE INTO `pet_levelstats` VALUES ('22362', '14', '120', '234', '0', '31', '22', '28', '50', '47');
REPLACE INTO `pet_levelstats` VALUES ('22362', '15', '129', '262', '0', '32', '23', '29', '54', '52');
REPLACE INTO `pet_levelstats` VALUES ('22362', '16', '138', '290', '0', '34', '23', '30', '57', '56');
REPLACE INTO `pet_levelstats` VALUES ('22362', '17', '147', '318', '0', '36', '23', '31', '61', '60');
REPLACE INTO `pet_levelstats` VALUES ('22362', '18', '156', '346', '0', '37', '23', '32', '65', '65');
REPLACE INTO `pet_levelstats` VALUES ('22362', '19', '165', '374', '0', '38', '23', '33', '70', '69');
REPLACE INTO `pet_levelstats` VALUES ('22362', '20', '175', '402', '0', '40', '24', '35', '74', '74');
REPLACE INTO `pet_levelstats` VALUES ('22362', '21', '184', '430', '0', '42', '24', '37', '87', '78');
REPLACE INTO `pet_levelstats` VALUES ('22362', '22', '193', '458', '0', '44', '24', '39', '91', '82');
REPLACE INTO `pet_levelstats` VALUES ('22362', '23', '202', '486', '0', '45', '24', '40', '95', '86');
REPLACE INTO `pet_levelstats` VALUES ('22362', '24', '212', '514', '0', '46', '25', '42', '94', '90');
REPLACE INTO `pet_levelstats` VALUES ('22362', '25', '224', '539', '0', '47', '25', '43', '94', '95');
REPLACE INTO `pet_levelstats` VALUES ('22362', '26', '237', '568', '0', '48', '25', '43', '98', '100');
REPLACE INTO `pet_levelstats` VALUES ('22362', '27', '249', '598', '0', '50', '25', '42', '102', '104');
REPLACE INTO `pet_levelstats` VALUES ('22362', '28', '262', '632', '0', '51', '25', '44', '109', '110');
REPLACE INTO `pet_levelstats` VALUES ('22362', '29', '274', '667', '0', '52', '26', '44', '114', '114');
REPLACE INTO `pet_levelstats` VALUES ('22362', '30', '287', '702', '0', '54', '26', '45', '120', '118');
REPLACE INTO `pet_levelstats` VALUES ('22362', '31', '299', '734', '0', '55', '26', '46', '124', '123');
REPLACE INTO `pet_levelstats` VALUES ('22362', '32', '312', '772', '0', '57', '26', '47', '128', '128');
REPLACE INTO `pet_levelstats` VALUES ('22362', '33', '324', '807', '0', '58', '27', '48', '132', '131');
REPLACE INTO `pet_levelstats` VALUES ('22362', '34', '338', '842', '0', '60', '27', '50', '136', '135');
REPLACE INTO `pet_levelstats` VALUES ('22362', '35', '360', '898', '0', '62', '27', '51', '139', '136');
REPLACE INTO `pet_levelstats` VALUES ('22362', '36', '382', '954', '0', '65', '27', '52', '142', '137');
REPLACE INTO `pet_levelstats` VALUES ('22362', '37', '404', '1010', '0', '67', '27', '54', '146', '138');
REPLACE INTO `pet_levelstats` VALUES ('22362', '38', '427', '1066', '0', '70', '28', '55', '149', '139');
REPLACE INTO `pet_levelstats` VALUES ('22362', '39', '449', '1122', '0', '73', '28', '56', '153', '141');
REPLACE INTO `pet_levelstats` VALUES ('22362', '40', '471', '1178', '0', '75', '28', '58', '156', '142');
REPLACE INTO `pet_levelstats` VALUES ('22362', '41', '493', '1234', '0', '78', '28', '59', '160', '143');
REPLACE INTO `pet_levelstats` VALUES ('22362', '42', '516', '1290', '0', '80', '29', '60', '163', '144');
REPLACE INTO `pet_levelstats` VALUES ('22362', '43', '538', '1346', '0', '83', '29', '62', '167', '145');
REPLACE INTO `pet_levelstats` VALUES ('22362', '44', '560', '1402', '0', '86', '29', '63', '170', '147');
REPLACE INTO `pet_levelstats` VALUES ('22362', '45', '582', '1458', '0', '88', '29', '64', '174', '148');
REPLACE INTO `pet_levelstats` VALUES ('22362', '46', '605', '1514', '0', '91', '30', '66', '177', '149');
REPLACE INTO `pet_levelstats` VALUES ('22362', '47', '627', '1570', '0', '93', '30', '67', '181', '151');
REPLACE INTO `pet_levelstats` VALUES ('22362', '48', '649', '1627', '0', '96', '30', '68', '184', '152');
REPLACE INTO `pet_levelstats` VALUES ('22362', '49', '672', '1685', '0', '99', '31', '70', '188', '155');
REPLACE INTO `pet_levelstats` VALUES ('22362', '50', '694', '1704', '0', '101', '31', '71', '194', '160');
REPLACE INTO `pet_levelstats` VALUES ('22362', '51', '716', '1723', '0', '103', '31', '72', '201', '170');
REPLACE INTO `pet_levelstats` VALUES ('22362', '52', '738', '1743', '0', '105', '32', '74', '208', '180');
REPLACE INTO `pet_levelstats` VALUES ('22362', '53', '761', '1762', '0', '107', '32', '75', '215', '190');
REPLACE INTO `pet_levelstats` VALUES ('22362', '54', '783', '1781', '0', '109', '32', '77', '222', '200');
REPLACE INTO `pet_levelstats` VALUES ('22362', '55', '805', '1801', '0', '111', '33', '78', '229', '210');
REPLACE INTO `pet_levelstats` VALUES ('22362', '56', '827', '1820', '0', '113', '33', '80', '236', '220');
REPLACE INTO `pet_levelstats` VALUES ('22362', '57', '850', '1839', '0', '115', '33', '81', '243', '230');
REPLACE INTO `pet_levelstats` VALUES ('22362', '58', '872', '1859', '0', '117', '34', '83', '250', '240');
REPLACE INTO `pet_levelstats` VALUES ('22362', '59', '894', '1878', '0', '120', '34', '84', '257', '250');
REPLACE INTO `pet_levelstats` VALUES ('22362', '60', '917', '1898', '0', '122', '35', '86', '264', '260');
REPLACE INTO `pet_levelstats` VALUES ('22362', '61', '939', '1918', '0', '125', '35', '88', '271', '270');
REPLACE INTO `pet_levelstats` VALUES ('22362', '62', '961', '1937', '0', '128', '36', '89', '278', '280');
REPLACE INTO `pet_levelstats` VALUES ('22362', '63', '983', '1956', '0', '131', '36', '91', '285', '290');
REPLACE INTO `pet_levelstats` VALUES ('22362', '64', '1005', '1975', '0', '134', '36', '93', '292', '300');
REPLACE INTO `pet_levelstats` VALUES ('22362', '65', '1027', '1994', '0', '137', '37', '94', '299', '310');
REPLACE INTO `pet_levelstats` VALUES ('22362', '66', '1049', '2013', '0', '140', '37', '96', '306', '320');
REPLACE INTO `pet_levelstats` VALUES ('22362', '67', '1072', '2032', '0', '143', '37', '97', '313', '330');
REPLACE INTO `pet_levelstats` VALUES ('22362', '68', '1094', '2052', '0', '146', '38', '99', '320', '340');
REPLACE INTO `pet_levelstats` VALUES ('22362', '69', '1126', '2071', '0', '149', '38', '100', '327', '350');
REPLACE INTO `pet_levelstats` VALUES ('22362', '70', '1149', '2090', '0', '152', '39', '102', '334', '360');
REPLACE INTO `pet_levelstats` VALUES ('10979', '1', '14', '40', '0', '20', '20', '20', '24', '23');
REPLACE INTO `pet_levelstats` VALUES ('10979', '2', '19', '49', '0', '21', '20', '20', '25', '24');
REPLACE INTO `pet_levelstats` VALUES ('10979', '3', '24', '58', '0', '22', '20', '21', '26', '25');
REPLACE INTO `pet_levelstats` VALUES ('10979', '4', '29', '67', '0', '23', '21', '21', '27', '26');
REPLACE INTO `pet_levelstats` VALUES ('10979', '5', '34', '76', '0', '23', '21', '22', '28', '27');
REPLACE INTO `pet_levelstats` VALUES ('10979', '6', '40', '85', '0', '24', '21', '22', '29', '27');
REPLACE INTO `pet_levelstats` VALUES ('10979', '7', '46', '95', '0', '25', '21', '23', '30', '28');
REPLACE INTO `pet_levelstats` VALUES ('10979', '8', '52', '105', '0', '26', '21', '23', '31', '29');
REPLACE INTO `pet_levelstats` VALUES ('10979', '9', '58', '116', '0', '27', '21', '23', '32', '30');
REPLACE INTO `pet_levelstats` VALUES ('10979', '10', '64', '126', '0', '27', '22', '24', '33', '31');
REPLACE INTO `pet_levelstats` VALUES ('10979', '11', '75', '151', '0', '28', '22', '24', '37', '35');
REPLACE INTO `pet_levelstats` VALUES ('10979', '12', '83', '177', '0', '29', '22', '26', '41', '39');
REPLACE INTO `pet_levelstats` VALUES ('10979', '13', '91', '198', '0', '30', '22', '26', '44', '43');
REPLACE INTO `pet_levelstats` VALUES ('10979', '14', '120', '234', '0', '31', '22', '28', '50', '47');
REPLACE INTO `pet_levelstats` VALUES ('10979', '15', '129', '262', '0', '32', '23', '29', '54', '52');
REPLACE INTO `pet_levelstats` VALUES ('10979', '16', '138', '290', '0', '34', '23', '30', '57', '56');
REPLACE INTO `pet_levelstats` VALUES ('10979', '17', '147', '318', '0', '36', '23', '31', '61', '60');
REPLACE INTO `pet_levelstats` VALUES ('10979', '18', '156', '346', '0', '37', '23', '32', '65', '65');
REPLACE INTO `pet_levelstats` VALUES ('10979', '19', '165', '374', '0', '38', '23', '33', '70', '69');
REPLACE INTO `pet_levelstats` VALUES ('10979', '20', '175', '402', '0', '40', '24', '35', '74', '74');
REPLACE INTO `pet_levelstats` VALUES ('10979', '21', '184', '430', '0', '42', '24', '37', '87', '78');
REPLACE INTO `pet_levelstats` VALUES ('10979', '22', '193', '458', '0', '44', '24', '39', '91', '82');
REPLACE INTO `pet_levelstats` VALUES ('10979', '23', '202', '486', '0', '45', '24', '40', '95', '86');
REPLACE INTO `pet_levelstats` VALUES ('10979', '24', '212', '514', '0', '46', '25', '42', '94', '90');
REPLACE INTO `pet_levelstats` VALUES ('10979', '25', '224', '539', '0', '47', '25', '43', '94', '95');
REPLACE INTO `pet_levelstats` VALUES ('10979', '26', '237', '568', '0', '48', '25', '43', '98', '100');
REPLACE INTO `pet_levelstats` VALUES ('10979', '27', '249', '598', '0', '50', '25', '42', '102', '104');
REPLACE INTO `pet_levelstats` VALUES ('10979', '28', '262', '632', '0', '51', '25', '44', '109', '110');
REPLACE INTO `pet_levelstats` VALUES ('10979', '29', '274', '667', '0', '52', '26', '44', '114', '114');
REPLACE INTO `pet_levelstats` VALUES ('10979', '30', '287', '702', '0', '54', '26', '45', '120', '118');
REPLACE INTO `pet_levelstats` VALUES ('10979', '31', '299', '734', '0', '55', '26', '46', '124', '123');
REPLACE INTO `pet_levelstats` VALUES ('10979', '32', '312', '772', '0', '57', '26', '47', '128', '128');
REPLACE INTO `pet_levelstats` VALUES ('10979', '33', '324', '807', '0', '58', '27', '48', '132', '131');
REPLACE INTO `pet_levelstats` VALUES ('10979', '34', '338', '842', '0', '60', '27', '50', '136', '135');
REPLACE INTO `pet_levelstats` VALUES ('10979', '35', '360', '898', '0', '62', '27', '51', '139', '136');
REPLACE INTO `pet_levelstats` VALUES ('10979', '36', '382', '954', '0', '65', '27', '52', '142', '137');
REPLACE INTO `pet_levelstats` VALUES ('10979', '37', '404', '1010', '0', '67', '27', '54', '146', '138');
REPLACE INTO `pet_levelstats` VALUES ('10979', '38', '427', '1066', '0', '70', '28', '55', '149', '139');
REPLACE INTO `pet_levelstats` VALUES ('10979', '39', '449', '1122', '0', '73', '28', '56', '153', '141');
REPLACE INTO `pet_levelstats` VALUES ('10979', '40', '471', '1178', '0', '75', '28', '58', '156', '142');
REPLACE INTO `pet_levelstats` VALUES ('10979', '41', '493', '1234', '0', '78', '28', '59', '160', '143');
REPLACE INTO `pet_levelstats` VALUES ('10979', '42', '516', '1290', '0', '80', '29', '60', '163', '144');
REPLACE INTO `pet_levelstats` VALUES ('10979', '43', '538', '1346', '0', '83', '29', '62', '167', '145');
REPLACE INTO `pet_levelstats` VALUES ('10979', '44', '560', '1402', '0', '86', '29', '63', '170', '147');
REPLACE INTO `pet_levelstats` VALUES ('10979', '45', '582', '1458', '0', '88', '29', '64', '174', '148');
REPLACE INTO `pet_levelstats` VALUES ('10979', '46', '605', '1514', '0', '91', '30', '66', '177', '149');
REPLACE INTO `pet_levelstats` VALUES ('10979', '47', '627', '1570', '0', '93', '30', '67', '181', '151');
REPLACE INTO `pet_levelstats` VALUES ('10979', '48', '649', '1627', '0', '96', '30', '68', '184', '152');
REPLACE INTO `pet_levelstats` VALUES ('10979', '49', '672', '1685', '0', '99', '31', '70', '188', '155');
REPLACE INTO `pet_levelstats` VALUES ('10979', '50', '694', '1704', '0', '101', '31', '71', '194', '160');
REPLACE INTO `pet_levelstats` VALUES ('10979', '51', '716', '1723', '0', '103', '31', '72', '201', '170');
REPLACE INTO `pet_levelstats` VALUES ('10979', '52', '738', '1743', '0', '105', '32', '74', '208', '180');
REPLACE INTO `pet_levelstats` VALUES ('10979', '53', '761', '1762', '0', '107', '32', '75', '215', '190');
REPLACE INTO `pet_levelstats` VALUES ('10979', '54', '783', '1781', '0', '109', '32', '77', '222', '200');
REPLACE INTO `pet_levelstats` VALUES ('10979', '55', '805', '1801', '0', '111', '33', '78', '229', '210');
REPLACE INTO `pet_levelstats` VALUES ('10979', '56', '827', '1820', '0', '113', '33', '80', '236', '220');
REPLACE INTO `pet_levelstats` VALUES ('10979', '57', '850', '1839', '0', '115', '33', '81', '243', '230');
REPLACE INTO `pet_levelstats` VALUES ('10979', '58', '872', '1859', '0', '117', '34', '83', '250', '240');
REPLACE INTO `pet_levelstats` VALUES ('10979', '59', '894', '1878', '0', '120', '34', '84', '257', '250');
REPLACE INTO `pet_levelstats` VALUES ('10979', '60', '917', '1898', '0', '122', '35', '86', '264', '260');
REPLACE INTO `pet_levelstats` VALUES ('10979', '61', '939', '1918', '0', '125', '35', '88', '271', '270');
REPLACE INTO `pet_levelstats` VALUES ('10979', '62', '961', '1937', '0', '128', '36', '89', '278', '280');
REPLACE INTO `pet_levelstats` VALUES ('10979', '63', '983', '1956', '0', '131', '36', '91', '285', '290');
REPLACE INTO `pet_levelstats` VALUES ('10979', '64', '1005', '1975', '0', '134', '36', '93', '292', '300');
REPLACE INTO `pet_levelstats` VALUES ('10979', '65', '1027', '1994', '0', '137', '37', '94', '299', '310');
REPLACE INTO `pet_levelstats` VALUES ('10979', '66', '1049', '2013', '0', '140', '37', '96', '306', '320');
REPLACE INTO `pet_levelstats` VALUES ('10979', '67', '1072', '2032', '0', '143', '37', '97', '313', '330');
REPLACE INTO `pet_levelstats` VALUES ('10979', '68', '1094', '2052', '0', '146', '38', '99', '320', '340');
REPLACE INTO `pet_levelstats` VALUES ('10979', '69', '1126', '2071', '0', '149', '38', '100', '327', '350');
REPLACE INTO `pet_levelstats` VALUES ('10979', '70', '1149', '2090', '0', '152', '39', '102', '334', '360');

-- PSDB merge end

-- ACID team fixes
-- new spawn for nazan - in midair (reused guid)
delete from `creature` where `id` = '17536';
insert into `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('85655', '17536', '543', '1', '0', '0', '-1378.86', '1767.02', '99.5819', '5.93257', '43200' , '0', '0', '33092', '0', '0', '2');
-- Nazan movement
delete from `creature_movement` where `id` = '85655';
insert into `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) values
('85655','1','-1411.35','1785.22','97.6027','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0','0','0'),
('85655','2','-1446.38','1762.92','96.4801','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0','0','0'),
('85655','3','-1375.66','1739.35','96.4284','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.32444','0','0'),
('85655','4','-1389.49','1727.1','82.1464','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.840039','0','0'),
('85655','5','-1409.62','1706.05','100.283','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.13871','0','0');
-- Nazan immune machanics, movement type - now he's flying when not in combat
UPDATE `creature_template` SET `MovementType` = '2', `mechanic_immune_mask` = `mechanic_immune_mask`|'268435455' WHERE `entry` = '17536';
-- Vazruden grabbing polearm (hellreaver), immune mechanics
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|'268435455' WHERE `entry` = '17537';
-- Vazruden - he will be spawned by nazan when entering combat - looks like dismounting
delete from `creature` where `id` = '17537';
-- Vazruden is grabbing Hellreaver in right hand
insert ignore into `creature_equip_template` (`entry`, `equipmodel1`, `equipmodel2`, `equipmodel3`, `equipinfo1`, `equipinfo2`, `equipinfo3`, `equipslot1`, `equipslot2`, `equipslot3`) values ('2183', '36729', '0', '0', '285279746', '0', '0', '0', '0', '0');
UPDATE `creature_template` SET `equipment_id` = '2183' WHERE `entry` = '17537';

-- ACID team fixes end

-- zstriker start

-- -----------------------------------------------------------------------
-- `Isle of Quel'Danas` fixes,(zstriker)
-- I've spend 1.5 month questing on it on offical, and know almost every corner:P
-- apply it after all psdb.sql&352_updatepack_mangos.sql
-- after that isle of quel'danas should looks 93.654244234% bl1zzlike
-- -----------------------------------------------------------------------

-- map `585`
-- middle wretcheds creatures wp
DELETE FROM `creature_movement` WHERE `id`=96825;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`text1`,`text2`,`text3`,`text4`,`text5`,`emote`,`spell`,`wpguid`,`orientation`,`model1`,`model2`) VALUES
(96825, 1, 231.335, 2.77129, -2.96215, 40000, '', '', '', '', '', 398, 0, 0, 5.1577, 0, 0),
(96825, 2, 231.335, 2.77129, -2.96215, 40000, 'I\'ll never stop. Never...', '', '', '', '', 398, 0, 0, 5.1577, 0, 0);
DELETE FROM `creature_movement` WHERE `id`=96830;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`text1`,`text2`,`text3`,`text4`,`text5`,`emote`,`spell`,`wpguid`,`orientation`,`model1`,`model2`) VALUES
(96830, 1, 232.15, -2.02771, -2.95377, 1, '', '', '', '', '', 398, 0, 0, 0.869425, 0, 0),
(96830, 2, 232.15, -2.02771, -2.95377, 10000, '', '', '', '', '', 398, 0, 0, 0.869425, 0, 0);
-- selin fireheart stun anim state before fight
DELETE FROM `creature_addon` WHERE (`guid`=96875);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (96875, 0, 512, 0, 4097, 64, 0, NULL);
-- tyrith should lie dead
DELETE FROM `creature_addon` WHERE (`guid`=96975);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (96975, 0, 512, 7, 4097, 0, 0, NULL);
-- map `530` ( isle of quel'danas )
-- crystal ward aura(just a visual go)
DELETE FROM `gameobject` WHERE `id`=187080;
REPLACE INTO `gameobject` (`guid`, `id`,`map`,`spawnMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(26222, 187080, 530, 1, 12630.3, -6973.65, 15.8386, 4.40555, 0, 0, 0.806859, -0.590744, 180, 0, 1),
(28284, 187080, 530, 1, 12690.1, -7007.15, 21.3425, 3.49842, 0, 0, 0.984126, -0.177469, 180, 0, 1),
(47220, 187080, 530, 1, 12696.5, -6929.97, 14.5332, 0.387862, 0, 0, 0.192718, 0.981254, 180, 0, 1),
(47221, 187080, 530, 1, 12723.2, -6973.3, 18.3323, 4.26419, 0, 0, 0.846566, -0.532284, 180, 0, 1),
(47222, 187080, 530, 1, 12751.4, -6882.72, 13.5636, 3.62094, 0, 0, 0.971416, -0.237385, 180, 0, 1),
(47223, 187080, 530, 1, 12765, -7090.63, 6.44272, 3.73053, 0, 0, 0.956957, -0.29023, 180, 0, 1),
(47224, 187080, 530, 1, 12775.8, -7005.19, 13.0259, 1.59974, 0, 0, 0.717265, 0.696801, 180, 0, 1),
(47225, 187080, 530, 1, 12785, -6853.72, 14.1508, 4.7605, 0, 0, 0.689893, -0.723912, 180, 0, 1),
(47226, 187080, 530, 1, 12789.2, -6919.12, 13.6691, 3.54314, 0, 0, 0.979913, -0.199427, 180, 0, 1),
(47227, 187080, 530, 1, 12819.3, -6883.41, 12.7846, 3.19049, 0, 0, 0.999701, -0.0244483, 180, 0, 1),
(47228, 187080, 530, 1, 12821, -6967.57, 10.4511, 0.335245, 0, 0, 0.166839, 0.985984, 180, 0, 1),
(47229, 187080, 530, 1, 12912.5, -6939.06, 3.77427, 4.26303, 0, 0, 0.846874, -0.531793, 180, 0, 1);
-- Shattered Sun Marksman anim for 4rd phase spawns
DELETE FROM `creature_addon` WHERE `guid` in (94431, 94430, 94429, 94428, 94427, 94426, 94425,  94424, 94423, 94422, 94421, 94420, 94419, 94418, 94417, 94416, 94415, 94414, 94413, 94412, 94411, 94410, 94409, 94408, 94407, 54092, 54049, 54038, 54034, 54028, 54023, 54004, 53981);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES
 (94431, 0, 0, 0, 0, 48, 0, NULL),
 (94430, 0, 0, 0, 0, 48, 0, NULL),
 (94429, 0, 0, 0, 0, 48, 0, NULL),
 (94428, 0, 0, 0, 0, 48, 0, NULL),
 (94427, 0, 0, 0, 0, 48, 0, NULL),
 (94426, 0, 0, 0, 0, 48, 0, NULL),
 (94425, 0, 0, 0, 0, 48, 0, NULL),
 (94424, 0, 0, 0, 0, 48, 0, NULL),
 (94423, 0, 0, 0, 0, 48, 0, NULL),
 (94422, 0, 0, 0, 0, 48, 0, NULL),
 (94421, 0, 0, 0, 0, 48, 0, NULL),
 (94420, 0, 0, 0, 0, 48, 0, NULL),
 (94419, 0, 0, 0, 0, 48, 0, NULL),
 (94418, 0, 0, 0, 0, 48, 0, NULL),
 (94417, 0, 0, 0, 0, 48, 0, NULL),
 (94416, 0, 0, 0, 0, 48, 0, NULL),
 (94415, 0, 0, 0, 0, 48, 0, NULL),
 (94414, 0, 0, 0, 0, 48, 0, NULL),
 (94413, 0, 0, 0, 0, 48, 0, NULL),
 (94412, 0, 0, 0, 0, 48, 0, NULL),
 (94411, 0, 0, 0, 0, 48, 0, NULL),
 (94410, 0, 0, 0, 0, 48, 0, NULL),
 (94409, 0, 0, 0, 0, 48, 0, NULL),
 (94408, 0, 0, 0, 0, 48, 0, NULL),
 (94407, 0, 0, 0, 0, 48, 0, NULL),
 (54092, 0, 0, 0, 0, 48, 0, NULL),
 (54038, 0, 0, 0, 0, 48, 0, NULL),
 (54034, 0, 0, 0, 0, 48, 0, NULL),
 (54028, 0, 0, 0, 0, 48, 0, NULL),
 (54023, 0, 0, 0, 0, 48, 0, NULL),
 (54004, 0, 0, 0, 0, 48, 0, NULL),
 (53981, 0, 0, 0, 0, 48, 0, NULL);
-- Shattered sun marksman weapons , should have bow in arms,dagger on hip
REPLACE INTO `creature_equip_template` (`entry`, `equipmodel1`, `equipmodel2`, `equipmodel3`, `equipinfo1`, `equipinfo2`, `equipinfo3`, `equipslot1`, `equipslot2`, `equipslot3`) VALUES (2129, 47630, 0, 35912, 50266626, 0, 33490690, 1, 0, 5);
-- Smith Hauthaa working anim
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (25046, 0, 0, 0, 0, 173, 0, NULL);
-- weapons to exotic vendors from 3d phase
UPDATE `creature_template` SET `equipment_id`= '2119' WHERE `entry` IN ('26091','26092','26089','26090') and equipment_id=0;
-- correct script_teleport (teleport from shattrath to quel'danas, from maggister terrace to quel'danas)
insert ignore into `spell_teleport` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) values 
(44870, 530, 12804, -6908, 41.1, 2.21),(46841, 530, 12888, -6876, 9, 0.3);

-- orb of translocation wdb data(the ones in wdb files are not existing in dbc files[wtf??wonderfull bl1zz4ard logic,lol],so I take spell id from dbc)+spell_teleport
-- buug edit: already correct.
UPDATE `gameobject_template` SET `data10` = 45368 WHERE `entry` = 187428;
UPDATE `gameobject_template` SET `data10` = 45371 WHERE `entry` = 187431;
replace into `spell_teleport` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) values 
(45368, 530, 12781.2977, -6878.514, 22.785, 2.066),   
(45371, 530, 12792.072 , -6892.482, 30.898, 5.328); 
     
-- creature_template data from psdb(wowhead,wdb), coz it's not in udb 351 right now, better then nothing
-- (http://www.wowhead.com/?npc=25036)
REPLACE INTO `creature_template` (`entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `ScriptName`) VALUES
 (25036, 22835, 22835, 22835, 22835, 'Caregiver Inaara', 'Innkeeper', '', 70, 70, 4000, 4000, 0, 0, 1, 1956, 1956, 65665, 1.08, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 0, 0, '');
-- (http://www.wowhead.com/?npc=25043)
REPLACE INTO `creature_template` (`entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `ScriptName`) VALUES
 (25043, 22839, 22839, 22839, 22839, 'Sereth Duskbringer', 'Poison Supplier', '', 70, 70, 2008, 2062, 3309, 3309, 0, 1956, 1956, 129, 1, 1, 1, 145, 187, 0, 581, 1430, 1573, 0, 0, 0, 0, 0, 0, 0, 145, 145, 507, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1394, '', 0, 3, 0, 1, 0, 0, '');
DELETE FROM `creature_template_addon` WHERE (`entry`=25043);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (25043, 0, 512, 1, 4097, 0, 0, '');
-- (http://www.wowhead.com/?npc=25950)
REPLACE INTO `creature_template` (`entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `ScriptName`) VALUES
  (25950, 23470, 23470, 23470, 23470, 'Shaani', 'Jewelcrafting Supplies', '', 70, 70, 3000, 3100, 0, 0, 0, 1956, 1956, 129, 1, 1, 0, 141, 182, 0, 565, 1500, 2500, 0, 0, 0, 0, 0, 0, 0, 141, 141, 493, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 0, 0, '');
-- (http://www.wowhead.com/?npc=24975)
REPLACE INTO `creature_template` (`entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `ScriptName`) VALUES
  (24975, 22781, 22781, 22781, 22781, 'Mar\'nah', 'Alchemist', '', 70, 70, 11000, 11400, 0, 0, 0, 1956, 1956, 3, 1, 1, 1, 285, 368, 0, 1142, 1500, 2500, 0, 0, 0, 0, 0, 0, 0, 284, 284, 994, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 0, 0, '');
-- (http://www.wowhead.com/?npc=25045)
REPLACE INTO `creature_template` (`entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `ScriptName`) VALUES
 (25045, 15593, 15593, 15593, 15593, 'Sentinel', 'Seraphina\'s Pet', '', 70, 70, 7008, 7062, 3309, 3309, 0, 1956, 1956, 0, 1, 1, 0, 145, 187, 0, 581, 1430, 1573, 0, 0, 2, 0, 0, 0, 0, 145, 145, 507, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1394, '', 1, 3, 0, 1, 0, 0, '');
-- (http://www.wowhead.com/?npc=25037)
REPLACE INTO `creature_template` (`entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `ScriptName`) VALUES
 (25037, 22836, 22836, 22836, 22836, 'Seraphina Bloodheart', 'Stable Master', '', 70, 70, 3108, 3262, 3155, 3155, 0, 1956, 1956, 4194305, 1, 1, 0, 145, 187, 0, 581, 1430, 1573, 0, 0, 0, 0, 0, 0, 0, 145, 145, 507, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1394, '', 0, 3, 0, 1, 0, 0, '');
-- (http://www.wowhead.com/?npc=25069)
REPLACE INTO `creature_template` (`entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `ScriptName`) VALUES
 (25069, 22861, 22861, 22861, 22861, 'Magister Ilastar', '', '', 70, 70, 6400, 6400, 0, 0, 0, 1956, 1956, 3, 1, 1, 1, 285, 368, 0, 1142, 1500, 2500, 0, 0, 0, 0, 0, 0, 0, 284, 284, 994, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 0, 0, '');
-- (http://www.wowhead.com/?npc=26089)
REPLACE INTO `creature_template` (`entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `ScriptName`) VALUES
 (26089, 23560, 23560, 23560, 23560, 'Kayri', 'Exotic Gear Purveyor', '', 70, 70, 6000, 6400, 0, 0, 0, 1956, 1956, 129, 1, 1, 0, 141, 182, 0, 565, 1500, 2500, 0, 0, 0, 0, 0, 0, 0, 141, 141, 493, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, '2119', 0, '');
-- (http://www.wowhead.com/?npc=25163)
REPLACE INTO `creature_template` (`entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `ScriptName`) VALUES
 (25163, 22972, 22972, 22972, 22972, 'Anchorite Kairthos', '', '', 70, 70, 10000, 12000, 3155, 3155, 0, 1956, 1956, 2, 1, 1, 1, 285, 368, 0, 1142, 1500, 2500, 0, 0, 0, 0, 0, 0, 0, 284, 284, 994, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 0, 0, '');
-- (http://www.wowhead.com/?npc=25112)
REPLACE INTO `creature_template` (`entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `ScriptName`) VALUES
 (25112, 22971, 22971, 22971, 22971, 'Anchorite Ayuri', '', '', 70, 70, 4000, 4000, 0, 0, 0, 1956, 1956, 3, 1, 1, 1, 285, 368, 0, 1142, 1500, 2500, 0, 0, 0, 0, 0, 0, 0, 284, 284, 994, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 0, 0, '');
-- creature_template data from psdb(wowhead,wdb), coz it's not in udb 351 right now, better then nothing
-- (http://www.wowhead.com/?npc=25661)
REPLACE INTO `creature_template` (`entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `ScriptName`) VALUES
 (25661, 23587, 23588, 23589, 23590, 'Shattered Sun Soldier', '', '', 70, 70, 6400, 6400, 0, 0, 0, 1956, 1956, 0, 1, 1, 0, 171, 229, 0, 1130, 1500, 2500, 0, 0, 0, 0, 0, 0, 0, 141, 141, 493, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 0, 0, '');
-- (http://www.wowhead.com/?npc=25644)
REPLACE INTO `creature_template` (`entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `ScriptName`) VALUES
 (25644, 23295, 23295, 23295, 23295, 'Neophyte Narama', '', '', 70, 70, 4700, 4700, 0, 0, 0, 1956, 1956, 0, 1, 1, 0, 171, 229, 0, 1130, 1500, 2500, 0, 0, 0, 0, 0, 0, 0, 141, 141, 493, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 0, 0, '');
-- (http://www.wowhead.com/?npc=25639)
REPLACE INTO `creature_template` (`entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `ScriptName`) VALUES
 (25639, 23297, 23297, 23297, 23297, 'Anchorite Elbadon', '', '', 70, 70, 4700, 4700, 0, 0, 0, 1956, 1956, 1, 1, 1, 0, 171, 229, 0, 1130, 1500, 2500, 0, 0, 0, 0, 0, 0, 0, 141, 141, 493, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 0, 0, '');
-- (http://www.wowhead.com/?npc=25632)
REPLACE INTO `creature_template` (`entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `ScriptName`) VALUES
 (25632, 23525, 23525, 23525, 23525, 'Vindicator Moorba', '', '', 70, 70, 8674, 8674, 0, 0, 0, 1956, 1956, 1, 1, 1, 0, 171, 229, 0, 1130, 1500, 2500, 0, 0, 0, 0, 0, 0, 0, 141, 141, 493, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 0, 0, '');
-- (http://www.wowhead.com/?npc=25638)
REPLACE INTO `creature_template` (`entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `ScriptName`) VALUES
 (25638, 23293, 23293, 16286, 23293, 'Captain Selana', '', '', 72, 72, 4700, 4700, 0, 0, 0, 1956, 1956, 1, 1, 1, 0, 176, 236, 0, 1162, 1500, 2500, 0, 0, 0, 0, 0, 0, 0, 145, 145, 507, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 0, 0, '');
-- sunblade protector and scout are see invisible units
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES (25507, '18950 0 18950 1');
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES (25372, '18950 0 18950 1');
-- kalegos should sleeping
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (24850, 0, 512, 3, 4097, 0, 0, NULL);

-- end, checked 2 times :)
-- random vendors:
-- vendor list
DELETE FROM `npc_vendor` WHERE (`entry`=27666);
REPLACE INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES
(27666, 32228, 0, 0, 1909),
(27666, 32229, 0, 0, 1909),
(27666, 32230, 0, 0, 1909),
(27666, 32231, 0, 0, 1909),
(27666, 32249, 0, 0, 1909),
(27666, 35238, 0, 0, 0),
(27666, 35239, 0, 0, 0),
(27666, 35240, 0, 0, 0),
(27666, 35241, 0, 0, 0),
(27666, 35242, 0, 0, 0),
(27666, 35243, 0, 0, 0),
(27666, 35244, 0, 0, 0),
(27666, 35245, 0, 0, 0),
(27666, 35246, 0, 0, 0),
(27666, 35247, 0, 0, 0),
(27666, 35248, 0, 0, 0),
(27666, 35249, 0, 0, 0),
(27666, 35250, 0, 0, 0),
(27666, 35251, 0, 0, 0),
(27666, 35252, 0, 0, 0),
(27666, 35253, 0, 0, 0),
(27666, 35254, 0, 0, 0),
(27666, 35255, 0, 0, 0),
(27666, 35256, 0, 0, 0),
(27666, 35257, 0, 0, 0),
(27666, 35258, 0, 0, 0),
(27666, 35259, 0, 0, 0),
(27666, 35260, 0, 0, 0),
(27666, 35261, 0, 0, 0),
(27666, 35262, 0, 0, 0),
(27666, 35263, 0, 0, 0),
(27666, 35264, 0, 0, 0),
(27666, 35265, 0, 0, 0),
(27666, 35266, 0, 0, 0),
(27666, 35267, 0, 0, 0),
(27666, 35268, 0, 0, 0),
(27666, 35269, 0, 0, 0),
(27666, 35270, 0, 0, 0),
(27666, 35271, 0, 0, 0),
(27666, 35322, 0, 0, 0),
(27666, 35323, 0, 0, 0),
(27666, 35325, 0, 0, 0),
(27666, 35766, 0, 0, 0),
(27666, 35767, 0, 0, 0),
(27666, 35768, 0, 0, 0),
(27666, 35769, 0, 0, 0),
(27666, 37504, 0, 0, 0);
DELETE FROM `npc_vendor` WHERE (`entry`=25950);
REPLACE INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES
(25950, 32228, 0, 0, 1909),
(25950, 32229, 0, 0, 1909),
(25950, 32230, 0, 0, 1909),
(25950, 32231, 0, 0, 1909),
(25950, 32249, 0, 0, 1909),
(25950, 35238, 0, 0, 0),
(25950, 35239, 0, 0, 0),
(25950, 35240, 0, 0, 0),
(25950, 35241, 0, 0, 0),
(25950, 35242, 0, 0, 0),
(25950, 35243, 0, 0, 0),
(25950, 35244, 0, 0, 0),
(25950, 35245, 0, 0, 0),
(25950, 35246, 0, 0, 0),
(25950, 35247, 0, 0, 0),
(25950, 35248, 0, 0, 0),
(25950, 35249, 0, 0, 0),
(25950, 35250, 0, 0, 0),
(25950, 35251, 0, 0, 0),
(25950, 35252, 0, 0, 0),
(25950, 35253, 0, 0, 0),
(25950, 35254, 0, 0, 0),
(25950, 35255, 0, 0, 0),
(25950, 35256, 0, 0, 0),
(25950, 35257, 0, 0, 0),
(25950, 35258, 0, 0, 0),
(25950, 35259, 0, 0, 0),
(25950, 35260, 0, 0, 0),
(25950, 35261, 0, 0, 0),
(25950, 35262, 0, 0, 0),
(25950, 35263, 0, 0, 0),
(25950, 35264, 0, 0, 0),
(25950, 35265, 0, 0, 0),
(25950, 35266, 0, 0, 0),
(25950, 35267, 0, 0, 0),
(25950, 35268, 0, 0, 0),
(25950, 35269, 0, 0, 0),
(25950, 35270, 0, 0, 0),
(25950, 35271, 0, 0, 0),
(25950, 35271, 0, 0, 0),
(25950, 35322, 0, 0, 0),
(25950, 35323, 0, 0, 0),
(25950, 35325, 0, 0, 0),
(25950, 35766, 0, 0, 0),
(25950, 35767, 0, 0, 0),
(25950, 35768, 0, 0, 0),
(25950, 35769, 0, 0, 0),
(25950, 37504, 0, 0, 0);

-- zstriker end


-- Cleanup
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
-- UPDATE `creature_template` SET `equipment_id`=0 WHERE `equipment_id` NOT IN (SELECT `entry` FROM `creature_equip_template`);
-- UPDATE `creature` SET `equipment_id`=0 WHERE `equipment_id` NOT IN (SELECT `entry` FROM `creature_equip_template`);
-- And finally db_version UPDATE
DELETE FROM `db_version`;
REPLACE INTO `db_version` VALUES ('UDB 0.10.2 (354) for MaNGOS rev. 6138 with SD2 SQL for rev. 450');
-- END

