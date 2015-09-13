-- Classic [1123]
-- Humar the Pridelord 
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, UnitFlags = 64, SpeedWalk = 1, SpeedRun = 1.428571429, DamageMultiplier = 1.7, MinMeleeDmg = 21.5, MaxMeleeDmg = 28.5, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 80, RangedAttackPower = 5, MeleeBaseAttackTime = 1300, RangedBaseAttackTime = 1300 WHERE Entry = 5828;
UPDATE creature SET modelid = 0, position_x = -639.0886, position_y = -3664.568, position_z = 95.22452, orientation = 2.440573, spawndist = 1, MovementType = 1 WHERE id = 5828;

-- Classic [1122]
-- Ambassador Infernus
UPDATE creature_template SET MinLevel = 42, SpeedWalk = 1, HealthMultiplier = 3, DamageMultiplier = 2.2, ArmorMultiplier = 1, MinMeleeDmg = 58.1, MaxMeleeDmg = 76.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 142, RangedAttackPower = 13, MeleeBaseAttackTime = 2000, DamageSchool = 2 WHERE Entry = 2745;

-- Classic [1121]
-- King Mosh
UPDATE creature_template SET MinLevel = 60, HealthMultiplier = 20, DamageMultiplier = 8.5, ArmorMultiplier = 1, MinLevelHealth = 61040, MaxLevelHealth = 61040, MinMeleeDmg = 77.9, MaxMeleeDmg = 103.4, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 6584;

-- Classic [1120]
-- Huricanian - stats, pathing
UPDATE creature_template SET Scale = 0, UnitFlags = 64, SpeedWalk = 1.4, SpeedRun = 1.428571429, MinMeleeDmg = 92.9, MaxMeleeDmg = 123.0, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, MovementType = 2 WHERE Entry = 14478;
UPDATE creature SET modelid = 0, position_x = -6518.560, position_y = 1786.397, position_z = 8.675016, spawndist = 0, MovementType = 2 WHERE guid = 43125;
DELETE FROM creature_movement WHERE id = (SELECT guid FROM creature WHERE id = 14478);
DELETE FROM creature_movement_template WHERE entry = 14478;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(14478, 1, -6513.018, 1813.922, 4.013925, 0, 0, 100, 0, 0),
(14478, 2, -6487.165, 1817.592, 3.343527, 0, 0, 100, 0, 0),
(14478, 3, -6463.739, 1787.981, 8.027637, 0, 0, 100, 0, 0),
(14478, 4, -6442.454, 1782.878, 10.88384, 0, 0, 100, 0, 0),
(14478, 5, -6413.579, 1788.175, 4.621660, 0, 0, 100, 0, 0),
(14478, 6, -6382.024, 1780.843, 2.502150, 0, 0, 100, 0, 0),
(14478, 7, -6345.296, 1774.620, 4.610785, 0, 0, 100, 0, 0),
(14478, 8, -6325.381, 1751.388, 1.960434, 0, 0, 100, 0, 0),
(14478, 9, -6316.682, 1718.207, 2.535166, 0, 0, 100, 0, 0),
(14478, 10, -6304.689, 1690.992, 1.901709, 0, 0, 100, 0, 0),
(14478, 11, -6279.769, 1689.267, 4.675986, 0, 0, 100, 0, 0),
(14478, 12, -6274.726, 1643.707, 4.396110, 0, 0, 100, 0, 0),
(14478, 13, -6275.510, 1612.685, 5.163792, 0, 0, 100, 0, 0),
(14478, 14, -6295.463, 1580.651, 0.492463, 0, 0, 100, 0, 0),
(14478, 15, -6310.759, 1549.342, 2.731886, 0, 0, 100, 0, 0),
(14478, 16, -6332.532, 1518.061, 1.550802, 0, 0, 100, 0, 0),
(14478, 17, -6355.264, 1514.468, 4.780538, 0, 0, 100, 0, 0),
(14478, 18, -6391.027, 1513.292, 4.346939, 0, 0, 100, 0, 0),
(14478, 19, -6421.498, 1502.604, 5.614395, 0, 0, 100, 0, 0),
(14478, 20, -6453.850, 1490.276, 6.788818, 0, 0, 100, 0, 0),
(14478, 21, -6487.023, 1501.032, 5.496054, 0, 0, 100, 0, 0),
(14478, 22, -6522.183, 1504.034, 2.713829, 0, 0, 100, 0, 0),
(14478, 23, -6552.034, 1512.453, 3.947961, 0, 0, 100, 0, 0),
(14478, 24, -6577.897, 1544.810, 0.103735, 0, 0, 100, 0, 0),
(14478, 25, -6579.297, 1580.114, 3.186564, 0, 0, 100, 0, 0),
(14478, 26, -6578.358, 1614.054, 8.826277, 0, 0, 100, 0, 0),
(14478, 27, -6598.862, 1645.875, 6.050514, 0, 0, 100, 0, 0),
(14478, 28, -6593.506, 1689.174, 4.137568, 0, 0, 100, 0, 0),
(14478, 29, -6587.823, 1725.753, 4.022511, 0, 0, 100, 0, 0),
(14478, 30, -6582.305, 1748.842, 3.366025, 0, 0, 100, 0, 0),
(14478, 31, -6554.310, 1776.093, 3.573771, 0, 0, 100, 0, 0),
(14478, 32, -6518.560, 1786.397, 8.675016, 0, 0, 100, 0, 0);

-- Classic [1119]
-- Bloodroar the Stalker
UPDATE creature_template SET MinLevel = 48, MaxLevel = 48, FactionAlliance = 16, FactionHorde = 16, UnitFlags = 64, SpeedWalk = 1, HealthMultiplier = 1.25, ArmorMultiplier = 1, MinMeleeDmg = 80.4, MaxMeleeDmg = 106.6, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 196, RangedAttackPower = 19, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 5346;
UPDATE creature SET modelid = 0, position_x = -5188.988, position_y = 1825.247, position_z = 115.7616, orientation = 4.312038, spawndist = 3, MovementType = 1 WHERE guid = 51841;
UPDATE creature SET modelid = 0, position_x = -5168.509, position_y = 1840.464, position_z = 114.0250, orientation = 2.338799 WHERE guid = 50984;


-- Classic [1118]
-- Diamond Head 
UPDATE creature_template SET Scale = 0, UnitFlags = 64, SpeedWalk = 1, ArmorMultiplier = 2, MinMeleeDmg = 75.6, MaxMeleeDmg = 100.3, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 184, RangedAttackPower = 17, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 5345;

-- Classic [1117]
-- Shanda the Spinner
UPDATE creature_template SET MinLevel = 19, MaxLevel = 19, UnitFlags = 64, SpeedWalk = 1, ArmorMultiplier = 1, MinLevelHealth = 449, MaxLevelHealth = 449, MinMeleeDmg = 27.6, MaxMeleeDmg = 36.5, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 817, MeleeAttackPower = 68, RangedAttackPower = 3, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 14266;

-- Classic [1116]
-- Olm the Wise
UPDATE creature_template SET MinLevel = 52, MaxLevel = 52, UnitFlags = 32832, SpeedWalk = 1, HealthMultiplier = 1.3, ArmorMultiplier = 1, MinLevelHealth = 3082, MaxLevelHealth = 3082, MinMeleeDmg = 88.3, MaxMeleeDmg = 117.2, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3108, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, ResistanceFire = 0, ResistanceNature = 0, ResistanceShadow = 0, ResistanceArcane = 0, MovementType = 1 WHERE Entry = 14343;
UPDATE creature SET curhealth = 3082 WHERE id = 14343;

-- Classic [1115]
-- Hayoc
UPDATE creature_template SET MinLevel = 41, MaxLevel = 41, Scale = 0, UnitFlags = 64, HealthMultiplier = 1.2, ArmorMultiplier = 1, MinLevelHealth = 1902, MaxLevelHealth = 1902, MinMeleeDmg = 58.7, MaxMeleeDmg = 77.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2101, MeleeAttackPower = 142, RangedAttackPower = 15, MeleeBaseAttackTime = 2000, ResistanceFire = 0, ResistanceNature = 0, ResistanceFrost = 0, ResistanceShadow = 0, ResistanceArcane = 0, MovementType = 1 WHERE Entry = 14234;
UPDATE creature SET curhealth = 1902 WHERE id = 14234;

-- Classic [1114]
-- Antilus the Soarer
UPDATE creature_template SET MinLevel = 48, MaxLevel = 48, FactionAlliance = 16, FactionHorde = 16, UnitFlags = 64, SpeedWalk = 1, HealthMultiplier = 1.25, DamageMultiplier = 1.25, ArmorMultiplier = 1, MinMeleeDmg = 80.4, MaxMeleeDmg = 106.6, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 196, RangedAttackPower = 19, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 5347;
UPDATE creature SET modelid = 0, position_x = -5802.390, position_y = 1577.410, position_z = 73.78505, MovementType = 2 WHERE guid = 51840;
DELETE FROM creature_movement_template WHERE entry = 5347;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(5347, 1, -5771.840, 1553.960, 69.56287, 0, 0, 100, 0, 0),
(5347, 2, -5740.690, 1535.510, 68.61464, 0, 0, 100, 0, 0),
(5347, 3, -5705.140, 1546.160, 69.12675, 0, 0, 100, 0, 0),
(5347, 4, -5673.370, 1580.830, 69.91760, 0, 0, 100, 0, 0),
(5347, 5, -5646.900, 1594.460, 70.99152, 0, 0, 100, 0, 0),
(5347, 6, -5613.440, 1575.120, 64.29109, 0, 0, 100, 0, 0),
(5347, 7, -5576.160, 1568.940, 60.28103, 0, 0, 100, 0, 0),
(5347, 8, -5565.660, 1594.916, 67.81759, 0, 0, 100, 0, 0),
(5347, 9, -5560.140, 1629.560, 68.72121, 0, 0, 100, 0, 0),
(5347, 10, -5555.990, 1650.140, 68.10619, 0, 0, 100, 0, 0),
(5347, 11, -5526.420, 1648.400, 50.91718, 0, 0, 100, 0, 0),
(5347, 12, -5491.720, 1619.420, 47.95635, 0, 0, 100, 0, 0),
(5347, 13, -5455.810, 1596.310, 47.60862, 0, 0, 100, 0, 0),
(5347, 14, -5412.830, 1618.730, 50.18225, 0, 0, 100, 0, 0),
(5347, 15, -5378.369, 1646.102, 49.86166, 0, 0, 100, 0, 0),
(5347, 16, -5393.750, 1672.950, 51.37539, 0, 0, 100, 0, 0),
(5347, 17, -5417.440, 1697.570, 61.02838, 0, 0, 100, 0, 0),
(5347, 18, -5451.480, 1689.920, 56.94900, 0, 0, 100, 0, 0),
(5347, 19, -5485.370, 1705.930, 58.49550, 0, 0, 100, 0, 0),
(5347, 20, -5523.350, 1695.240, 60.49908, 0, 0, 100, 0, 0),
(5347, 21, -5549.170, 1714.110, 75.12833, 0, 0, 100, 0, 0),
(5347, 22, -5591.390, 1713.790, 82.83695, 0, 0, 100, 0, 0),
(5347, 23, -5631.340, 1708.570, 86.39445, 0, 0, 100, 0, 0),
(5347, 24, -5673.967, 1694.068, 90.81719, 0, 0, 100, 0, 0),
(5347, 25, -5704.540, 1686.800, 90.89021, 0, 0, 100, 0, 0),
(5347, 26, -5731.920, 1661.130, 87.00084, 0, 0, 100, 0, 0),
(5347, 27, -5762.200, 1647.850, 84.15019, 0, 0, 100, 0, 0),
(5347, 28, -5793.000, 1617.910, 82.89826, 0, 0, 100, 0, 0),
(5347, 29, -5802.390, 1577.410, 73.78505, 0, 0, 100, 0, 0);

-- Classic [1113]
-- Warlord Thresh'jin - stats, position & equipment
UPDATE creature SET modelid = 0, position_x = 3439.25, position_y = -4980.96, position_z = 195.8113, orientation = 2.321288 WHERE guid = 86607;
UPDATE creature_template SET UnitFlags = 32768, SpeedWalk = 1, DamageMultiplier = 1.25, MinMeleeDmg = 99.8, MaxMeleeDmg = 132.4, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 242, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1, EquipmentTemplateId = 259 WHERE Entry = 10822;

-- Classic [1112]
-- Improved social behaviour of some NPCs in Blackrock Depths
-- Linked all NPCs in The Manufactory to NPC 8983 (Golem Lord Argelmach) in Blackrock Depths
-- Moved creature addons for golems to template addons and moved the stone aura to ACID for better handling
DELETE FROM creature_linking_template WHERE map = 230 AND entry IN (8900, 8906, 8907, 8920);
INSERT INTO creature_linking_template VALUES
(8900, 230, 8983, 1, 100), -- Doomforge Arcanasmith : not all of them, only those in The Manufactory, those in Halls of Crafting are not linked
(8906, 230, 8920, 1, 12), -- Ragereaver Golem
(8907, 230, 8983, 1, 0), -- Wrath Hammer Construct
(8920, 230, 8983, 1, 100); -- Weapon Technician: only those in The Manufactory, those in Shadowforge City are not linked 
DELETE FROM creature_linking WHERE guid = 45932;
INSERT INTO creature_linking VALUES
(45932, 45931, 1);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (8906, 8907));
DELETE FROM creature_template_addon WHERE entry IN (8906, 8907);
INSERT INTO creature_template_addon VALUES
(8906, 0, 0, 1, 16, 0, 0, NULL),
(8907, 0, 0, 1, 16, 0, 0, NULL);

