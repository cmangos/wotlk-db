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
-- Stairway to Merci 187117
DELETE FROM `gameobject` WHERE `guid` = 520437;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(520437, 187117, 571, 1, 1, 97.52007, -3684.329, 2.943869, -2.024579, 0, 0, -0.8480473, 0.5299206, -120, -120, 0, 1);
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

-- Captain Galind Windsword 25050 -- gossip
UPDATE creature_template SET GossipMenuId = 9082 WHERE Entry = 25050;
DELETE FROM `gossip_menu` WHERE `entry`=9082;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9082, 12277, 0, 0);

-- Mariner Stillglider 25056 -- gossip
UPDATE creature_template SET GossipMenuId = 9080 WHERE Entry = 25056;
DELETE FROM `gossip_menu` WHERE `entry`=9080;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9080, 12279, 0, 0);

-- Mariner Frostnight 25055 -- gossip
UPDATE creature_template SET GossipMenuId = 9081 WHERE Entry = 25055;
DELETE FROM `gossip_menu` WHERE `entry`=9081;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9081, 12278, 0, 0);

-- Mariner Keenstar 25054 -- gossip
UPDATE creature_template SET GossipMenuId = 9081 WHERE Entry = 25054;

-- Navigator Landerson 25015 -- gossip
UPDATE creature_template SET GossipMenuId = 9067 WHERE Entry = 25015;
DELETE FROM `gossip_menu` WHERE `entry`=9067;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9067, 12263, 0, 0);

-- Captain Angelina Soluna 25009
UPDATE creature_template SET GossipMenuId = 9068 WHERE Entry = 25009;
DELETE FROM `gossip_menu` WHERE `entry`=9068;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9068, 12264, 0, 0);

-- First Mate Wavesinger 25011
UPDATE creature_template SET GossipMenuId = 9066 WHERE Entry = 25011;
DELETE FROM `gossip_menu` WHERE `entry`=9066;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9066, 12262, 0, 0);

-- Sentinel Brightgrass 25013
UPDATE creature_template SET GossipMenuId = 9072 WHERE Entry = 25013;
DELETE FROM `gossip_menu` WHERE `entry`=9072;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9072, 12270, 0, 0);

-- Sentinel Winterdew 25014
UPDATE creature_template SET GossipMenuId = 9072 WHERE Entry = 25014;

-- Sailor Wills 25016
UPDATE creature_template SET GossipMenuId = 9071 WHERE Entry = 25016;
DELETE FROM `gossip_menu` WHERE `entry`=9071;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9071, 12268, 0, 0);

-- Sailor Fairfolk 25017
UPDATE creature_template SET GossipMenuId = 9069 WHERE Entry = 25017;
DELETE FROM `gossip_menu` WHERE `entry`=9069;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9069, 12266, 0, 0);

-- Sailor Stoneheel 25018
UPDATE creature_template SET GossipMenuId = 9070 WHERE Entry = 25018;
DELETE FROM `gossip_menu` WHERE `entry`=9070;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9070, 12267, 0, 0);

-- Marine Halters 24841
UPDATE creature_template SET GossipMenuId = 9037 WHERE Entry = 24841;

-- Sailor Henders 24838
UPDATE creature_template SET GossipMenuId = 9033 WHERE Entry = 24838;
DELETE FROM `gossip_menu` WHERE `entry`=9033;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(9033, 12211, 0, 0);

DELETE FROM npc_text WHERE ID IN(12211,12266);
INSERT INTO npc_text (ID, text0_0, text0_1, lang0, prob0, em0_1,em0_2,em0_3) VALUES
(12211,'Fine day fer sailin\', innit?','',7,1,1,0,0),
(12266,'','I\'m almost jealous of our Mr. Wavesinger. Why, he may well be prettier than me!',7,1,1,3,11);

-- Snack-O-Matic IV 24934
-- Vend-O-Tron D-Luxe 24935
REPLACE INTO creature_template_addon (entry,auras) VALUES
(24934,28782),
(24935,28782);
