

-- creature template fixes
UPDATE creature_template SET UnitFlags=256, Faction=1735 WHERE entry=35003;
UPDATE creature_template SET MinLevelHealth=232470, MaxLevelHealth=232470, Faction=2132, MinLevel=80, MaxLevel=80, EquipmentTemplateId=909 WHERE entry=36164;

-- Captain ground movement
DELETE FROM `creature_movement_template` WHERE entry IN (35003,34960);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
(35003,0,1,825.6667, -994.0052, 134.35689,10000,3500301,3.403392),
(34960,0,1,825.6667, -994.0052, 134.35689,10000,3500301,3.403392);

-- Captain scrips
DELETE FROM dbscripts_on_creature_movement WHERE id = 3500301;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,dataint,comments) VALUES
(3500301,0,15,12980,0,'Gunship captain - Cast Simple Teleport'),
(3500301,3000,0,0,2000020741,'Gunship captain - Yell'),
(3500301,4000,15,51347,0,'Gunship captain - Cast Teleport Visual Only'),
(3500301,5000,18,0,0,'Gunship captain - Despawn');

DELETE FROM dbscript_string WHERE entry=2000020741;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000020741, 'All aboard the gunship! Man the guns!', 0, 1, 0, 0, 'Gunship Captain - yell on spawn');

-- spell script targets
DELETE FROM spell_script_target WHERE entry IN (66630,66637);
INSERT INTO spell_script_target VALUES
-- horde ship teleport
(66637,3,6420005,0),
-- alliance ship teleport
(66630,3,6410005,0);

-- Docks Boats
UPDATE creature_template SET MinLevel=80, MaxLevel=80, UnitFlags=UnitFlags|33570816, MinLevelHealth=5342, MaxLevelHealth=5342, Faction=35, InhabitType=7 WHERE entry IN (35336,35335);
UPDATE creature_template SET MinLevel=60, MaxLevel=60, UnitFlags=UnitFlags|33555200, MinLevelHealth=4120, MaxLevelHealth=4120, Faction=114 WHERE entry=35339;
UPDATE creature_template SET MovementType= 2 WHERE entry IN (35336,35335);

-- Vehicle accssory
DELETE FROM vehicle_accessory WHERE vehicle_entry IN (35336,35335);
INSERT INTO vehicle_accessory (vehicle_entry, seat, accessory_entry, comment) VALUES
(35336,0,35339, 'Horde Boat - Boat Fire'),
(35336,1,35339, 'Horde Boat - Boat Fire'),
(35336,2,35339, 'Horde Boat - Boat Fire'),
(35336,3,35339, 'Horde Boat - Boat Fire'),
(35336,4,35339, 'Horde Boat - Boat Fire'),
(35335,0,35339, 'Alliance Boat - Boat Fire'),
(35335,1,35339, 'Alliance Boat - Boat Fire'),
(35335,2,35339, 'Alliance Boat - Boat Fire'),
(35335,3,35339, 'Alliance Boat - Boat Fire'),
(35335,4,35339, 'Alliance Boat - Boat Fire');

-- Boat Waypoint movement
DELETE FROM `creature_movement_template` WHERE entry IN (35336,35335);
INSERT INTO `creature_movement_template` (`entry`, `pathId`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES
-- Horde boat 35336
(35336,0,1,806.8698, 32.90625, -0.5591627,1000,5,100),
(35336,0,2,806.8698, 31.90625, -0.5591627,0,0,100),
(35336,0,3,805.1719, -46.64757, -0.013629,0,0,100),
(35336,0,4,802.78125, -88.91493, 0.093314,0,0,100),
(35336,0,5,798.07465, -148.23438, 0.223103,0,0,100),
(35336,0,6,795.7066, -229.32466, 0.007514,0,0,100),
(35336,0,7,793.33856, -232.55034, -0.07839596,1000,3,4.694868),
-- Alliance boat 35335
(35335,0,1,806.8698, 32.90625, -0.5591627,1000,5,100),
(35335,0,2,806.8698, 31.90625, -0.5591627,0,0,100),
(35335,0,3,805.1719, -46.64757, -0.013629,0,0,100),
(35335,0,4,802.78125, -88.91493, 0.093314,0,0,100),
(35335,0,5,798.07465, -148.23438, 0.223103,0,0,100),
(35335,0,6,795.7066, -229.32466, 0.007514,0,0,100),
(35335,0,7,793.33856, -232.55034, -0.07839596,1000,3,4.694868);
