-- <Blacksmithing Supplies>
-- They all have the same vendor list - so can be moved to template (already exist):

-- Thrawn Boltar 1690
-- Hurklor 2844
-- Jansen Underwood 2847
-- Taur Stonehoof 2999
-- Grelkor 3343
-- Hraq 3477
-- Lana Thunderbrew 4257
-- Thurgrum Deepforge 4259
-- Samuel Van Brunt 4597
-- Elisa Steelhand 6300
-- Smith Slagtree 14737
-- Arathel Sunforge 15400
-- Craftsman Wilhelm 16376
-- Humphry 16823
-- Blacksmith Calypso 17245
-- Blacksmith Frances 17655
-- Cecil Meyers 19056
-- Lelagar 19520
-- Darmend 19530
-- Horvon the Armorer 19879
-- Yarley 20082
-- Apprentice Andrethan 20463
-- Ogri'la Steelshaper 22264
-- Aundro 22476
-- Gug 23144
-- Samir 23724
-- Jhet Ironbeard 23908
-- Eldrim Mounder 24052
-- Willis Wobblewheel 26599
-- Siegesmith Gulda 27019
-- Master Smith Devin Brevig 27045
-- Brom Armstrong 27062
-- Smith Prigka 27134
-- Quartermaster Bartlett 27267
-- Blazzle 28344
-- Palja Amboss 28716
-- Arlen Brighthammer 28796
-- Jason Riggins 29252
-- Koloth 29253
-- Dagni Oregleam 29923
-- Dargum Hammerdeep 29964
-- Ontak 29969
-- Lanudal Silverhart 30241
-- Felindel Sunhammer 30253
-- Runesmith Balehammer 30336
-- Halig Fireforge 30436
-- Brock Thriss 31024
-- Calder 32594
-- Brollen Wheatbeard 33599
-- Barien 33631
-- Onodo 33675
DELETE FROM npc_vendor WHERE entry IN (
1690,2844,2847,2999,3343,3477,4257,4259,4597,6300,14737,15400,16376,16823,17245,17655,19056,19520,19530,19879,
20082,20463,22264,22476,23144,23724,23908,24052,26599,27019,27045,27062,27134,27267,28344,28716,28796,29252,
29253,29923,29964,29969,30241,30253,30336,30436,31024,32594,33599,33631,33675);
UPDATE creature_template SET VendorTemplateId = 116 WHERE entry IN (
1690,2844,2847,2999,3343,3477,4257,4259,4597,6300,14737,15400,16376,16823,17245,17655,19056,19520,19530,19879,
20082,20463,22264,22476,23144,23724,23908,24052,26599,27019,27045,27062,27134,27267,28344,28716,28796,29252,
29253,29923,29964,29969,30241,30253,30336,30436,31024,32594,33599,33631,33675);
-- make it in correct order
UPDATE npc_vendor_template SET Slot = 0 WHERE entry IN (116) AND item = 2901; -- Mining Pick
UPDATE npc_vendor_template SET Slot = 1 WHERE entry IN (116) AND item = 5956; -- Blacksmith Hammer
UPDATE npc_vendor_template SET Slot = 2 WHERE entry IN (116) AND item = 2880; -- Weak Flux
UPDATE npc_vendor_template SET Slot = 3 WHERE entry IN (116) AND item = 3466; -- Strong Flux
UPDATE npc_vendor_template SET Slot = 4 WHERE entry IN (116) AND item = 18567; -- Elemental Flux
UPDATE npc_vendor_template SET Slot = 5 WHERE entry IN (116) AND item = 3857; -- Coal

-- Below - all NPCs that have same base + few addons
-- Sumi 3356
-- Kaita Deepforge 5512
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (3356,5512) AND item = 2880; -- Weak Flux
UPDATE npc_vendor SET Slot = 0 WHERE entry IN (3356,5512) AND item = 2901; -- Mining Pick
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (3356,5512) AND item = 3466; -- Strong Flux
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (3356,5512) AND item = 3857; -- Coal
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (3356,5512) AND item = 5956; -- Blacksmith Hammer
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (3356,5512) AND item = 12162; -- Plans: Hardened Iron Shortsword
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (3356,5512) AND item = 18567; -- Elemental Flux

