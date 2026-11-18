-- 2 duplicates removed
DELETE FROM creature WHERE guid IN (20534,18562);
DELETE FROM creature_addon WHERE guid IN (20534,18562);
DELETE FROM creature_movement WHERE Id IN (20534,18562);
DELETE FROM game_event_creature WHERE guid IN (20534,18562);
DELETE FROM game_event_creature_data WHERE guid IN (20534,18562);
DELETE FROM creature_battleground WHERE guid IN (20534,18562);
DELETE FROM creature_linking WHERE guid IN (20534,18562)
 OR master_guid IN (20534,18562);
