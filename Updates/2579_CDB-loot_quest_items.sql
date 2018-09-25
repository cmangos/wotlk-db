-- Fix negative drop chance of items: none of them is a quest item
-- Malachite, Jade, Plans: Golden Scale Shoulders, Pattern: Stylish Blue Shirt, Pattern: Stylish Green Shirt, Pattern: Heavy Earthen Gloves, Aquamarine
-- Pattern: Colorful Kilt, Formula: Enchant 2H Weapon - Lesser Spirit, Plans: Searing Golden Blade
-- more found in wotlkDB - added
UPDATE creature_loot_template SET ChanceOrQuestChance=0.02 WHERE ChanceOrQuestChance<0 AND item IN (774, 1529, 3871, 6390, 6391, 7364, 7909, 10316, 11038, 12261,
18705, 19230, 19231, 19232, 19259, 19260, 19261, 19269, 19270, 19271, 19278, 19279, 19280, 20858, 20859, 20860, 20861, 20862, 20863, 20864, 20865, 20874,
20875,20877,20879,44569); 

-- Remove items from creature drops that belongs to item loot template: Combat Task Briefing I & Tactical Task Briefing X
DELETE FROM creature_loot_template WHERE item IN (20943, 21749);
