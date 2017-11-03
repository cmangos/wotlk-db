-- Captain's Key (9249)
DELETE FROM item_loot_template WHERE item=9249 AND entry=16884; -- Sturdy Junkbox
UPDATE item_loot_template SET ChanceOrQuestChance=10 WHERE item=9249 AND entry=9276; -- Pirate's Footlocker

DELETE FROM creature_loot_template WHERE item=9249 AND entry=2354; -- Vicious Gray Bear
DELETE FROM creature_loot_template WHERE item=9249 AND entry=5420; -- Glasshide Gazer
DELETE FROM creature_loot_template WHERE item=9249 AND entry=5617; -- Wastewander Shadow Mage
DELETE FROM creature_loot_template WHERE item=9249 AND entry=9453; -- Aquementas
DELETE FROM creature_loot_template WHERE item=9249 AND entry=10414; -- Patchwork Horror
