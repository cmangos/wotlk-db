-- Demon Trainers
-- (..)Patch notes 3.0.2: "All demon abilities and spells will automatically be learned as pets gain levels. Demon Master trainers will be removed."
-- NPCs are no longer a demon (pet) trainer.
-- Gossip to rename pets name was added in 4.x.x

-- Alliance
-- Dane Winslow
UPDATE creature_template SET NpcFlags = 0, GossipMenuId = 0 WHERE Entry = 6373;
-- Cylina Darkheart
UPDATE creature_template SET NpcFlags = 0, GossipMenuId = 0 WHERE Entry = 6374;
-- Spackle Thornberry
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 5520;
-- Wren Darkspring
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 6376;
-- Dannie Fizzwizzle
UPDATE creature_template SET NpcFlags = 0, GossipMenuId = 0 WHERE Entry = 6328;
-- Jubahl Corpseseeker
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 6382;

-- Horde
-- Kayla Smithe
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 5749;
-- Gina Lang
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 5750;
-- Martha Strain
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 5753;
-- Hraug
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 12776;
-- Kitha
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 6027;
-- Kurgul
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 5815;
-- Yasmine Teli'Larien
UPDATE creature_template SET NpcFlags = 0, GossipMenuId = 0 WHERE Entry = 15494;
-- Daestra
UPDATE creature_template SET NpcFlags = 0, GossipMenuId = 0 WHERE Entry = 16267;
-- Torian
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 16649;
-- Greshka
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 12807;

-- Neutral
-- Matero Zeshuwal
UPDATE creature_template SET NpcFlags = 2, GossipMenuId = 0 WHERE Entry = 23535;
