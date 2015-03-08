-- Classic [0901]
-- Dire Maul: North - Carrion Swarmer were correctly added in Dire Maul.
DELETE FROM creature WHERE id = 13160;
DELETE FROM creature WHERE guid IN (128650,128651,128662,128663,128664,128665,128666,128667,128668,128669,128670,128671,128672,128673,128674,128675,128676,128677,128678,128679,128680,128681,128682,128683,128684,
128685,128686,128697,128698,128699,128700,128701,128702,128703,128704,128705,128706,128707,128708,128709,128710,128711,128712,128713,128714,128715,128716,128717,128718,128719);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(128650, 13160, 429, 0, 0, 532.7290, 535.45750, -25.31940, 4.485496, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128651, 13160, 429, 0, 0, 478.7725, 542.63710, -25.28667, 4.625123, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128662, 13160, 429, 0, 0, 506.4361, 541.64470, -25.30522, 4.555309, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128663, 13160, 429, 0, 0, 494.0698, 531.72560, -25.30895, 4.590216, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128664, 13160, 429, 0, 0, 512.3397, 556.75360, -25.31533, 4.537856, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128665, 13160, 429, 0, 0, 479.4313, 534.18290, -25.30033, 4.625123, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128666, 13160, 429, 0, 0, 520.4340, 531.47490, -25.31460, 4.520403, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128667, 13160, 429, 0, 0, 480.3777, 551.96770, -25.29888, 4.625123, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128668, 13160, 429, 0, 0, 522.0546, 543.64770, -25.31568, 4.520403, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128669, 13160, 429, 0, 0, 533.7919, 552.40670, -25.31940, 4.502949, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128670, 13160, 429, 0, 0, 462.8175, 251.53500, 8.8173770, 4.555309, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128671, 13160, 429, 0, 0, 449.7683, 243.47860, 11.297720, 4.660029, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128672, 13160, 429, 0, 0, 462.6022, 260.84490, 8.9096290, 4.572762, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128673, 13160, 429, 0, 0, 477.1857, 250.99920, 2.9512510, 4.433136, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128674, 13160, 429, 0, 0, 471.8947, 252.93710, 4.9657260, 4.485496, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128675, 13160, 429, 0, 0, 452.4716, 260.48950, 11.303170, 4.642576, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128676, 13160, 429, 0, 0, 448.1017, 251.62600, 11.296410, 4.677482, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128677, 13160, 429, 0, 0, 452.7207, 247.39500, 11.300130, 4.642576, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128678, 13160, 429, 0, 0, 455.3728, 253.91550, 11.303900, 4.625123, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128679, 13160, 429, 0, 0, 448.4704, 258.71660, 11.298890, 4.677482, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128680, 13160, 429, 0, 0, 474.5892, 316.70310, 2.9362390, 4.537856, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128681, 13160, 429, 0, 0, 467.4713, 316.58610, 2.9362500, 4.590216, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128682, 13160, 429, 0, 0, 483.9162, 328.99870, 2.9362550, 4.502949, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128683, 13160, 429, 0, 0, 494.2127, 319.36020, 2.9362270, 4.450590, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128684, 13160, 429, 0, 0, 490.8800, 329.76070, 2.9362490, 4.468043, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128685, 13160, 429, 0, 0, 471.9471, 324.63260, 2.9362590, 4.572762, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128686, 13160, 429, 0, 0, 485.1870, 320.71150, 2.9362340, 4.485496, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128697, 13160, 429, 0, 0, 478.2815, 324.03800, 2.9362510, 4.537856, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128698, 13160, 429, 0, 0, 486.4880, 313.60010, 2.9362180, 4.485496, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128699, 13160, 429, 0, 0, 493.1786, 309.85220, 2.9362050, 4.433136, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128700, 13160, 429, 0, 0, 396.8296, -98.32212, -3.803594, 1.378810, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128701, 13160, 429, 0, 0, 400.0482, -105.0312, -3.803111, 1.396263, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128702, 13160, 429, 0, 0, 403.6488, -110.2321, -3.802753, 1.413717, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128703, 13160, 429, 0, 0, 414.9770, -98.74563, -3.803658, 1.448623, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128704, 13160, 429, 0, 0, 414.4864, -108.6242, -3.802916, 1.448623, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128705, 13160, 429, 0, 0, 427.6517, -100.8249, -3.803568, 1.500983, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128706, 13160, 429, 0, 0, 424.8745, -110.3578, -3.802841, 1.500983, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128707, 13160, 429, 0, 0, 437.5299, -108.4350, -3.803006, 1.553343, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128708, 13160, 429, 0, 0, 445.7453, -113.9387, -3.802556, 1.570796, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128709, 13160, 429, 0, 0, 444.6700, -99.75545, -3.803718, 1.570796, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128710, 13160, 429, 0, 0, 460.2359, -68.97313, -3.803645, 1.500983, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128711, 13160, 429, 0, 0, 456.6826, -57.28893, -4.253410, 1.500983, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128712, 13160, 429, 0, 0, 464.6496, -53.98102, -3.803182, 1.553343, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128713, 13160, 429, 0, 0, 470.4993, -60.37534, -3.802882, 1.570796, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128714, 13160, 429, 0, 0, 470.6470, -70.00087, -3.802982, 1.570796, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128715, 13160, 429, 0, 0, 471.2401, -46.80048, -3.802765, 1.710423, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128716, 13160, 429, 0, 0, 461.8682, -40.83654, -3.803358, 1.658063, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128717, 13160, 429, 0, 0, 472.6571, -33.71276, -3.802353, 1.727876, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128718, 13160, 429, 0, 0, 460.3629, -24.53695, -3.803384, 1.658063, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1),
(128719, 13160, 429, 0, 0, 473.4761, -22.86045, -3.801760, 1.745329, 7200, 2, 0, (SELECT MaxLevelHealth FROM creature_template WHERE entry = 13160), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 13160), 0, 1);

-- Classic [0900]
-- Dire Maul: North was finally populated by Gordok Reavers.
DELETE FROM creature WHERE guid = 134876; -- Gordok Captain being replaced by Reaver. Should be pooled properly, but addition to the system are needed.
DELETE FROM creature WHERE id = 11450;
DELETE FROM creature WHERE guid IN (52150,128636,128637,128638,128639,128640,128641,128642,128643,128644,128645,128646,128647,128648,128649);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(52150, 11450, 429, 0, 0, 387.4085, 462.7724, -7.148942, 2.6878070, 7200, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 11450), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 11450), 0, 0),
(128636, 11450, 429, 0, 0, 419.0150, 538.2688, -18.26003, 0.4886922, 7200, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 11450), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 11450), 0, 0),
(128637, 11450, 429, 0, 0, 530.1689, 580.4394, -25.31940, 1.4137170, 7200, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 11450), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 11450), 0, 0),
(128638, 11450, 429, 0, 0, 530.2059, 600.8753, -25.31940, 4.8694690, 7200, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 11450), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 11450), 0, 0),
(128639, 11450, 429, 0, 0, 593.2279, 565.1199, -4.671438, 3.1066860, 7200, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 11450), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 11450), 0, 0),
(128640, 11450, 429, 0, 0, 484.1014, 523.8082, 27.997650, 1.4486230, 7200, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 11450), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 11450), 0, 0),
(128641, 11450, 429, 0, 0, 497.7333, 523.8073, 27.998240, 1.6406100, 7200, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 11450), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 11450), 0, 0),
(128642, 11450, 429, 0, 0, 480.2641, 558.1676, 27.995270, 1.8500490, 7200, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 11450), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 11450), 0, 0),
(128643, 11450, 429, 0, 0, 485.1412, 564.9458, 27.995090, 3.2114060, 7200, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 11450), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 11450), 0, 0),
(128644, 11450, 429, 0, 0, 565.9363, 486.7255, 29.547450, 4.2586040, 7200, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 11450), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 11450), 0, 0),
(128645, 11450, 429, 0, 0, 559.2202, 477.3137, 29.547450, 0.8552113, 7200, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 11450), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 11450), 0, 0),
(128646, 11450, 429, 0, 0, 688.4595, 505.9162, 29.552950, 2.3038350, 7200, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 11450), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 11450), 0, 0),
(128647, 11450, 429, 0, 0, 541.6950, 582.7410, -4.671440, 5.6723200, 7200, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 11450), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 11450), 0, 0),
(128648, 11450, 429, 0, 0, 522.9580, 554.5040, 28.000600, 2.1991100, 7200, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 11450), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 11450), 0, 0),
(128649, 11450, 429, 0, 0, 748.4830, 433.1610, 28.266480, 3.5604720, 7200, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry = 11450), (SELECT MaxLevelMana FROM creature_template WHERE Entry = 11450), 0, 0);

-- Classic [0899]
-- Fixed Traps should be of the same size as Broken Traps.
UPDATE gameobject_template SET size = 3 WHERE entry = 179512;

-- Classic [0897]
-- Dire Maul: North -- UPDATES
UPDATE creature_template SET FactionAlliance = 190, FactionHorde = 190 WHERE Entry = 2914; -- Snake
UPDATE creature_template SET FactionAlliance = 31, FactionHorde = 31 WHERE Entry = 4075; -- Rat
UPDATE creature_template SET FactionAlliance = 188, FactionHorde = 188 WHERE Entry = 4076; -- Roach
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45 WHERE Entry = 11441; -- Gordok Brute
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45 WHERE Entry = 11444; -- Gordok Mage-Lord
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45 WHERE Entry = 13036; -- Gordok Mastiff
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45 WHERE Entry = 11448; -- Gordok Warlock
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45 WHERE Entry = 11450; -- Gordok Reaver
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45 WHERE Entry = 11445; -- Gordok Captain
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45 WHERE Entry = 11446; -- Gordok Spirit
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45 WHERE Entry = 14351; -- Gordok Bushwacker
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45 WHERE Entry = 14385; -- Doomguard Minion
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45 WHERE Entry = 14386; -- Wandering Eye of Kilrogg
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14 WHERE Entry = 13160; -- Carrion Swarmer
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45 WHERE Entry = 14322; -- Stomper Kreeg <The Drunk>
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45 WHERE Entry = 14326; -- Guard Moldar
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45 WHERE Entry = 14321; -- Guard Fengus
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45 WHERE Entry = 14323; -- Guard Slipkik
UPDATE creature_template SET FactionAlliance = 1374, FactionHorde = 1374 WHERE Entry = 14325; -- Captain Kromcrush
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45 WHERE Entry = 14324; -- ChoRush the Observer
UPDATE creature_template SET FactionAlliance = 45, FactionHorde = 45 WHERE Entry = 11501; -- King Gordok
UPDATE creature_template SET FactionAlliance = 35, FactionHorde = 35 WHERE Entry = 14338; -- Knot Thimblejack
UPDATE creature_template SET FactionAlliance = 35, FactionHorde = 35 WHERE Entry = 14353; -- Mizzle the Crafty
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 2914; -- Snake
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 4075; -- Rat
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 4076; -- Roach
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 11441; -- Gordok Brute
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 11444; -- Gordok Mage-Lord
UPDATE creature_template SET MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 13036; -- Gordok Mastiff
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 11448; -- Gordok Warlock
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 11450; -- Gordok Reaver
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 11445; -- Gordok Captain
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 11446; -- Gordok Spirit
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14351; -- Gordok Bushwacker
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14385; -- Doomguard Minion
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14386; -- Wandering Eye of Kilrogg
UPDATE creature_template SET MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 13160; -- Carrion Swarmer
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14322; -- Stomper Kreeg <The Drunk>
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14326; -- Guard Moldar
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14321; -- Guard Fengus
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14323; -- Guard Slipkik
UPDATE creature_template SET MeleeBaseAttackTime = 1500, RangedBaseAttackTime = 1500 WHERE Entry = 14325; -- Captain Kromcrush
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14324; -- ChoRush the Observer
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 11501; -- King Gordok
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14338; -- Knot Thimblejack
UPDATE creature_template SET MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000 WHERE Entry = 14353; -- Mizzle the Crafty