-- Classic [1111]
-- stats
-- Anub-Shiah
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 8, PowerMultiplier = 5, DamageMultiplier = 6, ArmorMultiplier = 1, MinLevelHealth = 16208, MaxLevelHealth = 16208, MinLevelMana = 10205, MaxLevelMana = 10205, MinMeleeDmg = 77.1, MaxMeleeDmg = 102.2, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2610, MeleeAttackPower = 210, RangedAttackPower = 20, MeleeBaseAttackTime = 1800, RangedBaseAttackTime = 1800 WHERE Entry = 9031;
-- Gorosh the Dervish
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 6, PowerMultiplier = 2, DamageMultiplier = 6, ArmorMultiplier = 1, MinLevelHealth = 16194, MaxLevelHealth = 16194, MinMeleeDmg = 86.3, MaxMeleeDmg = 114.4, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3327, MeleeAttackPower = 234, RangedAttackPower = 23, MeleeBaseAttackTime = 1800, RangedBaseAttackTime = 1800 WHERE Entry = 9027;
-- Grizzle
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 0.666668, HealthMultiplier = 9, PowerMultiplier = 2, DamageMultiplier = 6, ArmorMultiplier = 1, MinLevelHealth = 22797, MaxLevelHealth = 22797, MinMeleeDmg = 92.1, MaxMeleeDmg = 122.2, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3244, MeleeAttackPower = 224, RangedAttackPower = 22, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9028;

-- Classic [1110]
-- Gravis Slipknot
UPDATE creature_template SET UnitFlags = 32832, SpeedWalk = 1, MinMeleeDmg = 49.7, MaxMeleeDmg = 66.0, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 120, RangedAttackPower = 12, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 14221;
UPDATE creature SET modelid = 0, position_x = 717.6572, position_y = -846.4034, position_z = 160.7536, orientation = 3.351032, MovementType = 2 WHERE id = 14221;
DELETE FROM creature_movement_template WHERE entry = 14221;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(14221, 1, 710.1757, -847.2303, 158.9778, 0, 0, 100, 0, 0),
(14221, 2, 700.1337, -853.0627, 158.5158, 0, 0, 100, 0, 0),
(14221, 3, 684.4196, -847.6795, 158.4978, 0, 0, 100, 0, 0),
(14221, 4, 666.9366, -858.7391, 158.4978, 0, 0, 100, 0, 0),
(14221, 5, 663.8845, -866.6437, 158.4985, 0, 0, 100, 0, 0),
(14221, 6, 662.6373, -879.3889, 158.2913, 0, 0, 100, 0, 0),
(14221, 7, 659.8421, -884.8450, 158.6172, 0, 0, 100, 0, 0),
(14221, 8, 666.7291, -899.7902, 164.6245, 0, 0, 100, 0, 0),
(14221, 9, 669.0222, -904.2005, 164.4140, 0, 0, 100, 0, 0),
(14221, 10, 667.2293, -921.9614, 164.4140, 0, 0, 100, 0, 0),
(14221, 11, 666.7783, -939.5458, 164.8495, 0, 0, 100, 0, 0),
(14221, 12, 673.5872, -950.2739, 164.3495, 0, 0, 100, 0, 0),
(14221, 13, 684.3471, -959.2615, 164.3495, 0, 0, 100, 0, 0),
(14221, 14, 698.7084, -966.3210, 164.6530, 0, 0, 100, 0, 0),
(14221, 15, 708.3213, -976.5755, 165.5618, 30000, 0, 100, 0, 0),
(14221, 16, 700.1210, -957.0955, 164.6795, 0, 0, 100, 0, 0),
(14221, 17, 715.2240, -933.3687, 164.3436, 0, 0, 100, 0, 0),
(14221, 18, 716.5434, -899.9173, 166.3662, 0, 0, 100, 0, 0),
(14221, 19, 715.2043, -866.5953, 161.6596, 0, 0, 100, 0, 0),
(14221, 20, 717.6572, -846.4034, 160.7536, 0, 0, 100, 0, 0),
(14221, 21, 717.6572, -846.4034, 160.7536, 30000, 0, 3.351032, 0, 0);
 
-- Classic [1108]
-- Fixed stats of boss NPCs in Blackrock Depths
-- Lord Roccor
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, PowerMultiplier = 2, DamageMultiplier = 3.6, ArmorMultiplier = 1.5, MinMeleeDmg = 86.3, MaxMeleeDmg = 114.4, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 210, RangedAttackPower = 20, MeleeBaseAttackTime = 2000, ResistanceFire = 153, ResistanceNature = 153, ResistanceFrost = 0, ResistanceShadow = 0, ResistanceArcane = 0 WHERE Entry = 9025;
-- Houndmaster Grebmar
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, PowerMultiplier = 2, DamageMultiplier = 3.7, MinMeleeDmg = 88.3, MaxMeleeDmg = 117.2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 214, RangedAttackPower = 14, MeleeBaseAttackTime = 2000 WHERE Entry = 9319;
-- High Interrogator Gerstahn
UPDATE creature_template SET CreatureTypeFlags = 72, DamageMultiplier = 3.3, MinMeleeDmg = 82.2, MaxMeleeDmg = 108.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 202, RangedAttackPower = 19, MeleeBaseAttackTime = 2000 WHERE Entry = 9018;
-- High Justice Grimstone
UPDATE creature_template SET UnitFlags = 832, DynamicFlags = 0, PowerMultiplier = 2, DamageMultiplier = 3.7, MinMeleeDmg = 88.3, MaxMeleeDmg = 117.2, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3108, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10096;
-- Hedrum the Creeper
UPDATE creature_template SET MinLevel = 52, UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, PowerMultiplier = 2, DamageMultiplier = 5.5, ArmorMultiplier = 1, MinLevelHealth = 20851, MaxLevelHealth = 20851, MinMeleeDmg = 108.0, MaxMeleeDmg = 143.3, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3163, MeleeAttackPower = 218, RangedAttackPower = 22, MeleeBaseAttackTime = 2400, RangedBaseAttackTime = 2400 WHERE Entry = 9032;
-- Okthor the Breaker
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1.6, HealthMultiplier = 8, PowerMultiplier = 8, DamageMultiplier = 4.25, ArmorMultiplier = 1, MinLevelHealth = 15696, MaxLevelHealth = 15696, MinLevelMana = 15856, MaxLevelMana = 15856, MinMeleeDmg = 83.8, MaxMeleeDmg = 111.0, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2544, MeleeAttackPower = 206, RangedAttackPower = 20, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9030;
-- Pyromancer Loregrain
-- Warder Stilgiss
UPDATE creature_template SET CreatureTypeFlags = 72, HealthMultiplier = 4, PowerMultiplier = 5, DamageMultiplier = 3.5, ArmorMultiplier = 1, MinLevelHealth = 8636, MaxLevelHealth = 8636, MinLevelMana = 10815, MaxLevelMana = 10815, MinMeleeDmg = 89.3, MaxMeleeDmg = 118.2, Armor = 2699, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 220, RangedAttackPower = 21, MeleeBaseAttackTime = 2000 WHERE Entry = 9041;
UPDATE creature SET curhealth = 8636, curmana = 10815 WHERE id = 9041;
-- Verek
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, HealthMultiplier = 4, PowerMultiplier = 2, DamageMultiplier = 4.5, ArmorMultiplier = 1, MinLevelHealth = 10456, MaxLevelHealth = 10456, MinMeleeDmg = 94.0, MaxMeleeDmg = 124.7, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3327, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 2000 WHERE Entry = 9042;
UPDATE creature SET curhealth = 10456 WHERE id = 9042;
-- Watchman Doomgrip
UPDATE creature_template SET FactionAlliance = 54, FactionHorde = 54, UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 5, PowerMultiplier = 2, DamageMultiplier = 5, ArmorMultiplier = 1, MinLevelHealth = 10455, MaxLevelHealth = 10455, MinLevelMana = 4234, MaxLevelMana = 4234, MinMeleeDmg = 87.5, MaxMeleeDmg = 115.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2654, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9476;
-- Dark Keeper Bethek
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.5, ArmorMultiplier = 1, MinLevelHealth = 6273, MaxLevelHealth = 6273, MinLevelMana = 4234, MaxLevelMana = 4234, MinMeleeDmg = 87.5, MaxMeleeDmg = 115.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2654, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 9437;
-- Dark Keeper Ofgut
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.5, ArmorMultiplier = 1, MinLevelHealth = 6273, MaxLevelHealth = 6273, MinLevelMana = 4234, MaxLevelMana = 4234, MinMeleeDmg = 87.5, MaxMeleeDmg = 115.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2654, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 9438;
-- Dark Keeper Pelver
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.5, ArmorMultiplier = 1, MinLevelHealth = 6273, MaxLevelHealth = 6273, MinLevelMana = 4234, MaxLevelMana = 4234, MinMeleeDmg = 87.5, MaxMeleeDmg = 115.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2654, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 9441;
-- Dark Keeper Uggel
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.5, ArmorMultiplier = 1, MinLevelHealth = 6273, MaxLevelHealth = 6273, MinLevelMana = 4234, MaxLevelMana = 4234, MinMeleeDmg = 87.5, MaxMeleeDmg = 115.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2654, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 9442;
-- Dark Keeper Vorfalk
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.5, ArmorMultiplier = 1, MinLevelHealth = 6273, MaxLevelHealth = 6273, MinLevelMana = 4234, MaxLevelMana = 4234, MinMeleeDmg = 87.5, MaxMeleeDmg = 115.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2654, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 9443;
-- Dark Keeper Zimrel
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.5, ArmorMultiplier = 1, MinLevelHealth = 6273, MaxLevelHealth = 6273, MinLevelMana = 4234, MaxLevelMana = 4234, MinMeleeDmg = 87.5, MaxMeleeDmg = 115.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2654, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 9439;
-- Lord Incendius
UPDATE creature_template SET MinLevel = 55, MaxLevel = 55, UnitFlags = 32832, CreatureTypeFlags = 72, HealthMultiplier = 6.5, PowerMultiplier = 5, DamageMultiplier = 5, ArmorMultiplier = 1, MinLevelHealth = 16991, MaxLevelHealth = 16991, MinMeleeDmg = 94.0, MaxMeleeDmg = 124.7, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3244, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, ResistanceFire = 0, ResistanceNature = 0, ResistanceFrost = 0, ResistanceShadow = 0, ResistanceArcane = 0 WHERE Entry = 9017;
UPDATE creature SET curhealth = 16991 WHERE id = 9017;
-- BaelGar
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, HealthMultiplier = 10, PowerMultiplier = 2, DamageMultiplier = 6, ArmorMultiplier = 1, MinLevelHealth = 25330, MaxLevelHealth = 25330, MinMeleeDmg = 110.5, MaxMeleeDmg = 146.6, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3216, MeleeAttackPower = 224, RangedAttackPower = 22, MeleeBaseAttackTime = 2400, RangedBaseAttackTime = 2400 WHERE Entry = 9016;
UPDATE creature SET curhealth = 25330 WHERE id = 9016;
-- General Angerforge
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, HealthMultiplier = 8, PowerMultiplier = 2, DamageMultiplier = 6.5, ArmorMultiplier = 1, MinLevelHealth = 22272, MaxLevelHealth = 22272, MinMeleeDmg = 88.1, MaxMeleeDmg = 116.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3326, MeleeAttackPower = 238, RangedAttackPower = 24, MeleeBaseAttackTime = 1800, RangedBaseAttackTime = 1800 WHERE Entry = 9033;
UPDATE creature SET curhealth = 22272 WHERE id = 9033;
-- Golem Lord Argelmach
UPDATE creature_template SET HealthMultiplier = 6, PowerMultiplier = 8, DamageMultiplier = 6.25, ArmorMultiplier = 1, MinLevelHealth = 13362, MaxLevelHealth = 13362, MinLevelMana = 17928, MaxLevelMana = 17928, MinMeleeDmg = 91.1, MaxMeleeDmg = 120.7, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2744, MeleeAttackPower = 224, RangedAttackPower = 22, MeleeBaseAttackTime = 2000 WHERE Entry = 8983;
UPDATE creature SET curhealth = 13362, curmana = 17928 WHERE id = 8983;
-- Hurley Blackbreath
UPDATE creature_template SET FactionAlliance = 54, FactionHorde = 54, UnitFlags = 33088, CreatureTypeFlags = 72, HealthMultiplier = 5, PowerMultiplier = 2, ArmorMultiplier = 1, MinLevelHealth = 13070, MaxLevelHealth = 13070, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3271, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9537;
-- Phalanx
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, PowerMultiplier = 2, DamageMultiplier = 7, MinMeleeDmg = 94.0, MaxMeleeDmg = 124.7, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 228, RangedAttackPower = 23, MovementType = 1 WHERE Entry = 9502;
-- Ambassador Flamelash
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, HealthMultiplier = 10, PowerMultiplier = 2, DamageMultiplier = 5, ArmorMultiplier = 1, MinLevelHealth = 27840, MaxLevelHealth = 27840, MinMeleeDmg = 97.9, MaxMeleeDmg = 129.8, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3380, MeleeAttackPower = 283, RangedAttackPower = 24, MeleeBaseAttackTime = 2000 WHERE Entry = 9156;
UPDATE creature SET curhealth = 27840 WHERE id = 9156;
-- Panzor the Invincible
UPDATE creature_template SET FactionAlliance = 54, FactionHorde = 54, NpcFlags = 32832, CreatureTypeFlags = 72, HealthMultiplier = 5, PowerMultiplier = 2, DamageMultiplier = 6, ArmorMultiplier = 1.5, MinMeleeDmg = 95.9, MaxMeleeDmg = 127.1, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 234, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 8923;
-- Doomrel
UPDATE creature_template SET CreatureTypeFlags = 72, DamageMultiplier = 3.7, MinMeleeDmg = 89.3, MaxMeleeDmg = 118.2, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2699, MeleeAttackPower = 220, RangedAttackPower = 21, MeleeBaseAttackTime = 2000 WHERE Entry = 9039;
-- Doperel
UPDATE creature_template SET CreatureTypeFlags = 72, UnitClass = 1, PowerMultiplier = 2, DamageMultiplier = 4, ArmorMultiplier = 0.5, MinMeleeDmg = 95.9, MaxMeleeDmg = 127.1, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 234, RangedAttackPower = 23, MeleeBaseAttackTime = 2000 WHERE Entry = 9040;
-- Gloomrel
UPDATE creature_template SET CreatureTypeFlags = 72, PowerMultiplier = 2, DamageMultiplier = 5.6, MinMeleeDmg = 95.9, MaxMeleeDmg = 127.1, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 234, RangedAttackPower = 23, MeleeBaseAttackTime = 2000 WHERE Entry = 9037;
-- Angerrel
UPDATE creature_template SET CreatureTypeFlags = 72, PowerMultiplier = 2, DamageMultiplier = 4, MinMeleeDmg = 94.0, MaxMeleeDmg = 124.7, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 2000 WHERE Entry = 9035;
-- Haterel
UPDATE creature_template SET CreatureTypeFlags = 72, DamageMultiplier = 4, MinMeleeDmg = 87.5, MaxMeleeDmg = 115.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000 WHERE Entry = 9034;
-- Vilerel
UPDATE creature_template SET CreatureTypeFlags = 72, DamageMultiplier = 3.6, MinMeleeDmg = 89.3, MaxMeleeDmg = 118.2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 220, RangedAttackPower = 21, MeleeBaseAttackTime = 2000 WHERE Entry = 9036;
-- Seethrel
UPDATE creature_template SET CreatureTypeFlags = 72, DamageMultiplier = 3.6, MinMeleeDmg = 89.3, MaxMeleeDmg = 118.2, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2699, MeleeAttackPower = 220, RangedAttackPower = 21, MeleeBaseAttackTime = 2000 WHERE Entry = 9038;
-- Emperor Dagran Thaurissan
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, HealthMultiplier = 9, PowerMultiplier = 2, DamageMultiplier = 7.25, ArmorMultiplier = 1, MinLevelHealth = 26649, MaxLevelHealth = 26649, MinMeleeDmg = 101.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3489, MeleeAttackPower = 248, RangedAttackPower = 25, MeleeBaseAttackTime = 2000 WHERE Entry = 9019;
UPDATE creature SET curhealth = 26649 WHERE id = 9019;
-- Christmas Emperor Dagran Thaurissan
UPDATE creature_template SET MinLevel = 59, MaxLevel = 59, FactionAlliance = 54, FactionHorde = 54, Scale = 0, UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, PowerMultiplier = 2, DamageMultiplier = 7.25, MinLevelHealth = 26649, MaxLevelHealth = 26649, MinMeleeDmg = 101.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3489, MeleeAttackPower = 248, RangedAttackPower = 25 WHERE Entry = 15775;
-- Princess Moira Bronzebeard
UPDATE creature_template SET HealthMultiplier = 6.5, PowerMultiplier = 3, DamageMultiplier = 4.5, ArmorMultiplier = 1, MinLevelHealth = 14931, MaxLevelHealth = 14931, MinLevelMana = 6867, MaxLevelMana = 6867, MinMeleeDmg = 92.9, MaxMeleeDmg = 123.0, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2788, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 2000 WHERE Entry = 8929;
UPDATE creature SET curhealth = 14931, curmana = 6867 WHERE id = 8929;
-- High Priestess of Thaurissan
UPDATE creature_template SET UnitFlags = 32832, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 6.5, PowerMultiplier = 3, DamageMultiplier = 4.5, ArmorMultiplier = 1, MinLevelHealth = 14931, MaxLevelHealth = 14931, MinLevelMana = 6867, MaxLevelMana = 6867, MinMeleeDmg = 92.9, MaxMeleeDmg = 123, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2788, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10076;

