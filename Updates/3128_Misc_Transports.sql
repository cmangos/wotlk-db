-- Updates for transports

-- Sky-Reaver Korm Blackscar 37833
UPDATE creature_template SET EquipmentTemplateId = 2526 WHERE entry = 37833;
DELETE FROM creature_equip_template WHERE entry=2526;
INSERT INTO creature_equip_template VALUES
(2526,43175,0,21554);

-- Captain Ellis 24910
 UPDATE creature_template SET EquipmentTemplateId = 736 WHERE entry = 24910;

-- Ellis Crew Trigger 24973
UPDATE creature_template SET UnitFlags = 33555200 WHERE entry = 24973;

-- Cursed Sea Dog 24911
UPDATE creature_template SET EquipmentTemplateId = 736 WHERE entry = 24911;
 
-- missing object -- map 571
-- Stairway to Merci 186949
DELETE FROM `gameobject` WHERE `guid` = 520437;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(520437, 186949, 571, 1, 1, 64.314239501953125, -3754.6875, -0.13587099313735961, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675, -120, -120, 0, 1);

-- [DND] Icecrown Flight To Airship Bunny (A) 30476
DELETE FROM creature_template_addon WHERE entry IN (30476);
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_pvp_state, emote, moveflags, auras) VALUES 
(30476,0,0,1,0,0,0,'56852');

-- Navigator Zippik 34730 -- gossip
UPDATE creature_template SET GossipMenuId = 10557 WHERE Entry = 34730;
DELETE FROM `gossip_menu` WHERE `entry`=10557;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10557, 14613, 0, 0);

-- Navigator Fairweather 25076 -- gossip
UPDATE creature_template SET GossipMenuId = 9091 WHERE Entry = 25076;
DELETE FROM `gossip_menu` WHERE `entry`=9091;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9091, 12292, 0, 0);

-- Crewman Crosswire 24929 -- gossip
UPDATE creature_template SET GossipMenuId = 9107 WHERE Entry = 24929;
DELETE FROM `gossip_menu` WHERE `entry`=9107;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9107, 12315, 0, 0);

-- Captain Taldar Windsinger 24456 -- gossip
UPDATE creature_template SET GossipMenuId = 9078 WHERE Entry = 24456;
DELETE FROM `gossip_menu` WHERE `entry`=9078;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9078, 12276, 0, 0);

-- Mariner Evenmist 25007 -- gossip
UPDATE creature_template SET GossipMenuId = 9060 WHERE Entry = 25007;
DELETE FROM `gossip_menu` WHERE `entry`=9060;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9060, 12248, 0, 0);

-- Mariner Farsight 24998 -- gossip
UPDATE creature_template SET GossipMenuId = 9058 WHERE Entry = 24998;
DELETE FROM `gossip_menu` WHERE `entry`=9058;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9058, 12246, 0, 0);

-- Mariner Swiftstar 24997 -- gossip
UPDATE creature_template SET GossipMenuId = 9059 WHERE Entry = 24997;
DELETE FROM `gossip_menu` WHERE `entry`=9059;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9059, 12247, 0, 0);

-- Mariner Bladewhisper 24996 -- gossip
UPDATE creature_template SET GossipMenuId = 9059 WHERE Entry = 24996;
