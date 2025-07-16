-- Creature (GUID: 71879) does not exist but has a record in `creature_addon`
-- Creature (GUID: 71884) does not exist but has a record in `creature_addon`
DELETE FROM creature_addon WHERE guid IN(71879,71884);

-- Table creature_movement contain path for creature guid 73307, but this creature guid does not exist. Skipping.
DELETE FROM creature_movement WHERE Id IN (73307);
