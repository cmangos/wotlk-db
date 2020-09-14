-- q.12232 'Bombard the Ballistae'

-- Duplicate
DELETE FROM creature WHERE guid=516798;
DELETE FROM creature_addon WHERE guid=516798;
DELETE FROM creature_movement WHERE id=516798;
DELETE FROM game_event_creature WHERE guid=516798;
DELETE FROM game_event_creature_data WHERE guid=516798;
DELETE FROM creature_battleground WHERE guid=516798;
DELETE FROM creature_linking WHERE guid=516798
 OR master_guid=516798;

-- New Hearthglen Ballista 188673
DELETE FROM dbscripts_on_go_template_use WHERE id = 188673;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(188673,10,40,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'gobject despawn');
DELETE FROM dbscripts_on_spell WHERE id = 48347;
INSERT INTO dbscripts_on_spell (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(48347,0,1,15,48351,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: Bombard the Ballistae: Ballista Bow'),
(48347,0,2,15,48352,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: Bombard the Ballistae: Ballista Frame'),
(48347,10,1,15,48353,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: Bombard the Ballistae: Ballista Missile'),
(48347,10,2,15,48354,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: Bombard the Ballistae: Ballista Wheel'),
(48347,100,0,15,52687,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast: Bombard the Ballistae: Knockback'),
(48347,500,0,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp self');
-- effect 1 - target
DELETE FROM spell_script_target WHERE entry IN(48347);
INSERT INTO spell_script_target VALUES
(48347,0,188673,5);
-- Bombard the Ballistae Kill Credit Bunny 27331
-- missing added
DELETE FROM creature_addon WHERE guid IN (517399,517400,517403,517405);
DELETE FROM creature_movement WHERE id IN (517399,517400,517403,517405);
DELETE FROM game_event_creature WHERE guid IN (517399,517400,517403,517405);
DELETE FROM game_event_creature_data WHERE guid IN (517399,517400,517403,517405);
DELETE FROM creature_battleground WHERE guid IN (517399,517400,517403,517405);
DELETE FROM creature_linking WHERE guid IN (517399,517400,517403,517405)
 OR master_guid IN (517399,517400,517403,517405);
DELETE FROM creature WHERE guid IN (517399,517400,517403,517405);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(517399,27331,571,1,1,0,0,2693.775,-235.3668,141.8351,0,60,60,0,0,0,0,0,0),
(517400,27331,571,1,1,0,0,2618.044,-509.1679,6.737049,0,60,60,0,0,0,0,0,0),
(517403,27331,571,1,1,0,0,2518.239,-297.0323,1.412574,0,60,60,0,0,0,0,0,0),
(517405,27331,571,1,1,0,0,2597.691,-213.5369,1.997936,0,60,60,0,0,0,0,0,0);
-- respawntime corrected
UPDATE creature SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 27331;
UPDATE gameobject SET spawntimesecsmin = 60, spawntimesecsmax = 60, animprogress = 255 WHERE id = 188673;
UPDATE creature_template SET UnitFlags = 33555200 WHERE entry = 27331;
