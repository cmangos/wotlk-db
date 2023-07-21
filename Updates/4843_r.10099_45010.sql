-- Endgoal is to remove refloot 10099, and give a proper name to 45010.
-- 10099 is used by two items, 46007 (unecessary) and 45986 (incorrectly).
-- Data taken from:
-- https://web.archive.org/web/20100726073506/http://wow.allakhazam.com/db/item.html?witem=46007#Contains_Items
-- https://www.wowhead.com/wotlk/item=46007/bag-of-fishing-treasures#contains
-- https://web.archive.org/web/20100811052645/http://wow.allakhazam.com/db/item.html?witem=45986#Contains_Items
-- https://www.wowhead.com/wotlk/item=45986/tiny-titanium-lockbox#contains
-- Also compared to the historical data in the database

-- WotLK+ only.

-- i.46007 'Bag of Fishing Treasures'
-- Remove current items in loot table
DELETE FROM `item_loot_template` WHERE `entry` = 46007;
-- Fix loot table for i.46007
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(46007, 6522, 48, 0, 2, 4, 0), -- Deviate Fish
(46007, 8827, 21, 0, 2, 3, 0), -- Elixir of Water Walking
(46007, 46006, 21, 0, 1, 1, 0), -- Glow Worm
(46007, 49667, 9, 0, 1, 1, 0), -- Waterlogged Recipe (v3.2.2+)
(46007, 34834, 1, 0, 1, 1, 0), -- Recipe: Captain Rumsey's Lager
(46007, 40195, 42, 1, 3, 5, 0), -- Pygmy Oil
(46007, 33448, 10, 1, 1, 2, 0), -- Runic Mana Potion
(46007, 46004, 4, 1, 1, 1, 0), -- Sealed Vial of Poison
(46007, 45984, 4, 1, 1, 1, 0), -- Unusual Compass
(46007, 33820, 1, 1, 1, 1, 0), -- Weather-Beaten Fishing Hat
(46007, 44983, 1, 1, 1, 1, 0), -- Strand Crawler
(46007, 19971, 0.5, 1, 1, 1, 0), -- High Test Eternium Fishing Line
(46007, 45991, 0.4, 1, 1, 1, 0), -- Bone Fishing Pole
(46007, 45992, 0.4, 1, 1, 1, 0), -- Jeweled Fishing Pole
(46007, 45986, 0.3, 1, 1, 1, 0), -- Tiny Titanium Lockbox
(46007, 45998, 0.2, 1, 1, 1, 0), -- Battered Jungle Hat
(46007, 45861, 0.2, 1, 1, 1, 0), -- Diamond-tipped Cane
(46007, 36783, 5, 1, 1, 3, 0), -- Northsea Pearl
(46007, 36784, 0.9, 1, 1, 1, 0), -- Siren's Tear
(46007, 45883, 0.6, 1, 1, 1, 0), -- Runed Stormjewel
(46007, 45879, 0.4, 1, 1, 1, 0), -- Delicate Stormjewel
(46007, 45862, 0.3, 1, 1, 1, 0), -- Bold Stormjewel
(46007, 45987, 0.3, 1, 1, 1, 0), -- Rigid Stormjewel
(46007, 45880, 0.3, 1, 1, 1, 0), -- Solid Stormjewel
(46007, 45882, 0.11, 1, 1, 1, 0), -- Brilliant Stormjewel
(46007, 45881, 0.09, 1, 1, 1, 0), -- Sparkling Stormjewel
(46007, 45978, 13, 2, 2, 5, 0), -- Solid Gold Coin
(46007, 46361, 5, 2, 2, 2, 0), -- Crafted Star
(46007, 46359, 5, 2, 1, 1, 0), -- Velociraptor Skull
(46007, 46001, 5, 2, 1, 3, 0), -- Worthless Piece of Green Glass
(46007, 46003, 5, 2, 1, 3, 0), -- Worthless Piece of Orange Glass
(46007, 46000, 5, 2, 1, 3, 0), -- Worthless Piece of Red Glass
(46007, 46002, 5, 2, 1, 3, 0), -- Worthless Piece of Violet Glass
(46007, 45999, 5, 2, 1, 3, 0), -- Worthless Piece of White Glass
(46007, 54469, 4, 2, 1, 1, 0), -- Blank Slate
(46007, 54470, 4.5, 2, 1, 1, 0), -- Fantasy Portrait
(46007, 45981, 4, 2, 1, 1, 0), -- New Age Painting
(46007, 45979, 4.5, 2, 1, 1, 0), -- Tower Key
(46007, 45980, 4, 2, 1, 1, 0), -- Whale Statue
(46007, 45977, 2, 2, 1, 1, 0), -- Porcelain Bell
(46007, 46023, 0.5, 2, 1, 1, 0), -- A Steamy Romance Novel: Northern Exposure
(46007, 46360, 0.5, 2, 1, 1, 0); -- Stuffed Shark Head