-- Classic [0896]
-- Badlands - Quest: Disharmony of Fire should not be available if you didn't complete 'Disharmony of Flame'.
UPDATE quest_template SET PrevQuestId = 3906 WHERE entry = 3907;

-- Classic [0894]
-- BRD - Thunderbrew Lager Kegs are now spawned correctly.
DELETE FROM gameobject WHERE id = 164911;
DELETE FROM gameobject WHERE guid IN (66158,66161,66163);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(66158, 164911, 230, 914.3752, -146.9912, -49.75655, 0, 0, 0, -0.9636297, 0.2672410, 604800, 100, 1),
(66161, 164911, 230, 915.7144, -149.2887, -49.75705, 0, 0, 0, -0.9681473, 0.2503814, 604800, 100, 1),
(66163, 164911, 230, 917.0272, -151.5825, -49.75756, 0, 0, 0, -0.9681473, 0.2503814, 604800, 100, 1);

-- Classic [0893]
-- Fixed quest text of quest 348 (Stranglethorn Fever) because it was obviously manually added and wrong
UPDATE quest_template SET Objectives = 'Sick...so...very s-s-sick....$b$b...have contracted Stranglethorn Fever...deadly v-v-virus...$b$b...only cure...is...is...to eat the heart of M-m-m-m-mokk the Savage...elusive white beast...$b$b...Witch doctor Unbagwa...only one who can s-s-summon....$b$b...seek Unbagwa in hidden cave on southern cape...$b$b...hurry...dying...dying....' WHERE entry = 348;

-- Classic [0890]
-- Felvine Shards are not available until you kill Alzzin and were slighty off position.
DELETE FROM gameobject WHERE id = 179559;
DELETE FROM gameobject WHERE guid IN (66151,66153,66154,66155,66157);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(66151, 179559, 429, 275.8198, -424.0976, -119.9618, 0, 0, 0, -0.8241262, 0.56640610, -604800, 0, 1),
(66153, 179559, 429, 274.3399, -424.0255, -119.9618, 0, 0, 0, 0.30901620, 0.95105680, -604800, 0, 1),
(66154, 179559, 429, 275.1532, -424.8906, -119.9618, 0, 0, 0, -0.6494474, 0.76040640, -604800, 0, 1),
(66155, 179559, 429, 275.2957, -423.4662, -119.9618, 0, 0, 0, -0.9816265, 0.19081240, -604800, 0, 1),
(66157, 179559, 429, 275.3406, -422.5365, -119.9618, 0, 0, 0, 0.98325440, 0.18223800, -604800, 0, 1);

-- Classic [0889]
-- Fixed NPC 9198 (Spirestone Mystics) who were skinnable though being humanoids
UPDATE creature_template SET SkinningLootId = 0 WHERE Entry = 9198;
DELETE FROM skinning_loot_template WHERE entry = 9198;

