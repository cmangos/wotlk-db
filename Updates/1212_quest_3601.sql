-- Improve drop chance of objectives for q.3601 'Kim'jael Indeed!'
UPDATE gameobject_loot_template SET ChanceOrQuestChance=-25 WHERE item IN (10717,10715,10722,10718);