-- Classic [1106]
-- Fixed stats of "trash" NPCs in Blackrock Depths
-- Anvilrage Overseer 8889
UPDATE creature_template SET MinLevel = 48, HealthMultiplier = 3, DamageMultiplier = 2.9, MeleeAttackPower = 200, RangedAttackPower=19, MinMeleeDmg = 80, MaxMeleeDmg = 110, MeleeBaseAttackTime = 2000 WHERE Entry = 8889;
-- Anvilrage Warden 8890
UPDATE creature_template SET DamageMultiplier = 3, MeleeAttackPower = 206, RangedAttackPower = 20, MinMeleeDmg = 83, MaxMeleeDmg = 112, MeleeBaseAttackTime = 2000 WHERE Entry = 8890;
-- Anvilrage Guardsman 8891
UPDATE creature_template SET DamageMultiplier = 3.1, MeleeAttackPower = 210, RangedAttackPower = 20, MinMeleeDmg = 85, MaxMeleeDmg = 114, MeleeBaseAttackTime = 2000 WHERE Entry = 8891;
-- Anvilrage Footman 8892
UPDATE creature_template SET MinLevelHealth = 6876, MaxLevelHealth = 7113, HealthMultiplier = 3, DamageMultiplier = 3.6, MeleeAttackPower = 214, MinMeleeDmg = 86, MaxMeleeDmg = 117, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8892;
UPDATE creature SET curhealth = 6876 WHERE id = 8892;
-- Anvilrage Soldier 8893
UPDATE creature_template SET MinLevelHealth = 7113, MaxLevelHealth = 7359, HealthMultiplier = 3, DamageMultiplier = 3.30, MeleeAttackPower = 218, RangedAttackPower = 22, MinMeleeDmg = 88, MaxMeleeDmg = 119, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8893;
UPDATE creature SET curhealth = 7113 WHERE id = 8893;
-- Anvilrage Medic 8894
UPDATE creature_template SET MinLevel = 50, MinLevelHealth = 4980, MaxLevelHealth = 5151, MinLevelMana = 9300, MaxLevelMana = 9530, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 4, MeleeAttackPower = 97, RangedAttackPower = 23, MinMeleeDmg = 63, MaxMeleeDmg = 89, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8894;
UPDATE creature SET curhealth = 4980, curmana = 9300 WHERE id = 8894;
-- Anvilrage Officer 8895
UPDATE creature_template SET MinLevelHealth = 5886, MaxLevelHealth = 6078, MinLevelMana = 3964, MaxLevelMana = 4082, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.4, MeleeAttackPower = 210, RangedAttackPower = 20, MinMeleeDmg = 84, MaxMeleeDmg = 114, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8895;
UPDATE creature SET curhealth = 6078, curmana = 3964 WHERE id = 8895;
-- Anvilrage Marshal 8898
UPDATE creature_template SET MinLevelHealth = 6078, MaxLevelHealth = 6273, MinLevelMana = 4082, MaxLevelMana = 4234, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.5, MeleeAttackPower = 214, RangedAttackPower = 21, MinMeleeDmg = 84, MaxMeleeDmg = 114, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8898;
UPDATE creature SET curhealth = 6078, curmana = 4082 WHERE id = 8898;
-- Anvilrage Reservist 8901
UPDATE creature_template SET MinLevel = 52, MinLevelHealth = 760, MaxLevelHealth = 784, HealthMultiplier = 0.3, DamageMultiplier = 1, MeleeAttackPower = 228, RangedAttackPower = 23, MinMeleeDmg = 92, MaxMeleeDmg = 125, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8901;
UPDATE creature SET curhealth = 760 WHERE id = 8901;
-- Anvilrage Captain 8903
UPDATE creature_template SET MinLevel = 55, MinLevelHealth = 7842, MaxLevelHealth = 8097, HealthMultiplier = 3, DamageMultiplier = 3.62, MeleeAttackPower = 234, RangedAttackPower = 23, MinMeleeDmg = 94, MaxMeleeDmg = 127, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8903;
-- Reginald Windsor
UPDATE creature_template SET MinLevelHealth = 8536, MaxLevelHealth = 8536, HealthMultiplier = 3.6, PowerMultiplier = 2, DamageMultiplier = 3.5, MinMeleeDmg = 54, MaxMeleeDmg = 72, MeleeAttackPower = 214, ArmorMultiplier = 1 WHERE Entry = 9023;
-- Marshal Reginald Windsor
UPDATE creature_template SET MinLevelHealth = 8536, MaxLevelHealth = 8536,  HealthMultiplier = 3.6, PowerMultiplier = 2, DamageMultiplier = 7.5, MinMeleeDmg = 54, MaxMeleeDmg = 72, MeleeAttackPower = 214, ArmorMultiplier = 1 WHERE Entry = 9682;
-- Doomforge Arcanasmith 8900
UPDATE creature_template SET MaxLevelHealth = 2379, MaxLevelMana = 5013, HealthMultiplier = 1.3, DamageMultiplier = 1.75, MinMeleeDmg = 65, MaxMeleeDmg = 93, MeleeAttackPower = 101, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8900;
-- Ragereaver Golem 8906
UPDATE creature_template SET MinLevelHealth = 7599, MaxLevelHealth = 7842, MinLevelMana = 0, MaxLevelMana = 0, HealthMultiplier = 3, DamageMultiplier = 3.6, MinMeleeDmg = 92, MaxMeleeDmg = 125, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8906;
-- Wrath Hammer Construct 8907
UPDATE creature_template SET MinLevelHealth = 7842, MaxLevelHealth = 8097, HealthMultiplier = 3, DamageMultiplier = 3.6, MinMeleeDmg = 94, MaxMeleeDmg = 127, MeleeAttackPower = 234, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8907;
UPDATE creature SET curhealth = 7842 WHERE id = 8907;
-- Weapon Technician 8920
UPDATE creature_template SET MinLevelHealth = 2614, MaxLevelHealth = 2699, HealthMultiplier = 1.0, DamageMultiplier = 1.75, MinMeleeDmg = 94, MaxMeleeDmg = 127, MeleeAttackPower = 234, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8920;
UPDATE creature SET curhealth = 2614 WHERE id = 8920;
-- Ribbly Screwspigot 9543
UPDATE creature_template SET MinLevel = 53, HealthMultiplier = 3.0, PowerMultiplier = 2, DamageMultiplier = 3.3, MinMeleeDmg = 90, MaxMeleeDmg = 119, MeleeAttackPower = 218, RangedAttackPower = 22, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 9543;
-- Ribbly's Crony 10043
UPDATE creature_template SET MinLevel = 48, HealthMultiplier = 3.0, PowerMultiplier = 2, DamageMultiplier = 3.2, MinMeleeDmg = 80, MaxMeleeDmg = 117, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 10043;
-- Fireguard Destroyer 8911
UPDATE creature_template SET MinLevelHealth = 7599, MaxLevelHealth = 8097, HealthMultiplier = 3.0, PowerMultiplier = 2, DamageMultiplier = 3.6, MinMeleeDmg = 92, MaxMeleeDmg = 127, MeleeAttackPower = 234, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8911;
-- Blazing Fireguard 8910
UPDATE creature_template SET MaxLevelHealth = 6078, MaxLevelMana = 4082, DamageMultiplier = 3.40, MinMeleeDmg = 82, MaxMeleeDmg = 114, MeleeAttackPower = 210, RangedAttackPower = 20, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8910;
-- Fireguard 8909
UPDATE creature_template SET MinLevelHealth = 5316, MaxLevelHealth = 5691, MinLevelMana = 3614, MaxLevelMana = 3846, HealthMultiplier = 3.0, PowerMultiplier = 2, DamageMultiplier = 3.20, MinMeleeDmg = 79, MaxMeleeDmg = 109, MeleeAttackPower = 202, RangedAttackPower = 19, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1, ResistanceFrost =  -52 WHERE Entry = 8909;
-- Doomforge Craftsman 8897
UPDATE creature_template SET MinLevelHealth = 3082, MaxLevelHealth = 3293, HealthMultiplier = 1.3, PowerMultiplier = 1, DamageMultiplier = 1.7, MinMeleeDmg = 88, MaxMeleeDmg = 122, MeleeAttackPower = 224, RangedAttackPower = 22, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8897;
UPDATE creature SET curhealth = 3082 WHERE id = 8897;
-- Doomforge Dragoon 8899
UPDATE creature_template SET MinLevelHealth = 7599, MaxLevelHealth = 7842, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.5, MinMeleeDmg = 92, MaxMeleeDmg = 125, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8899;
UPDATE creature SET curhealth = 7599 WHERE id = 8899;
-- Shadowforge Citizen 8902
UPDATE creature_template SET MinLevelHealth = 2026, MaxLevelHealth = 2159, MinLevelMana = 2041, MaxLevelMana = 2163, HealthMultiplier = 1.0, PowerMultiplier = 1, DamageMultiplier = 1.8, MinMeleeDmg = 86, MaxMeleeDmg = 118, MeleeAttackPower = 220, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8902;
UPDATE creature SET curhealth = 2026, curmana = 2041 WHERE id = 8902;
-- Shadowforge Flame Keeper 9956
UPDATE creature_template SET MinMeleeDmg = 92, MaxMeleeDmg = 125, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 2000 WHERE Entry = 9956;
-- Shadowforge Senator 8904
UPDATE creature_template SET MinLevel = 55, MinLevelHealth = 2471, MaxLevelHealth = 2550, MinLevelMana = 5013, MaxLevelMana = 5206, HealthMultiplier = 1.35, PowerMultiplier = 1, DamageMultiplier = 1.75, MinMeleeDmg = 67, MaxMeleeDmg = 94, MeleeAttackPower = 104, RangedAttackPower = 24, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8904;
UPDATE creature SET curhealth = 2550, curmana = 5013 WHERE id = 8904;
-- Shadowforge Peasant 8896
UPDATE creature_template SET MinLevelHealth = 2466, MaxLevelHealth = 2634, MinLevelMana = 1923, MaxLevelMana = 2041, HealthMultiplier = 1.3, PowerMultiplier = 1, DamageMultiplier = 1.7, MinMeleeDmg = 82, MaxMeleeDmg = 114, MeleeAttackPower = 210, RangedAttackPower = 20, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8896;
UPDATE creature SET curhealth = 2466, curmana = 1923 WHERE id = 8896;
-- Molten War Golem 8908
UPDATE creature_template SET MaxLevelHealth = 11874, MaxLevelMana = 4326, DamageMultiplier = 5.5, MinMeleeDmg = 87, MaxMeleeDmg = 118, MeleeAttackPower = 220, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8908;
-- Warbringer Construct 8905
UPDATE creature_template SET MinLevelHealth = 7359, MaxLevelHealth = 7599, HealthMultiplier = 3, DamageMultiplier = 3.6, MinMeleeDmg = 90, MaxMeleeDmg = 122, MeleeAttackPower = 224, RangedAttackPower = 22, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8905;
-- Blackbreath Crony 9541
UPDATE creature_template SET DamageMultiplier = 3.3, MinMeleeDmg = 90, MaxMeleeDmg = 119, MeleeAttackPower = 218, RangedAttackPower = 22, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 9541;
-- Hurley Blackbreath 9537
UPDATE creature_template SET MinLevelHealth = 13070, MaxLevelHealth = 13070, HealthMultiplier = 5, PowerMultiplier = 2, DamageMultiplier = 7.5, MinMeleeDmg = 94, MaxMeleeDmg = 125, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1, UnitFlags = 33088 WHERE Entry = 9537;
-- Hammered Patron 9554
UPDATE creature_template SET MinLevelHealth = 6186, MaxLevelHealth = 7113, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.5, MinMeleeDmg = 80, MaxMeleeDmg = 117, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 9554;
-- Grim Patron 9545
UPDATE creature_template SET DamageMultiplier = 1.6, MinMeleeDmg = 80, MaxMeleeDmg = 117, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000 WHERE Entry = 9545;
-- Guzzling Patron 9547
UPDATE creature_template SET DamageMultiplier = 1.85, MinMeleeDmg = 57, MaxMeleeDmg = 87, MeleeAttackPower = 95, RangedAttackPower = 22, MeleeBaseAttackTime = 2000 WHERE Entry = 9547;
-- Twilight's Hammer Torturer 8912
UPDATE creature_template SET DamageMultiplier = 3.1, MinMeleeDmg = 77, MaxMeleeDmg = 106, MeleeAttackPower = 198, RangedAttackPower = 19, MeleeBaseAttackTime = 2000 WHERE Entry = 8912;
-- Twilight Emissary 8913
UPDATE creature_template SET MinLevelHealth = 4980, MaxLevelHealth = 5151, MinLevelMana = 9300, MaxLevelMana = 9530, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.3, MinMeleeDmg = 63, MaxMeleeDmg = 89, MeleeAttackPower = 97, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8913;
UPDATE creature SET curhealth = 4980, curmana = 9300 WHERE id = 8913;
-- Twilight Bodyguard 8914
UPDATE creature_template SET MinLevelHealth = 5886, MaxLevelHealth = 6078, MinLevelMana = 3964, MaxLevelMana = 4082, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.4, MinMeleeDmg = 84, MaxMeleeDmg = 114, MeleeAttackPower = 210, RangedAttackPower = 20, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8914;
UPDATE creature SET curhealth = 5886, curmana = 3964 WHERE id = 8914;
-- Twilight's Hammer Ambassador 8915
UPDATE creature_template SET DamageMultiplier = 1.75, MinMeleeDmg = 86, MaxMeleeDmg = 116, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000 WHERE Entry = 8915;
-- Twilight's Hammer Executioner 9398
UPDATE creature_template SET MinLevelHealth = 7842, MaxLevelHealth = 8097, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 4, MinMeleeDmg = 94, MaxMeleeDmg = 127, MeleeAttackPower = 234, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 9398;
-- Dark Guard 9445
UPDATE creature_template SET MinLevelHealth = 7359, MaxLevelHealth = 7599, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3.4, MinMeleeDmg = 90, MaxMeleeDmg = 122, MeleeAttackPower = 224, RangedAttackPower = 22, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 9445;
-- Bloodhound 8921
 UPDATE creature_template SET DamageMultiplier = 3, MinMeleeDmg = 83, MaxMeleeDmg = 112, MeleeAttackPower = 206, RangedAttackPower = 20, MeleeBaseAttackTime = 2000 WHERE Entry = 8921;
