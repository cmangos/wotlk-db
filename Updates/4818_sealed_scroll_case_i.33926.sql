-- fix loot table for i.33926 (Sealed Scroll Case)
-- https://web.archive.org/web/20090208155218/http://wow.allakhazam.com/db/item.html?witem=33926#Contains_Items

-- remove refloot since we cannot group refloots
DELETE FROM `item_loot_template` WHERE entry = 33926 AND item = 50604;

-- add all scrolls V/VI individually to Sealed Scroll Case loot table
INSERT INTO `item_loot_template` (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(33926, 27498, 0, 1, 1, 5, 0, 'Scroll of Agility V'),
(33926, 27499, 0, 1, 1, 5, 0, 'Scroll of Intellect V'),
(33926, 27500, 0, 1, 1, 5, 0, 'Scroll of Protection V'),
(33926, 27501, 0, 1, 1, 5, 0, 'Scroll of Spirit V'),
(33926, 27502, 0, 1, 1, 5, 0, 'Scroll of Stamina V'),
(33926, 27503, 0, 1, 1, 5, 0, 'Scroll of Strength V'),
(33926, 33457, 0, 1, 1, 5, 0, 'Scroll of Agility VI'),
(33926, 33458, 0, 1, 1, 5, 0, 'Scroll of Intellect VI'),
(33926, 33459, 0, 1, 1, 5, 0, 'Scroll of Protection VI'),
(33926, 33460, 0, 1, 1, 5, 0, 'Scroll of Spirit VI'),
(33926, 33461, 0, 1, 1, 5, 0, 'Scroll of Stamina VI'),
(33926, 33462, 0, 1, 1, 5, 0, 'Scroll of Strength VI');
