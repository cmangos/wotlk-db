-- Vendor lists added in WoTLKDBv1.8

-- slots will start now from 1 (prev. =0)

-- Roberto Pupellyverbos 277
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 277;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(277,1941,0,0,1,0,0,'Cask of Merlot'),
(277,2723,0,0,2,0,0,'Bottle of Pinot Noir'),
(277,2593,0,0,3,0,0,'Flask of Port'),
(277,2596,0,0,4,0,0,'Skin of Dwarven Stout'),
(277,2594,0,0,5,0,0,'Flagon of Mead'),
(277,2595,0,0,6,0,0,'Jug of Bourbon');

-- Tharynn Bouden 66
-- vendor list corrected
DELETE FROM `npc_vendor` WHERE entry = 66;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `ExtendedCost`, `condition_id`, `comments`) VALUES
(66,6270,1,9000,1,0,0,'Pattern: Blue Linen Vest'),
(66,7005,0,0,2,0,0,'Skinning Knife'),
(66,2901,0,0,3,0,0,'Mining Pick'),
(66,5956,0,0,4,0,0,'Blacksmith Hammer'),
(66,6256,0,0,5,0,0,'Fishing Pole'),
(66,6217,0,0,6,0,0,'Copper Rod'),
(66,2678,0,0,7,0,0,'Mild Spices'),
(66,30817,0,0,8,0,0,'Simple Flour'),
(66,2320,0,0,9,0,0,'Coarse Thread'),
(66,2880,0,0,10,0,0,'Weak Flux'),
(66,3371,0,0,11,0,0,'Empty Vial'),
(66,4289,0,0,12,0,0,'Salt'),
(66,6529,0,0,13,0,0,'Shiny Bauble'),
(66,2604,0,0,14,0,0,'Red Dye'),
(66,2324,0,0,15,0,0,'Bleach'),
(66,6260,0,0,16,0,0,'Blue Dye'),
(66,10648,0,0,17,0,0,'Common Parchment'),
(66,39354,0,0,18,0,0,'Light Parchment'),
(66,6325,0,0,19,0,0,'Recipe: Brilliant Smallfish'),
(66,6328,0,0,20,0,0,'Recipe: Longjaw Mud Snapper');

-- Xen'to 3400
-- Vendor list corrected 
-- 3.3.5 only (he has more items before 3.1)
UPDATE npc_vendor SET Slot = 1 WHERE entry = 3400 AND item = 159; -- Refreshing Spring Water
UPDATE npc_vendor SET Slot = 2 WHERE entry = 3400 AND item = 30817; -- Simple Flour
UPDATE npc_vendor SET Slot = 3 WHERE entry = 3400 AND item = 2678; -- Mild Spices
UPDATE npc_vendor SET Slot = 4 WHERE entry = 3400 AND item = 21099; -- Recipe: Smoked Sagefish
UPDATE npc_vendor SET Slot = 5 WHERE entry = 3400 AND item = 21219; -- Recipe: Sagefish Delight

-- Borstan 3368
-- Vendor list corrected 
UPDATE npc_vendor SET Slot = 1 WHERE entry = 3368 AND item = 117; -- Tough Jerky
UPDATE npc_vendor SET Slot = 2 WHERE entry = 3368 AND item = 2287; -- Haunch of Meat
UPDATE npc_vendor SET Slot = 3 WHERE entry = 3368 AND item = 3770; -- Mutton Chop
UPDATE npc_vendor SET Slot = 4 WHERE entry = 3368 AND item = 3771; -- Wild Hog Shank
UPDATE npc_vendor SET Slot = 5 WHERE entry = 3368 AND item = 4599; -- Cured Ham Steak
UPDATE npc_vendor SET Slot = 6 WHERE entry = 3368 AND item = 8952; -- Roasted Quail
UPDATE npc_vendor SET Slot = 7 WHERE entry = 3368 AND item = 27854; -- Smoked Talbuk Venison
UPDATE npc_vendor SET Slot = 8 WHERE entry = 3368 AND item = 33454; -- Salted Venison
UPDATE npc_vendor SET Slot = 9 WHERE entry = 3368 AND item = 35953; -- Mead Basted Caribou