-- Bloodhound Mastiff 8922
UPDATE creature_template SET MinLevelHealth = 3293, MaxLevelHealth = 3398, HealthMultiplier = 3, PowerMultiplier = 2, DamageMultiplier = 3, MinMeleeDmg = 92, MaxMeleeDmg = 125, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8922;
UPDATE creature SET curhealth = 3293 WHERE id = 8922;
-- Dredge Worm 8925
UPDATE creature_template SET MaxLevelHealth = 4268, HealthMultiplier = 1.8, PowerMultiplier = 1, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1, MinMeleeDmg = 85, MaxMeleeDmg = 117, DamageMultiplier = 2 WHERE Entry = 8925;
-- Deep Stinger 8926
UPDATE creature_template SET MaxLevelHealth = 7113, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1, MinMeleeDmg = 85, MaxMeleeDmg = 117, DamageMultiplier = 3 WHERE Entry = 8926;
-- Dark Screecher 8927
UPDATE creature_template SET MaxLevelHealth = 2371, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1, MinMeleeDmg = 85, MaxMeleeDmg = 117, DamageMultiplier = 1.6 WHERE Entry = 8927;
-- Burrowing Thundersnout 8928
UPDATE creature_template SET MinLevelHealth = 5538, MaxLevelHealth = 5928, HealthMultiplier = 2.5, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1, MinMeleeDmg = 85, MaxMeleeDmg = 117, DamageMultiplier = 3 WHERE Entry = 8928;
-- Borer Beetle 8932
UPDATE creature_template SET MinLevelHealth = 2215, MaxLevelHealth = 2371, HealthMultiplier = 1, PowerMultiplier = 1, DamageMultiplier = 1.6, MinMeleeDmg = 85, MaxMeleeDmg = 117, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1 WHERE Entry = 8932;
-- Cave Creeper 8933
UPDATE creature_template SET MinLevel = 50, MinLevelHealth = 5538, MaxLevelHealth = 5928, HealthMultiplier = 2.5, PowerMultiplier = 1, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000, ArmorMultiplier = 1, MinMeleeDmg = 85, MaxMeleeDmg = 117, DamageMultiplier = 3 WHERE Entry = 8933;
-- Arena Spectator 8916
UPDATE creature_template SET MinLevelHealth = 2561, MaxLevelHealth = 2735, HealthMultiplier = 1.35, ArmorMultiplier = 1, DamageMultiplier = 1.7, MinMeleeDmg = 82, MaxMeleeDmg = 114, MeleeAttackPower = 210, RangedAttackPower = 20, MeleeBaseAttackTime = 2000 WHERE Entry = 8916;
UPDATE creature SET curhealth = 2561 WHERE id = 8916;

-- Classic [1104]
-- Fix model of NPC 8096 (Protector of the People) in Westfall
UPDATE creature SET modelid = 0 WHERE id = 8096;
UPDATE creature_template SET ModelId2 = 7310 WHERE Entry = 8096;
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid = 7310;

-- Classic [1103]
-- Removed two duplicate NPCs in Feralas
DELETE FROM creature WHERE guid IN (51697, 51692);  

