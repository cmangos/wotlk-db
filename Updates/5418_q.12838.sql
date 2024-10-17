-- q.12838 'Intelligence Gathering'
-- loot corrected
UPDATE gameobject_template SET mingold = 23, maxgold = 23 WHERE entry = 191543;
DELETE FROM gameobject_loot_template WHERE entry IN(25331);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(25331,40640,-35,0,1,1,0,'Onslaught Intel Documents'),
(25331,40666,80,0,1,1,20760,'Note from the Grand Admiral');
DELETE FROM conditions WHERE condition_entry = 20760;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20760,23,40666,1,0,0,1,'');
