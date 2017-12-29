-- q.11594 'Put Them to Rest'
-- becomes available after q.11591 'Report to Steeljaw's Caravan' finished
UPDATE quest_template SET PrevQuestId = 11591 WHERE entry = 11594;

-- Grunt Ragefist
UPDATE creature SET position_x = 4139.293945, position_y = 5778.096191, position_z = 59.660202, orientation = 3.171483, spawndist = 0, MovementType = 2 WHERE guid = 28688;
UPDATE creature_template SET MovementType = 2 WHERE entry = 25336;
DELETE FROM creature_movement_template WHERE entry = 25336;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(25336,1,4156.77,5780.73,61.1191,40000,2533601,2.146755),
(25336,2,4139.29,5778.1,59.6602,40000,2533601,3.17148);
DELETE FROM dbscripts_on_creature_movement WHERE id = 2533601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2533601,2,1,69,0,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2533601,38,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Warsong Caravan Guard
-- missing added - WoTLK free guids reused
DELETE FROM creature_addon WHERE guid BETWEEN 139817 AND 139819;
DELETE FROM creature_movement WHERE id BETWEEN 139817 AND 139819;
DELETE FROM game_event_creature WHERE guid BETWEEN 139817 AND 139819;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 139817 AND 139819;
DELETE FROM creature_battleground WHERE guid BETWEEN 139817 AND 139819;
DELETE FROM creature_linking WHERE guid BETWEEN 139817 AND 139819
OR master_guid BETWEEN 139817 AND 139819;
DELETE FROM creature WHERE guid BETWEEN 139817 AND 139819;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(139817,25338,571,1,1,0,0,4141.4,5784.32,60.6841,2.87382,300,300,0,0,8982,0,0,0),
(139818,25338,571,1,1,0,0,4144.57,5786.2,61.0521,2.77565,300,300,0,0,8982,0,0,0),
(139819,25338,571,1,1,0,0,4141.77,5781.32,60.185,2.58715,300,300,0,0,8982,0,0,0);
-- lined to c.25335
DELETE FROM creature_linking WHERE guid IN (139817, 139818, 139819);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(139817, 85249, 1+2+128+512+1024+8192), -- FLAG_AGGRO_ON_AGGRO, FLAG_TO_AGGRO_ON_AGGRO, FLAG_RESPAWN_ON_RESPAWN, FLAG_CANT_SPAWN_IF_BOSS_DEAD, FLAG_DESPAWN_ON_DESPAWN
(139818, 85249, 1+2+128+512+1024+8192),
(139819, 85249, 1+2+128+512+1024+8192);
