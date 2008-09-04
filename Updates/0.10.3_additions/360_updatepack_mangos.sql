-- Start update pack 360 -- 08-08-08

-- forum start
UPDATE `item_template` SET `spellppmRate_1` = 0 WHERE `entry` = 21713;

DELETE FROM `creature_template_addon` WHERE `entry` IN ('17794', '17795');
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES
('17794', '23196 0'),
('17795', '23196 0');

UPDATE `creature_template` SET `faction_A` = 1737, `faction_H` = 1737 WHERE `entry` = 17289;

-- NPC Draenei Vindicator, fix for wrong faction.
UPDATE `creature_template` SET `faction_A`='1638', `faction_H`='1638' WHERE `entry`='16996';

-- quest Zukk'ash Report (Horde), fix for bug in chain.
UPDATE `quest_template` SET `nextQuestId`='0', `ExclusiveGroup`='0' WHERE `entry`='2903';
UPDATE `quest_template` SET `nextQuestId`='7732', `ExclusiveGroup`='-7730' WHERE `entry` IN ('7730', '7731');

UPDATE `quest_template` SET `SpecialFlags` = '0' WHERE `entry` = '10166';

-- NPC Mulgore Trigger, fix for attack on players.
UPDATE `creature_template` SET `flags_extra` = `flags_extra`|'2' WHERE entry='15164';

-- add limited supply to engineering items
-- Bronze Framework
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 10800 WHERE `item` = 4382;

-- Bronze Tube
UPDATE `npc_vendor` SET `maxcount` = 2, `incrtime` = 10800 WHERE `item` = 4371;

-- Coarse Blasting Powder
UPDATE `npc_vendor` SET `maxcount` = 4, `incrtime` = 10800 WHERE `item` = 4364;

-- Gyrochronatom
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 10800 WHERE `item` = 4382;

-- Copper Modulator
UPDATE `npc_vendor` SET `maxcount` = 2, `incrtime` = 10800 WHERE `item` = 4363;

-- Copper Tube
UPDATE `npc_vendor` SET `maxcount` = 2, `incrtime` = 10800 WHERE `item` = 4361;

-- Rough Blasting Powder
UPDATE `npc_vendor` SET `maxcount` = 4, `incrtime` = 10800 WHERE `item` = 4357;

-- Silver Contact
UPDATE `npc_vendor` SET `maxcount` = 3, `incrtime` = 10800 WHERE `item` = 4404;


-- Schematic: Gnomish Universal Remote and Schematic: Lovingly Crafted Boomstick should be sold by Jinky Twizzlefixxit, too
REPLACE INTO `npc_vendor` (`entry`, `item`) VALUES (6730, 7560), (6730, 13309);
-- should have limited supply
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 43200 WHERE `item` IN (7560, 13309);

-- Schematic: Minor Recombobulator should have limited supply
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 43200 WHERE `item` = 14639;

-- Schematic: Green Firework should have limited supply
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 43200 WHERE `item` = 18648;

-- Schematic: Ultra-Spectropic Detection Goggles should have limited supply
UPDATE `npc_vendor` SET `maxcount` = 1, `incrtime` = 43200 WHERE `item` = 23805;

UPDATE `quest_template` SET `RequiredMinRepFaction` = '970' WHERE `entry` =9919;

-- Aeranas .
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='35' WHERE `entry`='17085';

UPDATE `quest_template` SET `SpecialFlags` = `SpecialFlags`|'1' WHERE `entry` = '10347';
UPDATE `quest_template` SET `SpecialFlags` = `SpecialFlags`|'1' WHERE `entry` = '10346';

UPDATE creature_template SET minmana = 0, maxmana = 0, mindmg = 0, maxdmg = 0, attackpower = 0 WHERE entry = 23086;

-- Fertile Dirt Mound has data1 = 0
UPDATE `gameobject_template` SET `flags` = '0' WHERE `entry` = '181690';
UPDATE `gameobject` SET `spawntimesecs` = '180' WHERE `id` = '181690';

-- Scarlet Monastery fire elemental, restoring faction of UDB 0.8.1
UPDATE `creature_template` SET `faction_A` = '67', `faction_H` = '67' WHERE `entry` = '575';

UPDATE `quest_template` SET `PrevQuestId` = '364' WHERE `entry` = '3095';

-- Mogh the Undying better loot
DELETE FROM `creature_loot_template` WHERE (`entry` = '1060') AND `item` IN ('4338', '4306', '8152', '8153', '1645', '4599');
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(1060, 4338, 0, 2, 1, 4, 0, 0, 0), -- Mageweave Cloth
(1060, 4306, 0, 2, 1, 4, 0, 0, 0), -- Silk Cloth
(1060, 8152, 25, 2, 1, 1, 0, 0, 0), -- Flask of Big Mojo
(1060, 8153, 8, 2, 1, 1, 0, 0, 0), -- Wildvine
(1060, 1645, 5, 2, 1, 1, 0, 0, 0), -- Moonberry Juice
(1060, 4599, 5, 2, 1, 1, 0, 0, 0); -- Cured Ham Steak

DELETE FROM `creature_template_addon` WHERE `entry` IN ('25090', '25092');
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES
('25090', '23196 0'),
('25092', '23196 0');

DELETE FROM `gameobject_loot_template` WHERE `item` = '9546';

-- Leassian No Stats
UPDATE `creature_template` SET `minlevel` = 66, `maxlevel` = 66, `minhealth` = 4790, `maxhealth` = 4790, `faction_A` = 84, `faction_H` = 84 WHERE `entry` = 24905;
-- Liza Cutlerflix no stats
UPDATE `creature_template` SET `minlevel` = 66, `maxlevel` = 66, `minhealth` = 4955, `maxhealth` = 4955 WHERE `entry` = 24974;

-- Gaeriyan Creature UPDATE
UPDATE `creature` SET `position_x` = '-6948.18' , `position_y` ='-3939.48' , `position_z` ='31.4876' , `orientation` ='1.98427' ,`movementtype` ='1' WHERE `id` = '9299';

-- Gaeriyan creature_template_addon
DELETE FROM `creature_template_addon` WHERE (`entry` = '9299');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES
('9299', '0', '16777472', '65536', '4097', '0', '0', '10848 0');

-- Gaeriyan creature_template update
UPDATE `creature_template` SET `faction_A` ='35' , `faction_H` ='35' , `npcflag` ='3' WHERE `entry` = '9299';

-- Remove Filled Containment Coffers
DELETE FROM `gameobject` WHERE (`guid` IN ('42882', '42883', '42884', '42885', '42886', '42887', '42888')) AND (`id` = '103574');

-- Bronk
UPDATE `creature_model_info` SET `modelid_other_gender` = '0' WHERE (`modelid` = '7380');

-- Add Brew Fest Items to Uta Roughdough
DELETE FROM `npc_vendor` WHERE (`entry`='23603');
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
('23603', '29449', '0', '0', '0'),
('23603', '4541', '0', '0', '0'),
('23603', '8950', '0', '0', '0'),
('23603', '27855', '0', '0', '0'),
('23603', '4542', '0', '0', '0'),
('23603', '4544', '0', '0', '0'),
('23603', '4601', '0', '0', '0'),
('23603', '33043', '0', '0', '0'),
('23603', '4540', '0', '0', '0');

UPDATE `quest_template` SET `RequiredRaces`=16, `MinLevel`=10, `ExclusiveGroup`=1478 WHERE `entry` IN (1478,10789);
UPDATE `quest_template` SET `RequiredRaces`=16 WHERE `entry` IN (1471,1473);
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry` IN (1473,1478,10789);
UPDATE `quest_template` SET `NextQuestId`=1473 WHERE `entry` IN (1478,10789);

UPDATE `quest_template` SET `RequiredRaces`=2, `MinLevel`=10, `ExclusiveGroup`=1506 WHERE `entry` IN (1506,10790);
UPDATE `quest_template` SET `RequiredRaces`=2 WHERE `entry` IN (1501,1504);
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry` IN (1501,1506,10790);
UPDATE `quest_template` SET `NextQuestId`=1501 WHERE `entry` IN (1506,10790);

-- S3 Shoulders
UPDATE `npc_vendor` SET `ExtendedCost` = '2392' WHERE `item` IN ('33668', '33699', '33726', '33753', '33679', '33682', '33693', '33674', '33770', '33747', '33720', '33732', '33742', '33710', '33703', '33757', '33715');

DELETE FROM `npc_gossip` WHERE `npc_guid`=90518;
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (90518, 11090);

-- Jaguero Stalker should also have passive aura for 2 additional attacks, bestiary
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = '2522');
DELETE FROM `creature_template_addon` WHERE (`entry` = '2522');
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES
('2522', '0', '16908544', '33554432', '4097', '0', '0', '30831 0 12787 0');
-- Jaguero Stalker stats, bestiary
UPDATE `creature_template` SET `minlevel` = '41', `maxlevel` = '41', `minhealth` = '1902', `maxhealth` = '1902', `armor` = '2101', `mindmg` = '59', `maxdmg` = '78', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '2522';

UPDATE `gameobject` SET `id` = '58', `spawntimesecs` = '60' WHERE `guid` = '11028' AND `id` = '179426';

-- Remove extra Takar the Seer
DELETE FROM `creature` WHERE (`guid` = '7400') AND (`id` = '6244');

UPDATE `gameobject` SET `position_z` = '11.5791' WHERE `guid` = '13978' AND `id` = '4149';

UPDATE `gameobject` SET `position_z` = '58.517' WHERE `guid` = '16648' AND `id` = '2855';

-- Black Temple
UPDATE `creature` SET `spawntimesecs` = '604800' WHERE `id` IN ('22887', '22898', '22841', '22871', '22948', '22947', '22949', '22950', '22951', '22952', '22917', '22856');
-- Gruul's Lair
UPDATE `creature` SET `spawntimesecs` = '604800' WHERE `id` IN ('18831', '19044');
-- The Eye
UPDATE `creature` SET `spawntimesecs` = '604800' WHERE `id` IN ('19514', '19516', '18805', '19622');
-- Karazhan
UPDATE `creature` SET `spawntimesecs` = '604800' WHERE `id` IN ('16151', '15687', '16457', '16181', '16180', '16179', '15691', '15688', '16524', '15689', '17225', '15690', '17534', '17533', '17603', '17535', '17548', '17543', '17547', '17546', '18168', '17521');

-- Sunwell Plateau
UPDATE `creature` SET `spawntimesecs` = '604800' WHERE `id` IN ('24850', '24892', '24882', '25038', '25166', '25165', '25741', '25840', '25315');
-- Hyjal Summit
UPDATE `creature` SET `spawntimesecs` = '604800' WHERE `id` IN ('17767', '17808', '17888', '17842', '17968');
-- Zul'Aman
UPDATE `creature` SET `spawntimesecs` = '259200' WHERE `id` IN ('23574', '23576', '23578', '23577', '24239', '23863');

-- A Gesture of Commitment
UPDATE `quest_template` SET `RewOrReqMoney` = '-1500000' WHERE `entry` = '9723';

