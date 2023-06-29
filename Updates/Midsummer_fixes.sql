-- Midsummer festival fixes
-- Alliance Bonfire [quest assignment fixes]
DELETE FROM `gameobject_questrelation` WHERE `id` = 187559 AND `quest` = 11732;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 187559 AND `quest` = 11732;
UPDATE quest_template SET OfferRewardText = 'Desecrate the Alliance''s Arathi Highlands bonfire!' WHERE entry = 11732;
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 11732;

DELETE FROM `gameobject_questrelation` WHERE `id` = 187564 AND `quest` = 11745;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 187564 AND `quest` = 11745;

DELETE FROM `gameobject_questrelation` WHERE `id` = 194044 AND `quest` = 11746;

DELETE FROM `gameobject_questrelation` WHERE `id` = 187564 AND `quest` = 11749;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 187564 AND `quest` = 11749;

DELETE FROM `gameobject_questrelation` WHERE `id` = 187559 AND `quest` = 11755;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 187559 AND `quest` = 11755;

DELETE FROM `gameobject_questrelation` WHERE `id` = 194032 AND `quest` = 13440;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 194032 AND `quest` = 13440;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (194032, 13440);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (194032, 13440);
UPDATE `gameobject_template` SET `ScriptName` = 'go_midsummer_bonfire' WHERE `entry` = 194032;

DELETE FROM `gameobject_questrelation` WHERE `id` = 194035 AND `quest` = 13442;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 194035 AND `quest` = 13442;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (194035, 13442);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (194035, 13442);
UPDATE `gameobject_template` SET `ScriptName` = 'go_midsummer_bonfire' WHERE `entry` = 194035;

DELETE FROM `gameobject_questrelation` WHERE `id` = 194036 AND `quest` = 13443;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 194036 AND `quest` = 13443;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (194036, 13443);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (194036, 13443);
UPDATE `gameobject_template` SET `ScriptName` = 'go_midsummer_bonfire' WHERE `entry` = 194036;

DELETE FROM `gameobject_questrelation` WHERE `id` = 194038 AND `quest` = 13444;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 194038 AND `quest` = 13444;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (194038, 13444);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (194038, 13444);
UPDATE `gameobject_template` SET `ScriptName` = 'go_midsummer_bonfire' WHERE `entry` = 194038;

DELETE FROM `gameobject_questrelation` WHERE `id` = 194040 AND `quest` = 13445;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 194040 AND `quest` = 13445;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (194040, 13445);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (194040, 13445);
UPDATE `gameobject_template` SET `ScriptName` = 'go_midsummer_bonfire' WHERE `entry` = 194040;

DELETE FROM `gameobject_questrelation` WHERE `id` = 194044 AND `quest` = 13446;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 194044 AND `quest` = 13446;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (194044, 13446);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (194044, 13446);
UPDATE `gameobject_template` SET `ScriptName` = 'go_midsummer_bonfire' WHERE `entry` = 194044;

DELETE FROM `gameobject_questrelation` WHERE `id` = 194045 AND `quest` = 13447;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 194045 AND `quest` = 13447;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (194045, 13447);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (194045, 13447);
UPDATE `gameobject_template` SET `ScriptName` = 'go_midsummer_bonfire' WHERE `entry` = 194045;

DELETE FROM `gameobject_questrelation` WHERE `id` = 194049 AND `quest` = 13449;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 194049 AND `quest` = 13449;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (194049, 13449);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (194049, 13449);
UPDATE `gameobject_template` SET `ScriptName` = 'go_midsummer_bonfire' WHERE `entry` = 194049;


-- Horde Bonfire [quest assignment fixes]
DELETE FROM `gameobject_questrelation` WHERE `id` = 187559 AND `quest` = 11766;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 187559 AND `quest` = 11766;

DELETE FROM `gameobject_questrelation` WHERE `id` = 187559 AND `quest` = 11786;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 187559 AND `quest` = 11786;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 187974 AND `quest` = 11786;
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (187974, 11786);

