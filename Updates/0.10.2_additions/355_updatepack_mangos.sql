-- 355 update pack start 2008-06-20
-- forum
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (43772, 24892, 580, 1, 0, 0, 1704.62, 927.78, -74, 2, 21600, 0, 0, 52000, 1693500, 0, 0);

-- Stonetalon Standstill
REPLACE INTO `areatrigger_involvedrelation` (`id`, `quest`) VALUES
('2926', '25');

-- Creature Mountaineer Bludd must have 1900 hp
Update `creature_template` set `minHealth`='1900', `maxHealth`='1900' where `entry`='2511';

-- Kirith the Damned immunities
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|'131086' WHERE `entry` = '7728';
-- Spirit of Kirith was hostile
UPDATE `creature_template` SET `faction_A` = '35', `faction_H` = '35' WHERE `entry` = '7729';

-- Restorative Potion is quest reward
DELETE FROM `npc_trainer` WHERE `spell` = '11522';

DELETE FROM `npc_trainer` WHERE `spell`='22814';
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
('11052','22813','12000','197','275', '0');

-- quest Call of Earth (Durotar step 2)
Update `quest_template` set `offerRewardText`='Ah... $N... pleased is the earth to have you here.$B$BBound together in body and spirit, you will go forward knowing that the mountains are your strength; the plains, your patience; and the world itself your essence.$B$BStanding before the earth humbly is all that is required of you for you to pass this rite. But the others are not as passive. They may be chaotic and often violent, but such is the nature of the elements. Dual natures opposing one another, you must come to learn these things intricately.' where `entry`='1517';

-- creature Snurk Bucksquick <Zeppelin Master>
Update `npc_gossip` set `textid`='4693' where `npc_guid`='52054';

-- quest Hypercapacitor Gizmo
Update `quest_template` set `RequestItemsText`='Do you have my hypercapacitor?', `offerRewardText`='My hypercapacitor! This will keep me busy for a while until I can figure out what it does...' where `entry`='5151';

-- Secret Note 1
UPDATE `page_text` SET `text` = 'Agasham,$B$BOur plans must be kept secret at all costs! It will be disasterous if the other tauren tribes discover our affiliation.$B$BSigned,$B$BHarbinger Elm' WHERE `entry` = '2232';

-- Old learning spell Summon Felsteed
DELETE from npc_trainer WHERE spell = 1710;

UPDATE npc_trainer SET spellcost = 900 WHERE spell = 6222;
UPDATE npc_trainer SET spellcost = 8100 WHERE spell = 11687;
UPDATE npc_trainer SET spellcost = 500 WHERE spell = 18879;
UPDATE npc_trainer SET spellcost = 11700 WHERE spell = 11688;
UPDATE npc_trainer SET spellcost = 700 WHERE spell = 18880;
UPDATE npc_trainer SET spellcost = 750 WHERE spell = 18937;
UPDATE npc_trainer SET spellcost = 18000 WHERE spell = 11675;
UPDATE npc_trainer SET spellcost = 19800 WHERE spell = 11689;
UPDATE npc_trainer SET spellcost = 1200 WHERE spell = 18881;
UPDATE npc_trainer SET spellcost = 1300 WHERE spell = 18938;
UPDATE npc_trainer SET spellcost = 2500 WHERE spell = 30404;
UPDATE npc_trainer SET spellcost = 2500 WHERE spell = 27264;
UPDATE npc_trainer SET spellcost = 56700 WHERE spell = 27222;
UPDATE npc_trainer SET spellcost = 1300 WHERE spell = 27265;
UPDATE npc_trainer SET spellcost = 2500 WHERE spell = 30911;
UPDATE npc_trainer SET spellcost = 2500 WHERE spell = 30405;
UPDATE npc_trainer SET spellcost = 9000 WHERE spell = 3700;
UPDATE npc_trainer SET spellcost = 18000 WHERE spell = 11694;
UPDATE npc_trainer SET spellcost = 18000 WHERE spell = 11740;
UPDATE npc_trainer SET spellcost = 150 WHERE spell = 18867;
UPDATE npc_trainer SET spellcost = 350 WHERE spell = 18868;
UPDATE npc_trainer SET spellcost = 900 WHERE spell = 7641;
UPDATE npc_trainer SET spellcost = 550 WHERE spell = 18869;
UPDATE npc_trainer SET spellcost = 700 WHERE spell = 18930;
UPDATE npc_trainer SET spellcost = 700 WHERE spell = 18870;
UPDATE npc_trainer SET spellcost = 18000 WHERE spell = 11660;
UPDATE npc_trainer SET spellcost = 1000 WHERE spell = 18931;
UPDATE npc_trainer SET spellcost = 1100 WHERE spell = 18871;
UPDATE npc_trainer SET spellcost = 1300 WHERE spell = 18932;
UPDATE npc_trainer SET spellcost = 2500 WHERE spell = 30413;
UPDATE npc_trainer SET spellcost = 1300 WHERE spell = 27263;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 27266;
UPDATE npc_trainer SET spellcost = 3900 WHERE spell = 30912;
UPDATE npc_trainer SET spellcost = 78000 WHERE spell = 30459;
UPDATE npc_trainer SET spellcost = 3900 WHERE spell = 30546;
UPDATE npc_trainer SET spellcost = 2500 WHERE spell = 30414;
UPDATE npc_trainer SET spellcost = 78000 WHERE spell = 30545;

