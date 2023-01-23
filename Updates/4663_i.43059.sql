-- i.43059 'Drakuru's Last Wish' - Removed from drop list
-- removed in 3.3.2
DELETE FROM gameobject_loot_template WHERE item = 43059;
UPDATE gameobject_loot_template SET ChanceOrQuestChance = -100 WHERE item = 40425;