-- Classic [0888]
-- Linked NPCs 15542 (Twilight Marauder) and NPC 15541 (Twilight Marauder Morna): they will now engage with their master and respawn with her
-- Set Run speed for creatures 15542 and 15541
-- Adjust spawn time (4 minutes for master, followers are linked)
-- Fixed model of NPC 15542 which had wrong alternate model similar to NPC 15541
DELETE FROM creature_linking_template WHERE entry = 15542;
INSERT INTO creature_linking_template VALUES
(15542, 1, 15541, 1 + 2 + 128 + 8192, 0);
UPDATE creature SET spawntimesecs = 4 * 60 WHERE id = 15541;
UPDATE creature SET spawntimesecs = 4 * 60 WHERE id = 15542;
UPDATE creature_model_info SET modelid_other_gender = 0 WHERE modelid = 15552;
DELETE FROM dbscripts_on_creature_movement WHERE id = 1554101;
INSERT INTO dbscripts_on_creature_movement VALUES
(1554101, 2, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'RUN ON - Twilight Marauder Morna'),
(1554101, 1, 25, 1, 0, 15542, 43202, 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'RUN ON - Twilight Marauder 1'),
(1554101, 0, 25, 1, 0, 15542, 43203, 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'RUN ON - Twilight Marauder 2');
DELETE FROM creature_movement WHERE id = (SELECT guid FROM creature WHERE id = 15541);
DELETE FROM creature_movement_template WHERE entry = 15541;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(15541, 1, -6381.83, 522.263, 6.33608, 0, 0, 4.08546, 0, 0),(15541, 2, -6388.62, 511.913, 6.40844, 0, 1554101, 4.11295, 0, 0),(15541, 3, -6396.02, 501.126, 5.96868, 0, 0, 3.97158, 0, 0),
(15541, 4, -6403.3, 493.654, 4.30304, 0, 0, 3.94409, 0, 0),(15541, 5, -6408.62, 486.992, 2.68521, 0, 0, 4.04619, 0, 0),(15541, 6, -6414.09, 479.644, 0.827286, 0, 0, 4.28181, 0, 0),
(15541, 7, -6415.84, 474.03, -1.00684, 0, 0, 4.43889, 0, 0),(15541, 8, -6418.49, 464.595, 0.523592, 0, 0, 4.43889, 0, 0),(15541, 9, -6418.49, 464.595, 0.523592, 0, 0, 4.44674, 0, 0),
(15541, 10, -6425.01, 441.027, 2.01444, 0, 0, 4.39962, 0, 0),(15541, 11, -6430.5, 429.614, 2.89218, 0, 0, 4.00299, 0, 0),(15541, 12, -6434.42, 425.346, 3.12233, 0, 0, 3.89696, 0, 0),
(15541, 13, -6452.57, 408.975, 3.49116, 0, 0, 3.93231, 0, 0),(15541, 14, -6469.84, 391.597, 2.38939, 0, 0, 3.92053, 0, 0),(15541, 15, -6471.76, 389.704, 2.10586, 0, 0, 3.73596, 0, 0),
(15541, 16, -6471.76, 389.704, 2.10586, 0, 0, 3.73596, 0, 0),(15541, 17, -6499.13, 374.662, 2.13876, 0, 0, 3.4807, 0, 0),(15541, 18, -6501.03, 373.994, 2.01011, 0, 0, 2.44005, 0, 0),
(15541, 19, -6527.96, 388.841, 4.81061, 0, 0, 3.46107, 0, 0),(15541, 20, -6530.47, 388.01, 4.49237, 0, 0, 4.31322, 0, 0),(15541, 21, -6541.67, 369.928, 1.47049, 0, 0, 3.79879, 0, 0),
(15541, 22, -6544.27, 367.978, 1.26933, 0, 0, 3.7281, 0, 0),(15541, 23, -6544.27, 367.978, 1.26933, 0, 0, 3.7281, 0, 0),(15541, 24, -6568.99, 350.006, 3.62838, 0, 0, 4.07368, 0, 0),
(15541, 25, -6581.04, 334.773, 0.99317, 0, 0, 3.93623, 0, 0),(15541, 26, -6581.04, 334.773, 0.99317, 0, 0, 3.95979, 0, 0),(15541, 27, -6581.04, 334.773, 0.99317, 0, 0, 3.95979, 0, 0),
(15541, 28, -6604.63, 310.711, 3.49995, 0, 0, 3.68883, 0, 0),(15541, 29, -6608.37, 309.531, 3.46286, 0, 0, 3.35896, 0, 0),(15541, 30, -6623.45, 305.414, 3.13978, 0, 0, 3.7281, 0, 0),
(15541, 31, -6634.63, 297.475, 3.05937, 0, 0, 3.91267, 0, 0),(15541, 32, -6640.44, 291.236, 2.59651, 0, 0, 3.97943, 0, 0),(15541, 33, -6649.03, 282.408, 2.2899, 0, 0, 3.84984, 0, 0),
(15541, 34, -6660.82, 271.363, 4.43145, 0, 0, 3.96372, 0, 0),(15541, 35, -6660.82, 271.363, 4.43145, 0, 0, 3.96372, 0, 0),(15541, 36, -6677.3, 253.233, 3.84925, 0, 0, 3.99121, 0, 0),
(15541, 37, -6695.4, 233.018, 2.69341, 0, 0, 3.80664, 0, 0),(15541, 38, -6708.32, 223.081, 2.06455, 0, 0, 4.01085, 0, 0),(15541, 39, -6720.52, 207.81, 2.13145, 0, 0, 4.13651, 0, 0),
(15541, 40, -6728.84, 193.182, 3.85769, 0, 0, 4.59204, 0, 0),(15541, 41, -6729.12, 189.274, 3.89565, 0, 0, 4.55669, 0, 0),(15541, 42, -6733.38, 165.157, 2.50309, 0, 0, 4.59204, 0, 0),
(15541, 43, -6733.73, 161.548, 2.26791, 0, 0, 4.72555, 0, 0),(15541, 44, -6733.41, 137.063, 4.09396, 0, 0, 4.72555, 0, 0),(15541, 45, -6740.68, 126.034, 4.11355, 0, 0, 3.91267, 0, 0),
(15541, 46, -6752.78, 121.21, 2.5664, 0, 0, 3.49641, 0, 0),(15541, 47, -6763.03, 119.278, 1.11022, 0, 0, 3.44536, 0, 0),(15541, 48, -6770.36, 116.385, 0.736461, 0, 0, 3.69668, 0, 0),
(15541, 49, -6786.8, 109.532, 4.10522, 0, 0, 3.1901, 0, 0),(15541, 50, -6786.8, 109.532, 4.10522, 0, 0, 2.01986, 0, 0),(15541, 51, -6798.34, 133.72, 3.8605, 0, 0, 2.01593, 0, 0),
(15541, 52, -6803.13, 143.68, 3.29543, 0, 0, 1.83136, 0, 0),(15541, 53, -6806.7, 156.926, 1.91714, 0, 0, 1.93739, 0, 0),(15541, 54, -6809.22, 162.987, 1.34973, 0, 0, 2.29082, 0, 0),
(15541, 55, -6822.97, 177.835, 0.423451, 0, 0, 2.41648, 0, 0),(15541, 56, -6830.98, 184.459, 1.24963, 0, 0, 2.41256, 0, 0),(15541, 57, -6847.84, 202.184, 3.13678, 0, 0, 2.31831, 0, 0),
(15541, 58, -6853.92, 213.165, 2.3177, 0, 0, 2.03164, 0, 0),(15541, 59, -6853.92, 213.165, 2.3177, 0, 0, 2.03164, 0, 0),(15541, 60, -6862.69, 230.697, 0.189849, 0, 0, 2.13374, 0, 0),
(15541, 61, -6875.76, 248.494, 0.714978, 0, 0, 2.35365, 0, 0),(15541, 62, -6886.87, 260.405, 3.01083, 0, 0, 2.10625, 0, 0),(15541, 63, -6890.23, 268.041, 3.75853, 0, 0, 1.66643, 0, 0),
(15541, 64, -6891.84, 282.321, 3.93235, 0, 0, 1.851, 0, 0),(15541, 65, -6898.99, 305.754, 3.84856, 0, 0, 1.86671, 0, 0),(15541, 66, -6908.82, 323.496, 3.55015, 0, 0, 2.41256, 0, 0),
(15541, 67, -6908.82, 323.496, 3.55015, 0, 0, 2.53429, 0, 0),(15541, 68, -6928.57, 337.92, 3.2281, 0, 0, 2.47932, 0, 0),(15541, 69, -6937.24, 345.285, 4.01963, 0, 0, 2.33794, 0, 0),
(15541, 70, -6951.84, 361.005, 5.90094, 0, 0, 2.23584, 0, 0),(15541, 71, -6964.7, 382.142, 5.41806, 0, 0, 2.00022, 0, 0),(15541, 72, -6968.47, 401.663, 3.03619, 0, 0, 1.55255, 0, 0),
(15541, 73, -6968.47, 401.663, 3.03619, 0, 0, 1.62716, 0, 0),(15541, 74, -6970.83, 418.38, 5.32879, 0, 0, 2.012, 0, 0),(15541, 75, -6981.98, 440.13, 8.42832, 0, 0, 1.97666, 0, 0),
(15541, 76, -6983.44, 444.071, 8.45617, 0, 0, 1.87063, 0, 0),(15541, 77, -6994.07, 473.436, 8.02054, 0, 0, 2.41648, 0, 0),(15541, 78, -7006.97, 484.434, 5.74935, 0, 0, 1.77638, 0, 0),
(15541, 79, -7008.14, 488.174, 6.09104, 0, 0, 1.87456, 0, 0),(15541, 80, -7010.18, 493.008, 8.48791, 0, 0, 1.96881, 0, 0),(15541, 81, -7014.82, 499.297, 9.05018, 0, 0, 2.45968, 0, 0),
(15541, 82, -7024.9, 503.993, 8.78707, 0, 0, 4.12472, 0, 0),(15541, 83, -7024.9, 503.993, 8.78707, 0, 0, 4.19934, 0, 0),(15541, 84, -7035.93, 484.679, 9.25159, 0, 0, 4.06975, 0, 0),
(15541, 85, -7054.55, 463.783, 9.08453, 0, 0, 3.25686, 0, 0),(15541, 86, -7059.05, 460.609, 8.44962, 0, 0, 4.39569, 0, 0),(15541, 87, -7059.05, 460.609, 8.44962, 0, 0, 4.39569, 0, 0),
(15541, 88, -7066.06, 434.783, 8.65003, 0, 0, 4.21112, 0, 0),(15541, 89, -7076.38, 423.931, 8.2561, 0, 0, 3.85376, 0, 0),(15541, 90, -7083.91, 418.745, 7.81772, 0, 0, 3.08407, 0, 0),
(15541, 91, -7090.38, 419.532, 6.20053, 0, 0, 2.91521, 0, 0),(15541, 92, -7094.1, 423.171, 6.0317, 0, 0, 2.17694, 0, 0),(15541, 93, -7103.52, 439.507, 5.07884, 0, 0, 1.92168, 0, 0),
(15541, 94, -7106.42, 449.528, 5.01998, 0, 0, 1.83922, 0, 0),(15541, 95, -7112.86, 467.14, 6.73329, 0, 0, 2.08662, 0, 0),(15541, 96, -7112.86, 467.14, 6.73329, 0, 0, 2.08662, 0, 0),
(15541, 97, -7125.08, 487.981, 3.37296, 0, 0, 2.14552, 0, 0),(15541, 98, -7125.08, 487.981, 3.37296, 0, 0, 2.14552, 0, 0),(15541, 99, -7138.8, 508.267, 3.89067, 0, 0, 2.19657, 0, 0),
(15541, 100, -7138.8, 508.267, 3.89067, 0, 0, 2.19657, 0, 0),(15541, 101, -7138.8, 508.267, 3.89067, 0, 0, 2.19657, 0, 0),(15541, 102, -7152.07, 526.486, 7.64068, 0, 0, 2.3026, 0, 0),
(15541, 103, -7152.07, 526.486, 7.64068, 0, 0, 2.3026, 0, 0),(15541, 104, -7169.3, 543.895, 4.61447, 0, 0, 2.38114, 0, 0),(15541, 105, -7169.3, 543.895, 4.61447, 0, 0, 2.38114, 0, 0),
(15541, 106, -7195.62, 568.831, 4.7267, 0, 0, 2.49895, 0, 0),(15541, 107, -7204.96, 574.829, 3.99974, 0, 0, 2.78169, 0, 0),(15541, 108, -7215.56, 577.951, 2.85007, 0, 0, 3.04087, 0, 0),
(15541, 109, -7215.56, 577.951, 2.85007, 0, 0, 3.04087, 0, 0),(15541, 110, -7215.56, 577.951, 2.85007, 0, 0, 3.04087, 0, 0),(15541, 111, -7250.56, 582.17, 4.64078, 0, 0, 2.87201, 0, 0),
(15541, 112, -7263.12, 585.77, 3.49723, 0, 0, 2.96234, 0, 0),(15541, 113, -7263.12, 585.77, 3.49723, 0, 0, 2.96234, 0, 0),(15541, 114, -7291.6, 592.721, 0.04386, 0, 0, 2.68745, 0, 0),
(15541, 115, -7296.71, 595.531, 0.542263, 0, 0, 2.58142, 0, 0),(15541, 116, -7296.71, 595.531, 0.542263, 0, 0, 2.58142, 0, 0),(15541, 117, -7321.67, 613.23, 1.97044, 0, 0, 2.67174, 0, 0),
(15541, 118, -7323.46, 614.139, 1.88293, 0, 0, 1.96488, 0, 0),(15541, 119, -7323.46, 614.139, 1.88293, 0, 0, 1.96488, 0, 0),(15541, 120, -7335.5, 645.596, -0.95606, 0, 0, 1.5604, 0, 0),
(15541, 121, -7335.5, 645.596, -0.95606, 0, 0, 1.5604, 0, 0),(15541, 122, -7335.02, 670.041, 2.23719, 0, 0, 1.62323, 0, 0),(15541, 123, -7335.76, 680.791, 2.78817, 0, 0, 1.76068, 0, 0),
(15541, 124, -7339.75, 697.307, 2.04653, 0, 0, 1.8667, 0, 0),(15541, 125, -7340.77, 700.481, 1.524, 0, 0, 1.98844, 0, 0),(15541, 126, -7340.77, 700.481, 1.524, 0, 0, 1.98844, 0, 0),
(15541, 127, -7349.28, 720.233, 1.48185, 0, 0, 1.87849, 0, 0),(15541, 128, -7355.21, 742.987, 4.43733, 0, 0, 1.72533, 0, 0),(15541, 129, -7355.21, 742.987, 4.43733, 0, 0, 1.72533, 0, 0),
(15541, 130, -7358.45, 767.271, 3.88032, 0, 0, 1.69784, 0, 0),(15541, 131, -7359.12, 772.767, 3.10525, 0, 0, 1.62323, 0, 0),(15541, 132, -7359.12, 772.767, 3.10525, 0, 0, 1.62323, 0, 0),
(15541, 133, -7360.41, 797.233, 2.03258, 0, 0, 1.62716, 0, 0),(15541, 134, -7360.41, 797.233, 2.03258, 0, 0, 1.62716, 0, 0),(15541, 135, -7364.25, 832.479, 6.24249, 0, 0, 1.32871, 0, 0),
(15541, 136, -7364.25, 832.479, 6.24249, 0, 0, 1.32871, 0, 0),(15541, 137, -7359.69, 852.841, 5.61188, 0, 0, 1.48579, 0, 0),(15541, 138, -7359.75, 868.507, 4.5219, 0, 0, 1.78424, 0, 0),
(15541, 139, -7364.21, 879.221, 3.08032, 0, 0, 2.38114, 0, 0),(15541, 140, -7369.78, 884.806, 2.19951, 0, 0, 2.25155, 0, 0),(15541, 141, -7379.47, 897.887, 1.88811, 0, 0, 2.13767, 0, 0),
(15541, 142, -7385.87, 909.284, 1.4183, 0, 0, 2.01986, 0, 0),(15541, 143, -7385.87, 909.284, 1.4183, 0, 0, 1.92561, 0, 0),(15541, 144, -7385.87, 909.284, 1.4183, 0, 0, 1.92561, 0, 0),
(15541, 145, -7394.29, 932.24, 3.78666, 0, 0, 1.92168, 0, 0),(15541, 146, -7401.88, 952.018, 4.22339, 0, 0, 2.03949, 0, 0),(15541, 147, -7408.17, 962.726, 3.8838, 0, 0, 2.26333, 0, 0),
(15541, 148, -7419.52, 973.376, 3.74543, 0, 0, 2.58927, 0, 0),(15541, 149, -7419.52, 973.376, 3.74543, 0, 0, 2.58927, 0, 0),(15541, 150, -7440.39, 985.459, 3.41013, 0, 0, 2.70708, 0, 0),
(15541, 151, -7463.75, 996.742, 3.0073, 0, 0, 2.55393, 0, 0),(15541, 152, -7463.75, 996.742, 3.0073, 0, 0, 2.55393, 0, 0),(15541, 153, -7482.49, 1008.83, 1.90533, 0, 0, 2.82096, 0, 0),
(15541, 154, -7500.16, 1012.46, 2.21159, 0, 0, 3.20188, 0, 0),(15541, 155, -7507.99, 1011.99, 2.44511, 0, 0, 3.58673, 0, 0),(15541, 156, -7529.33, 1002.12, 1.56887, 0, 0, 3.41001, 0, 0),
(15541, 157, -7542.13, 999.824, 2.58838, 0, 0, 3.20188, 0, 0),(15541, 158, -7562.8, 1001.46, 2.63714, 0, 0, 2.91521, 0, 0),(15541, 159, -7562.8, 1001.46, 2.63714, 0, 0, 2.61676, 0, 0),
(15541, 160, -7562.8, 1001.46, 2.63714, 0, 0, 2.61676, 0, 0),(15541, 161, -7591.28, 1015.61, 3.19717, 0, 0, 2.99375, 0, 0),(15541, 162, -7591.28, 1015.61, 3.19717, 0, 0, 2.32224, 0, 0),
(15541, 163, -7607.47, 1031.64, 5.29972, 0, 0, 2.57749, 0, 0),(15541, 164, -7614.83, 1035.81, 4.79784, 0, 0, 2.8406, 0, 0),(15541, 165, -7624.34, 1038.39, 4.65626, 0, 0, 2.8838, 0, 0),
(15541, 166, -7643.9, 1043.74, 4.92598, 0, 0, 2.77777, 0, 0),(15541, 167, -7661.32, 1052.34, 4.82357, 0, 0, 2.53037, 0, 0),(15541, 168, -7661.32, 1052.34, 4.82357, 0, 0, 2.33402, 0, 0),
(15541, 169, -7678.65, 1069.65, 3.93121, 0, 0, 2.40863, 0, 0),(15541, 170, -7691.84, 1080.81, 3.53004, 0, 0, 2.51859, 0, 0),(15541, 171, -7696.62, 1084.24, 3.41852, 0, 0, 2.48717, 0, 0),
(15541, 172, -7708.09, 1093.96, 2.98749, 0, 0, 2.36151, 0, 0),(15541, 173, -7718.06, 1105.22, 2.59431, 0, 0, 2.2594, 0, 0),(15541, 174, -7733.52, 1124.22, 1.73916, 0, 0, 2.23977, 0, 0),
(15541, 175, -7741.22, 1134.37, 1.33201, 0, 0, 2.05127, 0, 0),(15541, 176, -7751.82, 1156.45, 0.576632, 0, 0, 2.00808, 0, 0),(15541, 177, -7762.49, 1178.51, -0.154873, 0, 0, 2.02771, 0, 0),
(15541, 178, -7762.49, 1178.51, -0.154873, 0, 0, 2.02771, 0, 0),(15541, 179, -7773.03, 1200.62, -1.26206, 0, 0, 2.00808, 0, 0),(15541, 180, -7783.37, 1222.83, -3.7369, 0, 0, 2.00022, 0, 0),
(15541, 181, -7793.09, 1245.32, -6.71451, 0, 0, 1.98451, 0, 0),(15541, 182, -7800.12, 1259.61, -9.0872, 0, 0, 2.09447, 0, 0),(15541, 183, -7806.61, 1270.22, -10.4451, 0, 0, 1.48971, 0, 0),
(15541, 184, -7802.96, 1289.36, -8.34551, 0, 0, 1.26195, 0, 0),(15541, 185, -7802.96, 1289.36, -8.34551, 0, 0, 1.26195, 0, 0),(15541, 186, -7795.69, 1314.38, -5.09394, 0, 0, 2.36151, 0, 0),
(15541, 187, -7810.15, 1326.26, -7.40606, 0, 0, 2.9859, 0, 0),(15541, 188, -7822.73, 1319.24, -10.681, 0, 0, 4.29751, 0, 0),(15541, 189, -7826.93, 1308.33, -10.038, 0, 0, 4.40354, 0, 0),
(15541, 190, -7828.93, 1298.77, -9.55642, 0, 0, 4.74519, 0, 0),(15541, 191, -7826.23, 1286.24, -11.5585, 0, 0, 5.23606, 0, 0),(15541, 192, -7826.23, 1286.24, -11.5585, 0, 0, 5.42063, 0, 0),
(15541, 193, -7826.23, 1286.24, -11.5585, 0, 0, 5.42063, 0, 0),(15541, 194, -7803.98, 1261.54, -9.61223, 0, 0, 5.33816, 0, 0),(15541, 195, -7798.21, 1252.14, -7.91404, 0, 0, 5.23606, 0, 0),
(15541, 196, -7786.57, 1230.64, -4.86232, 0, 0, 5.15752, 0, 0),(15541, 197, -7776.76, 1208.36, -1.91932, 0, 0, 5.10254, 0, 0),(15541, 198, -7776.76, 1208.36, -1.91932, 0, 0, 5.10254, 0, 0),
(15541, 199, -7767.4, 1185.77, -0.426412, 0, 0, 5.1261, 0, 0),(15541, 200, -7751.14, 1153.63, 0.568985, 0, 0, 5.29889, 0, 0),(15541, 201, -7742.45, 1142.21, 0.981252, 0, 0, 5.40492, 0, 0),
(15541, 202, -7726.66, 1123.48, 1.76707, 0, 0, 5.42848, 0, 0),(15541, 203, -7726.66, 1123.48, 1.76707, 0, 0, 5.42848, 0, 0),(15541, 204, -7710.6, 1105.02, 2.66458, 0, 0, 5.43241, 0, 0),
(15541, 205, -7694.26, 1086.76, 3.33483, 0, 0, 5.45204, 0, 0),(15541, 206, -7677.74, 1068.78, 3.94982, 0, 0, 5.48346, 0, 0),(15541, 207, -7659.43, 1052.14, 4.91582, 0, 0, 5.75049, 0, 0),
(15541, 208, -7649.08, 1046.71, 4.95878, 0, 0, 6.04109, 0, 0),(15541, 209, -7649.08, 1046.71, 4.95878, 0, 0, 6.04109, 0, 0),(15541, 210, -7625.01, 1042.15, 4.46894, 0, 0, 6.10392, 0, 0),
(15541, 211, -7603.3, 1040.11, 4.48228, 0, 0, 0.005301, 0, 0),(15541, 212, -7579.12, 1039.98, 3.99961, 0, 0, 6.17853, 0, 0),(15541, 213, -7579.12, 1039.98, 3.99961, 0, 0, 6.17853, 0, 0),
(15541, 214, -7554.95, 1036.01, 3.35316, 0, 0, 6.09999, 0, 0),(15541, 215, -7530.86, 1031.55, 2.74821, 0, 0, 6.09999, 0, 0),(15541, 216, -7518.82, 1029.07, 2.71235, 0, 0, 5.98218, 0, 0),
(15541, 217, -7518.82, 1029.07, 2.71235, 0, 0, 5.98218, 0, 0),(15541, 218, -7489.37, 1018.31, 1.95638, 0, 0, 6.01753, 0, 0),(15541, 219, -7462.4, 1006.38, 2.20385, 0, 0, 5.53843, 0, 0),
(15541, 220, -7455.77, 998.396, 2.89252, 0, 0, 5.03578, 0, 0),(15541, 221, -7455.77, 998.396, 2.89252, 0, 0, 5.03578, 0, 0),(15541, 222, -7448.96, 974.863, 4.33075, 0, 0, 4.98473, 0, 0),
(15541, 223, -7441.17, 948.264, 1.65803, 0, 0, 5.20857, 0, 0),(15541, 224, -7441.17, 948.264, 1.65803, 0, 0, 5.20857, 0, 0),(15541, 225, -7428.39, 927.429, 3.78599, 0, 0, 5.29496, 0, 0),
(15541, 226, -7423.08, 919.427, 3.25806, 0, 0, 5.55414, 0, 0),(15541, 227, -7415.13, 912.745, 2.17476, 0, 0, 5.75834, 0, 0),(15541, 228, -7415.13, 912.745, 2.17476, 0, 0, 5.75834, 0, 0),
(15541, 229, -7393.35, 901.621, 1.19573, 0, 0, 5.76227, 0, 0),(15541, 230, -7377.8, 892.678, 1.60292, 0, 0, 5.65232, 0, 0),(15541, 231, -7368.15, 885.076, 2.38997, 0, 0, 5.50309, 0, 0),
(15541, 232, -7356.76, 872.538, 4.52426, 0, 0, 5.3735, 0, 0),(15541, 233, -7349.03, 859.142, 5.9086, 0, 0, 4.78053, 0, 0),(15541, 234, -7349.03, 859.142, 5.9086, 0, 0, 4.78053, 0, 0),
(15541, 235, -7347.9, 834.669, 5.75347, 0, 0, 4.75696, 0, 0),(15541, 236, -7347.27, 820.669, 4.12543, 0, 0, 4.59596, 0, 0),(15541, 237, -7345.37, 799.572, 0.922967, 0, 0, 5.23213, 0, 0),
(15541, 238, -7341.02, 793.882, 2.23596, 0, 0, 5.61305, 0, 0),(15541, 239, -7328.22, 783.823, 3.96613, 0, 0, 5.47953, 0, 0),(15541, 240, -7318.78, 766.824, 5.08772, 0, 0, 5.09861, 0, 0),
(15541, 241, -7312.81, 748.878, 5.60424, 0, 0, 4.99651, 0, 0),(15541, 242, -7308.44, 735.218, 4.81518, 0, 0, 5.18108, 0, 0),(15541, 243, -7308.44, 735.218, 4.81518, 0, 0, 5.18893, 0, 0),
(15541, 244, -7297.61, 713.247, 1.50116, 0, 0, 5.16537, 0, 0),(15541, 245, -7292.83, 704.299, 2.73024, 0, 0, 5.44812, 0, 0),(15541, 246, -7292.83, 704.299, 2.73024, 0, 0, 5.57771, 0, 0),
(15541, 247, -7292.83, 704.299, 2.73024, 0, 0, 5.57771, 0, 0),(15541, 248, -7273.99, 688.644, 6.33373, 0, 0, 5.60912, 0, 0),(15541, 249, -7262.51, 679.462, 8.53285, 0, 0, 5.55807, 0, 0),
(15541, 250, -7262.51, 679.462, 8.53285, 0, 0, 5.55807, 0, 0),(15541, 251, -7240.23, 661.377, 9.91954, 0, 0, 5.56985, 0, 0),(15541, 252, -7232.97, 654.869, 8.79697, 0, 0, 5.44812, 0, 0),
(15541, 253, -7220.35, 638.217, 5.59505, 0, 0, 5.27926, 0, 0),(15541, 254, -7218.06, 632.807, 4.35276, 0, 0, 5.05935, 0, 0),(15541, 255, -7218.06, 632.807, 4.35276, 0, 0, 5.05935, 0, 0),
(15541, 256, -7209.08, 610.059, 3.65591, 0, 0, 5.10254, 0, 0),(15541, 257, -7209.08, 610.059, 3.65591, 0, 0, 5.10254, 0, 0),(15541, 258, -7199.58, 587.481, 4.66785, 0, 0, 5.14574, 0, 0),
(15541, 259, -7187.62, 565.051, 5.23083, 0, 0, 5.40492, 0, 0),(15541, 260, -7187.62, 565.051, 5.23083, 0, 0, 5.46775, 0, 0),(15541, 261, -7168.85, 548.013, 4.94201, 0, 0, 5.73479, 0, 0),
(15541, 262, -7164.35, 545.33, 4.51328, 0, 0, 5.75049, 0, 0),(15541, 263, -7164.35, 545.33, 4.51328, 0, 0, 5.84081, 0, 0),(15541, 264, -7149.8, 539.532, 5.34474, 0, 0, 6.08821, 0, 0),
(15541, 265, -7141.45, 538.382, 6.5345, 0, 0, 6.19031, 0, 0),(15541, 266, -7124.94, 539.611, 8.79837, 0, 0, 0.594349, 0, 0),(15541, 267, -7124.94, 539.611, 8.79837, 0, 0, 0.594349, 0, 0),
(15541, 268, -7096.07, 559.827, 9.06105, 0, 0, 0.519737, 0, 0),(15541, 269, -7074.14, 570.737, 9.21615, 0, 0, 0.452978, 0, 0),(15541, 270, -7055.48, 579.401, 8.91715, 0, 0, 0.339095, 0, 0),
(15541, 271, -7033.3, 581.961, 7.69663, 0, 0, 5.8251, 0, 0),(15541, 272, -7027.81, 578.488, 7.82374, 0, 0, 5.61305, 0, 0),(15541, 273, -7003.35, 560.111, 10.0738, 0, 0, 5.77012, 0, 0),
(15541, 274, -6994.12, 555.279, 10.789, 0, 0, 5.89971, 0, 0),(15541, 275, -6971.16, 545.977, 12.5531, 0, 0, 5.71907, 0, 0),(15541, 276, -6963.99, 539.302, 11.223, 0, 0, 5.44811, 0, 0),
(15541, 277, -6963.99, 539.302, 11.223, 0, 0, 5.44811, 0, 0),(15541, 278, -6951.38, 523.417, 7.45497, 0, 0, 0.064206, 0, 0),(15541, 279, -6932.52, 525.206, 6.87967, 0, 0, 0.405854, 0, 0),
(15541, 280, -6910.77, 536.454, 5.98403, 0, 0, 0.441197, 0, 0),(15541, 281, -6890.04, 545.287, 4.17121, 0, 0, 0.339095, 0, 0),(15541, 282, -6866.77, 552.948, 1.73102, 0, 0, 0.315533, 0, 0),
(15541, 283, -6849.96, 556.929, -0.124853, 0, 0, 0.107403, 0, 0),(15541, 284, -6828.53, 556.161, -1.31591, 0, 0, 5.96647, 0, 0),(15541, 285, -6811.72, 549.231, -0.449676, 0, 0, 5.52665, 0, 0),
(15541, 286, -6805.68, 540.093, -0.889439, 0, 0, 5.07112, 0, 0),(15541, 287, -6797.24, 517.093, -0.001643, 0, 0, 5.06327, 0, 0),(15541, 288, -6789.19, 494.001, 3.80897, 0, 0, 5.00044, 0, 0),
(15541, 289, -6789.19, 494.001, 3.80897, 0, 0, 5.00044, 0, 0),(15541, 290, -6782.8, 470.402, 6.88729, 0, 0, 4.9651, 0, 0),(15541, 291, -6777.81, 448.479, 8.23635, 0, 0, 4.863, 0, 0),
(15541, 292, -6777.81, 448.479, 8.23635, 0, 0, 4.863, 0, 0),(15541, 293, -6775.02, 424.207, 10.8402, 0, 0, 4.8198, 0, 0),(15541, 294, -6772.4, 399.848, 12.9945, 0, 0, 4.8198, 0, 0),
(15541, 295, -6771.25, 375.415, 13.9048, 0, 0, 4.75697, 0, 0),(15541, 296, -6770.56, 353.532, 12.4543, 0, 0, 4.65094, 0, 0),(15541, 297, -6772.69, 329.132, 8.25087, 0, 0, 4.5724, 0, 0),
(15541, 298, -6772.69, 329.132, 8.25087, 0, 0, 4.5724, 0, 0),(15541, 299, -6776.96, 305.008, 5.71315, 0, 0, 4.52528, 0, 0),(15541, 300, -6780.88, 278.513, 4.82217, 0, 0, 5.27533, 0, 0),
(15541, 301, -6774.67, 270.074, 3.44356, 0, 0, 5.36172, 0, 0),(15541, 302, -6774.67, 270.074, 3.44356, 0, 0, 5.36172, 0, 0),(15541, 303, -6761.04, 254.448, 2.76589, 0, 0, 5.46775, 0, 0),
(15541, 304, -6746.12, 240.139, 3.58501, 0, 0, 5.82511, 0, 0),(15541, 305, -6743.11, 238.827, 3.47093, 0, 0, 5.94684, 0, 0),(15541, 306, -6723.7, 233.256, 0.354174, 0, 0, 6.19817, 0, 0),
(15541, 307, -6707.6, 234.206, 2.14407, 0, 0, 0.401932, 0, 0),(15541, 308, -6690.34, 243.172, 3.02167, 0, 0, 0.759288, 0, 0),(15541, 309, -6690.34, 243.172, 3.02167, 0, 0, 0.759288, 0, 0),
(15541, 310, -6673.31, 260.704, 3.89955, 0, 0, 0.841755, 0, 0),(15541, 311, -6657.19, 279.159, 3.90556, 0, 0, 0.86139, 0, 0),(15541, 312, -6657.19, 279.159, 3.90556, 0, 0, 0.86139, 0, 0),
(15541, 313, -6637.75, 301.124, 3.42846, 0, 0, 0.61399, 0, 0),(15541, 314, -6616.3, 313.404, 3.37217, 0, 0, 0.276268, 0, 0),(15541, 315, -6610.57, 314.709, 3.38045, 0, 0, 0.17024, 0, 0),
(15541, 316, -6588.86, 319.15, 2.14188, 0, 0, 0.908514, 0, 0),(15541, 317, -6583.84, 326.755, -0.328794, 0, 0, 0.987054, 0, 0),(15541, 318, -6583.84, 326.755, -0.328794, 0, 0, 0.987054, 0, 0),
(15541, 319, -6583.84, 326.755, -0.328794, 0, 0, 0.987054, 0, 0),(15541, 320, -6564.96, 355.03, 3.12191, 0, 0, 0.806412, 0, 0),(15541, 321, -6564.96, 355.03, 3.12191, 0, 0, 0.806412, 0, 0),
(15541, 322, -6564.96, 355.03, 3.12191, 0, 0, 0.806412, 0, 0),(15541, 323, -6546.82, 371.491, 0.773827, 0, 0, 0.739654, 0, 0),(15541, 324, -6538.95, 379.691, 2.40596, 0, 0, 0.849609, 0, 0),
(15541, 325, -6538.95, 379.691, 2.40596, 0, 0, 0.849609, 0, 0),(15541, 326, -6522.84, 398.149, 5.48816, 0, 0, 0.853536, 0, 0),(15541, 327, -6511.4, 411.906, 5.84552, 0, 0, 0.9792, 0, 0),
(15541, 328, -6494.62, 442.794, 5.71744, 0, 0, 1.24624, 0, 0),(15541, 329, -6494.62, 442.794, 5.71744, 0, 0, 0.723946, 0, 0),(15541, 330, -6480.24, 455.155, 4.56112, 0, 0, 0.621844, 0, 0),
(15541, 331, -6467.78, 463.666, 3.73075, 0, 0, 0.578647, 0, 0),(15541, 332, -6463.69, 466.871, 2.66855, 0, 0, 0.665041, 0, 0),(15541, 333, -6459.07, 469.336, 0.357515, 0, 0, 0.488326, 0, 0),
(15541, 334, -6452.34, 473.297, 1.23904, 0, 0, 0.578647, 0, 0),(15541, 335, -6447.84, 477.083, 2.19392, 0, 0, 0.723946, 0, 0),(15541, 336, -6441.07, 484.1, 3.19477, 0, 0, 0.806412, 0, 0),
(15541, 337, -6441.07, 484.1, 3.19477, 0, 0, 0.743581, 0, 0),(15541, 338, -6422.88, 500.376, 4.78336, 0, 0, 0.727873, 0, 0),(15541, 339, -6411.08, 510.095, 5.67832, 0, 0, 0.621844, 0, 0),
(15541, 340, -6390.46, 523.301, 6.31597, 0, 0, 0.559012, 0, 0),(15541, 341, -6390.46, 523.301, 6.31597, 0, 0, 0.559012, 0, 0),(15541, 342, -6370.45, 536.218, 6.39885, 0, 0, 0.05243, 0, 0);