-- Araj Scarab shall not drop FROM any creatures
DELETE FROM `creature_loot_template` WHERE `item` = '14610';
-- Araj Scarab
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance` = '-100' WHERE `item` = '14610';

-- DELETE Conjured Bread FROM Bloodsail Raider loot
DELETE FROM `creature_loot_template` WHERE `item` = '1113';

DELETE FROM npc_vendor WHERE entry = 15165;
REPLACE INTO `npc_vendor` (entry, item, maxcount, incrtime, extendedcost) VALUES
(15165, 2325, 0, 0, 0),
(15165, 2324, 0, 0, 0),
(15165, 6260, 0, 0, 0),
(15165, 2320, 0, 0, 0),
(15165, 2321, 0, 0, 0),
(15165, 4340, 0, 0, 0),
(15165, 2605, 0, 0, 0),
(15165, 8343, 0, 0, 0),
(15165, 6261, 0, 0, 0),
(15165, 37915, 1, 7200, 0),
(15165, 38327, 0, 0, 0),
(15165, 38328, 0, 0, 0),
(15165, 10290, 0, 0, 0),
(15165, 4342, 0, 0, 0),
(15165, 2604, 0, 0, 0),
(15165, 14341, 0, 0, 0),
(15165, 4291, 0, 0, 0),
(15165, 4341, 0, 0, 0);
UPDATE `creature_template` SET `npcflag` = `npcflag`|'128' WHERE `entry` = '15165';

-- suggestion:
UPDATE `gameobject_template` SET `size` = 0.1 WHERE `entry` = 185018;

UPDATE `quest_template` SET `RewRepFaction1`='1031',`RewRepValue1`='250' WHERE (`entry`='11093');


-- This item should be dropped by default
UPDATE creature_loot_template SET ChanceOrQuestChance = '100' WHERE item = '23870';

REPLACE INTO creature_movement (id,point,position_x,position_y,position_z,orientation)
VALUES ('69879','1','-3620.921143', '4939.760742', '-101.050308', '3.099066');
UPDATE creature SET MovementType = '2' WHERE guid = '69879';
REPLACE INTO creature_movement (id,point,position_x,position_y,position_z,orientation)
VALUES ('69880','1','-3625.250488', '4943.077637', '-101.050247', '3.099066');
UPDATE creature SET MovementType = '2' WHERE guid = '69880';
REPLACE INTO creature_movement (id,point,position_x,position_y,position_z,orientation)
VALUES ('69878','1','-3625.074463', '4947.215332', '-101.050247', '3.099066');
UPDATE creature SET MovementType = '2' WHERE guid = '69878';

-- Rageclaw double spawned
DELETE FROM creature WHERE (guid = '46817') AND (id = '7318');
-- template_addon present
DELETE FROM creature_addon WHERE guid IN ('46817', '46818');
DELETE FROM creature_movement WHERE id IN ('46817', '46818');
REPLACE INTO creature_movement (id, point, position_x, position_y, position_z, orientation) VALUES
('46818', '1','9847.938477', '1512.503418', '1257.035645', '1.108445'),
('46818', '2','9867.715820', '1521.702881', '1257.660400', '3.517260'),
('46818', '3','9876.722656', '1505.786743', '1258.352783', '4.993804'),
('46818', '4','9875.937500', '1493.788086', '1258.606323', '4.533559'),
('46818', '5','9848.082031', '1492.790649', '1257.601929', '2.914871');
UPDATE creature SET MovementType = '2' WHERE (guid = '46817') AND (id = '7318');

UPDATE `spell_target_position` SET `target_orientation` = '2.28' WHERE `id` = '17334';

UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=9529;
UPDATE `quest_template` SET `RequiredRaces`=512 WHERE `entry` IN (9529,9619);


update gameobject SET position_z = -16.4956 WHERE guid = 12595;

DELETE FROM `creature` WHERE `guid`=86160;

-- journeyman fishing requires character level 10
UPDATE `npc_trainer` SET reqlevel=10 WHERE spell=7731;

-- apprentice cooking / no character level req, 1 silver
UPDATE `npc_trainer` SET reqlevel=0, spellcost=100 WHERE spell=2550;
-- journeyman cooking / no character level req
UPDATE `npc_trainer` SET reqlevel=10 WHERE spell=3102;

-- spice bread
UPDATE `npc_trainer` SET reqskillvalue=1 WHERE spell=37836;
-- spiced wolf meat
UPDATE `npc_trainer` SET reqskillvalue=10 WHERE spell=2539;
-- coyote steak
UPDATE `npc_trainer` SET reqskillvalue=50 WHERE spell=2541;
-- boiled clams
UPDATE `npc_trainer` SET reqskillvalue=50 WHERE spell=6499;
-- crab cake
UPDATE `npc_trainer` SET reqskillvalue=75 WHERE spell=2544;
-- dry pork ribs
UPDATE `npc_trainer` SET reqskillvalue=80 WHERE spell=2546;
-- goblin deviled clams
UPDATE `npc_trainer` SET reqskillvalue=125 WHERE spell=6500;
-- spider sausage
UPDATE `npc_trainer` SET reqskillvalue=200 WHERE spell=21175;

-- In Nightmares
UPDATE `quest_template` SET `OfferRewardText` = 'Falla sent you to me? Well now, let''s see that shard that you say she was so hesitant to talk about...$B$B<Hamuul peers into the shard>$B$BOh... I didn''t... Well.$B$B$N, thank you for delivering this to me. It isn''t wise to speak of things such as this, though, I advise you. These are matters that you should not concern yourself with.$B$BLet''s just say that things in the Emerald Dream are not as we thought...$B$BPerhaps in the future, our paths may cross again.$B$B' WHERE `entry` = '3369';

-- Lhara <Darkmoon Faire Exotic Goods> should sell 3xKnothide Leather
DELETE FROM npc_vendor WHERE entry = 14846 AND item = 21887;
REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, ExtendedCost) VALUES (14846, 21887, 3, 7200, 0);
UPDATE npc_vendor SET maxcount = 1 WHERE item = 19303 AND entry = 14846; -- Darkmoon Necklace
UPDATE npc_vendor SET maxcount = 1 WHERE item = 19302 AND entry = 14846; -- Darkmoon Ring
UPDATE npc_vendor SET maxcount = 1 WHERE item = 12251 AND entry = 14846; -- Big Stick
UPDATE npc_vendor SET maxcount = 2 WHERE item = 13468 AND entry = 14846; -- Black Lotus
UPDATE npc_vendor SET maxcount = 1 WHERE item = 12248 AND entry = 14846; -- Daring Dirk
UPDATE npc_vendor SET maxcount = 1 WHERE item = 11305 AND entry = 14846; -- Dense Shortbow
UPDATE npc_vendor SET maxcount = 1 WHERE item = 11303 AND entry = 14846; -- Fine Shortbow
UPDATE npc_vendor SET maxcount = 1 WHERE item = 11306 AND entry = 14846; -- Sturdy Recurve
UPDATE npc_vendor SET maxcount = 1 WHERE item = 11308 AND entry = 14846; -- Sylvan Shortbow
UPDATE npc_vendor SET maxcount = 2 WHERE item = 22790 AND entry = 14846; -- Ancient Lichen
UPDATE npc_vendor SET maxcount = 4 WHERE item = 2453 AND entry = 14846; -- Bruiseweed
UPDATE npc_vendor SET maxcount = 3 WHERE item = 13463 AND entry = 14846; -- Dreamfoil
UPDATE npc_vendor SET maxcount = 4 WHERE item = 2449 AND entry = 14846; -- Earthroot
UPDATE npc_vendor SET maxcount = 2 WHERE item = 12810 AND entry = 14846; -- Enchanted Leather
UPDATE npc_vendor SET maxcount = 2 WHERE item = 22794 AND entry = 14846; -- Fel Lotus
UPDATE npc_vendor SET maxcount = 4 WHERE item = 8845 AND entry = 14846; -- Ghost Mushroom
UPDATE npc_vendor SET maxcount = 3 WHERE item = 13464 AND entry = 14846; -- Golden Sansam
UPDATE npc_vendor SET maxcount = 2 WHERE item = 23793 AND entry = 14846; -- Heavy Knothide Leather
UPDATE npc_vendor SET maxcount = 4 WHERE item = 4234 AND entry = 14846; -- Heavy Leather
UPDATE npc_vendor SET maxcount = 4 WHERE item = 3358 AND entry = 14846; -- Khadgar's Whisker
UPDATE npc_vendor SET maxcount = 4 WHERE item = 3356 AND entry = 14846; -- Kingsblood
UPDATE npc_vendor SET maxcount = 3 WHERE item = 21887 AND entry = 14846; -- Knothide Leather
UPDATE npc_vendor SET maxcount = 4 WHERE item = 3357 AND entry = 14846; -- Liferoot
UPDATE npc_vendor SET maxcount = 4 WHERE item = 785 AND entry = 14846; -- Mageroyal
UPDATE npc_vendor SET maxcount = 2 WHERE item = 22793 AND entry = 14846; -- Mana Thistle
UPDATE npc_vendor SET maxcount = 5 WHERE item = 2319 AND entry = 14846; -- Medium Leather
UPDATE npc_vendor SET maxcount = 2 WHERE item = 13465 AND entry = 14846; -- Mountain Silversage
UPDATE npc_vendor SET maxcount = 2 WHERE item = 22791 AND entry = 14846; -- Netherbloom
UPDATE npc_vendor SET maxcount = 2 WHERE item = 22792 AND entry = 14846; -- Nightmare Vine
UPDATE npc_vendor SET maxcount = 2 WHERE item = 22787 AND entry = 14846; -- Ragveil
UPDATE npc_vendor SET maxcount = 4 WHERE item = 8170 AND entry = 14846; -- Rugged Leather
UPDATE npc_vendor SET maxcount = 2 WHERE item = 22789 AND entry = 14846; -- Terocone
UPDATE npc_vendor SET maxcount = 3 WHERE item = 25708 AND entry = 14846; -- Thick Clefthoof Leather
UPDATE npc_vendor SET maxcount = 4 WHERE item = 4304 AND entry = 14846; -- Thick Leather
UPDATE npc_vendor SET maxcount = 4 WHERE item = 3355 AND entry = 14846; -- Wild Steelbloom

-- Quest WANTED: Deathclaw should be started by the Wanted Poster
DELETE FROM `creature_questrelation` WHERE `quest` = 9646;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 9646;
REPLACE INTO `gameobject_questrelation` (`id` , `quest`) VALUES ('181889', '9646');

-- these NPCs shouldn't walk around
UPDATE `creature` SET `spawndist` = '0', `MovementType` = '0' WHERE `guid` IN (63162, 63388, 63725, 67166, 62896, 63727, 67161, 63369);

-- quest A Good Friend
UPDATE `quest_template` SET `OfferRewardText`='I''m so glad you found me, $N. How did you know I was here?' WHERE `entry`='4495';

-- Z'kral
UPDATE `creature_template` SET `minhealth` = '5341', `maxhealth` = '5341', `armor` = '4391', `mindmg` = '172', `maxdmg` = '240', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '18974';
-- Gan'arg Sapper
UPDATE `creature_template` SET `minhealth` = '4142', `maxhealth` = '4979', `armor` = '3679', `mindmg` = '122', `maxdmg` = '196', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '18827';


REPLACE INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `flag1`, `type`, `family`, `rank`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `RacialLeader`, `faction_A`, `faction_H`) VALUES ('28363','Big Battle Bear','','','0','1','0','0','25335','0','25335','0','0','35','35');

REPLACE INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `flag1`, `type`, `family`, `rank`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `RacialLeader`, `faction_A`, `faction_H`) VALUES
('26071','Arena Nether Drake','','','0','2','0','0','22620','0','22620','0','0','35','35');

-- Murgurgula should drop Gurf's Dignity
DELETE FROM creature_loot_template WHERE item = 23850;
REPLACE INTO creature_loot_template VALUES (17475, 23850, 100, 0, 1, 1, 0, 0, 0);

-- Enraged Panther was going out of cage
UPDATE `creature_template` SET `flags_extra` = `flags_extra`|'2' WHERE `entry` = '10992';

-- Thwarting Kolkar Aggression
UPDATE `gameobject` SET `state` = '1' WHERE `id` IN ('3189', '3190', '3192');
UPDATE `gameobject_template` SET `flags` = `flags`&~'4' WHERE `entry` IN ('3189', '3190', '3192');

UPDATE creature SET position_z = '76.542984' WHERE guid = '72532';
UPDATE creature SET position_z = '76.544258' WHERE guid = '72529';
UPDATE creature SET position_z = '76.544258' WHERE guid = '72526';
UPDATE creature SET position_z = '76.544258' WHERE guid = '72525';
UPDATE creature SET position_z = '76.544258' WHERE guid = '72531';
UPDATE creature SET position_z = '76.544258' WHERE guid = '72527';
UPDATE creature SET position_z = '76.544258' WHERE guid = '72528';
UPDATE creature SET position_z = '76.555023' WHERE guid = '72530';
UPDATE creature SET position_z = '62.502758' WHERE guid = '77204';
UPDATE creature SET position_z = '62.314354' WHERE guid = '69086';
UPDATE creature SET position_z = '62.493382' WHERE guid = '69083';
UPDATE creature SET position_z = '61.686924' WHERE guid = '69085';
UPDATE creature SET position_z = '61.807930' WHERE guid = '69084';
UPDATE creature SET position_z = '62.448608' WHERE guid = '68915';
UPDATE creature SET position_z = '76.543365' WHERE guid = '76073';
UPDATE creature SET position_z = '94.437607' WHERE guid = '76724';
UPDATE creature SET position_z = '93.561241' WHERE guid = '69079';

-- dpilon SW waypoints

DELETE FROM `creature` WHERE `guid` IN (90439, 90440, 90443);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('90439','2330','0','1','0','0','-8856.26','741.91','100.666','2.15696','25','0','0','4300','0','0','2'),
('90440','2331','0','1','0','0','-8855.95','739.398','100.652','2.15696','25','0','0','810','0','0','2'),
('90443','3504','0','1','0','0','-8854.86','740.935','100.705','2.15696','25','0','0','3000','0','0','2');

DELETE FROM `creature_movement` WHERE `id` IN (90439, 90443, 90440);
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
('90439','1','-8856.26','741.91','100.666','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.15696','0','0'),
('90439','2','-8860.26','747.938','99.9222','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.15696','0','0'),
('90439','3','-8866.15','756.326','97.8264','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.16089','0','0'),
('90439','4','-8870.51','760.372','96.7027','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.45148','0','0'),
('90439','5','-8879.54','756.138','96.2687','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.91262','0','0'),
('90439','6','-8883.45','758.191','95.4731','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.48536','0','0'),
('90439','7','-8907.48','788.261','87.7863','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.23875','0','0'),
('90439','8','-8906.29','794.423','87.3173','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.03552','0','0'),
('90439','9','-8899.1','801.189','87.6105','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.905926','0','0'),
('90439','10','-8899.88','815.041','89.3389','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.61278','0','0'),
('90439','11','-8899.09','826.687','92.5864','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.612','0','0'),
('90439','12','-8905.65','841.38','95.4271','4000',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.0691','0','0'),
('90439','13','-8905.3','845.868','95.7969','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.25386','0','0'),
('90439','14','-8898.15','863.912','96.2546','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.15097','0','0'),
('90439','15','-8893.39','873.065','98.9773','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.18867','0','0'),
('90439','16','-8888.58','889.208','102.944','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.23108','0','0'),
('90439','17','-8888.8','897.531','105.943','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.85783','0','0'),
('90439','18','-8896.33','913.303','110.988','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.08559','0','0'),
('90439','19','-8904.33','926.304','114.899','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.1657','0','0'),
('90439','20','-8919.41','948.481','117.337','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.38247','0','0'),
('90439','21','-8966.43','954.028','117.362','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.01629','0','0'),
('90439','22','-8982.42','966.381','116.043','4000',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.73433','0','0'),
('90439','23','-8999.42','964.996','116.326','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.39643','0','0'),
('90439','24','-9012.36','953.626','116.256','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.26115','0','0'),
('90439','25','-9008.41','945.283','116.895','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.53821','0','0'),
('90439','26','-9000.86','940.914','117.094','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.82645','0','0'),
('90439','27','-8998.38','939.901','117.094','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.91284','0','0'),
('90439','28','-8996.34','945.169','117.097','5000',"Hello, Charys. I have my list, could you get me all of that, especially the last ingredient.",NULL,NULL,NULL,NULL,'0','0','0','1.17061','0','0'),
('90439','29','-8996.34','945.169','117.097','5000',"Sure Paige. Just be gentle.",NULL,NULL,NULL,NULL,'0','0','0','1.17061','0','0'),
('90439','30','-8996.34','945.169','117.097','1500',"Thanks, Charys. C\'mon Paige, sweetie.",NULL,NULL,NULL,NULL,'0','0','0','1.17061','0','0'),
('90439','31','-8999.05','940.572','117.096','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.25251','0','0'),
('90439','32','-9002.62','941.706','117.095','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.66993','0','0'),
('90439','33','-9012.38','947.61','116.227','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.48301','0','0'),
('90439','34','-9012.45','951.694','116.246','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.07008','0','0'),
('90439','35','-9004.83','961.988','116.276','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.834459','0','0'),
('90439','36','-8998.64','965.802','116.292','4000',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.086759','0','0'),
('90439','37','-8983.94','966.422','116.028','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.063197','0','0'),
('90439','38','-8980.01','965.284','116.256','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.80289','0','0'),
('90439','39','-8957.87','953.377','117.299','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.77933','0','0'),
('90439','40','-8920.67','947.641','117.337','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','6.1304','0','0'),
('90439','41','-8900.95','920.6','113.443','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.2806','0','0'),
('90439','42','-8894.54','911.478','110.762','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.551718','0','0'),
('90439','43','-8877.53','920.808','107.603','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.508521','0','0'),
('90439','44','-8854.97','933.374','101.999','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.508521','0','0'),
('90439','45','-8848.88','930.711','102.495','3000',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.572924','0','0'),
('90439','46','-8834.61','940.936','105.143','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.576851','0','0'),
('90439','47','-8818.28','953.205','100.678','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.576065','0','0'),
('90439','48','-8815.14','952.722','100.867','4000',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.93091','0','0'),
('90439','49','-8804.01','942.261','101.241','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.612193','0','0'),
('90439','50','-8802.37','936.981','101.242','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.3827','0','0'),
('90439','51','-8777.24','909.299','100.262','3000',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.43768','0','0'),
('90439','52','-8766.76','893.892','101.386','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.57355','0','0'),
('90439','53','-8737.03','892.761','101.221','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','6.22072','0','0'),
('90439','54','-8731.93','886.272','101.744','3000',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.39605','0','0'),
('90439','55','-8723.13','875.04','102.678','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.39605','0','0'),
('90439','56','-8712.31','861.661','97.2752','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.39605','0','0'),
('90439','57','-8712.2','853.618','96.8655','3000',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.39388','0','0'),
('90439','58','-8725.87','834.533','96.149','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.1614','0','0'),
('90439','59','-8726.58','813.587','97.0276','4000',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.89182','0','0'),
('90439','60','-8717.15','795.784','97.0391','4000',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.9201','0','0'),
('90439','61','-8721.79','782.622','97.8839','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.11114','0','0'),
('90439','62','-8732.2','766.047','98.0898','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.3444','0','0'),
('90439','63','-8724.93','751.443','98.2043','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.41804','0','0'),
('90439','64','-8713.3','732.548','97.8146','4000',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.42668','0','0'),
('90439','65','-8699.05','715.705','97.0168','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.42668','0','0'),
('90439','66','-8661.63','744.699','96.6531','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.754345','0','0'),
('90439','67','-8660.26','765.872','96.6997','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.31041','0','0'),
('90439','68','-8634.36','787.361','96.6525','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.685231','0','0'),
('90439','69','-8632.43','787.372','96.6512','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.394633','0','0'),
('90439','70','-8606.16','761.17','96.7387','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.49894','0','0'),
('90439','71','-8592.08','756.77','96.651','1000',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.91598','0','0'),
('90439','72','-8579.7','737.671','96.7114','4000',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.61379','0','0'),
('90439','73','-8594.53','717.706','96.6514','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.03574','0','0'),
('90439','74','-8581.67','697.638','97.0168','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.41254','0','0'),
('90439','75','-8561.08','673.827','97.0168','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.603542','0','0'),
('90439','76','-8536.53','690.079','97.6665','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.39731','0','0'),
('90439','77','-8528.41','679.123','100.793','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.3439','0','0'),
('90439','78','-8517.6','662.84','102.123','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.3439','0','0'),
('90439','79','-8510.36','651.605','100.292','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.24573','0','0'),
('90439','80','-8516.68','643.439','100.134','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.75426','0','0'),
('90439','81','-8557.25','615.273','102.337','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.42125','0','0'),
('90439','82','-8563.65','615.408','102.278','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.78646','0','0'),
('90439','83','-8583.79','586.194','103.594','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.3598','0','0'),
('90439','84','-8584.4','560.743','101.871','4000',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.1397','0','0'),
('90439','85','-8578.23','543.501','101.782','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.81238','0','0'),
('90439','86','-8593.35','530.953','105.659','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.80845','0','0'),
('90439','87','-8609.85','515.571','103.841','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.97025','0','0'),
('90439','88','-8616.86','517.629','103.218','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.3162','0','0'),
('90439','89','-8657.5','553.006','96.9502','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.64214','0','0'),
('90439','90','-8673.57','552.873','97.2864','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.2249','0','0'),
('90439','91','-8713.67','519.808','97.1597','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.19446','0','0'),
('90439','92','-8717.22','524.985','98.1892','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.27221','0','0'),
('90439','93','-8745.36','557.023','97.6718','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.37371','0','0'),
('90439','94','-8745','566.133','97.4006','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.01418','0','0'),
('90439','95','-8738.14','576.508','97.5043','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.44518','0','0'),
('90439','96','-8769.94','608.175','97.1405','2000',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.38706','0','0'),
('90439','97','-8795.54','589.658','97.4546','4000',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.33208','0','0'),
('90439','98','-8832.6','630.401','94.0918','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.28496','0','0'),
('90439','99','-8851.55','661.112','97.1319','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.659181','0','0'),
('90439','100','-8824.74','678.622','97.5366','10000',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.97629','0','0'),
('90439','101','-8847.34','726.835','97.6974','10000',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.05091','0','0');

REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
('90443','1','-8855.95','739.398','100.652','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.15696','0','0'),
('90443','2','-8860.36','745.559','100.085','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.15696','0','0'),
('90443','3','-8865.56','753.535','98.326','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.16089','0','0'),
('90443','4','-8869.9','758.873','96.9353','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.10651','0','0'),
('90443','5','-8878.35','754.402','96.3027','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.91262','0','0'),
('90443','6','-8883.2','756.494','95.8485','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.27802','0','0'),
('90443','7','-8907.3','786.505','88.0058','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.12329','0','0'),
('90443','8','-8908.63','793.957','87.3404','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.759842','0','0'),
('90443','9','-8900.88','800.955','87.5389','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.905926','0','0'),
('90443','10','-8901.43','813.992','88.9525','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.61278','0','0'),
('90443','11','-8900.03','825.146','92.236','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.612','0','0'),
('90443','12','-8906.46','839.66','95.3395','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.0691','0','0'),
('90443','13','-8907.15','845.876','95.9848','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.22872','0','0'),
('90443','14','-8896.94','860.678','96.1597','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.15097','0','0'),
('90443','15','-8892.78','870.821','98.6202','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.18867','0','0'),
('90443','16','-8887.87','887.383','102.634','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.23108','0','0'),
('90443','17','-8889.57','896.064','105.604','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.85783','0','0'),
('90443','18','-8894.76','912.748','110.814','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.08559','0','0'),
('90443','19','-8902.53','925.537','114.604','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.1657','0','0'),
('90443','20','-8917.64','947.938','117.348','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.38247','0','0'),
('90443','21','-8963.84','954.109','117.362','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.88749','0','0'),
('90443','22','-8981.19','967.551','116.133','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.15217','0','0'),
('90443','23','-8998.68','966.465','116.284','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.5535','0','0'),
('90443','24','-9012.64','955.765','116.26','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.26115','0','0'),
('90443','25','-9009.48','946.414','116.608','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.74869','0','0'),
('90443','26','-9002.47','941.176','117.094','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.82645','0','0'),
('90443','27','-8999.71','939.96','117.094','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.91284','0','0'),
('90443','28','-8996.13','943.31','117.096','3500',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.19888','0','0'),
('90443','29','-8996.13','943.31','117.096','7000',"Fizzles used to be a great wizard. But got turned into a rabbit when one of his spells went bad.",NULL,NULL,NULL,NULL,'0','0','0','1.19888','0','0'),
('90443','30','-8996.13','943.31','117.096','500',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.19888','0','0'),
('90443','31','-8998.96','942.55','117.096','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.25251','0','0'),
('90443','32','-9001.01','941.637','117.095','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.66993','0','0'),
('90443','33','-9009.89','946.718','116.464','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.48615','0','0'),
('90443','34','-9012.21','950.13','116.242','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.07008','0','0'),
('90443','35','-9005.23','960.512','116.267','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.834459','0','0'),
('90443','36','-8999.98','964.521','116.322','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.086759','0','0'),
('90443','37','-8986.65','965.217','116.016','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.063197','0','0'),
('90443','38','-8981.4','964.721','116.129','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.80289','0','0'),
('90443','39','-8960.67','953.214','117.363','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.77933','0','0'),
('90443','40','-8922.92','947.023','117.333','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','6.1304','0','0'),
('90443','41','-8902.79','921.853','114.007','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.2806','0','0'),
('90443','42','-8895.68','910.132','110.534','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.551718','0','0'),
('90443','43','-8878.5','918.58','107.991','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.508521','0','0'),
('90443','44','-8856.19','931.686','101.85','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.508521','0','0'),
('90443','45','-8849.38','928.937','102.078','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.572924','0','0'),
('90443','46','-8835.17','939.024','105.298','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.576851','0','0'),
('90443','47','-8819.22','951.469','100.84','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.576065','0','0'),
('90443','48','-8816.43','951.832','100.857','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.93091','0','0'),
('90443','49','-8804.28','940.694','101.241','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.612193','0','0'),
('90443','50','-8804.37','937.806','101.242','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.3827','0','0'),
('90443','51','-8779.31','910.339','100.177','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.43768','0','0'),
('90443','52','-8768.25','893.856','101.271','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.68037','0','0'),
('90443','53','-8739.04','892.116','101.339','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','6.11705','0','0'),
('90443','54','-8733.75','887.049','101.562','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.39605','0','0'),
('90443','55','-8725.05','875.531','102.709','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.39605','0','0'),
('90443','56','-8713.7','862.039','97.8111','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.39605','0','0'),
('90443','57','-8712.67','855.316','96.8819','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.39388','0','0'),
('90443','58','-8726.05','836.042','96.134','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.1614','0','0'),
('90443','59','-8727.49','814.648','96.9542','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.89182','0','0'),
('90443','60','-8718.58','797.138','96.962','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.9201','0','0'),
('90443','61','-8721.53','784.142','97.7308','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.11114','0','0'),
('90443','62','-8732.91','768.156','97.9981','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.5541','0','0'),
('90443','63','-8726.7','749.858','98.5581','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.41804','0','0'),
('90443','64','-8714.65','731.375','97.8164','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.42668','0','0'),
('90443','65','-8701.16','715.943','97.0168','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.42668','0','0'),
('90443','66','-8663.11','742.302','96.8254','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.754345','0','0'),
('90443','67','-8659.93','763.661','96.7207','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.31041','0','0'),
('90443','68','-8635.15','785.343','96.6526','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.685231','0','0'),
('90443','69','-8633.38','785.986','96.6516','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.394633','0','0'),
('90443','70','-8608.26','761.696','96.7263','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.49894','0','0'),
('90443','71','-8593.8','756.391','96.6814','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.91598','0','0'),
('90443','72','-8580.91','739.047','96.7163','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.61379','0','0'),
('90443','73','-8594.5','719.299','96.6514','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.03574','0','0'),
('90443','74','-8583.57','698.392','97.0168','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.41254','0','0'),
('90443','75','-8561.51','672.146','97.0168','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.603542','0','0'),
('90443','76','-8537.82','690.445','97.669','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.39731','0','0'),
('90443','77','-8529.69','679.679','100.253','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.3439','0','0'),
('90443','78','-8518.59','662.906','102.205','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.3439','0','0'),
('90443','79','-8511.66','652.761','100.292','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.24573','0','0'),
('90443','80','-8516.35','644.956','100.162','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.75426','0','0'),
('90443','81','-8556.13','616.892','102.187','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.47073','0','0'),
('90443','82','-8562.04','616.435','102.182','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.41811','0','0'),
('90443','83','-8583.73','588.524','103.595','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.3598','0','0'),
('90443','84','-8585.85','561.536','101.877','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.1397','0','0'),
('90443','85','-8577.26','545.44','101.779','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.80845','0','0'),
('90443','86','-8592.94','533.367','105.38','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.80845','0','0'),
('90443','87','-8610.02','517.34','104.15','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.97025','0','0'),
('90443','88','-8615.42','517.274','103.269','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.3162','0','0'),
('90443','89','-8656.06','553.368','96.9474','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.64214','0','0'),
('90443','90','-8671.7','554.211','97.1884','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.2249','0','0'),
('90443','91','-8710.99','519.456','97.3037','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.19446','0','0'),
('90443','92','-8715.38','524.179','97.904','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.27221','0','0'),
('90443','93','-8745.23','554.602','98.1147','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.37371','0','0'),
('90443','94','-8747.57','565.115','97.3972','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.01418','0','0'),
('90443','95','-8738.96','574.03','97.4159','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.44518','0','0'),
('90443','96','-8768.08','610.107','97.1626','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.90523','0','0'),
('90443','97','-8795.82','587.829','97.3799','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.33208','0','0'),
('90443','98','-8831.84','627.737','93.999','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.28496','0','0'),
('90443','99','-8853.68','661.629','97.0331','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.659181','0','0'),
('90443','100','-8826.11','677.069','97.6407','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.97629','0','0'),
('90443','101','-8847.53','725.129','97.341','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.05091','0','0');

REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
('90440','1','-8854.86','740.935','100.705','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.15696','0','0'),
('90440','2','-8858.76','747.215','100.112','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.15696','0','0'),
('90440','3','-8864.24','755.366','98.2581','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.16089','0','0'),
('90440','4','-8869.49','761.113','96.7481','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.10651','0','0'),
('90440','5','-8878.12','757.339','96.3203','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.91262','0','0'),
('90440','6','-8881.66','758.146','95.6946','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.27802','0','0'),
('90440','7','-8905.49','787.62','88.0472','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.12329','0','0'),
('90440','8','-8906.2','791.837','87.597','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.03552','0','0'),
('90440','9','-8898.46','799.351','87.5696','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.905926','0','0'),
('90440','10','-8897.96','813.552','89.2842','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.61278','0','0'),
('90440','11','-8897.54','824.303','91.873','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.612','0','0'),
('90440','12','-8904.18','840.762','95.1838','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.0691','0','0'),
('90440','13','-8905.8','844.214','95.7','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.46434','0','0'),
('90440','14','-8899.57','860.931','96.255','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.15097','0','0'),
('90440','15','-8895.45','871.893','98.5977','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.18867','0','0'),
('90440','16','-8889.88','887.501','102.493','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.23108','0','0'),
('90440','17','-8886.97','896.134','105.198','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.85783','0','0'),
('90440','18','-8896.5','910.557','110.685','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.08559','0','0'),
('90440','19','-8904.2','924.059','114.509','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.1657','0','0'),
('90440','20','-8918.33','946.282','117.355','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.38247','0','0'),
('90440','21','-8963.61','952.972','117.362','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.88749','0','0'),
('90440','22','-8981.17','965.424','116.142','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.15217','0','0'),
('90440','23','-8997.51','965.564','116.26','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.5535','0','0'),
('90440','24','-9010.62','955.873','116.26','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.26115','0','0'),
('90440','25','-9010.51','945.327','116.451','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.74869','0','0'),
('90440','26','-9003.39','942.605','117.094','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.82645','0','0'),
('90440','27','-9000.23','941.575','117.094','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.91284','0','0'),
('90440','28','-8998.04','945.099','117.096','5000',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.963263','0','0'),
('90440','29','-8998.04','945.099','117.096','3000',"Mommy? Can I pet Fizzles?",NULL,NULL,NULL,NULL,'0','0','0','0.963263','0','0'),
('90440','30','-8998.04','945.099','117.096','4500',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.963263','0','0'),
('90440','31','-8997.75','941.851','117.096','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.83468','0','0'),
('90440','32','-9001.16','940.175','117.095','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.66993','0','0'),
('90440','33','-9011.08','945.845','116.25','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.48615','0','0'),
('90440','34','-9013.65','950.257','116.239','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.07008','0','0'),
('90440','35','-9007.02','961.464','116.26','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.727644','0','0'),
('90440','36','-9000.98','966.047','116.321','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.190432','0','0'),
('90440','37','-8984.64','968.824','116.82','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.063197','0','0'),
('90440','38','-8980.68','966.93','116.171','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.80289','0','0'),
('90440','39','-8960.36','956.072','117.363','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.77933','0','0'),
('90440','40','-8921.98','949.571','117.32','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.9262','0','0'),
('90440','41','-8900.96','923.719','114.152','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.2806','0','0'),
('90440','42','-8896.04','912.57','110.941','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.551718','0','0'),
('90440','43','-8880.11','921.121','108.025','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.508521','0','0'),
('90440','44','-8857.25','933.154','101.844','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.301176','0','0'),
('90440','45','-8849.75','932.424','102.457','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.572924','0','0'),
('90440','46','-8837.09','941.055','105.174','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.576851','0','0'),
('90440','47','-8820.96','952.952','100.664','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.576065','0','0'),
('90440','48','-8815.07','954.197','100.772','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.65523','0','0'),
('90440','49','-8805.71','942.319','101.241','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.612193','0','0'),
('90440','50','-8802.92','939.559','101.242','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.3827','0','0'),
('90440','51','-8777.87','911.611','100.173','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.43768','0','0'),
('90440','52','-8766.75','896.565','101.272','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.68037','0','0'),
('90440','53','-8739.24','894.686','101.295','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','6.11705','0','0'),
('90440','54','-8731.97','888.717','101.44','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.39605','0','0'),
('90440','55','-8722.6','877.53','102.668','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.39605','0','0'),
('90440','56','-8712.44','863.654','98.0634','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.39605','0','0'),
('90440','57','-8710.53','855.832','96.9282','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.39388','0','0'),
('90440','58','-8723.92','835.705','96.1319','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.1614','0','0'),
('90440','59','-8725.51','815.74','97.1981','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.89182','0','0'),
('90440','60','-8716.07','798.031','97.261','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.9201','0','0'),
('90440','61','-8720.03','783.822','97.8363','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.11114','0','0'),
('90440','62','-8730.46','768.48','98.1822','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.5541','0','0'),
('90440','63','-8724.77','753.186','98.3042','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.41804','0','0'),
('90440','64','-8713','734.986','97.8113','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.42668','0','0'),
('90440','65','-8701.29','718.688','97.0168','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.42668','0','0'),
('90440','66','-8664.93','743.419','96.8845','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.754345','0','0'),
('90440','67','-8661.95','764.808','96.698','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.04965','0','0'),
('90440','68','-8636.85','785.869','96.6526','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.685231','0','0'),
('90440','69','-8634.61','787.64','96.6516','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.394633','0','0'),
('90440','70','-8606.97','764.487','96.7153','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.49894','0','0'),
('90440','71','-8593.86','758.861','96.6516','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.91598','0','0'),
('90440','72','-8578.84','739.457','96.6515','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.30042','0','0'),
('90440','73','-8592.56','719.48','96.6514','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.03574','0','0'),
('90440','74','-8582.42','700.46','97.0168','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.41254','0','0'),
('90440','75','-8562.19','674.678','97.0168','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.603542','0','0'),
('90440','76','-8536.4','691.605','97.6696','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.39731','0','0'),
('90440','77','-8528.04','680.885','100.234','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.3439','0','0'),
('90440','78','-8516.81','664.21','102.21','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.3439','0','0'),
('90440','79','-8509.17','652.431','100.293','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.00775','0','0'),
('90440','80','-8515.04','643.502','100.185','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.75426','0','0'),
('90440','81','-8554.72','615.479','102.249','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.47073','0','0'),
('90440','82','-8561.34','614.721','102.35','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.62545','0','0'),
('90440','83','-8581.46','589.116','103.765','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','4.3598','0','0'),
('90440','84','-8583.72','562.94','101.884','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','5.1397','0','0'),
('90440','85','-8576.04','543.9','101.779','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.80845','0','0'),
('90440','86','-8590.76','531.357','105.264','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.80845','0','0'),
('90440','87','-8607.98','516.071','104.348','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.97025','0','0'),
('90440','88','-8615.9','515.725','103.307','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.3162','0','0'),
('90440','89','-8656.09','551.18','96.9337','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.64214','0','0'),
('90440','90','-8670.69','550.928','97.1638','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.2249','0','0'),
('90440','91','-8712.16','518.304','97.1851','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.19446','0','0'),
('90440','92','-8717.5','522.278','97.6163','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.27221','0','0'),
('90440','93','-8742.85','556.198','98.3029','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.37371','0','0'),
('90440','94','-8745.19','563.635','97.4021','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.01418','0','0'),
('90440','95','-8737.39','575.909','97.4566','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.44518','0','0'),
('90440','96','-8769.86','611.968','97.3669','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','3.90523','0','0'),
('90440','97','-8793.89','588.845','97.4986','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.33208','0','0'),
('90440','98','-8830.08','629.263','94.0776','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.28496','0','0'),
('90440','99','-8853.33','659.43','96.9155','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','0.659181','0','0'),
('90440','100','-8823.7','677.592','97.6789','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','1.97629','0','0'),
('90440','101','-8845.36','725.1','97.0639','0',NULL,NULL,NULL,NULL,NULL,'0','0','0','2.05091','0','0');

-- Deathclasp loot cleanup
DELETE FROM `creature_loot_template` WHERE (`entry` = '15196') AND (`item` != '20385');
-- Deathclasp double spawn
DELETE FROM `creature` WHERE (`guid` = '42920') AND (`id` = '15196');

-- quest Triangulation Point One, fix for incomplete text
UPDATE `quest_template` SET `offerRewardText`='<Dealer Hazzin lowers his voice to a whisper.>$B$BAh, I know of your mission. It is one of great importance to Nexus-Prince Haramad!$B$BNow that we know the location of this first triangulation point, you must move swiftly to find the second!' WHERE `entry`='10269';


-- Sethekk Prophet faction
UPDATE `creature_template` SET `faction_A` = '16', `faction_H` = '16' WHERE `entry` = '18325';

-- Shattered Sun Supplies loot
REPLACE INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) SELECT '80011', `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2` FROM `creature_loot_template` WHERE `entry` = '80011';
DELETE FROM `item_loot_template` WHERE `entry` = '35232';
REPLACE INTO `item_loot_template` VALUES
('35232', '80011', '100', '1', '-80011', '1', '0', '0', '0'),
('35232', '29434', '10', '0', '1', '1', '0', '0', '0');

-- Puluu
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (63711, 9237);
-- Maktu
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (63712, 9236);
-- Ikuti
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (63710, 9235);
-- Ruam
UPDATE `creature_template` SET `npcflag` = `npcflag`|1 WHERE `entry` = 18007;
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (63709, 9264);
-- Anchorite Ahuurn
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (63705, 9265);
-- Zurai
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (63713, 9267);
-- Reavij
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (63714, 9267);
-- Magasha
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (63718, 9269);
-- Matt Johnson
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (4242, 9384);
-- Huntress Kima
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65808, 9389);
-- Earthbinder Tavgren
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65850, 9391);
-- Tooki
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65851, 9392);
-- Gurgthock
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (66480, 9395);
-- Altruis the Sufferer
UPDATE `creature_template` SET `npcflag` = `npcflag`|1 WHERE `entry` = 18417;
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65809, 9422);
-- Shadrek
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65645, 9429);
-- Alliance Field Scout
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (66741, 9433);
-- Sha'nir
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (66781, 9451);
-- Kurgatok
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65788, 9472);
-- Soolaveen
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (66943, 9477);
-- Mawg Grimshot
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (66950, 9485);
-- Seth
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (66909, 9486);
-- Rakoria
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65790, 9487);
-- Rokag
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65791, 9488);
-- Malukaz
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65789, 9489);
-- Theloria Shadecloak
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (66730, 9490);
-- Ros'eleth
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65795, 9492);
-- Private Weeks
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (66956, 9517);
-- Lieutenant Gravelhammer
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (66954, 9521);
-- Advisor Faila
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (66953, 9522);
-- Exodar Peacekeeper
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (57713, 9529);
-- Theloria Shadecloak
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (66730, 9490);
-- Captain Auric Sunchaser
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (67005, 9566);
-- Thrall
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (83989, 9578);
-- Chief Researcher Amereldine
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (86762, 9595);
-- Chief Researcher Kartos
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (67185, 9596);
-- Quartermaster Jaffrey Noreliqe
UPDATE `creature_template` SET `npcflag` = `npcflag`|1 WHERE `entry` = 18821;
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (86761, 9598);
-- Quartermaster Davian Vaclav
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (67187, 9598);
-- Moorutu
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (67028, 9599);
-- Spymistress Mehlisah Highcrown
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (96668, 9615);
-- Merajit
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65514, 9618);
-- Seer Skaltesh
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (84094, 9622);
-- Foreman Biggums
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (57915, 9631);
-- Isfar
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (67958, 9634);
-- Foreman Razelcraz
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (58690, 9642);
-- Provisioner Valine
UPDATE `creature_template` SET `npcflag` = `npcflag`|1 WHERE `entry` = 17277;
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (62054, 9643);
-- Fallesh Sunfallow
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (68286, 9644);
-- Lursa Sunfallow
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (68287, 9645);
-- Sparik
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (68323, 9648);
-- Ogir
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (68325, 9649);
-- Luftasia
UPDATE `creature_template` SET `npcflag` = `npcflag`|1 WHERE `entry` = 19019;
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (68329, 9652);
-- Nancila
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (68331, 9653);
-- Araac
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (68360, 9714);
-- Ohlorn Farstrider
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (68403, 9729);

-- Bertelm
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65792, 9493);
REPLACE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(9493, 'Have you seen the way Ros\'eleth winks at me whenever I go to pick up a garment or hat? When things SETtle down around here, I\'m going to take her for a nice walk in the woods.$B$BFor once, I miss all those fancy taverns in Stormwind.', '', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
-- Thander
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65794, 9481);
REPLACE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(9481, 'If you\'re expecting some kind of official welcome, you\'re going to be disappointed, $c. We don\'t stand on tradition, here. What works is what goes.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
-- Taela Everstride
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (66949, 9484);
REPLACE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(9484, '', 'No, don\'t feel bad. I get that a lot.$B$B<Taela looks both amused and annoyed.>$B$BI\'m a HIGH elf, not a blood elf. Don\'t worry, I\'m not going to suck all of the magic out of you.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
-- Andarl
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65521, 9471);
REPLACE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(9471, 'Welcome to the Allerian Stronghold, $c.', '', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);
-- Jenai Starwhisper
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (66005, 9393);
REPLACE INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(9393, '', 'The Horde isn\'t the only danger in this forest. Don\'t let its seeming tranquility fool you.', 0, 0, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Reference group for heroic Ramparts gems (99004)
REPLACE INTO `creature_loot_template` ( `entry` , `item` , `ChanceOrQuestChance` , `groupid` , `mincountOrRef` , `maxcount` , `lootcondition` , `condition_value1` , `condition_value2`) VALUES
('99004', '30593', '0', '1', '1', '1', '0', '0', '0'),
('99004', '30596', '0', '1', '1', '1', '0', '0', '0'),
('99004', '30592', '0', '1', '1', '1', '0', '0', '0');
-- Reinforced Fel Iron Chest heroic loot
DELETE FROM gameobject_loot_template WHERE `entry` = '21764';
REPLACE INTO gameobject_loot_template ( `entry` , `item` , `ChanceOrQuestChance` , `groupid` , `mincountOrRef` , `maxcount` , `lootcondition` , `condition_value1` , `condition_value2`) VALUES
('21764', '29434', '100', '0', '1', '1', '0', '0', '0'), -- badge of justice
('21764', '29264', '0', '1', '1', '1', '0', '0', '0'), -- non-SET epics
('21764', '32077', '0', '1', '1', '1', '0', '0', '0'),
('21764', '29238', '0', '1', '1', '1', '0', '0', '0'),
('21764', '29346', '10', '1', '1', '1', '0', '0', '0'), -- weapon Feltooth Eviscerator
('21764', '27452', '0', '2', '1', '1', '0', '0', '0'), -- blues
('21764', '27461', '0', '2', '1', '1', '0', '0', '0'),
('21764', '27456', '0', '2', '1', '1', '0', '0', '0'),
('21764', '27454', '0', '2', '1', '1', '0', '0', '0'),
('21764', '27458', '0', '2', '1', '1', '0', '0', '0'),
('21764', '27455', '0', '2', '1', '1', '0', '0', '0'),
('21764', '27459', '0', '2', '1', '1', '0', '0', '0'),
('21764', '27457', '0', '2', '1', '1', '0', '0', '0'),
('21764', '27453', '0', '2', '1', '1', '0', '0', '0'),
('21764', '27460', '0', '2', '1', '1', '0', '0', '0'),
('21764', '99004', '66', '0', '-99004', '1', '0', '0', '0'); -- rampart's epic gems

UPDATE `creature_template` SET `minlevel` = 70, `maxlevel` = 70, `minhealth` = 40, `maxhealth` = 40 WHERE `entry` = 24745;

-- Illidan correct position
UPDATE `creature` SET `position_x` = '696.936', `position_y` = '304.781', `position_z` = '354.31', `orientation` = '5.89212', `spawntimesecs` = '604800' WHERE `id` = '22917';

-- Crazed Murkblood Foreman
UPDATE `creature_template` SET `minhealth` = '7125', `maxhealth` = '7125', `mindmg` = '706', `maxdmg` = '999', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '23305';
-- Shadowlord Deathwail
UPDATE `creature_template` SET `minhealth` = '83204', `maxhealth` = '83204', `armor` = '6792' WHERE `entry` = '22006';

-- Lost Torranche Give him the Spell to teach. Cower (Rank 7)
DELETE FROM `petcreateinfo_spell` WHERE `entry` = 22807;
REPLACE INTO `petcreateinfo_spell` (`entry`, `Spell1`, `Spell2`, `Spell3`, `Spell4`) VALUES
('22807','27048','0','0','0');

-- Lost Torranche loot
UPDATE `creature_template` SET `lootid` = '22807' WHERE `entry` = '22807';
DELETE FROM `creature_loot_template` WHERE (`entry`=22807);
REPLACE INTO `creature_loot_template` VALUES
(22807, 25426, 80, 0, 1, 1, 0, 0, 0),
(22807, 25428, 15, 0, 1, 1, 0, 0, 0),
(22807, 80002, 5, 1, -80002, 1, 0, 0, 0),
(22807, 80005, 1, 1, -80005, 1, 0, 0, 0),
(22807, 80007, 1, 1, -80007, 1, 0, 0, 0),
(22807, 80009, 1, 1, -80009, 1, 0, 0, 0),
(22807, 80010, 0.5, 1, -80010, 1, 0, 0, 0);

-- quest The Tome of Divinity (step 7) fix for Male/Female bug in text.
UPDATE `quest_template` SET `offerRewardText`='I can''t thank you enough, $gbrother:sister;.$B$BI can only assume that Tiza and Muiredon sent you here to aid me if you carry the Symbol of Life.$B$BIt''s true, I fell to the Dark Iron while trying to attain one of the scripts: I was able to hold on long enough to allow Muiredon to escape, but the Light had almost embraced me fully when you came along. The fact that you were powerful enough to use the Symbol means great things for you, but there''s time to speak of that later.' WHERE `entry`='1783';

-- quests "Unleash the Raptors" and "Prisoners of the Grimtotems" fix for broken chain.
UPDATE `quest_template` SET `prevQuestId`='11146' WHERE `entry` IN ('11147', '11145');

UPDATE `quest_template` SET `RewItemId1`='34537',`RewItemCount1`='1' WHERE (`entry`='11546');

-- Shado 'Fitz' Farstrider Gossip
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (64976, 9240);
-- Hemet Nesingwary
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (64963, 9219);
-- Khadgar was wrong Gossip ID
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (64958, 9877);
-- Archmage Cedric
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (16571, 9241);
-- Jorin Deadeye
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (64061, 9289);
-- Gordawg
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (64052, 9208);
-- Kialon Nightblade
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (64051, 10246);
-- Elementalist Lo'ap
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (63917, 9180);
-- Elementalist Untrag
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (63916, 9183);
-- Windcaller Blackhoof
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (63914, 9196);
-- Harold Lane
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65459, 9258);
-- Merajit
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65514, 9618);
-- Nekthar
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65517, 10252);
-- Lantresor of the Blade
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65546, 9361);
-- Gezhe
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65554, 9287);
-- Warrant Officer Tracy Proudwell
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65555, 9656);
-- Battlecryer Blackeye
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65556, 9657);
-- Zerid
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65568, 9288);
-- Prospector Conall
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65625, 9370);
-- Shadrek
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65645, 9429);
-- Consortium Recruiter
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65670, 9312);
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65671, 9312);
-- Lump
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65714, 9354);
-- Corki
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65786, 9357);
-- Kurgatok
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65788, 9472);
-- Malukaz
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65789, 9489);
-- Rakoria
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65790, 9487);
-- Rokag
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (65791, 9488);

DELETE FROM `npc_gossip` WHERE `npc_guid` IN (81850, 66990, 54556, 17595, 66584, 66777, 81824, 67266, 67273, 67265, 63734, 66998, 64702, 509, 67027, 67027, 67375, 60948, 54213, 79017, 67785, 67120, 66669, 100491, 127622, 65359, 65335, 65356, 65363);

-- The Duke Of Cynders
UPDATE `creature_template` SET `minlevel` = '62', `maxlevel` = '62', `mindmg` = '301', `maxdmg` = '399', `minhealth` = '12950', `maxhealth` = '12950', `minmana` = '7704', `maxmana` = '7704', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7), `armor` = '3555', `resistance2` = '62', `spell1` = '13340', `spell2` = '11829', `spell3` = '33061' WHERE `entry` = '15203';
-- The Duke of Fathoms
UPDATE `creature_template` SET `minlevel` = '62', `maxlevel` = '62', `mindmg` = '324', `maxdmg` = '429', `minhealth` = '16185', `maxhealth` = '16185', `minmana` = '0', `maxmana` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7), `armor` = '4391', `spell1` = '3417', `spell2` = '7992', `spell3` = '16790', `spell4` = '10101' WHERE `entry` = '15207';
-- The Duke Of Shards
UPDATE `creature_template` SET `minlevel` = '62', `maxlevel` = '62', `mindmg` = '324', `maxdmg` = '429', `minhealth` = '16185', `maxhealth` = '16185', `minmana` = '0', `maxmana` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7), `armor` = '5467', `spell1` = '6524', `spell2` = '15588', `spell3` = '13446' WHERE `entry` = '15208';
-- The duke Of Zephyrs
UPDATE `creature_template` SET `minlevel` = '62', `maxlevel` = '62', `mindmg` = '324', `maxdmg` = '429', `minhealth` = '16185', `maxhealth` = '16185', `minmana` = '0', `maxmana` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7), `armor` = '4391', `spell1` = '12882', `spell2` = '44417', `spell3` = '25189', `spell4` = '12549' WHERE `entry` = '15220';

-- Silvermoon Ritual of Summoning Dummy
DELETE FROM `creature_template_addon` WHERE (`entry` = '18782');
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES
('18782', '23196 0');

-- Wizzle Brassbolts
DELETE FROM `npc_vendor` WHERE (`entry`=4453);
REPLACE INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES
(4453, 5956, 0, 0, 0),
(4453, 10648, 0, 0, 0),
(4453, 10647, 0, 0, 0),
(4453, 4400, 0, 0, 0),
(4453, 2901, 0, 0, 0),
(4453, 3466, 0, 0, 0),
(4453, 2880, 0, 0, 0),
(4453, 4399, 0, 0, 0);

-- TEMP Elrendar Falls - Spellfocus GO
DELETE FROM gameobject_template WHERE entry = '300158';
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `faction`, `flags`, `size`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES
('300158', '8', '0', 'TEMP Elrendar Falls', '', '0', '0', '1', '1410', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');

-- Some Tempest Keep trash mobs faction
UPDATE creature_template SET `faction_A` = '16', `faction_H` = '16' WHERE (`faction_A` = '1620') AND `entry` IN (SELECT `id` FROM `creature` WHERE `map` = '550');

-- Vhel'kur bestiary
UPDATE `creature_template` SET `minhealth` = '104790', `maxhealth` = '104790', `armor` = '6792', `faction_A` = '14', `faction_H` = '14', `mindmg` = '2272', `maxdmg` = '3213', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '21801';
-- Vhel'kur creature movementtype update
UPDATE `creature` SET `MovementType` = '0' WHERE `id` = '21801';

UPDATE `quest_template` SET `PrevQuestId` = '456' WHERE `entry` = '3120';

-- No Thrallmar reputation for 'Pridewings of Stonetalon'
UPDATE `quest_template` SET RewRepFaction2=0, RewRepValue2=0 WHERE entry=1134;

-- I (Brian)) removed the SF=0 FROM the following statement because it was wrong. This quest has a script that does QUEST_COMPLETE so that flag is needed!
UPDATE `quest_template` SET `ReqSpellCast2` = '0' WHERE `entry` = '5056';

-- Item drop Deserter Propaganda, it doesnt drop FROM creatures (filler text)
Delete FROM `creature_loot_template` WHERE `item`='33008';

-- quest They Call Him Smiling Jim, fix for requestItemsText duplicate of details.
UPDATE `quest_template` SET `requestItemsText`='' WHERE `entry`='1282';

-- Membership Card Renewal
REPLACE INTO `quest_mail_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(103, 11422, 100, 0, 1, 1, 0, 0, 0), -- goblin quest 3644
(104, 11422, 100, 0, 1, 1, 0, 0, 0), -- goblin quest 3646
(99, 11423, 100, 0, 1, 1, 0, 0, 0), -- gnome quest 3645
(100, 11423, 100, 0, 1, 1, 0, 0, 0); -- gnome quest 3647
-- Goblin Engineer's Renewal Gift
DELETE FROM `item_loot_template` WHERE (`entry`=11422);
REPLACE INTO `item_loot_template` VALUES
(11422, 4394, 0, 1, 4, 6, 0, 0, 0), -- bombs
(11422, 10514, 0, 1, 6, 8, 0, 0, 0),
(11422, 10562, 0, 1, 3, 5, 0, 0, 0),
(11422, 4417, 5, 1, 1, 1, 0, 0, 0), -- schematics
(11422, 4416, 5, 1, 1, 1, 0, 0, 0),
(11422, 11828, 5, 1, 1, 1, 0, 0, 0);
-- Gnome Engineer's Renewal Gift
DELETE FROM `item_loot_template` WHERE (`entry`=11423);
REPLACE INTO `item_loot_template` VALUES
(11423, 10559, 0, 1, 1, 3, 0, 0, 0), -- crafting reagents
(11423, 10560, 0, 1, 2, 4, 0, 0, 0),
(11423, 10561, 0, 1, 1, 3, 0, 0, 0),
(11423, 10603, 5, 1, 1, 1, 0, 0, 0), -- schematics
(11423, 10606, 5, 1, 1, 1, 0, 0, 0),
(11423, 11827, 5, 1, 1, 1, 0, 0, 0);