-- Classic [1102]
-- Health multipliers for a couple of rare creatures!
-- Accursed Slitherblade
UPDATE creature_template SET MinLevel = 35, MaxLevel = 35, HealthMultiplier = 1.1, ArmorMultiplier = 1, MinLevelHealth = 1342, MaxLevelHealth = 1342, Armor = 1373 WHERE Entry = 14229;
-- Antilos
UPDATE creature_template SET MinLevel = 50, MaxLevel = 50, HealthMultiplier = 1.25, ArmorMultiplier = 1, MinLevelHealth = 2768, MaxLevelHealth = 2668 WHERE Entry = 6648;
-- Araga
UPDATE creature_template SET HealthMultiplier = 1.1, ArmorMultiplier = 1, MinLevelHealth = 1342, MaxLevelHealth = 1342, Armor = 1373 WHERE Entry = 14222;
-- Blind Hunter
UPDATE creature_template SET HealthMultiplier = 5, ArmorMultiplier = 1, MinLevelHealth = 5285, MaxLevelHealth = 5285 WHERE Entry = 4425;
UPDATE creature SET curhealth = 5285 WHERE id = 4425;
-- Bruegal Ironknuckle
UPDATE creature_template SET HealthMultiplier = 3, ArmorMultiplier = 1, MinLevelHealth = 2250, MaxLevelHealth = 2250 WHERE Entry = 1720;
UPDATE creature SET curhealth = 2250 WHERE id = 1720;
-- Burgel Eye
UPDATE creature_template SET HealthMultiplier = 1.15, ArmorMultiplier = 1, MinLevelHealth = 1305, MaxLevelHealth = 1305 WHERE Entry = 14230;
UPDATE creature SET curhealth = 1305 WHERE id = 14230;
-- Captain Beld
UPDATE creature_template SET ArmorMultiplier = 1, MinLevelHealth = 222, MaxLevelHealth = 222 WHERE Entry = 6124;
UPDATE creature SET curhealth = 222 WHERE id = 6124;
-- Darkmist Widow
UPDATE creature_template SET HealthMultiplier = 1.15, ArmorMultiplier = 1, MinLevelHealth = 1752, MaxLevelHealth = 1752 WHERE Entry = 4380;
UPDATE creature SET curhealth = 1752 WHERE id = 4380;
-- Diamond Head
UPDATE creature_template SET MinLevel = 45, MaxLevel = 45, HealthMultiplier = 1.2, MinLevelHealth = 2217, MaxLevelHealth = 2217 WHERE Entry = 5345;
-- Elder Mystic Razorsnout
UPDATE creature_template SET MinLevelHealth = 903, MaxLevelHealth = 903, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 3270;
-- Foreman Jerris
UPDATE creature_template SET MinLevel = 62, MaxLevel = 62, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 1843;
-- Foulbelly
UPDATE creature_template SET HealthMultiplier = 5, ArmorMultiplier = 1 WHERE Entry = 2601;
-- Gatekeeper Rageroar
UPDATE creature_template SET MinLevel = 50, MaxLevel = 50, MinLevelHealth = 2768, MaxLevelHealth = 2768, HealthMultiplier = 1.25, ArmorMultiplier = 1 WHERE Entry = 6651;
UPDATE creature SET curhealth = 2768 WHERE id = 6651;
-- General Colbatann
UPDATE creature_template SET MinLevel = 57, MinLevelHealth = 8352 WHERE Entry = 10196;
UPDATE creature SET curhealth = 8352 WHERE id = 10196;
-- General Fangferror
UPDATE creature_template SET MinLevel = 51, MaxLevel = 51, MinLevelHealth = 2979, MaxLevelHealth = 2979, HealthMultiplier = 1.3, ArmorMultiplier = 1 WHERE Entry = 6650;
UPDATE creature SET curhealth = 2979 WHERE id = 6650;
-- Giggler
UPDATE creature_template SET MinLevel = 34, MaxLevel = 34, MinLevelHealth = 1279, MaxLevelHealth = 1279, HealthMultiplier = 1.1, ArmorMultiplier = 1 WHERE Entry = 14228;
-- Gilmorian
UPDATE creature_template SET MinLevel = 43, MaxLevel = 43, HealthMultiplier = 1.2, ArmorMultiplier = 1 WHERE Entry = 14447;
-- Gish the Unmoving
UPDATE creature_template SET MinLevel = 56, MaxLevel = 56, MinLevelHealth = 3643, MaxLevelHealth = 3643, HealthMultiplier = 1.35, ArmorMultiplier = 1 WHERE Entry = 10825;
-- Gnawbone
UPDATE creature_template SET MinLevel = 24, MaxLevel = 24, HealthMultiplier = 1.02 WHERE Entry = 14425;
-- Gorgonoch
UPDATE creature_template SET MinLevel = 54, MaxLevel = 54, MinLevelHealth = 2633, MaxLevelHealth = 2633, HealthMultiplier = 1.3, ArmorMultiplier = 1 WHERE Entry = 9604;
-- Gretheer
UPDATE creature_template SET MinLevel = 57, MaxLevel = 57, HealthMultiplier = 1.35, ArmorMultiplier = 1 WHERE Entry = 14472;
-- Grizzle Snowpaw
UPDATE creature_template SET MinLevelHealth = 3198, MaxLevelHealth = 3198, HealthMultiplier = 1.35, ArmorMultiplier = 1 WHERE Entry = 10199;
-- HahkZor
UPDATE creature_template SET MinLevel = 54, MaxLevel = 54, MinLevelHealth = 3292, MaxLevelHealth = 3292, HealthMultiplier = 1.3, ArmorMultiplier = 1 WHERE Entry = 9602;
-- Heggin Stonewhisker
UPDATE creature_template SET MinLevelHealth = 585, MaxLevelHealth = 585, HealthMultiplier = 0.9, ArmorMultiplier = 1 WHERE Entry = 5847;
-- Immolatus
UPDATE creature_template SET MinLevel = 56, MaxLevel = 56, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 7137;
-- Jalinde Summerdrake
UPDATE creature_template SET MinLevelHealth = 2672, MaxLevelHealth = 2672, HealthMultiplier = 1.25, ArmorMultiplier = 1 WHERE Entry = 8214;
-- Kaskk
UPDATE creature_template SET MinLevelHealth = 1752, MaxLevelHealth = 1752, HealthMultiplier = 1.15, ArmorMultiplier = 1 WHERE Entry = 14226;
-- Kazon
UPDATE creature_template SET MinLevelHealth = 840, MaxLevelHealth = 840, HealthMultiplier = 1.05, ArmorMultiplier = 1 WHERE Entry = 584;
-- Korvok
UPDATE creature_template SET MinLevel = 36, MaxLevel = 36, MinLevelHealth = 1468, MaxLevelHealth = 1468, HealthMultiplier = 1.15, ArmorMultiplier = 1 WHERE Entry = 2603;
-- Kregg Keelhaul
UPDATE creature_template SET MinLevelHealth = 2487, MaxLevelHealth = 2487, HealthMultiplier = 1.25, ArmorMultiplier = 1 WHERE Entry = 8203;
-- Krellack
UPDATE creature_template SET MinLevelHealth = 3508, MaxLevelHealth = 3508, HealthMultiplier = 1.3, ArmorMultiplier = 1 WHERE Entry = 14476;
-- Krethis Shadowspinner
UPDATE creature_template SET MinLevelHealth = 301, MaxLevelHealth = 301, ArmorMultiplier = 1 WHERE Entry = 12433;
-- KromGrul
UPDATE creature_template SET MinLevelHealth = 2633, MaxLevelHealth = 2633, HealthMultiplier = 1.3, ArmorMultiplier = 1 WHERE Entry = 8977;
-- Kurmokk
UPDATE creature_template SET MinLevelHealth = 1981, MaxLevelHealth = 1981, HealthMultiplier = 1.2, ArmorMultiplier = 1 WHERE Entry = 14491;
-- Lord Angler
UPDATE creature_template SET MinLevel = 44, MaxLevel = 44, MinLevelHealth = 2138, MaxLevelHealth = 2138, HealthMultiplier = 1.2, ArmorMultiplier = 1 WHERE Entry = 14236;
-- Lord Sinslayer
UPDATE creature_template SET MinLevel = 16, MinLevelHealth = 356 WHERE Entry = 7017;
UPDATE creature SET curhealth = 356 WHERE id = 7017;
-- Magister Hawkhelm
UPDATE creature_template SET MinLevelHealth = 3082, MaxLevelHealth = 3082, HealthMultiplier = 1.3, ArmorMultiplier = 1 WHERE Entry = 6647;
UPDATE creature SET curhealth = 3082 WHERE id = 6647;
-- Magronos the Unyielding
UPDATE creature_template SET MinLevel = 56, MaxLevel = 56, MinLevelHealth = 3643, MaxLevelHealth = 3643, HealthMultiplier = 1.35, ArmorMultiplier = 1 WHERE Entry = 8297;
-- Malfunctioning Reaver
UPDATE creature_template SET MinLevelHealth = 3643, MaxLevelHealth = 3643, HealthMultiplier = 1.35, ArmorMultiplier = 1 WHERE Entry = 8981;
-- Maruk Wyrmscale
UPDATE creature_template SET MinLevelHealth = 617, MaxLevelHealth = 617, HealthMultiplier = 1.02, ArmorMultiplier = 1 WHERE Entry = 2090;
-- Master Digger
UPDATE creature_template SET MinLevelHealth = 328, MaxLevelHealth = 328, ArmorMultiplier = 1 WHERE Entry = 1424;
-- Meshlok the Harvester
UPDATE creature_template SET MinLevelHealth = 6186, MaxLevelHealth = 6186, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 12237;
UPDATE creature SET curhealth = 6186 WHERE id = 12237;
-- Monnos the Elder
UPDATE creature_template SET MinLevel = 54, MinLevelHealth = 7599 WHERE Entry = 6646;
UPDATE creature SET curhealth = 7599 WHERE id = 6646;
-- Nefaru
UPDATE creature_template SET MinLevel = 34, MaxLevel = 34, HealthMultiplier = 1.1, ArmorMultiplier = 1 WHERE Entry = 534;
-- Oozeworm
UPDATE creature_template SET MinLevelHealth = 1981, MaxLevelHealth = 1981, HealthMultiplier = 1.2, ArmorMultiplier = 1 WHERE Entry = 14237;
-- Panzor the Invincible
UPDATE creature_template SET MinLevelHealth = 13920, MaxLevelHealth = 13920, HealthMultiplier = 5, ArmorMultiplier = 1 WHERE Entry = 8923;
-- Omgorn the Lost
UPDATE creature_template SET MinLevelHealth = 2768, MaxLevelHealth = 2768, HealthMultiplier = 1.25, ArmorMultiplier = 1 WHERE Entry = 8201;
-- Rakshiri
UPDATE creature_template SET MinLevel = 57, MaxLevel = 57, HealthMultiplier = 1.35, ArmorMultiplier = 1 WHERE Entry = 10200;
-- Rekktilac
UPDATE creature_template SET MinLevel = 48, MaxLevel = 48, MinLevelHealth = 2577, MaxLevelHealth = 2577, HealthMultiplier = 1.25, ArmorMultiplier = 1 WHERE Entry = 8277;
-- Razormaw Matriarch
UPDATE creature_template SET MinLevel = 31, MaxLevel = 31, MinLevelHealth = 1106, MaxLevelHealth = 1106, ArmorMultiplier = 1 WHERE Entry = 1140;
-- Ripscale
UPDATE creature_template SET MinLevelHealth = 1750, MaxLevelHealth = 1750, HealthMultiplier = 1.2, ArmorMultiplier = 1 WHERE Entry = 14233;
-- Ruul Onestone
UPDATE creature_template SET HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 2602;
-- Scald
UPDATE creature_template SET MinLevelHealth = 2672, MaxLevelHealth = 2672, HealthMultiplier = 1.25, ArmorMultiplier = 1 WHERE Entry = 8281;
-- Sludge Beast
UPDATE creature_template SET MinLevelHealth = 449, MaxLevelHealth = 449, ArmorMultiplier = 1 WHERE Entry = 3295;
-- Smoldar
UPDATE creature_template SET MinLevel = 50, MaxLevel = 50, MinLevelHealth = 2768, MaxLevelHealth = 2768, HealthMultiplier = 1.25, ArmorMultiplier = 1 WHERE Entry = 8278;
-- Soriid the Devourer
UPDATE creature_template SET MinLevel = 50, MaxLevel = 50, MinLevelHealth = 2768, MaxLevelHealth = 2768, HealthMultiplier = 1.25, ArmorMultiplier = 1 WHERE Entry = 8204;
-- Spiteflayer
UPDATE creature_template SET MinLevel = 52, MaxLevel = 52, HealthMultiplier = 1.3, ArmorMultiplier = 1 WHERE Entry = 8299;
-- Takk the Leaper
UPDATE creature_template SET MinLevelHealth = 1347, MaxLevelHealth = 1347, HealthMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 5842;
-- Sriskulk
UPDATE creature_template SET MinLevelHealth = 341, MaxLevelHealth = 341, HealthMultiplier = 1.25, ArmorMultiplier = 1 WHERE Entry = 10359;
-- Terrowulf Packlord
UPDATE creature_template SET MinLevelHealth = 1162, MaxLevelHealth = 1162, HealthMultiplier = 1.1, ArmorMultiplier = 1 WHERE Entry = 3792;
UPDATE creature SET curhealth = 1162 WHERE id = 3792;
-- Thauris Balgarr
UPDATE creature_template SET MinLevelHealth = 3758, MaxLevelHealth = 3758, HealthMultiplier = 1.35, ArmorMultiplier = 1 WHERE Entry = 8978;
-- The Reak
UPDATE creature_template SET MinLevel = 49, MaxLevel = 49, HealthMultiplier = 1.25, ArmorMultiplier = 1 WHERE Entry = 8212;
-- The Rot
UPDATE creature_template SET MinLevel = 43, MaxLevel = 43, MinLevelHealth = 2059, MaxLevelHealth = 2059, HealthMultiplier = 1.2, ArmorMultiplier = 1 WHERE Entry = 14235;
-- The Ongar
UPDATE creature_template SET MinLevelHealth = 2979, MaxLevelHealth = 2979, HealthMultiplier = 1.3, ArmorMultiplier = 1 WHERE Entry = 14345;
-- Threggil
UPDATE creature_template SET MinLevelHealth = 115, MaxLevelHealth = 115 WHERE Entry = 14432;
-- Thunderstomp
UPDATE creature_template SET MinLevelHealth = 664, MaxLevelHealth = 664, HealthMultiplier = 1.02, ArmorMultiplier = 1 WHERE Entry = 5832;
-- Uhkloc
UPDATE creature_template SET MinLevel = 53, MinLevelHealth = 3188 WHERE Entry = 6585;
UPDATE creature SET curhealth = 3188 WHERE id = 6585;
-- Ursollok
UPDATE creature_template SET MinLevel = 31, MaxLevel = 31, MinLevelHealth = 1257, MaxLevelHealth = 1257, HealthMultiplier = 1.25, ArmorMultiplier = 1 WHERE Entry = 12037;
-- Uruson
UPDATE creature_template SET MinLevel = 7, MaxLevel = 7, ArmorMultiplier = 1 WHERE Entry = 14428;
-- Volchan
UPDATE creature_template SET MinLevel = 60, HealthMultiplier = 4, ArmorMultiplier = 1 WHERE Entry = 10119;
-- ZulBrin Warpbranch
UPDATE creature_template SET MinLevel = 59, MaxLevel = 59, MinLevelHealth = 2798, MaxLevelHealth = 2798, HealthMultiplier = 1.35, ArmorMultiplier = 1 WHERE Entry = 10823;

