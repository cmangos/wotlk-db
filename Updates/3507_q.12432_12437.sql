-- q.12437 'Riding the Red Rocket' - Alliance
-- q.12432 'Riding the Red Rocket' - Horde
-- allow Player to collect req item
UPDATE quest_template SET ReqSourceId4 = 37664, ReqSourceCount4 = 1 WHERE entry IN (12437,12432);

-- Rocket Propelled Warhead 27593
-- missing added
DELETE FROM creature_addon WHERE guid BETWEEN 514880 AND 514883;
DELETE FROM creature_movement WHERE id BETWEEN 514880 AND 514883;
DELETE FROM game_event_creature WHERE guid BETWEEN 514880 AND 514883;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 514880 AND 514883;
DELETE FROM creature_battleground WHERE guid BETWEEN 514880 AND 514883;
DELETE FROM creature_linking WHERE guid BETWEEN 514880 AND 514883
OR master_guid BETWEEN 514880 AND 514883;
DELETE FROM creature WHERE guid BETWEEN 514880 AND 514883;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(514880,27593,571,1,1,0,0,2397.403,-1826.75,-1.5,2.722714,30,30,0,0,0,0,0,0),
(514881,27593,571,1,1,0,0,2394.924,-1832.189,-1.5,2.687807,30,30,0,0,0,0,0,0),
(514882,27593,571,1,1,0,0,2396.13,-1829.495,-1.5,2.75762,30,30,0,0,0,0,0,0),
(514883,27593,571,1,1,0,0,2398.623,-1824.141,-1.5,2.740167,30,30,0,0,0,0,0,0);
UPDATE creature_template SET UnitFlags = 16384, Inhabittype = 4, SpeedWalk=30/2.5,SpeedRun=30/7 WHERE entry = 27593;
DELETE FROM dbscripts_on_spell WHERE id IN (49107,49250);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(49107,0,15,49181,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(49250,1,14,49177,0,0,0,0,6,0,0,0,0,0,0,0,0,'Remove aura from player Player'),
(49250,5,14,49181,0,0,0,0,6,0,0,0,0,0,0,0,0,'Remove aura from player Player'),
(49250,10,15,46979,8,0,0,0,6,0,0,0,0,0,0,0,0,'insta cast on Player'),
(49250,1000,15,66154,8,0,0,0,6,0,0,0,0,0,0,0,0,'insta cast on Player');
DELETE FROM npc_spellclick_spells WHERE npc_entry = 27593;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, condition_id) VALUES
(27593,49177,0,0,0,1,20293); -- only if player has quest and source item
DELETE FROM conditions WHERE condition_entry BETWEEN 20289 AND 20293;
INSERT INTO conditions (condition_entry,type,value1,value2,value3,value4,flags) VALUE
(20289,9,12437,0,0,0,0), -- q.12437 'Riding the Red Rocket' active
(20290,9,12432,0,0,0,0), -- q.12432 'Riding the Red Rocket' active
(20291,-2,20290,20289,0,0,0),
(20292,2,37664,1,0,0,0), -- must have this item
(20293,-1,20292,20292,0,0,0);
-- spell target
DELETE FROM spell_script_target WHERE entry = 49332;
INSERT INTO spell_script_target (entry,type,targetentry,inverseEffectMask) VALUES
(49332,1,27688,0),
(49332,1,27702,0);

-- Alliance Lumberboat 27688
-- Alliance Lumberboat Explosions 27689
-- Horde Lumberboat 27702
UPDATE creature SET spawntimesecsmin = 20, spawntimesecsmax = 20, spawndist = 0, MovementType = 0 WHERE id IN (27688,27689,27702);
