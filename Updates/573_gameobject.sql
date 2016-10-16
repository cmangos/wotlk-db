-- Flying Machine Engine
UPDATE gameobject SET spawntimesecs = 10 WHERE guid = 61208;

-- Felix's Bucket of Bolts, Felix's Chest, Felix's Box
UPDATE gameobject SET spawntimesecs = 10 WHERE guid IN (1386,1394,1380);
-- Ammo Crate
UPDATE gameobject SET spawntimesecs = 10 WHERE guid = 10663;
-- The Holy Spring
UPDATE gameobject SET spawntimesecs = 10 WHERE guid = 10121;

-- Hairy Herring Heads, Withered Batwings, Wasp's Wings, Muddy Mire Maggots, Knotroot, Spekled Guano, Seasoned Slider Cider, Pickled Eagle Egg, Prismatic Mojo, Raptor Claw
-- Pulverized Gargoyle Teeth, Icerown Bottled Water, Putrid Pirate Perspiration, Spiky Spider Eggs, Abomination Guts, Amberseed, Shrunken Dragom's Claw, Crystallized Hogsnot
-- Ancient Ectoplasm, Chrushed Basilisk Crystals, Blight Crystal, Frozen Spider Ichor, Trollbane, Ghoul Drool, 
UPDATE gameobject SET spawntimesecs = 10 WHERE id IN (190459,190461,190462,190463,190464,190465,190466,190467,190468,190469,190470,190471,190472,190473,190474,190476,190477,190478,190479,190480,190481,190482,191180,191181,191182);