-- Glyx Brewright 2848
-- Vendor list corrected 
UPDATE npc_vendor SET Slot = 1 WHERE entry = 2848 AND item = 3371; -- Empty Vial
UPDATE npc_vendor SET Slot = 2 WHERE entry = 2848 AND item = 3372; -- Leaded Vial
UPDATE npc_vendor SET Slot = 3 WHERE entry = 2848 AND item = 8925; -- Crystal Vial
UPDATE npc_vendor SET Slot = 4 WHERE entry = 2848 AND item = 18256; -- Imbued Vial
UPDATE npc_vendor SET Slot = 5 WHERE entry = 2848 AND item = 40411; -- Enchanted Vial
UPDATE npc_vendor SET Slot = 6 WHERE entry = 2848 AND item = 1710; -- Greater Healing Potion
UPDATE npc_vendor SET Slot = 7 WHERE entry = 2848 AND item = 3827; -- Mana Potion
UPDATE npc_vendor SET Slot = 8 WHERE entry = 2848 AND item = 6056; -- Recipe: Frost Protection Potion
UPDATE npc_vendor SET Slot = 9 WHERE entry = 2848 AND item = 6057; -- Recipe: Nature Protection Potion

-- TRANSPORT VENDORS
UPDATE npc_vendor_template SET Slot = 1  WHERE entry IN (10000) AND item = 7005; -- Skinning Knife
UPDATE npc_vendor_template SET Slot = 2  WHERE entry IN (10000) AND item = 6256; -- Fishing Pole
UPDATE npc_vendor_template SET Slot = 3  WHERE entry IN (10000) AND item = 2901; -- Mining Pick
UPDATE npc_vendor_template SET Slot = 4  WHERE entry IN (10000) AND item = 5956; -- Blacksmith Hammer
UPDATE npc_vendor_template SET Slot = 5  WHERE entry IN (10000) AND item = 6217; -- Copper Rod
UPDATE npc_vendor_template SET Slot = 6  WHERE entry IN (10000) AND item = 2320; -- Coarse Thread
UPDATE npc_vendor_template SET Slot = 7  WHERE entry IN (10000) AND item = 2321; -- Fine Thread
UPDATE npc_vendor_template SET Slot = 8  WHERE entry IN (10000) AND item = 4291; -- Silken Thread
UPDATE npc_vendor_template SET Slot = 9  WHERE entry IN (10000) AND item = 8343; -- Heavy Silken Thread
UPDATE npc_vendor_template SET Slot = 10 WHERE entry IN (10000) AND item = 14341; -- Rune Thread
UPDATE npc_vendor_template SET Slot = 11 WHERE entry IN (10000) AND item = 2678; -- Mild Spices
UPDATE npc_vendor_template SET Slot = 12 WHERE entry IN (10000) AND item = 2880; -- Weak Flux
UPDATE npc_vendor_template SET Slot = 13 WHERE entry IN (10000) AND item = 3466; -- Strong Flux
UPDATE npc_vendor_template SET Slot = 14 WHERE entry IN (10000) AND item = 3857; -- Coal
UPDATE npc_vendor_template SET Slot = 15 WHERE entry IN (10000) AND item = 2324; -- Bleach
UPDATE npc_vendor_template SET Slot = 16 WHERE entry IN (10000) AND item = 2604; -- Red Dye
UPDATE npc_vendor_template SET Slot = 17 WHERE entry IN (10000) AND item = 2325; -- Black Dye
UPDATE npc_vendor_template SET Slot = 18 WHERE entry IN (10000) AND item = 4341; -- Yellow Dye
UPDATE npc_vendor_template SET Slot = 19 WHERE entry IN (10000) AND item = 4342; -- Purple Dye
UPDATE npc_vendor_template SET Slot = 20 WHERE entry IN (10000) AND item = 4340; -- Gray Dye
UPDATE npc_vendor_template SET Slot = 21 WHERE entry IN (10000) AND item = 3371; -- Empty Vial
UPDATE npc_vendor_template SET Slot = 22 WHERE entry IN (10000) AND item = 3372; -- Leaded Vial
UPDATE npc_vendor_template SET Slot = 23 WHERE entry IN (10000) AND item = 8925; -- Crystal Vial
UPDATE npc_vendor_template SET Slot = 24 WHERE entry IN (10000) AND item = 4289; -- Salt
UPDATE npc_vendor_template SET Slot = 25 WHERE entry IN (10000) AND item = 4399; -- Wooden Stock
UPDATE npc_vendor_template SET Slot = 26 WHERE entry IN (10000) AND item = 4400; -- Heavy Stock
UPDATE npc_vendor_template SET Slot = 27 WHERE entry IN (10000) AND item = 6530; -- Nightcrawlers
UPDATE npc_vendor_template SET Slot = 28 WHERE entry IN (10000) AND item = 6532; -- Bright Baubles
UPDATE npc_vendor_template SET Slot = 29 WHERE entry IN (10000) AND item = 17034; -- Maple Seed
UPDATE npc_vendor_template SET Slot = 30 WHERE entry IN (10000) AND item = 17035; -- Stranglethorn Seed
UPDATE npc_vendor_template SET Slot = 31 WHERE entry IN (10000) AND item = 17036; -- Ashwood Seed
UPDATE npc_vendor_template SET Slot = 32 WHERE entry IN (10000) AND item = 17037; -- Hornbeam Seed
UPDATE npc_vendor_template SET Slot = 33 WHERE entry IN (10000) AND item = 17038; -- Ironwood Seed
UPDATE npc_vendor_template SET Slot = 34 WHERE entry IN (10000) AND item = 22147; -- Flintweed Seed
UPDATE npc_vendor_template SET Slot = 35 WHERE entry IN (10000) AND item = 17031; -- Rune of Teleportation
UPDATE npc_vendor_template SET Slot = 36 WHERE entry IN (10000) AND item = 17032; -- Rune of Portals
UPDATE npc_vendor_template SET Slot = 37 WHERE entry IN (10000) AND item = 17020; -- Arcane Powder
UPDATE npc_vendor_template SET Slot = 38 WHERE entry IN (10000) AND item = 17030; -- Ankh
UPDATE npc_vendor_template SET Slot = 39 WHERE entry IN (10000) AND item = 17033; -- Symbol of Divinity
UPDATE npc_vendor_template SET Slot = 40 WHERE entry IN (10000) AND item = 17028; -- Holy Candle
UPDATE npc_vendor_template SET Slot = 41 WHERE entry IN (10000) AND item = 17029; -- Sacred Candle
UPDATE npc_vendor_template SET Slot = 42 WHERE entry IN (10000) AND item = 17021; -- Wild Berries
UPDATE npc_vendor_template SET Slot = 43 WHERE entry IN (10000) AND item = 17026; -- Wild Thornroot
UPDATE npc_vendor_template SET Slot = 44 WHERE entry IN (10000) AND item = 22148; -- Wild Quillvine
UPDATE npc_vendor_template SET Slot = 45 WHERE entry IN (10000) AND item = 5565; -- nfernal Stone
UPDATE npc_vendor_template SET Slot = 46 WHERE entry IN (10000) AND item = 16583; -- Demonic Figurine
UPDATE npc_vendor_template SET Slot = 47 WHERE entry IN (10000) AND item = 21177; -- Symbol of Kings
UPDATE npc_vendor_template SET Slot = 48 WHERE entry IN (10000) AND item = 37201; -- Corpse Dust