UPDATE `quest_template` SET `RequestItemsText` = 'Have you completed the crafting of the items, $N?' WHERE `entry` = '2772';

UPDATE `quest_template` SET `OfferRewardText` = 'Truly amazing! This is a huge blow to the Venture Co.$B$BWe''ll be able to find weaknesses in their machines and also incorporate their designs into our own creations. This is a wonderful day, indeed.' WHERE `entry` = '1079';

UPDATE `quest_template` SET `RequestItemsText` = 'Have you had any luck, $N?' WHERE `entry` = '601';

-- 2.4 nerfs (rare elite rank to rare change needs WDB)
-- Marticar
UPDATE `creature_template` SET `minlevel` = '63', `maxlevel` = '63', `mindmg` = '624', `maxdmg` = '910', `minhealth` = '11205', `maxhealth` = '11205', `minmana` = '0', `maxmana` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7), `armor` = '4691', `spell1` = '35493', `spell2` = '32039' WHERE `entry` = '18680';
-- Hemathion
UPDATE `creature_template` SET `minhealth` = '13130', `maxhealth` = '13130', `armor` = '6192', `faction_A` = '16', `faction_H` = '16', `mindmg` = '780', `maxdmg` = '1010', `spell1` = '9573', `spell2` = '14100', `spell3` = '38895', `mechanic_immune_mask` = `mechanic_immune_mask`|'15350783' WHERE `entry` = '18692';
-- Morcrush
UPDATE `creature_template` SET `minlevel` = '68', `maxlevel` = '68', `mindmg` = '846', `maxdmg` = '1202', `minhealth` = '15130', `maxhealth` = '15130', `minmana` = '0', `maxmana` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7), `armor` = '6192', `spell1` = '35238' WHERE `entry` = '18690';
-- Morcrush Shardling
UPDATE `creature_template` SET `minlevel` = '68', `maxlevel` = '68', `mindmg` = '93', `maxdmg` = '184', `minhealth` = '3042', `maxhealth` = '3042', `minmana` = '0', `maxmana` = '0', `faction_A` = '14', `faction_H` = '14', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7), `armor` = '6192', `spell1` = '8078', `spell2` = '34970' WHERE `entry` = '22344';
-- Fulgorge
UPDATE `creature_template` SET `minlevel` = '62', `maxlevel` = '62', `mindmg` = '579', `maxdmg` = '1018', `minhealth` = '10985', `maxhealth` = '10985', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7), `armor` = '5391', `spell1` = '32330', `spell2` = '32738' WHERE `entry` = '18678';
-- Collidus the Warp-Watcher
UPDATE `creature_template` SET `minlevel` = '68', `maxlevel` = '68', `mindmg` = '746', `maxdmg` = '1202', `minhealth` = '13130', `maxhealth` = '13130', `minmana` = '0', `maxmana` = '0', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7), `armor` = '6192', `spell1` = '36414', `spell2` = '34322', `spell3` = '14514' WHERE `entry` = '18694';
-- some correct factions
UPDATE `creature_template` SET `faction_A`='1620',`faction_H`='1620' WHERE (`entry`='18689');
UPDATE `creature_template` SET `faction_A`='168',`faction_H`='168' WHERE (`entry`='18686');
UPDATE `creature_template` SET `faction_A`='14',`faction_H`='14' WHERE (`entry`='18693');
UPDATE `creature_template` SET `faction_A`='45',`faction_H`='45' WHERE (`entry`='18684');
UPDATE `creature_template` SET `faction_A`='168',`faction_H`='168' WHERE (`entry`='18683');
UPDATE `creature_template` SET `faction_A`='1620',`faction_H`='1620' WHERE (`entry`='18695');
UPDATE `creature_template` SET `faction_A`='14',`faction_H`='14' WHERE (`entry`='18698');

REPLACE INTO `spell_script_target` VALUES
('38484', '1', '21246');

-- Lever to open Elders' Square Service Entrance
DELETE FROM gameobject_scripts WHERE id = '45625';
INSERT INTO gameobject_scripts (id ,delay, command, datalong, datalong2, datatext, x, y, z, o) VALUES
('45625', '0', '11', '45626', '15', '', '0', '0', '0', '0');

REPLACE INTO `npc_vendor` (`entry`, `item`) VALUES
(19197, 2928),
(19194, 2928),
(19243, 4471);

-- quest The Troll Witchdoctor, fix for Male/Female bug in text.
UPDATE `quest_template` SET `requestItemsText`='There is an angry spirit about you, $gbrother:sister;. What brings you to Kin''weelay?' WHERE `entry`='1240';


-- Magosh
UPDATE `creature_template` SET `faction_A` = '59', `faction_H` = '59' WHERE `entry` = '1399';

-- Seed of Revitalization Target Trigger
UPDATE `creature_template_addon` SET `auras` = '23196 0' WHERE (`entry` = '20781');

