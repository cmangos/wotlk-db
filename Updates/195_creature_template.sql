-- Icecrown

-- Silver Blade Sailor
UPDATE creature_template SET MinLevel = 79, MaxLevel = 80, UnitClass = 2, Expansion = 2, MinLevelHealth = 12175, MaxLevelHealth = 12600, MinLevelMana = 3893, MaxLevelMana = 3994,
MinMeleeDmg = 417, MaxMeleeDmg = 582, MinRangedDmg = 341, MaxRangedDmg = 506, Armor = 9706, MeleeAttackPower = 608,  RangedAttackPower = 80, MeleeBaseAttackTime = 2000,  RangedBaseAttackTime = 2000 WHERE Entry = 35319;
UPDATE creature SET curhealth = 12175, curmana = 3893 WHERE id = 35319;
-- Crimson Dawn Sailor
UPDATE creature_template SET Expansion = 2, RangedBaseAttackTime = 2000 WHERE Entry = 35318;

-- Waypoints
UPDATE creature SET Spawndist = 0, MovementType = 2 WHERE guid IN (54289,54294,54296,54301);
DELETE FROM creature_movement WHERE id IN (54289,54294,54296,54301);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
-- #1 -- Silver Blade Sailor
(54301,1,9065.17,1257.45,4.03726,2000,0,2.37088,0,0),
(54301,2,9074.46,1246.58,4.15154,0,0,5.50854,0,0),
(54301,3,9095.06,1228.42,5.58283,2000,0,5.60279,0,0),
(54301,4,9080.87,1240.43,4.31364,0,0,2.39051,0,0),
-- #2 -- Silver Blade Sailor
(54296,1,9089.49,1256.84,4.18489,0,0,2.29783,0,0),
(54296,2,9079.46,1269.9,4.03743,2000,0,2.36381,0,0),
(54296,3,9089.56,1257.28,4.1788,0,0,5.37109,0,0),
(54296,4,9103.88,1235.61,5.60955,2000,0,5.22973,0,0),
(54296,5,9100.44,1241.23,5.12457,0,0,2.13526,0,0),
-- #3 -- Crimson Dawn Sailor
(54294,1,9040.59,804.034,5.48785,2000,0,0.980707,0,0),
(54294,2,9027.63,787.022,4.16104,0,0,3.84506,0,0),
(54294,3,9013.69,772.19,3.94491,2000,0,3.93381,0,0),
(54294,4,9027.56,787.003,4.15946,0,0,0.916303,0,0),
-- #4 -- Crimson Dawn Sailor
(54289,1,9032.14,812.607,5.49287,2000,0,0.615496,0,0),
(54289,2,9016.28,800.953,4.1919,0,0,3.91731,0,0),
(54289,3,8999.94,785.7,3.94657,2000,0,3.92202,0,0);