UPDATE npc_vendor_template SET Slot = 1  WHERE entry IN (10001) AND item = 4600; -- Cherry Grog
UPDATE npc_vendor_template SET Slot = 2  WHERE entry IN (10001) AND item = 159; -- Refreshing Spring Water
UPDATE npc_vendor_template SET Slot = 3  WHERE entry IN (10001) AND item = 1179; -- Ice Cold Milk
UPDATE npc_vendor_template SET Slot = 4  WHERE entry IN (10001) AND item = 1205; -- Melon Juice
UPDATE npc_vendor_template SET Slot = 5  WHERE entry IN (10001) AND item = 1708; -- Sweet Nectar
UPDATE npc_vendor_template SET Slot = 6  WHERE entry IN (10001) AND item = 1645; -- Moonberry Juice
UPDATE npc_vendor_template SET Slot = 7  WHERE entry IN (10001) AND item = 8766; -- Morning Glory Dew
UPDATE npc_vendor_template SET Slot = 8  WHERE entry IN (10001) AND item = 787; -- Slitherskin Mackerel
UPDATE npc_vendor_template SET Slot = 9  WHERE entry IN (10001) AND item = 4592; -- Longjaw Mud Snapper
UPDATE npc_vendor_template SET Slot = 10 WHERE entry IN (10001) AND item = 4593; -- Bristle Whisker Catfish
UPDATE npc_vendor_template SET Slot = 11 WHERE entry IN (10001) AND item = 4594; -- Rockscale Cod
UPDATE npc_vendor_template SET Slot = 12 WHERE entry IN (10001) AND item = 21552; -- Striped Yellowtail
UPDATE npc_vendor_template SET Slot = 13 WHERE entry IN (10001) AND item = 8957; -- Spinefin Halibut
UPDATE npc_vendor_template SET Slot = 14 WHERE entry IN (10001) AND item = 4540; -- Tough Hunk of Bread
UPDATE npc_vendor_template SET Slot = 15 WHERE entry IN (10001) AND item = 4541; -- Freshly Baked Bread
UPDATE npc_vendor_template SET Slot = 16 WHERE entry IN (10001) AND item = 4542; -- Moist Cornbread
UPDATE npc_vendor_template SET Slot = 17 WHERE entry IN (10001) AND item = 4544; -- Mulgore Spice Bread
UPDATE npc_vendor_template SET Slot = 18 WHERE entry IN (10001) AND item = 4601; -- Soft Banana Bread
UPDATE npc_vendor_template SET Slot = 19 WHERE entry IN (10001) AND item = 8950; -- Homemade Cherry Pie
UPDATE npc_vendor_template SET Slot = 20 WHERE entry IN (10001) AND item = 30817; -- Simple Flour
UPDATE npc_vendor_template SET Slot = 21 WHERE entry IN (10001) AND item = 2678; -- Mild Spices

