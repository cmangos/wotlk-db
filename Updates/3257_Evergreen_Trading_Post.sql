-- Evergreen Trading Post - Grizzly Hills

-- Conquest Hold Grunt 27470
DELETE FROM creature_addon WHERE guid IN (513680,513681,513682);
DELETE FROM creature_movement WHERE id IN (513680,513681,513682);
DELETE FROM game_event_creature WHERE guid IN (513680,513681,513682);
DELETE FROM game_event_creature_data WHERE guid IN (513680,513681,513682);
DELETE FROM creature_battleground WHERE guid IN (513680,513681,513682);
DELETE FROM creature_linking WHERE guid IN (513680,513681,513682)
 OR master_guid IN (513680,513681,513682);
DELETE FROM creature WHERE guid IN (513680,513681,513682);
-- missing added
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(513680,27470,571,1,1,0,0,3211.9,-1953.921,86.2806,3.141593,300,300,0,0,0,0,0,0),
(513681,27470,571,1,1,0,0,3219.947,-1959.913,91.32249,3.735005,300,300,0,0,0,0,0,0),
(513682,27470,571,1,1,0,0,3233.361,-1944.733,94.14354,3.787364,300,300,0,0,0,0,0,0);
-- addon
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 27470);
DELETE FROM creature_template_addon WHERE entry = 27470;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES
(27470,0,0,1,0,333,0,NULL);

-- Aspen Grove Trapper 29269
-- waypoints
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (524044);
DELETE FROM creature_movement WHERE id IN (524044);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(524044,1,3605.3,-2951.81,228.325,100,0,0),
(524044,2,3608.03,-2963.72,229.213,100,0,0),
(524044,3,3605.43,-2952.56,228.386,100,0,0),
(524044,4,3601.96,-2937.76,227.162,100,0,0),
(524044,5,3609.07,-2921.14,226.432,100,0,0),
(524044,6,3615.86,-2907.63,223.906,100,0,0),
(524044,7,3609.46,-2920.34,226.337,100,0,0),
(524044,8,3601.82,-2937.76,227.169,100,0,0);
