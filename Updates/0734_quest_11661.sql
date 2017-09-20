-- q.11661 'Orabus the Helmsman'
DELETE FROM dbscripts_on_event WHERE id = 16889;
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(16889,0,10,27939,60000,0,0,0,1,0,0,0,2839.498,7150.948,-0.419952,5.95703,'summon');
-- Kvaldir Crewman
UPDATE creature_template SET MinLevel = 68, MaxLevel = 69, FactionAlliance = 14, FactionHorde = 14, UnitFlags = 768, Expansion = 2, MinLevelHealth = 6986, MaxLevelHealth = 7984, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 298, MinMeleeDmg = 250.7, MaxMeleeDmg = 385 WHERE entry IN (32577,32578,32579,32580);
-- Orabus the Helmsman
UPDATE creature_template SET MinLevel = 71, MaxLevel = 71, FactionAlliance = 14, FactionHorde = 14, UnitFlags = 768, EquipmentTemplateId = 351, Expansion = 2, UnitClass = 2, Expansion = 2, MinLevelHealth = 9291, MaxLevelHealth = 9291, MinLevelMana = 3231, MaxLevelMana = 3231, Armor = 7007, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 290, MinMeleeDmg = 296, MaxMeleeDmg = 423.6 WHERE entry = 32576;
--  vehicle - is this correct?
DELETE FROM vehicle_accessory WHERE vehicle_entry = 27939;
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(27939,1,32577,'Kvaldir Crewman'),
(27939,2,32578,'Kvaldir Crewman'),
(27939,3,32579,'Kvaldir Crewman'),
(27939,4,32576,'Orabus the Helmsman'),
(27939,5,32580,'Kvaldir Crewman');
-- The Helmsman's Ship
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, Expansion = 2, MinLevelHealth = 8982, MaxLevelHealth = 8982, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 304, MinMeleeDmg = 291, MaxMeleeDmg = 415, InhabitType = 4, UnitFlags = 33554432, ExtraFlags = 4096, MovementType = 2, VehicleTemplateId = 311 WHERE entry = 27939;
DELETE FROM creature_movement_template WHERE entry = 27939;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(27939,1,2839.5,7150.95,-1.60829,0,0,100),
(27939,2,2839.85,7152.14,-0.422299,0,0,100),
(27939,3,2811.38,7094.44,0.181869,0,0,100),
(27939,4,2812.33,7051.67,0.126313,600000,2793901,100);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2793901); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- unboarding one npc.. will unboard all of them and make them despawn. This shouldnt happen
-- (2793901,3,14,46598,0,32577,100,7,0,0,0,0,0,0,0,0,''), -- this part doesnt work (we need core vehicle system updated for NPC's)

-- ################################################## temp ######################################
-- will be removed when correct solution is available.
(2793901,1,10,32577,600000,0,0,0,1,0,0,0,2812.33,7051.67,0.126313,100,'summon');
UPDATE creature_template SET MovementType = 2 WHERE entry IN (32577,32578,32579,32580,32576);
DELETE FROM creature_movement_template WHERE entry IN (32577,32578,32579,32580,32576);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
-- #32577
(32577,1,2812.33,7051.67,0.126313,1000,3257701,100),
(32577,2,2793.14,7015.81,5.14,600000,0,100),
-- #32578
(32578,1,2812.33,7051.67,0.126313,1000,3257701,100),
(32578,2,2793.14,7015.81,5.14,600000,0,100),
-- #32579
(32579,1,2812.33,7051.67,0.126313,1000,3257701,100),
(32579,2,2793.14,7015.81,5.14,600000,0,100),
-- #32580
(32580,1,2812.33,7051.67,0.126313,1000,3257701,100),
(32580,2,2793.14,7015.81,5.14,600000,0,100),
-- #32576
(32576,1,2812.33,7051.67,0.126313,1000,3257601,100),
(32576,2,2793.14,7015.81,5.14,600000,0,100);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3257701,3257601); 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3257701,0,22,14,0x01 | 0x10 | 0x20,0,0,0,0,0,0,0,0,0,0,0,'temp faction'),
(3257601,1,22,14,0x01 | 0x10 | 0x20,0,0,0,0,0,0,0,0,0,0,0,'temp faction');
DELETE FROM dbscripts_on_creature_death WHERE id IN (32577,32578,32579,32580); 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(32577,1,10,32578,600000,0,0,0,1,0,0,0,2812.33,7051.67,0.126313,100,'summon'),
(32578,1,10,32579,600000,0,0,0,1,0,0,0,2812.33,7051.67,0.126313,100,'summon'),
(32579,1,10,32580,600000,0,0,0,1,0,0,0,2812.33,7051.67,0.126313,100,'summon'),
(32580,1,10,32576,600000,0,0,0,1,0,0,0,2812.33,7051.67,0.126313,100,'summon BOSS');
-- ################################################## temp ######################################