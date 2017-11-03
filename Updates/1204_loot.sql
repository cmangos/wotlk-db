-- Problem: The centaur in 1k needles are dropping the Cloven Hoof(I:5869) quest item for the quest The Sacred Flame(Q:1197). 
-- This shouldn't drop from mobs, it should only be receivable from the Ancient Brazier(GO:20807).
-- Solution: Removed Item from creature's loot table.

DELETE FROM `creature_loot_template` WHERE `entry`=4095 AND `item`=5869;
DELETE FROM `creature_loot_template` WHERE `entry`=4097 AND `item`=5869;
DELETE FROM `creature_loot_template` WHERE `entry`=4099 AND `item`=5869;
DELETE FROM `creature_loot_template` WHERE `entry`=7404 AND `item`=5869;
