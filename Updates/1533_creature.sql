-- Remove Static Spawns for s.3612 Name: Bloodscalp Pet
-- s.3612 Name: Bloodscalp Pet
-- guid 1947,1665,1312,1237,1115,1070
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 698);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 698);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 698);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 698);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 698);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 698)
OR master_guid IN (SELECT guid FROM creature WHERE id = 698);
DELETE FROM creature WHERE id = 698;
