-- Should only drop one item per kill
UPDATE creature_loot_template SET mincountOrRef=1,maxcount=1 WHERE entry IN(9683) AND item IN(11509);
