-- Neal Allen 1448
-- was wrongly put into templates
UPDATE creature_template SET VendorTemplateId = 0 WHERE entry = 1448;
-- recreate his correct vendor list
DELETE FROM npc_vendor WHERE entry IN (1448);
INSERT INTO npc_vendor (entry, item, maxcount, incrtime, slot, ExtendedCost, condition_id, comments) VALUES
(1448,5956,0,0,1,0,0,'Blacksmith Hammer'),
(1448,2901,0,0,2,0,0,'Mining Pick'),
(1448,4399,0,0,3,0,0,'Wooden Stock'),
(1448,4400,0,0,4,0,0,'Heavy Stock'),
(1448,40533,0,0,5,0,0,'Walnut Stock'),
(1448,39684,0,0,6,0,0,'Hair Trigger'),
(1448,2880,0,0,7,0,0,'Weak Flux'),
(1448,3466,0,0,8,0,0,'Strong Flux'),
(1448,10648,0,0,9,0,0,'Common Parchment'),
(1448,10647,0,0,10,0,0,'Engineer\'s Ink'),
-- these are restock - shold spawn randomly (2-3max per spawn)
(1448,4382,1,10800,11,0,0,'Bronze Framework'),
(1448,4361,2,9000,12,0,0,'Copper Tube'),
(1448,4371,2,9000,13,0,0,'Bronze Tube'),
(1448,4363,2,9000,14,0,0,'Copper Modulator'),
(1448,4357,4,9000,15,0,0,'Rough Blasting Powder'),
(1448,4364,4,9000,16,0,0,'Coarse Blasting Powder'),
(1448,4389,1,9000,17,0,0,'Gyrochronatom'),
(1448,4404,3,9000,18,0,0,'Silver Contact'),
-- end of restock group
(1448,159,0,0,19,0,0,'Refreshing Spring Water'),
(1448,1179,0,0,20,0,0,'Ice Cold Milk'),
(1448,1205,0,0,21,0,0,'Melon Juice'),
(1448,4498,0,0,22,0,0,'Brown Leather Satchel'),
(1448,4497,0,0,23,0,0,'Heavy Brown Bag'),
(1448,2515,0,0,24,0,0,'Sharp Arrow'),
(1448,3030,0,0,25,0,0,'Razor Arrow'),
(1448,2519,0,0,26,0,0,'Heavy Shot'),
(1448,3033,0,0,27,0,0,'Solid Shot'),
-- (1448,4470,0,0,28,0,0,'Simple Wood'), -- Removed in WoTLK 3.1.3
(1448,25873,0,0,28,0,0,'Keen Throwing Knife'),
(1448,29009,0,0,29,0,0,'Heavy Throwing Dagger'),
(1448,29008,0,0,30,0,0,'Sharp Throwing Axe'),
(1448,25875,0,0,31,0,0,'Deadly Throwing Axe'),
(1448,20970,1,9000,32,0,0,'Design: Pendant of the Agate Shield');



