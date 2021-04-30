-- item:35836 'Zim'bo's Mojo'
-- didn't want to drop if other quest item was looted first. (core thinks that quest is completed)
UPDATE creature_loot_template SET ChanceOrQuestChance = 100, groupid = 2, condition_id = 214 WHERE item = 35836;
