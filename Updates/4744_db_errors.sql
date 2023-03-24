-- Silithid Creeper - duplicate removed
DELETE FROM creature_addon WHERE guid=19752;
DELETE FROM creature_movement WHERE Id=19752;
DELETE FROM game_event_creature WHERE guid=19752;
DELETE FROM game_event_creature_data WHERE guid=19752;
DELETE FROM creature_battleground WHERE guid=19752;
DELETE FROM creature_linking WHERE guid=19752
 OR master_guid=19752;
DELETE FROM creature WHERE guid=19752;

-- DB errors fixed
/*
Creature (GUID: 15576) does not exist but has a record in `creature_addon`
Creature (GUID: 15703) does not exist but has a record in `creature_addon`
Creature (GUID: 15705) does not exist but has a record in `creature_addon`
Table creature_movement contain path for creature guid 15576, but this creature guid does not exist. Skipping.
*/
DELETE FROM creature_addon WHERE guid IN (15576,15703,15705);
DELETE FROM creature_movement WHERE id IN (15576);