DELETE FROM `gameobject_questrelation` WHERE `id` = 194033 AND `quest` = 13441;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 194033 AND `quest` = 13441;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (194033, 13441);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (194033, 13441);
UPDATE `gameobject_template` SET `ScriptName` = 'go_midsummer_bonfire' WHERE `entry` = 194033;

DELETE FROM `gameobject_questrelation` WHERE `id` = 194034 AND `quest` = 13450;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 194034 AND `quest` = 13450;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (194034, 13450);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (194034, 13450);
UPDATE `gameobject_template` SET `ScriptName` = 'go_midsummer_bonfire' WHERE `entry` = 194034;

DELETE FROM `gameobject_questrelation` WHERE `id` = 194037 AND `quest` = 13451;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 194037 AND `quest` = 13451;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (194037, 13451);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (194037, 13451);
UPDATE `gameobject_template` SET `ScriptName` = 'go_midsummer_bonfire' WHERE `entry` = 194037;

DELETE FROM `gameobject_questrelation` WHERE `id` = 194039 AND `quest` = 13453;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 194039 AND `quest` = 13453;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (194039, 13453);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (194039, 13453);
UPDATE `gameobject_template` SET `ScriptName` = 'go_midsummer_bonfire' WHERE `entry` = 194039;

DELETE FROM `gameobject_questrelation` WHERE `id` = 194042 AND `quest` = 13454;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 194042 AND `quest` = 13454;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (194042, 13454);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (194042, 13454);
UPDATE `gameobject_template` SET `ScriptName` = 'go_midsummer_bonfire' WHERE `entry` = 194042;

DELETE FROM `gameobject_questrelation` WHERE `id` = 194043 AND `quest` = 13455;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 194043 AND `quest` = 13455;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (194043, 13455);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (194043, 13455);
UPDATE `gameobject_template` SET `ScriptName` = 'go_midsummer_bonfire' WHERE `entry` = 194043;

DELETE FROM `gameobject_questrelation` WHERE `id` = 194046 AND `quest` = 13457;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 194046 AND `quest` = 13457;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (194046, 13457);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (194046, 13457);
UPDATE `gameobject_template` SET `ScriptName` = 'go_midsummer_bonfire' WHERE `entry` = 194046;

DELETE FROM `gameobject_questrelation` WHERE `id` = 194048 AND `quest` = 13458;
DELETE FROM `gameobject_involvedrelation` WHERE `id` = 194048 AND `quest` = 13458;
INSERT INTO `gameobject_questrelation` (`id`, `quest`) VALUES (194048, 13458);
INSERT INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (194048, 13458);
UPDATE `gameobject_template` SET `ScriptName` = 'go_midsummer_bonfire' WHERE `entry` = 194048;

-- ------------------------------------------------------------------ --

-- Honor the Flame (Northrend Quests) [Questgiver/taker + req races added]
DELETE FROM `creature_questrelation` WHERE `id` = 32801 AND `quest` = 13485;
DELETE FROM `creature_involvedrelation` WHERE `id` = 32801 AND `quest` = 13485;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (32801, 13485);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (32801, 13485);
UPDATE `quest_template` SET `RequiredRaces` = 1101 WHERE `entry` = 13485;

DELETE FROM `creature_questrelation` WHERE `id` = 32802 AND `quest` = 13486;
DELETE FROM `creature_involvedrelation` WHERE `id` = 32802 AND `quest` = 13486;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (32802, 13486);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (32802, 13486);
UPDATE `quest_template` SET `RequiredRaces` = 1101 WHERE `entry` = 13486;

DELETE FROM `creature_questrelation` WHERE `id` = 32803 AND `quest` = 13487;
DELETE FROM `creature_involvedrelation` WHERE `id` = 32803 AND `quest` = 13487;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (32803, 13487);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (32803, 13487);
UPDATE `quest_template` SET `RequiredRaces` = 1101 WHERE `entry` = 13487;

