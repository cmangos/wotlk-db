-- Crew of 'Walker of Waves'
-- Core currently doent support npcs on transports ...
-- Duplicates
DELETE FROM creature WHERE guid IN (101943,101725);
DELETE FROM creature_addon WHERE guid IN (101943,101725);
DELETE FROM creature_movement WHERE id IN (101943,101725);
DELETE FROM game_event_creature WHERE guid IN (101943,101725);
DELETE FROM game_event_creature_data WHERE guid IN (101943,101725);
DELETE FROM creature_battleground WHERE guid IN (101943,101725);
DELETE FROM creature_linking WHERE guid IN (101943,101725)
 OR master_guid IN (101943,101725);

-- Temp. placed in Unu'pe docs.
-- Movement corrected
UPDATE creature SET spawndist = 0, MovementType = 0 WHERE guid IN (101724,113675,101942);

-- Moved to WoTLK Range 571x
UPDATE creature SET guid = 5712534 WHERE guid = 101724;
UPDATE creature SET guid = 5712535 WHERE guid = 113675;
UPDATE creature SET guid = 5712536 WHERE guid = 101942;
