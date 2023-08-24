-- Stormwind City Guard 68
-- 2 missing added
DELETE FROM creature_addon WHERE guid IN (247,282);
DELETE FROM creature_movement WHERE id IN (247,282);
DELETE FROM game_event_creature WHERE guid IN (247,282);
DELETE FROM game_event_creature_data WHERE guid IN (247,282);
DELETE FROM creature_battleground WHERE guid IN (247,282);
DELETE FROM creature_linking WHERE guid IN (247,282);
DELETE FROM creature where guid IN (247,282);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(247,68,0,1,1,-8963.743,501.61353,96.754005,2.175058,300,300,0,0),
(282,68,0,1,1,-8975.589,515.4975,96.754,5.2648,300,300,0,0);
