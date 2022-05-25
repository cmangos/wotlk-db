-- Ahune midsummer BOSS - updated for 2010
-- Ice Chest corrected for WotLK
DELETE FROM `gameobject_loot_template` WHERE entry=187892;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('187892','34955','1','0','1','1','0','Scorched Stone'), -- around 2010 this was bugged ..later fixed (Cata prob). We want it working fine
('187892','35498','20','0','1','1','0','Formula: Enchant Weapon - Deathfrost'),
('187892','35723','100','0','1','1','0','Shards of Ahune'),
('187892','40403','100','1','-40403','1','0','reference - Slave Pens - Ahune BOSS Loot v3.3.5a'),
('187892','54806','4','0','1','1','0','Frostscythe of Lord Ahune');
-- ref corrected to wotlk data - 2010
DELETE FROM `reference_loot_template` WHERE entry=40403;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('40403','54802','0','1','1','1','0','The Frost Lord\'s War Cloak'),
('40403','54803','0','1','1','1','0','The Frost Lord\'s Battle Shroud'),
('40403','54804','0','1','1','1','0','Shroud of Winter\'s Chill'),
('40403','54805','0','1','1','1','0','Cloak of the Frigid Winds');
UPDATE reference_loot_template SET item = 54806 WHERE entry = 40404; -- weapond updated to ilvl 232
DELETE FROM `reference_loot_template_names` WHERE entry IN (40403,40404,40405); -- 40404 & 40405 removed
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('40403','Slave Pens - Ahune BOSS Loot v3.3.5a');

-- 187892 - players must be able to loot from chest
UPDATE gameobject_template SET Faction=0 WHERE entry=187892;

-- Skarthis the Summoner 40446
UPDATE creature_template SET LootId = 40446, PickPocketLootId = 40446 WHERE entry = 40446;
DELETE FROM `pickpocketing_loot_template` WHERE entry=40446;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('40446','37452','26','0','1','1','0','Fatty Bluefin'),
('40446','38274','25','0','1','1','0','Large Snail Shell'),
('40446','43575','24','0','1','1','0','Reinforced Junkbox'),
('40446','38273','17','0','1','1','0','Brain Coral'),
('40446','33447','7','0','1','1','0','Runic Healing Potion');
DELETE FROM `creature_loot_template` WHERE entry=40446;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('40446','17057','27','0','1','1','0','Shiny Fish Scales'),
('40446','17058','26','0','1','1','0','Fish Oil'),
('40446','33470','21','0','2','7','0','Frostweave Cloth'),
('40446','36781','17','0','1','1','0','Darkwater Clam'),
('40446','43852','12','0','1','1','0','Thick Fur Clothing Scraps'),
('40446','35951','4','0','1','3','0','Poached Emperor Salmon'),
('40446','39152','2','0','1','1','0','Manual: Heavy Frostweave Bandage'),
('40446','33445','1.9','0','1','1','0','Honeymint Tea'),
('40446','26044','0.2','0','-26044','1','0','reference - Cooking Recepies'),
('40446','50606','0.1','0','-50606','1','0','NPC LOOT (White World Drop) - (Item Levels: 80 (Scrolls VII)) - (NPC Levels ?-?)');