-- From bestiary letter I, Illidari
-- Illidari Agonizer
UPDATE `creature_template` SET `minlevel`='67', `maxlevel`='67', `minhealth`='1518', `maxhealth`='1518', `minmana`='2933', `maxmana`='2933', `mindmg`='61', `maxdmg`='86', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='4755' WHERE `entry`='19801';
-- Illidari Archon
UPDATE `creature_template` SET `minlevel`='72', `maxlevel`='72', `minhealth`='177090', `maxhealth`='177090', `minmana`='33090', `maxmana`='33090', `mindmg`='4850', `maxdmg`='6852', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='5954' WHERE `entry`='23400';
-- Illidari Assassin
UPDATE `creature_template` SET `minlevel`='72', `maxlevel`='72', `minhealth`='184500', `maxhealth`='184500', `minmana`='0', `maxmana`='0', `mindmg`='6535', `maxdmg`='9241', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='7387' WHERE `entry`='23403';
-- Illidari Battle-mage
UPDATE `creature_template` SET `minlevel`='72', `maxlevel`='72', `minhealth`='177090', `maxhealth`='177090', `minmana`='33090', `maxmana`='33090', `mindmg`='4850', `maxdmg`='6852', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='5954' WHERE `entry`='23402';
-- Illidari Blood Lord
UPDATE `creature_template` SET `minlevel`='72', `maxlevel`='72', `minhealth`='236120', `maxhealth`='236120', `minmana`='49635', `maxmana`='49635', `mindmg`='7032', `maxdmg`='9935', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='5954' WHERE `entry`='23397';
-- Illidari Boneslicer
UPDATE `creature_template` SET `minlevel`='71', `maxlevel`='71', `minhealth`='215430', `maxhealth`='215430', `minmana`='0', `maxmana`='0', `mindmg`='4107', `maxdmg`='5809', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='7089' WHERE `entry`='22869';
-- Illidari Defiler
UPDATE `creature_template` SET `minlevel`='71', `maxlevel`='71', `minhealth`='172320', `maxhealth`='172320', `minmana`='32310', `maxmana`='32310', `mindmg`='4288', `maxdmg`='6059', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='5714' WHERE `entry`='22853';
-- Illidari Destroyer
UPDATE `creature_template` SET `minlevel`='68', `maxlevel`='69', `minhealth`='6542', `maxhealth`='6761', `minmana`='0', `maxmana`='0', `mindmg`='231', `maxdmg`='341', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='6492' WHERE `entry`='19803';
-- Illidari Dreadbringer
UPDATE `creature_template` SET `minlevel`='69', `maxlevel`='59', `minhealth`='5409', `maxhealth`='5409', `minmana`='3080', `maxmana`='3080', `mindmg`='224', `maxdmg`='316', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='5235' WHERE `entry`='19799';
-- Illidari Dreadlord
UPDATE `creature_template` SET `minlevel`='71', `maxlevel`='71', `minhealth`='28720', `maxhealth`='28720', `minmana`='3231', `maxmana`='3231', `mindmg`='715', `maxdmg`='1010', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='5714' WHERE `entry`='21166';
-- Illidari Elite
UPDATE `creature_template` SET `minlevel`='70', `maxlevel`='70', `minhealth`='20958', `maxhealth`='20958', `minmana`='0', `maxmana`='0', `mindmg`='1262', `maxdmg`='1785', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='6792' WHERE `entry`='23226';
-- Illidari Executioner
UPDATE `creature_template` SET `minlevel`='68', `maxlevel`='69', `minhealth`='6542', `maxhealth`='6761', `minmana`='0', `maxmana`='0', `mindmg`='231', `maxdmg`='341', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='6492' WHERE `entry`='19820';
-- Illidari Fearbringer
UPDATE `creature_template` SET `minlevel`='72', `maxlevel`='72', `minhealth`='553500', `maxhealth`='553500', `minmana`='0', `maxmana`='0', `mindmg`='7842', `maxdmg`='11090', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='7387' WHERE `entry`='22954';
-- Illidari Heartseeker
UPDATE `creature_template` SET `minlevel`='71', `maxlevel`='71', `minhealth`='215430', `maxhealth`='215430', `minmana`='0', `maxmana`='0', `mindmg`='4621', `maxdmg`='6535', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='7089' WHERE `entry`='23339';
-- Illidari Highlord
UPDATE `creature_template` SET `minlevel`='71', `maxlevel`='71', `minhealth`='17232', `maxhealth`='17232', `minmana`='19386', `maxmana`='19386', `mindmg`='953', `maxdmg`='1346', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='5714' WHERE `entry`='19797';
-- Illidari Informant
UPDATE `creature_template` SET `minlevel`='68', `maxlevel`='69', `minhealth`='6542', `maxhealth`='6761', `minmana`='0', `maxmana`='0', `mindmg`='231', `maxdmg`='341', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='6492' WHERE `entry`='19812';
-- Illidari Jailor
UPDATE `creature_template` SET `minlevel`='70', `maxlevel`='70', `minhealth`='5589', `maxhealth`='5589', `minmana`='3155', `maxmana`='3155', `mindmg`='164', `maxdmg`='232', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='5474' WHERE `entry`='21520';
-- Illidari Lord Balthas
UPDATE `creature_template` SET `minlevel`='70', `maxlevel`='70', `minhealth`='5589', `maxhealth`='5589', `minmana`='3155', `maxmana`='3155', `mindmg`='164', `maxdmg`='232', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='5474' WHERE `entry`='23427';
-- Illidari Mind Breaker
UPDATE `creature_template` SET `minlevel`='71', `maxlevel`='71', `minhealth`='22976', `maxhealth`='22976', `minmana`='19386', `maxmana`='19386', `mindmg`='1191', `maxdmg`='1683', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='5714' WHERE `entry`='22074';
-- Illidari Nightlord
UPDATE `creature_template` SET `minlevel`='72', `maxlevel`='72', `minhealth`='442800', `maxhealth`='42800', `minmana`='0', `maxmana`='0', `mindmg`='9149', `maxdmg`='12938', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='7387' WHERE `entry`='22855';
-- Illidari Overseer
UPDATE `creature_template` SET `minlevel`='69', `maxlevel`='69', `minhealth`='6761', `maxhealth`='6761', `minmana`='0', `maxmana`='0', `mindmg`='242', `maxdmg`='341', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='6492' WHERE `entry`='21808';
-- Illidari Painlasher
UPDATE `creature_template` SET `minlevel`='68', `maxlevel`='69', `minhealth`='3925', `maxhealth`='4057', `minmana`='2991', `maxmana`='3080', `mindmg`='214', `maxdmg`='316', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='5235' WHERE `entry`='19800';
-- Illidari Peacekeer
UPDATE `creature_template` SET `minlevel`='68', `maxlevel`='60', `minhealth`='6542', `maxhealth`='6761', `minmana`='0', `maxmana`='0', `mindmg`='231', `maxdmg`='341', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='6492' WHERE `entry`='19821';
-- Illidari Ravager
UPDATE `creature_template` SET `minlevel`='70', `maxlevel`='70', `minhealth`='20958', `maxhealth`='20958', `minmana`='0', `maxmana`='0', `mindmg`='505', `maxdmg`='714', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='6792' WHERE `entry`='22857';
-- Illidari Satyr
UPDATE `creature_template` SET `minlevel`='69', `maxlevel`='69', `minhealth`='6761', `maxhealth`='6761', `minmana`='0', `maxmana`='0', `mindmg`='242', `maxdmg`='341', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='6492' WHERE `entry`='21656';
-- Illidari Shadowlord
UPDATE `creature_template` SET `minlevel`='71', `maxlevel`='71', `minhealth`='57440', `maxhealth`='57440', `minmana`='16155', `maxmana`='16155', `mindmg`='2382', `maxdmg`='3366', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='5714' WHERE `entry`='22988';
-- Illidari Shadowstalker
UPDATE `creature_template` SET `minlevel`='69', `maxlevel`='69', `minhealth`='6716', `maxhealth`='6716', `minmana`='0', `maxmana`='0', `mindmg`='242', `maxdmg`='314', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='6492' WHERE `entry`='21337';
-- Illidari Shocktrooper
UPDATE `creature_template` SET `minlevel`='68', `maxlevel`='69', `minhealth`='6542', `maxhealth`='6761', `minmana`='0', `maxmana`='0', `mindmg`='231', `maxdmg`='341', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='6492' WHERE `entry`='19802';
-- Illidari Slayer
UPDATE `creature_template` SET `minlevel`='70', `maxlevel`='70', `minhealth`='349300', `maxhealth`='349300', `minmana`='0', `maxmana`='0', `mindmg`='2525', `maxdmg`='3570', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='6792' WHERE `entry`='21639';
-- Illidari Soldier
UPDATE `creature_template` SET `minlevel`='70', `maxlevel`='70', `minhealth`='6986', `maxhealth`='6986', `minmana`='4732', `maxmana`='4732', `mindmg`='176', `maxdmg`='248', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='5474' WHERE `entry`='22075';
-- Illidari Succubus
UPDATE `creature_template` SET `minlevel`='70', `maxlevel`='70', `minhealth`='4890', `maxhealth`='4890', `minmana`='7196', `maxmana`='7196', `mindmg`='216', `maxdmg`='304', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='3427' WHERE `entry`='22860';
-- Illidari Taskmaster
UPDATE `creature_template` SET `minlevel`='63', `maxlevel`='63', `minhealth`='4422', `maxhealth`='4422', `minmana`='0', `maxmana`='0', `mindmg`='127', `maxdmg`='177', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='4691' WHERE `entry`='17058';
-- Illidari Tormentor
UPDATE `creature_template` SET `minlevel`='68', `maxlevel`='69', `minhealth`='6542', `maxhealth`='6761', `minmana`='0', `maxmana`='0', `mindmg`='231', `maxdmg`='341', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='4692' WHERE `entry`='21762';
-- Illidari Watcher
UPDATE `creature_template` SET `minlevel`='70', `maxlevel`='70', `minhealth`='44712', `maxhealth`='44712', `minmana`='18930', `maxmana`='18930', `mindmg`='1406', `maxdmg`='1986', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7), `armor`='5474' WHERE `entry`='22093';
-- others without stats
-- Shadowhoof Summoner
UPDATE `creature_template` SET `minhealth` = '5409', `maxhealth` = '5409', `armor` = '5235', `mindmg` = '224', `maxdmg` = '316', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '22859';
-- Lightsworn Vindicator
UPDATE `creature_template` SET `minhealth` = '5673', `maxhealth` = '5673', `armor` = '5235', `mindmg` = '224', `maxdmg` = '316', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '22861';
-- Anchorite Caalen
UPDATE `creature_template` SET `minhealth` = '28120', `maxhealth` = '28120', `armor` = '3427', `mindmg` = '216', `maxdmg` = '304', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '22862';
-- Seasoned Magister
UPDATE `creature_template` SET `minhealth` = '4908', `maxhealth` = '4908', `armor` = '3427', `mindmg` = '216', `maxdmg` = '304', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '22863';
-- Fyra Dawnstar
UPDATE `creature_template` SET `minhealth` = '6634', `maxhealth` = '6634', `armor` = '4692', `mindmg` = '231', `maxdmg` = '341', `attackpower`=ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg`=ROUND(`mindmg` - `attackpower` / 7), `maxdmg`=ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '22864';

-- Cenarion Battlegear
UPDATE `quest_template` SET `OfferRewardText` = 'Kaldon sent you? Very well, let''s see what we can do for you.' WHERE `entry` = '8800';

-- Defias Evoker in deadmine was dropping level 51 greens
DELETE FROM `creature_loot_template` WHERE (`entry` = '1729') AND (`mincountOrRef` = '-80031');

-- remove generic_creature Cloud Skydancer, hippogryph master
UPDATE `creature_template` SET `spell1` = '0', `ScriptName` = '' WHERE `entry` = '15177';

-- quest The Doomed Fleet, fix for Male-Female bug on text
UPDATE `quest_template` SET `offerRewardText`='Lightforge Iron is a precious metal, but it sounds like your quest is a dire one. You''ve come a long way, $gBrother:Sister;. With luck, you might just find what you seek!$B$BAnd if you do get the iron, I know who can fashion it into a weapon against this Necromancer you speak of in Duskwood.' WHERE `entry`='270';

-- npc Mor'Ladim, fix for level too high and bestiary
UPDATE `creature_template` SET `minlevel` = '30', `maxlevel` = '30', `mindmg` = '85', `maxdmg` = '113', `minhealth` = '2865', `maxhealth` = '2865', `minmana` = '0', `maxmana` = '0', `armor` = '1200', `spell1` = '3547', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '522';


-- Forgot to update MovementType for my fix for darkmoon fair post 38
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 56625; -- Flik
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 56624; -- Flik Frog

-- Bloodsail Traitor is walking thought textures
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` = 554;
-- Hemet Nesingwary is walking thought textures
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` = 64963;


-- Fel Gland
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-33', `lootcondition` = '9', `condition_value1` = '11020' WHERE `item` = '32502';

-- He walks clockwise around the outer terrace of the upper city.
-- Ezekiel WP
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 70351;
DELETE FROM `creature_movement` WHERE `id`=70351;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(70351, 1, -1773.51, 5476.26, -12.428, 0, '', '', '', '', '', 0, 0, 0, 5.27445, 0, 0),
(70351, 2, -1759.47, 5421.7, -12.428, 0, '', '', '', '', '', 0, 0, 0, 4.96421, 0, 0),
(70351, 3, -1775.01, 5375.97, -12.428, 0, '', '', '', '', '', 0, 0, 0, 4.17253, 0, 0),
(70351, 4, -1813.64, 5336.53, -12.428, 0, '', '', '', '', '', 0, 0, 0, 3.93456, 0, 0),
(70351, 5, -1868.27, 5325.6, -12.428, 0, '', '', '', '', '', 0, 0, 0, 3.31016, 0, 0),
(70351, 6, -1919.97, 5340.31, -12.428, 0, '', '', '', '', '', 0, 0, 0, 2.84128, 0, 0),
(70351, 7, -1955.73, 5381.31, -12.428, 0, '', '', '', '', '', 0, 0, 0, 2.25459, 0, 0),
(70351, 8, -1970.49, 5434.17, -12.428, 0, '', '', '', '', '', 0, 0, 0, 1.78571, 0, 0),
(70351, 9, -1952.57, 5487.35, -12.428, 0, '', '', '', '', '', 0, 0, 0, 1.27912, 0, 0),
(70351, 10, -1913.61, 5526.17, -12.428, 0, '', '', '', '', '', 0, 0, 0, 0.770186, 0, 0),
(70351, 11, -1860.03, 5534.61, -12.428, 0, '', '', '', '', '', 0, 0, 0, 0.145794, 0, 0),
(70351, 12, -1811.49, 5520.79, -12.428, 0, '', '', '', '', '', 0, 0, 0, 5.96481, 0, 0);

-- quest The Legend of Stalvan (final step), fix for class name instead of $c.
UPDATE `quest_template` SET `offerRewardText`='I know, $N: Stalvan is dead. I sensed a wave of hope ripple through the tainted forest. Once and for all, Duskwood is free from his blood thirst. My joy is hampered by thoughts of those who fell prey to the horrible beast. Nonetheless, you are a brave and cunning $c.' WHERE `entry`='98';

-- Gordunni Back-Breaker loot
DELETE FROM `creature_loot_template` WHERE (`entry`=22143);
REPLACE INTO `creature_loot_template` VALUES
(22143, 27854, 5, 0, 1, 1, 0, 0, 0), -- smoked talbuk venison
(22143, 27860, 3, 0, 1, 1, 0, 0, 0), -- purified draenic water
(22143, 21877, 25, 0, 2, 3, 0, 0, 0), -- netherweave cloths
(22143, 80001, 5, 1, -80001, 1, 0, 0, 0), -- Req 64 gray
(22143, 80002, 5, 1, -80002, 1, 0, 0, 0), -- Req 67 gray
(22143, 80035, 2, 1, -80035, 1, 0, 0, 0), -- BC White Items
(22143, 80007, 1, 1, -80007, 1, 0, 0, 0), -- Req 64/65 greens
(22143, 80009, 1, 1, -80009, 1, 0, 0, 0), -- Req 66/67 greens
(22143, 80011, 1, 1, -80011, 1, 0, 0, 0), -- Req 68/69 greens
(22143, 80093, 0.5, 1, -80093, 1, 0, 0, 0), -- Epic World drop recipes
(22143, 34491, 1.15, 0, 1, 1, 7, 165, 1), -- specific formula
(22143, 80092, 0.5, 1, -80092, 1, 0, 0, 0); -- Green and Blue World drop recipes
-- Gordunni Elementalist loot
DELETE FROM `creature_loot_template` WHERE (`entry`=22144);
REPLACE INTO `creature_loot_template` VALUES
(22144, 27854, 5, 0, 1, 1, 0, 0, 0), -- smoked talbuk venison
(22144, 27860, 3, 0, 1, 1, 0, 0, 0), -- purified draenic water
(22144, 21877, 25, 0, 2, 3, 0, 0, 0), -- netherweave cloths
(22144, 80001, 5, 1, -80001, 1, 0, 0, 0), -- Req 64 gray
(22144, 80002, 5, 1, -80002, 1, 0, 0, 0), -- Req 67 gray
(22144, 80035, 2, 1, -80035, 1, 0, 0, 0), -- BC White Items
(22144, 80007, 1, 1, -80007, 1, 0, 0, 0), -- Req 64/65 greens
(22144, 80009, 1, 1, -80009, 1, 0, 0, 0), -- Req 66/67 greens
(22144, 80011, 1, 1, -80011, 1, 0, 0, 0), -- Req 68/69 greens
(22144, 80093, 0.5, 1, -80093, 1, 0, 0, 0), -- Epic World drop recipes
(22144, 34491, 1.15, 0, 1, 1, 7, 165, 1), -- specific formula
(22144, 80092, 0.5, 1, -80092, 1, 0, 0, 0); -- Green and Blue World drop recipes
-- Gordunni Head-Splitter loot
DELETE FROM `creature_loot_template` WHERE (`entry`=22148);
REPLACE INTO `creature_loot_template` VALUES
(22148, 27854, 5, 0, 1, 1, 0, 0, 0), -- smoked talbuk venison
(22148, 27860, 3, 0, 1, 1, 0, 0, 0), -- purified draenic water
(22148, 21877, 25, 0, 2, 3, 0, 0, 0), -- netherweave cloths
(22148, 80001, 5, 1, -80001, 1, 0, 0, 0), -- Req 64 gray
(22148, 80002, 5, 1, -80002, 1, 0, 0, 0), -- Req 67 gray
(22148, 80035, 2, 1, -80035, 1, 0, 0, 0), -- BC White Items
(22148, 80007, 1, 1, -80007, 1, 0, 0, 0), -- Req 64/65 greens
(22148, 80009, 1, 1, -80009, 1, 0, 0, 0), -- Req 66/67 greens
(22148, 80011, 1, 1, -80011, 1, 0, 0, 0), -- Req 68/69 greens
(22148, 80093, 0.5, 1, -80093, 1, 0, 0, 0), -- Epic World drop recipes
(22148, 34491, 1.15, 0, 1, 1, 7, 165, 1), -- specific formula
(22148, 80092, 0.5, 1, -80092, 1, 0, 0, 0); -- Green and Blue World drop recipes

REPLACE INTO `npc_vendor` (`entry`,`item`,`ExtendedCost`) VALUES
('18382','38229','103');

-- quest Murloc Poachers, fix for Name instead of $N
UPDATE `quest_template` SET `OfferRewardText`='Well done, $N. I hope you didn''t have too much trouble with those murlocs.$B$BIt''s strange seeing them so far from the sea. I wonder if they''re here because they''re running from something...' WHERE `entry`='150';

-- Skeletal Sea Turtle duplicate entry
DELETE FROM `gameobject` WHERE `guid`=48786;
UPDATE `gameobject` SET `spawntimesecs`=300 WHERE `guid`=48788;

UPDATE `creature_template` SET `lootid`=22848 WHERE `entry`=22848;
UPDATE `creature_template` SET `lootid`=22849 WHERE `entry`=22849;
DELETE FROM `creature_loot_template` WHERE `entry` in ('22844', '22845', '22846', '22847', '22848', '22849', '22853', '22855', '22869', '22873', '22874', '22875', '22876', '22877', '22878', '22880', '22881', '22882', '22883', '22884', '22885', '22939', '22945', '22953', '22954', '22955', '22960', '22963', '23028', '23030', '23147', '23172', '23330', '23337', '23339', '23394', '23397', '23400', '23402', '23403') and `item` in (32593,32528,32606,34011,32608,32527,34012,32943,32593);
REPLACE INTO `creature_loot_template` VALUES
(22844, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22845, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22846, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22847, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22848, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22849, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22853, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22855, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22869, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22873, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22874, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22875, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22876, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22877, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22878, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22880, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22881, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22882, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22883, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22884, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22885, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22939, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22945, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22953, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22954, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22955, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22960, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(22963, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(23028, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(23030, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(23147, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(23172, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(23330, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(23337, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(23339, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(23394, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(23397, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(23400, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(23402, 70099, 1.5, 0, -70099, 1, 0, 0, 0),
(23403, 70099, 1.5, 0, -70099, 1, 0, 0, 0);

replace INTO `creature_loot_template` VALUES
(70099, 32593, 0, 1, 1, 1, 0, 0, 0),
(70099, 32528, 0, 1, 1, 1, 0, 0, 0),
(70099, 32606, 0, 1, 1, 1, 0, 0, 0),
(70099, 34011, 0, 1, 1, 1, 0, 0, 0),
(70099, 32608, 0, 1, 1, 1, 0, 0, 0),
(70099, 32527, 0, 1, 1, 1, 0, 0, 0),
(70099, 34012, 0, 1, 1, 1, 0, 0, 0),
(70099, 32943, 0, 1, 1, 1, 0, 0, 0),
(70099, 32593, 0, 1, 1, 1, 0, 0, 0);

-- epic crafting gems reference
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
('95008', '32229', '0', '1', '1', '1', '0', '0', '0'),
('95008', '32231', '0', '1', '1', '1', '0', '0', '0'),
('95008', '32228', '0', '1', '1', '1', '0', '0', '0'),
('95008', '32249', '0', '1', '1', '1', '0', '0', '0'),
('95008', '32227', '0', '1', '1', '1', '0', '0', '0'),
('95008', '32230', '0', '1', '1', '1', '0', '0', '0');
-- Ancient Vein loot
DELETE FROM `gameobject_loot_template` WHERE `entry`='22046';
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
('22046', '34907', '0', '1', '1', '3', '0', '0', '0'), -- Shattered Gem Fragments
('22046', '95008', '33', '1', '-95008', '1', '0', '0', '0'), -- epic gems reference
('22046', '95004', '3', '1', '-95004', '1', '0', '0', '0');-- green and blue gems reference

-- Entropius had wrong hp
UPDATE `creature_template` SET `minhealth` = '2050000', `maxhealth` = '2050000' WHERE `entry` = '25840';
-- Singularity unselectable
UPDATE `creature_template` SET `minlevel` = '73', `maxlevel` = '73', `minhealth` = '8', `maxhealth` = '8', `speed` = '0', `flags` = `flags`|'33554432' WHERE `entry` = '25855';

-- This is wrong / reminder to smack whoever accepted it :P
-- UPDATE `quest_template` SET `SpecialFlags`='0' WHERE `entry`='8305';

UPDATE `gameobject` SET `id` = '19017' WHERE `guid` = '27432';

-- Cyclok the Mad
DELETE FROM `creature_loot_template` WHERE (`entry`=8202);
REPLACE INTO `creature_loot_template` VALUES
(8202, 1645, 5, 2, 1, 1, 0, 0, 0),
(8202, 3914, 1, 2, 1, 1, 0, 0, 0),
(8202, 4338, 20, 2, 1, 3, 0, 0, 0),
(8202, 4422, 5, 2, 1, 1, 0, 0, 0),
(8202, 4599, 5, 2, 1, 1, 0, 0, 0),
(8202, 6149, 2, 2, 1, 1, 0, 0, 0),
(8202, 80036, 5, 2, -80036, 1, 0, 0, 0),
(8202, 80025, 100/3, 1, -80025, 1, 0, 0, 0),
(8202, 80043, 100/3, 1, -80043, 1, 0, 0, 0),
(8202, 80045, 100/3, 1, -80045, 1, 0, 0, 0);

-- Offer "Complendium of the Fallen" to only non-undead Horde
UPDATE `quest_template` SET `RequiredRaces` = '674' WHERE`entry` = '1049';

-- quest givers to 1947
DELETE FROM `creature_questrelation` WHERE `quest` = '1947';
REPLACE INTO `creature_questrelation` ( `id`, `quest`) VALUES ( '5885', '1947');
REPLACE INTO `creature_questrelation` ( `id`, `quest`) VALUES ( '5497', '1947');

-- quest givers to 1953
DELETE FROM `creature_questrelation` WHERE `quest` = '1953';
REPLACE INTO `creature_questrelation` ( `id`, `quest`) VALUES ( '4568', '1953');
REPLACE INTO `creature_questrelation` ( `id`, `quest`) VALUES ( '5144', '1953');
REPLACE INTO `creature_questrelation` ( `id`, `quest`) VALUES ( '5497', '1953');
REPLACE INTO `creature_questrelation` ( `id`, `quest`) VALUES ( '7311', '1953');

DELETE FROM `gameobject` WHERE `guid` = '11665';

DELETE FROM `creature_loot_template` WHERE (`entry`=46) AND (`item`=8838);

DELETE FROM `creature` WHERE (`guid` = '65526') AND (`id` = '18257');
DELETE FROM `creature` WHERE (`guid` = '72601') AND (`id` = '20502');
DELETE FROM `creature` WHERE `guid` IN ('68989', '68990') AND (`id` = '19349');

-- Change "Shard of a Felhound" and "Shard of an Infernal" quests to PrevQuestID -1799
UPDATE `quest_template` SET `PrevQuestId` = '-1799' WHERE `entry` IN ('4962', '4963');

UPDATE `fishing_loot_template` SET `groupid`='1' WHERE `item`='6717';

UPDATE `quest_template` SET `CompleteScript`='10813' WHERE `entry`='10813';
DELETE FROM `quest_end_scripts` WHERE `id`=10813;
INSERT INTO `quest_end_scripts` VALUES ('10813', '0', '14', '38495', '0', '', '0', '0', '0', '0');

-- Forum end

-- Forum need GUID start

-- Lady Sathrah
DELETE FROM `creature` WHERE `id` = '7319';
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('12596', '7319', '1', '1', '0', '0', '10979.6', '1366.13', '1328.87', '1.75107', '120', '5', '0', '240', '249', '0', '1');

DELETE FROM `creature` WHERE `id` = '6133';
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('41638', '6133', '1', '1', '0', '0', '6374.46', '869.084', '-36.1482', '3.58842', '300', '0', '0', '230', '0', '0', '1');

-- Lost Torranche spawned
DELETE FROM `creature` WHERE `id`=22807;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(41654, 22807, 530, 1, 0, 0, -4215.82, 4671.42, -90.6075, 0.566149, 480, 5, 0, 6900, 0, 0, 1),
(41655, 22807, 530, 1, 0, 0, -4264.89, 4686.7, -86.3487, 1.02639, 480, 5, 0, 6900, 0, 0, 2),
(41657, 22807, 530, 1, 0, 0, -4289.68, 4543.89, -58.8092, 1.20971, 480, 5, 0, 6900, 0, 0, 1),
(46296, 22807, 530, 1, 0, 0, -4241.37, 4758.28, -121.163, 3.85933, 480, 5, 0, 6900, 0, 0, 1),
(52405, 22807, 530, 1, 0, 0, -4249.24, 4623.46, -70.1857, 5.47645, 480, 5, 0, 6900, 0, 0, 2),
(52406, 22807, 530, 1, 0, 0, -4208.24, 4573.14, -86.2463, 3.71245, 480, 5, 0, 6900, 0, 0, 2),
(52407, 22807, 530, 1, 0, 0, -4288.24, 4586.01, -56.3142, 4.1994, 480, 5, 0, 6900, 0, 0, 1),
(52408, 22807, 530, 1, 0, 0, -4335.35, 4603.06, -44.7981, 2.64986, 480, 5, 0, 6900, 0, 0, 1),
(52409, 22807, 530, 1, 0, 0, -4364.99, 4579.53, -50.5461, 1.81493, 480, 5, 0, 6900, 0, 0, 1),
(52410, 22807, 530, 1, 0, 0, -4333.12, 4703.91, -64.038, 2.39063, 480, 5, 0, 6900, 0, 0, 1);

-- Waypoints Added
DELETE FROM `creature_movement` WHERE `id`=41655;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(41655, 1, -4262.92, 4683.62, -85.9972, 0, '', '', '', '', '', 0, 0, 0, 2.23421, 0, 0),
(41655, 2, -4262.92, 4683.62, -85.9972, 0, '', '', '', '', '', 0, 0, 0, 2.23421, 0, 0),
(41655, 3, -4264.65, 4698.41, -95.288, 0, '', '', '', '', '', 0, 0, 0, 1.13701, 0, 0),
(41655, 4, -4278.94, 4705.77, -94.8912, 0, '', '', '', '', '', 0, 0, 0, 2.41957, 0, 0),
(41655, 5, -4293.18, 4726.34, -98.8593, 0, '', '', '', '', '', 0, 0, 0, 2.30962, 0, 0),
(41655, 6, -4286.84, 4738.36, -101.288, 0, '', '', '', '', '', 0, 0, 0, 0.71133, 0, 0),
(41655, 7, -4296, 4728.56, -98.7548, 0, '', '', '', '', '', 0, 0, 0, 5.41979, 0, 0),
(41655, 8, -4275.24, 4702.94, -95.2747, 0, '', '', '', '', '', 0, 0, 0, 5.73081, 0, 0),
(41655, 9, -4265.21, 4697.48, -94.8743, 0, '', '', '', '', '', 0, 0, 0, 4.94855, 0, 0);
DELETE FROM `creature_movement` WHERE `id`=52405;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(52405, 1, -4252.13, 4625.28, -69.6139, 0, '', '', '', '', '', 0, 0, 0, 3.15706, 0, 0),
(52405, 2, -4269.13, 4624.41, -64.5126, 0, '', '', '', '', '', 0, 0, 0, 3.82858, 0, 0),
(52405, 3, -4285.05, 4608.51, -63.7065, 0, '', '', '', '', '', 0, 0, 0, 3.96602, 0, 0),
(52405, 4, -4272.63, 4628.11, -64.8352, 0, '', '', '', '', '', 0, 0, 0, 6.2798, 0, 0);
DELETE FROM `creature_movement` WHERE `id`=52406;
REPLACE INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(52406, 1, -4209.11, 4572.6, -86.1591, 0, '', '', '', '', '', 0, 0, 0, 1.57919, 0, 0),
(52406, 2, -4207.53, 4585.31, -81.8917, 0, '', '', '', '', '', 0, 0, 0, 1.62003, 0, 0),
(52406, 3, -4203.27, 4609.05, -83.1009, 0, '', '', '', '', '', 0, 0, 0, 1.23126, 0, 0),
(52406, 4, -4197.22, 4628.89, -83.6008, 0, '', '', '', '', '', 0, 0, 0, 1.46688, 0, 0),
(52406, 5, -4195.1, 4649.43, -85.3992, 0, '', '', '', '', '', 0, 0, 0, 2.61749, 0, 0),
(52406, 6, -4199.17, 4620.93, -83.1339, 0, '', '', '', '', '', 0, 0, 0, 4.31159, 0, 0),
(52406, 7, -4203.62, 4611.26, -83.0095, 0, '', '', '', '', '', 0, 0, 0, 4.00293, 0, 0),
(52406, 8, -4207.73, 4585.54, -81.7157, 0, '', '', '', '', '', 0, 0, 0, 4.4349, 0, 0);


DELETE FROM `gameobject` WHERE `id` IN (185015, 185018);
REPLACE INTO `gameobject` (`guid`,`id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
-- Overcharged Manacells - The Mechanar
(20463,'185015','554','3','144.904','-44.3406','1.01041','0.543127','0','0','0.268238','0.963353','120','100','1'),
(20464,'185015','554','3','146.76','-36.2917','1.01041','5.99065','0','0','0.145748','-0.989322','120','100','1'),
(20467,'185015','554','3','158.931','-26.9887','1.00972','4.98325','0','0','0.605162','-0.796102','120','100','1'),
(20473,'185015','554','3','151.858','-29.8824','1.01041','5.41365','0','0','0.421201','-0.906968','120','100','1'),
-- Charged Manacell Aura - The Mechanar
(20474,'185018','554','1','144.904','-44.3406','1.01041','0.543127','0','0','0.268238','0.963353','120','100','1'),
(20475,'185018','554','1','146.76','-36.2917','1.01041','5.99065','0','0','0.145748','-0.989322','120','100','1'),
(20476,'185018','554','1','158.931','-26.9887','1.00972','4.98325','0','0','0.605162','-0.796102','120','100','1'),
(20477,'185018','554','1','151.858','-29.8824','1.01041','5.41365','0','0','0.421201','-0.906968','120','100','1');

-- NEEDS TO BE IN SPELL FOCUS GO GUID RANGE --
-- Xavian Waterfall spell focus
DELETE FROM `gameobject` WHERE `id` = '174797';
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('99772', '174797', '1', '1', '3078.17', '-2699.43', '208.812', '4.15916', '0', '0', '0', '0', '180', '100', '1');

-- Circle of Aquementas .
DELETE FROM `gameobject` WHERE `id` = '148507';
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('20491', '148507', '1', '1', '-8170.22', '-5077.53', '16.0034', '4.33427', '0', '0', '0.827399', '-0.561615', '180', '100', '1');

-- missing Mailbox and missing Wanted Poster next to it
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('20492', 182950, 530, 1, -2046.01, -11876.2, 46.5735, 2.81871, 0, 0, 0, 0, 25, 100, 1),
('20493', 181889, 530, 1, -2044.3, -11877.7, 46.5803, 4.05963, 0, 0, 0.896487, -0.44307, 25, 100, 1);

-- missing Anvil and Forge
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('20494', 182056, 530, 1, -1935.83, -11912.2, 48.0586, -0.375246, 0, 0, 0, 0, 25, 100, 1),
('20495', 182055, 530, 1, -1938.49, -11915.1, 47.9809, -2.99324, 0, 0, 0, 0, 25, 100, 1);

-- Reinforced Fel Iron Chest
DELETE FROM `gameobject` WHERE `id` IN ('185168', '185169');
REPLACE INTO `gameobject` ( `guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state` ) VALUES
('20496', '185168', '543', '1', '-1295.36', '1618.7', '91.7538', '4.73694', '0', '0', '0.698375', '-0.715732', '-600', '100', '1'), -- normal
('20499', '185169', '543', '2', '-1295.36', '1618.7', '91.7538', '4.73694', '0', '0', '0.698375', '-0.715732', '-600', '100', '1'); -- heroic

