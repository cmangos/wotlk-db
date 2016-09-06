-- Spirit Healer

-- missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (107454,107455);
DELETE FROM creature_addon WHERE guid IN (107454,107455);
DELETE FROM creature_movement WHERE id IN (107454,107455);
DELETE FROM game_event_creature WHERE guid IN (107454,107455);
DELETE FROM game_event_creature_data WHERE guid IN (107454,107455);
DELETE FROM creature_battleground WHERE guid IN (107454,107455);
DELETE FROM creature_linking WHERE guid IN (107454,107455)
 OR master_guid IN (107454,107455);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(107454,6491,571,1,1,0,0,2002.742,5938.099,37.18986,5.934119,300,0,0,4120,0,0,0),
(107455,6491,571,1,1,0,0,2836.37,5979.3,114.197,4.88762,300,0,0,4120,0,0,0);

-- correct aura added
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 6491);
UPDATE creature_template_addon SET bytes1 = 0, auras = 10848 WHERE entry = 6491;

-- possition corrected
UPDATE creature SET position_x = 2484.582, position_y = 5288.941, position_z = 32.67112, orientation = 3.089233 WHERE guid = 125667;
