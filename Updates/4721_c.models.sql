-- All models in `creature` removed or relocated
-- Ram 2098
UPDATE creature SET modelid = 0 WHERE guid IN (45769,45773); -- 10000
-- Wisp 3681
UPDATE creature SET modelid = 0 WHERE guid IN (46384); -- 10045
-- Defias Tower Patroller 7052 -- they must have exact model set
UPDATE creature SET modelid = 0 WHERE guid IN (66991); -- 5811
UPDATE creature SET modelid = 0 WHERE guid IN (66988); -- 5809
DELETE FROM `creature_spawn_data` WHERE guid IN (66991,66988);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(66991,9998),
(66988,9997);
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (9998,9997);
INSERT INTO `creature_spawn_data_template` (`entry`, `ModelId`) VALUES
(9998,5811),
(9997,5809);
-- Vol'jin 10540 (new model added in WoTLK)
UPDATE creature SET modelid = 0 WHERE guid IN (3394); -- 31736
DELETE FROM `creature_spawn_data` WHERE guid IN (3394);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(3394,9996);
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (9996);
INSERT INTO `creature_spawn_data_template` (`entry`, `ModelId`) VALUES
(9996,31736);
-- Caer Darrow Citizen 11277
UPDATE creature SET modelid = 0 WHERE guid IN (23698); -- 11014
-- Dwarven Farmer 12998
UPDATE creature SET modelid = 0 WHERE guid IN (45752,44330);
-- Jimmy the Bleeder 14281
UPDATE creature SET modelid = 0 WHERE guid IN (91111); -- 3616
-- Lunar Festival Vendor 15898
UPDATE creature SET modelid = 0 WHERE guid IN (91689); -- 15870
-- Blood Elf Bandit 17591 -- all of them
UPDATE creature SET modelid = 0 WHERE id IN (17591);
-- Purple Ground Rune 18562
UPDATE creature SET modelid = 0 WHERE guid IN (5300029,5300030);
-- Haggard War Veteran 19684
UPDATE creature SET modelid = 0 WHERE guid IN (70177);
-- [DND]Prophecy 1 Quest Credit 22798
UPDATE creature SET modelid = 0 WHERE guid IN (78957);
-- [DND]Prophecy 2 Quest Credit 22799
UPDATE creature SET modelid = 0 WHERE guid IN (78958);
-- [DND]Prophecy 3 Quest Credit 22800
UPDATE creature SET modelid = 0 WHERE guid IN (78959);
-- [DND]Prophecy 4 Quest Credit 22801
UPDATE creature SET modelid = 0 WHERE guid IN (78960);
-- Elder Kesuk 25397
UPDATE creature SET modelid = 0 WHERE guid IN (509164);
-- Elder Sagani 25398
UPDATE creature SET modelid = 0 WHERE guid IN (509165);
-- Elder Takret 25399
UPDATE creature SET modelid = 0 WHERE guid IN (509166);
-- Agmar's Siegesmith 514772
UPDATE creature SET modelid = 0 WHERE guid IN (514772);
-- Risen Gryphon Rider 27268
UPDATE creature SET modelid = 0 WHERE guid IN (517987,517965,517964,517974);
-- Nyuni 28060
UPDATE creature SET modelid = 0 WHERE guid IN (122290);
-- Death Knight Initiate 28390 -- model req for scripred event
UPDATE creature SET modelid = 0 WHERE guid IN (560067);
DELETE FROM `creature_spawn_data` WHERE guid IN (560067);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(560067,20044);
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20044);
INSERT INTO `creature_spawn_data_template` (`entry`, `ModelId`) VALUES
(20044,25361);
-- Cave Explosion Bunny 29999
UPDATE creature SET modelid = 0 WHERE guid IN (526997,526995,527000,526998,526999,526996);
DELETE FROM `creature_spawn_data` WHERE guid IN (526997,526995,527000,526998,526999,526996);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(526997,20045),
(526995,20045),
(527000,20045),
(526998,20045),
(526999,20045),
(526996,20045);
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20045);
INSERT INTO `creature_spawn_data_template` (`entry`, `ModelId`) VALUES
(20045,11686);
-- Webbed Crusader 30268
UPDATE creature SET modelid = 0 WHERE id = 30268;
-- Vol'jin 31649 -- new 3.3.x model
UPDATE creature SET modelid = 0 WHERE guid IN (550000);
DELETE FROM `creature_spawn_data` WHERE guid IN (550000);
INSERT INTO `creature_spawn_data` (`guid`, `id`) VALUES 
(550000,20046);
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20046);
INSERT INTO `creature_spawn_data_template` (`entry`, `ModelId`) VALUES
(20046,31736);
