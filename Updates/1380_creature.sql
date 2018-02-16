-- Delete all Wyrmcult Broodling. They are summoned by Wyrmcult Poacher c.21809 s.37547  
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 21811);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 21811);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 21811);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 21811);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 21811);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 21811)
 OR master_guid IN (SELECT guid FROM creature WHERE id = 21811);
DELETE FROM creature WHERE id = 21811;