-- i.45986 'Tiny Titanium Lockbox'
-- Remove current items in loot table
DELETE FROM `item_loot_template` WHERE `entry` = 45986;
-- Fix loot table for i.45986
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(45986, 11940, 95, 0, 1, 1, 0), -- Sparkly Necklace
(45986, 9355, 80, 1, 1, 2, 0), -- Hoop Earring
(45986, 45010, 100, 2, -45010, 2, 0), -- Rare Gems - WotLK
(45986, 45880, 20, 3, 1, 1, 0), -- Solid Stormjewel
(45986, 45879, 20, 3, 1, 1, 0), -- Delicate Stormjewel
(45986, 45883, 15, 3, 1, 1, 0), -- Runed Stormjewel
(45986, 45862, 10, 3, 1, 1, 0), -- Bold Stormjewel
(45986, 45987, 10, 3, 1, 1, 0), -- Rigid Stormjewel
(45986, 45882, 5, 3, 1, 1, 0), -- Brilliant Stormjewel
(45986, 45881, 3, 3, 1, 1, 0), -- Sparkling Stormjewel
(45986, 45995, 20, 4, 1, 1, 0), -- Forgotten Necklace
(45986, 45994, 22, 4, 1, 1, 0), -- Lost Ring
(45986, 36430, 14, 4, 1, 1, 0), -- Puzzle Ring
(45986, 36429, 10, 4, 1, 1, 0), -- Spur Ring
(45986, 36428, 9, 4, 1, 1, 0), -- Bouquet Ring
(45986, 36444, 5, 4, 1, 1, 0), -- Ice Encrusted Amulet
(45986, 36442, 5, 4, 1, 1, 0), -- Silken Cord Amulet
(45986, 36443, 3, 4, 1, 1, 0), -- Platinum Medallion
(45986, 45859, 2, 4, 1, 1, 0); -- The 5 Ring

-- Remove refloot 10099 as it is unused now
DELETE FROM `reference_loot_template` WHERE `entry` = 10099;
DELETE FROM `reference_loot_template_names` WHERE `entry` = 10099;

-- Not necessary, but here for reference/historical reasons
-- Rebuild refloot 45010
-- DELETE FROM `reference_loot_template` WHERE `entry` = 45010;
-- INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
-- (45010, 36918, 0, 1, 1, 1, 0), -- Scarlet Ruby
-- (45010, 36921, 0, 1, 1, 1, 0), -- Autumn's Glow
-- (45010, 36924, 0, 1, 1, 1, 0), -- Sky Sapphire
-- (45010, 36927, 0, 1, 1, 1, 0), -- Twilight Opal
-- (45010, 36930, 0, 1, 1, 1, 0), -- Monarch Topaz
-- (45010, 36933, 0, 1, 1, 1, 0); -- Forest Emerald

-- Fix refloot 45010 name
DELETE FROM `reference_loot_template_names` WHERE `entry` = 45010;
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(45010, 'Rare Gems - WotLK');

-- Populate item_loot_template with correct names
UPDATE item_loot_template SET comments='';
UPDATE item_loot_template ilt JOIN item_template it ON it.entry = ilt.item AND ilt.MinCountOrRef > 0 SET ilt.comments = CONCAT(ilt.comments, "", it.name);
UPDATE item_loot_template ilt JOIN reference_loot_template_names rltn ON rltn.entry = -ilt.MinCountOrRef AND ilt.MinCountOrRef < 0 SET ilt.comments = CONCAT(ilt.comments, "", rltn.name);

-- Populate reference_loot_template with correct names
UPDATE reference_loot_template SET comments='';
UPDATE reference_loot_template rlt JOIN item_template it ON it.entry = rlt.item AND rlt.MinCountOrRef > 0 SET rlt.comments = CONCAT(rlt.comments, "", it.name);
UPDATE reference_loot_template rlt JOIN reference_loot_template_names rltn ON rltn.entry = -rlt.MinCountOrRef AND rlt.MinCountOrRef < 0 SET rlt.comments = CONCAT(rlt.comments, "", rltn.name);
