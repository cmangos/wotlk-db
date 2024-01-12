-- Improve Loot for Fel Iron Deposit / Adamantite Deposit (181555,181556,181569,181570) - wotlk only
-- Resolves https://github.com/cmangos/issues/issues/3612
UPDATE `gameobject_loot_template` SET `maxcount` = 2 WHERE `entry` = 18359 AND `item` = 35229; -- Nether Residue
UPDATE `gameobject_loot_template` SET `maxcount` = 4 WHERE `entry` = 18359 AND `item` = 23424; -- Fel Iron Ore

UPDATE `gameobject_loot_template` SET `maxcount` = 2 WHERE `entry` = 18361 AND `item` = 35229; -- Nether Residue
UPDATE `gameobject_loot_template` SET `mincountorref` = 2, `maxcount` = 8 WHERE `entry` = 18361 AND `item` = 22573; -- Mote of Earth
UPDATE `gameobject_loot_template` SET `maxcount` = 4 WHERE `entry` = 26861 AND `item` = 23425; -- Adamantite Ore

DELETE FROM `gameobject_loot_template` WHERE `entry` = 26861;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(26861, 22573, 20, 0, 2, 8, 0, 'Mote of Earth'),
(26861, 23425, 100, 0, 1, 7, 0, 'Adamantite Ore'),
(26861, 23427, 10, 0, 1, 3, 0, 'Eternium Ore'),
(26861, 35229, -25, 0, 1, 4, 0, 'Nether Residue'),
(26861, 12004, 1, 1, -12004, 1, 0, 'Uncommon & Rare Gem - TBC'),
(26861, 1, 2, 2, -12004, 1, 0, 'Uncommon & Rare Gem - TBC'),
(26861, 2, 2, 2, -12004, 1, 0, 'Uncommon & Rare Gem - TBC');

