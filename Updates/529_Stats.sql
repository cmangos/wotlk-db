-- Update few stats for new "Pet System"
-- Gelkis Rumbler
UPDATE creature_template SET Expansion = 0, MinLevelHealth = 995 WHERE entry = 4661;
-- only summoned minions for Gelkis EarthCaller
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id = 4661);
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 4661);
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id = 4661);
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id = 4661);
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id = 4661);
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id = 4661)
OR master_guid IN (SELECT guid FROM creature WHERE id = 4661);
DELETE FROM creature WHERE id = 4661;

-- Imp Minion
UPDATE creature_template SET Expansion = 0, RangedBaseAttackTime = 2000 WHERE entry = 12922;

-- Tamed Ravager
UPDATE creature_template SET Expansion = 1, UnitClass = 1, RangedBaseAttackTime = 2000 WHERE entry = 19461;

-- Deathforge Mine
UPDATE creature_template SET Expansion = 0, UnitClass = 1, RangedBaseAttackTime = 2000 WHERE entry = 22315;
