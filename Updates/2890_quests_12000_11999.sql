-- q.11999 'Rifle the Bodies' - A
-- q.12000 'Rifle the Bodies' - H
-- drop chance for q. item reduced to 10%
UPDATE item_loot_template SET ChanceOrQuestChance = -10 WHERE entry = 35792 AND item = 35783;
