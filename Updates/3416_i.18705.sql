-- item: Mature Black Dragon Sinew 18705
-- This item also dropped from every black dragon in the Burning Steppes. (Added in around Patch 3.3.5.)
-- All Black Dragons in Burning Steppes - Our drop = 0.02... thats not correct: should be 100% for everyone who has quest.
UPDATE creature_loot_template SET ChanceOrQuestChance = -100 WHERE item = 18705 AND entry NOT IN (10184,36538);
