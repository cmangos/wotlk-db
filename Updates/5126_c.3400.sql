-- Xen'to 3400
-- Vendor list corrected 
-- 3.3.5 only (he has more items before 3.1)
UPDATE npc_vendor SET Slot = 0 WHERE entry = 3400 AND item = 159; -- Refreshing Spring Water
UPDATE npc_vendor SET Slot = 1 WHERE entry = 3400 AND item = 30817; -- Simple Flour
UPDATE npc_vendor SET Slot = 2 WHERE entry = 3400 AND item = 2678; -- Mild Spices
UPDATE npc_vendor SET Slot = 3 WHERE entry = 3400 AND item = 21099; -- Recipe: Smoked Sagefish
UPDATE npc_vendor SET Slot = 4 WHERE entry = 3400 AND item = 21219; -- Recipe: Sagefish Delight