-- Rampage rank 3
DELETE FROM `npc_trainer` WHERE `spell` = '30033';
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqlevel`) VALUES
('913', '30033', '3250', '70'),
('914', '30033', '3250', '70'),
('985', '30033', '3250', '70'),
('1229', '30033', '3250', '70'),
('1901', '30033', '3250', '70'),
('2131', '30033', '3250', '70'),
('3041', '30033', '3250', '70'),
('3042', '30033', '3250', '70'),
('3043', '30033', '3250', '70'),
('3063', '30033', '3250', '70'),
('3169', '30033', '3250', '70'),
('3353', '30033', '3250', '70'),
('3354', '30033', '3250', '70'),
('3408', '30033', '3250', '70'),
('3598', '30033', '3250', '70'),
('4087', '30033', '3250', '70'),
('4089', '30033', '3250', '70'),
('4593', '30033', '3250', '70'),
('4594', '30033', '3250', '70'),
('4595', '30033', '3250', '70'),
('5113', '30033', '3250', '70'),
('5114', '30033', '3250', '70'),
('5479', '30033', '3250', '70'),
('5480', '30033', '3250', '70'),
('7315', '30033', '3250', '70'),
('8141', '30033', '3250', '70'),
('16771', '30033', '3250', '70'),
('17120', '30033', '3250', '70'),
('17480', '30033', '3250', '70'),
('17504', '30033', '3250', '70'),
('26332', '30033', '3250', '70');


UPDATE npc_trainer SET spellcost = 2000 where spell = 23892;
UPDATE npc_trainer SET spellcost = 2800 where spell = 23893;
UPDATE npc_trainer SET spellcost = 3100 where spell = 23894;
UPDATE npc_trainer SET spellcost = 3100 where spell = 30030;
UPDATE npc_trainer SET spellcost = 3250 where spell = 25251;
UPDATE npc_trainer SET spellcost = 3250 where spell = 30335;
UPDATE npc_trainer SET spellcost = 3250 where spell = 30033;
UPDATE npc_trainer SET spellcost = 22000 where spell = 750;
UPDATE npc_trainer SET spellcost = 2000 where spell = 23923;
UPDATE npc_trainer SET spellcost = 2800 where spell = 23924;
UPDATE npc_trainer SET spellcost = 3100 where spell = 30016;
UPDATE npc_trainer SET spellcost = 3100 where spell = 23925;
UPDATE npc_trainer SET spellcost = 3200 where spell = 25258;
UPDATE npc_trainer SET spellcost = 3200 where spell = 30022;
UPDATE npc_trainer SET spellcost = 3200 where spell = 30356;

-- wrong reqlevel (Prayer of Shadow Protection r1, Fade r7)
UPDATE npc_trainer SET reqlevel = 56 where spell = 27683;
UPDATE npc_trainer SET reqlevel = 66 WHERE spell = 25429;

UPDATE npc_trainer SET spellcost = 800 WHERE spell = 6346;
UPDATE npc_trainer SET spellcost = 14000 WHERE spell = 988;
UPDATE npc_trainer SET spellcost = 900 WHERE spell = 14818;
UPDATE npc_trainer SET spellcost = 1500 WHERE spell = 14819;
UPDATE npc_trainer SET spellcost = 1500 WHERE spell = 19274;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 27841;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 27681;
UPDATE npc_trainer SET spellcost = 80000 WHERE spell = 25217;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 25312;
UPDATE npc_trainer SET spellcost = 140000 WHERE spell = 25218;
UPDATE npc_trainer SET spellcost = 3400 WHERE spell = 32999;
UPDATE npc_trainer SET spellcost = 90 WHERE spell = 13908;
UPDATE npc_trainer SET spellcost = 1200 WHERE spell = 528;
UPDATE npc_trainer SET spellcost = 300 WHERE spell = 19236;
UPDATE npc_trainer SET spellcost = 400 WHERE spell = 15430;
UPDATE npc_trainer SET spellcost = 600 WHERE spell = 19240;
UPDATE npc_trainer SET spellcost = 700 WHERE spell = 15431;
UPDATE npc_trainer SET spellcost = 1100 WHERE spell = 19241;
UPDATE npc_trainer SET spellcost = 1200 WHERE spell = 27799;
UPDATE npc_trainer SET spellcost = 1500 WHERE spell = 19242;
UPDATE npc_trainer SET spellcost = 1200 WHERE spell = 27870;
UPDATE npc_trainer SET spellcost = 1900 WHERE spell = 27800;
UPDATE npc_trainer SET spellcost = 2100 WHERE spell = 34863;
UPDATE npc_trainer SET spellcost = 2200 WHERE spell = 19243;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 34864;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 27801;
UPDATE npc_trainer SET spellcost = 1500 WHERE spell = 27871;
UPDATE npc_trainer SET spellcost = 6500 WHERE spell = 25316;
UPDATE npc_trainer SET spellcost = 6500 WHERE spell = 25315;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 34865;
UPDATE npc_trainer SET spellcost = 80000 WHERE spell = 25221;
UPDATE npc_trainer SET spellcost = 6500 WHERE spell = 25437;
UPDATE npc_trainer SET spellcost = 3250 WHERE spell = 25329;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 34866;
UPDATE npc_trainer SET spellcost = 1500 WHERE spell = 28275;
UPDATE npc_trainer SET spellcost = 140000 WHERE spell = 25222;
UPDATE npc_trainer SET spellcost = 400 WHERE spell = 17311;
UPDATE npc_trainer SET spellcost = 700 WHERE spell = 17312;
UPDATE npc_trainer SET spellcost = 1200 WHERE spell = 17313;
UPDATE npc_trainer SET spellcost = 1900 WHERE spell = 17314;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 18807;
UPDATE npc_trainer SET spellcost = 2300 WHERE spell = 34916;

-- Update gossip for wharfmaster Lozgil
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (184, 5753);
-- Remove banana and hippogryph hatchling and replace with new Rocket Chicken
DELETE FROM `creature` WHERE `id`=23234;
DELETE FROM `creature` WHERE `id`=17255;
-- Take the 2 hired bodyguards off there mounts
DELETE FROM `creature_addon` WHERE (`guid`=564);
DELETE FROM `creature_addon` WHERE (`guid`=563);
-- update 2 NPCs slightly move them to correct place as they are where guild banks should be
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(698, 4624, 0, 1, 7102, 0, -14426.8, 523.778, 4.99094, 5.21453, 300, 0, 0, 4200, 0, 0, 0),
(692, 4624, 0, 1, 7102, 0, -14415.7, 519.988, 5.02153, 2.6934, 300, 0, 0, 4200, 0, 0, 0);

-- 1 Forge removed in Dwarven District only 2 ment to be there
DELETE FROM `gameobject` WHERE (`guid`=6781);
-- rotate the other one as its half in the wall
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(13970, 24746, 0, 1, -8427.56, 631.026, 95.7472, 2.28742, 0, 0, 0.910176, 0.414221, 25, 0, 1);

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-50' WHERE `item` = '30425';

-- Quest 2041 ("Speak with Shoni the Shilent") is not required to start
-- deatmines quest 2040 ("Underground Assault")
-- Only requires the already existing min. level 15 to accept this quest
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 2040;

DELETE FROM `spell_teleport` WHERE `id` = '17607';
-- INSERT INTO `spell_teleport` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
-- ('17607', '0', '-4613.62', '-915.38', '501.062', '3.88');

UPDATE `gameobject` SET `spawntimesecs` = '0' WHERE `id` = '184715';

UPDATE `creature` SET `spawntimesecs` = '7200' WHERE `id` = '18155';

-- Ontuvo template wdb, wowhead
DELETE FROM `creature_template` WHERE (`entry`=27666);
INSERT INTO `creature_template` (`entry`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `baseattacktime`, `rangeattacktime`, `flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `class`, `race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `civilian`, `flag1`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `ScriptName`) VALUES (27666, 24731, 0, 24731, 0, 'Ontuvo', 'Jewelcrafting Supplies', '', 70, 70, 6600, 6600, 0, 0, 6500, 1956, 1956, 128, 1, 1, 0, 141, 182, 0, 565, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 1, 0, 0, '');

-- Ontuvo should sell Crimson Spinel too
DELETE FROM `npc_vendor` WHERE (`item` = '32227');
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
('25950', '32227', '0', '0', '1909'),
('27666', '32227', '0', '0', '1909');

-- Minipets speed
UPDATE `creature_template` SET `speed` = '1' WHERE `type` = '12';

update `creature_template` set `npcflag`=`npcflag`|1048576 where `entry`=20374;

-- quest 742 should be started by Bluff Runner Windstrider not Warcaller Gorlash because is the Thunderbluff cathegory one
-- Warcaller Gorlash has 235 which has Orgrimmar
DELETE FROM `creature_questrelation` WHERE `quest` = '742';
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('10881', '742');

-- Winna's Kitten was too slow
UPDATE `creature_template` SET `speed` = '1.50' WHERE `entry` = '10658';

-- Embers of Azzinoth stats
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '6900', `maxhealth` = '6900', `armor` = '5600', `faction_A` = '7', `faction_H` = '7', `mindmg` = '85', `maxdmg` = '100', `baseattacktime` = '1500', `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), `mindmg` = ROUND(`mindmg` - `attackpower` / 7), `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) WHERE `entry` = '23192';

UPDATE creature SET position_z = '501.628723' WHERE guid = '109';

-- Thief Catcher Shadowdelve waypoint by jamiepollard
DELETE FROM `creature_movement` WHERE `id` = '109';
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(109, 1, -4930.31, -943.155, 501.616, 0, '', '', '', '', '', 0, 0, 0, 2.23043, 0, 0),
(109, 2, -4942.81, -928.704, 501.66, 0, '', '', '', '', '', 0, 0, 0, 2.28384, 0, 0),
(109, 3, -4983.08, -963.216, 501.66, 0, '', '', '', '', '', 0, 0, 0, 3.90962, 0, 0),
(109, 4, -5018.35, -927.834, 501.66, 0, '', '', '', '', '', 0, 0, 0, 2.27677, 0, 0),
(109, 5, -4990.75, -904.305, 501.66, 0, '', '', '', '', '', 0, 0, 0, 0.705975, 0, 0),
(109, 6, -4983.06, -885.777, 501.652, 0, '', '', '', '', '', 0, 0, 0, 1.17721, 0, 0),
(109, 7, -4959.43, -877.376, 501.66, 0, '', '', '', '', '', 0, 0, 0, 0.34155, 0, 0),
(109, 8, -4935.32, -858.467, 501.66, 0, '', '', '', '', '', 0, 0, 0, 0.599946, 0, 0),
(109, 9, -4895.61, -892.605, 501.66, 0, '', '', '', '', '', 0, 0, 0, 0.182115, 0, 0),
(109, 10, -4826.89, -881.756, 501.66, 0, '', '', '', '', '', 0, 0, 0, 0.109073, 0, 0),
(109, 11, -4758.61, -888.412, 501.66, 0, '', '', '', '', '', 0, 0, 0, 6.15664, 0, 0),
(109, 12, -4713.89, -922.274, 501.66, 0, '', '', '', '', '', 0, 0, 0, 5.63514, 0, 0),
(109, 13, -4692.58, -936.78, 501.665, 0, '', '', '', '', '', 0, 0, 0, 5.6854, 0, 0),
(109, 14, -4655.52, -933.662, 501.66, 0, '', '', '', '', '', 0, 0, 0, 0.083941, 0, 0),
(109, 15, -4647.18, -942.29, 501.66, 0, '', '', '', '', '', 0, 0, 0, 5.4812, 0, 0),
(109, 16, -4638.83, -935.741, 502.767, 0, '', '', '', '', '', 0, 0, 0, 0.665135, 0, 0),
(109, 17, -4634.86, -929.832, 502.767, 0, '', '', '', '', '', 0, 0, 0, 0.979295, 0, 0),
(109, 18, -4629.24, -924.915, 502.767, 0, '', '', '', '', '', 0, 0, 0, 0.718542, 0, 0),
(109, 19, -4625.79, -928.862, 502.767, 0, '', '', '', '', '', 0, 0, 0, 5.43093, 0, 0),
(109, 20, -4644.32, -944.492, 501.659, 0, '', '', '', '', '', 0, 0, 0, 3.82479, 0, 0),
(109, 21, -4634.71, -959.181, 501.659, 0, '', '', '', '', '', 0, 0, 0, 5.25657, 0, 0),
(109, 22, -4642.83, -972.873, 501.661, 0, '', '', '', '', '', 0, 0, 0, 4.09732, 0, 0),
(109, 23, -4660.84, -983.109, 501.661, 0, '', '', '', '', '', 0, 0, 0, 3.00169, 0, 0),
(109, 24, -4674.56, -977.217, 501.656, 0, '', '', '', '', '', 0, 0, 0, 2.78414, 0, 0),
(109, 25, -4686.24, -965.859, 501.658, 0, '', '', '', '', '', 0, 0, 0, 2.29955, 0, 0),
(109, 26, -4693.99, -936.426, 501.666, 0, '', '', '', '', '', 0, 0, 0, 1.82831, 0, 0),
(109, 27, -4751.51, -912.307, 501.66, 0, '', '', '', '', '', 0, 0, 0, 2.69068, 0, 0),
(109, 28, -4760.86, -907.784, 501.628, 0, '', '', '', '', '', 0, 0, 0, 2.90116, 0, 0),
(109, 29, -4774.5, -905.869, 501.669, 0, '', '', '', '', '', 0, 0, 0, 3.13678, 0, 0),
(109, 30, -4785.07, -906.57, 497.951, 0, '', '', '', '', '', 0, 0, 0, 3.0983, 0, 0),
(109, 31, -4813.64, -904.318, 497.967, 0, '', '', '', '', '', 0, 0, 0, 3.02761, 0, 0),
(109, 32, -4823.26, -904.253, 501.66, 0, '', '', '', '', '', 0, 0, 0, 3.22318, 0, 0),
(109, 33, -4882.53, -920.112, 501.649, 0, '', '', '', '', '', 0, 0, 0, 3.53655, 0, 0),
(109, 34, -4925.69, -949.866, 501.56, 0, '', '', '', '', '', 0, 0, 0, 5.33747, 0, 0),
(109, 35, -4903.83, -976.791, 501.442, 0, '', '', '', '', '', 0, 0, 0, 5.41758, 0, 0),
(109, 36, -4894.16, -988.155, 503.941, 0, '', '', '', '', '', 0, 0, 0, 5.41758, 0, 0);
-- Thief Catcher Thunderbrew waypoint by jamiepollard
DELETE FROM `creature_movement` WHERE `id` = '1814';
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `text1`, `text2`, `text3`, `text4`, `text5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(1814, 1, -4647.68, -1213.78, 501.659, 0, '', '', '', '', '', 0, 0, 0, 3.80492, 0, 0),
(1814, 2, -4654.67, -1224.55, 501.659, 0, '', '', '', '', '', 0, 0, 0, 4.22275, 0, 0),
(1814, 3, -4664.47, -1243.47, 501.993, 0, '', '', '', '', '', 0, 0, 0, 4.1827, 0, 0),
(1814, 4, -4674.44, -1252.34, 501.993, 0, '', '', '', '', '', 0, 0, 0, 3.86854, 0, 0),
(1814, 5, -4659.4, -1273, 503.382, 0, '', '', '', '', '', 0, 0, 0, 5.39614, 0, 0),
(1814, 6, -4674.6, -1252.57, 501.993, 0, '', '', '', '', '', 0, 0, 0, 3.77508, 0, 0),
(1814, 7, -4683.91, -1259.91, 501.993, 0, '', '', '', '', '', 0, 0, 0, 3.85675, 0, 0),
(1814, 8, -4722.07, -1276.85, 501.66, 0, '', '', '', '', '', 0, 0, 0, 3.49705, 0, 0),
(1814, 9, -4747.11, -1245.22, 501.66, 0, '', '', '', '', '', 0, 0, 0, 2.24041, 0, 0),
(1814, 10, -4719.27, -1214.84, 501.659, 0, '', '', '', '', '', 0, 0, 0, 0.915442, 0, 0),
(1814, 11, -4723.48, -1196.91, 501.697, 0, '', '', '', '', '', 0, 0, 0, 1.97494, 0, 0),
(1814, 12, -4753.5, -1156.61, 502.213, 0, '', '', '', '', '', 0, 0, 0, 2.27575, 0, 0),
(1814, 13, -4793.66, -1167.66, 502.21, 0, '', '', '', '', '', 0, 0, 0, 3.40987, 0, 0),
(1814, 14, -4825.54, -1165.91, 502.204, 0, '', '', '', '', '', 0, 0, 0, 3.06586, 0, 0),
(1814, 15, -4854.73, -1143.69, 502.196, 0, '', '', '', '', '', 0, 0, 0, 2.49095, 0, 0),
(1814, 16, -4870.69, -1124.28, 502.212, 0, '', '', '', '', '', 0, 0, 0, 2.33073, 0, 0),
(1814, 17, -4895.53, -1115.58, 501.739, 0, '', '', '', '', '', 0, 0, 0, 3.07529, 0, 0),
(1814, 18, -4918.55, -1125.67, 501.698, 0, '', '', '', '', '', 0, 0, 0, 3.76408, 0, 0),
(1814, 19, -4934.13, -1170.83, 501.664, 0, '', '', '', '', '', 0, 0, 0, 4.46859, 0, 0),
(1814, 20, -4951.31, -1190.28, 501.66, 0, '', '', '', '', '', 0, 0, 0, 3.83948, 0, 0),
(1814, 21, -4951.99, -1208.46, 501.66, 0, '', '', '', '', '', 0, 0, 0, 4.67515, 0, 0),
(1814, 22, -4960.04, -1231.82, 501.668, 0, '', '', '', '', '', 0, 0, 0, 4.16385, 0, 0),
(1814, 23, -4978.76, -1233.74, 501.678, 0, '', '', '', '', '', 0, 0, 0, 2.31895, 0, 0),
(1814, 24, -5000.86, -1203.88, 501.676, 0, '', '', '', '', '', 0, 0, 0, 2.12103, 0, 0),
(1814, 25, -5002.4, -1188.76, 501.663, 0, '', '', '', '', '', 0, 0, 0, 1.33406, 0, 0),
(1814, 26, -4995.24, -1166.83, 501.661, 0, '', '', '', '', '', 0, 0, 0, 1.49428, 0, 0),
(1814, 27, -5001.87, -1117.77, 501.656, 0, '', '', '', '', '', 0, 0, 0, 1.73226, 0, 0),
(1814, 28, -5013.97, -1111.14, 501.671, 0, '', '', '', '', '', 0, 0, 0, 2.64018, 0, 0),
(1814, 29, -5015.52, -1061.2, 501.736, 0, '', '', '', '', '', 0, 0, 0, 1.55711, 0, 0),
(1814, 30, -5001.66, -1008.82, 501.658, 0, '', '', '', '', '', 0, 0, 0, 1.24374, 0, 0),
(1814, 31, -4988.94, -979.934, 501.66, 0, '', '', '', '', '', 0, 0, 0, 1.17541, 0, 0),
(1814, 32, -4985.74, -962.795, 501.66, 0, '', '', '', '', '', 0, 0, 0, 1.3859, 0, 0),
(1814, 33, -4975.75, -968.91, 502.793, 0, '', '', '', '', '', 0, 0, 0, 5.63883, 0, 0),
(1814, 34, -4967.27, -975.283, 502.803, 0, '', '', '', '', '', 0, 0, 0, 5.63883, 0, 0),
(1814, 35, -4953.22, -985.839, 501.604, 0, '', '', '', '', '', 0, 0, 0, 5.63883, 0, 0),
(1814, 36, -4921.04, -957.672, 501.507, 0, '', '', '', '', '', 0, 0, 0, 0.719092, 0, 0),
(1814, 37, -4934.31, -939.569, 502.813, 0, '', '', '', '', '', 0, 0, 0, 2.30167, 0, 0),
(1814, 38, -4956.19, -913.479, 503.837, 0, '', '', '', '', '', 0, 0, 0, 2.30167, 0, 0),
(1814, 39, -4940.66, -931.664, 502.814, 0, '', '', '', '', '', 0, 0, 0, 5.40714, 0, 0),
(1814, 40, -4903.92, -976.778, 501.441, 0, '', '', '', '', '', 0, 0, 0, 5.42363, 0, 0),
(1814, 41, -4893.16, -989.257, 503.941, 0, '', '', '', '', '', 0, 0, 0, 5.42363, 0, 0),
(1814, 42, -4912.44, -966.065, 501.476, 0, '', '', '', '', '', 0, 0, 0, 1.00969, 0, 0),
(1814, 43, -4882.11, -941.43, 501.459, 0, '', '', '', '', '', 0, 0, 0, 0.693959, 0, 0),
(1814, 44, -4860.64, -943.99, 501.441, 0, '', '', '', '', '', 0, 0, 0, 6.03467, 0, 0),
(1814, 45, -4851.59, -941.572, 501.494, 0, '', '', '', '', '', 0, 0, 0, 0.327178, 0, 0),
(1814, 46, -4823.23, -1024.62, 502.189, 0, '', '', '', '', '', 0, 0, 0, 5.06941, 0, 0),
(1814, 47, -4781.02, -1027.19, 502.211, 0, '', '', '', '', '', 0, 0, 0, 6.22238, 0, 0),
(1814, 48, -4760.85, -1045.58, 502.211, 0, '', '', '', '', '', 0, 0, 0, 5.54379, 0, 0),
(1814, 49, -4739.03, -1074.86, 502.196, 0, '', '', '', '', '', 0, 0, 0, 5.22806, 0, 0),
(1814, 50, -4735.92, -1122.13, 502.218, 0, '', '', '', '', '', 0, 0, 0, 4.70263, 0, 0),
(1814, 51, -4745.06, -1154.66, 502.213, 0, '', '', '', '', '', 0, 0, 0, 4.59189, 0, 0),
(1814, 52, -4734.34, -1178.21, 501.698, 0, '', '', '', '', '', 0, 0, 0, 5.2634, 0, 0),
(1814, 53, -4714.79, -1202.73, 501.661, 0, '', '', '', '', '', 0, 0, 0, 5.38122, 0, 0),
(1814, 54, -4687.41, -1196.13, 501.659, 0, '', '', '', '', '', 0, 0, 0, 0.315397, 0, 0),
(1814, 55, -4652.86, -1200.35, 501.659, 0, '', '', '', '', '', 0, 0, 0, 5.53123, 0, 0);
UPDATE `creature` SET `spawndist` = '0', `MovementType` = '2', `spawntimesecs` = '300' WHERE `id` IN ('14363', '14367');
UPDATE `creature_template` SET `lootid` = '0', `MovementType` = '2', `armor` = '4200', `rangeattacktime` = '2500' WHERE `entry` IN ('14363', '14367');
DELETE FROM `creature_loot_template` WHERE `entry` = '14367';

UPDATE `creature_template` SET `minlevel` = 71, `maxlevel` = 71, `minhealth` = 13000, `maxhealth` = 13000, `faction_A` = 1796, `faction_H` = 1796, `mindmg` = 171, `maxdmg` = 229, `attackpower` = 700, `baseattacktime` = 2000, `pickpocketloot` = 20474, `mingold` = 1262, `maxgold` = 1384, `armor` = 6800, `spell1` = 36513 WHERE `entry` = 23008;

update creature set spawntimesecs = '300' where id = 21710;

-- some npc that should have Thrallmar faction instead horde generic
UPDATE `creature_template` SET `faction_A` = '1729', `faction_H` = '1729' WHERE `entry` IN ('16582', '16580', '17390');

-- Bipp Glizzitor should be arena battlemaster
DELETE FROM `battlemaster_entry` WHERE `entry` = '19923';
INSERT INTO `battlemaster_entry` (`entry`, `bg_template`) VALUES
('19923', '6');

UPDATE `quest_template` SET `ReqSourceId2` = '0', `ReqSourceCount2` = '0', `ReqSourceRef2` = '0' WHERE `entry` = '5056';
UPDATE `creature_loot_template` SET `lootcondition` = '9', `condition_value1` = '5056' WHERE `item` = 12733;

UPDATE `item_loot_template` SET `item` = '13852', `ChanceOrQuestChance` = '100' WHERE `entry` = '15876' AND `item` = '15868';

-- cast spell 40214 (Dragonmaw Illusion with dummy aura) on player when the quest is accepted
UPDATE `quest_template` SET `SrcSpell`='40214' WHERE `entry`='11013';

-- Update CompleteScript, Quest 4401

UPDATE `quest_template` SET `CompleteScript`=4401 WHERE `entry`=4401;

UPDATE `quest_template` SET `RewRepValue1` = 500 WHERE `entry` = 5724;

UPDATE `quest_template` SET `RewRepValue1` = 500 WHERE `entry` = 5723;

-- Gnome Pit Boss
DELETE FROM `creature` WHERE (`guid`=31934);
-- Warcaller Gorlach
DELETE FROM `creature` WHERE (`guid`=48198);
-- Adyen the Lightwarden
DELETE FROM `creature` WHERE (`guid`=66695);
-- Ishanah
DELETE FROM `creature` WHERE (`guid`=66697);
-- Anchorite Karja
DELETE FROM `creature` WHERE (`guid`=69728);
-- Exarch Orelis
DELETE FROM `creature` WHERE (`guid`=69726);
-- Ezekiel
DELETE FROM `creature` WHERE (`guid`=70352);

-- Remove junk from blue (10980)/green (10981)/red (10982) power crystals and update maxcount

DELETE FROM `gameobject_loot_template` WHERE (`entry`=10980 AND `item`!=11184) OR (`entry`=10981 AND `item`!=11185) OR (`entry`=10982 AND `item`!=11186);

