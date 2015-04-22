-- Kieupid <Pet Trainer> - update - source sniff and YTDB
UPDATE creature_template SET IconName = NULL, MinLevel = 80, MaxLevel = 80, FactionAlliance = 1604, FactionHorde = 1604, NpcFlags = 17, UnitFlags = 512, UnitClass = 2, Expansion = 2, MinLevelHealth = 12600, MaxLevelHealth = 12600, MinLevelMana = 3994, MaxLevelMana = 3994,
MinMeleeDmg = 391, MaxMeleeDmg = 585, MinRangedDmg = 313, MaxRangedDmg = 468, Armor = 9633, MeleeAttackPower = 146,  RangedAttackPower = 117, MeleeBaseAttackTime = 1500,  RangedBaseAttackTime = 2000, TrainerType = 3, TrainerClass = 3 WHERE Entry = 40405;  
-- UDB empty guid used
DELETE FROM creature WHERE guid = 54644;
DELETE FROM creature_addon WHERE guid = 54644;
DELETE FROM creature_movement WHERE id = 54644;
DELETE FROM game_event_creature WHERE guid = 54644;
DELETE FROM game_event_creature_data WHERE guid = 54644;
DELETE FROM creature_battleground WHERE guid = 54644;
DELETE FROM creature_linking WHERE guid = 54644 OR master_guid = 54644;
INSERT INTO creature (guid, id, modelid, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, curhealth, curmana, MovementType) VALUES
(54644, 40405, 0, 530, 1, 1, 9924.067, -7400.503, 13.71723, 6.073746, 120, 0, 12600, 3994, 0);

-- Pet Trainers -- gossip
UPDATE creature_template SET GossipMenuId = 4783 WHERE Entry IN (543,3545,3698,4320,16271,16675,40405);
