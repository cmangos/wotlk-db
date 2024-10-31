-- q.13235 'The Flesh Giant Champion'
-- missing creatures added
DELETE FROM creature_addon WHERE guid IN (536532,536533,536534,536535,536536,536537);
DELETE FROM creature_movement WHERE id IN (536532,536533,536534,536535,536536,536537);
DELETE FROM game_event_creature WHERE guid IN (536532,536533,536534,536535,536536,536537);
DELETE FROM game_event_creature_data WHERE guid IN (536532,536533,536534,536535,536536,536537);
DELETE FROM creature_battleground WHERE guid IN (536532,536533,536534,536535,536536,536537);
DELETE FROM creature_linking WHERE guid IN (536532,536533,536534,536535,536536,536537);
DELETE FROM creature WHERE guid IN (536532,536533,536534,536535,536536,536537);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
-- Morbidus 30698
(536532,30698,571,1,64,6853.651,3582.9792,738.027,6.0388,300,300,0,0),
-- Margrave Dhakar 31306
(536533,31306,571,1,64,6865.8203,3577.9785,736.04486,2.932,300,300,0,0),
-- Ebon Blade Veteran 31314
(536534,31314,571,1,64,6866.223,3574.6296,735.9076,3.0368,300,300,0,0),
(536535,31314,571,1,64,6865.108,3570.7517,736.0794,3.019,300,300,0,0),
(536536,31314,571,1,64,6868.4756,3579.733,736.1484,2.9496,300,300,0,0),
(536537,31314,571,1,64,6869.777,3584.0967,735.8923,2.87979,300,300,0,0);
DELETE FROM `spawn_group` WHERE id = 34155;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34155, 'Icecrown - The Fleshwerks (Phase 64) - Margrave Dhakar 31306 & Ebon Blade Veteran 31314 x4', 0, 0, 0, 0x02);
DELETE FROM `spawn_group_spawn` WHERE id = 34155;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34155, 536533, -1),
(34155, 536534, -1),
(34155, 536535, -1),
(34155, 536536, -1),
(34155, 536537, -1);
-- Updates
-- The Lich King 31301
UPDATE creature_template SET Faction = 2068, UnitFlags = 768, MinLevel = 83, MaxLevel = 83, Expansion = 2, UnitClass = 1, EquipmentTemplateId = 2264 WHERE Entry = 31301;
-- Ebon Blade Veteran 31314
UPDATE creature_template SET Faction = 1770, UnitFlags = 32768, MinLevel = 80, MaxLevel = 80, Expansion = 2, UnitClass = 2, EquipmentTemplateId = 1029 WHERE Entry = 31314;
-- Margrave Dhakar 31306
UPDATE creature_template SET Faction = 1770, UnitFlags = 768, NpcFlags = 1, MinLevel = 80, MaxLevel = 80, Expansion = 2, UnitClass = 2, EquipmentTemplateId = 1025, GossipMenuId = 10060 WHERE Entry = 31306;
DELETE FROM gossip_menu WHERE entry IN(10060);
INSERT INTO gossip_menu(entry, text_id, script_id, condition_id) VALUES
(10060,13978,0,0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(13978);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(13978,1,32117);
DELETE FROM npc_text WHERE id IN (13978);
DELETE FROM gossip_menu_option WHERE menu_id IN (10060);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10060,0,0,'Let\'s kill this... thing... and get this over with.',32118,1,1,-1,0,1006001,0,0,NULL,0,20790);
DELETE FROM conditions WHERE condition_entry = 20790;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(20790,9,13235,0,0,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id IN (1006001);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1006001,1,29,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NpcFlags Removed'), -- 23:39:05.432
(1006001,100,10,31301,35000,0,0,0,0x08,0,0,0,0,6858.5957,3580.4998,736.75116,5.672,'Player summon 31301'), -- 23:39:05.564
(1006001,1000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 23:39:06.337
(1006001,1100,0,0,0,0,0,0,0x04,32015,0,0,0,0,0,0,0,'emote'), -- 23:39:06.337
(1006001,4100,35,5,40,0,0,0,0,0,0,0,0,0,0,0,0,'send event 5'); -- 23:39:09.568
DELETE FROM dbscripts_on_relay WHERE id IN (21088);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21088,1,1,11,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of The Lich King 31301 EAI: emote'), -- 23:39:08.756
(21088,100,0,0,0,0,0,0,0x04,31973,0,0,0,0,0,0,0,'Part of The Lich King 31301 EAI: say'),
(21088,4000,15,53274,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of The Lich King 31301 EAI: cast 53274'), -- 23:39:12.002
(21088,7000,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of The Lich King 31301 EAI: emote'), -- 23:39:15.253
(21088,7100,0,0,0,0,0,0,0x04,31974,0,0,0,0,0,0,0,'Part of The Lich King 31301 EAI: say'),
(21088,12000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of The Lich King 31301 EAI: emote'), -- 23:39:20.113
(21088,12100,0,0,0,0,0,0,0x04,31976,0,0,0,0,0,0,0,'Part of The Lich King 31301 EAI: say'),
(21088,18000,1,11,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of The Lich King 31301 EAI: emote'), -- 23:39:26.593
(21088,18100,0,0,0,0,0,0,0x04,31979,0,0,0,0,0,0,0,'Part of The Lich King 31301 EAI: say'),
(21088,21000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of The Lich King 31301 EAI: emote'), -- 23:39:29.833
(21088,26000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of The Lich King 31301 EAI: emote'), -- 23:39:34.712
(21088,26100,0,0,0,0,0,0,0x04,31981,0,0,0,0,0,0,0,'Part of The Lich King 31301 EAI: say'), -- 23:39:34.827
(21088,31000,10,31428,300000,0,0,0,0x04,0,0,0,20073,6857.3276,3571.4907,735.8922,1.152,'Part of The Lich King 31301 EAI: summon 31428'); -- 23:39:39.997
-- Crusader Olakin Sainrith 31428
DELETE FROM creature_spawn_data_template WHERE `entry` IN (20073);
INSERT INTO creature_spawn_data_template (entry, RelayId,Name) VALUES
(20073,21089,'- RelayId 21089');
DELETE FROM dbscripts_on_relay WHERE id IN (21089);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21089,0,24,28919,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31428 EAI: mount'),
(21089,3000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31428 EAI: emote'), -- 23:39:43.242
(21089,3100,0,0,0,0,0,0,0x04,32198,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31428 EAI: say'),
(21089,4000,22,1770,0x01,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31428 EAI: temp faction'),
(21089,5000,35,5,50,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Crusader Olakin Sainrith 31428 EAI: send even 5');
DELETE FROM spell_script_target WHERE entry IN (72728,58949);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(72728, 1, 31428, 0),
(72728, 1, 31306, 0),
(58949, 1, 30698, 0);
-- Morbidus 30698
UPDATE creature_template SET Faction = 2102, UnitFlags = 832, MinLevel = 80, MaxLevel = 80, Expansion = 2, VehicleTemplateId = 271 WHERE Entry = 30698;
