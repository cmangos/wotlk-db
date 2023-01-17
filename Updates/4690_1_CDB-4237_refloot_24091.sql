-- Remove Refloot 24091 purple itemlevel 64-65 replaced by 60342,60343,60344
-- wotlkmangos: 12129 is level 80

-- 60342 NPC LOOT (Purple World Drop) - (Item Levels: 60-62) - (NPC Levels: 61)
-- 944 Elemental Mage Staff
-- 1263 Brain Hacker
-- 1443 Jeweled Amulet of Cainwyn
-- 2243 Hand of Edward the Odd
-- 2245 Helm of Narv
-- 2801 Blade of Hanna
-- 14553 Sash of Mercy
-- 14554 Cloudkeeper Legplates
-- 14555 Alcor's Sunrazor
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60342, -60342, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 9 items
11339, -- Hakkari Shadow Hunter 61 61 - 0.4 befor ( Purple: 0.10% Blue: 16.95% Green: 38.20% White: 28.52% ) - https://web.archive.org/web/20080423233721/http://wow.allakhazam.com:80/db/mob.html?wmob=11339
11356, -- Gurubashi Champion 61 61 - 0.4 befor - https://web.archive.org/web/20070314002402/http://wow.allakhazam.com/db/mob.html?wmob=11356
12459, -- Blackwing Warlock 61 61 - 0.3 befor - https://web.archive.org/web/20070825011951/http://wow.allakhazam.com/db/mob.html?wmob=12459
12468, -- Death Talon Hatcher 61 61 - 0.4 befor - https://web.archive.org/web/20070824154836/http://wow.allakhazam.com/db/mob.html?wmob=12468
15264 -- Anubisath Sentinel 61 61 - 0.3 befor - https://web.archive.org/web/20070826022549/http://wow.allakhazam.com/db/mob.html?wmob=15264
);
-- Add missing items uncovered by these npcs (doesnt matter if they dont match itemlevel requirement of the refloot description, loot is loot.
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60342, 2245, 0, 1, 1, 1, 0, 'Helm of Narv'),
(60342, 14555, 0, 1, 1, 1, 0, 'Alcor''s Sunrazor'),
(60342, 2801, 0, 1, 1, 1, 0, 'Blade of Hanna');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.1 WHERE `mincountorref` = -60342; -- Align General Chance

-- 60343 NPC LOOT (Purple World Drop) - (Item Levels: 60-64) - (NPC Levels: 61-62)
-- 944	Elemental Mage Staff
-- 1168 Skullflame Shield
-- 1263	Brain Hacker
-- 1443	Jeweled Amulet of Cainwyn
-- 2243	Hand of Edward the Odd
-- 2245 Helm of Narv
-- 2801	Blade of Hanna
-- 3475 Cloak of Flames
-- 14553	Sash of Mercy
-- 14554	Cloudkeeper Legplates
-- 14555	Alcor's Sunrazor
-- 14557 The Lion Horn of Stormwind
-- 14558	Lady Maye's Pendant
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60343, -60343, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 13 items
11665, -- Lava Annihilator 61 62 - 0.4 befor - https://web.archive.org/web/20070824104205/http://wow.allakhazam.com/db/mob.html?wmob=11665
11666, -- Firewalker 61 62 - 0.3 befor - https://web.archive.org/web/20070824102724/http://wow.allakhazam.com/db/mob.html?wmob=11666
11667, -- Flameguard 61 62 - 0.3 befor - https://web.archive.org/web/20070824102542/http://wow.allakhazam.com/db/mob.html?wmob=11667
11668, -- Firelord 61 62 - 0.4 befor - https://web.archive.org/web/20070824104532/http://wow.allakhazam.com/db/mob.html?wmob=11668
12076, -- Lava Elemental 61 62 - 0.4 befor - https://web.archive.org/web/20070824102908/http://wow.allakhazam.com/db/mob.html?wmob=12076
12101 -- Lava Surger 61 62 - 0.3 befor - https://web.archive.org/web/20070824102740/http://wow.allakhazam.com/db/mob.html?wmob=12101
);
-- Add missing items uncovered by these npcs (doesnt matter if they dont match itemlevel requirement of the refloot description, loot is loot.
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60343, 2245, 0, 1, 1, 1, 0, 'Helm of Narv'),
(60343, 3475, 0, 1, 1, 1, 0, 'Cloak of Flames'),
(60343, 1168, 0, 1, 1, 1, 0, 'Skullflame Shield'),
(60343, 14557, 0, 1, 1, 1, 0, 'The Lion Horn of Stormwind');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.1 WHERE `mincountorref` = -60343; -- Align General Chance

