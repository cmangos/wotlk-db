-- Wotlk OMLY
-- Keg-Shaped Treasure Chest 54535
-- loot corrected
DELETE FROM `item_loot_template` WHERE entry = 54535;
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('54535','33977','24','1','1','1','0','Swift Brewfest Ram'),
('54535','37828','24','1','1','1','0','Great Brewfest Kodo'),
('54535','37863','12','1','1','1','0','Direbrew\'s Remote'),
('54535','48663','20','1','1','1','0','Tankard O\' Terror'),
('54535','49120','20','1','1','1','0','Direbrew\'s Bloody Shanker'),
('54535','49426','100','0','2','2','0','Emblem of Frost');