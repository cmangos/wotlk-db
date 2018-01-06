-- Beer Basted Boar Ribs reward text fix
UPDATE `quest_template` SET `OfferRewardText`='The Malt is brewed, the Boars are dead\r\nAnd before all is done and anything said\r\nWe will have to fight for first dibs\r\nOn these savory Beer Basted Boar Ribs!' WHERE `entry`=384;

-- All of these should be able to swim
-- Tide Crawler, Encrusted Tide Crawler
-- Young Reef Crawler, Reef Crawler
-- Raging Reef Crawler, Corrupted Surf Crawler
UPDATE creature_template SET InhabitType=3 WHERE entry IN (2232, 2233, 2234, 2235, 2236, 3228);

-- Remove static gossip for Scooty, he has a menu.
DELETE FROM `npc_gossip` WHERE `npc_guid`=2;

-- Gossip menu for Bernard Gump
UPDATE `creature_template` SET `GossipMenuId`=703 WHERE `entry`=1302;