-- Krinkle Goodsteel 5411
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (5411) AND item = 2880; -- Weak Flux
UPDATE npc_vendor SET Slot = 0 WHERE entry IN (5411) AND item = 2901; -- Mining Pick
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (5411) AND item = 3466; -- Strong Flux
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (5411) AND item = 3857; -- Coal
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (5411) AND item = 5956; -- Blacksmith Hammer
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (5411) AND item = 6047; -- Plans: Golden Scale Coif
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (5411) AND item = 18567; -- Elemental Flux

-- Harggan 8161
-- Gharash 8176
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (8161,8176) AND item = 2880; -- Weak Flux
UPDATE npc_vendor SET Slot = 0 WHERE entry IN (8161,8176) AND item = 2901; -- Mining Pick
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (8161,8176) AND item = 3466; -- Strong Flux
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (8161,8176) AND item = 3857; -- Coal
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (8161,8176) AND item = 5956; -- Blacksmith Hammer
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (8161,8176) AND item = 7995; -- Plans: Mithril Scale Bracers
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (8161,8176) AND item = 18567; -- Elemental Flux

-- Jazzrik 9179
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (9179) AND item = 2880; -- Weak Flux
UPDATE npc_vendor SET Slot = 0 WHERE entry IN (9179) AND item = 2901; -- Mining Pick
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (9179) AND item = 3466; -- Strong Flux
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (9179) AND item = 3857; -- Coal
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (9179) AND item = 5956; -- Blacksmith Hammer
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (9179) AND item = 10858; -- Plans: Solid Iron Maul
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (9179) AND item = 18567; -- Elemental Flux

