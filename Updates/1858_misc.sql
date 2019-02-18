-- Random fixes in East of Howling Fjord

-- Bat Handler Camille
-- taxi should target player not npc
UPDATE dbscripts_on_gossip SET data_flags = 6 WHERE id = 889400;

-- Captain Harker - gossip
UPDATE creature_template SET GossipMenuId = 8896 WHERE entry = 24037;
DELETE FROM gossip_menu WHERE entry = 8896;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES 
(8896, 11671, 0, 0);

-- Forsaken Deckhand 23982
-- some misssing spawns added
DELETE FROM creature_addon WHERE guid BETWEEN 5711916 AND 5711921;
DELETE FROM creature_movement WHERE id BETWEEN 5711916 AND 5711921;
DELETE FROM creature_linking WHERE guid BETWEEN 5711916 AND 5711921;
DELETE FROM creature_linking WHERE master_guid BETWEEN 5711916 AND 5711921;
DELETE FROM creature WHERE guid BETWEEN 5711916 AND 5711921;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(5711916,23982,571,1,1,0,0,1694.02,-6480.01,20.5543,4.14604,300,300,0,0,20958,0,0,0),
(5711917,23982,571,1,1,0,0,1652.53,-6510.12,18.2128,1.00838,300,300,0,0,20958,0,0,0),
(5711918,23982,571,1,1,0,0,1658.48,-6516.73,18.2906,0.570125,300,300,0,0,20958,0,0,0),
(5711919,23982,571,1,1,0,0,1653.05,-6516.02,19.0298,0.628186,300,300,0,0,20958,0,0,0),
(5711920,23982,571,1,1,0,0,1681.11,-6489.46,15.3391,3.8749,300,300,0,0,20958,0,0,0),
(5711921,23982,571,1,1,0,0,1642.8,-6496.24,18.8211,2.98911,300,300,0,0,20958,0,0,0);
-- individual addons
DELETE FROM creature_addon WHERE guid BETWEEN 5711916 AND 5711921;
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote,moveflags,auras) VALUES
(5711916,0,0,1,0,333,0,NULL),
(5711917,0,0,1,0,333,0,NULL),
(5711918,0,0,1,0,333,0,NULL),
(5711919,0,0,1,0,333,0,NULL),
(5711920,0,0,1,0,333,0,NULL),
(5711921,0,0,1,0,333,0,NULL);

-- North Fleet Marine 23983
-- some misssing spawns added
DELETE FROM creature_addon WHERE guid BETWEEN 5711922 AND 5711928;
DELETE FROM creature_movement WHERE id BETWEEN 5711922 AND 5711928;
DELETE FROM creature_linking WHERE guid BETWEEN 5711922 AND 5711928;
DELETE FROM creature_linking WHERE master_guid BETWEEN 5711922 AND 5711928;
DELETE FROM creature WHERE guid BETWEEN 5711922 AND 5711928;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(5711922,23983,571,1,1,0,0,1692.34,-6478.03,4.4848,3.62963,300,300,5,0,7984,0,0,1),
(5711923,23983,571,1,1,0,0,1678.42,-6488.43,0.415188,2.7971,300,300,5,0,7984,0,0,1),
(5711924,23983,571,1,1,0,0,1672.69,-6500.45,0.412278,5.4804,300,300,5,0,7984,0,0,1),
(5711925,23983,571,1,1,0,0,1656.86,-6508.38,0.412278,3.29699,300,300,5,0,7984,0,0,1),
(5711926,23983,571,1,1,0,0,1650.42,-6518.58,0.800615,0.762502,300,300,5,0,7984,0,0,1),
(5711927,23983,571,1,1,0,0,1676.95,-6485.55,7.74204,1.68927,300,300,5,0,7984,0,0,1),
(5711928,23983,571,1,1,0,0,1685.12,-6493.74,7.74294,4.04939,300,300,5,0,7984,0,0,1);