-- NEEDS TO BE IN SPELL FOCUS GO GUID RANGE!!! --
DELETE FROM `gameobject` WHERE `id` = '300158';
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('99773', '300158', '530', '1', '8649.93', '-7654.85', '87.5749', '4.0921', '0', '0', '0.889177', '-0.457564', '25', '100', '1');

-- Forum need GUID end

-- Seph start

-- Mooncloth Tailor quest shouldn't have also learning spell
UPDATE `quest_template` SET `RewSpellCast` = '0' WHERE `entry` = '10831';

-- Sorry for the import error in 359, was my fault - wanted to set speed but typed value in armor field
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '71', `minhealth` = '8', `maxhealth` = '9', `armor` = '0', `speed` = '0.0001', `faction_A` = '14', `faction_H` = '14', `flags_extra` = `flags_extra`|'2', `mechanic_immune_mask` = `mechanic_immune_mask`|'116342783' WHERE `entry` IN ('21592', '21623');
-- Concert Bruiser had no dmg and didn't react if someone fight, using equip of Big Bruiser
UPDATE `creature_template` SET `minhealth` = '19815', `maxhealth` = '19815', `armor` = '6792', `mindmg` = '760', `maxdmg` = '1008', `baseattacktime` = '2000', `equipment_id` = '136', `ScriptName` = 'guard_contested', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '23721';

-- Again Justine Demalier looking male, gender change didn't help
UPDATE `creature_model_info` SET `modelid_other_gender` = '0' WHERE (`modelid` = '5446');

-- Blind Mary is questgiver
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` = '302';
DELETE FROM `creature_loot_template` WHERE (`entry` = '302');

-- Some flashbeasts that shouldn't be on Magister Terrace in kara
DELETE FROM `creature` WHERE `guid` IN ('85352', '85378', '85379', '85380') AND (`id` = '16595');

-- some outland rares
-- Hemathion loot redone
DELETE FROM `creature_loot_template` WHERE (`entry`=18692);
REPLACE INTO `creature_loot_template` VALUES
(18692, 29563, 0, 2, 2, 4, 0, 0, 0), -- junk
(18692, 29564, 10, 2, 2, 4, 0, 0, 0),
(18692, 32569, 15, 2, 2, 3, 0, 0, 0), -- apexis shards
(18692, 31155, 0, 1, 1, 1, 0, 0, 0), -- chest items
(18692, 31156, 0, 1, 1, 1, 0, 0, 0),
(18692, 31157, 0, 1, 1, 1, 0, 0, 0),
(18692, 31158, 0, 1, 1, 1, 0, 0, 0);
-- Morcrush
DELETE FROM `creature_loot_template` WHERE (`entry`=18690);
REPLACE INTO `creature_loot_template` VALUES
(18690, 31159, 0, 1, 1, 1, 0, 0, 0), -- shoulder items
(18690, 31160, 0, 1, 1, 1, 0, 0, 0),
(18690, 31161, 0, 1, 1, 1, 0, 0, 0),
(18690, 31162, 0, 1, 1, 1, 0, 0, 0),
(18690, 29580, 0, 2, 1, 1, 0, 0, 0), -- junk
(18690, 29581, 15, 2, 1, 1, 0, 0, 0);
-- Fulgorge
DELETE FROM `creature_loot_template` WHERE (`entry`=18678);
REPLACE INTO `creature_loot_template` VALUES
(18678, 25434, 0, 2, 2, 4, 0, 0, 0), -- junk
(18678, 25436, 15, 2, 2, 4, 0, 0, 0),
(18678, 31176, 0, 1, 1, 1, 0, 0, 0), -- hand items
(18678, 31177, 0, 1, 1, 1, 0, 0, 0),
(18678, 31179, 0, 1, 1, 1, 0, 0, 0),
(18678, 31181, 0, 1, 1, 1, 0, 0, 0);
-- Doomsayer Jurim
DELETE FROM `creature_loot_template` WHERE (`entry`=18686);
REPLACE INTO `creature_loot_template` VALUES
(18686, 13444, 2, 0, 1, 1, 0, 0, 0), -- white items, there is no reference for pre-bc potions
(18686, 13446, 2, 0, 1, 1, 0, 0, 0),
(18686, 14047, 15, 0, 1, 3, 0, 0, 0),
(18686, 21877, 30, 0, 1, 3, 0, 0, 0),
(18686, 27855, 5, 0, 1, 1, 0, 0, 0),
(18686, 28399, 3, 0, 1, 1, 0, 0, 0),
(18686, 31232, 0, 1, 1, 1, 0, 0, 0), -- feet items
(18686, 31233, 0, 1, 1, 1, 0, 0, 0),
(18686, 31235, 0, 1, 1, 1, 0, 0, 0),
(18686, 31236, 0, 1, 1, 1, 0, 0, 0);
-- Bro'Gaz the Clanless
DELETE FROM `creature_loot_template` WHERE (`entry`=18684);
REPLACE INTO `creature_loot_template` VALUES
(18684, 27854, 3, 0, 1, 1, 0, 0, 0), -- drink and food
(18684, 27860, 3, 0, 1, 1, 0, 0, 0),
(18684, 31194, 100, 0, 1, 1, 0, 0, 0), -- Gronn-Blessed Warbeads
(18684, 80035, 2, 0, -80035, 1, 0, 0, 0); -- potions and scrolls
-- Voidhunter Yar
DELETE FROM `creature_loot_template` WHERE (`entry`=18683);
REPLACE INTO `creature_loot_template` VALUES
(18683, 22577, 25, 0, 1, 2, 0, 0, 0), -- mote of shadow
(18683, 31195, 0, 1, 1, 1, 0, 0, 0), -- waists
(18683, 31197, 0, 1, 1, 1, 0, 0, 0),
(18683, 31198, 0, 1, 1, 1, 0, 0, 0),
(18683, 31199, 0, 1, 1, 1, 0, 0, 0);
-- Ambassador Jerrikar
DELETE FROM `creature_loot_template` WHERE (`entry`=18695);
REPLACE INTO `creature_loot_template` VALUES
(18695, 21877, 30, 0, 1, 1, 0, 0, 0), -- netherweave cloth
(18695, 22577, 25, 0, 1, 1, 0, 0, 0), -- mote of shadow
(18695, 27854, 2, 0, 1, 1, 0, 0, 0), -- drink and food
(18695, 27860, 2, 0, 1, 1, 0, 0, 0),
(18695, 31221, 0, 1, 1, 1, 0, 0, 0), -- wrists
(18695, 31223, 0, 1, 1, 1, 0, 0, 0),
(18695, 31224, 0, 1, 1, 1, 0, 0, 0),
(18695, 31225, 0, 1, 1, 1, 0, 0, 0),
(18695, 80035, 2, 0, -80035, 1, 0, 0, 0); -- potions and scrolls
-- Ever-Core the Punisher
DELETE FROM `creature_loot_template` WHERE (`entry`=18698);
REPLACE INTO `creature_loot_template` VALUES
(18698, 24508, 0, 1, 1, 1, 0, 0, 0), -- junk
(18698, 24511, 20, 1, 1, 1, 0, 0, 0),
(18698, 22576, 25, 0, 1, 2, 0, 0, 0), -- mote of mana
(18698, 31203, 100, 0, 1, 1, 0, 0, 0); -- Arcane Loop

-- Terestian Illhoof correct Sacrifice position
UPDATE `spell_target_position` SET `target_position_x` = '-11234.2', `target_position_y` = '-1698.46', `target_position_z` = '179.24', `target_orientation` = '0.67621' WHERE `id` = '30115';
-- Terestian Illhoof correct position
UPDATE `creature` SET `position_x` = '-11241.7', `position_y` = '-1706.58', `position_z` = '179.237', `orientation` = '0.67766' WHERE `id` = '15688';
-- Kil'Rek correct position
UPDATE `creature` SET `position_x` = '-11243.4', `position_y` = '-1702.63', `position_z` = '179.238', `orientation` = '0.67766' WHERE `id` = '17229';

-- A'dal
UPDATE `creature_template` SET `minhealth` = '30604', `maxhealth` = '30604', `armor` = '8023', `mindmg` = '97620', `maxdmg` = '118952', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `MovementType` = '0', `mechanic_immune_mask` = `mechanic_immune_mask`|'116342783', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '18481';

-- Big Iron Fishing Pole drops FROM Shellfish Trap only
DELETE FROM `creature_loot_template` WHERE `item` = '6367';

-- Box of Assorted Parts redone
DELETE FROM `gameobject_loot_template` WHERE (`entry`=2953);
REPLACE INTO `gameobject_loot_template` VALUES
(2953, 4364, 100, 0, 1, 2, 0, 0, 0),
(2953, 4359, 0, 1, 1, 2, 0, 0, 0),
(2953, 4361, 0, 1, 1, 1, 0, 0, 0),
(2953, 4363, 0, 1, 1, 1, 0, 0, 0),
(2953, 4405, 10, 1, 1, 1, 0, 0, 0),
(2953, 4406, 6, 2, 1, 1, 0, 0, 0),
(2953, 4371, 0, 2, 1, 1, 0, 0, 0),
(2953, 4377, 0, 2, 1, 2, 0, 0, 0),
(2953, 4382, 0, 2, 1, 1, 0, 0, 0);
-- the other one was without loot
DELETE FROM `gameobject_loot_template` WHERE (`entry`=2955);
REPLACE INTO `gameobject_loot_template` VALUES
(2955, 4364, 100, 0, 1, 2, 0, 0, 0),
(2955, 4359, 0, 1, 1, 2, 0, 0, 0),
(2955, 4361, 0, 1, 1, 1, 0, 0, 0),
(2955, 4363, 0, 1, 1, 1, 0, 0, 0),
(2955, 4405, 10, 1, 1, 1, 0, 0, 0),
(2955, 4406, 6, 2, 1, 1, 0, 0, 0),
(2955, 4371, 0, 2, 1, 1, 0, 0, 0),
(2955, 4377, 0, 2, 1, 2, 0, 0, 0),
(2955, 4382, 0, 2, 1, 1, 0, 0, 0);

-- Shuttered Sun Offensive packages didn't have loot
-- A Friend in the Frontlines, Scryer
DELETE FROM `item_loot_template` WHERE (`entry`=34584);
REPLACE INTO `item_loot_template` VALUES
(34584, 27855, 100, 0, 5, 8, 0, 0, 0), -- Mag'har grainbread
(34584, 27860, 100, 0, 5, 8, 0, 0, 0), -- Purified Draenic water
(34584, 30810, 100, 0, 3, 5, 0, 0, 0), -- Sunfury Signet
(34584, 80005, 100, 1, -80005, 1, 0, 0, 0); -- Scrolls
-- Honored by Your Allies, Scryer
DELETE FROM `item_loot_template` WHERE (`entry`=34585);
REPLACE INTO `item_loot_template` VALUES
(34585, 27855, 100, 0, 5, 8, 0, 0, 0), -- Mag'har grainbread
(34585, 27860, 100, 0, 5, 8, 0, 0, 0), -- Purified Draenic water
(34585, 22829, 100, 0, 2, 3, 0, 0, 0), -- Super health potion
(34585, 22832, 100, 0, 1, 2, 0, 0, 0), -- Super mana potion
(34585, 30810, 100, 0, 5, 7, 0, 0, 0), -- Sunfury Signet
(34585, 80005, 100, 1, -80005, 1, 0, 0, 0); -- Scrolls
-- Revered in the Field of Battle, Scryer
DELETE FROM `item_loot_template` WHERE (`entry`=34593);
REPLACE INTO `item_loot_template` VALUES
(34593, 27855, 100, 0, 5, 8, 0, 0, 0), -- Mag'har grainbread
(34593, 27860, 100, 0, 5, 8, 0, 0, 0), -- Purified Draenic water
(34593, 22829, 100, 0, 2, 3, 0, 0, 0), -- Super health potion
(34593, 22832, 100, 0, 1, 2, 0, 0, 0), -- Super mana potion
(34593, 29739, 100, 0, 1, 1, 0, 0, 0), -- Arcane Tome
(34593, 30810, 100, 0, 9, 12, 0, 0, 0), -- Sunfury Signet
(34593, 80005, 100, 1, -80005, 1, 0, 0, 0), -- Scrolls
(34593, 32062, 45, 2, 1, 2, 0, 0, 0), -- Guardian Elixirs
(34593, 22840, 0, 2, 1, 1, 0, 0, 0),
(34593, 32067, 0, 2, 1, 2, 0, 0, 0),
(34593, 22834, 0, 2, 1, 1, 0, 0, 0),
(34593, 32068, 0, 2, 1, 2, 0, 0, 0),
(34593, 28104, 45, 3, 1, 2, 0, 0, 0), -- Battle Elixirs
(34593, 22824, 0, 3, 1, 1, 0, 0, 0),
(34593, 22831, 0, 3, 1, 1, 0, 0, 0),
(34593, 22833, 0, 3, 1, 1, 0, 0, 0),
(34593, 22827, 0, 3, 1, 1, 0, 0, 0),
(34593, 22835, 0, 3, 1, 2, 0, 0, 0),
(34593, 22823, 0, 4, 1, 1, 0, 0, 0), -- potions
(34593, 22830, 0, 4, 1, 1, 0, 0, 0);
-- Exalted Among All Combatants, Scryer
DELETE FROM `item_loot_template` WHERE (`entry`=34594);
REPLACE INTO `item_loot_template` VALUES
(34594, 27855, 100, 0, 5, 8, 0, 0, 0), -- Mag'har grainbread
(34594, 27860, 100, 0, 5, 8, 0, 0, 0), -- Purified Draenic water
(34594, 22829, 100, 0, 3, 5, 0, 0, 0), -- Super health potion
(34594, 22832, 100, 0, 3, 5, 0, 0, 0), -- Super mana potion
(34594, 29739, 100, 0, 2, 2, 0, 0, 0), -- Arcane Tome
(34594, 30810, 100, 0, 9, 12, 0, 0, 0), -- Sunfury Signet
(34594, 80005, 100, 1, -80005, 1, 0, 0, 0), -- Scrolls
(34594, 32062, 45, 2, 1, 3, 0, 0, 0), -- Guardian Elixirs
(34594, 22840, 0, 2, 1, 2, 0, 0, 0),
(34594, 32067, 0, 2, 1, 2, 0, 0, 0),
(34594, 22834, 0, 2, 1, 2, 0, 0, 0),
(34594, 32068, 0, 2, 1, 2, 0, 0, 0),
(34594, 28104, 45, 3, 1, 3, 0, 0, 0), -- Battle Elixirs
(34594, 22824, 0, 3, 1, 2, 0, 0, 0),
(34594, 22831, 0, 3, 1, 2, 0, 0, 0),
(34594, 22833, 0, 3, 1, 2, 0, 0, 0),
(34594, 22827, 0, 3, 1, 2, 0, 0, 0),
(34594, 22835, 0, 3, 1, 2, 0, 0, 0),
(34594, 22823, 0, 4, 1, 2, 0, 0, 0), -- potions
(34594, 22830, 0, 4, 1, 2, 0, 0, 0);
-- A Friend in the Frontlines, Aldor
DELETE FROM `item_loot_template` WHERE (`entry`=34583);
REPLACE INTO `item_loot_template` VALUES
(34583, 27855, 100, 0, 5, 8, 0, 0, 0), -- Mag'har grainbread
(34583, 27860, 100, 0, 5, 8, 0, 0, 0), -- Purified Draenic water
(34583, 30809, 100, 0, 3, 5, 0, 0, 0), -- Mark of Sargeras .
(34583, 80005, 100, 1, -80005, 1, 0, 0, 0); -- Scrolls
-- Honored by Your Allies, Aldor
DELETE FROM `item_loot_template` WHERE (`entry`=34587);
REPLACE INTO `item_loot_template` VALUES
(34587, 27855, 100, 0, 5, 8, 0, 0, 0), -- Mag'har grainbread
(34587, 27860, 100, 0, 5, 8, 0, 0, 0), -- Purified Draenic water
(34587, 22829, 100, 0, 2, 3, 0, 0, 0), -- Super health potion
(34587, 22832, 100, 0, 1, 2, 0, 0, 0), -- Super mana potion
(34587, 30809, 100, 0, 5, 7, 0, 0, 0), -- Mark of Sargeras .
(34587, 80005, 100, 1, -80005, 1, 0, 0, 0); -- Scrolls
-- Revered in the Field of Battle, Aldor
DELETE FROM `item_loot_template` WHERE (`entry`=34592);
REPLACE INTO `item_loot_template` VALUES
(34592, 27855, 100, 0, 5, 8, 0, 0, 0), -- Mag'har grainbread
(34592, 27860, 100, 0, 5, 8, 0, 0, 0), -- Purified Draenic water
(34592, 22829, 100, 0, 2, 3, 0, 0, 0), -- Super health potion
(34592, 22832, 100, 0, 1, 2, 0, 0, 0), -- Super mana potion
(34592, 29740, 100, 0, 1, 1, 0, 0, 0), -- Fel Armament
(34592, 30809, 100, 0, 9, 12, 0, 0, 0), -- Mark of Sargeras .
(34592, 80005, 100, 1, -80005, 1, 0, 0, 0), -- Scrolls
(34592, 32062, 45, 2, 1, 2, 0, 0, 0), -- Guardian Elixirs
(34592, 22840, 0, 2, 1, 1, 0, 0, 0),
(34592, 32067, 0, 2, 1, 2, 0, 0, 0),
(34592, 22834, 0, 2, 1, 1, 0, 0, 0),
(34592, 32068, 0, 2, 1, 2, 0, 0, 0),
(34592, 28104, 45, 3, 1, 2, 0, 0, 0), -- Battle Elixirs
(34592, 22824, 0, 3, 1, 1, 0, 0, 0),
(34592, 22831, 0, 3, 1, 1, 0, 0, 0),
(34592, 22833, 0, 3, 1, 1, 0, 0, 0),
(34592, 22827, 0, 3, 1, 1, 0, 0, 0),
(34592, 22835, 0, 3, 1, 2, 0, 0, 0),
(34592, 22823, 0, 4, 1, 1, 0, 0, 0), -- potions
(34592, 22830, 0, 4, 1, 1, 0, 0, 0);
-- Exalted Among All Combatants, Aldor
DELETE FROM `item_loot_template` WHERE (`entry`=34595);
REPLACE INTO `item_loot_template` VALUES
(34595, 27855, 100, 0, 5, 8, 0, 0, 0), -- Mag'har grainbread
(34595, 27860, 100, 0, 5, 8, 0, 0, 0), -- Purified Draenic water
(34595, 22829, 100, 0, 3, 5, 0, 0, 0), -- Super health potion
(34595, 22832, 100, 0, 3, 5, 0, 0, 0), -- Super mana potion
(34595, 29740, 100, 0, 2, 2, 0, 0, 0), -- Fel Armament
(34595, 30809, 100, 0, 9, 12, 0, 0, 0), -- Mark of Sargeras .
(34595, 80005, 100, 1, -80005, 1, 0, 0, 0), -- Scrolls
(34595, 32062, 45, 2, 1, 3, 0, 0, 0), -- Guardian Elixirs
(34595, 22840, 0, 2, 1, 2, 0, 0, 0),
(34595, 32067, 0, 2, 1, 2, 0, 0, 0),
(34595, 22834, 0, 2, 1, 2, 0, 0, 0),
(34595, 32068, 0, 2, 1, 2, 0, 0, 0),
(34595, 28104, 45, 3, 1, 3, 0, 0, 0), -- Battle Elixirs
(34595, 22824, 0, 3, 1, 2, 0, 0, 0),
(34595, 22831, 0, 3, 1, 2, 0, 0, 0),
(34595, 22833, 0, 3, 1, 2, 0, 0, 0),
(34595, 22827, 0, 3, 1, 2, 0, 0, 0),
(34595, 22835, 0, 3, 1, 2, 0, 0, 0),
(34595, 22823, 0, 4, 1, 2, 0, 0, 0), -- potions
(34595, 22830, 0, 4, 1, 2, 0, 0, 0);

-- Thunderaan the Windseeker BETA was available
DELETE FROM `creature_questrelation` WHERE `quest` = '7521';
DELETE FROM `creature_involvedrelation` WHERE `quest` = '7521';

-- Fix Quests with MinLevel inferior to QuestLevel (if questlevel  major of 0)
-- some BETA quest minlevels (checked wowhead and thottbot, most quests are beta)
UPDATE `quest_template` SET `MinLevel` = '1' WHERE `entry` IN ('7961', '10383', '403', '579', '1390');
-- Lonebrow's Journal, The Crone of the Kraul, A Vengeful Fate
UPDATE `quest_template` SET `MinLevel` = '23' WHERE `entry` IN ('1100', '1101', '1102');
-- Bring the Light, Stranglethorn Fever BETA
UPDATE `quest_template` SET `MinLevel` = '32' WHERE `entry` IN ('3636', '349');
-- Message in a Bottle, The Monogrammed Sash
UPDATE `quest_template` SET `MinLevel` = '42' WHERE `entry` IN ('630', '594', '620');
-- 1.4 patch epic mount exchange quests
UPDATE `quest_template` SET `MinLevel` = '1' WHERE `entry` IN ('7674', '7675', '7676', '7677', '7678', '7673', '7672', '7671', '7660', '7661', '7662', '7663', '7664', '7665');
-- A Future Task
UPDATE `quest_template` SET `MinLevel` = '45' WHERE `entry` = '2964';
-- Call the Headless Horseman
UPDATE `quest_template` SET `MinLevel` = '65' WHERE `entry` IN ('11405', '11401');
UPDATE `quest_template` SET `MinLevel` = '65', `OfferRewardText` = '', `RequestItemsText` = '' WHERE `entry` = '11404';


-- Call the Headless Horseman was changed to daily dungeon
DELETE FROM `gameobject_questrelation` WHERE `quest` = '11392';
REPLACE INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('186267', '11405');
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = '11392';
REPLACE INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES ('186314', '11405');

-- Nihil the Banished unattackable and civilian
UPDATE `creature_template` SET `flags` = `flags`|'2', `flags_extra` = `flags_extra`|'2' WHERE `entry` = '21823';

-- The Second Trial requires a script, I don't care if people can't get Sense Undead spell, implement GO scripting.
UPDATE `quest_template` SET `SpecialFlags` = `SpecialFlags`|'2' WHERE `entry` = '9686';

-- This undead can be feared
UPDATE `creature_template` SET `mechanic_immune_mask` = '0' WHERE `entry` = '23786';

-- Ranger Vedoran, a corpse attacking
UPDATE `creature_template` SET `flags_extra` = `flags_extra`|'2' WHERE `entry` = '16209';

-- TEMP Writhing Mound Summoning Circle, no more needed now that we have the real one
UPDATE `gameobject` SET `id` = '210136' WHERE `guid` = '99987';
DELETE FROM `gameobject_template` WHERE (`entry`= '300124');

-- Lord Illidan Stormrage event, better timers and text
DELETE FROM `quest_start_scripts` WHERE `id`=11108;
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
(11108, 2, 0, 0, 0, 'Come, $N. Lord Stormrage awaits.', 0, 0, 0, 0),
(11108, 3, 3, 0, 0, '', -5101.64, 593.39, 85.77, 2.6),
(11108, 8, 3, 0, 0, '', -5133.04, 611.1, 83.66, 2.36),
(11108, 10, 0, 2, 0, 'Warriors of Dragonmaw, gather ''round! One among you has attained the rank of highlord! Bow your heads in reverence! Show your respect and allegiance to Highlord $N!', 0, 0, 0, 0),
(11108, 16, 3, 0, 0, '', -5153.43, 632.62, 80.89, 2.2),
(11108, 24, 0, 0, 0, 'Lord Illidan will be here shortly.', 0, 0, 0, 0),
(11108, 30, 10, 22083, 45000, '', -5154.37, 648.36, 79.04, 4.51),
(11108, 32, 0, 2, 0, 'All hail Lord Illidan!', 0, 0, 0, 0),
(11108, 40, 0, 0, 0, 'Lord Illidan, this is the Dragonmaw that I, and others, have told you about. He will lead us to victory!', 0, 0, 0, 0),
(11108, 45, 0, 0, 0, 'But... My lord, I do not understand. $N... He is the orc that has...', 0, 0, 0, 0),
(11108, 75, 0, 0, 0, 'It will be done, my lord.', 0, 0, 0, 0),
(11108, 85, 0, 0, 0, 'So you thought to make a fool of Mor''ghor, eh? Before you are delivered to Lord Illidan, you will feel pain that you could not know to exist. I will take pleasure in exacting my own vengeance.', 0, 0, 0, 0),
(11108, 90, 7, 11108, 0, '', 0, 0, 0, 0),
(11108, 95, 3, 0, 0, '', -5133.04, 611.1, 83.66, 5.45),
(11108, 102, 3, 0, 0, '', -5101.64, 593.39, 85.77, 5.71),
(11108, 108, 3, 0, 0, '', -5085, 578.65, 86.64, 2.36);

-- The Essential Brewfest Pretzel should last 2 days
UPDATE `item_template` SET `Duration` = '172800' WHERE `entry` = '33043';
-- Complimentary Brewfest Sampler 15 minutes (not just conjured)
UPDATE `item_template` SET `Duration` = '-900' WHERE `entry` = '33096';

-- Viper and Venomous Snake are summoned by Hunter's Snake trap
UPDATE `creature_template` SET `rangedattackpower` = '0', `pickpocketloot` = '0', `faction_A` = '14', `faction_H` = '14' WHERE `entry` IN ('19921', '19833');
DELETE FROM `creature` WHERE `id` IN ('19921', '19833');

-- Practice Dummy on Isle of Quel'danas
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '8500', `maxhealth` = '8500', `speed` = '0.0001' WHERE `entry` = '25225';
-- Shattered Sun Sentry stats
UPDATE `creature_template` SET `minhealth` = '11218', `maxhealth` = '11218', `mindmg` = '3800', `maxdmg` = '6100', `spell1` = '33688', `mechanic_immune_mask` = `mechanic_immune_mask`|'1', `ScriptName` = 'guard_contested', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '24994';
-- Shattered Sun Marksman hp
UPDATE `creature_template` SET `minhealth` = '10182', `maxhealth` = '10182', `spell1` = '38858' WHERE `entry` = '24938';
-- Rocket Chicken hp
UPDATE `creature_template` SET `minhealth` = '1185', `maxhealth` = '1185' WHERE `entry` = '25109';
-- Unrestrained Dragonhawk
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '11189', `maxhealth` = '11189', `minmana` = '3155', `maxmana` = '3155' WHERE `entry` = '25236';
-- Aldor Anchorite shouldn't move
UPDATE `creature` SET `spawndist` = '0', `MovementType` = '0' WHERE (`guid` = '68464') AND (`id` = '19142');

-- Seeping Sludge Globule and Void Waste Globule should be summoned, FROM spell 35685 which procs dummy 35686 at 25% (needs core support) will fix quest 10411
DELETE FROM `creature` WHERE `id` IN ('20806', '20805');

-- Seek Out Ameer, missing rewardtext, rep and minlevel
UPDATE `quest_template` SET `MinLevel` = '70', `OfferRewardText` = 'Aye, it is true, but the Consortium are not the only group claiming losses.', `RewRepFaction1` = '933', `RewRepValue1` = '10' WHERE `entry` = '10969';

-- Image of Agent Ya-six was moving
UPDATE `creature_template` SET `MovementType` = '0' WHERE `entry` = '20564';
UPDATE `creature` SET `spawndist` = '0', `MovementType` = '0' WHERE `id` = '20564';

-- Withered Corpse don't want to lay down
UPDATE `creature_template_addon` SET `bytes0` = '16777472', `auras` = '29266 0 29266 1' WHERE (`entry` = '20561');
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` = '20561';
DELETE FROM `creature_loot_template` WHERE `entry` = '20561';

