-- Wrongly spawned creatures removed (duplicates)
DELETE FROM creature WHERE guid IN (95022,122709,122710);
DELETE FROM creature_addon WHERE guid IN (95022,122709,122710);
DELETE FROM creature_movement WHERE id IN (95022,122709,122710);
DELETE FROM game_event_creature WHERE guid IN (95022,122709,122710);
DELETE FROM game_event_creature_data WHERE guid IN (95022,122709,122710);
DELETE FROM creature_battleground WHERE guid IN (95022,122709,122710);
DELETE FROM creature_linking WHERE guid IN (95022,122709,122710) 
OR master_guid IN (95022,122709,122710);

-- wrong position_y - corrected
UPDATE creature SET position_y = -6381.79 WHERE guid = 82822;
UPDATE creature SET position_y = -6395.32 WHERE guid = 82826;
UPDATE creature SET position_y = -6343.51 WHERE guid = 82827;
