-- Hollow Vulture Bone for q.1176 'Load Lightning' should always drop
-- http://www.wowhead.com/quest=1176/load-lightening#comments:id=59611
UPDATE creature_loot_template SET ChanceOrQuestChance=-100 WHERE item=5848;