-- triggers, Coruu Control Console
DELETE FROM `creature_template_addon` WHERE (`entry` = '20417');
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES
('20417', '23196 0');
-- Duro Control Console
UPDATE `creature_template` SET `flags` = `flags`|'33554432', `flags_extra` = `flags_extra`|'2', `mindmg` = '0', `maxdmg` = '0', `attackpower` = '0', `baseattacktime` = '0', `rangeattacktime` = '0' WHERE `entry` = '20418';
DELETE FROM `creature_template_addon` WHERE (`entry` = '20418');
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES
('20418', '23196 0');
-- Ara Control Console
DELETE FROM `creature_template_addon` WHERE (`entry` = '20440');
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES
('20440', '23196 0');
-- B'naar Control Console
DELETE FROM `creature_template_addon` WHERE (`entry` = '20209');
REPLACE INTO `creature_template_addon` (`entry`, `auras`) VALUES
('20209', '23196 0');
-- Invis Sparrowhawk Origin
UPDATE `creature_template_addon` SET `auras` = '29266 0 29266 1' WHERE (`entry` = '22974');


-- Dead Doomguard
UPDATE `creature_template` SET `armor` = '0', `faction_A` = '14', `faction_H` = '14', `speed` = '0.0001', `mindmg` = '0', `maxdmg` = '0', `attackpower` = '0', `baseattacktime` = '0', `rangeattacktime` = '0', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0' WHERE `entry` = '20148';

-- Silvery Claws cleanup
DELETE FROM `item_loot_template` WHERE (`item` = '11172') AND (`entry` != '11617');
DELETE FROM `creature_loot_template` WHERE (`item` = '11172');
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
('14344', '11172', '-45', '0', '1', '1', '0', '0', '0'),
('14339', '11172', '-45', '0', '1', '1', '0', '0', '0'),
('8959', '11172', '-45', '0', '1', '1', '0', '0', '0'),
('8958', '11172', '-45', '0', '1', '1', '0', '0', '0'),
('8961', '11172', '-45', '0', '1', '1', '0', '0', '0'),
('8960', '11172', '-45', '0', '1', '1', '0', '0', '0'),
('8957', '11172', '-45', '0', '1', '1', '0', '0', '0'),
('8956', '11172', '-45', '0', '1', '1', '0', '0', '0');
-- Irontree Heart cleanup
DELETE FROM `item_loot_template` WHERE (`item` = '11173') AND (`entry` != '11617');
DELETE FROM `creature_loot_template` WHERE (`item` = '11173');
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
('7138', '11173', '-45', '0', '1', '1', '0', '0', '0'),
('7139', '11173', '-45', '0', '1', '1', '0', '0', '0');

-- Eternium Lockbox was sometimes empty (needs references when will be possible)
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE (`entry` = '5760');
-- A Dingy Fanny Pack
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE (`entry` = '11883');
-- Kum'isha's Junk
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE (`entry` = '12122');
-- Emerald Encrusted Chest
UPDATE `item_loot_template` SET `ChanceOrQuestChance` = '0', `groupid` = '1' WHERE (`entry` = '10752');

-- Horde Warbringer misc and shouldn't have loot
UPDATE `creature_template` SET `minhealth` = '10214', `maxhealth` = '10214', `armor` = '4800', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `lootid` = '0' WHERE `entry` = '15350';
DELETE FROM `creature_loot_template` WHERE (`entry` = '15350');
-- Alliance Brigadier General misc (need spawn in Darnassus, Stormwind and Exodar)
UPDATE `creature_template` SET `minhealth` = '12245', `maxhealth` = '12245', `armor` = '4800', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0' WHERE `entry` = '15351';

-- PvP BG Dailies, alliance
-- Call to Arms: Arathi Basin
DELETE FROM `creature_questrelation` WHERE `quest` = '11335';
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES
('15351', '11335');
DELETE FROM `creature_involvedrelation` WHERE `quest` = '11335';
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES
('15351', '11335');
-- Call to Arms: Alterac Valley
DELETE FROM `creature_questrelation` WHERE `quest` = '11336';
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES
('15351', '11336');
DELETE FROM `creature_involvedrelation` WHERE `quest` = '11336';
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES
('15351', '11336');
-- Call to Arms: Eye of the Storm
DELETE FROM `creature_questrelation` WHERE `quest` = '11337';
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES
('15351', '11337');
DELETE FROM `creature_involvedrelation` WHERE `quest` = '11337';
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES
('15351', '11337');
-- Call to Arms: Warsong Gulch
DELETE FROM `creature_questrelation` WHERE `quest` = '11338';
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES
('15351', '11338');
DELETE FROM `creature_involvedrelation` WHERE `quest` = '11338';
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES
('15351', '11338');

-- PvP BG Dailies, horde
-- Call to Arms: Arathi Basin
DELETE FROM `creature_questrelation` WHERE `quest` = '11339';
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES
('15350', '11339');
DELETE FROM `creature_involvedrelation` WHERE `quest` = '11339';
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES
('15350', '11339');
-- Call to Arms: Alterac Valley
DELETE FROM `creature_questrelation` WHERE `quest` = '11340';
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES
('15350', '11340');
DELETE FROM `creature_involvedrelation` WHERE `quest` = '11340';
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES
('15350', '11340');
-- Call to Arms: Eye of the Storm
DELETE FROM `creature_questrelation` WHERE `quest` = '11341';
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES
('15350', '11341');
DELETE FROM `creature_involvedrelation` WHERE `quest` = '11341';
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES
('15350', '11341');
-- Call to Arms: Warsong Gulch
DELETE FROM `creature_questrelation` WHERE `quest` = '11342';
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES
('15350', '11342');
DELETE FROM `creature_involvedrelation` WHERE `quest` = '11342';
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES
('15350', '11342');

-- Call of Arms quests minlevel
-- WSG
UPDATE `quest_template` SET `MinLevel` = '11' WHERE `entry` IN ('11338', '11342');
-- AB
UPDATE `quest_template` SET `MinLevel` = '21' WHERE `entry` IN ('11335', '11339');
-- AV
UPDATE `quest_template` SET `MinLevel` = '51' WHERE `entry` IN ('11336', '11340');
-- EotS
UPDATE `quest_template` SET `MinLevel` = '61' WHERE `entry` IN ('11337', '11341');

-- some old pvp quests
-- Invaders of Alterac Valley (horde) no longer in game
DELETE FROM `creature_questrelation` WHERE `quest` IN ('8387', '8369');
DELETE FROM `creature_involvedrelation` WHERE `quest` IN ('8387', '8369');
-- Fight for Warsong Gulch (alliance)
DELETE FROM `creature_questrelation` WHERE `quest` = '8401';
DELETE FROM `creature_involvedrelation` WHERE `quest` = '8401';
-- Remember Alterac Valley! (alliance)
DELETE FROM `creature_questrelation` WHERE `quest` IN ('8383', '8375');
DELETE FROM `creature_involvedrelation` WHERE `quest` IN ('8383', '8375');

-- NEED GUID
-- Strahad's Summoning Circle generic GO that should be spawned on top of the ratchet summoning circle for Felhunter quest The Binding (1795)
DELETE FROM `gameobject` WHERE `id` = '92252';
REPLACE INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
('29205', '92252', '1', '1', '-770.513', '-3720.37', '42.461', '5.82547', '0', '0', '0.226865', '-0.973926', '25', '100', '1');

-- Seph end

-- NF spell_target_position fixes start

--
-- TARGET_TABLE_X_Y_Z_COORDINATES
--

DELETE FROM `spell_target_position` WHERE `id`=22651;
REPLACE INTO `spell_target_position` VALUES (22651,429,-25.98,-448.24,-36.09,3.13);
DELETE FROM `spell_target_position` WHERE `id`=34830;
REPLACE INTO `spell_target_position` VALUES (34830,530,4199.70,1766.39,133.21,0);
DELETE FROM `spell_target_position` WHERE `id`=34857;
REPLACE INTO `spell_target_position` VALUES (34857,530,3923.06,3873.36,180.75,0);
DELETE FROM `spell_target_position` WHERE `id`=8995;
REPLACE INTO `spell_target_position` VALUES (8995,0,-2646.62,-2455.57,80.87,0);
DELETE FROM `spell_target_position` WHERE `id`=8996;
REPLACE INTO `spell_target_position` VALUES (8996,0,-2645.25,-2449.50,82.65,0);
DELETE FROM `spell_target_position` WHERE `id`=8997;
REPLACE INTO `spell_target_position` VALUES (8997,0,-2648.88,-2442.54,80.71,0);
DELETE FROM `spell_target_position` WHERE `id`=9055;
REPLACE INTO `spell_target_position` VALUES (9055,0,-1350.83,-2740.16,62.74,2.95);
DELETE FROM `spell_target_position` WHERE `id`=12158;
REPLACE INTO `spell_target_position` VALUES (12158,90,-531.09,-103.04,-156.04,0);
DELETE FROM `spell_target_position` WHERE `id`=12159;
REPLACE INTO `spell_target_position` VALUES (12159,90,-510.59,-102.89,-152.46,0);
DELETE FROM `spell_target_position` WHERE `id`=13912;
REPLACE INTO `spell_target_position` VALUES (13912,230,1380.58,-819.48,-92.72,4.69);
DELETE FROM `spell_target_position` WHERE `id`=23460;
REPLACE INTO `spell_target_position` VALUES (23460,469,-7672.46,-1107.19,396.65,0.59);
DELETE FROM `spell_target_position` WHERE `id`=24325;
REPLACE INTO `spell_target_position` VALUES (24325,309,-11726.28,-1777.38,10.46,0.16);
DELETE FROM `spell_target_position` WHERE `id`=24593;
REPLACE INTO `spell_target_position` VALUES (24593,309,-11726.28,-1777.38,10.46,0.16);
DELETE FROM `spell_target_position` WHERE `id`=33068;
REPLACE INTO `spell_target_position` VALUES (33068,0,1805.93,335.66,70.39,4.67);
DELETE FROM `spell_target_position` WHERE `id`=33069;
REPLACE INTO `spell_target_position` VALUES (33069,530,10021.06,-7014.87,49.71,4.01);
DELETE FROM `spell_target_position` WHERE `id`=41108;
REPLACE INTO `spell_target_position` VALUES (41108,530,2322.37,7304.15,365.61,5.04);
DELETE FROM `spell_target_position` WHERE `id`=8606;
REPLACE INTO `spell_target_position` VALUES (8606,0,325.80,-1481.47,42.68,0.47);
DELETE FROM `spell_target_position` WHERE `id`=11012;
REPLACE INTO `spell_target_position` VALUES (11012,1,-9619.32,-2815.02,10.89,0.37);
DELETE FROM `spell_target_position` WHERE `id`=13044;
REPLACE INTO `spell_target_position` VALUES (13044,0,-11224.85,-2835.35,158.85,3.73);
DELETE FROM `spell_target_position` WHERE `id`=13461;
REPLACE INTO `spell_target_position` VALUES (13461,0,-11234.85,-2842.52,157.92,1.47);
DELETE FROM `spell_target_position` WHERE `id`=22950;
REPLACE INTO `spell_target_position` VALUES (22950,429,-39.39,812.47,-11.64,4.77);
DELETE FROM `spell_target_position` WHERE `id`=22951;
REPLACE INTO `spell_target_position` VALUES (22951,1,-3760.87,1086.28,131.96,1.53);
DELETE FROM `spell_target_position` WHERE `id`=28689;
REPLACE INTO `spell_target_position` VALUES (28689,530,7513.63,-6388.93,23.80,2.84);
DELETE FROM `spell_target_position` WHERE `id`=28690;
REPLACE INTO `spell_target_position` VALUES (28690,530,7524.72,-6378.58,30.03,0.69);
DELETE FROM `spell_target_position` WHERE `id`=28691;
REPLACE INTO `spell_target_position` VALUES (28691,530,7199.40,-7097.36,66.97,0.87);
DELETE FROM `spell_target_position` WHERE `id`=28692;
REPLACE INTO `spell_target_position` VALUES (28692,530,7190.91,-7107.89,75.22,4.06);
DELETE FROM `spell_target_position` WHERE `id`=35741;
REPLACE INTO `spell_target_position` VALUES (35741,530,4802.63,3775.42,210.53,5.49);
DELETE FROM `spell_target_position` WHERE `id`=35742;
REPLACE INTO `spell_target_position` VALUES (35742,530,4778.46,3455.36,104.13,0.79);
DELETE FROM `spell_target_position` WHERE `id`=37850;
REPLACE INTO `spell_target_position` VALUES (37850,548,372.85,-690.84,-13.91,3.61);
DELETE FROM `spell_target_position` WHERE `id`=38023;
REPLACE INTO `spell_target_position` VALUES (38023,548,366.27,-709.40,-13.92,3.82);
DELETE FROM `spell_target_position` WHERE `id`=38024;
REPLACE INTO `spell_target_position` VALUES (38024,548,365.53,-737.12,-14.00,2.88);
DELETE FROM `spell_target_position` WHERE `id`=38025;
REPLACE INTO `spell_target_position` VALUES (38025,548,337.69,-732.87,-13.74,1.06);
DELETE FROM `spell_target_position` WHERE `id`=37854;
REPLACE INTO `spell_target_position` VALUES (37854,548,372.85,-690.84,-13.91,3.61);
DELETE FROM `spell_target_position` WHERE `id`=37858;
REPLACE INTO `spell_target_position` VALUES (37858,548,366.27,-709.40,-13.92,3.82);
DELETE FROM `spell_target_position` WHERE `id`=37860;
REPLACE INTO `spell_target_position` VALUES (37860,548,365.53,-737.12,-14.00,2.88);
DELETE FROM `spell_target_position` WHERE `id`=37861;
REPLACE INTO `spell_target_position` VALUES (37861,548,337.69,-732.87,-13.74,1.06);
DELETE FROM `spell_target_position` WHERE `id`=42710;
REPLACE INTO `spell_target_position` VALUES (42710,0,-9008.79,851.32,105.89,5.61);
DELETE FROM `spell_target_position` WHERE `id`=44218;
REPLACE INTO `spell_target_position` VALUES (44218,585,148.56,180.86,-16.72,1.58);
DELETE FROM `spell_target_position` WHERE `id`=46884;
REPLACE INTO `spell_target_position` VALUES (46884,580,1704.04,956.20,53.07,4.57);
DELETE FROM `spell_target_position` WHERE `id`=47523;
REPLACE INTO `spell_target_position` VALUES (47523,230,850.38,-223.30,-43.68,0.79);
DELETE FROM `spell_target_position` WHERE `id`=49846;
REPLACE INTO `spell_target_position` VALUES (49846,230,850.38,-223.30,-43.68,0.79);
DELETE FROM `spell_target_position` WHERE `id` BETWEEN 22191 AND 22202;
REPLACE INTO `spell_target_position` VALUES (22191,249,2.96,-198.83,-86.57,0),(22192,249,-4.92,-248.93,-86.84,0),(22193,249,-12.64,-183.21,-87.35,0),(22194,249,13.56,-234.31,-85.56,0),(22195,249,14.08,-219.35,-85.87,0),(22196,249,18.79,-194.50,-85.01,0),(22197,249,2.43,-185.71,-86.65,0),(22198,249,-16.71,-196.87,-88.16,0),(22199,249,-16.14,-214.12,-88.46,0),(22200,249,-54.89,-229.60,-85.48,0),(22201,249,-40.45,-211.84,-86.66,0),(22202,249,-16.69,-232.60,-88.13,0);
DELETE FROM `spell_target_position` WHERE `id`=33566;
REPLACE INTO `spell_target_position` VALUES (33566,555,-226.60,-263.66,17.08,0);
DELETE FROM `spell_target_position` WHERE `id`=33582;
REPLACE INTO `spell_target_position` VALUES (33582,555,-226.60,-263.66,17.08,0);
DELETE FROM `spell_target_position` WHERE `id`=33583;
REPLACE INTO `spell_target_position` VALUES (33583,555,-262.40,-229.57,17.08,0);
DELETE FROM `spell_target_position` WHERE `id`=33584;
REPLACE INTO `spell_target_position` VALUES (33584,555,-260.35,-297.56,17.08,0);
DELETE FROM `spell_target_position` WHERE `id`=33585;
REPLACE INTO `spell_target_position` VALUES (33585,555,-292.05,-270.37,12.68,0);
DELETE FROM `spell_target_position` WHERE `id`=33586;
REPLACE INTO `spell_target_position` VALUES (33586,555,-301.64,-255.97,12.68,0);
DELETE FROM `spell_target_position` WHERE `id`=34681;
REPLACE INTO `spell_target_position` VALUES (34681,553,-185.52,397.90,-15.77,0);
DELETE FROM `spell_target_position` WHERE `id`=34682;
REPLACE INTO `spell_target_position` VALUES (34682,553,-185.68,406.90,-15.80,0);
DELETE FROM `spell_target_position` WHERE `id`=34684;
REPLACE INTO `spell_target_position` VALUES (34684,553,-185.68,406.90,-15.80,0);
DELETE FROM `spell_target_position` WHERE `id`=34685;
REPLACE INTO `spell_target_position` VALUES (34685,553,-185.52,397.90,-15.77,0);
DELETE FROM `spell_target_position` WHERE `id`=34686;
REPLACE INTO `spell_target_position` VALUES (34686,553,-185.68,406.90,-15.80,0);
DELETE FROM `spell_target_position` WHERE `id`=34687;
REPLACE INTO `spell_target_position` VALUES (34687,553,-185.68,406.90,-15.80,0);
DELETE FROM `spell_target_position` WHERE `id`=34688;
REPLACE INTO `spell_target_position` VALUES (34688,553,-185.52,397.90,-15.77,0);
DELETE FROM `spell_target_position` WHERE `id`=34690;
REPLACE INTO `spell_target_position` VALUES (34690,553,-185.52,397.90,-15.77,0);
DELETE FROM `spell_target_position` WHERE `id`=34727;
REPLACE INTO `spell_target_position` VALUES (34727,553,86.77,419.85,-26.94,0);
DELETE FROM `spell_target_position` WHERE `id`=34730;
REPLACE INTO `spell_target_position` VALUES (34730,553,84.83,362.09,-28.10,0);
DELETE FROM `spell_target_position` WHERE `id`=34731;
REPLACE INTO `spell_target_position` VALUES (34731,553,55.83,423.99,-26.53,0);
DELETE FROM `spell_target_position` WHERE `id`=34732;
REPLACE INTO `spell_target_position` VALUES (34732,553,46.65,360.87,-27.71,0);
DELETE FROM `spell_target_position` WHERE `id`=34733;
REPLACE INTO `spell_target_position` VALUES (34733,553,26.20,416.72,-25.96,0);
DELETE FROM `spell_target_position` WHERE `id`=34734;
REPLACE INTO `spell_target_position` VALUES (34734,553,26.39,338.76,-25.88,0);
DELETE FROM `spell_target_position` WHERE `id`=36958;
REPLACE INTO `spell_target_position` VALUES (36958,550,794.50,16.73,48.72,4.74);
DELETE FROM `spell_target_position` WHERE `id`=36959;
REPLACE INTO `spell_target_position` VALUES (36959,550,785.54,14.88,48.72,5.17);
DELETE FROM `spell_target_position` WHERE `id`=36960;
REPLACE INTO `spell_target_position` VALUES (36960,550,780.41,9.44,48.72,5.68);
DELETE FROM `spell_target_position` WHERE `id`=36961;
REPLACE INTO `spell_target_position` VALUES (36961,550,778.43,-0.72,48.72,6.26);
DELETE FROM `spell_target_position` WHERE `id`=36962;
REPLACE INTO `spell_target_position` VALUES (36962,550,779.43,-9.06,48.72,0.42);
DELETE FROM `spell_target_position` WHERE `id`=36963;
REPLACE INTO `spell_target_position` VALUES (36963,550,785.32,-16.17,48.72,1.04);
DELETE FROM `spell_target_position` WHERE `id`=36964;
REPLACE INTO `spell_target_position` VALUES (36964,550,793.36,-17.96,48.72,1.42);
DELETE FROM `spell_target_position` WHERE `id`=39813;
REPLACE INTO `spell_target_position` VALUES (39813,548,424.84,-732.18,-7.14,3.13);
DELETE FROM `spell_target_position` WHERE `id`=39814;
REPLACE INTO `spell_target_position` VALUES (39814,548,424.91,-728.68,-7.14,3.13);
DELETE FROM `spell_target_position` WHERE `id`=39815;
REPLACE INTO `spell_target_position` VALUES (39815,548,425.05,-724.23,-7.14,3.13);
DELETE FROM `spell_target_position` WHERE `id`=39816;
REPLACE INTO `spell_target_position` VALUES (39816,548,425.13,-719.31,-7.14,3.13);
DELETE FROM `spell_target_position` WHERE `id`=39817;
REPLACE INTO `spell_target_position` VALUES (39817,548,424.36,-715.40,-7.14,3.13);
DELETE FROM `spell_target_position` WHERE `id`=39818;
REPLACE INTO `spell_target_position` VALUES (39818,548,321.05,-714.24,-13.15,0);
DELETE FROM `spell_target_position` WHERE `id`=39819;
REPLACE INTO `spell_target_position` VALUES (39819,548,321.05,-718.73,-13.15,0);
DELETE FROM `spell_target_position` WHERE `id`=39820;
REPLACE INTO `spell_target_position` VALUES (39820,548,321.05,-724.03,-13.15,0);
DELETE FROM `spell_target_position` WHERE `id`=39821;
REPLACE INTO `spell_target_position` VALUES (39821,548,321.05,-729.37,-13.15,0);
DELETE FROM `spell_target_position` WHERE `id`=39822;
REPLACE INTO `spell_target_position` VALUES (39822,548,321.05,-734.20,-13.15,0);
DELETE FROM `spell_target_position` WHERE `id` BETWEEN 17475 AND 17480;
REPLACE INTO `spell_target_position` VALUES (17475,329,4017.40,-3339.70,115.057655,5.48),(17476,329,4013.18,-3351.80,115.052254,0.13),(17477,329,4017.73,-3363.47,115.057274,0.72),(17478,329,4048.87,-3363.22,115.054253,3.62),(17479,329,4051.77,-3350.89,115.055351,3.06),(17480,329,4048.37,-3339.96,115.055222,2.45);

--
-- TARGET_SCRIPT_COORDINATES
--

DELETE FROM `spell_script_target` WHERE `entry`=9082;
INSERT INTO `spell_script_target` VALUES (9082,1,6492);

--
-- spell_scripts
--

DELETE FROM `spell_scripts` WHERE `id` IN (37751,37752);
INSERT INTO `spell_scripts` VALUES
(37751,0,1,373,0,'',0,0,0,0),
(37751,0,4,46,0x02000002,'',0,0,0,0),
(37752,0,1,26,0,'',0,0,0,0),
(37752,0,5,46,0x02000002,'',0,0,0,0);


-- NF spell_target_position end

-- Arcatraz and Underbog heroic loot start