-- Master Smith Burninate 14624
UPDATE npc_vendor SET Slot = 0 WHERE entry IN (14624) AND item = 159; -- Refreshing Spring Water
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (14624) AND item = 1205; -- Melon Juice
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (14624) AND item = 1708; -- Sweet Nectar
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (14624) AND item = 1645; -- Moonberry Juice
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (14624) AND item = 4498; -- Brown Leather Satchel
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (14624) AND item = 4497; -- Heavy Brown Bag
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (14624) AND item = 2515; -- Sharp Arrow
UPDATE npc_vendor SET Slot = 7 WHERE entry IN (14624) AND item = 3030; -- Razor Arrow
UPDATE npc_vendor SET Slot = 8 WHERE entry IN (14624) AND item = 11285; -- Jagged Arrow
UPDATE npc_vendor SET Slot = 9 WHERE entry IN (14624) AND item = 28053; -- Wicked Arrow
UPDATE npc_vendor SET Slot = 10 WHERE entry IN (14624) AND item = 2519; -- Heavy Shot
UPDATE npc_vendor SET Slot = 11 WHERE entry IN (14624) AND item = 3033; -- Solid Shot
UPDATE npc_vendor SET Slot = 12 WHERE entry IN (14624) AND item = 11284; -- Accurate Slugs
UPDATE npc_vendor SET Slot = 13 WHERE entry IN (14624) AND item = 28060; -- Impact Shot
UPDATE npc_vendor SET Slot = 14 WHERE entry IN (14624) AND item = 4470; -- Simple Wood
UPDATE npc_vendor SET Slot = 15 WHERE entry IN (14624) AND item = 25873; -- Keen Throwing Knife
UPDATE npc_vendor SET Slot = 16 WHERE entry IN (14624) AND item = 25875; -- Deadly Throwing Axe
UPDATE npc_vendor SET Slot = 17 WHERE entry IN (14624) AND item = 25876; -- Gleaming Throwing Axe
UPDATE npc_vendor SET Slot = 18 WHERE entry IN (14624) AND item = 29013; -- Jagged Throwing Axe
UPDATE npc_vendor SET Slot = 19 WHERE entry IN (14624) AND item = 29009; -- Heavy Throwing Dagger
UPDATE npc_vendor SET Slot = 20 WHERE entry IN (14624) AND item = 29010; -- Wicked Throwing Dagger
UPDATE npc_vendor SET Slot = 21 WHERE entry IN (14624) AND item = 29014; -- Blacksteel Throwing Dagger
UPDATE npc_vendor SET Slot = 22 WHERE entry IN (14624) AND item = 117; -- Tough Jerky
UPDATE npc_vendor SET Slot = 23 WHERE entry IN (14624) AND item = 2287; -- Haunch of Meat
UPDATE npc_vendor SET Slot = 24 WHERE entry IN (14624) AND item = 3770; -- Mutton Chop
UPDATE npc_vendor SET Slot = 25 WHERE entry IN (14624) AND item = 3771; -- Wild Hog Shank
UPDATE npc_vendor SET Slot = 26 WHERE entry IN (14624) AND item = 4599; -- Cured Ham Steak
UPDATE npc_vendor SET Slot = 27 WHERE entry IN (14624) AND item = 8952; -- Roasted Quail
UPDATE npc_vendor SET Slot = 28 WHERE entry IN (14624) AND item = 1179; -- Ice Cold Milk
UPDATE npc_vendor SET Slot = 29 WHERE entry IN (14624) AND item = 8766; -- Morning Glory Dew
UPDATE npc_vendor SET Slot = 32 WHERE entry IN (19012) AND item = 2880; -- Weak Flux
UPDATE npc_vendor SET Slot = 30 WHERE entry IN (19012) AND item = 2901; -- Mining Pick
UPDATE npc_vendor SET Slot = 33 WHERE entry IN (19012) AND item = 3466; -- Strong Flux
UPDATE npc_vendor SET Slot = 35 WHERE entry IN (19012) AND item = 3857; -- Coal
UPDATE npc_vendor SET Slot = 31 WHERE entry IN (19012) AND item = 5956; -- Blacksmith Hammer
UPDATE npc_vendor SET Slot = 34 WHERE entry IN (19012) AND item = 18567; -- Elemental Flux

-- Vargus 15176
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (15176) AND item = 2880; -- Weak Flux
UPDATE npc_vendor SET Slot = 0 WHERE entry IN (15176) AND item = 2901; -- Mining Pick
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (15176) AND item = 3466; -- Strong Flux
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (15176) AND item = 3857; -- Coal
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (15176) AND item = 5956; -- Blacksmith Hammer
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (15176) AND item = 18567; -- Elemental Flux
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (15176) AND item = 22209; -- Plans: Heavy Obsidian Belt
UPDATE npc_vendor SET Slot = 7 WHERE entry IN (15176) AND item = 22214; -- Plans: Light Obsidian Belt
UPDATE npc_vendor SET Slot = 8 WHERE entry IN (15176) AND item = 22766; -- Plans: Ironvine Breastplate
UPDATE npc_vendor SET Slot = 9 WHERE entry IN (15176) AND item = 22767; -- Plans: Ironvine Gloves
UPDATE npc_vendor SET Slot = 10 WHERE entry IN (15176) AND item = 22768; -- Plans: Ironvine Belt

-- Rohok 16583
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (16583) AND item = 2880; -- Weak Flux
UPDATE npc_vendor SET Slot = 0 WHERE entry IN (16583) AND item = 2901; -- Mining Pick
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (16583) AND item = 3466; -- Strong Flux
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (16583) AND item = 3857; -- Coal
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (16583) AND item = 5956; -- Blacksmith Hammer
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (16583) AND item = 18567; -- Elemental Flux
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (16583) AND item = 23638; -- Plans: Lesser Ward of Shielding
UPDATE npc_vendor SET Slot = 7 WHERE entry IN (16583) AND item = 25847; -- Plans: Eternium Rod

