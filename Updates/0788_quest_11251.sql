-- q.11251 'Fresh Legs'
UPDATE quest_template SET PrevQuestId = 11228 WHERE entry = 11251;
 
-- Totems removed
-- They're part of Thoralius the Wise Script
DELETE FROM creature WHERE guid IN (88758,88761);
DELETE FROM creature_addon WHERE guid IN (88758,88761);
DELETE FROM creature_movement WHERE id IN (88758,88761);
DELETE FROM game_event_creature WHERE guid IN (88758,88761);
DELETE FROM game_event_creature_data WHERE guid IN (88758,88761);
DELETE FROM creature_battleground WHERE guid IN (88758,88761);
DELETE FROM creature_linking WHERE guid IN (88758,88761) OR master_guid IN (88758,88761);