UPDATE `gameobject_loot_template` SET `maxcount`=3 WHERE (`entry`=10980 AND `item`=11184) OR (`entry`=10981 AND `item`=11185) OR (`entry`=10982 AND `item`=11186);

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '100' WHERE `item` = '20515';

-- Twilight Keepers do not drop Twilight Trappings
DELETE FROM `creature_loot_template` WHERE `entry` IN (11803, 11804,15200) AND `item` IN (20406, 20407, 20408);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '8' WHERE `item` IN (20406, 20407, 20408);

REPLACE INTO `npc_trainer` (entry, spell, spellcost, reqlevel) VALUES
(4568, 23028, 38000, 56),
(3047, 23028, 38000, 56),
(17514, 23028, 38000, 56),
(5144, 23028, 38000, 56),
(2128, 23028, 38000, 56),
(5885, 23028, 38000, 56),
(7312, 23028, 38000, 56),
(16749, 23028, 38000, 56),
(5498, 23028, 38000, 56),
(5883, 23028, 38000, 56),
(16269, 23028, 38000, 56),
(17513, 23028, 38000, 56),
(16653, 23028, 38000, 56),
(5497, 23028, 38000, 56),
(5145, 23028, 38000, 56),
(4566, 23028, 38000, 56),
(331, 23028, 38000, 56),
(1228, 23028, 38000, 56),
(5882, 23028, 38000, 56),
(4567, 23028, 38000, 56),
(16652, 23028, 38000, 56),
(3049, 23028, 38000, 56),
(5880, 23028, 38000, 56),
(3048, 23028, 38000, 56),
(7311, 23028, 38000, 56),
(16651, 23028, 38000, 56),
(328, 23028, 38000, 56);

-- Remove junk from Yellow Power Crystal
DELETE FROM `gameobject_loot_template` WHERE `item` !='11188' AND `entry` = '10983';
UPDATE `gameobject_loot_template` SET `maxcount` = '3' WHERE `item` = '11188';

-- change gnomish/goblin engineer items to 2.4 trainer system
UPDATE `npc_trainer` SET `spell`= 23489 WHERE `spell` = 23491; -- Ultrasafe Transporter - Gadgetzan
UPDATE `npc_trainer` SET `spell`= 36955 WHERE `spell` = 36957; -- Ultrasafe Transporter - Toshley's Station
UPDATE `npc_trainer` SET `spell`= 23486 WHERE `spell` = 23490; -- Dimensional Ripper - Everlook
UPDATE `npc_trainer` SET `spell`= 36954 WHERE `spell` = 36956; -- Dimensional Ripper - Area 52


UPDATE `npc_trainer` SET `spell`= 12716 WHERE `spell` = 12768; -- Goblin Mortarl

DELETE FROM `creature` WHERE `id` = '2801';


REPLACE INTO `spell_teleport` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(23442, 1, 6755.331, -4658.089, 724.799561, 3.4049),
(36941, 530, 2054.035, 5568.987, 263.571564, 0.9953),
(36890, 530, 3092.565, 3644.504, 143.144058, 1.5796),
(23441, 1, -7109.102, -3825.2104, 10.150995, 2.8331),
(23446, 1, -7109.102, -3825.2104, 10.150995, 2.8331),
(36902, 1, -7324.3, -3830.7, 160, 0);

DELETE FROM `npc_vendor` WHERE (`entry`=26123);
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES
(26123, 34684, 0, 0, 2348),
(26123, 34599, 0, 0, 2349),
(26123, 23324, 0, 0, 2351),
(26123, 34685, 0, 0, 2351),
(26123, 34683, 0, 0, 2352),
(26123, 34686, 0, 0, 2353),
(26123, 23083, 0, 0, 2353),
(26123, 23435, 5, 7200, 2349),
(26123, 23327, 5, 7200, 2348),
(26123, 23326, 0, 0, 2349),
(26123, 23211, 5, 7200, 2349),
(26123, 23215, 0, 0, 2349),
(26123, 23246, 5, 7200, 2349);

UPDATE `creature_template` SET `modelid_A` = 18139, `modelid_H` = 18139 WHERE `entry` = 25001;

-- This adds the "Repair Teleport Pad" spell to the item and sets the charges to 1 use but the item doesn't get destroyed on use since you have to turn it in for the quest
UPDATE `item_template` SET `spellid_1`=34900, `spellcharges_1`=1 WHERE `entry`=28969;

-- This adds an event script to temp summon Image of Wind Trader Marid so that you can turn the quest in
REPLACE INTO `event_scripts` (id, command, datalong, datalong2, x, y, z, o) VALUES (12930, 10, 20518, 300000, 4006.81, 1517.19, -115.9, -1.6057);

UPDATE `gameobject` SET `id` = '181988', `position_z` = '94.418076' WHERE `guid` = '42119';

REPLACE INTO `creature_onkill_reputation`
(`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(22878, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22883, 1012, 0, 7, 0, 3, 0, 0, 0, 0),
(22881, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22844, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23216, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22849, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22845, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22847, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23524, 1012, 0, 7, 0, 250, 0, 0, 0, 0),
(23374, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22846, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23196, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23235, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23237, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23222, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23239, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23236, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23223, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23028, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22963, 1012, 0, 7, 0, 3, 0, 0, 0, 0),
(22955, 1012, 0, 7, 0, 3, 0, 0, 0, 0),
(22873, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22874, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22875, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22876, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22877, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23030, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23330, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22960, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22965, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23420, 1012, 0, 7, 0, 250, 0, 0, 0, 0),
(22997, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22948, 1012, 0, 7, 0, 250, 0, 0, 0, 0),
(23172, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22887, 1012, 0, 7, 0, 250, 0, 0, 0, 0),
(23400, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23403, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23402, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23397, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22869, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23337, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22853, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22954, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23339, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22855, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23436, 1012, 0, 7, 0, 3, 0, 0, 0, 0),
(22884, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22947, 1012, 0, 7, 0, 250, 0, 0, 0, 0),
(23232, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22962, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22957, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23394, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22841, 1012, 0, 7, 0, 250, 0, 0, 0, 0),
(22945, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22880, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22882, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23147, 1012, 0, 7, 0, 3, 0, 0, 0, 0),
(23018, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22879, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(23047, 1012, 0, 7, 0, 3, 0, 0, 0, 0),
(22946, 1012, 0, 7, 0, 3, 0, 0, 0, 0),
(23049, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22956, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22964, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22959, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(14881, 1012, 0, 7, 0, 15, 0, 0, 0, 0),
(22848, 1012, 0, 7, 0, 3, 0, 0, 0, 0),
(22898, 1012, 0, 7, 0, 250, 0, 0, 0, 0),
(22939, 1012, 0, 7, 0, 3, 0, 0, 0, 0),
(22871, 1012, 0, 7, 0, 250, 0, 0, 0, 0),
(22953, 1012, 0, 7, 0, 15, 0, 0, 0, 0);

DELETE FROM `creature` WHERE `guid` = 684;

update creature_template set
minhealth=950000,
maxhealth=950000,
`mindmg` = 4000,
`maxdmg` = 5000,
`attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
`mindmg` = ROUND(`mindmg` - `attackpower` / 7),
`maxdmg` = ROUND(`maxdmg` - `attackpower` / 7)
where entry=14720;

-- Hunters Parry - wrong reqlevel & spellcost
UPDATE npc_trainer SET spellcost = 200, reqlevel = 8 WHERE spell = 3127 AND entry IN (895, 987, 1231, 1404, 3038, 3039, 3040, 3061, 3065, 3154, 3171, 3352, 3406, 3407, 3596, 3601, 3963, 4138, 4146, 4205, 5115, 5116, 5117, 5515, 5516, 5117, 8308, 10930, 15513, 16270, 16499, 16672, 16673, 16674, 16738, 17110, 17122, 17505, 26325, 26752);

-- Other hunters spells - Wrong spellcost
UPDATE npc_trainer SET spellcost = 400 WHERE spell = 20900;
UPDATE npc_trainer SET spellcost = 700 WHERE spell = 20901;
UPDATE npc_trainer SET spellcost = 1300 WHERE spell = 20902;
UPDATE npc_trainer SET spellcost = 1800 WHERE spell = 20905;
UPDATE npc_trainer SET spellcost = 2000 WHERE spell = 20903;
UPDATE npc_trainer SET spellcost = 2500 WHERE spell = 20904;
UPDATE npc_trainer SET spellcost = 2500 WHERE spell = 20906;
UPDATE npc_trainer SET spellcost = 2700 WHERE spell = 27065;
UPDATE npc_trainer SET spellcost = 2700 WHERE spell = 27362;
UPDATE npc_trainer SET spellcost = 1200 WHERE spell = 20909;
UPDATE npc_trainer SET spellcost = 1800 WHERE spell = 24132;
UPDATE npc_trainer SET spellcost = 2100 WHERE spell = 20910;
UPDATE npc_trainer SET spellcost = 2500 WHERE spell = 24133;
UPDATE npc_trainer SET spellcost = 2500 WHERE spell = 27067;
UPDATE npc_trainer SET spellcost = 2700 WHERE spell = 27068;

UPDATE `gameobject_template` SET `data1` = 8305 WHERE `entry` = 180633;

-- Shadoweave Mask is not taught by a trainer but by a recipe (Item 10463)
DELETE FROM `npc_trainer` WHERE spell = '12128';
-- Simple Linen Pants: Old learn spell in npc_trainer (should these even be taught by a trainer?)
UPDATE `npc_trainer` SET `spell` = '12044' WHERE `spell` = '12118';

UPDATE npc_trainer SET spellcost = 800 WHERE spell = 370;
UPDATE npc_trainer SET spellcost = 900 WHERE spell = 548;
UPDATE npc_trainer SET spellcost = 2200 WHERE spell = 8056;
UPDATE npc_trainer SET spellcost = 2200 WHERE spell = 915;
UPDATE npc_trainer SET spellcost = 2200 WHERE spell = 6363;
UPDATE npc_trainer SET spellcost = 12000 WHERE spell = 6365;
UPDATE npc_trainer SET spellcost = 18000 WHERE spell = 10392;
UPDATE npc_trainer SET spellcost = 20000 WHERE spell = 10472;
UPDATE npc_trainer SET spellcost = 20000 WHERE spell = 10586;
UPDATE npc_trainer SET spellcost = 24000 WHERE spell = 15207;
UPDATE npc_trainer SET spellcost = 24000 WHERE spell = 10437;
UPDATE npc_trainer SET spellcost = 27000 WHERE spell = 11315;
UPDATE npc_trainer SET spellcost = 30000 WHERE spell = 15208;
UPDATE npc_trainer SET spellcost = 30000 WHERE spell = 10587;
UPDATE npc_trainer SET spellcost = 32000 WHERE spell = 10473;
UPDATE npc_trainer SET spellcost = 32000 WHERE spell = 10428;
UPDATE npc_trainer SET spellcost = 34000 WHERE spell = 10438;
UPDATE npc_trainer SET spellcost = 38000 WHERE spell = 25448;
UPDATE npc_trainer SET spellcost = 52000 WHERE spell = 25552;
UPDATE npc_trainer SET spellcost = 64000 WHERE spell = 25449;
UPDATE npc_trainer SET spellcost = 64000 WHERE spell = 25525;
UPDATE npc_trainer SET spellcost = 71000 WHERE spell = 2894;
UPDATE npc_trainer SET spellcost = 71000 WHERE spell = 25464;
UPDATE npc_trainer SET spellcost = 400 WHERE spell = 8024;
UPDATE npc_trainer SET spellcost = 400 WHERE spell = 8075;
UPDATE npc_trainer SET spellcost = 900 WHERE spell = 8154;
UPDATE npc_trainer SET spellcost = 1800 WHERE spell = 325;
UPDATE npc_trainer SET spellcost = 1800 WHERE spell = 8019;
UPDATE npc_trainer SET spellcost = 2200 WHERE spell = 8033;
UPDATE npc_trainer SET spellcost = 2200 WHERE spell = 2645;
UPDATE npc_trainer SET spellcost = 3500 WHERE spell = 8181;
UPDATE npc_trainer SET spellcost = 3500 WHERE spell = 905;
UPDATE npc_trainer SET spellcost = 3500 WHERE spell = 8155;
UPDATE npc_trainer SET spellcost = 3500 WHERE spell = 8160;
UPDATE npc_trainer SET spellcost = 10000 WHERE spell = 15107;
UPDATE npc_trainer SET spellcost = 12000 WHERE spell = 8134;
UPDATE npc_trainer SET spellcost = 12000 WHERE spell = 8235;
UPDATE npc_trainer SET spellcost = 16000 WHERE spell = 8835;
UPDATE npc_trainer SET spellcost = 16000 WHERE spell = 10613;
UPDATE npc_trainer SET spellcost = 18000 WHERE spell = 10600;
UPDATE npc_trainer SET spellcost = 18000 WHERE spell = 16315;
UPDATE npc_trainer SET spellcost = 18000 WHERE spell = 10407;
UPDATE npc_trainer SET spellcost = 20000 WHERE spell = 16341;
UPDATE npc_trainer SET spellcost = 20000 WHERE spell = 15111;
UPDATE npc_trainer SET spellcost = 22000 WHERE spell = 10526;
UPDATE npc_trainer SET spellcost = 22000 WHERE spell = 16355;
UPDATE npc_trainer SET spellcost = 22000 WHERE spell = 10431;
UPDATE npc_trainer SET spellcost = 24000 WHERE spell = 10486;
UPDATE npc_trainer SET spellcost = 27000 WHERE spell = 10442;
UPDATE npc_trainer SET spellcost = 27000 WHERE spell = 10614;
UPDATE npc_trainer SET spellcost = 29000 WHERE spell = 10538;
UPDATE npc_trainer SET spellcost = 29000 WHERE spell = 16316;
UPDATE npc_trainer SET spellcost = 29000 WHERE spell = 10408;
UPDATE npc_trainer SET spellcost = 30000 WHERE spell = 16342;
UPDATE npc_trainer SET spellcost = 30000 WHERE spell = 10627;
UPDATE npc_trainer SET spellcost = 30000 WHERE spell = 10432;
UPDATE npc_trainer SET spellcost = 30000 WHERE spell = 15112;
UPDATE npc_trainer SET spellcost = 32000 WHERE spell = 16387;
UPDATE npc_trainer SET spellcost = 32000 WHERE spell = 16356;
UPDATE npc_trainer SET spellcost = 65000 WHERE spell = 25359;
UPDATE npc_trainer SET spellcost = 34000 WHERE spell = 10601;
UPDATE npc_trainer SET spellcost = 34000 WHERE spell = 25361;
UPDATE npc_trainer SET spellcost = 34000 WHERE spell = 16362;
UPDATE npc_trainer SET spellcost = 34000 WHERE spell = 25585;
UPDATE npc_trainer SET spellcost = 38000 WHERE spell = 25479;
UPDATE npc_trainer SET spellcost = 42000 WHERE spell = 25469;
UPDATE npc_trainer SET spellcost = 42000 WHERE spell = 25508;
UPDATE npc_trainer SET spellcost = 47000 WHERE spell = 25489;
UPDATE npc_trainer SET spellcost = 47000 WHERE spell = 3738;
UPDATE npc_trainer SET spellcost = 52000 WHERE spell = 25528;
UPDATE npc_trainer SET spellcost = 52000 WHERE spell = 25577;
UPDATE npc_trainer SET spellcost = 58000 WHERE spell = 25500;
UPDATE npc_trainer SET spellcost = 64000 WHERE spell = 25557;
UPDATE npc_trainer SET spellcost = 64000 WHERE spell = 25560;
UPDATE npc_trainer SET spellcost = 71000 WHERE spell = 25505;
UPDATE npc_trainer SET spellcost = 79000 WHERE spell = 25574;
UPDATE npc_trainer SET spellcost = 88000 WHERE spell = 25472;
UPDATE npc_trainer SET spellcost = 88000 WHERE spell = 25485;
UPDATE npc_trainer SET spellcost = 88000 WHERE spell = 25509;
UPDATE npc_trainer SET spellcost = 88000 WHERE spell = 25587;
UPDATE npc_trainer SET spellcost = 800 WHERE spell = 547;
UPDATE npc_trainer SET spellcost = 2200 WHERE spell = 8004;
UPDATE npc_trainer SET spellcost = 3500 WHERE spell = 939;
UPDATE npc_trainer SET spellcost = 10000 WHERE spell = 20610;
UPDATE npc_trainer SET spellcost = 12000 WHERE spell = 6377;
UPDATE npc_trainer SET spellcost = 12000 WHERE spell = 8005;
UPDATE npc_trainer SET spellcost = 18000 WHERE spell = 10466;
UPDATE npc_trainer SET spellcost = 20000 WHERE spell = 10496;
UPDATE npc_trainer SET spellcost = 22000 WHERE spell = 20776;
UPDATE npc_trainer SET spellcost = 22000 WHERE spell = 10395;
UPDATE npc_trainer SET spellcost = 24000 WHERE spell = 10462;
UPDATE npc_trainer SET spellcost = 24000 WHERE spell = 25908;
UPDATE npc_trainer SET spellcost = 27000 WHERE spell = 10467;
UPDATE npc_trainer SET spellcost = 30000 WHERE spell = 10396;
UPDATE npc_trainer SET spellcost = 30000 WHERE spell = 10497;
UPDATE npc_trainer SET spellcost = 34000 WHERE spell = 20777;
UPDATE npc_trainer SET spellcost = 1700 WHERE spell = 32593;
UPDATE npc_trainer SET spellcost = 34000 WHERE spell = 10463;
UPDATE npc_trainer SET spellcost = 6500 WHERE spell = 25357;
UPDATE npc_trainer SET spellcost = 34000 WHERE spell = 10468;
UPDATE npc_trainer SET spellcost = 38000 WHERE spell = 24398;
UPDATE npc_trainer SET spellcost = 42000 WHERE spell = 25391;
UPDATE npc_trainer SET spellcost = 52000 WHERE spell = 25570;
UPDATE npc_trainer SET spellcost = 58000 WHERE spell = 25420;
UPDATE npc_trainer SET spellcost = 79000 WHERE spell = 25567;
UPDATE npc_trainer SET spellcost = 79000 WHERE spell = 33736;
UPDATE npc_trainer SET spellcost = 2500 WHERE spell = 32594;
UPDATE npc_trainer SET spellcost = 88000 WHERE spell = 25396;

UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='826');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='885');
UPDATE `item_template` SET `displayid`='8494' WHERE (`entry`='885');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='886');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='920');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='1214');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='1219');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='1296');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='1394');
UPDATE `item_template` SET `displayid`='5203' WHERE (`entry`='1394');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='1440');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='1457');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='1459');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='1469');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='1480');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='1493');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='1721');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='1927');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='1938');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='1958');
UPDATE `item_template` SET `displayid`='1759' WHERE (`entry`='1958');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='2018');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='2035');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='2046');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='2263');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='2265');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='2267');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='2281');
UPDATE `item_template` SET `sheath`='2' WHERE (`entry`='2503');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='2808');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='2821');
UPDATE `item_template` SET `InventoryType`='24' WHERE (`entry`='3034');
UPDATE `item_template` SET `displayid`='5998' WHERE (`entry`='3034');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='3154');
UPDATE `item_template` SET `displayid`='20607' WHERE (`entry`='3222');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='3223');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='3462');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='3570');
UPDATE `item_template` SET `displayid`='8100' WHERE (`entry`='3570');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='3755');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='3935');
UPDATE `item_template` SET `displayid`='7311' WHERE (`entry`='3935');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='4116');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='4122');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='4126');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='4303');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='4439');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='4445');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='4511');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='4824');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='4826');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='4949');
UPDATE `item_template` SET `InventoryType`='0' WHERE (`entry`='4959');
UPDATE `item_template` SET `displayid`='16760' WHERE (`entry`='4959');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='4971');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='4977');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='4978');
UPDATE `item_template` SET `displayid`='6007' WHERE (`entry`='5229');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='5324');
UPDATE `item_template` SET `displayid`='8576' WHERE (`entry`='5324');
UPDATE `item_template` SET `displayid`='18061' WHERE (`entry`='5330');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='5459');
UPDATE `item_template` SET `displayid`='5014' WHERE (`entry`='5459');
UPDATE `item_template` SET `displayid`='8132' WHERE (`entry`='5562');
UPDATE `item_template` SET `displayid`='8132' WHERE (`entry`='5563');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='5744');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='5757');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='6194');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='6196');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='6622');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='6738');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='6804');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='6966');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='6967');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='6968');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='6978');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='6982');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='6983');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='6984');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='6985');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='7115');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='7117');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='7118');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='7328');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='7329');
UPDATE `item_template` SET `displayid`='18519' WHERE (`entry`='7681');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='8708');
UPDATE `item_template` SET `InventoryType`='0' WHERE (`entry`='8840');
UPDATE `item_template` SET `displayid`='1103' WHERE (`entry`='8840');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='9651');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='9686');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='10696');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='10744');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='11906');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='11964');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='12866');
UPDATE `item_template` SET `displayid`='23323' WHERE (`entry`='12866');
UPDATE `item_template` SET `displayid`='26387' WHERE (`entry`='12970');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='13006');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='13028');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='13048');
UPDATE `item_template` SET `displayid`='25659' WHERE (`entry`='13936');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='15445');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='15863');
UPDATE `item_template` SET `displayid`='5205' WHERE (`entry`='15863');
UPDATE `item_template` SET `InventoryType`='2' WHERE (`entry`='16334');
UPDATE `item_template` SET `displayid`='30797' WHERE (`entry`='16334');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='17003');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='17039');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='17733');
UPDATE `item_template` SET `InventoryType`='17' WHERE (`entry`='18002');
UPDATE `item_template` SET `displayid`='30294' WHERE (`entry`='18002');
UPDATE `item_template` SET `sheath`='1' WHERE (`entry`='18002');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='18491');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='19968');
UPDATE `item_template` SET `displayid`='44552' WHERE (`entry`='20393');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='20723');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='22332');
UPDATE `item_template` SET `displayid`='811' WHERE (`entry`='22822');
UPDATE `item_template` SET `InventoryType`='15' WHERE (`entry`='23051');
UPDATE `item_template` SET `displayid`='35450' WHERE (`entry`='23051');
UPDATE `item_template` SET `sheath`='0' WHERE (`entry`='23051');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='24343');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='26050');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='26054');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='27756');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='30788');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='31422');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='31423');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='31476');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='31745');
UPDATE `item_template` SET `InventoryType`='13' WHERE (`entry`='33272');
UPDATE `item_template` SET `displayid`='49426' WHERE (`entry`='34077');

