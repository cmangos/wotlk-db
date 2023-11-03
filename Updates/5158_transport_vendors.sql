-- TRANSPORT VENDORS
-- They sharing same vendor list
-- slots corrected & moved to templates

-- Engineer Combs 24843
-- Vend-O-Tron D-Luxe 24935
-- Merchant Fallel Stargazer 24995
-- Engineer Brightbuckle 25010
-- Merchant Felagunne 25019
-- Merchant Frostwalker 25051
-- Engineer Torquespindle 25082
DELETE FROM npc_vendor WHERE entry IN (24843,24935,24995,25010,25019,25051,25082);
UPDATE creature_template SET VendorTemplateId = 10000 WHERE entry IN (24843,24935,24995,25010,25019,25051,25082);
DELETE FROM npc_vendor_template WHERE entry IN (10000); -- ids are unknown
INSERT INTO npc_vendor_template (entry, item, maxcount, incrtime, slot, ExtendedCost, condition_id, comments) VALUES
(10000,7005,0,0,0,0,0,'Skinning Knife'),
(10000,6256,0,0,1,0,0,'Fishing Pole'),
(10000,2901,0,0,2,0,0,'Mining Pick'),
(10000,5956,0,0,3,0,0,'Blacksmith Hammer'),
(10000,6217,0,0,4,0,0,'Copper Rod'),
(10000,2320,0,0,5,0,0,'Coarse Thread'),
(10000,2321,0,0,6,0,0,'Fine Thread'),
(10000,4291,0,0,7,0,0,'Silken Thread'),
(10000,8343,0,0,8,0,0,'Heavy Silken Thread'),
(10000,14341,0,0,9,0,0,'Rune Thread'),
(10000,2678,0,0,10,0,0,'Mild Spices'),
(10000,2880,0,0,11,0,0,'Weak Flux'),
(10000,3466,0,0,12,0,0,'Strong Flux'),
(10000,3857,0,0,13,0,0,'Coal'),
(10000,2324,0,0,14,0,0,'Bleach'),
(10000,2604,0,0,15,0,0,'Red Dye'),
(10000,2325,0,0,16,0,0,'Black Dye'),
(10000,4341,0,0,17,0,0,'Yellow Dye'),
(10000,4342,0,0,18,0,0,'Purple Dye'),
(10000,4340,0,0,19,0,0,'Gray Dye'),
(10000,3371,0,0,20,0,0,'Empty Vial'),
(10000,3372,0,0,21,0,0,'Leaded Vial'),
(10000,8925,0,0,22,0,0,'Crystal Vial'),
(10000,4289,0,0,23,0,0,'Salt'),
(10000,4399,0,0,24,0,0,'Wooden Stock'),
(10000,4400,0,0,25,0,0,'Heavy Stock'),
(10000,6530,0,0,26,0,0,'Nightcrawlers'),
(10000,6532,0,0,27,0,0,'Bright Baubles'),
(10000,17034,0,0,28,0,0,'Maple Seed'),
(10000,17035,0,0,29,0,0,'Stranglethorn Seed'),
(10000,17036,0,0,30,0,0,'Ashwood Seed'),
(10000,17037,0,0,31,0,0,'Hornbeam Seed'),
(10000,17038,0,0,32,0,0,'Ironwood Seed'),
(10000,22147,0,0,33,0,0,'Flintweed Seed'),
(10000,17031,0,0,34,0,0,'Rune of Teleportation'),
(10000,17032,0,0,35,0,0,'Rune of Portals'),
(10000,17020,0,0,36,0,0,'Arcane Powder'),
(10000,17030,0,0,37,0,0,'Ankh'),
(10000,17033,0,0,38,0,0,'Symbol of Divinity'),
(10000,17028,0,0,39,0,0,'Holy Candle'),
(10000,17029,0,0,40,0,0,'Sacred Candle'),
(10000,17021,0,0,41,0,0,'Wild Berries'),
(10000,17026,0,0,42,0,0,'Wild Thornroot'),
(10000,22148,0,0,43,0,0,'Wild Quillvine'),
(10000,5565,0,0,44,0,0,'Infernal Stone'),
(10000,16583,0,0,45,0,0,'Demonic Figurine'),
(10000,21177,0,0,46,0,0,'Symbol of Kings'),
(10000,37201,0,0,47,0,0,'Corpse Dust');

