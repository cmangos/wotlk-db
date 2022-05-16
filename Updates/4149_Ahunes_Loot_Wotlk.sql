-- Ahune midsummer BOSS - updated for 2010
-- Ice Chest corrected for WotLK
DELETE FROM `gameobject_loot_template` WHERE entry=187892;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('187892','35498','20','0','1','1','0','Formula: Enchant Weapon - Deathfrost'),
('187892','35723','100','0','1','1','0','Shards of Ahune'),
('187892','40403','100','1','-40403','1','0',''),
('187892','40404','5','2','-40404','1','0','Frostscythe of Lord Ahune'),
('187892','40405','1','3','-40405','1','0','Scorched Stone'); -- around 2010 this was bugged ..later fixed (Cata prob). We want it working fine
-- ref corrected to wotlk data - 2010
DELETE FROM `reference_loot_template` WHERE entry=40403;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('40403','54802','0','1','1','1','0','The Frost Lord\'s War Cloak'),
('40403','54803','0','1','1','1','0','The Frost Lord\'s Battle Shroud'),
('40403','54804','0','1','1','1','0','Shroud of Winter\'s Chill'),
('40403','54805','0','1','1','1','0','Cloak of the Frigid Winds');
UPDATE reference_loot_template SET item = 54806 WHERE entry = 40404; -- weapond updated to ilvl 232

-- 187892 - players must be able to loot from chest
UPDATE gameobject_template SET Faction=0 WHERE entry=187892;
