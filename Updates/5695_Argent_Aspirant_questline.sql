-- II - Aspirant questline
-- q.13675 'The Edge Of Winter' - H
-- q.13670 'The Edge Of Winter' - A
-- Part of Maiden of Winter\'s Breath Lake 33303 EAI:
DELETE FROM dbscripts_on_relay WHERE id = 21143;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21143,1,14,45776,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Maiden of Winter\'s Breath Lake 33303 EAI: remove aura'),
(21143,2,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Maiden of Winter\'s Breath Lake 33303 EAI: active'),
(21143,1001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Maiden of Winter\'s Breath Lake 33303 EAI: emote'),
(21143,1200,0,0,0,0,0,0,0x04,33436,0,0,0,0,0,0,0,'Part of Maiden of Winter\'s Breath Lake 33303 EAI: say'),
(21143,7000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Maiden of Winter\'s Breath Lake 33303 EAI: emote'),
(21143,7100,0,0,0,0,0,0,0x04,33437,0,0,0,0,0,0,0,'Part of Maiden of Winter\'s Breath Lake 33303 EAI: say'),
(21143,13000,15,45776,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Maiden of Winter\'s Breath Lake 33303 EAI: cast 45776'),
(21143,15000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,3.40339207649230957,'Part of Maiden of Winter\'s Breath Lake 33303 EAI: move'),
(21143,15100,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Maiden of Winter\'s Breath Lake 33303 EAI: unactive');

