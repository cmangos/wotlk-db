-- Kor <Stable Master> 29251
-- static spawn removed - appears only if area contoled by Horde
DELETE FROM creature_addon WHERE guid=524016;
DELETE FROM creature_movement WHERE id=524016;
DELETE FROM game_event_creature WHERE guid=524016;
DELETE FROM game_event_creature_data WHERE guid=524016;
DELETE FROM creature_battleground WHERE guid=524016;
DELETE FROM creature_linking WHERE guid=524016
OR master_guid=524016;
DELETE FROM creature WHERE guid=524016;
