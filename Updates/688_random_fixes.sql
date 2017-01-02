-- Fix Stormwind Sign
UPDATE gameobject SET orientation = 0.686126 WHERE guid IN (10674);
UPDATE gameobject SET orientation = 2.309423 WHERE guid IN (10693);

-- NPC Who Should Not Give Experience
UPDATE creature_template SET ExtraFlags=ExtraFlags|64 WHERE entry IN (7769,8257,8901,10717,10461,10536,10441,16903,18207,19731,20117);

-- Remove Loot From NPC Who SHould Not Have Any
UPDATE creature_template SET LootId = 0 WHERE entry IN (8257,10717,10461,10536,10441,20117);
DELETE FROM creature_loot_template WHERE entry IN (8257,10717,10461,10536,10441,20117);

-- Hellfire Ramparts Misc Fixes
UPDATE creature SET position_x = -1240.891113, position_y = 1627.444458, position_z = 68.487015, orientation = 3.571533 WHERE guid = 85635;

-- Bonestripper Buzzard (16972) - Should Be Properly Flying
UPDATE creature_template SET InhabitType = 4 WHERE entry IN (16972);

-- Fix Phasing Stalkers (Sniff Data)
UPDATE creature_template SET UnitFlags=UnitFlags|32768, FactionAlliance = 7, FactionHorde = 7, ModelId1 = 17938, ModelId2 = 17939, ModelId3 = 17940, ModelId4 = 17941 WHERE entry IN (18559);

-- Fix Phasing Cleric (Sniff Data)
UPDATE creature_template SET UnitFlags=UnitFlags|32768, FactionAlliance = 7, FactionHorde = 7, ModelId1 = 17928, ModelId2 = 17929, ModelId3 = 17930, ModelId4 = 17931 WHERE entry IN (18557);

-- Fix Phasing Soldier (Sniff Data)
UPDATE creature_template SET UnitFlags=UnitFlags|32768, FactionAlliance = 7, FactionHorde = 7, ModelId1 = 17920, ModelId2 = 17921, ModelId3 = 17922, ModelId4 = 17923 WHERE entry IN (18556);

-- Fix NPC Spawn Location in Blue Recluse in Stormwind
UPDATE creature SET position_x = -9080.155273, position_y = 823.297974, position_z = 108.419350, orientation = 0.567056 WHERE guid = 38225;

-- Fix Hemathion So he is Attackable
UPDATE creature_template SET UnitFlags = 0 WHERE entry IN (18692);

-- Prevent Cannon NPC From Moving
UPDATE creature_template SET MovementType = 0 WHERE entry IN (19067,19210,19399,21233,22443,22451,22461);

-- Move NPC as current location is not good for Season 4 vendor
UPDATE creature SET position_x = 872.853760, position_y = -145.763626, position_z = -49.758408, orientation = 6.159580 WHERE guid = 48171;
