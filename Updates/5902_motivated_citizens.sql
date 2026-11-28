-- Evidence found: Motivated Citizens and Troll Volunteers summoned by a player are immune to players and NPCs.
-- Immune to players, they do not take their owner's PvP state either.
UPDATE `creature_template` SET `UnitFlags` = `UnitFlags`|768 WHERE `entry` IN (39466,39624,40260,40264); -- IMMUNE_TO_PC, IMMUNE_TO_NPC