-- 60344 NPC LOOT (Purple World Drop) - (Item Levels: 61-65) - (NPC Levels: 62)
-- 944	Elemental Mage Staff
-- 1728	Teebu's Blazing Longsword
-- 2243	Hand of Edward the Odd
-- 2801	Blade of Hanna
-- 3475	Cloak of Flames
-- 14553	Sash of Mercy
-- 14554	Cloudkeeper Legplates
-- 14555	Alcor's Sunrazor
-- 14558	Lady Maye's Pendant
-- 1443 Jeweled Amulet of Cainwyn
-- 1263 Brain Hacker
-- 14557 The Lion Horn of Stormwind
-- 1168 Skullflame Shield
REPLACE INTO `creature_loot_template` (`entry`, `item`, `mincountorref`, `chanceorquestchance`, `groupid`, `maxcount`)
SELECT `entry`, 60344, -60344, 0.1, 0, 1 FROM `creature_template` WHERE `entry` IN ( -- 13 items
11659, -- Molten Destroyer	63	63
10371, -- Rage Talon Captain	62	62
11352, -- Gurubashi Berserker 62 62 - 0.4 befor - https://web.archive.org/web/20070826073104/http://wow.allakhazam.com/db/mob.html?wmob=11352
11673, -- Ancient Core Hound 62 62 - 0.3 befor - https://web.archive.org/web/20070824102455/http://wow.allakhazam.com/db/mob.html?wmob=11673
-- We currently dont have a ~63 table, so add 60344 for these too, rename for future additions
12129, -- Onyxian Warder 60 63 - 0.4 befor - https://web.archive.org/web/20070825050109/http://wow.allakhazam.com/db/mob.html?wmob=12129
12460, -- Death Talon Wyrmguard 63 63 - 0.3 befor - https://web.archive.org/web/20070826071518/http://wow.allakhazam.com/db/mob.html?wmob=12460
15204 -- High Marshal Whirlaxis 63 63 - 0.1 befor - https://web.archive.org/web/20070826022728/http://wow.allakhazam.com/db/mob.html?wmob=15204
);
-- Add missing items uncovered by these npcs (doesnt matter if they dont match itemlevel requirement of the refloot description, loot is loot.
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(60344, 1443, 0, 1, 1, 1, 0, 'Jeweled Amulet of Cainwyn'),
(60344, 1263, 0, 1, 1, 1, 0, 'Brain Hacker'),
(60344, 14557, 0, 1, 1, 1, 0, 'The Lion Horn of Stormwind'),
(60344, 1168, 0, 1, 1, 1, 0, 'Skullflame Shield');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 0.1 WHERE `mincountorref` = -60344 AND `entry` != 15818; -- Align General Chance (Exclude Eventboss)

-- Templates still differ from each other after additions, so no need to merge them.
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 59-64) - (NPC Levels: 61) - VANILLA NPC ONLY' WHERE `entry` = 60342; -- (Item Levels: 60-62)
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 59-65) - (NPC Levels: 61-62) - VANILLA NPC ONLY' WHERE `entry` = 60343; -- (Item Levels: 60-64)
UPDATE `reference_loot_template_names` SET `name` = 'NPC LOOT (Purple World Drop) - (Item Levels: 59-65) - (NPC Levels: 62-63) - VANILLA NPC ONLY' WHERE `entry` = 60344; -- (Item Levels: 61-65)

-- Remove 24091, Remove other purple refloots from these npcs
DELETE FROM `creature_loot_template` WHERE `mincountorref` BETWEEN -24091 AND -24079 AND `entry` IN (
-- wotlk (added here ore elsewhere)
10317, -- Blackhand Elite
10318, -- Blackhand Assassin
10319, -- Blackhand Iron Guard
10371, -- Rage Talon Captain
10400, -- Thuzadin Necromancer
10417, -- Venom Belcher
11659, -- Molten Destroyer
-- tbc and others
11339,11352,11356,11665,11666,11667,11668,11673,12076,12101,12129,12459,12460,12468,15204,15264);
DELETE FROM `reference_loot_template` WHERE `entry` = 24091; -- only these are completly gone then
DELETE FROM `reference_loot_template_names` WHERE `entry` = 24091;

