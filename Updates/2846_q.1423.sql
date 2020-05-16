-- Lost Supplies i.6172 looted from Scattered Crate i.28604 should drop only for Alliance
UPDATE gameobject_loot_template SET condition_id = 22 WHERE item = 6172 AND entry = 3597;