DELETE FROM `item_template` WHERE (`entry`='9728');
DELETE FROM `item_template` WHERE (`entry`='12400');
DELETE FROM `item_template` WHERE (`entry`='15021');
DELETE FROM `item_template` WHERE (`entry`='18000');
DELETE FROM `item_template` WHERE (`entry`='18001');
DELETE FROM `item_template` WHERE (`entry`='18003');
DELETE FROM `item_template` WHERE (`entry`='18004');
DELETE FROM `item_template` WHERE (`entry`='18005');
DELETE FROM `item_template` WHERE (`entry`='18924');
DELETE FROM `item_template` WHERE (`entry`='18925');
DELETE FROM `item_template` WHERE (`entry`='19760');

DELETE FROM `creature_loot_template` WHERE `creature_loot_template`.`entry` = 14535 AND `creature_loot_template`.`item` = 18925;
-- forum ends

-- forum creatures start
-- arena
DELETE FROM `creature` WHERE `id`=21235;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('74453', '21235', 530, 1, 23691, 0, -1959.98, 5173.55, -37.7765, 0.244346, 120, 0, 0, 7200, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=25991;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('40530', '25991', 530, 1, 23692, 0, -1961.82, 5177.22, -37.7765, 0.820305, 120, 0, 0, 6900, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=25992;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('40531', '25992', 530, 1, 19926, 0, -1960.77, 5169.98, -37.7269, 1.32645, 120, 0, 0, 11000, 0, 0, 0),
('40532', '25992', 530, 1, 19926, 0, -1965.91, 5178.11, -37.7765, 6.0912, 120, 0, 0, 11000, 0, 0, 0);

-- warsong alliance BG master, no more sitting
DELETE FROM `creature_template_addon` WHERE `entry`='20272';

-- bg_masters
DELETE FROM `creature` WHERE `id` IN ('20339','20271','20273','20395','20362','20272','20384','20274','20276','20269');
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('72252', '20339', 530, 0, 0, -1763.07, 5259.52, -38.8492, 6.16659, 120, 0, 0, 6300, 5875, 0, 0),
('71997', '20271', 530, 0, 85, -1774.38, 5253.94, -38.8488, 4.47013, 120, 0, 0, 6500, 0, 0, 0),
('71999', '20273', 530, 0, 1831, -1764.19, 5258.45, -38.848, 5.4126, 120, 0, 0, 6500, 0, 0, 0),
('72364', '20395', 530, 0, 0, -1764.8, 5260.49, -38.841, 0.927981, 120, 0, 0, 7900, 0, 0, 0),
('72257', '20362', 530, 0, 1921, -1762.08, 5264.36, -38.8486, 6.27262, 120, 0, 0, 6500, 0, 0, 0),
('71998', '20272', 530, 0, 951, -1778.93, 5255.88, -38.8483, 4.12456, 120, 0, 0, 6400, 0, 0, 0),
('72258', '20384', 530, 0, 1934, -1956.63, 5259.41, -38.8476, 5.15575, 120, 0, 0, 6700, 0, 0, 0),
('72000', '20274', 530, 0, 1582, -1961.97, 5258.05, -38.846, 4.68451, 120, 0, 0, 7100, 0, 0, 0),
('72001', '20276', 530, 0, 1694, -1970.84, 5264.32, -38.8452, 3.56139, 120, 0, 0, 6600, 0, 0, 0),
('71982', '20269', 530, 0, 1755, -1972.02, 5269.39, -38.8469, 3.04695, 120, 0, 0, 7100, 0, 0, 0);

-- daily Bg quests npcs
DELETE FROM `creature` WHERE `id`=15350;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('55105', '15350', 1, 1, 0, 0, 1987.85, -4812.47, 56.7647, 1.49256, 120, 0, 0, 3000, 0, 0, 0),
('32075', '15350', 0, 1, 15387, 0, 1316.82, 291.133, -63.6295, 2.04204, 120, 0, 0, 3000, 0, 0, 0),
('86263', '15350', 530, 0, 1556, 0, -1967.22, 5260.33, -38.8463, 4.13473, 120, 0, 0, 3000, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=15351;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('40534', '15351', 530, 0, 0, 0, -1768.81, 5254.77, -38.849, 5.17695, 120, 0, 0, 4200, 0, 0, 0),
('40588', '15351', 1, 0, 0, 0, 9996.61, 2324.03, 1330.79, 3.29867, 120, 0, 0, 4200, 100, 0, 0);

DELETE FROM `creature` WHERE `id`=25109;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (44251, 25109, 0, 1, 0, 0, -14403.3, 415.198, 10.3524, 0.601206, 180, 0, 0, 1, 0, 0, 0);

DELETE FROM `creature` WHERE `id`=23363;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('44252', 23363, 530, 1, 0, 0, -3867.47, 3463.91, 275.433, 3.13289, 60, 0, 0, 9250, 0, 0, 0);

-- Ontuvo spawn
DELETE FROM `creature` WHERE `id` = '27666';
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('44253', '27666', '530', '1', '0', '0', '-1829.72', '5500.5', '-12.4278', '3.8107', '25', '0', '0', '6600', '0', '0', '0');


-- Delete Deathlash stinger in wrong place
DELETE FROM `creature` WHERE `guid` = '78222' AND `id` = '22257';
-- Skyguard Khatie stats
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '6500', `maxhealth` = '6500', `armor` = '6800', `faction_A` = '1856', `faction_H` = '1856', `npcflag` = `npcflag`|'4194304', `mindmg` = '210', `maxdmg` = '450', `attackpower` = '2500', `baseattacktime` = '2000' WHERE `entry` = '23392';
-- Skyguard Stable Master spawned
DELETE FROM `creature` WHERE `id`=23392;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('44254', 23392, 530, 0, 0, 2511.01, 7350.59, 380.734, 3.30985, 60, 0, 0, 6500, 0, 0, 0);
-- Skyguard Khatie stats
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '11000', `maxhealth` = '11000', `armor` = '7100', `faction_A` = '1856', `faction_H` = '1856', `mindmg` = '98', `maxdmg` = '350', `attackpower` = '2800', `baseattacktime` = '2000' WHERE `entry` = '23335';
-- Skyguard Khatie spawned
DELETE FROM `creature` WHERE `id`=23335;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('44255', 23335, 530, 0, 0, 2518.76, 7353.99, 380.734, 2.91244, 60, 0, 0, 11000, 0, 0, 0);
-- Sky Sergeant Vanderlip stats
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '6000', `maxhealth` = '6000', `armor` = '6750', `faction_A` = '1856', `faction_H` = '1856', `mindmg` = '160', `maxdmg` = '280', `attackpower` = '1900', `baseattacktime` = '2000' WHERE `entry` = '23120';
-- Sky Sergeant Vanderlip spawn
DELETE FROM `creature` WHERE `id`=23120;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('44256', 23120, 530, 0, 0, 2495.25, 7350.9, 380.233, 5.69904, 60, 0, 0, 6000, 0, 0, 0);
-- Skyguard Handler Irena stats
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '10000', `maxhealth` = '10000', `armor` = '6500', `faction_A` = '1856', `faction_H` = '1856', `mindmg` = '180', `maxdmg` = '300', `attackpower` = '2450', `baseattacktime` = '2000' WHERE `entry` = '23413';
-- Skyguard Handler Irena spawned
DELETE FROM `creature` WHERE `id`=23413;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('44257', 23413, 530, 0, 0, 2524.86, 7311.75, 373.445, 0.953105, 30, 0, 0, 10000, 0, 0, 0);
-- 2 Skyguard Nether Ray spawned
DELETE FROM `creature` WHERE `guid` IN (47651, 48165);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('47651', 22987, 530, 0, 0, 2528.21, 7310.32, 373.696, 1.46416, 300, 0, 0, 9250, 0, 0, 0),
('48165', 22987, 530, 0, 0, 2534.98, 7310.9, 373.45, 1.82466, 300, 0, 0, 9015, 0, 0, 0);
-- Skyguard Pyrotechnician misc
UPDATE `creature_template` SET `armor` = '6650', `faction_A` = '1856', `faction_H` = '1856', `attackpower` = '2500', `baseattacktime` = '2000' WHERE `entry` = '23208';
-- Skyguard Pyrotechnician spawned
DELETE FROM `creature` WHERE `id`=23208;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('48166', 23208, 530, 0, 0, 2506.56, 7361.19, 380.36, 5.11258, 300, 0, 0, 7400, 0, 0, 0);
-- Skyguard Pyrotechnician vendor list fix
UPDATE `npc_vendor` SET `maxcount` = '3' WHERE (`entry` = '23208') AND `item` IN ('23769', '23768');
-- Sky Commander Keller stats
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '6300', `maxhealth` = '6300', `armor` = '6900', `faction_A` = '1856', `faction_H` = '1856', `mindmg` = '221', `maxdmg` = '358', `attackpower` = '2300', `baseattacktime` = '2000' WHERE `entry` = '23334';
-- Sky Commander Keller spawned
DELETE FROM `creature` WHERE `id`=23334;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('48167', 23334, 530, 0, 0, 2503.06, 7360.36, 380.352, 4.82768, 60, 0, 0, 6300, 0, 0, 0);
-- Aether-tech Apprentice stats
UPDATE `creature_template` SET `minlevel` = '70', `maxlevel` = '70', `minhealth` = '6600', `maxhealth` = '6600', `armor` = '6400', `faction_A` = '1856', `faction_H` = '1856', `mindmg` = '150', `maxdmg` = '220', `attackpower` = '2100', `baseattacktime` = '2000' WHERE `entry` = '23473';
-- Aether-tech Apprentice spawned
DELETE FROM `creature` WHERE `id`=23473;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('52535', 23473, 530, 0, 0, 2522.06, 7332.36, 373.524, 5.43538, 60, 0, 0, 6600, 0, 0, 0);
-- Skyguard Windcharger is a guard like the ones in booty bay
UPDATE `creature_template` SET `armor` = '6800', `npcflag` = `npcflag`|'268435456', `spell1` = '12024', `ScriptName` = 'guard_contested' WHERE `entry` = '23257';
-- Skyguard Windcharger spawned (template has wrong equip ID)
REPLACE INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('74807', 23257, 530, 0, 0, 2502.67, 7331.64, 376.373, 5.58225, 300, 0, 0, 9720, 0, 0, 0),
('79487', 23257, 530, 0, 0, 2491.85, 7325.25, 369.115, 3.03598, 300, 0, 0, 9720, 0, 0, 0),
('79497', 23257, 530, 0, 0, 2484.03, 7326.19, 367.487, 2.71554, 300, 0, 0, 9485, 0, 0, 0),
('79503', 23257, 530, 0, 0, 2571.51, 7314.14, 365.5, 5.5524, 300, 0, 0, 9955, 0, 0, 0),
('79512', 23257, 530, 0, 0, 2562.23, 7303.61, 365.908, 5.90897, 300, 0, 0, 9720, 0, 0, 0);

-- more Injured Stockade Guard spawned from official .
DELETE FROM `creature` WHERE `id`=4996;
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(90457, 4996, 0, 1, 0, 0, -8756.34, 814.008, 97.6346, 2.08007, 540, 0, 0, 3375, 0, 0, 0),
('79522', 4996, 0, 1, 0, 0, -8762.22, 812.437, 97.6346, 0.559538, 25, 0, 0, 3375, 0, 0, 0),
('79550', 4996, 0, 1, 0, 0, -8764.68, 815.497, 97.6346, 0.716612, 25, 0, 0, 3375, 0, 0, 0),
('79558', 4996, 0, 1, 0, 0, -8757.83, 812.716, 97.6346, 2.36203, 25, 0, 0, 3375, 0, 0, 0),
('79580', 4996, 0, 1, 0, 0, -8763.38, 813.832, 97.6346, 0.80458, 25, 0, 0, 3375, 0, 0, 0);
INSERT IGNORE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES
(90457, 0, 512, 1, 4097, 0, 0, ''),
('79522', 0, 512, 3, 4097, 0, 0, ''),
('79550', 0, 512, 3, 4097, 0, 0, ''),
('79558', 0, 512, 1, 4097, 0, 0, ''),
('79580', 0, 512, 3, 4097, 0, 0, '');

-- Shadowmoon Zealot faction to work with Spectrecles goggles
UPDATE `creature_template` SET `armor` = '5800', `faction_A` = '1821', `faction_H` = '1821', `rangeattacktime` = '0', `minrangedmg` = '0', `maxrangedmg` = '0', `rangedattackpower` = '0', `civilian` = '0' WHERE `entry` = '21788';
-- Shadowmoon Zealot should have Shadowmoon Ghost Invisibility aura
DELETE FROM `creature_template_addon` WHERE (`entry` = '21788');
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES ('21788', '37467 0');
-- Shadowmoon Zealot spawns
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('79581', 21788, 530, 1, 0, 0, -3094.11, 2535.37, 61.8849, 2.30357, 400, 0, 0, 6600, 0, 0, 0),
('79590', 21788, 530, 1, 0, 0, -3101.66, 2540.88, 61.784, 5.63994, 400, 0, 0, 6600, 0, 0, 0),
('79594', 21788, 530, 1, 0, 0, -3098.58, 2550.85, 61.7364, 5.14043, 400, 0, 0, 6600, 0, 0, 0),
('85945', 21788, 530, 1, 0, 0, -3081.72, 2572.94, 62.2378, 3.57906, 400, 0, 0, 6700, 0, 0, 0),
('85979', 21788, 530, 1, 0, 0, -3070.08, 2607.4, 61.769, 3.87829, 400, 0, 0, 6600, 0, 0, 0),
('86320', 21788, 530, 1, 0, 0, -3025.69, 2568.54, 78.9851, 6.17401, 400, 0, 0, 6600, 0, 0, 0),
('86330', 21788, 530, 1, 0, 0, -2988.36, 2564.45, 76.5434, 2.86591, 400, 0, 0, 6600, 0, 0, 0),
('86331', 21788, 530, 1, 0, 0, -2962.9, 2588.47, 78.255, 3.46989, 400, 0, 0, 6700, 0, 0, 0),
('86332', 21788, 530, 1, 0, 0, -2978.7, 2546.47, 76.543, 3.15337, 400, 0, 0, 6700, 0, 0, 0),
('86333', 21788, 530, 1, 0, 0, -2952.23, 2532.63, 76.543, 2.75753, 400, 0, 0, 6700, 0, 0, 0),
('86334', 21788, 530, 1, 0, 0, -2975.14, 2529.71, 76.2715, 0.958973, 400, 0, 0, 6700, 0, 0, 0),
('86335', 21788, 530, 1, 0, 0, -2986.91, 2509.1, 61.4276, 3.0874, 400, 0, 0, 6700, 0, 0, 0),
('93976', 21788, 530, 1, 0, 0, -2974.18, 2484.29, 60.9802, 2.91069, 400, 0, 0, 6700, 0, 0, 0),
('94476', 21788, 530, 1, 0, 0, -2984.36, 2481.35, 61.1027, 0.00707, 400, 0, 0, 6700, 0, 0, 0),
('94478', 21788, 530, 1, 0, 0, -3007.99, 2480.32, 63.1565, 0.860798, 400, 0, 0, 6700, 0, 0, 0),
('94482', 21788, 530, 1, 0, 0, -3024.4, 2491.95, 62.7355, 2.92797, 400, 0, 0, 6700, 0, 0, 0),
('94507', 21788, 530, 1, 0, 0, -3053.05, 2486.3, 65.4947, 2.28708, 400, 0, 0, 6700, 0, 0, 0),
('94508', 21788, 530, 1, 0, 0, -3072.55, 2458.69, 65.0271, 0.44925, 400, 0, 0, 6600, 0, 0, 0);

-- Ahab Wheathoof spawned plus stats
INSERT IGNORE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(94509, 23618, 1, 1, 0, 0, -2097.57, -431.908, -6.76428, 3.63346, 300, 0, 0, 1, 0, 0, 0);
UPDATE `creature_template` SET `minlevel` = 62, `maxlevel` = 62, `minhealth` = 4900, `maxhealth` = 4900, `armor` = 2500, `faction_A` = 104, `faction_H` = 104, `mindmg` = 148, `maxdmg` = 197, `attackpower` = 604, `baseattacktime` = 1500, `civilian` = 1 WHERE `entry` = 23618;

-- Menara Voidrender moved to correct place
DELETE FROM `creature` WHERE `id`=6266;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(40196, 6266, 1, 1, 0, 0, -782.345, -3710.29, 41.1356, 3.12978, 430, 0, 0, 1600, 0, 0, 0);
-- Matero Zeshuwal spawned
DELETE FROM `creature` WHERE `id`=23535;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(94510, 23535, 1, 1, 0, 103, -783.594, -3699.01, 39.9022, 3.42274, 160, 0, 0, 1200, 5751, 0, 0);
-- Nagulon Matero Zeshuwal's Minion spawned
DELETE FROM `creature` WHERE `id`=23536;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(94511, 23536, 1, 1, 0, 1481, -784.6, -3696.82, 39.967, 3.76831, 160, 0, 0, 881, 1874, 0, 0);
-- Babagaya Shadowcleft spawned gossip updated
DELETE FROM `creature` WHERE `id`=23534;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('94512', 23534, 1, 1, 0, 110, -782.437, -3701.7, 40.0265, 3.16513, 160, 0, 0, 881, 5751, 0, 0);
DELETE FROM `npc_gossip` WHERE (`npc_guid`='94512') and (`textid`=3298);
INSERT INTO `npc_gossip` (`npc_guid`, `textid`) VALUES ('94512', 3298);
-- Remove skinnable flag and make demon trainer
UPDATE `creature_template` SET `flags` = `flags`&~256, `trainer_type` = 3, `class` = 9 WHERE `entry` = 23535;
-- Strahad Farsan moved to correct place
DELETE FROM `creature` WHERE `id`=6251;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(40192, 6251, 1, 1, 0, 0, -784.861, -3723.04, 40.5947, 2.05222, 490, 0, 0, 2100, 5751, 0, 0);

-- Wrenix's Gizmotronic Apparatus gossip updated
DELETE FROM `npc_gossip` WHERE (`npc_guid`=42564) and (`textid`=1041);
INSERT INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (42564, 1041);
-- Grimble moved and gossip updated
DELETE FROM `npc_gossip` WHERE (`npc_guid`=46981) and (`textid`=2640);
INSERT INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (46981, 2640);
DELETE FROM `creature` WHERE `id`=9558;
INSERT INTO`creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(46981, 9558, 1, 1, 0, 0, -996.575, -3814.88, 5.18341, 0.561531, 540, 0, 0, 1800, 0, 0, 0);
-- Liv Rizzlefix gossip updated
DELETE FROM `npc_gossip` WHERE (`npc_guid`=44455) and (`textid`=6556);
INSERT INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (44455, 6556);
-- Acolyte Wytula gossip updated
UPDATE `creature_template` SET `npcflag` = `npcflag`|1 WHERE `entry` = 6254;
DELETE FROM `npc_gossip` WHERE (`npc_guid`=40195) and (`textid`=3587);
INSERT INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (40195, 3587);
-- Acolyte Magaz gossip updated
UPDATE `creature_template` SET `npcflag` = `npcflag`|1 WHERE `entry` = 6252;
DELETE FROM `npc_gossip` WHERE (`npc_guid`=40193) and (`textid`=3586);
INSERT INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (40193, 3586);
-- Sputtervalve gossip updated
DELETE FROM `npc_gossip` WHERE (`npc_guid`=25719) and (`textid`=519);
INSERT INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (25719, 519);
-- Brewmaster Drohn Moved
DELETE FROM `creature` WHERE `id`=3292;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(24620, 3292, 1, 1, 0, 0, -981.049, -3687.2, 9.59376, 4.27175, 180, 0, 0, 1300, 0, 0, 0);

-- Officer Vu'Shalay spawned plus gossip updated
DELETE FROM `creature` WHERE `id`=15761;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('94513', 15761, 1, 0, 0, 1945.32, -4330.72, 21.9804, 3.43608, 25, 0, 0, 2100, 0, 0, 1);
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES ('94513', 8127);
-- Officer Redblade spawned plus gossip updated
DELETE FROM `creature` WHERE `id`=15765;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('94514', 15765, 1, 0, 1719, 1909.47, -4276.13, 31.6572, 5.13097, 25, 0, 0, 2400, 0, 0, 1);
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES ('94514', 8131);
-- Officer Thunderstrider
DELETE FROM `creature` WHERE `id`=15767;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
('94515', 15767, 1, 0, 0, -1244.93, 74.4507, 128.451, 4.92822, 25, 0, 0, 4400, 0, 0, 0);
-- Officer Maloof gossip updated
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (79695, 8130);
-- Officer Lunalight gossip updated
REPLACE INTO `npc_gossip` (`npc_guid`, `textid`) VALUES (3429, 8126);

-- forum creatures end

-- forum GOs start
-- Campfire
DELETE FROM `gameobject` WHERE `id`=175593;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('47230', 175593, 1, 1, -5045.73, -2168.27, -51.7979, 2.97669, 0, 0, 0.996603, 0.08236, 180, 100, 1);
-- Campfire
DELETE FROM `gameobject` WHERE `id`=175595;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('47231', 175595, 1, 1, -5029.16, -2259.39, -52.4316, -1.03537, -0.017271, -0.030326, -0.494569, 0.868437, 180, 100, 1);
-- Raging Fire
DELETE FROM `gameobject` WHERE `id`=175599;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('47557', 175599, 1, 1, -5148.02, -2418.11, -51.4189, -2.39337, 0, 0, 0.930833, -0.365445, 180, 100, 1);
-- Small Fire
DELETE FROM `gameobject` WHERE `id`=175601;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('47558', 175601, 1, 1, -5207.53, -2430.54, -42.6051, -1.00469, 0.065328, -0.025956, -0.480826, 0.873994, 180, 100, 1);
-- Campfire
DELETE FROM `gameobject` WHERE `id`=175603;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('47559', 175603, 1, 1, -5160.03, -2564.59, -50.2528, 1.28273, -0.026193, -0.008671, 0.598247, 0.800837, 180, 100, 1);
-- Campfire
DELETE FROM `gameobject` WHERE `id`=176292;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('47560', 176292, 1, 1, 7141.83, -758.387, 52.5213, 0.541051, 0.021949, 0.051325, 0.265354, 0.962534, 180, 100, 1);


-- Hakkari Blood
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '100' WHERE `item` = '10460';
-- Eternal Flame spawns by jamiepollard
DELETE FROM `gameobject` WHERE `id`=148418;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('47561', 148418, 109, 1, -435.417, 248.872, -90.8275, 2.40799, 0, 0, 0.933479, 0.358632, 180, 100, 1);
DELETE FROM `gameobject` WHERE `id`=148419;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('47562', 148419, 109, 1, -499.066, 248.605, -90.8275, 0.659252, 0, 0, 0.323689, 0.946163, 180, 100, 1);
DELETE FROM `gameobject` WHERE `id`=148420;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('47563', 148420, 109, 1, -499.108, 303.472, -90.8275, 5.535, 0, 0, 0.365427, -0.93084, 180, 100, 1);
DELETE FROM `gameobject` WHERE `id`=148421;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('47564', 148421, 109, 1, -434.857, 303.821, -90.8264, 3.84954, 0, 0, 0.938003, -0.346627, 180, 100, 1);

-- Delete wrong spawned Cabal Chests
delete from gameobject where id=185224 and guid=26110;
delete from gameobject where id=185225 and guid=26111;
-- Spawn Cabal chests at correct places
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('47565', 185226, 530, 1, -2843.11, 5350, -30.4386, 2.88625, 0, 0, 0.991861, 0.127324, 5, 100, 1),
(26111, 185225, 530, 1, -2860.85, 5482.5, -30.1893, 5.72153, 0, 0, 0.277152, -0.960826, 5, 100, 1),
(26110, 185224, 530, 1, -2679.23, 5403.16, -36.469, 2.88231, 0, 0, 0.991608, 0.129278, 5, 100, 1);

-- Trans-dimensional Ship Repair for Simpletons
DELETE FROM `gameobject` WHERE `id`=181895;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(47566, 181895, 530, 1, -1989.65, -11918.5, 52.6141, 1.65738, 0, 0, 0.737048, 0.67584, 180, 100, 1);
-- Military Ranks of the Horde & Alliance
DELETE FROM `gameobject` WHERE `id`=179707;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(47567, 179707, 450, 1, 243.102, 84.7166, 25.8072, 1.54101, 0, 0, 0.696499, 0.717557, 180, 100, 1);
-- A Treatise on Military Ranks
DELETE FROM `gameobject` WHERE `id`=179706;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(47568, 179706, 449, 1, -0.368658, 29.2944, 2.42959, 4.59952, 0, 0, 0.745866, -0.666095, 180, 100, 1);
-- Ancient Inscription
UPDATE `gameobject_template` SET `name` = 'Ancient Inscription' WHERE `entry` = 19025;
DELETE FROM `gameobject` WHERE `id`=19025;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(47569, 19025, 1, 1, 3150.32, -1200.05, 216.682, 1.24115, 0, 0, 0.581505, 0.813543, 180, 100, 1);


DELETE FROM `gameobject` WHERE `id`=187073;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('47570', 187073, 530, 1, -1503.34, 3974.08, 218.988, 5.06032, 0, 0, 0.574042, -0.818826, 120, 100, 1),
('47571', 187073, 530, 1, -1490.88, 4170.82, 223.682, 5.90619, 0, 0, 0.187381, -0.982287, 120, 100, 1),
('47572', 187073, 530, 1, -1462.56, 3867.09, 210.337, 2.74654, 0, 0, 0.980555, 0.196247, 120, 100, 1),
('47573', 187073, 530, 1, -1443.27, 4097.03, 213.551, 5.35956, 0, 0, 0.445574, -0.895245, 120, 100, 1),
('47574', 187073, 530, 1, -1388.01, 3790.95, 214.597, 0.61732, 0, 0, 0.303782, 0.952742, 120, 100, 1),
('47575', 187073, 530, 1, -1280.06, 4510.42, 208.47, 4.62442, 0, 0, 0.737514, -0.675332, 120, 100, 1),
('47576', 187073, 530, 1, -1221.5, 4608.18, 194.851, 4.37152, 0, 0, 0.816794, -0.57693, 120, 100, 1),
('47577', 187073, 530, 1, -1201.23, 4520.35, 203.336, 5.41532, 0, 0, 0.420443, -0.907319, 120, 100, 1);

-- Object ID 187072 loot
UPDATE `gameobject_template` SET `data1`=22993 WHERE `entry`=187072;
DELETE FROM `gameobject_loot_template` WHERE (`entry`=22993);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES
(22993, 34254, -100, 0, 1, 1, 0, 0, 0);

-- Gameobject spawn
DELETE FROM `gameobject` WHERE `id`='173266';
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('47578', '173266', '0', '1', '-7025.07', '-1784.32', '265.739', '2.13058', '0', '0', '0.874929', '0.484251', '-300', '100', '1');
-- Quest Start Script
DELETE FROM `quest_start_scripts` WHERE `id`='4450';
INSERT INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datatext`, `x`, `y`, `z`, `o`) VALUES
('4450', '8', '9', '47578', '300', '','0', '0', '0', '0');
-- Change StartScript value
UPDATE `quest_template` SET `StartScript`='4450' WHERE `entry`='4450';

-- forum GOs end

-- nf start
-- Felsteel Boar (JC trinket)
UPDATE `creature_template` SET
    `minlevel`=70,
    `maxlevel`=70,
    `mindmg`=120,
    `maxdmg`=150,
    `minhealth`=450,
    `maxhealth`=450,
    `baseattacktime`=2000,
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7),
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7),
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7),
    `armor`=3000,
    `spell1`=6268