-- Eriden 16670
-- Arras 16713
UPDATE npc_vendor SET Slot = 0 WHERE entry IN (16670,16713) AND item = 2901; -- Mining Pick
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (16670,16713) AND item = 5956; -- Blacksmith Hammer
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (16670,16713) AND item = 2880; -- Weak Flux
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (16670,16713) AND item = 3466; -- Strong Flux
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (16670,16713) AND item = 18567; -- Elemental Flux
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (16670,16713) AND item = 3857; -- Coal
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (16670,16713) AND item = 23590; -- Plans: Adamantite Maul
UPDATE npc_vendor SET Slot = 7 WHERE entry IN (16670,16713) AND item = 23591; -- Plans: Adamantite Cleaver
UPDATE npc_vendor SET Slot = 8 WHERE entry IN (16670,16713) AND item = 23592; -- Plans: Adamantite Dagger
UPDATE npc_vendor SET Slot = 9 WHERE entry IN (16670,16713) AND item = 23593; -- Plans: Adamantite Rapier

-- Osrok the Immovable 19011 
-- Sparik 19012
UPDATE npc_vendor SET Slot = 0 WHERE entry IN (19011,19012) AND item = 30777; -- Aldor Heavy Belt
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (19011,19012) AND item = 30771; -- Heavy Draenic Bracers
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (19011,19012) AND item = 30765; -- Heavy Draenic Breastplate
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (19011,19012) AND item = 30775; -- Layered Bone Shield
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (19011,19012) AND item = 30781; -- Mag'hari Chain Vest
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (19011,19012) AND item = 30784; -- Worn Mag'hari Gauntlets
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (19011,19012) AND item = 2901; -- Mining Pick
UPDATE npc_vendor SET Slot = 7 WHERE entry IN (19011,19012) AND item = 5956; -- Blacksmith Hammer
UPDATE npc_vendor SET Slot = 8 WHERE entry IN (19011,19012) AND item = 2880; -- Weak Flux
UPDATE npc_vendor SET Slot = 9 WHERE entry IN (19011,19012) AND item = 3466; -- Strong Flux
UPDATE npc_vendor SET Slot = 10 WHERE entry IN (19011,19012) AND item = 18567; -- Elemental Flux
UPDATE npc_vendor SET Slot = 11 WHERE entry IN (19011,19012) AND item = 3857; -- Coal

-- Krek Cragcrush 19342
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (19342) AND item = 2880; -- Weak Flux
UPDATE npc_vendor SET Slot = 0 WHERE entry IN (19342) AND item = 2901; -- Mining Pick
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (19342) AND item = 3466; -- Strong Flux
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (19342) AND item = 3857; -- Coal
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (19342) AND item = 5956; -- Blacksmith Hammer
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (19342) AND item = 18567; -- Elemental Flux
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (19342) AND item = 23594; -- Plans: Adamantite Plate Bracers
UPDATE npc_vendor SET Slot = 7 WHERE entry IN (19342) AND item = 23595; -- Plans: Adamantite Plate Gloves
UPDATE npc_vendor SET Slot = 8 WHERE entry IN (19342) AND item = 23596; -- Plans: Adamantite Breastplate

-- Aaron Hollman 19662
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (19662) AND item = 2880; -- Weak Flux
UPDATE npc_vendor SET Slot = 0 WHERE entry IN (19662) AND item = 2901; -- Mining Pick
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (19662) AND item = 3466; -- Strong Flux
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (19662) AND item = 3857; -- Coal
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (19662) AND item = 5956; -- Blacksmith Hammer
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (19662) AND item = 18567; -- Elemental Flux
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (19662) AND item = 23590; -- Plans: Adamantite Maul
UPDATE npc_vendor SET Slot = 7 WHERE entry IN (19662) AND item = 23591; -- Plans: Adamantite Cleaver
UPDATE npc_vendor SET Slot = 8 WHERE entry IN (19662) AND item = 23592; -- Plans: Adamantite Dagger
UPDATE npc_vendor SET Slot = 9 WHERE entry IN (19662) AND item = 23593; -- Plans: Adamantite Rapier
UPDATE npc_vendor SET Slot = 10 WHERE entry IN (19662) AND item = 25846; -- Plans: Adamantite Rod

