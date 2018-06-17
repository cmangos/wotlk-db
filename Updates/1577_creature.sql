-- Illyanna Ravenoak
-- duplicate removed
DELETE FROM creature WHERE guid=138112;
DELETE FROM creature_addon WHERE guid=138112;
DELETE FROM creature_movement WHERE id=138112;
DELETE FROM game_event_creature WHERE guid=138112;
DELETE FROM game_event_creature_data WHERE guid=138112;
DELETE FROM creature_battleground WHERE guid=138112;
DELETE FROM creature_linking WHERE guid=138112 
OR master_guid=138112;