WHERE `entry`=17706;

-- Aldor Supplies Package / Cryers Supplies Package
-- friendly
UPDATE `item_template` SET `minMoneyLoot`=20000, `maxMoneyLoot`=30000 WHERE `entry` IN (34583,34584);
DELETE FROM `item_loot_template` WHERE `entry`=34583;
INSERT INTO `item_loot_template` VALUES
(34583, 30809, 100, 0, 3, 5, 0, 0, 0),
(34583, 27855, 100, 0, 5, 8, 0, 0, 0),
(34583, 27860, 100, 0, 5, 8, 0, 0, 0),
(34583, 80005, 100, 0, -80005, 0, 0, 0, 0);
DELETE FROM `item_loot_template` WHERE `entry`=34584;
INSERT INTO `item_loot_template` VALUES
(34584, 30810, 100, 0, 3, 5, 0, 0, 0),
(34584, 27855, 100, 0, 5, 8, 0, 0, 0),
(34584, 27860, 100, 0, 5, 8, 0, 0, 0),
(34584, 80005, 100, 0, -80005, 0, 0, 0, 0);
-- honored
UPDATE `item_template` SET `minMoneyLoot`=30000, `maxMoneyLoot`=40000 WHERE `entry` IN (34587,34585);
DELETE FROM `item_loot_template` WHERE `entry`=34587;
INSERT INTO `item_loot_template` VALUES
(34587, 30809, 100, 0, 5, 7, 0, 0, 0),
(34587, 27855, 100, 0, 5, 8, 0, 0, 0),
(34587, 27860, 100, 0, 5, 8, 0, 0, 0),
(34587, 22829, 100, 0, 2, 3, 0, 0, 0),
(34587, 22832, 100, 0, 1, 2, 0, 0, 0),
(34587, 80005, 100, 0, -80005, 0, 0, 0, 0);
DELETE FROM `item_loot_template` WHERE `entry`=34585;
INSERT INTO `item_loot_template` VALUES
(34585, 30810, 100, 0, 5, 7, 0, 0, 0),
(34585, 27855, 100, 0, 5, 8, 0, 0, 0),
(34585, 27860, 100, 0, 5, 8, 0, 0, 0),
(34585, 22829, 100, 0, 2, 3, 0, 0, 0),
(34585, 22832, 100, 0, 1, 2, 0, 0, 0),
(34585, 80005, 100, 0, -80005, 0, 0, 0, 0);
-- revered
UPDATE `item_template` SET `minMoneyLoot`=50000, `maxMoneyLoot`=70000 WHERE `entry` IN (34592,34593);
-- (missing rest)
-- exalted
UPDATE `item_template` SET `minMoneyLoot`=90000, `maxMoneyLoot`=110000 WHERE `entry` IN (34595,34594);
-- (missing rest)