DELETE FROM `creature_questrelation` WHERE `id` = 32804 AND `quest` = 13488;
DELETE FROM `creature_involvedrelation` WHERE `id` = 32804 AND `quest` = 13488;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (32804, 13488);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (32804, 13488);
UPDATE `quest_template` SET `RequiredRaces` = 1101 WHERE `entry` = 13488;

DELETE FROM `creature_questrelation` WHERE `id` = 32805 AND `quest` = 13489;
DELETE FROM `creature_involvedrelation` WHERE `id` = 32805 AND `quest` = 13489;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (32805, 13489);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (32805, 13489);
UPDATE `quest_template` SET `RequiredRaces` = 1101 WHERE `entry` = 13489;

DELETE FROM `creature_questrelation` WHERE `id` = 32806 AND `quest` = 13490;
DELETE FROM `creature_involvedrelation` WHERE `id` = 32806 AND `quest` = 13490;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (32806, 13490);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (32806, 13490);
UPDATE `quest_template` SET `RequiredRaces` = 1101 WHERE `entry` = 13490;

DELETE FROM `creature_questrelation` WHERE `id` = 32807 AND `quest` = 13491;
DELETE FROM `creature_involvedrelation` WHERE `id` = 32807 AND `quest` = 13491;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (32807, 13491);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (32807, 13491);
UPDATE `quest_template` SET `RequiredRaces` = 1101 WHERE `entry` = 13491;

DELETE FROM `creature_questrelation` WHERE `id` = 32808 AND `quest` = 13492;
DELETE FROM `creature_involvedrelation` WHERE `id` = 32808 AND `quest` = 13492;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (32808, 13492);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (32808, 13492);
UPDATE `quest_template` SET `RequiredRaces` = 1101 WHERE `entry` = 13492;

DELETE FROM `creature_questrelation` WHERE `id` = 32809 AND `quest` = 13493;
DELETE FROM `creature_involvedrelation` WHERE `id` = 32809 AND `quest` = 13493;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (32809, 13493);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (32809, 13493);
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 13493;

DELETE FROM `creature_questrelation` WHERE `id` = 32810 AND `quest` = 13494;
DELETE FROM `creature_involvedrelation` WHERE `id` = 32810 AND `quest` = 13494;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (32810, 13494);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (32810, 13494);
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 13494;

DELETE FROM `creature_questrelation` WHERE `id` = 32811 AND `quest` = 13495;
DELETE FROM `creature_involvedrelation` WHERE `id` = 32811 AND `quest` = 13495;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (32811, 13495);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (32811, 13495);
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 13495;

DELETE FROM `creature_questrelation` WHERE `id` = 32812 AND `quest` = 13496;
DELETE FROM `creature_involvedrelation` WHERE `id` = 32812 AND `quest` = 13496;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (32812, 13496);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (32812, 13496);
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 13496;

DELETE FROM `creature_questrelation` WHERE `id` = 32813 AND `quest` = 13497;
DELETE FROM `creature_involvedrelation` WHERE `id` = 32813 AND `quest` = 13497;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (32813, 13497);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (32813, 13497);
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 13497;

DELETE FROM `creature_questrelation` WHERE `id` = 32814 AND `quest` = 13498;
DELETE FROM `creature_involvedrelation` WHERE `id` = 32814 AND `quest` = 13498;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (32814, 13498);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (32814, 13498);
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 13498;

DELETE FROM `creature_questrelation` WHERE `id` = 32815 AND `quest` = 13499;
DELETE FROM `creature_involvedrelation` WHERE `id` = 32815 AND `quest` = 13499;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (32815, 13499);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (32815, 13499);
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 13499;

DELETE FROM `creature_questrelation` WHERE `id` = 32816 AND `quest` = 13500;
DELETE FROM `creature_involvedrelation` WHERE `id` = 32816 AND `quest` = 13500;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (32816, 13500);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (32816, 13500);
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` = 13500;