-- Everett McGill 26934
UPDATE npc_vendor SET Slot = 0 WHERE entry IN (26934) AND item = 28056; -- Blackflight Arrow
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (26934) AND item = 41586; -- Terrorshaft Arrow
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (26934) AND item = 28061; -- Ironbite Shell
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (26934) AND item = 41584; -- Frostbite Bullets
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (26934) AND item = 29014; -- Blacksteel Throwing Dagger
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (26934) AND item = 29013; -- Jagged Throwing Axe
UPDATE npc_vendor SET Slot = 8 WHERE entry IN (26934) AND item = 2880; -- Weak Flux
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (26934) AND item = 2901; -- Mining Pick
UPDATE npc_vendor SET Slot = 9 WHERE entry IN (26934) AND item = 3466; -- Strong Flux
UPDATE npc_vendor SET Slot = 11 WHERE entry IN (26934) AND item = 3857; -- Coal
UPDATE npc_vendor SET Slot = 7 WHERE entry IN (26934) AND item = 5956; -- Blacksmith Hammer
UPDATE npc_vendor SET Slot = 10 WHERE entry IN (26934) AND item = 18567; -- Elemental Flux
DELETE FROM npc_vendor WHERE entry = 26934 AND item IN (4470,4471); -- shouldnt have them

-- Xark Bolthammer 29907
UPDATE npc_vendor SET Slot = 2 WHERE entry IN (29907) AND item = 2880; -- Weak Flux
UPDATE npc_vendor SET Slot = 0 WHERE entry IN (29907) AND item = 2901; -- Mining Pick
UPDATE npc_vendor SET Slot = 3 WHERE entry IN (29907) AND item = 3466; -- Strong Flux
UPDATE npc_vendor SET Slot = 5 WHERE entry IN (29907) AND item = 3857; -- Coal
UPDATE npc_vendor SET Slot = 1 WHERE entry IN (29907) AND item = 5956; -- Blacksmith Hammer
UPDATE npc_vendor SET Slot = 4 WHERE entry IN (29907) AND item = 18567; -- Elemental Flux
UPDATE npc_vendor SET Slot = 6 WHERE entry IN (29907) AND item = 4399; -- Wooden Stock
UPDATE npc_vendor SET Slot = 7 WHERE entry IN (29907) AND item = 4400; -- Heavy Stock
UPDATE npc_vendor SET Slot = 8 WHERE entry IN (29907) AND item = 40533; -- Walnut Stock
UPDATE npc_vendor SET Slot = 9 WHERE entry IN (29907) AND item = 39684; -- Hair Trigger
UPDATE npc_vendor SET Slot = 10 WHERE entry IN (29907) AND item = 10648; -- Common Parchment
UPDATE npc_vendor SET Slot = 11 WHERE entry IN (29907) AND item = 10647; -- Engineer's Ink
UPDATE npc_vendor SET Slot = 12 WHERE entry IN (29907) AND item = 4382; -- Bronze Framework
UPDATE npc_vendor SET Slot = 13 WHERE entry IN (29907) AND item = 4363; -- Copper Modulator
UPDATE npc_vendor SET Slot = 14 WHERE entry IN (29907) AND item = 4361; -- Copper Tube
UPDATE npc_vendor SET Slot = 15 WHERE entry IN (29907) AND item = 4371; -- Bronze Tube
UPDATE npc_vendor SET Slot = 16 WHERE entry IN (29907) AND item = 4357; -- Rough Blasting Powder
UPDATE npc_vendor SET Slot = 17 WHERE entry IN (29907) AND item = 4364; -- Coarse Blasting Powder
UPDATE npc_vendor SET Slot = 18 WHERE entry IN (29907) AND item = 4389; -- Gyrochronatom
UPDATE npc_vendor SET Slot = 19 WHERE entry IN (29907) AND item = 4404; -- Silver Contact
