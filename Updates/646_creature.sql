-- Some cratures were removed from game with revamping in patch 2.1

-- Trigul - 22174
-- When the Blade's Edge Plateau received its overhaul in patch 2.1, Trigul was removed.

-- Lightning Wasp - 22182
-- As of patch 2.4 none can be found in game
 
-- Fear Whisperer - 22201
-- The fear whisperers were removed from Forge Camp: Terror when the Blade's Edge plateaus were revamped for 2.1. 

-- Nightmare Imp - 22202
-- Before 2.1 came out there were more demon types at Forge Camp: Terror. Now there's just the elementals, the abyssals and the fear fiends.

-- Felstorm Corruptor - 22217
-- The Felstorm Corruptors were removed in 2.1, when the Blade's Edge plateaus were turned into questing areas.

-- Insidious Familiar - 22218
-- No longer in the game, removed along with all burning legion affliated demons from Crystal Spine in 2.1

-- Let's remove them all
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (22174,22182,22201,22202,22217,22218,22221));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (22174,22182,22201,22202,22217,22218,22221));
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id IN (22174,22182,22201,22202,22217,22218,22221));
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id IN (22174,22182,22201,22202,22217,22218,22221));
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id IN (22174,22182,22201,22202,22217,22218,22221));
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id IN (22174,22182,22201,22202,22217,22218,22221)) 
OR master_guid IN (SELECT guid FROM creature WHERE id IN (22174,22182,22201,22202,22217,22218,22221));
DELETE FROM creature WHERE id IN (22174,22182,22201,22202,22217,22218,22221);