-- scrolls
/*
DELETE FROM `item_loot_template` WHERE `entry`=80001;
INSERT INTO `item_loot_template` VALUES
(80001, 954, 0, 1, 1, 1, 0, 0, 0),
(80001, 955, 0, 1, 1, 1, 0, 0, 0),
(80001, 1180, 0, 1, 1, 1, 0, 0, 0),
(80001, 1181, 0, 1, 1, 1, 0, 0, 0),
(80001, 3012, 0, 1, 1, 1, 0, 0, 0),
(80001, 3013, 0, 1, 1, 1, 0, 0, 0);
DELETE FROM `item_loot_template` WHERE `entry`=80002;
INSERT INTO `item_loot_template` VALUES
(80002, 1711, 0, 1, 1, 1, 0, 0, 0),
(80002, 1712, 0, 1, 1, 1, 0, 0, 0),
(80002, 1477, 0, 1, 1, 1, 0, 0, 0),
(80002, 1478, 0, 1, 1, 1, 0, 0, 0),
(80002, 2289, 0, 1, 1, 1, 0, 0, 0),
(80002, 2290, 0, 1, 1, 1, 0, 0, 0);
DELETE FROM `item_loot_template` WHERE `entry`=80003;
INSERT INTO `item_loot_template` VALUES
(80003, 4419, 0, 1, 1, 1, 0, 0, 0),
(80003, 4421, 0, 1, 1, 1, 0, 0, 0),
(80003, 4422, 0, 1, 1, 1, 0, 0, 0),
(80003, 4424, 0, 1, 1, 1, 0, 0, 0),
(80003, 4425, 0, 1, 1, 1, 0, 0, 0),
(80003, 4426, 0, 1, 1, 1, 0, 0, 0);
DELETE FROM `item_loot_template` WHERE `entry`=80004;
INSERT INTO `item_loot_template` VALUES
(80004, 10305, 0, 1, 1, 1, 0, 0, 0),
(80004, 10306, 0, 1, 1, 1, 0, 0, 0),
(80004, 10307, 0, 1, 1, 1, 0, 0, 0),
(80004, 10308, 0, 1, 1, 1, 0, 0, 0),
(80004, 10309, 0, 1, 1, 1, 0, 0, 0),
(80004, 10310, 0, 1, 1, 1, 0, 0, 0);
*/
DELETE FROM `item_loot_template` WHERE `entry`=80005;
INSERT INTO `item_loot_template` VALUES
(80005, 27498, 0, 1, 1, 1, 0, 0, 0),
(80005, 27499, 0, 1, 1, 1, 0, 0, 0),
(80005, 27500, 0, 1, 1, 1, 0, 0, 0),
(80005, 27501, 0, 1, 1, 1, 0, 0, 0),
(80005, 27502, 0, 1, 1, 1, 0, 0, 0),
(80005, 27503, 0, 1, 1, 1, 0, 0, 0);

-- Shattered Sun Supplies
INSERT IGNORE INTO `item_loot_template` VALUES(35232,29434,10,0,1,1,0,0,0);

--
-- quest
--

-- The Battle for the Sun's Reach Armory / The Battle Must Go On
UPDATE `quest_template` SET `ReqSpellCast1`=0 WHERE `entry` IN (11538,11537);
UPDATE `quest_template` SET `SkillOrClass`=762, `RequiredSkillValue`=300 WHERE `entry` IN (11013,11014);
-- Arena Master
UPDATE `quest_template` SET `MinLevel`=1 WHERE `entry` IN (7810,7838);
-- typos
UPDATE `quest_template` SET `RequiredMinRepValue`=9000 WHERE `entry` IN (9884,11555);
UPDATE `quest_template` SET `RequiredMaxRepValue`=9000 WHERE `entry`=9886;
-- Shrimpin' Ain't Easy
UPDATE `quest_template` SET `ReqSourceId1`=0, `ReqSourceCount1`=0, `ReqSourceRef1`=0 WHERE `entry`=11668;

DELETE FROM `gameobject_questrelation` WHERE `quest`=624;