-- Underbog Heroic Loot by hoshie
-- 20168 - Ghaz'an
DELETE FROM `creature_loot_template` WHERE `entry` IN (20168, 99005);
REPLACE INTO `creature_loot_template` VALUES
(20168, 24246, 20, 0, 1, 1, 0, 0, 0),
(20168, 99005, 100, 1, -99005, 1, 0, 0, 0),
(99005, 27758, 0, 1, 1, 1, 0, 0, 0),
(99005, 27761, 0, 1, 1, 1, 0, 0, 0),
(99005, 27759, 0, 1, 1, 1, 0, 0, 0),
(99005, 27757, 0, 1, 1, 1, 0, 0, 0),
(99005, 27755, 0, 1, 1, 1, 0, 0, 0),
(99005, 27760, 0, 1, 1, 1, 0, 0, 0),
(20168, 99002, 25, 1, -99002, 1, 0, 0, 0),
(20168, 29434, 100, 0, 1, 1, 0, 0, 0);
-- 20169 - Hungarfen
DELETE FROM `creature_loot_template` WHERE `entry` IN (20169,99004);
REPLACE INTO `creature_loot_template` VALUES
(20169, 24246, 20, 0, 1, 1, 0, 0, 0),
(20169, 99004, 100, 1, -99004, 1, 0, 0, 0),
(99004, 27745, 0, 1, 1, 1, 0, 0, 0),
(99004, 27743, 0, 1, 1, 1, 0, 0, 0),
(99004, 27747, 0, 1, 1, 1, 0, 0, 0),
(99004, 27748, 0, 1, 1, 1, 0, 0, 0),
(99004, 27746, 0, 1, 1, 1, 0, 0, 0),
(99004, 27744, 0, 1, 1, 1, 0, 0, 0),
(20169, 99002, 25, 1, -99002, 1, 0, 0, 0),
(20169, 29434, 100, 0, 1, 1, 0, 0, 0);
-- 20183 - Swaplord Musel'ek
DELETE FROM `creature_loot_template` WHERE `entry` IN (20183,99003);
REPLACE INTO `creature_loot_template` VALUES
(20183, 99003, 100, 1, -99003, 1, 0, 0, 0),
(99003, 27765, 0, 1, 1, 1, 0, 0, 0),
(99003, 27763, 0, 1, 1, 1, 0, 0, 0),
(99003, 27766, 0, 1, 1, 1, 0, 0, 0),
(99003, 27764, 0, 1, 1, 1, 0, 0, 0),
(99003, 27767, 0, 1, 1, 1, 0, 0, 0),
(99003, 27762, 0, 1, 1, 1, 0, 0, 0),
(20183, 99002, 25, 1, -99002, 1, 0, 0, 0),
(20183, 29434, 100, 0, 1, 1, 0, 0, 0);
-- 20184 - The Black Stalker
DELETE FROM `creature_loot_template` WHERE `entry` IN (20184,99000,99001,99002,99006);
REPLACE INTO `creature_loot_template` VALUES
(20184, 23572, 100, 0, 1, 1, 0, 0, 0),
(20184, 24246, 20, 0, 1, 1, 0, 0, 0),
(20184, 33826, -100, 0, 1, 1, 0, 0, 0),
(20184, 24248, -100, 0, 1, 1, 0, 0, 0),
(20184, 29434, 100, 0, 1, 1, 0, 0, 0),
(20184, 99000, 0.5, 0, -99000, 1, 0, 0, 0),
(99000, 31882, 0, 1, 1, 1, 0, 0, 0),
(99000, 31910, 0, 1, 1, 1, 0, 0, 0),
(99000, 31901, 0, 1, 1, 1, 0, 0, 0),
(99000, 31892, 0, 1, 1, 1, 0, 0, 0),
(20184, 99006, 100, 1, -99006, 1, 0, 0, 0),
(99006, 29265, 0, 1, 1, 1, 0, 0, 0),
(99006, 30541, 0, 1, 1, 1, 0, 0, 0),
(99006, 29350, 0, 1, 1, 1, 0, 0, 0),
(99006, 32081, 0, 1, 1, 1, 0, 0, 0),
(20184, 99001, 100, 2, -99001, 1, 0, 0, 0),
(99001, 27781, 0, 1, 1, 1, 0, 0, 0),
(99001, 27896, 0, 1, 1, 1, 0, 0, 0),
(99001, 27773, 0, 1, 1, 1, 0, 0, 0),
(99001, 27780, 0, 1, 1, 1, 0, 0, 0),
(99001, 27772, 0, 1, 1, 1, 0, 0, 0),
(99001, 27779, 0, 1, 1, 1, 0, 0, 0),
(99001, 27769, 0, 1, 1, 1, 0, 0, 0),
(99001, 27771, 0, 1, 1, 1, 0, 0, 0),
(99001, 27768, 0, 1, 1, 1, 0, 0, 0),
(99001, 27770, 0, 1, 1, 1, 0, 0, 0),
(99001, 27938, 0, 1, 1, 1, 0, 0, 0),
(99001, 27907, 0, 1, 1, 1, 0, 0, 0),
(20184, 99002, 60, 3, -99002, 1, 0, 0, 0),
(99002, 30606, 0, 1, 1, 1, 0, 0, 0),
(99002, 30607, 0, 1, 1, 1, 0, 0, 0),
(99002, 30608, 0, 1, 1, 1, 0, 0, 0);
-- Arcatraz Heroic Loot by theradiator
-- Reference group for heroic Arcatraz gems (99003)
DELETE FROM `creature_loot_template` WHERE `entry` IN (99003);
REPLACE INTO `creature_loot_template` VALUES
(99003, 30575, 0, 1, 1, 1, 0, 0, 0),
(99003, 30581, 0, 1, 1, 1, 0, 0, 0),
(99003, 30582, 0, 1, 1, 1, 0, 0, 0);
-- Zereketh the Unbound (21626)
DELETE FROM `creature_loot_template` WHERE `entry` IN (21626);
REPLACE INTO `creature_loot_template` VALUES
(21626, 99003, 25, 0, -99003, 1, 0, 0, 0),
(21626, 20870, 100, 0, -20870, 1, 0, 0, 0),
(21626, 29434, 100, 0, 1, 1, 0, 0, 0);
-- Dalliah the Doomsayer (21590)
DELETE FROM `creature_loot_template` WHERE `entry` IN (21590);
REPLACE INTO `creature_loot_template` VALUES
(21590, 99003, 25, 0, -99003, 1, 0, 0, 0),
(21590, 20885, 100, 0, -20885, 1, 0, 0, 0),
(21590, 29434, 100, 0, 1, 1, 0, 0, 0);
-- Wrath-Scryer Soccothrates (21624)
DELETE FROM `creature_loot_template` WHERE `entry` IN (21624);
REPLACE INTO `creature_loot_template` VALUES
(21624, 99003, 25, 0, -99003, 1, 0, 0, 0),
(21624, 20886, 100, 0, -20886, 1, 0, 0, 0),
(21624, 29434, 100, 0, 1, 1, 0, 0, 0);
-- Harbinger Skyriss (21599)
DELETE FROM `creature_loot_template` WHERE `entry` IN (21599);
REPLACE INTO `creature_loot_template` VALUES
(21599, 99003, 60, 0, -99003, 1, 0, 0, 0),
(21599, 20912, 100, 0, -20912, 1, 0, 0, 0),
(21599, 29360, 0, 1, 1, 1, 0, 0, 0),
(21599, 29248, 0, 1, 1, 1, 0, 0, 0),
(21599, 29252, 0, 1, 1, 1, 0, 0, 0),
(21599, 29254, 0, 1, 1, 1, 0, 0, 0),
(21599, 29241, 0, 1, 1, 1, 0, 0, 0),
(21599, 33861, -100, 0, 1, 1, 0, 0, 0),
(21599, 29434, 100, 0, 1, 1, 0, 0, 0);

-- Arcatraz and Underbog heroic loot end

-- by Aokromes
DELETE FROM `spell_script_target` WHERE `entry`=33924;
INSERT INTO `spell_script_target` VALUES
(33924, 1, 19424);

-- Neo's Fishing obsession ;)
-- Fishing holes
REPLACE INTO `gameobject` VALUES ('17356','180750','1','1','-4825.53','2112.97','0.0','-0.349066','0.0','0.0','0.173648','-0.984808','180','100','1');
REPLACE INTO `gameobject` VALUES ('17357','180750','1','1','-4520.65','2367.78','0.0','-1.37881','0.0','0.0','0.636078','-0.771625','180','100','1');
REPLACE INTO `gameobject` VALUES ('18062','180750','1','1','-4223.67','2385.48','0.0','-2.30383','0.0','0.0','0.913545','-0.406737','180','100','1');
REPLACE INTO `gameobject` VALUES ('18063','180750','1','1','-4652.45','2377.74','0.0','3.08923','0.0','0.0','0.999657','0.026177','180','100','1');
REPLACE INTO `gameobject` VALUES ('18064','180750','1','1','-4046.58','2884.38','0.0','-1.78024','0.0','0.0','0.777146','-0.62932','180','100','1');
REPLACE INTO `gameobject` VALUES ('18065','180750','1','1','-4379.91','2368.7','0.0','-2.68781','0.0','0.0','0.97437','-0.224951','180','100','1');
REPLACE INTO `gameobject` VALUES ('18066','180750','1','1','-3931.2','2746.97','0.0','-0.680679','0.0','0.0','0.333807','-0.942641','180','100','1');
REPLACE INTO `gameobject` VALUES ('18067','180750','1','1','3333.88','-5834.96','0.0','0.15708','0.0','0.0','0.078459','0.996917','180','100','1');
REPLACE INTO `gameobject` VALUES ('18069','180750','1','1','-6710.04','-4814.66','0.0','-1.09956','0.0','0.0','0.522499','-0.85264','180','100','1');
REPLACE INTO `gameobject` VALUES ('18070','180751','1','1','-6710.04','-4814.66','0.0','-1.09956','0.0','0.0','0.522499','-0.85264','180','100','1');
REPLACE INTO `gameobject` VALUES ('18071','180751','1','1','-4230.19','2460.48','0.0','-0.314159','0.0','0.0','0.156434','-0.987688','180','100','1');
REPLACE INTO `gameobject` VALUES ('18082','180751','1','1','-3931.2','2746.97','0.0','-0.680679','0.0','0.0','0.333807','-0.942641','180','100','1');
REPLACE INTO `gameobject` VALUES ('18083','180751','1','1','-4582.54','2354.77','0.0','0.750492','0.0','0.0','0.366501','0.930418','180','100','1');
REPLACE INTO `gameobject` VALUES ('18084','180751','1','1','3254.9','-5812.65','0.0','-2.58309','0.0','0.0','0.961262','-0.275637','180','100','1');
REPLACE INTO `gameobject` VALUES ('18085','180751','1','1','-6839.84','-4888.99','0.0','-1.25664','0.0','0.0','0.587785','-0.809017','180','100','1');
REPLACE INTO `gameobject` VALUES ('18086','180751','1','1','2959.22','-6004.52','0.0','-1.53589','0.0','0.0','0.694658','-0.71934','180','100','1');
REPLACE INTO `gameobject` VALUES ('18105','180752','1','1','-3950.56','3053.76','0.0','-0.680679','0.0','0.0','0.333807','-0.942641','180','100','1');
REPLACE INTO `gameobject` VALUES ('18107','180752','1','1','-4091.41','2695.04','0.0','2.00713','0.0','0.0','0.843391','0.5373','180','100','1');
REPLACE INTO `gameobject` VALUES ('18109','180752','1','1','-3868.3','3103.87','0.0','-1.23918','0.0','0.0','0.580703','-0.814116','180','100','1');
REPLACE INTO `gameobject` VALUES ('18111','180752','1','1','-4722.65','2106.9','0.0','-0.05236','0.0','0.0','0.026177','-0.999657','180','100','1');
REPLACE INTO `gameobject` VALUES ('18117','180752','1','1','-4798.63','2316.71','0.0','0.034907','0.0','0.0','0.017452','0.999848','180','100','1');
REPLACE INTO `gameobject` VALUES ('18118','180752','1','1','-4236.73','2361.38','0.0','2.67035','0.0','0.0','0.97237','0.233445','180','100','1');
REPLACE INTO `gameobject` VALUES ('18119','180752','1','1','-7055.77','-4876.62','0.0','-1.64061','0.0','0.0','0.731354','-0.681998','180','100','1');
REPLACE INTO `gameobject` VALUES ('18120','180752','1','1','-6951.29','-4907.06','0.0','-2.89725','0.0','0.0','0.992546','-0.121869','180','100','1');
REPLACE INTO `gameobject` VALUES ('18121','180752','1','1','-4731.54','2379.84','0.0','0.15708','0.0','0.0','0.078459','0.996917','180','100','1');
REPLACE INTO `gameobject` VALUES ('18122','180752','1','1','2969.99','-6115.76','0.0','-0.017453','0.0','0.0','0.008727','-0.999962','180','100','1');
REPLACE INTO `gameobject` VALUES ('18123','180752','1','1','-4230.19','2460.48','0.0','-0.314159','0.0','0.0','0.156434','-0.987688','180','100','1');
REPLACE INTO `gameobject` VALUES ('18125','180752','1','1','-4210.63','2542.91','0.0','-1.55334','0.0','0.0','0.700909','-0.71325','180','100','1');
REPLACE INTO `gameobject` VALUES ('18127','180752','1','1','-7020.72','-4871.83','0.0','4.71239','0.0','0.0','0.707107','-0.707107','180','100','1');
REPLACE INTO `gameobject` VALUES ('18128','180752','1','1','-6765.14','-4867.56','0.0','-2.19912','0.0','0.0','0.891007','-0.45399','180','100','1');
REPLACE INTO `gameobject` VALUES ('18129','180248','0','1','-12304.6','351.361','-0.891797','1.06465','0.0','0.0','0.507538','0.861629','180','100','1');
REPLACE INTO `gameobject` VALUES ('18131','180248','0','1','-13413.9','779.54','-0.981451','-1.78024','0.0','0.0','0.777146','-0.62932','180','100','1');
REPLACE INTO `gameobject` VALUES ('18132','180248','0','1','-12111.2','383.494','0.0','-1.44862','0.0','0.0','0.66262','-0.748956','180','100','1');
REPLACE INTO `gameobject` VALUES ('18133','180248','0','1','-13243.0','562.016','0.0','-2.93215','0.0','0.0','0.994522','-0.104529','180','100','1');
REPLACE INTO `gameobject` VALUES ('18134','180248','0','1','-13291.1','658.304','0.0','1.0821','0.0','0.0','0.515038','0.857167','180','100','1');
REPLACE INTO `gameobject` VALUES ('18135','180248','0','1','-12966.7','487.359','0.0','0.488692','0.0','0.0','0.241922','0.970296','180','100','1');
REPLACE INTO `gameobject` VALUES ('18136','180248','0','1','-13640.6','619.701','0.0','2.54818','0.0','0.0','0.956305','0.292372','180','100','1');
REPLACE INTO `gameobject` VALUES ('18137','180248','0','1','-13983.8','633.474','0.0','-2.16421','0.0','0.0','0.882948','-0.469472','180','100','1');
REPLACE INTO `gameobject` VALUES ('18138','180248','0','1','-14022.5','589.767','0.0','2.72271','0.0','0.0','0.978148','0.207912','180','100','1');
REPLACE INTO `gameobject` VALUES ('18139','180582','1','1','-1773.84','-3813.52','0.0','-2.68781','0.0','0.0','0.97437','-0.224951','180','100','1');
REPLACE INTO `gameobject` VALUES ('18140','180582','1','1','-1981.99','-3767.3','0.0','1.5708','0.0','0.0','0.707107','0.707107','180','100','1');
REPLACE INTO `gameobject` VALUES ('18141','180582','1','1','5881.34','595.47','0.0','-2.51327','0.0','0.0','0.951057','-0.309017','180','100','1');
REPLACE INTO `gameobject` VALUES ('18142','180582','1','1','6293.92','590.357','0.0','-0.418879','0.0','0.0','0.207912','-0.978148','180','100','1');
REPLACE INTO `gameobject` VALUES ('18143','180582','1','1','-1981.99','-3767.3','0.0','1.5708','0.0','0.0','0.707107','0.707107','180','100','1');
REPLACE INTO `gameobject` VALUES ('18144','180582','1','1','-1476.99','-3924.05','0.0','-3.05433','0.0','0.0','0.999048','-0.043619','180','100','1');
REPLACE INTO `gameobject` VALUES ('18145','180582','1','1','6486.94','822.047','0.0','0.994838','0.0','0.0','0.477159','0.878817','180','100','1');
REPLACE INTO `gameobject` VALUES ('18146','180900','0','1','-12968.7','489.778','0.0','-1.13446','0.0','0.0','0.5373','-0.843391','180','100','1');
REPLACE INTO `gameobject` VALUES ('18147','180900','0','1','-12829.6','440.834','0.0','2.75762','0.0','0.0','0.981627','0.190809','180','100','1');
REPLACE INTO `gameobject` VALUES ('18148','180901','0','1','-12749.4','343.818','0.0','-2.58309','0.0','0.0','0.961262','-0.275637','180','100','1');
REPLACE INTO `gameobject` VALUES ('18149','180902','0','1','-14320.4','529.485','0.0','-2.67035','0.0','0.0','0.97237','-0.233445','180','100','1');
REPLACE INTO `gameobject` VALUES ('18151','180655','1','1','-1951.5','-3759.95','0.0','0.663225','0.0','0.0','0.325568','0.945519','180','100','1');
REPLACE INTO `gameobject` VALUES ('18153','180655','1','1','-1011.95','-3808.33','0.0','-2.3911','0.0','0.0','0.930418','-0.366501','180','100','1');
REPLACE INTO `gameobject` VALUES ('18154','180655','1','1','-1773.84','-3813.52','0.0','-2.68781','0.0','0.0','0.97437','-0.224951','180','100','1');
REPLACE INTO `gameobject` VALUES ('18157','180662','0','1','-2704.53','-1210.83','0.0','2.14675','0.0','0.0','0.878817','0.477159','180','100','1');
REPLACE INTO `gameobject` VALUES ('18158','180663','1','1','2617.94','-365.778','102.761','1.78024','0.0','0.0','0.777146','0.62932','180','100','1');
REPLACE INTO `gameobject` VALUES ('18161','180663','1','1','2891.01','-333.287','102.761','-0.733038','0.0','0.0','0.358368','-0.93358','180','100','1');
REPLACE INTO `gameobject` VALUES ('18162','180663','1','1','2509.32','-2855.59','150.071','-2.3911','0.0','0.0','0.930418','-0.366501','180','100','1');
REPLACE INTO `gameobject` VALUES ('18165','180664','0','1','-3707.95','-631.876','0.0','-0.925024','0.0','0.0','0.446198','-0.894934','180','100','1');
REPLACE INTO `gameobject` VALUES ('18169','180664','0','1','-3884.81','-712.804','0.0','-0.10472','0.0','0.0','0.052336','-0.99863','180','100','1');
REPLACE INTO `gameobject` VALUES ('18172','180664','0','1','-2681.61','-1279.36','0.0','-2.46091','0.0','0.0','0.942641','-0.333807','180','100','1');
REPLACE INTO `gameobject` VALUES ('18181','180682','1','1','-2937.83','-4248.67','0.0','-0.977384','0.0','0.0','0.469472','-0.882948','180','100','1');
REPLACE INTO `gameobject` VALUES ('18185','180683','1','1','-3053.86','-4229.58','0.0','0.541052','0.0','0.0','0.267238','0.96363','180','100','1');
REPLACE INTO `gameobject` VALUES ('18189','180683','1','1','-2693.47','-4182.76','0.0','-2.79253','0.0','0.0','0.984808','-0.173648','180','100','1');
REPLACE INTO `gameobject` VALUES ('18193','180683','1','1','-3193.46','-4268.06','0.0','1.309','0.0','0.0','0.608761','0.793353','180','100','1');
REPLACE INTO `gameobject` VALUES ('18195','180683','1','1','-3153.37','-4241.55','0.0','1.8675','0.0','0.0','0.803857','0.594823','180','100','1');
REPLACE INTO `gameobject` VALUES ('18200','180683','1','1','-1726.92','3240.38','0.0','0.541052','0.0','0.0','0.267238','0.96363','180','100','1');
REPLACE INTO `gameobject` VALUES ('18202','180683','1','1','-1819.44','3065.4','0.0','-2.70526','0.0','0.0','0.976296','-0.21644','180','100','1');
REPLACE INTO `gameobject` VALUES ('18206','180683','1','1','-1932.85','3071.6','0.0','-1.23918','0.0','0.0','0.580703','-0.814116','180','100','1');
REPLACE INTO `gameobject` VALUES ('18211','180683','1','1','-2019.94','3154.51','0.0','-1.64061','0.0','0.0','0.731354','-0.681998','180','100','1');
REPLACE INTO `gameobject` VALUES ('18213','180685','1','1','-2591.33','-4100.78','0.0','-2.89725','0.0','0.0','0.992546','-0.121869','180','100','1');
REPLACE INTO `gameobject` VALUES ('18223','180685','1','1','-3371.17','-4340.61','0.0','2.77507','0.0','0.0','0.983255','0.182236','180','100','1');
REPLACE INTO `gameobject` VALUES ('18225','180685','1','1','-1773.08','3283.3','0.0','0.645772','0.0','0.0','0.317305','0.948324','180','100','1');
REPLACE INTO `gameobject` VALUES ('18227','180712','1','1','-4230.19','2460.48','0.0','-0.314159','0.0','0.0','0.156434','-0.987688','180','100','1');
REPLACE INTO `gameobject` VALUES ('18232','180712','1','1','-6765.14','-4867.56','0.0','-2.19912','0.0','0.0','0.891007','-0.45399','180','100','1');
REPLACE INTO `gameobject` VALUES ('18279','180712','1','1','-4153.15','2618.2','0.0','2.74017','0.0','0.0','0.979925','0.199368','180','100','1');
REPLACE INTO `gameobject` VALUES ('18282','180712','1','1','-4859.53','2239.23','0.0','0.05236','0.0','0.0','0.026177','0.999657','180','100','1');
REPLACE INTO `gameobject` VALUES ('18284','180712','1','1','2959.22','-6004.52','0.0','-1.53589','0.0','0.0','0.694658','-0.71934','180','100','1');
REPLACE INTO `gameobject` VALUES ('18293','180712','1','1','3875.84','-5796.33','0.0','-0.087267','0.0','0.0','0.04362','-0.999048','180','100','1');
REPLACE INTO `gameobject` VALUES ('18629','180712','1','1','-6951.29','-4907.06','0.0','-2.89725','0.0','0.0','0.992546','-0.121869','180','100','1');
REPLACE INTO `gameobject` VALUES ('18631','180712','1','1','-6932.98','-4950.85','0.0','-1.25664','0.0','0.0','0.587785','-0.809017','180','100','1');
REPLACE INTO `gameobject` VALUES ('20337','180664','0','1','-3887.51','-837.013','0.0','2.32129','0.0','0.0','0.91706','0.398749','180','100','1');
REPLACE INTO `gameobject` VALUES ('20339','180685','1','1','-2937.83','-4248.67','0.0','-0.977384','0.0','0.0','0.469472','-0.882948','180','100','1');
REPLACE INTO `gameobject` VALUES ('20354','180685','1','1','-3431.34','-4390.54','0.0','-1.46608','0.0','0.0','0.669131','-0.743145','180','100','1');
REPLACE INTO `gameobject` VALUES ('20377','180685','1','1','-2693.47','-4182.76','0.0','-2.79253','0.0','0.0','0.984808','-0.173648','180','100','1');

-- Some new templates (mainly construction of Stormwind port
REPLACE INTO `creature_template` VALUES (27704,0,24755,0,24755,0,'Horace Alder','Mage Trainer','',50,50,1,1,0,0,0,894,894,1,1.0,1.0,0,0.0,0.0,0,0,2000,0,4608,0,0,0,0,0,0,0.0,0.0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,'');
REPLACE INTO `creature_template` VALUES (28470,0,25457,0,25457,0,'Nether Ray Fry','','',1,1,1,1,0,0,0,14,14,0,1.0,1.0,0,0.0,0.0,0,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,'');
REPLACE INTO `creature_template` VALUES (28569,0,25519,0,25544,0,'Construction Worker','','',32,32,1,1,0,0,0,12,12,0,1.0,1.0,0,0.0,0.0,0,0,2000,0,36864,0,0,0,0,0,0,0.0,0.0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,'');
REPLACE INTO `creature_template` VALUES (28596,0,25520,0,25520,0,'Dwarven Construction Worker','','',34,34,1,1,0,0,0,55,55,0,1.0,1.0,0,0.0,0.0,0,0,2000,0,36864,0,0,0,0,0,0,0.0,0.0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,'');
REPLACE INTO `creature_template` VALUES (28572,0,25523,0,25523,0,'Mason Goldgild',"Royal Stonecutter's Guild",'',46,46,1,1,0,0,0,55,55,1,1.0,1.0,0,0.0,0.0,0,0,2000,0,37376,0,0,0,0,0,0,0.0,0.0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,'');
REPLACE INTO `creature_template` VALUES (28571,0,25522,0,25522,0,'Foreman Wick','','',46,46,1,1,0,0,0,12,12,1,1.0,1.0,0,0.0,0.0,0,0,2000,0,37376,0,0,0,0,0,0,0.0,0.0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,'');
REPLACE INTO `creature_template` VALUES (28573,0,25525,0,25525,0,'Underwater Construction Worker','','',33,33,1,1,0,0,0,12,12,0,1.0,1.0,0,0.0,0.0,0,0,2000,0,37376,0,0,0,0,0,0,0.0,0.0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,0,1,0,0,0,'');
REPLACE INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `flag1`, `type`, `family`, `rank`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `RacialLeader`) VALUES
('27217','Spirit of Competition','','','0','12','0','0','24393','0','24393','0','0'),
('28206','[DND] L70ETC Drums','','','0','10','0','0','25209','0','25209','0','0'),
('29089','Mini Tyrael','','','0','12','0','0','25900','0','25900','0','0'),
('27398','Gilbarta Grandhammer','Battleground Enthusiast','','0','7','0','0','24615','0','24615','0','0'),
('27346','Essence of Competition','','','0','12','0','0','24620','0','24620','0','0'),
('27399','Muja','Battleground Enthusiast','','0','7','0','0','24616','0','24616','0','0'),
('28132','Don Carlos','','','2048','7','0','1','25124','0','25124','0','0'),
('28163','Guerrero','','','0','1','1','1','161','0','161','0','0');
UPDATE `creature_template` SET `faction_A` = 55, `faction_H` = 55 WHERE `entry` = 27398;
UPDATE `creature_template` SET `faction_A` = 29, `faction_H` = 29 WHERE `entry` = 27399;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 28132;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` IN (27217,28206,29089,27346,28163);
-- wdb
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `dmg_min3`, `dmg_max3`, `dmg_type3`, `dmg_min4`, `dmg_max4`, `dmg_type4`, `dmg_min5`, `dmg_max5`, `dmg_type5`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`) VALUES
('36941','4','0','-1','Competitor\'s Tabard','49625','3','32768','1','0','0','19','-1','-1','1','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0'),
('38310','4','0','-1','Tabard of the Arcane','50861','4','32768','1','0','0','19','-1','-1','1','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0'),
('38310','4','0','-1','Tabard of the Arcane','50861','4','32768','1','0','0','19','-1','-1','1','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0'),
('36737','2','0','-1','Brutal Gladiator\'s Hatchet','49152','4','32768','1','0','0','22','-1500','-1','154','70','0','0','0','0','0','0','0','0','1','0','7','31','32','20','35','14','31','9','0','0','0','0','0','0','0','0','0','0','0','0','196','365','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','2600','0','0','15809','1','0','0','-1','0','-1','47041','1','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','1','1','0','0','0','0','105','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0'),
('37297','15','0','-1','Gold Medallion','4841','3','64','1','0','0','0','32767','-1','1','0','0','0','0','0','0','0','0','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','48406','0','0','0','1500','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','4096','0','0','0','0','0','0','0','0','0','-1','0','0'),
('37719','15','5','-1','Swift Zhevra','49950','4','64','1','1000000','0','0','-1','-1','60','60','762','150','0','0','0','0','0','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','49322','0','0','0','0','330','3000','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0'),
('37676','15','5','-1','Vengeful Nether Drake','42378','4','64','1','2000000','0','0','-1','-1','70','70','762','300','0','0','0','0','0','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','49193','0','0','0','-1','330','3000','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','0','0'),
('39656','15','0','-1','Tyrael\'s Hilt','51926','3','32768','1','0','0','0','-1','-1','20','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','53082','0','0','0','1500','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','0','0','0','0','-1','0','-1','1','','0','0','0','0','0','-1','0','0','0','0','0','0','0','0','4096','0','0','0','0','0','0','0','0','0','-1','0','0');
-- GO_template 
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `size`) VALUES('187115','8','345','Alchemy Lab','','663','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1');

