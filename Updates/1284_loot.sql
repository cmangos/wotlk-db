-- Remove Nefarian loot from Ragnaros
DELETE FROM creature_loot_template WHERE entry IN(11502) AND item=34107 AND mincountOrRef=-34107;
