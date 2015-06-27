 -- q.12270 'Shred the Alliance' -- Horde ver.
 -- q.12244 'Shredder Repair' -- Alliance ver.
  
-- player must be able to ride veh only during q.
DELETE FROM npc_spellclick_spells WHERE npc_entry IN (27354,27496);
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(27354, 62309, 12270, 1, 12270, 1, 0),
(27354, 62309, 12244, 1, 12244, 1, 0),
-- available with q. reward key.
(27496, 60944, 0, 0, 0, 1, 1010);

DELETE FROM conditions WHERE condition_entry = 1010;
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(1010, 2, 37500, 1);

-- spell must have a target
DELETE FROM spell_script_target WHERE entry = 48610;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(48610, 1, 27354, 0);
-- player must be unboarded from veh. - let's veh to despawn after that.
DELETE FROM dbscripts_on_spell WHERE id = 48610;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(48610,1,14,62309,0,0,0,0,0,0,0,0,0,0,0,0,''),
(48610,1,18,5,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn');

-- missing object added -- UDB free guids Reused
-- Basecamp
DELETE FROM gameobject WHERE id = 300202;
INSERT INTO gameobject (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(65865, 300202, 571, 1, 1, 4379.63, -2917.05, 309.944, 0.910624, 0, 0, 0.439743, 0.898124, 300, 0, 1),
(65866, 300202, 571, 1, 1, 3993.29, -3189.94, 282.416, 3.81135, 0, 0, 0.94445, -0.328654, 300, 0, 1);

-- Updates in Ble Sky Logging Grounds
-- Conquest Hold Skirmisher
DELETE FROM creature WHERE guid IN (102015,102016,101982,102014,102020,102013,102006,101983,102457,102463,102458);
DELETE FROM creature_addon WHERE guid IN (102015,102016,101982,102014,102020,102013,102006,101983,102457,102463,102458);
DELETE FROM creature_movement WHERE id IN (102015,102016,101982,102014,102020,102013,102006,101983,102457,102463,102458);
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid IN (102021,101980,102019,101990,102018,102017,101989,101971);
-- Broken-down Shredder
UPDATE creature SET spawntimesecs = 30 WHERE id = 27354;
UPDATE creature_template_spells SET spell1 = 48548, spell2 = 48558, spell3 = 48604, spell4 = 0, spell5 = 48610 WHERE entry = 27354;
UPDATE creature SET position_x = 4156.482, position_y = -2963.999, position_z = 283.8623, orientation = 6.091199 WHERE guid = 116888;
DELETE FROM creature WHERE guid IN (54956,54960);
DELETE FROM creature_addon WHERE guid IN (54956,54960);
DELETE FROM creature_movement WHERE id IN (54956,54960);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(54956,27354,571,1,1,0,0,4183.59,-3014.55,280.193,4.79031,25,0,0,4920,0,0,0),
(54960,27354,571,1,1,0,0,4114.21,-2891.88,279.423,2.76634,25,0,0,4920,0,0,0);
UPDATE creature_template_spells SET spell1 = 0, spell2 = 48984, spell3 = 49063, spell4 = 0, spell5 = 0, spell6 = 49025 WHERE entry = 27496;
-- only 2 available in same time
DELETE FROM pool_template WHERE entry = 25481;
INSERT INTO pool_template (entry, max_limit, description) VALUES 
(25481,2,'Grizzly Hills - Broken-down Shredder');

DELETE FROM pool_creature WHERE pool_entry = 25481;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES 
(54956,25481,0,'Grizzly Hills - Broken-down Shredder - Pool 1'),
(54960,25481,0,'Grizzly Hills - Broken-down Shredder - Pool 2'),
(116887,25481,0,'Grizzly Hills - Broken-down Shredder - Pool 3'),
(116888,25481,0,'Grizzly Hills - Broken-down Shredder - Pool 4');