-- midsummer related
UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry`=9367;
UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry`=11970;
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry`=11971;
UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry`=11882;
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry`=11915;
UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry`=11964;
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry`=11966;
UPDATE `quest_template` SET `RequiredRaces`=0 WHERE `entry` IN (9319,9386);
UPDATE `quest_template` SET `PrevQuestId`=0, `SpecialFlags`=`SpecialFlags` &~1 WHERE `entry`=9319;
UPDATE `quest_template` SET `PrevQuestId`=9319, `SpecialFlags`=`SpecialFlags`|1 WHERE `entry`=9386;
UPDATE `quest_template` SET `MinLevel`=1 WHERE `entry` IN (9367,9368,9322,9323,11970,11971,11882,11915,11964,11966);
UPDATE `quest_template` SET `MinLevel`=50 WHERE `entry` IN (9319,9386,11933,11935);
UPDATE `quest_template` SET `RequiredRaces`=690 WHERE `entry`=11933;
UPDATE `quest_template` SET `RequiredRaces`=1101 WHERE `entry`=11935;
UPDATE `quest_template` SET `NextQuestId`=9339, `ExclusiveGroup`=-9324 WHERE `entry` IN (9324,9325,9326,11935);
UPDATE `quest_template` SET `NextQuestId`=9365, `ExclusiveGroup`=-9330 WHERE `entry` IN (9330,9331,9332,11933);

DELETE FROM `creature_questrelation` WHERE `quest` IN (9367,9368,9388,9389,9322,9323,9319,9386,11933,11935,11696,11691,11964,11966);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (16817, 9367),(16818, 9368),(16817, 9388),(16818, 9388),(16817, 9389),(16818, 9389),(16788, 9322),(16788, 9323),(16788, 9319),(16788, 9386),(16818, 11933),(16817, 11935),(25710, 11696),(25697, 11691),(16817, 11964),(16818, 11966);
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (9367,9368,9388,9389,9322,9323,9319,9386,11933,11935,11696,11970,11971,11882,11915,11964,11966);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (16817, 9367),(16818, 9368),(16788, 9388),(16788, 9389),(16788, 9322),(16788, 9323),(16788, 9319),(16788, 9386),(16818, 11933),(16817, 11935),(25697, 11696),(16817, 11970),(16818, 11971),(26113, 11882),(26113, 11915),(26401, 11964),(26520, 11966);

--
-- spell,scripts,misc
--

-- Bloated Barbed Gill Trout
UPDATE `item_template` SET `Duration`=-7200 WHERE `entry`=35313;

DELETE FROM `spell_script_target` WHERE `entry`=45030;
INSERT INTO `spell_script_target` VALUES (45030,2,25003);
DELETE FROM `spell_script_target` WHERE `entry`=30834;
INSERT INTO `spell_script_target` VALUES (30834,1,17646);
DELETE FROM `spell_script_target` WHERE `entry`=30427;
INSERT INTO `spell_script_target` VALUES (30427,1,17378),(30427,1,17407),(30427,1,17408),(30427,1,24222);

--
-- loot
--

-- Zuluhed's Key
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `item`=31664;
-- Top Shard of the Arcatraz Key
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `item`=31085;
-- Bloated Barbed Gill Trout
UPDATE `fishing_loot_template` SET `lootcondition`=9, `condition_value1`=11668 WHERE `item`=35313;
-- Brilliant Glass
UPDATE `item_loot_template` SET `ChanceOrQuestChance`=0.8 WHERE `item` IN (32227,32228,32229,32230,32231,32249);
-- Patch of Tainted Skin(skinning only)
DELETE FROM `creature_loot_template` WHERE `item`=11512;
-- Knothide Leather(skinning,container only)
DELETE FROM `creature_loot_template` WHERE `item`=21887;
-- Knothide Leather Scraps(skinning,container only)
DELETE FROM `creature_loot_template` WHERE `item`=25649;
-- Thick Clefthoof Leather(skinning,vendor only)
DELETE FROM `creature_loot_template` WHERE `item`=25708;

--
-- creature
--

-- some arcatraz cleaning
DELETE FROM `creature` WHERE `id` IN (21101,21030,20978,20906,20977,20908,20911,21466,21467);
UPDATE `creature_template` SET `speed`='0.01' WHERE `entry` IN (21101,20978);

UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (25710,25697,26113,26401,26520);

-- shamans
UPDATE `creature_template` SET `spell1`=33663 WHERE `entry`=15430; -- earth elemental totem
UPDATE `creature_template` SET `spell1`=32982 WHERE `entry`=15439; -- fire elemental totem

UPDATE `creature_template` SET `dmgschool`=2 WHERE `entry`=15438; -- greater fire elemental
DELETE FROM `creature_template_addon` WHERE `entry`=15438;
INSERT IGNORE INTO `creature_template_addon` VALUES (15438, '', '', '', '', '', '', '22436 0');

UPDATE `creature_template` SET `speed`='1.2' WHERE `entry` IN (15352,15438);

DELETE FROM `petcreateinfo_spell` WHERE `entry` IN (15352,15438);
INSERT INTO `petcreateinfo_spell` VALUES (15352,36213,0,0,0);
INSERT INTO `petcreateinfo_spell` VALUES (15438,0,0,0,0); -- placeholder

DELETE FROM `pet_levelstats` WHERE `creature_entry`=15352;
INSERT INTO `pet_levelstats` VALUES
(15352,1,1,0,1,1,1,1,1,1),
(15352,2,1,0,1,1,1,1,1,1),
(15352,3,1,0,1,1,1,1,1,1),
(15352,4,1,0,1,1,1,1,1,1),
(15352,5,1,0,1,1,1,1,1,1),
(15352,6,1,0,1,1,1,1,1,1),
(15352,7,1,0,1,1,1,1,1,1),
(15352,8,1,0,1,1,1,1,1,1),
(15352,9,1,0,1,1,1,1,1,1),
(15352,10,1,0,1,1,1,1,1,1),
(15352,11,1,0,1,1,1,1,1,1),
(15352,12,1,0,1,1,1,1,1,1),
(15352,13,1,0,1,1,1,1,1,1),
(15352,14,1,0,1,1,1,1,1,1),
(15352,15,1,0,1,1,1,1,1,1),
(15352,16,1,0,1,1,1,1,1,1),
(15352,17,1,0,1,1,1,1,1,1),
(15352,18,1,0,1,1,1,1,1,1),
(15352,19,1,0,1,1,1,1,1,1),
(15352,20,1,0,1,1,1,1,1,1),
(15352,21,1,0,1,1,1,1,1,1),
(15352,22,1,0,1,1,1,1,1,1),
(15352,23,1,0,1,1,1,1,1,1),
(15352,24,1,0,1,1,1,1,1,1),
(15352,25,1,0,1,1,1,1,1,1),
(15352,26,1,0,1,1,1,1,1,1),
(15352,27,1,0,1,1,1,1,1,1),
(15352,28,1,0,1,1,1,1,1,1),
(15352,29,1,0,1,1,1,1,1,1),
(15352,30,1,0,1,1,1,1,1,1),
(15352,31,1,0,1,1,1,1,1,1),
(15352,32,1,0,1,1,1,1,1,1),
(15352,33,1,0,1,1,1,1,1,1),
(15352,34,1,0,1,1,1,1,1,1),
(15352,35,1,0,1,1,1,1,1,1),
(15352,36,1,0,1,1,1,1,1,1),
(15352,37,1,0,1,1,1,1,1,1),
(15352,38,1,0,1,1,1,1,1,1),
(15352,39,1,0,1,1,1,1,1,1),
(15352,40,1,0,1,1,1,1,1,1),
(15352,41,1,0,1,1,1,1,1,1),
(15352,42,1,0,1,1,1,1,1,1),
(15352,43,1,0,1,1,1,1,1,1),
(15352,44,1,0,1,1,1,1,1,1),
(15352,45,1,0,1,1,1,1,1,1),
(15352,46,1,0,1,1,1,1,1,1),
(15352,47,1,0,1,1,1,1,1,1),
(15352,48,1,0,1,1,1,1,1,1),
(15352,49,1,0,1,1,1,1,1,1),
(15352,50,1,0,1,1,1,1,1,1),
(15352,51,1,0,1,1,1,1,1,1),
(15352,52,1,0,1,1,1,1,1,1),
(15352,53,1,0,1,1,1,1,1,1),
(15352,54,1,0,1,1,1,1,1,1),
(15352,55,1,0,1,1,1,1,1,1),
(15352,56,1,0,1,1,1,1,1,1),
(15352,57,1,0,1,1,1,1,1,1),
(15352,58,1,0,1,1,1,1,1,1),
(15352,59,1,0,1,1,1,1,1,1),
(15352,60,1,0,1,1,1,1,1,1),
(15352,61,1,0,1,1,1,1,1,1),
(15352,62,1,0,1,1,1,1,1,1),
(15352,63,1,0,1,1,1,1,1,1),
(15352,64,1,0,1,1,1,1,1,1),
(15352,65,1,0,1,1,1,1,1,1),
(15352,66,6600,0,6200,132,62,96,132,320),
(15352,67,6700,0,6400,134,64,97,134,330),
(15352,68,6800,0,6600,136,66,99,136,340),
(15352,69,6900,0,6800,138,68,100,138,350),
(15352,70,7000,0,7000,140,70,102,140,360);

DELETE FROM `pet_levelstats` WHERE `creature_entry`=15438;
INSERT INTO `pet_levelstats` VALUES
(15438,1,1,1,1,1,1,1,1,1),
(15438,2,1,1,1,1,1,1,1,1),
(15438,3,1,1,1,1,1,1,1,1),
(15438,4,1,1,1,1,1,1,1,1),
(15438,5,1,1,1,1,1,1,1,1),
(15438,6,1,1,1,1,1,1,1,1),
(15438,7,1,1,1,1,1,1,1,1),
(15438,8,1,1,1,1,1,1,1,1),
(15438,9,1,1,1,1,1,1,1,1),
(15438,10,1,1,1,1,1,1,1,1),
(15438,11,1,1,1,1,1,1,1,1),
(15438,12,1,1,1,1,1,1,1,1),
(15438,13,1,1,1,1,1,1,1,1),
(15438,14,1,1,1,1,1,1,1,1),
(15438,15,1,1,1,1,1,1,1,1),
(15438,16,1,1,1,1,1,1,1,1),
(15438,17,1,1,1,1,1,1,1,1),
(15438,18,1,1,1,1,1,1,1,1),
(15438,19,1,1,1,1,1,1,1,1),
(15438,20,1,1,1,1,1,1,1,1),
(15438,21,1,1,1,1,1,1,1,1),
(15438,22,1,1,1,1,1,1,1,1),
(15438,23,1,1,1,1,1,1,1,1),
(15438,24,1,1,1,1,1,1,1,1),
(15438,25,1,1,1,1,1,1,1,1),
(15438,26,1,1,1,1,1,1,1,1),
(15438,27,1,1,1,1,1,1,1,1),
(15438,28,1,1,1,1,1,1,1,1),
(15438,29,1,1,1,1,1,1,1,1),
(15438,30,1,1,1,1,1,1,1,1),
(15438,31,1,1,1,1,1,1,1,1),
(15438,32,1,1,1,1,1,1,1,1),
(15438,33,1,1,1,1,1,1,1,1),
(15438,34,1,1,1,1,1,1,1,1),
(15438,35,1,1,1,1,1,1,1,1),
(15438,36,1,1,1,1,1,1,1,1),
(15438,37,1,1,1,1,1,1,1,1),
(15438,38,1,1,1,1,1,1,1,1),
(15438,39,1,1,1,1,1,1,1,1),
(15438,40,1,1,1,1,1,1,1,1),
(15438,41,1,1,1,1,1,1,1,1),
(15438,42,1,1,1,1,1,1,1,1),
(15438,43,1,1,1,1,1,1,1,1),
(15438,44,1,1,1,1,1,1,1,1),
(15438,45,1,1,1,1,1,1,1,1),
(15438,46,1,1,1,1,1,1,1,1),
(15438,47,1,1,1,1,1,1,1,1),
(15438,48,1,1,1,1,1,1,1,1),
(15438,49,1,1,1,1,1,1,1,1),
(15438,50,1,1,1,1,1,1,1,1),
(15438,51,1,1,1,1,1,1,1,1),
(15438,52,1,1,1,1,1,1,1,1),
(15438,53,1,1,1,1,1,1,1,1),
(15438,54,1,1,1,1,1,1,1,1),
(15438,55,1,1,1,1,1,1,1,1),
(15438,56,1,1,1,1,1,1,1,1),
(15438,57,1,1,1,1,1,1,1,1),
(15438,58,1,1,1,1,1,1,1,1),
(15438,59,1,1,1,1,1,1,1,1),
(15438,60,1,1,1,1,1,1,1,1),
(15438,61,1,1,1,1,1,1,1,1),
(15438,62,1,1,1,1,1,1,1,1),
(15438,63,1,1,1,1,1,1,1,1),
(15438,64,1,1,1,1,1,1,1,1),
(15438,65,1,1,1,1,1,1,1,1),
(15438,66,1,1,1,1,1,1,1,1),
(15438,67,1,1,1,1,1,1,1,1),
(15438,68,6800,2052,980,198,136,99,320,340),
(15438,69,6900,2071,990,204,138,100,327,350),
(15438,70,7000,2090,1000,210,140,102,334,360);

-- old hillsbrad bosses
INSERT IGNORE INTO `creature_onkill_reputation` VALUES (20535,989,0,7,0,250,0,0,0,0);
INSERT IGNORE INTO `creature_onkill_reputation` VALUES (20521,989,0,7,0,250,0,0,0,0);
INSERT IGNORE INTO `creature_onkill_reputation` VALUES (20531,989,0,7,0,250,0,0,0,0);

--
-- GO
--

-- Murloc Cage
UPDATE `gameobject_template` SET `size`='0.5' WHERE `entry`=182164;


--
--
--

DELETE FROM `skinning_loot_template` WHERE `entry` BETWEEN 70060 AND 70067;
DELETE FROM `skinning_loot_template` WHERE `entry` BETWEEN 70160 AND 70172;
DELETE FROM `skinning_loot_template` WHERE `entry` IN (15689,16173,16174,16175,16176,16177,16178,16180,16863,16879,16880,16932,16933,16934,16950,16992,17130,17131);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (17132,17133,17144,17280,17401,17521,17536,17669,17724,17731,17839,17840,17879,17880,17881,17952,18033,18096);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (18105,18128,18129,18130,18131,18170,18171,18172,18205,18213,18214,18226,18258,18259,18280,18285,18286,18289);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (18290,18334,18461,18463,18464,18465,18476,18477,18642,18648,18670,18678,18877,18879,18880,18884,18964,18982);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (19183,19189,19349,19350,19423,19428,19458,19459,19595,19706,19729,19730,19784,19852,20021,20038,20039,20058);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (20196,20279,20280,20283,20324,20330,20332,20387,20502,20557,20607,20610,20634,20671,20673,20713,20728,20729);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (20748,20749,20751,20773,20777,20866,20906,20924,20925,20931,20932,20987,21004,21022,21032,21033,21102,21104);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (21108,21123,21124,21195,21389,21408,21462,21721,21722,21723,21801,21802,21816,21854,21864,21878,21879,21897);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (21901,21956,22052,22100,22105,22123,22175,22180,22181,22187,22255,22257,22287,22303,22394,22884,22946,23232);
DELETE FROM `skinning_loot_template` WHERE `entry` IN (23501,23584,24043,24064,24530);

UPDATE `creature_template` SET `skinloot`=70060 WHERE `entry` IN (18128, 19423, 19458, 19459);
INSERT INTO `skinning_loot_template` VALUES ('70060', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70060', '25649', '0', '1', '1', '1', '0', '0', '0'),('70060', '21887', '10', '1', '1', '1', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70061 WHERE `entry` IN (18033, 18129, 18130, 18131, 18213, 18214, 18280, 18285, 18286, 18476, 18477, 18670, 18678, 18964, 20058, 20196, 20324, 20387, 22100, 22105, 22123);
INSERT INTO `skinning_loot_template` VALUES ('70061', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70061', '25649', '0', '1', '1', '1', '0', '0', '0'),('70061', '21887', '30', '1', '1', '1', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70062 WHERE `entry` IN (17280, 17669);
INSERT INTO `skinning_loot_template` VALUES ('70062', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70062', '25649', '0', '1', '1', '3', '0', '0', '0'),('70062', '21887', '20', '1', '1', '1', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70063 WHERE `entry` IN (17130, 17131, 17144, 18096, 18105, 18170, 18171, 18172, 18226, 18289, 18290, 18334, 18879, 18880, 19428, 19595, 20330, 20610, 20634, 20671, 20713, 20728, 20748, 20751, 20773, 20777, 20932, 21022, 21033, 21124, 21195, 21408, 21462, 21864, 21878, 21879, 21897, 21901, 21956, 22052, 22257);
INSERT INTO `skinning_loot_template` VALUES ('70063', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70063', '25649', '0', '1', '1', '3', '0', '0', '0'),('70063', '21887', '0', '1', '1', '1', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70064 WHERE `entry` IN (21723, 20931, 22181, 23501, 22807, 24922);
INSERT INTO `skinning_loot_template` VALUES ('70064', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70064', '21887', '0', '1', '1', '1', '0', '0', '0'),('70064', '25649', '20', '1', '1', '4', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70065 WHERE `entry` IN (16173, 16174, 16175, 16180, 17521, 17536, 17724, 17731, 17839, 17840, 18258, 18259, 18982, 20038, 20075, 20729, 21104, 21801, 22946, 23232);
INSERT INTO `skinning_loot_template` VALUES ('70065', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70065', '25649', '0', '1', '1', '4', '0', '0', '0'),('70065', '21887', '0', '1', '1', '3', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70066 WHERE `entry` IN (17879, 17880, 17881, 20039, 22884);
INSERT INTO `skinning_loot_template` VALUES ('70066', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70066', '21887', '0', '1', '1', '4', '0', '0', '0'),('70066', '25649', '30', '1', '1', '4', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70067 WHERE `entry` IN (23584, 24043, 24064, 24530);
INSERT INTO `skinning_loot_template` VALUES ('70067', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70067', '21887', '0', '1', '1', '3', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70160 WHERE `entry` IN (16992, 16950, 16879, 17401, 18464, 18465, 16863, 16880);
INSERT INTO `skinning_loot_template` VALUES ('70160', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70160', '25649', '0', '1', '1', '1', '0', '0', '0'),('70160', '21887', '25', '1', '1', '1', '0', '0', '0'),('70160', '25707', '5', '1', '1', '1', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70161 WHERE `entry` IN (18884, 19852, 20557, 21108, 22255, 23219, 20557, 19980);
INSERT INTO `skinning_loot_template` VALUES ('70161', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70161', '25649', '0', '1', '1', '3', '0', '0', '0'),('70161', '21887', '40', '1', '1', '1', '0', '0', '0'),('70161', '25707', '15', '1', '1', '1', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70162 WHERE `entry` IN (18605, 16176, 16177, 16178, 18642, 20866, 20906, 21102, 22303, 22394, 23353);
INSERT INTO `skinning_loot_template` VALUES ('70162', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70162', '25649', '0', '1', '1', '4', '0', '0', '0'),('70162', '21887', '40', '1', '1', '3', '0', '0', '0'),('70162', '25707', '15', '1', '1', '1', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70163 WHERE `entry` IN (20283, 21854, 19730, 18463, 19706, 20280, 19349, 18648, 20279, 19350, 19189, 16933, 16934, 21816, 18461, 19729, 16932);
INSERT INTO `skinning_loot_template` VALUES ('70163', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70163', '25649', '0', '1', '1', '1', '0', '0', '0'),('70163', '25700', '20', '1', '1', '1', '0', '0', '0'),('70163', '21887', '15', '1', '1', '1', '0', '0', '0'),('70163', '25699', '10', '1', '1', '1', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70164 WHERE `entry` IN (20607, 22180, 20987, 22187, 20783, 20925, 20924, 22175);
INSERT INTO `skinning_loot_template` VALUES ('70164', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70164', '25649', '0', '1', '1', '3', '0', '0', '0'),('70164', '21887', '0', '1', '1', '1', '0', '0', '0'),('70164', '25700', '20', '1', '1', '1', '0', '0', '0'),('70164', '25699', '20', '1', '1', '1', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70165 WHERE `entry` IN (23267, 23169, 23326, 23285, 23269, 23264);
INSERT INTO `skinning_loot_template` VALUES ('70165', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70165', '32470', '33', '1', '1', '1', '0', '0', '0'),('70165', '21887', '0', '1', '1', '1', '0', '0', '0'),('70165', '25649', '0', '1', '2', '3', '0', '0', '0'),('70165', '25699', '7', '1', '1', '1', '0', '0', '0'),('70165', '25700', '3', '1', '1', '1', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70166 WHERE `entry` IN (18205, 19183);
INSERT INTO `skinning_loot_template` VALUES ('70166', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70166', '25649', '0', '1', '1', '1', '0', '0', '0'),('70166', '21887', '25', '1', '1', '1', '0', '0', '0'),('70166', '25708', '10', '1', '1', '1', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70167 WHERE `entry` IN (17133, 17132, 21802, 22287);
INSERT INTO `skinning_loot_template` VALUES ('70167', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70167', '25649', '0', '1', '1', '3', '0', '0', '0'),('70167', '21887', '30', '1', '1', '1', '0', '0', '0'),('70167', '25708', '30', '1', '1', '1', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70168 WHERE `entry` IN (23020, 23026, 19784);
INSERT INTO `skinning_loot_template` VALUES ('70168', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70168', '25649', '0', '1', '1', '3', '0', '0', '0'),('70168', '21887', '0', '1', '1', '1', '0', '0', '0'),('70168', '29539', '10', '1', '1', '1', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70169 WHERE `entry` IN (21123, 20502, 20749, 20673);
INSERT INTO `skinning_loot_template` VALUES ('70169', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70169', '25649', '0', '1', '1', '3', '0', '0', '0'),('70169', '21887', '0', '1', '1', '1', '0', '0', '0'),('70169', '29547', '20', '1', '1', '1', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70170 WHERE `entry` IN (23834);
INSERT INTO `skinning_loot_template` VALUES ('70170', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70170', '21887', '0', '1', '1', '3', '0', '0', '0'),('70170', '29547', '25', '1', '1', '2', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70171 WHERE `entry` IN (21648, 21721, 18692, 20332, 21032, 18877, 21004, 21722, 20021, 21389);
INSERT INTO `skinning_loot_template` VALUES ('70171', '35229', '-25', '0', '1', '1', '0', '0', '0'),('70171', '25649', '0', '1', '1', '3', '0', '0', '0'),('70171', '21887', '0', '1', '1', '1', '0', '0', '0'),('70171', '29548', '30', '1', '1', '1', '0', '0', '0');
UPDATE `creature_template` SET `skinloot`=70172 WHERE `entry` IN (15689);
INSERT INTO `skinning_loot_template` VALUES ('70172', '25649', '0', '1', '1', '3', '0', '0', '0'),('70172', '21887', '0', '1', '1', '1', '0', '0', '0'),('70172', '29548', '40', '1', '1', '1', '0', '0', '0');

--
-- GO TEMP
--

-- Spell focus GO and spawn (do NOT edit GUID's)
INSERT IGNORE INTO `gameobject_template` VALUES (300155, 8, 0, 'TEMP Ley Lines of Quel\'Danas', '', 0, 0, 1, 1481, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT IGNORE INTO `gameobject_template` VALUES (300156, 8, 0, 'TEMP Legion Teleporter', '', 0, 0, 1, 1484, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT IGNORE INTO `gameobject_template` VALUES (300157, 8, 0, 'TEMP Shattered Sun Portal', '', 0, 0, 1, 1501, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

INSERT IGNORE INTO `gameobject` VALUES (49854, 300154, 530, 1,'12664.6','-6986.06','15.6079','4.85554','0','0','0.654728','-0.755865',25,0,1);
INSERT IGNORE INTO `gameobject` VALUES (49853, 300155, 530, 1,'12181.2','-7337.85','4.19741','3.34836','0','0','0.994660','-0.103201',25,0,1);
INSERT IGNORE INTO `gameobject` VALUES (49852, 300155, 530, 1,'12579.0','-6915.97','4.60172','3.15358','0','0','0.999982','-0.00599564',25,0,1);
INSERT IGNORE INTO `gameobject` VALUES (49851, 300155, 530, 1,'12776.8','-6701.73','1.25949','3.58398','0','0','0.975636','-0.219396',25,0,1);
INSERT IGNORE INTO `gameobject` VALUES (49850, 300156, 530, 1,'12579.0','-6915.97','4.60172','3.15358','0','0','0.999982','-0.00599564',25,0,1);

--
-- GO GUID (move this)
--

INSERT IGNORE INTO `gameobject` VALUES (6781, 182164, 530, 1,'1177.66','8128.57','19.7800','1.48833','0','0','0.677358','0.735654',-180,0,1);
DELETE FROM `event_scripts` WHERE `id`=11424;
INSERT IGNORE INTO `event_scripts` VALUES (11424,1,9,6781,180,'',0,0,0,0);
INSERT IGNORE INTO `event_scripts` VALUES (11424,5,10,18152,10800,'','1176.53','8130.83','20.13','1.86');

INSERT IGNORE INTO `creature` VALUES (566, 25156, 530, 1, 19595, 0, 12583.3, -6915.94, 4.68467, 2.72271, 200, 0, 0, 1, 0, 0, 0);
INSERT IGNORE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (566, 0, 16777472, 0, 4097, 0, 0, '23196 0');
INSERT IGNORE INTO `creature` VALUES (567, 25154, 530, 1, 19595, 0, 12181.8, -7337.81, 3.678, 5.5676, 200, 0, 0, 1, 0, 0, 0);
INSERT IGNORE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (567, 0, 16777472, 0, 4097, 0, 0, '23196 0');
INSERT IGNORE INTO `creature` VALUES (684, 25157, 530, 1, 19595, 0, 12776.7, -6701.83, 1.3041, 4.7822, 200, 0, 0, 1, 0, 0, 0);
INSERT IGNORE INTO `creature_addon` (`guid`, `mount`, `bytes0`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) VALUES (684, 0, 16777472, 0, 4097, 0, 0, '23196 0');

-- nf end

-- triddy start
-- WORLD PROFESSION DROPS(THX TO NOFANTASY)
DROP TABLE IF EXISTS `loot`;
DROP TABLE IF EXISTS `lootcreatures`;
CREATE TABLE loot ( lootid int(10) unsigned not null default 0 );
CREATE TABLE lootcreatures ( entry int(10) unsigned not null default 0 );
-- ALTER TABLE `creature_template` DROP INDEX `lootid_idx`;
-- ALTER TABLE `creature_loot_template` DROP INDEX `entry_idx`;
ALTER TABLE `loot` ADD INDEX `loot_idx` ( lootid );
ALTER TABLE `lootcreatures` ADD INDEX `lootcreatures_idx` ( entry );
ALTER TABLE `creature_template` ADD INDEX `lootid_idx` ( lootid );
ALTER TABLE `creature_loot_template` ADD INDEX `entry_idx` ( entry );

-- 350-364 skill level
REPLACE INTO loot VALUES
(31876),(24193),(24168),(24192),(24203),(24219),(24164),(24194),(24217),(24169),(24198),(24206),(24216),(24211),(31875),(31877),(24213),(24220),(24167),(24215),(24201),(24214),(24218),(24205),(24212),(24196),(24210),(24204),(24199),(24209),(24200),(24202),(24197),(24195),(24207),(24166),(31878),(31879),(28280),(28279),(24298),(24297),(24300),(24299),(24296),(24301),(22541),(22557),(22553),(22558),(29714),(22914),(22919),(22913),(22912);

REPLACE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

REPLACE INTO `creature_loot_template` SELECT DISTINCT 80092 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`, 0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

