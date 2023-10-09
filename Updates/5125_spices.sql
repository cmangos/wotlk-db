-- items
-- As of 3.1, looks like these spices have actually been removed from the game
-- Soothing Spices 3713
-- Hot Spices 2692
-- Mild Spices 2678
DELETE FROM npc_vendor WHERE item IN (2678,2692,3713);
DELETE FROM npc_vendor_template WHERE item IN (2678,2692,3713);