-- Classic [0881]
-- Scarlet Monastery - The Secret Door and the High Inquisitor's Door should not be targetable by common players.
UPDATE gameobject_template SET faction = 1375 WHERE entry IN (97700, 104600);

-- Classic [0880]
-- Fixed gossip menu of creature 13278 (Duke Hydraxis) in Azshara
-- Now players will be able to get the required items to summon Majordomo
-- Executus in Molten Core
DELETE FROM gossip_menu WHERE entry = 5065;
INSERT INTO gossip_menu VALUES
(5065, 6108, 0, 0),
(5065, 6109, 0, 981),
(5065, 6158, 0, 982),
(5065, 8541, 0, 990),
(5065, 8542, 0, 988);
DELETE FROM gossip_menu_option WHERE menu_id = 5065;
INSERT INTO gossip_menu_option VALUES
(5065, 0, 0, '[PH] I desire an aqual quintessence, Duke Hydraxis.', 1, 1, -1, 0, 506501, 0, 0, '', 987),
(5065, 1, 0, 'I desire this eternal quintessence, Duke Hydraxis.', 1, 1, -1, 0, 506502, 0, 0, '', 990);
DELETE FROM conditions WHERE condition_entry BETWEEN 981 AND 990;
INSERT INTO conditions VALUES
(981, 8, 6805, 0), -- Quest "Stormers and Rumblers" rewarded
(982, 8, 6824, 0), -- Quest "Hands of the Enemy" rewarded
(983, 30, 749, 5), -- Reputation Hydraxian Waterlords is at max Honored
(984, -1, 982, 983),
(985, 5, 749, 6), -- Reputation Hydraxian Waterlords is at least Revered
(986, 24, 17333, 1), -- Does not have item Aqual Quintessence
(987, -1, 984, 986),
(988, -1, 982, 985),
(989, 24, 22754, 1), -- Does not have item Eternal Quintessence
(990, -1, 988, 989);
DELETE FROM dbscripts_on_gossip WHERE id IN (506501, 506502);
INSERT INTO dbscripts_on_gossip VALUES
(506501, 0, 15, 21357, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'create aqual quintessence'),
(506502, 0, 15, 28439, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'create eternal quintessence');