REPLACE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80092 As `item`, 0.5 AS `ChanceOrQuestChance`,1 AS `group`,-80092 AS `mincountOrRef`, 1 AS `maxcount`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

-- 365-375 skill level
INSERT IGNORE INTO loot VALUES
(24304),(29724),(29723),(29730),(24303),(29727),(29726),(29729),(24307),(29733),(29732),(24305),(29734),(24302),(24306),(29725),(29728),(29731),(23626),(23628),(23627),(23636),(23635),(23631),(23634),(23620),(23629),(23632),(23621),(33954),(23637),(23624),(23630),(23625),(23633),(23622),(23623),(24165),(25906),(24171),(25907),(24170),(25909),(25905),(32411),(23802),(22926);

REPLACE INTO `lootcreatures` (`entry`) SELECT DISTINCT `creature_loot_template`.`entry` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

REPLACE INTO `creature_loot_template` SELECT DISTINCT 80093 AS `entry`, `item`, 0 AS `ChanceOrQuestChance`,1 AS `group`,1 AS `mincountOrRef`, 1 AS `maxcount`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` ORDER BY `creature_loot_template`.`entry`;

DELETE `creature_loot_template`.* FROM `creature_loot_template` INNER JOIN `loot` ON `creature_loot_template`.`item` = `loot`.`lootid` WHERE `creature_loot_template`.`entry` < 80000;

REPLACE INTO `creature_loot_template` SELECT `lootcreatures`.`entry`, 80093 As `item`, 0.5 AS `ChanceOrQuestChance`,1 AS `group`,-80093 AS `mincountOrRef`, 1 AS `maxcount`,0 AS`lootcondition`,0 AS`condition_value1`,0 AS `condition_value2` FROM `lootcreatures` ORDER BY `lootcreatures`.`entry`;

TRUNCATE TABLE `loot`;
TRUNCATE TABLE `lootcreatures`;

DROP TABLE `loot`;
DROP TABLE `lootcreatures`;
ALTER TABLE `creature_template` DROP INDEX `lootid_idx`;
ALTER TABLE `creature_loot_template` DROP INDEX `entry_idx`;


-- Entropius(M'uru Loot Mob)
REPLACE INTO creature_loot_template VALUES
(90095, 34231, 0, 1, 1, 1, 0, 0, 0), -- M'uru/Entropius Unique
(90095, 34214, 0, 1, 1, 1, 0, 0, 0),
(90095, 34216, 0, 1, 1, 1, 0, 0, 0),
(90095, 34215, 0, 1, 1, 1, 0, 0, 0),
(90095, 34240, 0, 1, 1, 1, 0, 0, 0),
(90095, 34228, 0, 1, 1, 1, 0, 0, 0),
(90095, 34229, 0, 1, 1, 1, 0, 0, 0),
(90095, 34211, 0, 1, 1, 1, 0, 0, 0),
(90095, 34234, 0, 1, 1, 1, 0, 0, 0),
(90095, 34232, 0, 1, 1, 1, 0, 0, 0),
(90095, 34233, 0, 1, 1, 1, 0, 0, 0),
(90095, 34213, 0, 1, 1, 1, 0, 0, 0),
(90095, 34230, 0, 1, 1, 1, 0, 0, 0),
(90095, 34427, 0, 1, 1, 1, 0, 0, 0),
(90095, 34428, 0, 1, 1, 1, 0, 0, 0),
(90095, 34429, 0, 1, 1, 1, 0, 0, 0),
(90095, 34430, 0, 1, 1, 1, 0, 0, 0),
(25840, 90095, 100, 1, -90095, 3, 0, 0, 0), -- 3 drops
(25840, 35282, 0, 1, 1, 1, 0, 0, 0), -- One Sin'dorei Ring
(25840, 35283, 0, 1, 1, 1, 0, 0, 0),
(25840, 35284, 0, 1, 1, 1, 0, 0, 0),
(25840, 34664, 40, 0, 1, 1, 0, 0, 0), -- Sunmote
(25840, 29434, 100, 0, 2, 2, 0, 0, 0); -- 2 Badges of Justice

-- Gold/lootid update
UPDATE `creature_template` SET `mingold` = 2250000, `maxgold` = 2750000, `lootid`=25840 WHERE `entry` = 25840;

-- Kil'jaeden
REPLACE INTO creature_loot_template VALUES
(90096, 34341, 0, 1, 1, 1, 0, 0, 0), -- Kil'jaeden Unique
(90096, 34241, 0, 1, 1, 1, 0, 0, 0),
(90096, 34333, 0, 1, 1, 1, 0, 0, 0),
(90096, 34245, 0, 1, 1, 1, 0, 0, 0),
(90096, 34332, 0, 1, 1, 1, 0, 0, 0),
(90096, 34339, 0, 1, 1, 1, 0, 0, 0),
(90096, 34345, 0, 1, 1, 1, 0, 0, 0),
(90096, 34340, 0, 1, 1, 1, 0, 0, 0),
(90096, 34244, 0, 1, 1, 1, 0, 0, 0),
(90096, 34344, 0, 1, 1, 1, 0, 0, 0),
(90096, 34342, 0, 1, 1, 1, 0, 0, 0),
(90096, 34243, 0, 1, 1, 1, 0, 0, 0),
(90096, 34242, 0, 1, 1, 1, 0, 0, 0),
(90096, 34343, 0, 1, 1, 1, 0, 0, 0),
(25315, 90096, 100, 1, -90096, 3, 0, 0, 0), -- 3 drops
(25315, 34334, 3, 1, 1, 1, 0, 0, 0), -- One Weapon
(25315, 34247, 0, 1, 1, 1, 0, 0, 0),
(25315, 34329, 0, 1, 1, 1, 0, 0, 0),
(25315, 34337, 0, 1, 1, 1, 0, 0, 0),
-- (25315, 34335, 0, 1, 1, 1, 0, 0, 0),
(25315, 34331, 0, 1, 1, 1, 0, 0, 0),
(25315, 34336, 0, 1, 1, 1, 0, 0, 0),
(25315, 34664, 100, 0, 1, 1, 0, 0, 0), -- Sunmote
(25315, 29434, 100, 0, 3, 3, 0, 0, 0); -- 3 Badges of Justice

-- Gold/lootid update
UPDATE `creature_template` SET `mingold` = 2250000, `maxgold` = 2750000, `lootid`=25315 WHERE `entry` = 25315;

-- Couple forum fixes
-- Bear Flank added to proper mobs
REPLACE INTO `creature_loot_template` VALUES
(8958, 35562, 15, 0, 1, 1, 0, 0, 0),
(10806, 35562, 15, 0, 1, 1, 0, 0, 0),
(7445, 35562, 15, 0, 1, 1, 0, 0, 0),
(8956, 35562, 15, 0, 1, 1, 0, 0, 0),
(8957, 35562, 15, 0, 1, 1, 0, 0, 0),
(7443, 35562, 15, 0, 1, 1, 0, 0, 0),
(7444, 35562, 15, 0, 1, 1, 0, 0, 0),
(1815, 35562, 15, 0, 1, 1, 0, 0, 0),
(1816, 35562, 15, 0, 1, 1, 0, 0, 0),
(5274, 35562, 15, 0, 1, 1, 0, 0, 0),
(14344, 35562, 15, 0, 1, 1, 0, 0, 0);

-- Remove a faulty lootid
UPDATE `creature_template` SET `lootid`=0 WHERE `entry`=13743;

-- triddy end


-- seph


-- random
-- now i have to again clean your useless edits...
update gameobject_template set data10=45371 where entry=187428;
update gameobject_template set data10=45368 where entry=187431;
delete from `spell_teleport` where id in (45368, 45371);
insert ignore into `spell_teleport` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) values('45368','530','12780.9','-6877.75','22.7848','5.4705');
insert ignore into `spell_teleport` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) values('45371','530','12792.9','-6893.95','30.8979','5.443');


-- wdb

-- sd2

-- acid 0.0.2 r14
UPDATE creature_template SET ScriptName='mob_eventai' WHERE entry IN (6,30,38,40,43,46,60,61,79,80,94,97,99,100,103,113,116,119,257,295,299,327,330,390,448,471,473,474,475,476,478,524,583,732,881,2044,6846,6866,6927);


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
INSERT IGNORE INTO `db_version` VALUES ('UDB 0.10.2 (355) for MaNGOS rev. 6153 with SD2 SQL for rev. 452');
-- END
