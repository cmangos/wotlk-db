-- Gesharahan 3398 - loot update 
-- Source: TDB.
DELETE FROM `creature_loot_template` WHERE entry = 3398;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('3398','765','0.12','0','1','1','0','Silverleaf'),
('3398','818','0.12','0','1','1','0','Tigerseye'),
('3398','856','0.75','0','1','1','0','Blue Leather Bag'),
('3398','1206','0.1','0','1','1','0','Moss Agate'),
('3398','1210','0.44','0','1','1','0','Shadowgem'),
('3398','2409','0.12','0','1','1','0','Pattern: Dark Leather Tunic'),
('3398','2770','3.2','0','1','1','0','Copper Ore'),
('3398','2771','0.44','0','1','1','0','Tin Ore'),
('3398','2835','2.32','0','1','1','0','Rough Stone'),
('3398','2836','0.44','0','1','1','0','Coarse Stone'),
('3398','3010','33.9768','0','1','1','0','Fine Sand'),
('3398','4347','0.22','0','1','1','0','Pattern: Reinforced Woolen Shoulders'),
('3398','4874','10.8108','0','1','1','0','Clean Fishbones'),
('3398','5182','75','1','1','1','0','Shiver Blade'),
('3398','5183','25','1','1','1','0','Pulsating Hydra Heart'),
('3398','5498','0.22','0','1','1','0','Small Lustrous Pearl'),
('3398','5523','38.2239','0','1','1','0','Small Barnacled Clam'),
('3398','10316','0.12','0','1','1','0','Pattern: Colorful Kilt'),
('3398','17057','25.0965','0','1','1','0','Shiny Fish Scales'),
('3398','50502','0.3','0','-50502','1','0','NPC LOOT (Green World Drop) - (Item Levels: 10-15 (Profession Recipes)) - (NPC Levels: 6-20)'),
('3398','60200','0.05','0','-60200','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 20) - (NPC Levels: 20)'),
('3398','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)');
-- missing ref added
DELETE FROM `reference_loot_template` WHERE entry = 60430;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('60430','4694','0','1','1','1','0','Burnished Pauldrons'),
('60430','4698','0','1','1','1','0','Seer\'s Mantle'),
('60430','4700','0','1','1','1','0','Inscribed Leather Spaulders'),
('60430','6588','0','1','1','1','0','Scouting Spaulders'),
('60430','10405','0','1','1','1','0','Bandit Shoulders'),
('60430','10407','0','1','1','1','0','Raider\'s Shoulderpads'),
('60430','14126','0','1','1','1','0','Ritual Amice'),
('60430','14169','0','1','1','1','0','Aboriginal Shoulder Pads'),
('60430','14170','0','1','1','1','0','Buccaneer\'s Mantle'),
('60430','14368','0','1','1','1','0','Mystic\'s Shoulder Pads'),
('60430','14728','0','1','1','1','0','War Paint Shoulder Pads'),
('60430','15019','0','1','1','1','0','Lupine Mantle'),
('60430','15496','0','1','1','1','0','Bloodspattered Shoulder Pads'),
('60430','15505','0','1','1','1','0','Outrunner\'s Pauldrons');
DELETE FROM `reference_loot_template_names` WHERE entry = 60430;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
('60430','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)');
