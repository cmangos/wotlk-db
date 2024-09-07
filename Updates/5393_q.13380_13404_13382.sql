-- q.13380 'Leading the Charge' - A
-- q.13404 'Static Shock Troops: the Bombardment' - A -- daily
-- q.13382 'Putting the Hertz: The Valley of Lost Hope' - A -- daily
-- Critical issue: air missles do not damage anyone
DELETE FROM dbscripts_on_gossip WHERE id IN (1011901);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1011901,0,15,59563,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 59563 on Player'),
(1011901,1,15,59554,0,0,31690,530742,2|0x10,0,0,0,0,0,0,0,0,'Cast 59554');
DELETE FROM dbscripts_on_spell WHERE id IN (59554);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 59554 -- ally
(59554,0,15,59558,0,0,0,0,0,0,0,0,0,0,0,0,0,'Cast 59558'),
(59554,1,15,61373,0,0,0,0,2,0,0,0,0,0,0,0,0,'Cast 61373 on Player'),
(59554,2003,0,0,0,0,32274,100,3,33048,0,0,0,0,0,0,0,'buddy Say to Player'),
(59554,2200,15,59050,0,0,31409,100,1,0,0,0,0,0,0,0,0,'Player cast 59050 on buddy');
-- switching sits
DELETE FROM dbscripts_on_spell WHERE id IN (59194,59196,59193);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(59194,0,35,5,10,0,0,0,0,0,0,0,0,0,0,0,0,'send event 5'), -- Bomber Seat
(59196,0,35,6,10,0,0,0,0,0,0,0,0,0,0,0,0,'send event 6'), -- Turret Seat
(59193,0,35,8,10,0,0,0,0,0,0,0,0,0,0,0,0,'send event 8'); -- Engineering Seat
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20974 AND 20981;
INSERT INTO dbscripts_on_relay (id, priority, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, condition_id, comments) VALUES
-- switching control scripts
(20974,1,0,14,59186,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: remove 59186'),
(20974,2,0,14,59050,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: remove 59050'),
(20974,3,0,15,59186,0,0,31408,20,1,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: Cast 59186 - switch to Bomber Seat'),
(20975,1,0,14,59186,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: remove 59186'),
(20975,2,0,14,59050,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: remove 59050'),
(20975,3,0,15,59186,0,0,31407,20,1,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: Cast 59186 - switch to Turret Seat'),
(20976,1,0,14,59186,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: remove 59186'),
(20976,2,0,14,59050,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: remove 59050'),
(20976,3,0,15,59186,0,0,31409,20,1,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: Cast 59186 - switch to Engineering Seat'),
-- 20977 - despawn check & screen effect despawn control
(20977,0,1,34,20740,0,0,0,0,2|0x08,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: allow if: Player is Dead OR NOT Within 10y of Source'),
(20977,0,99,15,61253,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: Player Self Cast 61253'),
(20977,0,110,15,60801,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: Player cast 60801'),
(20977,0,300,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: despawn'),
-- 20978 - phase & screen effect control
(20978,0,0,15,61253,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: Player Self Cast 61253'),
(20978,1,0,15,61352,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: Player Self Cast 61352'),
-- 20979 - rescue vehicle summon
(20979,0,0,15,61253,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: Player Self Cast 61253'),
(20979,0,10,15,60801,0,0,0,0,0x04,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: Player Self Cast 60801'),
-- 20980 - rescue vehicle summon control
(20980,0,0,15,60785,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: Player Cast 60785'),
(20980,1,0,25,1,0,0,0,0,6,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: SET RUN'),
(20980,0,1500,20,2,0,0,0,0,6,0,0,0,0,0,0,0,0,0,'Part of Alliance Infra-green Bomber EAI: SET waypoints'),
-- 20981 - bomber - correct orientation
(20981,1,0,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,2.615166,0,'Part of Alliance Infra-green Bomber EAI: SET orientation');
DELETE FROM spell_script_target WHERE entry IN(59780,59552,59554,61152);
INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES
(59780,1,31690,0),
(59552,1,31690,0),
(59554,1,31690,0),
(61152,1,31690,0);
-- Alliance Infra-green Bomber 31406
UPDATE creature_template SET InhabitType = 4, SpeedWalk=(3/2.5), SpeedRun=(9/7), RegenerateStats = 12, MovementType = 0 WHERE Entry = 31406;
DELETE FROM creature_movement_template WHERE entry = 31406;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(31406,1 ,7658.515,2035.384,588.2316,100,0,0),
(31406,2 ,7662.579,1997.693,563.7314,100,0,0),
(31406,3 ,7645.167,1919.107,542.7593,100,0,0),
(31406,4 ,7595.608,1855.644,490.1759,100,0,0),
(31406,5 ,7577.222,1748.011,490.1759,100,0,0),
(31406,6 ,7619.107,1669.045,490.1759,100,0,0),
(31406,7 ,7735.515,1656.183,490.1759,100,0,0),
(31406,8 ,7831.921,1674.493,490.1759,100,0,0),
(31406,9 ,7890.562,1764.971,490.1759,100,0,0),
(31406,10,7925.759,1837.941,490.1759,100,0,0),
(31406,11,7834.138,1905.058,490.1759,100,0,0),
(31406,12,7729.402,1910.233,490.1759,100,0,0),
(31406,13,7670.581,1762.531,490.1759,100,0,0),
(31406,14,7727.368,1719.142,490.1759,100,0,0),
(31406,15,7801.356,1736.31,490.1759 ,100,0,0),
(31406,16,7848.035,1819.309,490.1759,100,0,0),
(31406,17,7768.601,1877.881,543.0923,100,0,0),
(31406,18,7705.189,1969.47,604.5923 ,100,0,0),
(31406,19,7698.423,2053.091,655.2869,100,0,0),
(31406,20,7633.644,2060.156,637.4536,100,100,1);
DELETE FROM vehicle_accessory WHERE vehicle_entry = 31406;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(31406,0,31408,''),
(31406,1,31407,''),
(31406,2,31409,''),
(31406,3,32217,''),
(31406,4,32221,''),
(31406,5,32221,''),
(31406,6,32256,''),
(31406,7,32274,'');
-- Alliance Infra-green Bomber 32512
UPDATE creature_template SET InhabitType = 4, SpeedWalk=(3/2.5), SpeedRun=(9/7), RegenerateStats = 12, MovementType = 0 WHERE Entry = 32512;
DELETE FROM creature_movement_template WHERE entry = 32512;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(32512,1 ,7645.79,2049.888,613.1066 ,100,0,0),
(32512,2 ,7644.869,2050.279,613.1066,100,0,0),
(32512,3 ,7676.684,1980.115,566.2906,100,0,0),
(32512,4 ,7675.729,1894,462.7632    ,100,0,0),
(32512,5 ,7803.327,1814.411,471.6247,100,0,0),
(32512,6 ,7739.338,1719.133,442.3472,100,0,0),
(32512,7 ,7544.748,1670.58,442.3472 ,100,0,0),
(32512,8 ,7577.868,1547.693,442.3472,100,0,0),
(32512,9 ,7752.066,1493.333,442.3472,100,0,0),
(32512,10,7734.022,1387.526,442.3472,100,0,0),
(32512,11,7581.396,1440.46,442.3472 ,100,0,0),
(32512,12,7487.698,1502.656,442.3472,100,0,0),
(32512,13,7426.452,1451.848,442.3472,100,0,0),
(32512,14,7483.879,1326.283,442.3472,100,0,0),
(32512,15,7419.879,1256.524,442.3472,100,0,0),
(32512,16,7334.413,1365.117,442.3472,100,0,0),
(32512,17,7290.316,1448.909,442.3472,100,0,0),
(32512,18,7222.581,1442.68,442.3472 ,100,0,0),
(32512,19,7203.129,1343.364,432.8473,100,0,0),
(32512,20,7212.536,1211.868,415.0139,100,0,0),
(32512,21,7089.106,1180.928,421.3197,100,0,0),
(32512,22,7058.491,1314.589,416.264 ,100,0,0),
(32512,23,7143.202,1384.942,420.0976,100,0,0),
(32512,24,7231.137,1295.952,425.7917,100,0,0),
(32512,25,7292.991,1275.307,423.5973,100,0,0),
(32512,26,7408.317,1301.481,363.764 ,100,0,0),
(32512,27,7515.636,1400.436,362.1807,100,0,0),
(32512,28,7604.905,1480.221,362.1807,100,0,0),
(32512,29,7619.197,1578.812,365.0971,100,0,0),
(32512,30,7581.589,1739.414,382.5686,100,0,0),
(32512,31,7923.813,1774.126,498.4584,100,0,0),
(32512,32,7632.243,1869.759,495.2362,100,0,0),
(32512,33,7596.47,1922.976,598.3748 ,100,0,0),
(32512,34,7624.262,1977.431,598.3748,100,0,0),
(32512,35,7543.314,2041.191,638.8191,100,0,0),
(32512,36,7577.851,2083.913,638.8191,100,0,0),
(32512,37,7630.533,2056.148,638.8191,100,100,1);
DELETE FROM vehicle_accessory WHERE vehicle_entry = 32512;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(32512,0,31408,''),
(32512,1,31407,''),
(32512,2,31409,''),
(32512,3,32217,''),
(32512,4,32221,''),
(32512,5,32221,''),
(32512,6,32256,''),
(32512,7,32274,'');
-- Alliance Engineering Seat 31409
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Expansion = 0, UnitClass = 8, NpcFlags = 0, Faction = 35, RegenerateStats = 12, InhabitType = 4, VehicleTemplateId = 297, SpellList = 3140901 WHERE Entry = 31409;
DELETE FROM creature_spell_list_entry WHERE Id IN(3140901);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3140901, 'Alliance Engineering Seat 31409 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3140901);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3140901', '0', '59061', '0', '-1', '0', '0', '100', '1','0','0','0','0','Alliance Engineering Seat 31409 - Charge Shield'),
('3140901', '1', '61093', '0', '-1', '0', '0', '100', '1','0','0','0','0','Alliance Engineering Seat 31409 - Fight Fire'),
('3140901', '3', '59196', '0', '-1', '0', '0', '100', '1','0','0','0','0','Alliance Engineering Seat 31409 - Anti-Air Turret'),
('3140901', '4', '59194', '0', '-1', '0', '0', '100', '1','0','0','0','0','Alliance Engineering Seat 31409 - Bomber Bay'),
('3140901', '5', '59193', '0', '-1', '0', '0', '100', '1','0','0','0','0','Alliance Engineering Seat 31409 - Engineering');
-- Alliance Turret Seat 31407
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Expansion = 0, UnitClass = 8, NpcFlags = 0, Faction = 35, RegenerateStats = 12, InhabitType = 4, VehicleTemplateId = 292, SpellList = 3140701 WHERE Entry = 31407;
DELETE FROM creature_spell_list_entry WHERE Id IN(3140701);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3140701, 'Alliance Turret Seat 31407 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3140701);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3140701', '0', '59622', '0', '-1', '0', '0', '100', '1','0','0','0','0','Alliance Turret Seat 31407 - Anti-Air Rocket'),
('3140701', '1', '61313', '0', '-1', '0', '0', '100', '1','0','0','0','0','Alliance Turret Seat 31407 - Emergency Rocket Loader'),
('3140701', '3', '59196', '0', '-1', '0', '0', '100', '1','0','0','0','0','Alliance Turret Seat 31407 - Anti-Air Turret'),
('3140701', '4', '59194', '0', '-1', '0', '0', '100', '1','0','0','0','0','Alliance Turret Seat 31407 - Bomber Bay'),
('3140701', '5', '59193', '0', '-1', '0', '0', '100', '1','0','0','0','0','Alliance Turret Seat 31407 - Engineering');
-- Alliance Bomber Seat 31408
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Expansion = 0, UnitClass = 8, NpcFlags = 0, Faction = 35, RegenerateStats = 12, InhabitType = 4, VehicleTemplateId = 288, SpellList = 3140801 WHERE Entry = 31408;
DELETE FROM creature_spell_list_entry WHERE Id IN(3140801);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3140801, 'Alliance Bomber Seat 31408 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3140801);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3140801', '0', '59059', '0', '-1', '0', '0', '100', '1','0','0','0','0','Alliance Bomber Seat 31408 - Launch Bomb'),
('3140801', '3', '59196', '0', '-1', '0', '0', '100', '1','0','0','0','0','Alliance Bomber Seat 31408 - Anti-Air Turret'),
('3140801', '4', '59194', '0', '-1', '0', '0', '100', '1','0','0','0','0','Alliance Bomber Seat 31408 - Bomber Bay'),
('3140801', '5', '59193', '0', '-1', '0', '0', '100', '1','0','0','0','0','Alliance Bomber Seat 31408 - Engineering');
-- Shield Visual Loc Bunny 32256
-- Banner Bunny, Hanging, Alliance 32217
-- Banner Bunny, Side, Alliance 32221
-- Alliance Rescue Craft 32344
UPDATE creature_template SET Faction = 714, InhabitType = 4, SpeedWalk=(3/2.5), SpeedRun=(30/7),UnitFlags = 768 WHERE Entry = 32344;
DELETE FROM vehicle_accessory WHERE vehicle_entry = 32344;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(32344,0,32274,'Alliance Bomber Pilot on Alliance Rescue Craft');
DELETE FROM creature_movement_template WHERE entry = 32344;
INSERT INTO creature_movement_template (Entry, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId) VALUES
(32344,1,7625.936,2058.436,631.6599,100,0,0),
(32344,2,7625.936,2058.436,631.6599,100,5000,3234401);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3234401);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3234401,10,35,5,0,0,0,0,0,0,0,0,0,0,0,0,0,'Self Send EventAI 5'),
(3234401,1000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');
