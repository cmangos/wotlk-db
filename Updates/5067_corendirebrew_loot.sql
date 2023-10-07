-- https://www.wowhead.com/tbc/npc=23872/coren-direbrew
-- https://www.wowhead.com/wotlk/npc=23872/coren-direbrew
-- https://www.reddit.com/r/classicwow/comments/16xb3iy/insane_has_anyone_else_seen_this/
UPDATE `creature_loot_template` SET `groupid` = 2 WHERE `entry` = 23872 AND `item` IN (49074,49076,49078,49080,49116,49118);
DELETE FROM creature_loot_template WHERE entry = 23872 AND `item` IN (49120,48663,37597,37127,37128,38287,38288,38289,38290,37828,33977,37863);
INSERT INTO creature_loot_template(entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
-- upgraded weapons - https://www.wowhead.com/wotlk/item=37828/great-brewfest-kodo#comments:id=859816 - maybe one grp
(23872,49120, 4, 0, 1, 1, 0, 'Direbrew\'s Bloody Shanker'),
(23872,48663, 4, 0, 1, 1, 0, 'Tankard O\' Terror'),

-- 70s weapons - seemingly not
-- (23872,37597, 4, 0, 1, 1, 0, 'Direbrew\'s Shanker'),
-- 70s trinkets - seemingly not
-- (23872,37127, 10, 1, 1, 1, 0, 'Brightbrew Charm'),
-- (23872,37128, 10, 1, 1, 1, 0, 'Balebrew Charm'),
-- (23872,38287, 20, 1, 1, 1, 0, 'Empty Mug of Direbrew'),
-- (23872,38288, 20, 1, 1, 1, 0, 'Direbrew Hops'),
-- (23872,38289, 20, 1, 1, 1, 0, 'Coren\'s Lucky Coin'),
-- (23872,38290, 20, 1, 1, 1, 0, 'Dark Iron Smoking Pipe'),

-- mounts
(23872,37828, 2, 0, 1, 1, 0, 'Great Brewfest Kodo'),
(23872,33977, 2, 0, 1, 1, 0, 'Swift Brewfest Ram'),
-- remote
(23872,37863, 5, 0, 1, 1, 0, 'Direbrew\'s Remote');

