-- remove skinning loot from Temporal Parasite
UPDATE creature_template SET SkinningLootId = 0 WHERE Entry = 10717;
