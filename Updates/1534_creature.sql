-- delete static spawns of 2676 summoned by 4078,7979  
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 2676);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 2676);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 2676);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 2676);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 2676);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 2676)
OR master_guid IN (SELECT guid FROM creature WHERE id = 2676);
DELETE FROM creature WHERE id = 2676;
