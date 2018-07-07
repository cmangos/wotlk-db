-- Correct drop rates for i.30596 and i.30649
UPDATE creature_loot_template SET ChanceOrQuestChance = -40 WHERE item IN(30596);

UPDATE creature_loot_template SET ChanceOrQuestChance = -100 WHERE item IN(30649);