-- NAXX NPCS
DELETE FROM `creature_loot_template` WHERE `mincountOrRef` IN (-60000,-60001,-60002,-60003,-60004,-60005,-60006,-60007,-60008,-60100,-60101,-60102,-60103,-60104,-60105,-60106,-60107,-60108,-60109,-60110,-60111,-60112,-60113,-60114,-60115,-60116,-60117,-60118,-60119,-60120,-60121,-60122,-60123,-60124,-60125,-60126,-60127,-60128,-60129,-60130,-60131,-60132,-60133,-60134,-60135,-60136,-60137,-60138,-60139,-60140,-60141,-60142,-60143,-60144,-60145,-60146,-60147,-60148,-60149,-60150,-60151,-60152,-60153,-60154,-60155,-60156,-60157,-60158,-60159,-60160,-60161,-60162,-60163,-60164,-60165,-60166,-60167,-60168,-60169,-60170,-60171,-60172,-60173,-60174,-60175,-60176,-60177,-60178,-60179,-60180,-60181,-60182,-60183,-60184,-60185,-60186,-60187,-60188,-60189,-60190,-60191,-60192,-60193,-60194,-60195,-60196,-60197,-60198,-60199,-60200,-60201,-60202,-60203,-60204,-60205,-60206,-60207,-60208,-60209,-60210,-60211,-60212,-60213,-60214,-60215,-60216,-60217,-60218,-60219,-60220,-60221,-60222,-60223,-60224,-60225,-60226,-60227,-60228,-60229,-60230,-60231,-60232,-60233,-60234,-60235,-60236,-60237,-60238,-60239,-60240,-60241,-60242,-60243,-60244,-60245,-60246,-60247,-60248,-60249,-60250,-60251,-60252,-60253,-60254,-60255,-60256,-60257,-60258,-60259,-60260,-60261,-60262,-60263,-60264,-60265,-60266,-60267,-60268,-60269,-60270,-60271,-60272,-60273,-60274,-60275,-60276,-60277,-60278,-60279,-60280,-60281,-60282,-60283,-60284,-60290,-60291,-60292,-60293,-60294,-60295,-60296,-60297,-60298,-60300,-60301,-60302,-60303,-60304,-60305,-60306,-60307,-60308,-60309,-60310,-60311,-60312,-60313,-60314,-60315,-60316,-60317,-60318,-60319,-60320,-60321,-60322,-60323,-60324,-60325,-60326,-60327,-60328,-60329,-60330,-60331,-60332,-60333,-60334,-60335,-60336,-60337,-60338,-60339,-60340,-60341,-60342,-60343,-60344,-60345,-60346,-60401,-60402,-60403,-60404,-60405,-60406,-60407,-60408,-60409,-60410,-60411,-60412,-60413,-60414,-60415,-60416,-60417,-60418,-60419,-60420,-60421,-60422,-60423,-60424,-60425,-60426,-60427,-60428,-60429,-60430,-60431,-60432,-60433,-60434,-60435,-60436,-60437,-60438,-60439,-60440,-60441,-60442,-60443,-60444,-60445,-60446,-61000,-61001,-61100,-61101,-61102,-61103,-61104,-61105,-61106,-61107,-61108,-61109,-61110,-61111,-61112,-61113,-61114,-61115,-61116,-61117,-61118,-61119,-61120,-61121,-61122,-61123,-61124,-61125,-61126,-61127,-61128,-61129,-61130,-61200,-61201,-61202,-61203,-61204,-61205,-61206,-61207,-61208,-61209,-61210,-61211,-61212,-61213,-61214,-61215,-61216,-61217,-61218,-61219,-61220,-61221,-61222,-61223,-61224,-61225,-61226,-61227,-61228)
AND `entry` IN (16029,4075,14881,15384,15928,15929,15930,15931,15932,15936,15952,15953,15954,15956,15974,15975,15976,15977,15978,15979,15980,15981,15990,16011,16017,16018,16020,16021,16022,16024,16025,16028,16030,16034,16036,16037,16056,16057,16060,16061,16062,16063,16064,16065,16067,16068,16082,16137,16145,16146,16154,16156,16157,16158,16163,16164,16165,16167,16168,16193,16211,16218,16236,16243,16244,16297,16365,16368,16381,16400,16446,16447,16448,16449,16451,16452,16453,16505,16506,16573,16803,16861,16980,16998,17231,17286,17293);

DELETE FROM `reference_loot_template` WHERE `mincountOrRef` = -24091;

