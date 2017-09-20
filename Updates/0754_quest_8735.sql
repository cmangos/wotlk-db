-- q.8735 'The Nightmare's Corruption'
-- q. item % drop corrected
-- source WowHEAD: (Patch 3.0.2) All the 4 fragments of nightmare's corruption have 100% drop rate now, instead of the excruciating 1%
UPDATE creature_loot_template SET ChanceOrQuestChance = -100 WHERE item IN (21146,21147);
