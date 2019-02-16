-- q.11432 'Sleeping Giants'
-- becomes available after q.11231 'Of Keys and Cages'
UPDATE quest_template SET PrevQuestId = 11231 WHERE entry = 11432;

-- Duplicate removed
DELETE FROM creature WHERE guid = 104343;
DELETE FROM creature_addon WHERE guid = 104343;
DELETE FROM creature_movement WHERE id=104343;
DELETE FROM game_event_creature WHERE guid = 104343;
DELETE FROM game_event_creature_data WHERE guid = 104343;
DELETE FROM creature_battleground WHERE guid = 104343;
DELETE FROM creature_linking WHERE guid = 104343 
OR master_guid = 104343;
