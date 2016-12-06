-- Silvermoon Dragonhawk - missing added - WoTLKDB free guids reused
DELETE FROM creature WHERE guid IN (129168,129169,129170,129171);
DELETE FROM creature_addon WHERE guid IN (129168,129169,129170,129171);
DELETE FROM creature_movement WHERE id IN (129168,129169,129170,129171);
DELETE FROM game_event_creature WHERE guid IN (129168,129169,129170,129171);
DELETE FROM game_event_creature_data WHERE guid IN (129168,129169,129170,129171);
DELETE FROM creature_battleground WHERE guid IN (129168,129169,129170,129171);
DELETE FROM creature_linking WHERE guid IN (129168,129169,129170,129171) OR master_guid IN (129168,129169,129170,129171);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
-- Eversong Woods
(129168,27946,530,1,1,0,0,9377.618,-7169.038,9.17141,3.106686,300,0,0,17742,0,0,0),
(129169,27946,530,1,1,0,0,9378.314,-7162.116,8.988449,3.141593,300,0,0,17742,0,0,0),
-- Ghostlands
(129170,27946,530,1,1,0,0,7591.52,-6777.482,86.86617,4.310963,300,0,0,17742,0,0,0),
(129171,27946,530,1,1,0,0,7600.588,-6780.264,86.06586,4.258604,300,0,0,17742,0,0,0);

-- Sathein
-- Flags corrected (now will display correct icon)
UPDATE creature_template SET NpcFlags = 83, UnitFlags = 512 WHERE entry = 16278;