-- MuuGi's Arena Tournament spanws that were DELETEd by accident
-- Before GUIDing, be SURE to import this first
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95082','26309','0','1','23757','0','1874.34','1583.65','94.6953','1.51844','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95083','26309','0','1','23757','0','1869.63','1583.73','95.2474','1.44862','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95085','26309','0','1','23757','0','1879.11','1583.15','94.4049','1.58825','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95175','26309','0','1','23757','0','1835.63','283.499','74.1663','4.29351','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95176','26309','0','1','23757','0','1830.92','283.602','74.1663','4.32842','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95178','26309','0','1','23757','0','1840.09','283.23','74.1663','4.24115','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95198','26309','530','1','23757','0','9598.18','-7281.77','17.7694','1.55334','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95201','26309','530','1','23757','0','9594','-7281.68','17.7687','1.25664','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95215','26309','530','1','23757','0','9602.14','-7281.89','17.7703','1.8326','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95300','26309','530','1','23757','0','9539.34','-6785.59','19.967','2.74017','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95303','26309','530','1','23757','0','9541.05','-6781.55','19.518','3.08923','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95307','26309','530','1','23757','0','9537.87','-6789.84','20.184','2.3911','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95345','26309','530','1','23757','0','10342','-6401.89','42.2989','5.81195','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95360','26309','530','1','23757','0','10346.3','-6395.76','42.2989','5.53269','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95363','26309','530','1','23757','0','10344','-6398.57','42.2989','5.67232','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95424','26309','0','1','23757','0','2279.35','322.9','37.8804','2.28638','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95433','26309','0','1','23757','0','2281.16','327.07','37.8804','2.74017','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95435','26309','0','1','23757','0','2282.7','331.084','37.9177','3.1765','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95454','26309','1','1','23757','0','-1220.38','89.8357','135.864','2.19912','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95470','26309','1','1','23757','0','-1226.87','83.3364','134.561','1.8675','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95472','26309','1','1','23757','0','-1223.56','86.6204','135.18','2.02458','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95553','26309','1','1','23757','0','-2349.54','-383.41','-3.92803','6.17846','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95557','26309','1','1','23757','0','-2348.75','-379.007','-3.94676','5.96903','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95563','26309','1','1','23757','0','-2349.09','-388.164','-4.08308','0.10472','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95577','26309','1','1','23757','0','-3001.02','-248.134','53.1033','1.13446','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95579','26309','1','1','23757','0','-3005.56','-246.407','52.9502','1.09956','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95582','26309','1','1','23757','0','-2996.73','-249.914','53.2827','1.16937','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95634','26309','1','1','23757','0','1598.84','-4335.97','4.92461','5.21853','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95653','26309','1','1','23757','0','1605.88','-4332.04','5.26869','5.09636','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95655','26309','1','1','23757','0','1602.25','-4333.92','5.13907','5.16617','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95698','26309','1','1','23757','0','352.552','-4739.69','13.5357','2.05949','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95700','26309','1','1','23757','0','347.945','-4739.01','13.3807','1.91986','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95702','26309','1','1','23757','0','343.084','-4739.37','13.3583','1.74533','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95768','26309','1','1','23757','0','-596.086','-4276.05','41.7667','2.18166','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95771','26309','1','1','23757','0','-603.758','-4277.35','41.6331','1.97222','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95773','26309','1','1','23757','0','-599.671','-4276.86','41.7691','2.07694','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95845','26309','0','1','23757','0','-5657.15','-487.392','400.061','1.69297','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95862','26309','0','1','23757','0','-5653.02','-487.688','400.128','1.8675','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95863','26309','0','1','23757','0','-5661.48','-487.052','400.021','1.51844','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95944','26309','0','1','23757','0','-4901.62','-926.433','505.359','5.34071','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95950','26309','0','1','23757','0','-4897.61','-924.569','505.357','5.21853','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95952','26309','0','1','23757','0','-4905.75','-929.033','505.355','5.46288','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95962','26309','0','1','23757','0','-6252.34','288.583','387.539','2.93215','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95963','26309','0','1','23757','0','-6253.34','297.043','387.225','3.12414','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('95966','26309','0','1','23757','0','-6252.98','292.937','387.252','3.01942','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96066','26309','0','1','23757','0','-8820.51','609.938','99.0873','0.872665','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96081','26309','0','1','23757','0','-8816.93','606.846','99.6239','0.977384','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96099','26309','0','1','23757','0','-9488.42','101.054','60.2788','5.65487','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96104','26309','0','1','23757','0','-9490.4','93.0475','60.1863','0.174533','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96131','26309','0','1','23757','0','-9489.32','97.2272','60.2317','6.03884','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96154','26309','0','1','23757','0','-8992.38','-84.9667','89.1692','4.04916','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96156','26309','0','1','23757','0','-8989.3','-88.5705','89.1801','3.50811','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96164','26309','0','1','23757','0','-8986.93','-91.8995','89.2725','3.12414','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96263','26309','530','1','23757','0','-3935.95','-11947.2','1.37436','4.85202','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96266','26309','530','1','23757','0','-3926.76','-11946','1.09044','4.97419','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96271','26309','530','1','23757','0','-3931.4','-11946.8','1.25584','4.95674','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96291','26309','530','1','23757','0','-4181.76','-12471.6','48.4961','4.72984','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96296','26309','530','1','23757','0','-4186.1','-12472.7','49.1084','4.86947','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96310','26309','530','1','23757','0','-4177.66','-12470.9','47.9964','4.57276','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96377','26309','530','1','23757','0','-4126.28','-13730.6','78.4293','4.92183','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96379','26309','530','1','23757','0','-4131.41','-13731.5','78.403','5.18363','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96380','26309','530','1','23757','0','-4121.41','-13729.8','78.4289','4.66003','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96456','26309','1','1','23757','0','9946.86','2176.09','1331.33','0.296706','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96457','26309','1','1','23757','0','9946.51','2171.36','1331.23','0.331613','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96461','26309','1','1','23757','0','9946.86','2180.83','1331.47','0.244346','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96468','26309','1','1','23757','0','9854.1','1068.35','1310.95','5.55015','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96488','26309','1','1','23757','0','9850.05','1059.94','1310.18','6.21337','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96587','26309','1','1','23757','0','10409.5','881.895','1323.68','2.25148','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96588','26309','1','1','23757','0','10400.5','880.827','1324.84','1.72788','180','0','0','1','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES('96589','26309','1','1','23757','0','10404.9','881.778','1324.22','2.02458','180','0','0','1','0','0','0');
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95082','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95083','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95085','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95175','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95176','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95178','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95198','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95201','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95215','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95300','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95303','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95307','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95345','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95360','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95363','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95424','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95433','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95435','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95454','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95470','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95472','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95553','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95557','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95563','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95577','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95579','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95582','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95634','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95653','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95655','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95698','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95700','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95702','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95768','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95771','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95773','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95845','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95862','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95863','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95944','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95950','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95952','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95962','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95963','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('95966','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96066','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96081','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96099','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96104','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96131','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96154','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96156','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96164','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96263','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96266','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96271','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96291','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96296','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96310','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96377','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96379','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96380','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96456','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96457','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96461','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96468','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96488','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96587','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96588','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES('96589','0','16777472','0','4097','0','0',NULL);
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95082','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95083','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95085','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95175','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95176','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95178','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95198','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95201','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95215','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95300','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95303','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95307','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95345','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95360','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95363','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95424','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95433','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95435','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95454','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95470','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95472','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95553','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95557','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95563','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95577','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95579','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95582','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95634','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95653','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95655','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95698','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95700','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95702','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95768','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95771','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95773','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95845','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95862','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95863','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95944','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95950','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95952','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95962','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95963','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('95966','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96066','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96081','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96099','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96104','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96131','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96154','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96156','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96164','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96263','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96266','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96271','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96291','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96296','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96310','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96377','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96379','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96380','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96456','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96457','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96461','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96468','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96488','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96587','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96588','33');
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES('96589','33');

-- Duplicate GOs (mainly plants and mines)
DELETE FROM `gameobject` WHERE `guid`=45054;
DELETE FROM `gameobject` WHERE `guid`=35461;
DELETE FROM `gameobject` WHERE `guid`=11453;
DELETE FROM `gameobject` WHERE `guid`=13376;
DELETE FROM `gameobject` WHERE `guid`=42059;
DELETE FROM `gameobject` WHERE `guid`=15215;
DELETE FROM `gameobject` WHERE `guid`=11480;
DELETE FROM `gameobject` WHERE `guid`=13231;
DELETE FROM `gameobject` WHERE `guid`=12678;
DELETE FROM `gameobject` WHERE `guid`=13048;
DELETE FROM `gameobject` WHERE `guid`=13047;
DELETE FROM `gameobject` WHERE `guid`=42453;

DELETE FROM `gameobject` WHERE `guid`=12361;
DELETE FROM `gameobject` WHERE `guid`=42959;
DELETE FROM `gameobject` WHERE `guid`=35475;
DELETE FROM `gameobject` WHERE `guid`=29659;
DELETE FROM `gameobject` WHERE `guid`=18143;
DELETE FROM `gameobject` WHERE `guid`=42464;

DELETE FROM `gameobject` WHERE `guid`=12529;
DELETE FROM `gameobject` WHERE `guid`=12758;
DELETE FROM `gameobject` WHERE `guid`=45172;
DELETE FROM `gameobject` WHERE `guid`=42060;
DELETE FROM `gameobject` WHERE `guid`=16917;
DELETE FROM `gameobject` WHERE `guid`=11012;
DELETE FROM `gameobject` WHERE `guid`=17289;
DELETE FROM `gameobject` WHERE `guid`=42455;
DELETE FROM `gameobject` WHERE `guid`=47985;

DELETE FROM `gameobject` WHERE `guid`=45220;
DELETE FROM `gameobject` WHERE `guid`=12528;
DELETE FROM `gameobject` WHERE `guid`=42972;
DELETE FROM `gameobject` WHERE `guid`=15062;
DELETE FROM `gameobject` WHERE `guid`=14715;
DELETE FROM `gameobject` WHERE `guid`=12891;
DELETE FROM `gameobject` WHERE `guid`=17292;
DELETE FROM `gameobject` WHERE `guid`=20777;
DELETE FROM `gameobject` WHERE `guid`=42450;

-- Fishing Extravaganza spawns
REPLACE INTO `gameobject` VALUES (11012,180248,0,1,-12304.6,351.361,-0.891797,1.06465,0.0,0.0,0.507538,0.861629,180,100,1);
REPLACE INTO `gameobject` VALUES (11453,180248,0,1,-12382.8,332.3,0.0,2.18166,0.0,0.0,0.887011,0.461749,180,100,1);
REPLACE INTO `gameobject` VALUES (11480,180248,0,1,-12571.5,78.6718,0.0,-0.872665,0.0,0.0,0.422618,-0.906308,180,100,1);
REPLACE INTO `gameobject` VALUES (12361,180248,0,1,-12538.4,10.3704,0.0,-2.04204,0.0,0.0,0.85264,-0.522498,180,100,1);
REPLACE INTO `gameobject` VALUES (12528,180248,0,1,-12674.2,-12.4252,0.0,-2.14675,0.0,0.0,0.878817,-0.477159,180,100,1);
REPLACE INTO `gameobject` VALUES (12529,180248,0,1,-12717.3,180.569,0.0,1.13446,0.0,0.0,0.5373,0.843391,180,100,1);
REPLACE INTO `gameobject` VALUES (12678,180248,0,1,-12773.2,374.574,0.0,0.244346,0.0,0.0,0.121869,0.992546,180,100,1);
REPLACE INTO `gameobject` VALUES (12758,180248,0,1,-12819.8,481.249,0.0,1.64061,0.0,0.0,0.731354,0.681998,180,100,1);
REPLACE INTO `gameobject` VALUES (12891,180248,0,1,-13118.1,479.772,0.0,-0.628319,0.0,0.0,0.309017,-0.951056,180,100,1);
REPLACE INTO `gameobject` VALUES (13047,180248,0,1,-13054.4,498.112,0.0,2.18166,0.0,0.0,0.887011,0.461749,180,100,1);
REPLACE INTO `gameobject` VALUES (13048,180248,0,1,-13303.2,630.419,0.0,-0.855212,0.0,0.0,0.414693,-0.909961,180,100,1);
REPLACE INTO `gameobject` VALUES (13231,180248,0,1,-13413.9,779.54,-0.981451,-1.78024,0.0,0.0,0.777146,-0.62932,180,100,1);
REPLACE INTO `gameobject` VALUES (13376,180248,0,1,-13568.4,760.592,0.0,-1.13446,0.0,0.0,0.5373,-0.843391,180,100,1);
REPLACE INTO `gameobject` VALUES (14715,180248,0,1,-13546.6,805.318,0.0,-0.069813,0.0,0.0,0.034899,-0.999391,180,100,1);
REPLACE INTO `gameobject` VALUES (15062,180248,0,1,-14022.5,589.767,0.0,2.72271,0.0,0.0,0.978148,0.207912,180,100,1);
REPLACE INTO `gameobject` VALUES (15215,180248,0,1,-14481.6,59.4952,0.0,-0.174533,0.0,0.0,0.087156,-0.996195,180,100,1);
REPLACE INTO `gameobject` VALUES (16917,180248,0,1,-14658.5,199.432,0.0,-2.68781,0.0,0.0,0.97437,-0.224951,180,100,1);
REPLACE INTO `gameobject` VALUES (17289,180248,0,1,-14779.9,503.113,0.0,2.3911,0.0,0.0,0.930418,0.366501,180,100,1);
REPLACE INTO `gameobject` VALUES (17292,180248,0,1,-14748.5,568.119,0.0,-0.593412,0.0,0.0,0.292372,-0.956305,180,100,1);
REPLACE INTO `gameobject` VALUES (18143,180248,0,1,-14256.9,-44.8341,0.0,0.314159,0.0,0.0,0.156434,0.987688,180,100,1);
REPLACE INTO `gameobject` VALUES (20379,180248,0,1,-14208.8,-84.284,0.0,1.309,0.0,0.0,0.608761,0.793353,180,100,1);
REPLACE INTO `gameobject` VALUES (20382,180248,0,1,-13748.0,-397.276,0.0,2.18166,0.0,0.0,0.887011,0.461749,180,100,1);
REPLACE INTO `gameobject` VALUES (20385,180248,0,1,-14145.0,-102.518,0.0,2.70526,0.0,0.0,0.976296,0.21644,180,100,1);
REPLACE INTO `gameobject` VALUES (20387,180248,0,1,-14288.2,20.8866,0.0,0.017453,0.0,0.0,0.008727,0.999962,180,100,1);
REPLACE INTO `gameobject` VALUES (20388,180248,0,1,-14725.3,279.19,0.0,-3.00197,0.0,0.0,0.997564,-0.069756,180,100,1);
REPLACE INTO `gameobject` VALUES (20390,180248,0,1,-14779.9,503.113,0.0,2.3911,0.0,0.0,0.930418,0.366501,180,100,1);
REPLACE INTO `gameobject` VALUES (20391,180248,0,1,-14751.1,450.965,0.0,2.89725,0.0,0.0,0.992546,0.121869,180,100,1);
REPLACE INTO `gameobject` VALUES (20392,180248,0,1,-14676.9,551.697,0.0,-2.60054,0.0,0.0,0.96363,-0.267238,180,100,1);
REPLACE INTO `gameobject` VALUES (20409,180248,0,1,-14658.5,199.432,0.0,-2.68781,0.0,0.0,0.97437,-0.224951,180,100,1);
REPLACE INTO `gameobject` VALUES (20410,180248,0,1,-14344.7,53.7308,0.0,1.76278,0.0,0.0,0.771625,0.636078,180,100,1);
REPLACE INTO `gameobject` VALUES (20411,180248,0,1,-13983.8,633.474,0.0,-2.16421,0.0,0.0,0.882948,-0.469472,180,100,1);
REPLACE INTO `gameobject` VALUES (20412,180248,0,1,-13828.8,705.368,0.0,2.47837,0.0,0.0,0.945519,0.325568,180,100,1);
REPLACE INTO `gameobject` VALUES (20413,180248,0,1,-13681.3,662.986,0.0,-1.02974,0.0,0.0,0.492424,-0.870356,180,100,1);
REPLACE INTO `gameobject` VALUES (20414,180248,0,1,-13648.4,641.196,0.0,0.558505,0.0,0.0,0.275637,0.961262,180,100,1);
REPLACE INTO `gameobject` VALUES (20415,180248,0,1,-13648.2,551.393,0.0,-0.610865,0.0,0.0,0.300706,-0.953717,180,100,1);
REPLACE INTO `gameobject` VALUES (20416,180248,0,1,-13562.0,630.335,0.0,3.01942,0.0,0.0,0.998135,0.061049,180,100,1);
REPLACE INTO `gameobject` VALUES (20417,180248,0,1,-13291.1,658.304,0.0,1.0821,0.0,0.0,0.515038,0.857167,180,100,1);
REPLACE INTO `gameobject` VALUES (20418,180248,0,1,-13303.2,630.419,0.0,-0.855212,0.0,0.0,0.414693,-0.909961,180,100,1);
REPLACE INTO `gameobject` VALUES (20419,180248,0,1,-13264.1,580.541,-0.827195,-0.767945,0.0,0.0,0.374607,-0.927184,180,100,1);
REPLACE INTO `gameobject` VALUES (20421,180248,0,1,-13054.4,498.112,0.0,2.18166,0.0,0.0,0.887011,0.461749,180,100,1);
REPLACE INTO `gameobject` VALUES (20422,180248,0,1,-12966.7,487.359,0.0,0.488692,0.0,0.0,0.241922,0.970296,180,100,1);
REPLACE INTO `gameobject` VALUES (20423,180248,0,1,-12869.3,482.93,0.0,0.383972,0.0,0.0,0.190809,0.981627,180,100,1);
REPLACE INTO `gameobject` VALUES (20424,180248,0,1,-12819.8,481.249,0.0,1.64061,0.0,0.0,0.731354,0.681998,180,100,1);
REPLACE INTO `gameobject` VALUES (20425,180248,0,1,-12681.6,153.839,0.0,3.08923,0.0,0.0,0.999657,0.026177,180,100,1);
REPLACE INTO `gameobject` VALUES (20438,180248,0,1,-12723.1,199.981,0.0,-1.09956,0.0,0.0,0.522499,-0.85264,180,100,1);
REPLACE INTO `gameobject` VALUES (20441,180248,0,1,-12711.1,-21.5854,0.0,1.0472,0.0,0.0,0.5,0.866025,180,100,1);
REPLACE INTO `gameobject` VALUES (20447,180248,0,1,-12340.5,305.54,0.0,0.366519,0.0,0.0,0.182236,0.983255,180,100,1);
REPLACE INTO `gameobject` VALUES (20448,180248,0,1,-12089.9,433.639,0.0,0.593412,0.0,0.0,0.292372,0.956305,180,100,1);
REPLACE INTO `gameobject` VALUES (20449,180248,0,1,-12006.2,637.413,0.0,-0.471239,0.0,0.0,0.233445,-0.97237,180,100,1);
REPLACE INTO `gameobject` VALUES (20450,180248,0,1,-11965.9,747.412,0.0,-2.63545,0.0,0.0,0.968148,-0.25038,180,100,1);
REPLACE INTO `gameobject` VALUES (20451,180248,0,1,-11957.8,831.91,0.0,1.62316,0.0,0.0,0.725374,0.688355,180,100,1);
REPLACE INTO `gameobject` VALUES (20452,180248,0,1,-11862.1,874.626,-0.84411,-0.383972,0.0,0.0,0.190809,-0.981627,180,100,1);
REPLACE INTO `gameobject` VALUES (20456,180248,0,1,-11756.1,989.75,0.0,-2.96706,0.0,0.0,0.996195,-0.087156,180,100,1);
REPLACE INTO `gameobject` VALUES (20461,180248,0,1,-12006.2,637.413,0.0,-0.471239,0.0,0.0,0.233445,-0.97237,180,100,1);
REPLACE INTO `gameobject` VALUES (20462,180248,0,1,-12029.2,526.407,0.0,-1.78024,0.0,0.0,0.777146,-0.62932,180,100,1);
REPLACE INTO `game_event_gameobject` VALUES (11012,15);
REPLACE INTO `game_event_gameobject` VALUES (11453,15);
REPLACE INTO `game_event_gameobject` VALUES (11480,15);
REPLACE INTO `game_event_gameobject` VALUES (12361,15);
REPLACE INTO `game_event_gameobject` VALUES (12528,15);
REPLACE INTO `game_event_gameobject` VALUES (12529,15);
REPLACE INTO `game_event_gameobject` VALUES (12678,15);
REPLACE INTO `game_event_gameobject` VALUES (12758,15);
REPLACE INTO `game_event_gameobject` VALUES (12891,15);
REPLACE INTO `game_event_gameobject` VALUES (13047,15);
REPLACE INTO `game_event_gameobject` VALUES (13048,15);
REPLACE INTO `game_event_gameobject` VALUES (13231,15);
REPLACE INTO `game_event_gameobject` VALUES (13376,15);
REPLACE INTO `game_event_gameobject` VALUES (14715,15);
REPLACE INTO `game_event_gameobject` VALUES (15062,15);
REPLACE INTO `game_event_gameobject` VALUES (15215,15);
REPLACE INTO `game_event_gameobject` VALUES (16917,15);
REPLACE INTO `game_event_gameobject` VALUES (17289,15);
REPLACE INTO `game_event_gameobject` VALUES (17292,15);
REPLACE INTO `game_event_gameobject` VALUES (18143,15);
REPLACE INTO `game_event_gameobject` VALUES (20379,15);
REPLACE INTO `game_event_gameobject` VALUES (20382,15);
REPLACE INTO `game_event_gameobject` VALUES (20385,15);
REPLACE INTO `game_event_gameobject` VALUES (20387,15);
REPLACE INTO `game_event_gameobject` VALUES (20388,15);
REPLACE INTO `game_event_gameobject` VALUES (20390,15);
REPLACE INTO `game_event_gameobject` VALUES (20391,15);
REPLACE INTO `game_event_gameobject` VALUES (20392,15);
REPLACE INTO `game_event_gameobject` VALUES (20409,15);
REPLACE INTO `game_event_gameobject` VALUES (20410,15);
REPLACE INTO `game_event_gameobject` VALUES (20411,15);
REPLACE INTO `game_event_gameobject` VALUES (20412,15);
REPLACE INTO `game_event_gameobject` VALUES (20413,15);
REPLACE INTO `game_event_gameobject` VALUES (20414,15);
REPLACE INTO `game_event_gameobject` VALUES (20415,15);
REPLACE INTO `game_event_gameobject` VALUES (20416,15);
REPLACE INTO `game_event_gameobject` VALUES (20417,15);
REPLACE INTO `game_event_gameobject` VALUES (20418,15);
REPLACE INTO `game_event_gameobject` VALUES (20419,15);
REPLACE INTO `game_event_gameobject` VALUES (20421,15);
REPLACE INTO `game_event_gameobject` VALUES (20422,15);
REPLACE INTO `game_event_gameobject` VALUES (20423,15);
REPLACE INTO `game_event_gameobject` VALUES (20424,15);
REPLACE INTO `game_event_gameobject` VALUES (20425,15);
REPLACE INTO `game_event_gameobject` VALUES (20438,15);
REPLACE INTO `game_event_gameobject` VALUES (20441,15);
REPLACE INTO `game_event_gameobject` VALUES (20447,15);
REPLACE INTO `game_event_gameobject` VALUES (20448,15);
REPLACE INTO `game_event_gameobject` VALUES (20449,15);
REPLACE INTO `game_event_gameobject` VALUES (20450,15);
REPLACE INTO `game_event_gameobject` VALUES (20451,15);
REPLACE INTO `game_event_gameobject` VALUES (20452,15);
REPLACE INTO `game_event_gameobject` VALUES (20456,15);
REPLACE INTO `game_event_gameobject` VALUES (20461,15);
REPLACE INTO `game_event_gameobject` VALUES (20462,15);
REPLACE INTO `game_event_gameobject` VALUES (18137,15);
REPLACE INTO `game_event_gameobject` VALUES (18129,15);
REPLACE INTO `game_event_gameobject` VALUES (18131,15);
REPLACE INTO `game_event_gameobject` VALUES (18132,15);
REPLACE INTO `game_event_gameobject` VALUES (18133,15);
REPLACE INTO `game_event_gameobject` VALUES (18134,15);
REPLACE INTO `game_event_gameobject` VALUES (18135,15);
REPLACE INTO `game_event_gameobject` VALUES (18136,15);
REPLACE INTO `game_event_gameobject` VALUES (18138,15);

-- SD2 start
-- 555
UPDATE `gameobject_template` SET `ScriptName`='go_manaforge_control_console' WHERE `entry` IN (183770,183956,184311,184312);
UPDATE `creature_template` SET `ScriptName`='npc_manaforge_control_console' WHERE `entry` IN (20209,20417,20418,20440);
-- 575
UPDATE `item_template` SET `ScriptName`='item_gor_dreks_ointment' WHERE `entry`=30175;
-- 576
UPDATE `item_template` SET `ScriptName`='item_muiseks_vessel' WHERE `entry` IN (9606,9618,9619,9620,9621);
-- 578
UPDATE `creature_template` SET `ScriptName`='npc_forest_frog' WHERE `entry`=24396;
-- 584
UPDATE `item_template` SET `ScriptName`='item_voodoo_charm' WHERE `entry`=8149;
-- 590
UPDATE `creature_template` SET `ScriptName`='npc_sergeant_bly' WHERE `entry`=7604;
UPDATE `creature_template` SET `ScriptName`='npc_weegli_blastfuse' WHERE `entry`=7607;
-- 591
UPDATE `creature_template` SET `ScriptName`='mobs_nether_drake' WHERE `entry` IN (20021,21817,21820,21821,21823);
-- 593
UPDATE `gameobject_template` SET `ScriptName`='go_tablet_of_the_seven' WHERE `entry`=169294;
-- 594
UPDATE `creature_template` SET `ScriptName`='mob_anubisath_sentinel' WHERE `entry`=15264;
-- 596
UPDATE `creature_template` SET `ScriptName`='boss_ambassador_hellmaw' WHERE `entry`=18731;
-- 610
UPDATE `creature_template` SET `ScriptName`='npc_lady_sylvanas_windrunner' WHERE `entry`=10181;
UPDATE `creature_template` SET `ScriptName`='npc_highborne_lamenter' WHERE `entry`=21628;
-- 617
UPDATE `item_template` SET `ScriptName`='item_razorthorn_flayer_gland' WHERE `entry`=34255;


-- ACID start
UPDATE creature_template SET ScriptName='' WHERE entry IN (441,547, 4463, 6557);


-- cleanup
UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
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
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `npc_gossip` WHERE `npc_guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_movement` WHERE `id` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_involvedrelation`);
DELETE FROM `db_version`;
INSERT INTO `db_version` VALUES ('UDB 0.10.3 (360) for MaNGOS rev. 6539 with SD2 SQL for rev. 617');
-- END