-- Classic [1100]
-- Molten Core - Damage Multiplier 
-- Lucifron
UPDATE creature_template SET DamageMultiplier = 16, MinMeleeDmg = 102.2, MaxMeleeDmg = 135.3, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 12118;
-- Magmadar
UPDATE creature_template SET DamageMultiplier = 17, MinMeleeDmg = 109.8, MaxMeleeDmg = 145.6, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 11982;
-- Gehennas
UPDATE creature_template SET DamageMultiplier = 16, MinMeleeDmg = 102.2, MaxMeleeDmg = 135.3, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 12259;
-- Garr
UPDATE creature_template SET DamageMultiplier = 18, MinMeleeDmg = 109.8, MaxMeleeDmg = 145.6, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 12057;
-- Baron Geddon
UPDATE creature_template SET DamageMultiplier = 14, MinMeleeDmg = 109.8, MaxMeleeDmg = 145.6, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 12056;
-- Shazzrah
UPDATE creature_template SET DamageMultiplier = 16, MinMeleeDmg = 102.2, MaxMeleeDmg = 135.3, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 12264;
-- Sulfuron Harbinger
UPDATE creature_template SET DamageMultiplier = 16, ArmorMultiplier = 1.25, MinMeleeDmg = 109.8, MaxMeleeDmg = 145.6, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 12098;
-- Golemagg
UPDATE creature_template SET DamageMultiplier = 20, MinMeleeDmg = 109.8, MaxMeleeDmg = 145.6, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 11988;
-- Majordomo Executus
UPDATE creature_template SET DamageMultiplier = 14, MinMeleeDmg = 109.8, MaxMeleeDmg = 145.6, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 12018;
-- Ragnaros
UPDATE creature_template SET DamageMultiplier = 13, MinMeleeDmg = 153.8, MaxMeleeDmg = 203.9, MinRangedDmg = 0, MaxRangedDmg = 0, RangedBaseAttackTime = 2800 WHERE Entry = 11502;
-- Molten Giant
UPDATE creature_template SET DamageMultiplier = 15, MinMeleeDmg = 107.9, MaxMeleeDmg = 143.1, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 11658;
-- Firelord
UPDATE creature_template SET DamageMultiplier = 12, MinMeleeDmg = 79.4, MaxMeleeDmg = 107.4, MinRangedDmg = 0, MaxRangedDmg = 0, RangedBaseAttackTime = 1500 WHERE Entry = 11668;
-- Lava Spawn
UPDATE creature_template SET DamageMultiplier = 5, MinMeleeDmg = 77.9, MaxMeleeDmg = 103.4, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 12265;
-- Lava Annihilator
UPDATE creature_template SET DamageMultiplier = 18, MinMeleeDmg = 84.7, MaxMeleeDmg = 114.5, MinRangedDmg = 0, MaxRangedDmg = 0, RangedBaseAttackTime = 1600 WHERE Entry = 11665;
-- Lava Surger
UPDATE creature_template SET DamageVariance = 13, MinMeleeDmg = 105.8, MaxMeleeDmg = 143.1, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 12101;
-- Ancient Core Hound
UPDATE creature_template SET DamageMultiplier = 16, MinMeleeDmg = 107.9, MaxMeleeDmg = 143.1, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 11673;
-- Flame Imp
UPDATE creature_template SET DamageMultiplier = 3, MinMeleeDmg = 105.8, MaxMeleeDmg = 143.1, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 11669;
-- Core Hound
UPDATE creature_template SET DamageMultiplier = 10, MinMeleeDmg = 105.8, MaxMeleeDmg = 140.3, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 11671;
-- Flamewaker Protector
UPDATE creature_template SET DamageMultiplier = 13, MinMeleeDmg = 100.4, MaxMeleeDmg = 133.0, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 12119;
-- Molten Destroyer
UPDATE creature_template SET DamageMultiplier = 16, MinMeleeDmg = 109.8, MaxMeleeDmg = 145.6, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 11659;
-- Flamewaker
UPDATE creature_template SET DamageMultiplier = 13, MinMeleeDmg = 100.4, MaxMeleeDmg = 133, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 11661;
-- Firesworn
UPDATE creature_template SET DamageMultiplier = 14, MinMeleeDmg = 103.9, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 12099;
-- Lava Elemental
UPDATE creature_template SET DamageMultiplier = 12, MinMeleeDmg = 132.3, MaxMeleeDmg = 178.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 262, RangedAttackPower = 30, MeleeBaseAttackTime = 2500, RangedBaseAttackTime = 2500 WHERE Entry = 12076;
-- Lava Reaver
UPDATE creature_template SET DamageMultiplier = 16, MinMeleeDmg = 86.3, MaxMeleeDmg = 116.5, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 268, RangedAttackPower = 32, MeleeBaseAttackTime = 1600, RangedBaseAttackTime = 1600 WHERE Entry = 12100;
-- Firewalker
UPDATE creature_template SET DamageMultiplier = 10, MinMeleeDmg = 105.8, MaxMeleeDmg = 143.1, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 262, RangedAttackPower = 30, MeleeBaseAttackTime = 2000 WHERE Entry = 11666;
-- Flameguard
UPDATE creature_template SET DamageMultiplier = 10, MinMeleeDmg = 105.8, MaxMeleeDmg = 143.1, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 262, RangedAttackPower = 30, MeleeBaseAttackTime = 2000 WHERE Entry = 11667;
-- Flamewaker Priest [NO DAMAGE CALC - BASEDAMAGE WRONG?]
UPDATE creature_template SET MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 11662;
-- Core Rager
UPDATE creature_template SET DamageMultiplier = 14, MinMeleeDmg = 107.9, MaxMeleeDmg = 143.1, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeBaseAttackTime = 2000 WHERE Entry = 11672;
-- Flamewaker Elite
UPDATE creature_template SET DamageMultiplier = 14, ArmorMultiplier = 1.25, MinMeleeDmg = 120.5, MaxMeleeDmg = 159.6, MinRangedDmg = 0, MaxRangedDmg = 0, RangedBaseAttackTime = 2400 WHERE Entry = 11664;
-- Flamewaker Healer
UPDATE creature_template SET DamageMultiplier = 12, MinMeleeDmg = 96.8, MaxMeleeDmg = 128.2, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 11663;
-- Son of Flame
UPDATE creature_template SET DamageMultiplier = 12, MinMeleeDmg = 103.9, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 12143;

-- Classic [1098] & [1099]
-- Paladin 62 & 63 - Classlevelstats
UPDATE creature_template_classlevelstats SET BaseDamageExp0 = 32.6201 WHERE Level = 62 and Class = 2;
UPDATE creature_template_classlevelstats SET BaseDamageExp0 = 33.1092 WHERE Level = 63 and Class = 2; 

-- Classic [1097]
-- The Deadmines - Defias Companion - they are summoned as pets and do not exist without a master.
DELETE FROM creature WHERE id = 3450;

-- Classic [1096]
-- Warrior 63 - Classlevelstats
-- slighty modified basedamage, should fit better
UPDATE creature_template_classlevelstats SET BaseDamageExp0 = 35.775 WHERE Level = 63 and Class = 1; 
 
-- Classic [1095]
-- Deathmaw has always been a level 53, non-elite wolf, according to my sources. He should also be skinnable.
UPDATE creature_template SET MinLevel = 53, MaxLevel = 53, SpeedWalk = 1, HealthMultiplier = 1.3, DamageVariance = 1.35, ArmorMultiplier = 1, MinMeleeDmg = 54.0, MaxMeleeDmg = 71.7, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3163, MeleeAttackPower = 218, RangedAttackPower = 22, MeleeBaseAttackTime = 1200, RangedBaseAttackTime = 1200, ResistanceFire = 0, ResistanceNature = 0, ResistanceFrost = 0, ResistanceShadow = 0, ResistanceArcane = 0, MovementType = 1 WHERE Entry = 10077;
DELETE FROM skinning_loot_template WHERE entry = 10156;
INSERT INTO skinning_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(10156, 8170, 50, 1, 1, 2, 0),
(10156, 4304, 45, 1, 1, 2, 0),
(10156, 8171, 3, 1, 1, 1, 0),
(10156, 8169, 2, 1, 1, 1, 0);

-- Classic [1094]
-- Followup Tactical Assignment 
-- A followup wasn't guaranteed, should no longer happen
UPDATE item_loot_template SET ChanceOrQuestChance = 0, groupid = 1 WHERE entry = 21133 and item = 20943;
UPDATE item_loot_template SET ChanceOrQuestChance = 0, groupid = 1 WHERE entry = 21133 and item = 20945;
UPDATE item_loot_template SET ChanceOrQuestChance = 0, groupid = 1 WHERE entry = 21133 and item = 20947;
UPDATE item_loot_template SET ChanceOrQuestChance = 0, groupid = 1 WHERE entry = 21133 and item = 20948;
UPDATE item_loot_template SET ChanceOrQuestChance = 0, groupid = 1 WHERE entry = 21133 and item = 21167;
UPDATE item_loot_template SET ChanceOrQuestChance = 0, groupid = 1 WHERE entry = 21133 and item = 21245;
UPDATE item_loot_template SET ChanceOrQuestChance = 0 WHERE entry = 20809 and item = 20944;
UPDATE item_loot_template SET ChanceOrQuestChance = 0 WHERE entry = 20809 and item = 21165;
UPDATE item_loot_template SET ChanceOrQuestChance = 0 WHERE entry = 20809 and item = 21166;
UPDATE item_loot_template SET ChanceOrQuestChance = 0 WHERE entry = 20809 and item = 21245;
UPDATE item_loot_template SET ChanceOrQuestChance = 0 WHERE entry = 20809 and item = 21751;

-- Classic [1093]
-- Dire Maul: North - Guard Fengus, Slip'kik and Mol'dar
UPDATE creature_template SET MinLevel = 59, NpcFlags = 3, UnitFlags = 32832, CreatureTypeFlags = 72, HealthMultiplier = 8, PowerMultiplier = 1, DamageMultiplier = 7, ArmorMultiplier = 1, MinMeleeDmg = 101.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 248, RangedAttackPower = 25 WHERE Entry = 14326;
UPDATE creature_template SET NpcFlags = 3, UnitFlags = 32832, CreatureTypeFlags = 72, PowerMultiplier = 1, DamageMultiplier = 7, MinMeleeDmg = 101.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 248, RangedAttackPower = 25, MovementType = 1 WHERE Entry = 14321;
UPDATE creature_template SET NpcFlags = 3, UnitFlags = 32832, CreatureTypeFlags = 72, PowerMultiplier = 1, DamageMultiplier = 7, MinMeleeDmg = 101.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 248, RangedAttackPower = 25, MovementType = 1 WHERE Entry = 14323;

-- Classic [1091]
-- Darkshore - Lady Moongazer
UPDATE creature_template SET SpeedWalk = 1, MinMeleeDmg = 25, MaxMeleeDmg = 33.2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 60, RangedAttackPower = 2, MeleeBaseAttackTime = 2000 WHERE Entry = 2184;

-- Classic [1090]
-- Updates for the Plaguelands 
-- Removed useless creature addon and moved them to creature_template_addon for NPC 10580 (Fetid Zombie) in Western Plaguelands
DELETE FROM creature_template_addon WHERE entry = 10580;
INSERT INTO creature_template_addon VALUES
(10580, 0, 0, 1, 16, 0, 0, NULL);
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 10580);

-- Fixed stats of NPC 10717 (Temporal Parasite) that was dealing too much damage and was missing mana
UPDATE creature_template SET InhabitType = 1, UnitClass = 2, MinLevelHealth = 2823, MaxLevelHealth = 3006, HealthMultiplier = 1.35, MinLevelMana = 2117, MaxLevelMana = 2241, ArmorMultiplier = 1 WHERE Entry = 10717;
UPDATE creature_template SET MinMeleeDmg = 93, MaxMeleeDmg = 130, MeleeAttackPower = 238, MeleeBaseAttackTime = 2000  WHERE Entry = 10717;

-- Added missing spell target
DELETE FROM spell_script_target WHERE entry = 16613;
INSERT INTO spell_script_target VALUES (16613, 0, 175795, 0);

-- Fixed stats of one undead NPC at Dalsons Tear in Western Plaguelands
-- Skeletal Terror
UPDATE creature_template SET MinMeleeDmg = 88, MaxMeleeDmg = 122, MeleeAttackPower = 224, RangedAttackPower = 22, MeleeBaseAttackTime = 2000, Armor = 3180 WHERE Entry = 1785;

-- Fixed stats NPC 1796 (Freezing Ghoul) in Andorhal in Western Plaguelands: it was dealing too much damage (still having its elite damage)
-- also fixed Fire resistance of NPC 1795 (Searing Ghoul)
UPDATE creature_template SET ResistanceFire = 150 WHERE Entry = 1795; -- Searing Ghoul 
UPDATE creature_template SET MinMeleeDmg = 94, MaxMeleeDmg = 127, MeleeAttackPower = 234, RangedAttackPower = 22, MeleeBaseAttackTime = 2000 WHERE Entry = 1796; -- Freezeing Ghoul

-- Deleted NPC 10979 at Dalsons Tear in Western Plaguelands as it is summoned
DELETE FROM creature WHERE guid = 52635;
DELETE FROM creature_addon WHERE guid = 52635;

-- Fixed speed of NPC 11076 (Cauldron Lord Razarch) in Western Plaguelands who was moving too fast (walk/run speed were inverted)
UPDATE creature_template SET SpeedWalk = 1.14286, SpeedRun = 1.89 WHERE Entry = 11076;

