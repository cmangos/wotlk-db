-- Nexus-King Salhadaar quest script
-- http://www.wowhead.com/quest=10408/nexus-king-salhadaar
UPDATE creature_template SET MovementType = 0 WHERE entry = 20769; -- make creatures stationary
-- UPDATE creature SET position_x = 3916.414551, position_y = 2493.324463, position_z = 109.439087, MovementType = 0 WHERE guid = 73278; -- adjust correct position, be careful about this one
UPDATE creature SET MovementType = 0 WHERE id = 20769;
-- UPDATE creature SET position_z = 108.475868 WHERE guid = 72462; -- correct Z coordinate
UPDATE creature_template SET FactionAlliance = 14,FactionHorde = 14 WHERE entry = 21425; -- set correct faction for summons
-- Nexus-King Salhadaar (21425)
UPDATE creature_template SET MinLevel = 72,MaxLevel = 72, UnitClass = 2, Expansion = 1, HealthMultiplier = 3, PowerMultiplier = 15, EquipmentTemplateId = 1585 WHERE entry = 21425; 
UPDATE creature_template SET HealthMultiplier = 3.0, PowerMultiplier = 15.0, DamageMultiplier = 3.0, DamageVariance = 1.0, ArmorMultiplier = 1.0, MinLevelHealth = 17709, MaxLevelHealth = 17709, MinLevelMana = 49635, MaxLevelMana = 49635, MinMeleeDmg = 508, MaxMeleeDmg = 718, MinRangedDmg = 585, MaxRangedDmg = 870, MeleeAttackPower = 296.0, RangedAttackPower  =  40.0, Armor = 5954.0 WHERE entry = 21425;
-- Remove All Loot
DELETE FROM creature_loot_template WHERE entry IN (21425);
UPDATE creature_template SET LootId = 0 WHERE entry = 21425; 

-- UPDATE creature_template SET ModelId1 = 14501,ModelId2 = 0 WHERE entry IN (20769);
UPDATE gameobject_template SET data1 = 15 WHERE entry IN (300097); -- since its an TEMP GO, did it through eyeballing on retail
REPLACE INTO creature(guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(72462, 20454, 530, 1, 0, 0, 3881.919, 2494.047, 115.7529, 4.764749, 180, 180, 0, 0, 94448, 6618, 0, 0),
(73277, 20769, 530, 1, 0, 0, 3840.713, 2480.351, 112.7209, 3.979351, 300, 300, 0, 0, 42, 0, 0, 0),
(73278, 20769, 530, 1, 0, 0, 3916.083, 2489.661, 107.6608, 2.844887, 300, 300, 0, 0, 42, 0, 0, 0),
(73279, 20769, 530, 1, 0, 0, 3881.623, 2540.748, 109.5197, 2.792527, 300, 300, 0, 0, 42, 0, 0, 0);
