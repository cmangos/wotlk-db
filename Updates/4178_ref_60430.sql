-- add New ref 60430 to all creatures that have it in TDB.
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
('391','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('518','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('573','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('1225','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('1947','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('2172','60430','50','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('2529','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('3251','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('3393','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('3398','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('3452','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('3734','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('3854','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('3859','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('3863','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('3866','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('3868','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('4627','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('5682','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('5763','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('9456','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('15813','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('16247','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('16248','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('16249','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('16250','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('16358','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)'),
('17678','60430','5','0','-60430','1','0','NPC LOOT (White World Drop) - (Item Levels: 21-23) - (NPC Levels: 20)');
-- Remove all listed items from creatures who received new ref.
DELETE FROM `creature_loot_template` WHERE `entry` =391 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =518 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =573 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =1225 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =1947 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =2172 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =2529 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =3251 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =3393 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =3398 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =3452 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =3734 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =3854 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =3859 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =3863 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =3866 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =3868 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =4627 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =5682 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =5763 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =9456 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =15813 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =16247 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =16248 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =16249 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =16250 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =16358 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
DELETE FROM `creature_loot_template` WHERE `entry` =17678 AND `item` IN (
4694,4698,4700,6588,10405,10407,14126,14169,14170,14368,14728,15019,15496,15505);
