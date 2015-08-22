-- Arcane Fiend in Mana Tombs - Duplicates removed 
-- should be spawned by Ethereal Sorcerer
DELETE FROM creature WHERE guid IN (91246,91245);
DELETE FROM creature_addon WHERE guid IN (91246,91245);
DELETE FROM creature_movement WHERE id IN (91246,91245);