-- Added missing WP to NPC 10816 (Wandering Skeleton) because
-- it was very static for a wandering one
-- Source: http://www.wowhead.com/npc = 10816/wandering-skeleton#comments
DELETE FROM creature_movement_template WHERE entry = 10816;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(10816, 1, 1936.95, -1635.07, 60.0263, 0, 0, 5.59485, 0, 0),
(10816, 2, 1930.95, -1657.73, 59.31, 0, 0, 4.44345, 0, 0),
(10816, 3, 1912, -1660.12, 61.2311, 0, 0, 3.33997, 0, 0),
(10816, 4, 1902.82, -1651.78, 60.0138, 0, 0, 2.40377, 0, 0),
(10816, 5, 1886.67, -1651.37, 61.2298, 0, 0, 2.95355, 0, 0),
(10816, 6, 1882.75, -1629.76, 61.5077, 0, 0, 1.75032, 0, 0),
(10816, 7, 1899.4, -1616.07, 60.4586, 0, 0, 0.688462, 0, 0),
(10816, 8, 1915.49, -1615.05, 61.0254, 0, 0,  0.0632846, 0, 0),
(10816, 9, 1927.59, -1627.02, 60.4777, 0, 0, 05.4307, 0, 0),
(10816, 10, 1925.09, -1627, 60.455, 0, 0, 5.942, 0, 0);
UPDATE creature_template SET MovementType = 2 WHERE Entry = 10816;
UPDATE creature SET position_x = 1936.95, position_y = -1635.07, position_z = 60.0263, MovementType = 2 WHERE id = 10816;

-- Fixed drop chance of quest item 12738 (Dalson Outhouse Key) as it should only drop once the first part of the quest line is completed
-- Source: http://www.wowwiki.com/Locked_Away_quest_chain
DELETE FROM conditions WHERE condition_entry = 1017;
INSERT INTO conditions VALUES 
(1017, 8, 5058, 0);
UPDATE creature_loot_template SET condition_id = 1017 WHERE item = 12738;
UPDATE quest_template SET SpecialFlags = 0 WHERE entry = 5058;

-- Removed spawns of NPC 10979 (Scarlet Hounds) because they should be summoned
DELETE FROM creature WHERE guid IN (52664, 52666, 52667, 52665, 52668);
DELETE FROM creature_addon WHERE guid IN (52664, 52666, 52667, 52665, 52668);

-- Improved gossip menu of NPC 10739 (Mulgris Deepriver) in Western Plaguelands
DELETE FROM conditions WHERE condition_entry = 1018;
INSERT INTO conditions VALUES 
(1018, 8, 4985, 0);
UPDATE gossip_menu SET condition_id = 1018 WHERE entry = 2921 AND text_id = 3635;

-- Improved gossip menu of NPC 10304 (Aurora Skycaller) in Eastern Plaguelands
DELETE FROM conditions WHERE condition_entry IN (1019, 1020);
INSERT INTO conditions VALUES
(1019, 9, 5247, 0),
(1020, 8, 5245, 0);
UPDATE gossip_menu_option SET action_menu_id = 50100, condition_id = 1019 WHERE menu_id = 4743 AND id = 0;
UPDATE gossip_menu_option SET action_menu_id = 50101, condition_id = 1019 WHERE menu_id = 4743 AND id = 1;
DELETE FROM gossip_menu WHERE entry IN (50100, 50101);
INSERT INTO gossip_menu VALUES
(50100, 5796, 0, 0),
(50101, 5797, 0, 0);
UPDATE gossip_menu SET condition_id = 3 WHERE entry = 4743 AND text_id = 5795;
UPDATE gossip_menu SET condition_id = 1020 WHERE entry = 4743 AND text_id = 5817;

-- Added missing spawns of rare NPC 10821 (Hedmush the Rotting) in Eastern Plaguelands
-- Put them into a pool
DELETE FROM creature WHERE guid in (67087,67088,67133);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(67087, 10821, 0, 0, 0, 1853.9, -3720, 162.224, 1.254, 28800, 0, 0, 3758, 0, 0, 0),
(67088, 10821, 0, 0, 0, 2524.42, -4757.21, 100.484, 2.33279, 28800, 0, 0, 3758, 0, 0, 0),
(67133, 10821, 0, 0, 0, 3157.01, -4327.84, 133.152, 2.43097, 28800, 5, 0, 3758, 0, 0, 1);
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE id = 10821;
DELETE FROM pool_creature_template WHERE id = 10821;
INSERT INTO pool_creature_template VALUES
(10821, 25494, 0, 'Hed\mush the Rotting (10821)');
DELETE FROM pool_template WHERE entry = 25494;
INSERT INTO pool_template VALUES
(25494, 1, 'Hed\mush the Rotting (10821)');

-- Classic [1088]
-- Western Plaguelands Wailing Deaths, Hungering Wraiths, Searing Ghouls, Soulless Ghouls
UPDATE creature_template SET UnitFlags = 64, CreatureTypeFlags = 72, MinMeleeDmg = 85.7, MaxMeleeDmg = 115.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 214, RangedAttackPower = 21, MeleeBaseAttackTime = 2000 WHERE Entry = 1794;
UPDATE creature_template SET UnitFlags = 64, CreatureTypeFlags = 72, MinMeleeDmg = 87.5, MaxMeleeDmg = 118.2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 220, RangedAttackPower = 21, MeleeBaseAttackTime = 2000 WHERE Entry = 1795;
UPDATE creature_template SET UnitFlags = 64, CreatureTypeFlags = 72, MinMeleeDmg = 95.9, MaxMeleeDmg = 132.4, MeleeAttackPower = 242, RangedAttackPower = 25, MeleeBaseAttackTime = 2000 WHERE Entry = 1802;
UPDATE creature_template SET UnitFlags = 64, CreatureTypeFlags = 72, MinMeleeDmg = 95.9, MaxMeleeDmg = 129.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 238, RangedAttackPower = 24, MeleeBaseAttackTime = 2000 WHERE Entry = 1804;

-- Classic [1087]
-- Western Plaguelands - Blighted Zombie
UPDATE creature_template SET UnitFlags = 64, CreatureTypeFlags = 72, MinMeleeDmg = 88.3, MaxMeleeDmg = 119.5, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 218, RangedAttackPower = 22, MeleeBaseAttackTime = 2000 WHERE Entry = 4475;
UPDATE creature_template SET UnitFlags = 64, CreatureTypeFlags = 72, MinMeleeDmg = 90.0, MaxMeleeDmg = 122.2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 224, RangedAttackPower = 22 WHERE Entry = 4474;