-- Snack-O-Matic IV 24934
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (24934) AND item = 159; -- Refreshing Spring Water
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (24934) AND item = 1179; -- Ice Cold Milk
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (24934) AND item = 1205; -- Melon Juice
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (24934) AND item = 1708; -- Sweet Nectar
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (24934) AND item = 1645; -- Moonberry Juice
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (24934) AND item = 8766; -- Morning Glory Dew
UPDATE npc_vendor SET Slot = 7 WHERE entry IN (24934) AND item = 7228; -- Tigule and Foror's Strawberry Ice Cream
UPDATE npc_vendor SET Slot = 8 WHERE entry IN (24934) AND item = 2070; -- Darnassian Bleu
UPDATE npc_vendor SET Slot = 9 WHERE entry IN (24934) AND item = 414; -- Dalaran Sharp
UPDATE npc_vendor SET Slot = 10 WHERE entry IN (24934) AND item = 422; -- Dwarven Mild
UPDATE npc_vendor SET Slot = 11 WHERE entry IN (24934) AND item = 1707; -- Stormwind Brie
UPDATE npc_vendor SET Slot = 12 WHERE entry IN (24934) AND item = 3927; -- Fine Aged Cheddar
UPDATE npc_vendor SET Slot = 13 WHERE entry IN (24934) AND item = 8932; -- Alterac Swiss
UPDATE npc_vendor SET Slot = 14 WHERE entry IN (24934) AND item = 4540; -- Tough Hunk of Bread
UPDATE npc_vendor SET Slot = 15 WHERE entry IN (24934) AND item = 4541; -- Freshly Baked Bread
UPDATE npc_vendor SET Slot = 16 WHERE entry IN (24934) AND item = 4542; -- Moist Cornbread
UPDATE npc_vendor SET Slot = 17 WHERE entry IN (24934) AND item = 4544; -- Mulgore Spice Bread
UPDATE npc_vendor SET Slot = 18 WHERE entry IN (24934) AND item = 4601; -- Soft Banana Bread
UPDATE npc_vendor SET Slot = 19 WHERE entry IN (24934) AND item = 8950; -- Homemade Cherry Pie
UPDATE npc_vendor SET Slot = 20 WHERE entry IN (24934) AND item = 4536; -- Shiny Red Apple
UPDATE npc_vendor SET Slot = 21 WHERE entry IN (24934) AND item = 4537; -- Tel'Abim Banana
UPDATE npc_vendor SET Slot = 22 WHERE entry IN (24934) AND item = 4538; -- Snapvine Watermelon
UPDATE npc_vendor SET Slot = 23 WHERE entry IN (24934) AND item = 4539; -- Goldenbark Apple
UPDATE npc_vendor SET Slot = 24 WHERE entry IN (24934) AND item = 4602; -- Moon Harvest Pumpkin
UPDATE npc_vendor SET Slot = 25 WHERE entry IN (24934) AND item = 8953; -- Deep Fried Plantains
