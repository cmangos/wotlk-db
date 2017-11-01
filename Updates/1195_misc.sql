-- Stormwind Soldier - The Stair of Destiny
UPDATE creature SET equipment_id=0 WHERE id=18948;

-- Eroded Leather Case
-- Starts quest: Missing Missive (9373)
-- does not drop currently as it requires 9373
UPDATE creature_loot_template SET ChanceOrQuestChance=10 WHERE item=23338;
