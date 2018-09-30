-- q.12791 'The Magical Kingdom of Dalaran'

-- Fixed: npc should cast teleport on player, not himself.
UPDATE dbscripts_on_gossip SET data_flags = 2 WHERE id = 9511;
