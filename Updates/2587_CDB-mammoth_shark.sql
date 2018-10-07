-- Add missing spawns of NPC 12125 (Mammoth Shark)
-- Source: Project Silvermoon Database
DELETE FROM creature_addon WHERE guid BETWEEN 135121 AND 125175;
DELETE FROM creature_movement WHERE id BETWEEN 135121 AND 125175;
DELETE FROM game_event_creature WHERE guid BETWEEN 135121 AND 125175;
DELETE FROM game_event_creature_data WHERE guid BETWEEN 135121 AND 125175;
DELETE FROM creature_battleground WHERE guid BETWEEN 135121 AND 125175;
DELETE FROM creature_linking WHERE guid BETWEEN 135121 AND 125175 
OR master_guid BETWEEN 135121 AND 125175;
DELETE FROM creature WHERE guid BETWEEN 135121 AND 125175;
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(135121,12125,1,1,1,0,0,2247.58, -7314.71, -32.7716, 5.07837, 900, 900, 10, 0, 10796, 0, 0, 1),
(135122,12125,1,1,1,0,0,2141.54, -7237.98, -32.0054, 1.83467, 900, 900, 10, 0, 10796, 0, 0, 1),
(135123,12125,1,1,1,0,0,3575.07, -6375.8, -33.5823, 4.58606, 900, 900, 10, 0, 10796, 0, 0, 1),
(135124,12125,1,1,1,0,0,5107.84, -6557.01, -22.213, 5.69849, 900, 900, 10, 0, 10796, 0, 0, 1),
(135125,12125,1,1,1,0,0,2787.04, -7286.35, -13.3887, 2.88011, 900, 900, 10, 0, 10796, 0, 0, 1),
(135126,12125,1,1,1,0,0,4146.76, -6796.36, -12.9569, 1.08111, 900, 900, 10, 0, 10796, 0, 0, 1),
(135127,12125,1,1,1,0,0,4029.04, -6521.56, -11.6539, 2.93048, 900, 900, 10, 0, 10796, 0, 0, 1),
(135128,12125,1,1,1,0,0,2807.91, -7145.15, -24.6603, 1.25786, 900, 900, 10, 0, 10796, 0, 0, 1),
(135129,12125,1,1,1,0,0,5164.87, -6681.64, -30.195, 5.30724, 900, 900, 10, 0, 10796, 0, 0, 1);