-- Classic [1085]
-- Fixed quest 4136 (Ribbly Screwspigot) in Blackrock Depths
-- Added missing condition for gossip menu
-- Added missing script
DELETE FROM conditions WHERE condition_entry = 1016;
INSERT INTO conditions VALUES
(1016, 9, 4136, 0);
UPDATE gossip_menu_option SET action_menu_id = -1, action_script_id = 197001, condition_id  = 1016 WHERE menu_id = 1970 AND id = 1;
DELETE FROM dbscripts_on_gossip WHERE id  =  197001;
INSERT INTO dbscripts_on_gossip VALUES
(197001, 0, 22, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly - update faction'),
(197001, 0, 22, 21, 0, 10043, 46616, 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Crony - update faction'),
(197001, 0, 22, 21, 0, 10043, 46617, 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Crony - update faction'),
(197001, 0, 22, 21, 0, 10043, 46618, 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly Crony - update faction'),
(197001, 1, 0, 0, 0, 0, 0, 0, 2000000611, 0, 0, 0, 0, 0, 0, 0,''),
(197001, 3, 26, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ribbly  - attack player');
DELETE FROM db_script_string WHERE entry  = 2000000611;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000000611,'No! Get away from me! Help!!',0,0,0,0,NULL);

-- Classic [1084]
-- Lakeshire - Guard Adams
UPDATE creature SET modelid = 0, position_x = -9245.81, position_y = -2167.49, position_z = 64.1168, orientation = 3.58002, MovementType = 2 WHERE guid = 10080;
DELETE FROM creature_movement WHERE id = 10080;
UPDATE creature_template SET MovementType = 2 WHERE entry = 936;
DELETE FROM creature_movement_template WHERE entry = 936;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(936, 20, -9245.68, -2167.47, 63.9388, 15000, 0, 100, 0, 0),
(936, 19, -9245.3, -2171.29, 63.9388, 0, 0, 0, 0, 0),
(936, 18, -9212.64, -2174.06, 64.0584, 0, 0, 0, 0, 0),
(936, 17, -9187.23, -2160.7, 64.0584, 0, 0, 0, 0, 0),
(936, 16, -9187.41, -2138.51, 64.0064, 0, 0, 0, 0, 0),
(936, 15, -9212.24, -2135.42, 64.0584, 0, 0, 0, 0, 0),
(936, 14, -9232.15, -2130.65, 64.0584, 0, 0, 0, 0, 0),
(936, 13, -9246.59, -2118.7, 65.591, 0, 0, 0, 0, 0),
(936, 12, -9245.79, -2099.05, 72.1959, 0, 0, 0, 0, 0),
(936, 11, -9235.08, -2087.05, 76.554, 0, 0, 0, 0, 0),
(936, 10, -9189.04, -2094.36, 87.8603, 15000, 0, 100, 0, 0),
(936, 9, -9206.65, -2088.98, 86.1227, 0, 0, 0, 0, 0),
(936, 8, -9220.59, -2089.07, 81.4125, 0, 0, 0, 0, 0),
(936, 7, -9234.09, -2083.62, 76.7928, 0, 0, 0, 0, 0),
(936, 6, -9234.39, -2072.97, 76.5348, 0, 0, 0, 0, 0),
(936, 5, -9239.85, -2075.51, 75.7547, 15000, 0, 100, 0, 0),
(936, 4, -9243.47, -2098.98, 72.6224, 0, 0, 0, 0, 0),
(936, 3, -9246.5, -2115.22, 66.5529, 0, 0, 0, 0, 0),
(936, 2, -9254.05, -2135.93, 63.9399, 0, 0, 0, 0, 0),
(936, 1, -9253.7, -2167.14, 64.0579, 0, 0, 0, 0, 0);

-- Classic [1083]
-- Lakeshire Guards are summoned by nearby civilians, they do not guard the town on their own.
DELETE FROM creature WHERE guid = 31839;
DELETE FROM creature_addon WHERE guid = 31839;

-- Classic [1082]
-- LBRS - Hordemar City
UPDATE creature SET modelid = 0, position_x = -19.7833, position_y = -365.125, position_z = 50.1377, orientation = 5.49779, spawntimesecs = 7200, MovementType = 2 WHERE guid = 44456;
DELETE FROM creature_movement WHERE id = 44456;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(44456, 1, -29.4354, -374.537, 49.2465, 0, 0, 0, 0, 0),
(44456, 2, -35.8591, -385.568, 48.6559, 0, 0, 0, 0, 0),
(44456, 3, -46.1924, -393.206, 49.2342, 0, 0, 0, 0, 0),
(44456, 4, -61.7472, -396.152, 44.5767, 0, 0, 0, 0, 0),
(44456, 5, -88.6538, -400.578, 37.8984, 30000, 0, 100, 0, 0),
(44456, 6, -54.4929, -392.754, 46.3396, 0, 0, 0, 0, 0),
(44456, 7, -32.5814, -377.415, 49.0143, 0, 0, 0, 0, 0),
(44456, 8, -25.1649, -365.964, 50.3259, 0, 0, 0, 0, 0),
(44456, 9, -19.7295, -365.061, 50.0607, 0, 0, 0, 0, 0),
(44456, 10, -19.7295, -365.061, 50.0607, 30000, 0, 5.5676, 0, 0);

-- Classic [1081]
-- LBRS - Spire Scarabs / Scorpions
UPDATE creature_template SET MinLevel = 58, UnitFlags = 32768, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 1.35, ArmorMultiplier = 1, MinMeleeDmg = 99.8, MaxMeleeDmg = 132.4, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3435, MeleeAttackPower = 242, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10177;
UPDATE creature_template SET MinLevel = 58, UnitFlags = 32768, CreatureTypeFlags = 72, SpeedWalk = 1, HealthMultiplier = 1.35, ArmorMultiplier = 1, MinMeleeDmg = 99.8, MaxMeleeDmg = 132.4, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3435, MeleeAttackPower = 242, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9701;
-- Missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (56343,56486,56487,56488,56502,56503,56504,56505,56516,56517,56518,64058,66834,66849,66854,66855,66860,66884,66921,66922);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(56343, 10177, 229, 0, 0, -68.8686, -343.093, 55.1160, 1.81514, 7200, 5, 0, 3876, 0, 0, 1),
(56486, 10177, 229, 0, 0, -73.5343, -331.947, 56.8824, 3.94444, 7200, 5, 0, 3876, 0, 0, 1),
(56487, 10177, 229, 0, 0, -66.8659, -352.762, 54.4785, 1.08210, 7200, 5, 0, 3876, 0, 0, 1),
(56488, 10177, 229, 0, 0, -72.0317, -347.075, 54.8219, 1.36136, 7200, 5, 0, 3876, 0, 0, 1),
(56502, 10177, 229, 0, 0, -71.5690, -358.213, 54.5978, 2.39110, 7200, 5, 0, 3876, 0, 0, 1),
(56503, 10177, 229, 0, 0, -75.4103, -341.562, 55.3937, 4.90438, 7200, 5, 0, 3876, 0, 0, 1),
(56504, 10177, 229, 0, 0, -79.7917, -328.192, 58.5470, 5.95157, 7200, 5, 0, 3876, 0, 0, 1),
(56505, 10177, 229, 0, 0, -102.763, -349.062, 60.7782, 1.51844, 7200, 5, 0, 3876, 0, 0, 1),
(56516, 10177, 229, 0, 0, -108.382, -341.040, 61.1785, 1.64061, 7200, 5, 0, 3876, 0, 0, 1),
(56517, 10177, 229, 0, 0, -107.424, -351.940, 59.7058, 4.48550, 7200, 5, 0, 3876, 0, 0, 1),
(56518, 10177, 229, 0, 0, -112.261, -336.356, 62.3371, 4.92183, 7200, 5, 0, 3876, 0, 0, 1),
(64058, 10177, 229, 0, 0, -110.012, -356.647, 58.5433, 4.36332, 7200, 5, 0, 3876, 0, 0, 1),
(66834, 10177, 229, 0, 0, -111.704, -348.742, 60.0788, 0.82031, 7200, 5, 0, 3876, 0, 0, 1),
(66849, 10177, 229, 0, 0, -108.927, -364.601, 56.6248, 1.04720, 7200, 5, 0, 3876, 0, 0, 1),
(66854, 9701, 229, 0, 0, -77.2828, -324.738, 59.1126, 4.991640, 7200, 5, 0, 3876, 0, 0, 1),
(66855, 9701, 229, 0, 0, -80.2467, -313.909, 59.7635, 0.45379, 7200, 5, 0, 3876, 0, 0, 1),
(66860, 9701, 229, 0, 0, -80.8737, -298.923, 61.8178, 5.18363, 7200, 5, 0, 3876, 0, 0, 1),
(66884, 9701, 229, 0, 0, -109.429, -324.918, 64.3253, 0.03491, 7200, 5, 0, 3876, 0, 0, 1),
(66921, 9701, 229, 0, 0, -112.332, -331.009, 63.2146, 3.07178, 7200, 5, 0, 3876, 0, 0, 1),
(66922, 9701, 229, 0, 0, -112.900, -323.074, 64.3181, 5.41052, 7200, 5, 0, 3876, 0, 0, 1);

-- Classic [1080]
-- Wavethrasher Scales are quest items and should only drop if quest 'Wavethrashing' is active.
UPDATE creature_loot_template SET ChanceOrQuestChance = -ChanceOrQuestChance WHERE item = 20087 AND ChanceOrQuestChance > 0;

-- Classic [1079]
-- Gerard Tiller should no longer drop blacksmithing plans
DELETE FROM creature_loot_template WHERE entry = 255 AND item IN (11614, 11615, 12827, 12830);
UPDATE creature_template SET lootId = 0 WHERE Entry = 255;

-- Classic [1078]
-- Zul'Farak - some rare NPCs were not attackable ...
UPDATE creature_template SET UnitFlags = 32832 WHERE Entry = 10080;
UPDATE creature_template SET UnitFlags = 32832 WHERE Entry = 10081;

-- Classic [1077]
-- Improved fight again NPC 9033 in Blackrock Depths 
-- Fixed respawn time of NPCs 8901 (Anvilrage Reservist) in front of General Angerforge in Blackrock Depths. Made them respawn on General Angerforge fight reset.
UPDATE creature SET spawntimesecs = 3 * 60 * 60 WHERE guid IN (45955, 45956, 45958, 45959);
DELETE FROM creature_linking WHERE `guid` IN (45955, 45956, 45958, 45959);
INSERT INTO creature_linking VALUES
(45955, 45954, 1031),
(45956, 45954, 1031),
(45958, 45954, 1031),
(45959, 45954, 1031);

-- Classic [1075]
-- UBRS - Damage & Friends
UPDATE creature_template SET MinLevel = 62, MaxLevel = 62, HealthMultiplier = 25, DamageMultiplier = 10, ArmorMultiplier = 1, MinMeleeDmg = 107.9, MaxMeleeDmg = 143.1, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 262, RangedAttackPower = 30, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10363;
UPDATE creature_template SET DamageMultiplier = 9.1, MinMeleeDmg = 101.8, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3791, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10814;
UPDATE creature_template SET DamageMultiplier = 3.9, MinMeleeDmg = 68.4, MaxMeleeDmg = 92.3, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2788, MeleeAttackPower = 228, RangedAttackPower = 23, MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500, ResistanceHoly = 0 WHERE Entry = 10442;
UPDATE creature_template SET DamageMultiplier = 3.75, MinMeleeDmg = 101.8, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0 WHERE Entry = 10447;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 62, HealthMultiplier = 25, DamageMultiplier = 10, ArmorMultiplier = 1, MinMeleeDmg = 107.9, MaxMeleeDmg = 143.1, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 262, RangedAttackPower = 30, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10430;
UPDATE creature_template SET DamageMultiplier = 6, ArmorMultiplier = 2, MinMeleeDmg = 103.9, MaxMeleeDmg = 140.3, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 258, RangedAttackPower = 28, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10319;
UPDATE creature_template SET DamageMultiplier = 6, MinMeleeDmg = 119.5, MaxMeleeDmg = 161.3, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 258, RangedAttackPower = 28, MeleeBaseAttackTime = 2300, RangedBaseAttackTime = 2300 WHERE Entry = 10317;
UPDATE creature_template SET DamageMultiplier = 7.5, ArmorMultiplier = 0.5, MinMeleeDmg = 103.9, MaxMeleeDmg = 161.3, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 258, RangedAttackPower = 28, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10318;
UPDATE creature_template SET DamageMultiplier = 6, MinMeleeDmg = 107.9, MaxMeleeDmg = 143.1, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 262, RangedAttackPower = 30, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10371;
UPDATE creature_template SET DamageMultiplier = 5, MinMeleeDmg = 99.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3489, MeleeAttackPower = 248, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9096;
UPDATE creature_template SET DamageMultiplier = 3.9, MinMeleeDmg = 92.9, MaxMeleeDmg = 125.5, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 2832, MeleeAttackPower = 234, RangedAttackPower = 23, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10083;
UPDATE creature_template SET DamageMultiplier = 6, ArmorMultiplier = 1.5, MinMeleeDmg = 103.9, MaxMeleeDmg = 140.3, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 6095, MeleeAttackPower = 258, RangedAttackPower = 28, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10366;
UPDATE creature_template SET DamageMultiplier = 6, MinMeleeDmg = 103.9, MaxMeleeDmg = 140.3, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 4091, MeleeAttackPower = 258, RangedAttackPower = 28, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10372;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, DamageMultiplier = 2.5, MinMeleeDmg = 95.9, MaxMeleeDmg = 129.8, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3380, MeleeAttackPower = 238, RangedAttackPower = 24, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10161;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, DamageMultiplier = 3.9, MinMeleeDmg = 99.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3489, MeleeAttackPower = 248, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10258;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, DamageMultiplier = 3.5, MinMeleeDmg = 99.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3489, MeleeAttackPower = 248, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10683;
UPDATE creature_template SET FactionAlliance = 16, FactionHorde = 16, SpeedWalk = 1, SpeedRun = 1.428571429, DamageMultiplier = 6, MinMeleeDmg = 103.9, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10264;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 62, FactionAlliance = 40, FactionHorde = 40, CreatureTypeFlags = 8, HealthMultiplier = 10, DamageMultiplier = 6.5, ArmorMultiplier = 1, MinMeleeDmg = 129.5, MaxMeleeDmg = 171.8, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 4391, MeleeAttackPower = 262, RangedAttackPower = 30, MeleeBaseAttackTime = 2400, RangedBaseAttackTime = 2400 WHERE Entry = 10429;
UPDATE creature_template SET MinLevel = 62, MaxLevel = 62, FactionAlliance = 40, FactionHorde = 40, Scale = 0, SpeedWalk = 1, Rank = 3, HealthMultiplier = 10, DamageMultiplier = 6.5, ArmorMultiplier = 1, MinLevelHealth = 32370, MaxLevelHealth = 32370, MinMeleeDmg = 129.5, MaxMeleeDmg = 171.8, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 4391, MeleeAttackPower = 262, RangedAttackPower = 30, MeleeBaseAttackTime = 2400, RangedBaseAttackTime = 2400, MinLootGold = 6929, MaxLootGold = 34647, EquipmentTemplateId = 1082 WHERE Entry = 15776;
UPDATE creature_template SET FactionAlliance = 40, FactionHorde = 40, DamageMultiplier = 5, MinMeleeDmg = 107.9, MaxMeleeDmg = 143.1, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 262, RangedAttackPower = 30, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10339;
UPDATE creature_template SET MinLevel = 60, HealthMultiplier = 5, DamageMultiplier = 6, ArmorMultiplier = 1, MinMeleeDmg = 103.9, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10762;
UPDATE creature_template SET MinLevel = 59, DamageMultiplier = 4, MinMeleeDmg = 101.8, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9819;
UPDATE creature_template SET MinLevel = 59, HealthMultiplier = 3, DamageMultiplier = 4, ArmorMultiplier = 1, MinLevelHealth = 8883, MaxLevelHealth = 9156, MinMeleeDmg = 101.8, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3791, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10681;
UPDATE creature_template SET DamageMultiplier = 4, ArmorMultiplier = 1, MinMeleeDmg = 94.8, MaxMeleeDmg = 128.2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 238, RangedAttackPower = 24, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9818;
UPDATE creature_template SET HealthMultiplier = 3, DamageMultiplier = 4, ArmorMultiplier = 1, MaxLevelHealth = 7326, MinMeleeDmg = 94.8, MaxMeleeDmg = 128.2, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3075, MeleeAttackPower = 238, RangedAttackPower = 24, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10680;
UPDATE creature_template SET DamageMultiplier = 4, DamageVariance = 1, MinMeleeDmg = 94.8, MaxMeleeDmg = 128.2, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 238, RangedAttackPower = 24, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9817;
UPDATE creature_template SET DamageMultiplier = 2, MinMeleeDmg = 101.8, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10316;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, HealthMultiplier = 8, DamageMultiplier = 6, ArmorMultiplier = 1, MinMeleeDmg = 103.9, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 9816;
UPDATE creature_template SET MinLevel = 61, MaxLevel = 61, FactionAlliance = 40, FactionHorde = 40, Scale = 0, SpeedWalk = 1, HealthMultiplier = 4, DamageMultiplier = 6, ArmorMultiplier = 1, MinLevelHealth = 12576, MaxLevelHealth = 12576, MinMeleeDmg = 105.8, MaxMeleeDmg = 140.3, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 4091, MeleeAttackPower = 258, RangedAttackPower = 28, MinLootGold = 981, MaxLootGold = 1286, MechanicImmuneMask = 0, MovementType = 1, EquipmentTemplateId = 1138 WHERE Entry = 15796;
UPDATE creature_template SET DamageMultiplier = 6, MinMeleeDmg = 105.8, MaxMeleeDmg = 140.3, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 258, RangedAttackPower = 28, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 10899;
UPDATE creature_template SET HealthMultiplier = 3, DamageMultiplier = 4, ArmorMultiplier = 1, MinLevelHealth = 8883, MaxLevelHealth = 8883, MinMeleeDmg = 101.8, MaxMeleeDmg = 135.0, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3489, MeleeAttackPower = 248, RangedAttackPower = 25, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MovementType = 1 WHERE Entry = 10509;
UPDATE creature_template SET DamageMultiplier = 4, ArmorMultiplier = 3, MinMeleeDmg = 101.8, MaxMeleeDmg = 137.9, MinRangedDmg = 0, MaxRangedDmg = 0, MeleeAttackPower = 252, RangedAttackPower = 26, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 10742;
UPDATE creature_template SET DamageMultiplier = 1.2, MinMeleeDmg = 103.9, MaxMeleeDmg = 137.9, MeleeAttackPower = 258, RangedAttackPower = 28 WHERE Entry = 16066;
UPDATE creature_template SET MinLevel = 60, MaxLevel = 60, MinLevelHealth = 3052, MaxLevelHealth = 3052, MinMeleeDmg = 103.9, MaxMeleeDmg = 137.9, Armor = 3791, MeleeAttackPower = 252, RangedAttackPower = 26, RangedBaseAttackTime = 2000 WHERE Entry = 16048;
UPDATE creature_template SET SpeedWalk = 1, HealthMultiplier = 45, ArmorMultiplier = 1, MinLevelHealth = 119925, MaxLevelHealth = 119925, MinMeleeDmg = 1329, MaxMeleeDmg = 1759, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3795, MeleeAttackPower = 252, RangedAttackPower = 27 WHERE Entry = 16073;
UPDATE creature_template SET MinMeleeDmg = 1329, MaxMeleeDmg = 1759, MinRangedDmg = 0, MaxRangedDmg = 0, Armor = 3795, MeleeAttackPower = 252, RangedAttackPower = 27 WHERE Entry = 16042;
