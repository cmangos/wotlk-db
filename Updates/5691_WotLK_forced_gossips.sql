-- Wotlk ONLY
-- Foced Gossip moved to static flags.
UPDATE creature_template SET CreatureTypeFlags = CreatureTypeFlags&~134217728, StaticFlags4 = StaticFlags4|524288 WHERE CreatureTypeFlags = CreatureTypeFlags|134217728;