-- q.13673 'A Blade Fit For A Champion' - H
-- q.13666 'A Blade Fit For A Champion' - A
-- Lake Frog 33211 | 33224
UPDATE creature SET spawntimesecsmin = 20, spawntimesecsmax = 20, spawndist = 7, MovementType = 1, id = 0 WHERE id IN (33211,33224);
UPDATE creature_template SET UnitClass = 8 WHERE Entry IN (33211,33224);
UPDATE creature_template SET NpcFlags = 1, GossipMenuId = 10316 WHERE Entry IN (33224);
DELETE FROM `gossip_menu` WHERE `entry` IN (10315,10316);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10315, 14320, 0, 0),
(10316, 14319, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14319,14320);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14319,1,33362),
(14320,1,33364);
DELETE FROM npc_text WHERE id IN (14320,14319);
DELETE FROM gossip_menu_option WHERE menu_id IN (10316);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10316,0,0,'Glad to help, my lady. I\'m told you were once the guardian of a fabled sword. Do you know where I might find it?',33363,1,1,10315,0,1031601,0,0,NULL,0,0);
DELETE FROM dbscripts_on_gossip WHERE id = 1031601;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1031601,1,15,62554,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
DELETE FROM `spawn_group` WHERE id = 32003;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(32003, 'Grizzly Hills - Lake Frog 33211 | Lake Frog 33224', 0, 13, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 32003;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(32003,533033,-1),(32003,533034,-1),(32003,533035,-1),(32003,533036,-1),(32003,533037,-1),
(32003,533038,-1),(32003,533039,-1),(32003,533040,-1),(32003,533041,-1),(32003,533042,-1),
(32003,533043,-1),(32003,533044,-1),(32003,533047,-1);
DELETE FROM `spawn_group_entry` WHERE id = 32003;
INSERT INTO `spawn_group_entry` (`Id`, `Entry`, `MinCount`, `MaxCount`, `Chance`) VALUES
(32003,33211,0,0,85),
(32003,33224,0,0,15); -- low chance
DELETE FROM creature_spawn_data WHERE guid IN (533033,533034,533035,533036,533037,533038,533039,533040,533041,533042,533043,533044,533047);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(533033,10),(533034,10),(533035,10),(533036,10),
(533037,10),(533038,10),(533039,10),(533040,10),
(533041,10),(533042,10),(533043,10),(533044,10),
(533047,10);
DELETE FROM dbscripts_on_relay WHERE id IN (21158,21159,21160);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- failed
(21158,1,34,20932,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Lake Frog 33211 EAI: Player Self check - terminate if aura not present'),
(21158,100,34,20933,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lake Frog 33211 EAI: Player Self check - terminate if aura present'),
(21158,200,34,20934,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Lake Frog 33211 EAI: Source - terminate if aura present'),
(21158,300,15,62537,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Lake Frog 33211 EAI: Cast 62537'),
(21158,301,14,62574,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lake Frog 33211 EAI: Remove aura from Player'),
(21158,400,20,0,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Lake Frog 33211 EAI: idle'),
(21158,401,35,5,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Lake Frog 33211 EAI: send event 5'),
(21158,1000,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Lake Frog 33211 EAI: Follow Player'),
(21158,5000,37,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Lake Frog 33211 EAI: Follow Player'),
-- success
(21159,1,34,20932,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,'Part of Lake Frog 33224 EAI: Player Self check - terminate if aura not present'),
(21159,100,34,20933,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lake Frog 33224 EAI: Player Self check - terminate if aura present'),
(21159,200,34,20934,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Lake Frog 33224 EAI: Source - terminate if aura present'),
(21159,300,15,62550,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Lake Frog 33224 EAI: Cast 62550'),
(21159,301,14,62574,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lake Frog 33224 EAI: Remove aura from Player'),
(21159,400,20,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Lake Frog 33224 EAI: idle'),
(21159,401,35,5,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Lake Frog 33211 EAI: send event 5'),
(21159,500,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Lake Frog 33224 EAI: face Player'),
(21160,1,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lake Frog 33224 EAI: emote'), -- 16:50:13.699
(21160,2,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lake Frog 33224 EAI: active'),
(21160,100,0,0,0,0,0,0,0x04,33366,0,0,0,0,0,0,0,'Part of Lake Frog 33224 EAI: say'), -- 16:50:13.802
(21160,3000,29,1,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lake Frog 33224 EAI: NpcFlags added'), -- 16:50:16.924
(21160,30000,1,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lake Frog 33224 EAI: emote'), -- 16:50:47.628 
(21160,30100,0,0,0,0,0,0,0x04,33367,0,0,0,0,0,0,0,'Part of Lake Frog 33224 EAI: say'), -- -- 16:50:47.728 
(21160,32000,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lake Frog 33224 EAI: despawn self'),
(21160,32001,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Lake Frog 33224 EAI: unactive');
DELETE FROM dbscripts_on_spell WHERE id IN (62536);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- shouldnt cast debuff if player has aura from bottle
(62536,1,34,20932,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Lake Frog 33211|33224 EAI: terminate if aura present'),
(62536,101,15,62581,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Lake Frog 33211|33224 EAI: Cast 62581');
DELETE FROM conditions WHERE condition_entry BETWEEN 20932 AND 20934;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4,flags) VALUES
(20932,1,62574,0,0,0,0),
(20933,1,62581,0,0,0,0),
(20934,1,62537,0,0,0,0);
 
-- q.13674 'A Worthy Weapon' - H
-- q.13669 'A Worthy Weapon' - A
-- Maiden of Drak'Mar 33273
UPDATE creature_template SET inhabitType = 4 WHERE entry = 33273;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33273);
DELETE FROM creature_template_addon WHERE entry = 33273;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33273,0,1,0,0,0,0,NULL);
-- objects
DELETE FROM gameobject_template WHERE entry = 300009; -- temp custom made object
DELETE FROM game_event_gameobject WHERE guid IN (SELECT guid from gameobject where id IN (194241));
DELETE FROM gameobject_battleground WHERE guid IN (SELECT guid from gameobject where id IN (194241));
DELETE FROM gameobject WHERE id IN (194241);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(521255,194241,571,1,4603.3506,-1599.288,156.88219,2.2340178,0,0,0.8987932,0.43837282,300,300); -- Drak'Mar Offering Ring 194241
UPDATE gameobject SET spawntimesecsmin = -65, spawntimesecsmax = -65 WHERE guid IN (511918);
UPDATE gameobject SET spawntimesecsmin = -45, spawntimesecsmax = -45 WHERE guid IN (513317);
-- quest event
DELETE FROM dbscripts_on_event WHERE id IN (20990);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20990,1,31,33273,30,0,0,0,0x08,0,0,0,0,0,0,0,0,'terminate if 33273 alive'),
(20990,100,9,511918,65,0,0,0,0,0,0,0,0,0,0,0,0,'resp Drak''Mar Lily Pad'),
(20990,110,10,33273,65000,0,0,0,0x08,0,0,0,0,4602.9766,-1600.1415,156.78345,0.75049,'summon 33273'); -- 15:24:00.423
DELETE FROM dbscripts_on_relay WHERE id IN (21161);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21161,1,1,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Maiden of Drak\'Mar 33273 EAI: emote'), -- 15:24:01.228
(21161,100,0,0,0,0,0,0,0x04,33423,0,0,0,0,0,0,0,'Part of Maiden of Drak\'Mar 33273 EAI: say'), -- Are those winter hy
(21161,5000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Maiden of Drak\'Mar 33273 EAI: emote'), -- 15:24:06.068
(21161,5100,0,0,0,0,0,0,0x04,33424,0,0,0,0,0,0,0,'Part of Maiden of Drak\'Mar 33273 EAI: say'), -- It's been so long since a
(21161,11000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Maiden of Drak\'Mar 33273 EAI: emote'), -- 15:24:12.540
(21161,11100,0,0,0,0,0,0,0x04,33425,0,0,0,0,0,0,0,'Part of Maiden of Drak\'Mar 33273 EAI: say'), -- The lake has bee 
(21161,18000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Maiden of Drak\'Mar 33273 EAI: emote'), -- 15:24:19.001
(21161,18000,9,513317,45,0,0,0,0,0,0,0,0,0,0,0,0,'resp Blade of Drak''Mar'), -- 15:24:19.815
(21161,18100,0,0,0,0,0,0,0x04,33426,0,0,0,0,0,0,0,'Part of Maiden of Drak\'Mar 33273 EAI: say'), -- Your gift is a rare
(21161,21000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Maiden of Drak\'Mar 33273 EAI: emote'); -- 15:24:22.253

-- q.13680 'The Aspirant's Challenge' - H
-- q.13679 'The Aspirant's Challenge' - A
UPDATE quest_template SET ReqCreatureOrGOId1 = 38595 WHERE entry IN (13679,13680);
DELETE FROM quest_poi_points WHERE questId IN (13680,13679);
INSERT INTO quest_poi_points (`questId`, `poiId`, `x`, `y`) VALUES
(13680,0,8408,661),
(13680,1,8609,965),
(13679,0,8616,649),
(13679,1,8609,965);
DELETE FROM quest_poi WHERE questId IN (13680,13679);
INSERT INTO quest_poi (`questId`, `poiId`, `objIndex`, `mapId`, `mapAreaId`, `floorId`, `unk3`, `unk4`) VALUES
(13680,0,-1,571,118,0,0,3),
(13680,1,0,571,118,0,0,3),
(13679,0,-1,571,118,0,0,1),
(13679,1,0,571,118,0,0,1);
-- Squire David 33447
UPDATE creature_template SET GossipMenuId = 10340 WHERE Entry IN (33447);
DELETE FROM `gossip_menu` WHERE `entry` IN (10340,10440);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10340, 14408, 0, 0), -- When you are ready to test for the rank of vali
(10340, 14407, 0, 20938), -- Are you prepared to f
(10440, 14476, 0, 0); -- The Argent Crusade riders believe in balanc
DELETE FROM npc_text_broadcast_text WHERE Id IN(14407,14408,14476);
INSERT INTO npc_text_broadcast_text(Id,Prob0,Prob1,BroadcastTextId0,BroadcastTextId1) VALUES
(14407,1,0,33799,0),
(14408,1,0,33800,0),
(14476,1,0,34378,0);
DELETE FROM npc_text WHERE id IN (14407,14408,14476);
DELETE FROM gossip_menu_option WHERE menu_id IN (10340);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10340,0,0,'I am ready to fight!',33430,1,1,-1,0,1034001,0,0,NULL,0,20942),
(10340,1,0,'How do the Argent Crusade riders fight?',34377,1,1,10440,0,0,0,0,NULL,0,0);
DELETE FROM conditions WHERE condition_entry BETWEEN 20935 AND 20938;
DELETE FROM conditions WHERE condition_entry IN (20941,20942);
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES
(20935,9,13680,0,0,0,0),
(20936,9,13679,0,0,0,0),
(20937,-2,20936,20935,0,0,0),
-- 20338 - aura from item equiped
-- 20361 - riding aura
(20938,-1,20937,20361,20338,0,0),
-- Aura preventing double spawn
(20941,1,63005,0,0,0,1),
(20942,-1,20941,20938,0,0,0);
DELETE FROM dbscripts_on_gossip WHERE id = 1034001;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1034001,1,15,63028,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast Force Cast');
-- Argent Valiant 33448
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Faction = 35, UnitClass = 1, EquipmentTemplateId = 1865, UnitFlags = 0, Detection = 100, Pursuit = 300000, DamageMultiplier = 11, MovementType = 2 WHERE Entry = 33448;
DELETE FROM creature_template_addon WHERE entry = 33448;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33448,28918,0,1,0,0,0,NULL);
DELETE FROM creature_movement_template WHERE Entry = 33448;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33448,0,1,8575.38,921.85,547.554,0.583,10,5),
(33448,0,2,8575.838,932.26025,547.8039,100,0,0),
(33448,0,3,8575.838,949.01025,547.8039,100,0,0),
(33448,0,4,8580.338,954.51025,547.8039,100,0,0),
(33448,0,5,8590.588,960.01025,547.8039,100,0,0),
(33448,0,6,8595.295,961.6706,547.5538,100,10000,11);
DELETE FROM dbscripts_on_relay WHERE id IN (21141,21144,21145,21146,21147,21148,21149,21150,21151,21157);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21141,0,22,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: reset faction'),
(21141,1,15,63260,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: cast 63260'),
(21141,2,15,64826,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: cast 64826'),
(21141,3,15,63053,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: cast 63053'),
(21141,3000,1,253,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: emote'),
(21141,3001,0,0,0,0,0,0,0x04,33690,33691,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: say'),
(21141,3002,18,5000,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: despawn'),
(21141,3003,15,64893,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: cast 64893'),
(21144,1000,15,63258,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: Player self cast'), -- script
-- start script
(21145,0,3,0,0,0,0,0,0x04|0x08,0,0,0,0,8575.38,921.85,547.554,0.583,'Part of Argent Valiant 33448 EAI: TP'),
(21146,1,20,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: idle'),
(21146,10,37,0,0,3,0,0,2,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: move towards Player - keep 3y dist'),
(21146,5001,36,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: face Player'),
(21146,5001,0,0,0,0,0,0,2,33698,33699,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: random say'),
(21146,8000,35,6,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: send event 6'),
(21147,1,15,63261,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: Self cast 63261'),
(21147,2,15,65190,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: Self cast 65190'),
(21147,3,15,62627,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: Self cast 62627'),
(21147,4,15,62719,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: Self cast 62719 - buff 1'),
(21147,8,15,64192,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: Self cast 64192'),
(21147,10,15,62719,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: Self cast 62719 - buff 2'),
(21147,15,15,64192,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: Self cast 64192'),
(21147,20,22,14,3,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: temp faction'),
-- check if player is mounted - despawn if not
(21148,1,34,20361,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: check Players aura - terminate if exist'),
(21148,100,0,0,0,0,0,0,6,33700,33701,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: random say'),
(21148,101,14,63005,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: Player remove aura'),
(21148,102,18,2000,0,0,0,0,6,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: desp self'),
-- charge script
(21149,3000,15,62891,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: self cast 62891'),
(21149,3101,35,8,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: send event 8'),
(21149,3500,35,9,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: send event 9'),
(21150,1001,15,64794,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: Player play music'),
(21151,1002,15,63049,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: Player self cast'), -- credit
(21151,1003,14,63005,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: Player remove aura'),
(21157,1000,15,64892,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Argent Valiant 33448 EAI: Player self cast');
