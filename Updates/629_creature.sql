-- Fel Imp
-- stats
UPDATE creature_template SET Expansion = 0, MinLevelHealth = 966, MaxLevelHealth = 993, RangedBaseAttackTime = 2000 WHERE entry = 21135;

-- also they're 'Wrath Priestess' Ptes only
-- static spawns removed
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 21135);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 21135);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 21135);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 21135);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 21135);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 21135) OR master_guid IN (SELECT guid FROM creature WHERE id = 21135); 
DELETE FROM creature WHERE id = 21135;