-- Classic [0878]
-- Improved script for quest 656 (Summoning the Princess) in Arathi Highlands
-- Now Myzrael has a speech and will engage players on spawn
UPDATE creature_template SET MinLevel = 44, MaxLevel = 44, MinLevelHealth = 11408, MaxLevelHealth=11408, HealthMultiplier = 8, PowerMultiplier = 3, ArmorMultiplier = 1 WHERE Entry = 2755;
DELETE FROM db_script_string WHERE entry BETWEEN 2000000461 AND 2000000463;
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000000461, 'What? $N, you served me well, but...',  0, 0, 0, 0, NULL),
(2000000462, 'Why have you summoned me so soon? I haven\t yet reached my full power!', 0, 0, 0, 0, NULL),
(2000000463, 'No matter. You were a fool to help me, and now you will pay!', 0, 0, 0, 0, NULL);
DELETE FROM dbscripts_on_event WHERE id = 420;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(420, 0, 10, 2755, 3000000, 0, 0, 0, 0, 0, 0, 0, -931.73, -3111.81, 48.517, 3.27404,' quest 656'),
(420, 3, 0, 0, 0, 2755, 50, 3, 2000000461, 0, 0, 0, 0, 0, 0, 0, ''),
(420, 6, 0, 0, 0, 2755, 50, 3, 2000000462, 0, 0, 0, 0, 0, 0, 0, ''),
(420, 11, 0, 0, 0, 2755, 50, 3, 2000000463, 0, 0, 0, 0, 0, 0, 0, ''),
(420, 12, 26, 0, 0, 2755, 50, 3, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Classic [0877]
-- Added random movement to creature 1493 (Mok'Rash) near Booty Bay
-- Also fixed its respawn time to 2h instead of 30 min
UPDATE creature SET MovementType = 1, spawndist = 10, spawntimesecs = 2 * 60 * 60 WHERE id = 1493;

-- Classic [0871]
-- Fixed rank of creature 8217 (Mith'rethis the Enchanter) in the Hinterlands because this NPC is rare and elite
-- Added waypoint movement to NPC 8217 (source: TBC-DB)
-- Fixed rank of creature 8217 (Mith'rethis the Enchanter) in the Hinterlands
-- because this NPC is rare and elite
-- Added waypoint movement to NPC 8217 (source: TBC-DB)
UPDATE creature_template SET rank = 2, MovementType = 2 WHERE Entry = 8217;
UPDATE creature SET MovementType = 2 WHERE id = 8217;
DELETE FROM creature_movement_template WHERE entry = 8217;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES 
(8217, 1, -517.333, -4054.25, 216.023, 0, 0, 4.81696, 0, 0),(8217, 2, -528.477, -4075.78, 215.853, 0, 0, 4.22791, 0, 0),(8217, 3, -530.916, -4084.3, 215.575, 0, 0, 2.96263, 0, 0),
(8217, 4, -547.423, -4085.67, 216.281, 0, 0, 3.18254, 0, 0),(8217, 5, -558.864, -4085.86, 225.49, 0, 0, 3.14249, 0, 0),(8217, 6, -570.652, -4085.87, 234.629, 0, 0, 3.14249, 0, 0),
(8217, 7, -578.233, -4085.87, 240.068, 0, 0, 3.14249, 0, 0),(8217, 8, -593.878, -4085.89, 238.362, 0, 0, 3.14249, 0, 0),(8217, 9, -616.638, -4064.5, 238.217, 0, 0, 2.39557, 0, 0),
(8217, 10, -616.833, -4047.42, 238.046, 0, 0, 2.21179, 0, 0),(8217, 11, -652.808, -4040.06, 238.274, 0, 0, 2.93436, 0, 0),(8217, 12, -672.615, -4022.63, 238.229, 0, 0, 2.41992, 0, 0),
(8217, 13, -676.225, -4016.49, 238.145, 0, 0, 2.10262, 0, 0),(8217, 14, -672.621, -4011.21, 238.248, 0, 0, 1.0062, 0, 0),(8217, 15, -664.151, -4010.24, 238.159, 0, 0, 0.113991, 0, 0),
(8217, 16, -655.342, -4029.7, 238.255, 0, 0, 5.1374, 0, 0),(8217, 17, -637.653, -4043.85, 238.07, 0, 0, 5.60864, 0, 0),(8217, 18, -624.501, -4043.49, 238.073, 0, 0, 0.085717, 0, 0),
(8217, 19, -617.972, -4032.87, 237.873, 0, 0, 0.986569, 0, 0),(8217, 20, -617.911, -3980.06, 238.482, 0, 0, 1.59918, 0, 0),(8217, 21, -611.216, -3963.89, 238.351, 0, 0, 1.17821, 0, 0),
(8217, 22, -570.672, -3938.64, 238.326, 0, 0, 0.471347, 0, 0),(8217, 23, -568.836, -3931.76, 237.925, 0, 0, 1.31015, 0, 0),(8217, 24, -556.458, -3939.03, 237.937, 0, 0, 0.21138, 0, 0),
(8217, 25, -537.875, -3940.39, 238.764, 0, 0, 3.32627, 0, 0),(8217, 26, -566.704, -3951.51, 238.427, 0, 0, 3.52419, 0, 0),(8217, 27, -613.806, -3933.84, 238.346, 0, 0, 2.78906, 0, 0),
(8217, 28, -620.501, -3938.32, 238.463, 0, 0, 3.73153, 0, 0),(8217, 29, -616.96, -3970.3, 238.351, 0, 0, 4.85936, 0, 0),(8217, 30, -618.1, -4023.04, 237.988, 0, 0, 4.68658, 0, 0),
(8217, 31, -617.327, -4059.77, 238.279, 0, 0, 4.72663, 0, 0),(8217, 32, -624.179, -4061.62, 238.351, 0, 0, 3.37967, 0, 0),(8217, 33, -638.711, -4062.04, 247.263, 0, 0, 3.19903, 0, 0),
(8217, 34, -618.277, -4063.46, 238.307, 0, 0, 6.25345, 0, 0),(8217, 35, -602.99, -4082.45, 238.351, 0, 0, 5.37302, 0, 0),(8217, 36, -600.118, -4115.69, 238.504, 0, 0, 4.83973, 0, 0),
(8217, 37, -610.419, -4140.24, 238.351, 0, 0, 4.31508, 0, 0),(8217, 38, -599.085, -4160.05, 238.431, 0, 0, 5.23871, 0, 0),(8217, 39, -593.493, -4164.29, 238.355, 0, 0, 5.70995, 0, 0),
(8217, 40, -587.6, -4160.74, 238.352, 0, 0, 0.554599, 0, 0),(8217, 41, -593.862, -4137.4, 238.387, 0, 0, 1.83637, 0, 0),(8217, 42, -629.492, -4119.94, 238.351, 0, 0, 2.68617, 0, 0),
(8217, 43, -642.951, -4106.99, 238.504, 0, 0, 2.37515, 0, 0),(8217, 44, -591.144, -4085.34, 238.368, 0, 0, 0.381026, 0, 0),(8217, 45, -577.325, -4085.64, 239.868, 0, 0, 6.24559, 0, 0),
(8217, 46, -564.315, -4085.87, 229.775, 0, 0, 6.16548, 0, 0),(8217, 47, -544.956, -4085.42, 215.861, 0, 0, 0.026026, 0, 0),(8217, 48, -532.116, -4085.08, 215.547, 0, 0, 0.026026, 0, 0),
(8217, 49, -529.232, -4073.31, 215.856, 0, 0, 1.42561, 0, 0),(8217, 50, -539.105, -4053.94, 216.756, 0, 0, 1.95496, 0, 0),(8217, 51, -531.195, -4035.23, 215.861, 0, 0, 1.19391, 0, 0),
(8217, 52, -505.494, -4008.01, 215.944, 0, 0, 0.802785, 0, 0),(8217, 53, -524.022, -4030.32, 215.86, 0, 0, 4.05669, 0, 0),(8217, 54, -524.191, -4036.51, 215.86, 0, 0, 4.68501, 0, 0);

-- Classic [0867]
-- Improved Stitches script used at end of quest 252 (Translation to Ello) to make it closer
-- to what it was on retail:
-- Stitches is now neutral at spawn and will no longer kill Abercombrie
-- Stitches turns hostile when reaching the road
-- Stitches now attacks the Night Watch guards on its way to Darkshire
-- Town Crier (creature 468) now has several yells to inform players of Stitches progress toward Darkshire
-- Prevented Stitches to spawn twice
-- Source: http://www.wowwiki.com/Quest:Translation_to_Ello
-- http://www.wowwiki.com/Stitches
-- http://www.youtube.com/watch?v=rS0rjcQ6YMc
SET @NIGHTWATCH := 888;
SET @NIGHTWATCH2 := 499;
SET @TOWNCRIER := 468;
SET @CRIER_GUID := (SELECT guid FROM creature WHERE id = @TOWNCRIER);
SET @SEARCH_RANGE := 100000;
UPDATE creature_template SET FactionAlliance = 7, FactionHorde = 7,  ExtraFlags = ExtraFlags | 0x1000 WHERE Entry = 412;
UPDATE creature_template SET ExtraFlags = ExtraFlags | 0x1000 WHERE Entry = 468; -- Makes Town Crier an active object
UPDATE dbscripts_on_quest_end SET delay = 1 WHERE id = 252;
DELETE FROM dbscripts_on_quest_end WHERE id = 252 AND delay = 0;
INSERT INTO dbscripts_on_quest_end VALUES
(252, 0, 34, 980, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'stop if stitches already spawned');
DELETE FROM conditions WHERE condition_entry = 980;
INSERT INTO conditions VALUES
(980, 37, 412, @SEARCH_RANGE);
DELETE FROM dbscripts_on_creature_movement WHERE id = 41204 AND command = 22;
INSERT INTO dbscripts_on_creature_movement VALUES
(41204, 0, 22, 93, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'stitches faction hostile');
UPDATE creature_movement_template SET script_id = 41204 WHERE entry = 412 AND point = 35;
DELETE FROM dbscripts_on_creature_movement WHERE id = 41205;
INSERT INTO dbscripts_on_creature_movement VALUES
(41205, 0, 0, 6, 0, @TOWNCRIER, @CRIER_GUID, 0x10, 2000000458, 0, 0, 0, 0, 0, 0, 0, 'stitches - town crier 1st yell');
UPDATE creature_movement_template SET script_id = 41205 WHERE entry = 412 AND point = 47;
DELETE FROM dbscripts_on_creature_movement WHERE id = 41206;
INSERT INTO dbscripts_on_creature_movement VALUES
(41206, 0, 26, 0, 0, @NIGHTWATCH, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'stitches attacks night watch'),
(41206, 1, 26, 0, 0, @NIGHTWATCH2, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2nd night watch attacks stitches');
UPDATE creature_movement_template SET script_id = 41206, waittime = 0 WHERE entry = 412 AND point = 49;
DELETE FROM dbscripts_on_creature_movement WHERE id = 41202 AND delay = 4;
INSERT INTO dbscripts_on_creature_movement VALUES
(41202, 4, 0, 6, 0, @TOWNCRIER, @CRIER_GUID, 0x10, 2000000459, 0, 0, 0, 0, 0, 0, 0, 'stitches - town crier 2nd yell');
UPDATE creature_movement_template SET script_id = 0 WHERE entry = 412 AND point = 69;
UPDATE creature_movement_template SET script_id = 41202 WHERE entry = 412 AND point = 50;
DELETE FROM dbscripts_on_creature_death WHERE id = 412;
INSERT INTO dbscripts_on_creature_death VALUES
(412, 5, 0, 6, 0, @TOWNCRIER, @CRIER_GUID, 0x10, 2000000460, 0, 0, 0, 0, 0, 0, 0, 'stitches - town crier 3rd yell');
DELETE FROM db_script_string WHERE entry IN (2000000458, 2000000459, 2000000460);
INSERT INTO db_script_string VALUES
(2000000458, 'An abomination of the undead is approaching!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 7, 0, NULL),
(2000000459, 'The abomination has overrun the Night Watch camp! Quickly, we must intercept it before it reaches town!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 7, 0, NULL),
(2000000460, 'The beast is slain! All is well in Darkshire.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 7, 0, NULL);
UPDATE db_script_string SET type = 6 WHERE entry IN (2000000161, 2000000162);


-- Classic [0866]
-- Fixed quest 2882 (Cuergo's Gold) by adding script on GO use
-- for GO 142189 (Inconspicuous Landmark)
DELETE FROM dbscripts_on_go_template_use WHERE id = 142189;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES  
(142189, 0, 15, 11462, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''), -- summons NPC trigger 7898
(142189, 3, 15, 11487, 0, 7898, 50, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(142189, 4, 15, 11485, 0, 7898, 50, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(142189, 9, 15, 11463, 0, 7898, 50, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(142189, 10, 15, 11463, 0, 7898, 50, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(142189, 11, 15, 11487, 0, 7898, 50, 2, 0, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE creature_template SET MovementType = 1 WHERE Entry IN (7899, 7902, 7901);

-- Classic [0854]
-- Diremaul - Wandering Eyes of Kilrogg -- should remember their name, no one ever called them Idling Eyes of Kilrogg.
SET @EYEOFKILROGG := 14386;
DELETE FROM creature WHERE id = @EYEOFKILROGG;
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(128634, @EYEOFKILROGG, 429, 0, 0, 560.9175, 545.4094, -25.31721, 1.005476, 900, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry=@EYEOFKILROGG), (SELECT MaxLevelMana FROM creature_template WHERE Entry=@EYEOFKILROGG), 0, 2),
(128635, @EYEOFKILROGG, 429, 0, 0, 446.8329, 542.6426, -21.81278, 3.261362, 900, 0, 0, (SELECT MaxLevelHealth FROM creature_template WHERE Entry=@EYEOFKILROGG), (SELECT MaxLevelMana FROM creature_template WHERE Entry=@EYEOFKILROGG), 0, 2);
SET @POINT := 0;
DELETE FROM creature_movement WHERE id = 128634;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(128634, (@POINT := @POINT + 1), 577.1039, 570.9245, -25.40290, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 572.0755, 582.9881, -25.40273, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 544.6523, 593.1812, -25.40273, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 500.8310, 579.0237, -25.40101, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 484.0373, 575.8411, -25.40182, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 476.5366, 584.7387, -25.40356, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 494.3848, 591.6921, -20.39891, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 534.3132, 590.4163, -4.754774, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 550.6912, 591.4011, -4.754772, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 568.8508, 584.2122, -4.754771, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 581.8668, 574.6851, -4.755718, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 587.1575, 556.0428, -1.718680, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 587.0223, 535.8848, 6.7701660, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 568.9283, 535.3513, 13.090810, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 545.4929, 534.3782, 25.665700, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 568.9283, 535.3513, 13.090810, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 587.0223, 535.8848, 6.7701660, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 587.1575, 556.0428, -1.718680, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 581.8668, 574.6851, -4.755718, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 568.8508, 584.2122, -4.754771, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 550.6912, 591.4011, -4.754772, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 534.3132, 590.4163, -4.754774, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 494.3848, 591.6921, -20.39891, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 481.7606, 590.6141, -25.40754, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 484.0373, 575.8411, -25.40182, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 500.8310, 579.0237, -25.40101, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 544.6523, 593.1812, -25.40273, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 572.0755, 582.9881, -25.40273, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 577.1039, 570.9245, -25.40290, 0, 0, 0, 0, 0),
(128634, (@POINT := @POINT + 1), 563.5419, 547.6833, -25.39905, 0, 0, 0, 0, 0);
SET @POINT := 0;
DELETE FROM creature_movement WHERE id = 128635;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(128635, (@POINT := @POINT + 1), 428.5866, 550.3541, -18.33062, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 413.2478, 549.2036, -18.33061, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 410.8050, 537.9805, -18.00485, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 399.8401, 525.5711, -12.77508, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 389.6866, 500.6979, -12.01533, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 385.3872, 475.1862, -7.219529, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 395.8070, 468.8721, -7.219531, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 396.1824, 455.4167, -7.219535, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 388.5278, 448.8068, -7.219536, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 384.2072, 434.8414, -5.553133, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 384.5225, 423.3623, -3.128052, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 385.2957, 413.9088, -1.672135, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 384.2072, 434.8414, -5.553133, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 388.5278, 448.8068, -7.219536, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 396.1824, 455.4167, -7.219535, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 395.8070, 468.8721, -7.219531, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 385.3872, 475.1862, -7.219529, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 389.6866, 500.6979, -12.01533, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 399.6569, 525.3637, -12.77500, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 410.8050, 537.9805, -18.00485, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 413.2478, 549.2036, -18.33061, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 428.5866, 550.3541, -18.33062, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 445.9710, 542.5389, -21.56523, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 494.6815, 542.8771, -25.38725, 0, 0, 0, 0, 0),
(128635, (@POINT := @POINT + 1), 445.9710, 542.5389, -21.56523, 0, 0, 0, 0, 0);

-- Classic [0853]
-- should only be usable if you are on certain quests
-- was incorrectly positioned
UPDATE gameobject SET position_x = 129.4811, position_y = 544.9671, position_z = -48.46632, orientation = 0, rotation2 = 0.7253742, rotation3 = 0.6883547, spawntimesecs = 0, animprogress = 100 WHERE id = 179517;
UPDATE gameobject_template SET flags = 4 WHERE entry = 179517;

-- Classic [0852]
-- Diremaul - Doors and Keys
-- Both, the Gordok Courtyard Key and the Gordok Inner Door Key are now bound to Diremaul and will be destroyed if their holders make it out of the dungeon alive.
-- The Gordok Inner Door will now require the use of the Gordok Inner Door Key in order to be opened.
-- Lots of doors in the western and northern wing of Diremaul had their size and opening animation fixed.
UPDATE gameobject SET position_x = 491.2043, position_y = 515.1331, position_z = 29.467530, orientation = 0, rotation2 = 0.70710660, rotation3 = 0.7071069, spawntimesecs = 0, animprogress = 100 WHERE id = 177217;
UPDATE gameobject SET position_x = 385.3268, position_y = 374.2315, position_z = -1.343140, orientation = 0, rotation2 = 0.70710660, rotation3 = 0.7071069, spawntimesecs = 0, animprogress = 100 WHERE id = 177219;
UPDATE gameobject SET position_x = 351.5679, position_y = 88.67347, position_z = -36.39297, orientation = 0, rotation2 = 0.70710660, rotation3 = 0.7071069, spawntimesecs = 0, animprogress = 100 WHERE id = 179549;
UPDATE gameobject SET position_x = 83.25511, position_y = 630.5456, position_z = -24.63151, orientation = 0, rotation2 = -0.3131638, rotation3 = 0.9496992, spawntimesecs = 0, animprogress = 100 WHERE id = 179550;
UPDATE gameobject SET position_x = 50.58631, position_y = 501.9406, position_z = -23.14985, orientation = 0, rotation2 = -0.7071066, rotation3 = 0.7071069, spawntimesecs = 0, animprogress = 100 WHERE id = 177221;
UPDATE gameobject_template SET flags = 34, size = 1.482917 WHERE entry = 177217;
UPDATE gameobject_template SET flags = 34 WHERE entry = 177219;
UPDATE gameobject_template SET faction = 0 WHERE entry = 179549;
UPDATE gameobject_template SET size = 1.02 WHERE entry = 179550;
UPDATE gameobject_template SET size = 0.465763 WHERE entry = 177221;
UPDATE item_template SET area = 2557, Map = 429 WHERE entry = 18268;
UPDATE item_template SET area = 2557, Map = 429 WHERE entry = 18266;

-- Classic [0850]
-- DM:N - Misc 
-- Cho'Rush the Observer was moved and will now assist the Ogre King.
UPDATE creature SET position_x = 833.9951, position_y = 489.5435, position_z = 37.40153, orientation = 3.211406, MovementType = 0 WHERE id = 14324;
-- Guard Fengus will now move constantly around.
SET @FENGUS := 14321; -- Guard Fengus
SET @GUID := (SELECT guid FROM creature WHERE id = @FENGUS);
SET @POINT := 0;
UPDATE creature SET position_x = 356.795, position_y = 258.3065, position_z = 11.65384, orientation = 3.142583, MovementType = 2 WHERE id = @FENGUS;
DELETE FROM creature_movement WHERE id = @GUID;
DELETE FROM creature_movement_template WHERE entry = @FENGUS;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(@FENGUS, (@POINT := @POINT + 1), 316.5439, 258.2672, 11.22405, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 287.7441, 260.7287, 2.869437, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 290.6053, 280.1005, 2.848812, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 289.7671, 310.0473, 2.853041, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 300.0063, 328.7043, 2.852961, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 294.1508, 290.1005, 2.849759, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 288.6681, 260.1472, 2.870163, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 318.0658, 258.1307, 11.22347, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 352.2249, 259.8816, 11.20577, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 379.2898, 259.8564, 11.43955, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 383.1255, 280.3708, 12.23591, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 384.3981, 315.2444, 11.21198, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 385.5048, 342.4915, 2.862235, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 350.4333, 341.1977, 2.853369, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 313.9085, 338.8922, 2.852938, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 356.0100, 342.2071, 2.853216, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 388.9794, 340.4667, 2.864845, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 423.3712, 340.0448, 2.853797, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 454.4482, 336.7815, 2.855228, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 417.1513, 339.7217, 2.853512, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 390.7901, 340.0213, 2.865798, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 386.5863, 316.9394, 10.87668, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 385.8260, 281.0563, 12.23588, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 385.6659, 260.2018, 11.43955, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 407.4470, 256.0239, 12.23423, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 444.0919, 255.3879, 11.20982, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 407.4797, 258.5080, 12.23421, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 384.6136, 256.4120, 11.43955, 0, 0, 0, 0, 0),
(@FENGUS, (@POINT := @POINT + 1), 358.8656, 258.3085, 12.23409, 0, 0, 0, 0, 0);
-- The Tribute and Fengus's Chest were moved.
UPDATE gameobject SET position_x = 808.3697, position_y = 482.1281, position_z = 37.31820, orientation = 0, rotation2 = -0.9996567, rotation3 = 0.02620165 WHERE guid = 35834;
UPDATE gameobject SET position_x = 380.6145, position_y = 260.0570, position_z = 11.43955, orientation = 0, rotation2 = -0.4848089, rotation3 = 0.87462010 WHERE guid = 35832;

-- Classic [0849]
-- DM:N - Guard Slip'Kik is now constatly moving through the Halls of Destruction and no longer easy to skip on your Tribute Run.
SET @SLIPKIK := 14323; -- Guard SlipKik
SET @GUID := (SELECT guid FROM creature WHERE id = @SLIPKIK);
SET @POINT := 0;
UPDATE creature SET position_x = 550.3804, position_y = 533.7247, position_z = -25.31852, orientation = 3.926991, MovementType = 2 WHERE id = @SLIPKIK;
DELETE FROM creature_movement WHERE id = @GUID;
DELETE FROM creature_movement_template WHERE entry = @SLIPKIK;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(@SLIPKIK, (@POINT := @POINT + 1), 558.6339, 549.9158, -25.39908, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 573.5057, 563.2197, -25.40176, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 573.2263, 586.4570, -25.40273, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 524.0547, 587.0665, -25.40254, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 510.3508, 606.5667, -25.40364, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 486.8481, 606.4826, -25.40477, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 478.1636, 594.9525, -25.40531, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 477.4341, 579.6123, -25.40210, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 504.7797, 574.7651, -25.40086, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 477.4341, 579.6123, -25.40210, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 478.1636, 594.9525, -25.40531, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 486.8481, 606.4826, -25.40477, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 510.3508, 606.5667, -25.40364, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 524.0547, 587.0665, -25.40254, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 573.2263, 586.4570, -25.40273, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 573.5057, 563.2197, -25.40176, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 558.6339, 549.9158, -25.39908, 0, 0, 0, 0, 0),
(@SLIPKIK, (@POINT := @POINT + 1), 550.9423, 528.1198, -25.40169, 0, 0, 0, 0, 0);

-- Classic [0848]
-- STV - Item: Encrusted Tail Fin * should only drop from Murlcos located in the Vile Reef.
-- ( Patch 1.2.0 (18-Dec-2004): Murkgill Murlocs in Stranglethorn no longer drop Encrusted Tail Fin.)
DELETE FROM creature_loot_template WHERE item = 5796 AND entry IN (4457, 4458, 4459, 4460, 4461);

-- Classic [0846]
-- Hearthsinger Forresten - Stratholme
DELETE FROM creature WHERE id = 10558;
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(128630, 10558, 329, 0, 0, 3595.755, -3509.928, 137.5008, 5.742133, 604800, 0, 0, 6960, 0, 0, 0),
(128631, 10558, 329, 0, 0, 3680.273, -3512.372, 136.1522, 2.042035, 604800, 0, 0, 6960, 0, 0, 0),
(128632, 10558, 329, 0, 0, 3692.933, -3363.162, 130.7527, 3.246312, 604800, 0, 0, 6960, 0, 0, 0),
(128633, 10558, 329, 0, 0, 3683.747, -3334.066, 125.3195, 3.141593, 604800, 0, 0, 6960, 0, 0, 0);
DELETE FROM pool_template WHERE entry = 25480;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(25480, 1, 'Stratholme - Hearthsinger Forresten');
DELETE FROM pool_creature WHERE pool_entry = 25480;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(128630, 25480, 25, 'Stratholme - Hearthsinger Forresten'),
(128631, 25480, 25, 'Stratholme - Hearthsinger Forresten'),
(128632, 25480, 25, 'Stratholme - Hearthsinger Forresten'),
(128633, 25480, 25, 'Stratholme - Hearthsinger Forresten');

-- Classic [0838]
-- Fixed drop chance of item 5339 (Serpent Bloom) in Wailing Caverns
-- Though a quest objective, it is lootable by everyone and should have a 100% drop chance
-- Also removed wrong loot content in GO 13891 (Serpent Bloom)
-- Thanks TheTrueAnimal for reporting, Sinoxan for researching.
UPDATE gameobject_loot_template SET ChanceOrQuestChance = 100 WHERE item = 5339;
DELETE FROM gameobject_loot_template WHERE entry = 2772 AND item <> 5339;

-- Classic [0837]
-- Fixed respawntime of GO 177287 (Unfinished Painting) 
-- Thanks TheTrueAnimal for reporting. This closes #676  
 -- Source: https://www.youtube.com/watch?v=2Dm3YwxxJUo 
 UPDATE gameobject SET spawntimesecs = 0 WHERE id = 177287; 

-- Classic [0836]
-- Fixed graveyard for Alliance in Ratchet. Thanks Metalica for pointing.
DELETE FROM game_graveyard_zone WHERE id = 249 AND ghost_zone = 215;
UPDATE game_graveyard_zone SET faction = 0 WHERE id = 249 AND ghost_zone = 17;
-- Alliance players dying in Mulgore and Thunder Bluff are now ported to Bloodhoof Village graveyard
-- as they should instead of Ratchet
-- Source: http://www.wowwiki.com/Mulgore#Patch_changes
UPDATE game_graveyard_zone SET faction = 0 WHERE id = 89 AND ghost_zone = 215;
UPDATE game_graveyard_zone SET id = 89 WHERE faction = 469 AND ghost_zone = 1638;

-- Classic [0835]
-- Added missing GO 175966 (Enchanted Scarlet Thread) in Stratholme
-- Also put them into a pool
DELETE FROM gameobject WHERE guid IN (66149, 66150);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(66149, 175966, 329, 3457.5, -3111.17, 137.482, 2.023, 0, 0, 0.847629, 0.53059, 43200, 100, 1),
(66150, 175966, 329, 3585.85, -3061.59, 136.515, 5.31, 0, 0, 0.467617, -0.883931, 43200, 100, 1);
DELETE FROM pool_gameobject_template WHERE id = 175966;
INSERT INTO pool_gameobject_template VALUES
(175966, 25479, 0, 'Enchanted Scarlet Thread (175966)');
DELETE FROM pool_template WHERE entry = 25479;
INSERT INTO pool_template VALUES
(25479, 2, 'Enchanted Scarlet Thread (175966) - Stratholme');

-- Classic [0823]
-- Added missing rare spawns NPCs in Zul'Farrak
-- Source: http://www.wowhead.com/npc=10080#comments
-- http://www.wowhead.com/npc=10081#comments
-- http://www.wowhead.com/npc=10082#comments
-- ----------------------------
-- Sandarr Dunereaver (10080)
-- ----------------------------
DELETE FROM creature WHERE guid IN (54080,128620);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(54080, 10080, 209, 0, 0, 1546.25, 1017.14, 8.87683, 0.0109968, 7200, 0, 0, 5544, 0, 0, 0), -- Sandarr Dunereaver
(128620, 7269, 209, 0, 0, 1546.25, 1017.14, 8.87683, 0.0109968, 60, 5, 0, 1782, 0, 0, 1); -- Sandarr Dunereaver placeholder
DELETE FROM pool_creature WHERE guid IN (54080, 128620);
INSERT INTO pool_creature VALUES
(54080, 25476, 10, 'Zul\'Farrak - Sandarr Dunereaver (Zul\'Farrak)'),
(128620, 25476, 0, 'Zul\'Farrak - Sandarr Dunereaver placeholder (Zul\'Farrak)');
DELETE FROM pool_template WHERE entry = 25476;
INSERT INTO pool_template VALUES
(25476, 1, 'Zul\'Farrak - Sandarr Dunereaver/Sandarr Dunereaver placeholder');
-- ----------------------------
-- Dustwraith (10081)
-- ----------------------------
DELETE FROM creature WHERE guid IN (128627, 128628);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(128627, 10081, 209, 0, 0, 1627.47, 1186.85, 8.87693, 0.647954, 7200, 15, 0, 5757, 0, 0, 1), -- Dustwraith
(128628, 7269, 209, 0, 0, 1627.47, 1186.85, 8.87693, 0.647954, 60, 5, 0, 1782, 0, 0, 1); -- Dustwraith placeholder
DELETE FROM pool_creature WHERE guid IN (128627, 128628);
INSERT INTO pool_creature VALUES
(128627, 25477, 10, 'Zul\'Farrak - Dustwraith'),
(128628, 25477, 0, 'Zul\'Farrak - Dustwraith placeholder');
DELETE FROM pool_template WHERE entry = 25477;
INSERT INTO pool_template VALUES
(25477, 1, 'Zul\'Farrak - Dustwraith/Dustwraith placeholder');
-- ----------------------------
-- Zerillis (10082)
-- ----------------------------
DELETE FROM creature WHERE guid = 128629;
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(128629, 10082, 209, 0, 0, 1628.94, 952.042, 8.87684, 5.43152, 7200, 0, 0, 5544, 0, 0, 2); -- Zerillis
UPDATE creature_template SET MovementType = 2 WHERE Entry = 10082;
DELETE FROM creature_movement_template WHERE entry = 10082;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(10082, 1, 1648.93, 929.182, 9.0735, 0, 400, 0),
(10082, 2, 1676.93, 909.081, 8.8778, 0, 400, 0),
(10082, 3, 1679.64, 896.14, 8.8778, 0, 0, 0),
(10082, 4, 1662.26, 892.587, 8.87689, 0, 300, 0),
(10082, 5, 1653.05, 908.666, 8.87689, 0, 0, 0),
(10082, 6, 1649.56, 928.862, 8.97394, 0, 0, 0),
(10082, 7, 1628.18, 951.86, 8.87694, 0, 1000, 0);
DELETE FROM pool_creature WHERE guid IN (128629, 44170);
INSERT INTO pool_creature VALUES
(128629, 25478, 30, 'Zul\'Farrak - Zerillis'),
(44170, 25478, 0, 'Zul\'Farrak - Zerillis placeholder');
DELETE FROM pool_template WHERE entry = 25478;
INSERT INTO pool_template VALUES
(25478, 1, 'Zul\'Farrak - Zerillis/Zerillis placeholder');

-- Classic [0822]
-- Fixed loot table of bosses in Zul'Farrak.
-- Thanks Patman for reporting.
UPDATE creature_loot_template SET ChanceOrQuestChance = 40 WHERE entry = 7271 AND item = 18083;
UPDATE creature_loot_template SET ChanceOrQuestChance = 20 WHERE entry = 7271 AND item = 18082;
DELETE FROM creature_loot_template WHERE entry = 7271 AND item IN (24036, 24041, 24043, 24045);
INSERT INTO creature_loot_template VALUES
(7271, 24036, 10, 0, -24036, 1, 0), -- grey items
(7271, 24041, 10, 1, -24041, 1, 0), -- green items
(7271, 24043, 10, 1, -24043, 1, 0), -- green items
(7271, 24045, 10, 1, -24045, 1, 0); -- green items
DELETE FROM creature_loot_template WHERE entry = 7275 AND item IN (24036, 24041, 24043, 24045);
INSERT INTO creature_loot_template VALUES
(7275, 24036, 10, 0, -24036, 1, 0), -- grey items
(7275, 24041, 10, 1, -24041, 1, 0), -- green items
(7275, 24045, 10, 1, -24045, 1, 0); -- green items
UPDATE creature_loot_template SET maxcount = 4 WHERE item IN (4338, 4306) AND entry IN (8127, 7272, 7271, 7796, 7795, 7273, 7275, 7797, 7267);
UPDATE creature_loot_template SET mincountOrRef = 2, maxcount = 5 WHERE item = 9523 AND entry IN (8127, 7272, 7271, 7796, 7795, 7273, 7275, 7797, 7267);

--  Classic [0821]
-- Added waypoint movement to creature 7795 (Hydromancer Velratha) in Zul'Farrak.
-- She will now move around the sacred pool.
UPDATE creature SET MovementType = 2 WHERE id = 7795;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 7795;
DELETE FROM creature_movement_template WHERE entry = 7795;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, script_id, waittime, orientation) VALUES
(7795, 1, 1704.96, 1202.13, 9.24427, 0, 0, 0),
(7795, 2, 1684.78, 1225.34, 8.87707, 0, 0, 0),
(7795, 3, 1706.28, 1200.92, 9.22012, 0, 0, 0),
(7795, 4, 1681.82, 1180.19, 8.89546, 0, 0, 0);
-- Fixed walk speed for creature 7273 (Gahz'rilla) in Zul'Farrak because it was moving way to quickly 
UPDATE creature_template SET SpeedWalk = 1.14286 WHERE Entry = 7273;
-- Fixed addon for creature 5648 (Sandfury Shadowcaster) because they were using an aura addon and an EventAI 
-- script to add the same spell 20798 (Demon Skin) resulting in the spell being self canceled 
DELETE FROM creature_addon WHERE auras = '20798' AND guid IN (SELECT guid FROM creature WHERE id = 5648); 

-- Classic [0819]
-- Fixed spawn time of NPC 11489 (Tendris Warpwood) in Dire Maul
-- Thanks TheTrueAnimal for pointing.
UPDATE creature SET spawntimesecs = 3 * 3600 WHERE id = 11489;