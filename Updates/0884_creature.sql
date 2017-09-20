-- Old Hillsbrad Foothills

-- Thrall shouldn't have any weapon in prison
-- also gossip is created by sd2
UPDATE creature_template SET EquipmentTemplateid = 0, GossipMenuId = 0 WHERE Entry = 17876;