-- Galley Chief Grace 24834
-- Galley Chief Mariss 24993
-- Galley Chief Gathers 25012
-- Galley Chief Halumvorea 25052
-- Galley Chief Steelbelly 25089
DELETE FROM npc_vendor WHERE entry IN (24834,24993,25012,25052,25089);
UPDATE creature_template SET VendorTemplateId = 10001 WHERE entry IN (24834,24993,25012,25052,25089);
DELETE FROM npc_vendor_template WHERE entry IN (10001); -- ids are unknown
INSERT INTO npc_vendor_template (entry, item, maxcount, incrtime, slot, ExtendedCost, condition_id, comments) VALUES
(10001,4600,0,0,1,0,0,'Cherry Grog'),
(10001,159,0,0,2,0,0,'Refreshing Spring Water'),
(10001,1179,0,0,3,0,0,'Ice Cold Milk'),
(10001,1205,0,0,4,0,0,'Melon Juice'),
(10001,1708,0,0,5,0,0,'Sweet Nectar'),
(10001,1645,0,0,6,0,0,'Moonberry Juice'),
(10001,8766,0,0,7,0,0,'Morning Glory Dew'),
(10001,787,0,0,8,0,0,'Slitherskin Mackerel'),
(10001,4592,0,0,9,0,0,'Longjaw Mud Snapper'),
(10001,4593,0,0,10,0,0,'Bristle Whisker Catfish'),
(10001,4594,0,0,11,0,0,'Rockscale Cod'),
(10001,21552,0,0,12,0,0,'Striped Yellowtail'),
(10001,8957,0,0,13,0,0,'Spinefin Halibut'),
(10001,4540,0,0,14,0,0,'Tough Hunk of Bread'),
(10001,4541,0,0,15,0,0,'Freshly Baked Bread'),
(10001,4542,0,0,16,0,0,'Moist Cornbread'),
(10001,4544,0,0,17,0,0,'Mulgore Spice Bread'),
(10001,4601,0,0,18,0,0,'Soft Banana Bread'),
(10001,8950,0,0,19,0,0,'Homemade Cherry Pie'),
(10001,30817,0,0,20,0,0,'Simple Flour'),
(10001,2678,0,0,21,0,0,'Mild Spices');

-- Snack-O-Matic IV 24934
UPDATE npc_vendor SET Slot = 0 WHERE entry IN (24934) AND item = 159; -- Refreshing Spring Water
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (24934) AND item = 1179; -- Ice Cold Milk
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (24934) AND item = 1205; -- Melon Juice
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (24934) AND item = 1708; -- Sweet Nectar
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (24934) AND item = 1645; -- Moonberry Juice
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (24934) AND item = 8766; -- Morning Glory Dew
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (24934) AND item = 7228; -- Tigule and Foror's Strawberry Ice Cream
UPDATE npc_vendor SET Slot = 7 WHERE entry IN (24934) AND item = 2070; -- Darnassian Bleu
UPDATE npc_vendor SET Slot = 8 WHERE entry IN (24934) AND item = 414; -- Dalaran Sharp
UPDATE npc_vendor SET Slot = 9 WHERE entry IN (24934) AND item = 422; -- Dwarven Mild
UPDATE npc_vendor SET Slot = 10 WHERE entry IN (24934) AND item = 1707; -- Stormwind Brie
UPDATE npc_vendor SET Slot = 11 WHERE entry IN (24934) AND item = 3927; -- Fine Aged Cheddar
UPDATE npc_vendor SET Slot = 12 WHERE entry IN (24934) AND item = 8932; -- Alterac Swiss
UPDATE npc_vendor SET Slot = 13 WHERE entry IN (24934) AND item = 4540; -- Tough Hunk of Bread
UPDATE npc_vendor SET Slot = 14 WHERE entry IN (24934) AND item = 4541; -- Freshly Baked Bread
UPDATE npc_vendor SET Slot = 15 WHERE entry IN (24934) AND item = 4542; -- Moist Cornbread
UPDATE npc_vendor SET Slot = 16 WHERE entry IN (24934) AND item = 4544; -- Mulgore Spice Bread
UPDATE npc_vendor SET Slot = 17 WHERE entry IN (24934) AND item = 4601; -- Soft Banana Bread
UPDATE npc_vendor SET Slot = 18 WHERE entry IN (24934) AND item = 8950; -- Homemade Cherry Pie
UPDATE npc_vendor SET Slot = 19 WHERE entry IN (24934) AND item = 4536; -- Shiny Red Apple
UPDATE npc_vendor SET Slot = 20 WHERE entry IN (24934) AND item = 4537; -- Tel'Abim Banana
UPDATE npc_vendor SET Slot = 21 WHERE entry IN (24934) AND item = 4538; -- Snapvine Watermelon
UPDATE npc_vendor SET Slot = 22 WHERE entry IN (24934) AND item = 4539; -- Goldenbark Apple
UPDATE npc_vendor SET Slot = 23 WHERE entry IN (24934) AND item = 4602; -- Moon Harvest Pumpkin
UPDATE npc_vendor SET Slot = 24 WHERE entry IN (24934) AND item = 8953; -- Deep Fried Plantains
