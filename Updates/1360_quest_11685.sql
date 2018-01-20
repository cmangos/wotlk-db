-- q.11685 'The Heart of the Elements'
-- Elemental Heart
-- quest item should have 38% drop chance
UPDATE creature_loot_template SET ChanceOrQuestChance = -38 WHERE item = 34956;
