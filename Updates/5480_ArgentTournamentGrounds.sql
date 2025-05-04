-- Icecrown: Argent Tournament Grounds

-- Generic scripts

-- Generic
DELETE FROM creature_spawn_data_template WHERE entry BETWEEN 200 AND 202;
INSERT INTO creature_spawn_data_template (entry, SpawnFlags, RelayId, name) VALUES
(200,1,30631,'GENERIC - SPAWN FLAG RUN, RelayId 30631 (path1 type3)'),
(201,1,30632,'GENERIC - SPAWN FLAG RUN, RelayId 30632 (path2 type3)'),
(202,1,30633,'GENERIC - SPAWN FLAG RUN, RelayId 30633 (path3 type3)');
DELETE FROM dbscript_random_templates WHERE `id` = 20378;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20378,1,30000,0,'Generic Talk #3 - emote 1'),
(20378,1,30001,0,'Generic Talk #3 - emote 5'),
(20378,1,30002,0,'Generic Talk #3 - emote 6'),
(20378,1,30025,0,'Generic Talk #3 - emote 25'),
(20378,1,30005,0,'Generic Talk #3 - emote 273'),
(20378,1,30006,0,'Generic Talk #3 - emote 274');
DELETE FROM dbscripts_on_relay WHERE id IN (30025,30631,30632,30633);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30025,0,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - emote 25'),
(30631,1,20,3,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints (type 3) - Path1'),
(30632,1,20,3,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints (type 3) - Path2'),
(30633,1,20,3,3,0,0,0,0x04,0,0,0,0,0,0,0,0,'GENERIC - SET waypoints (type 3) - Path3');
-- Generic Talk #1
UPDATE dbscript_random_templates SET comments = 'Generic Talk #1 - emote 1' WHERE `id` = 20053 AND target_id = 30000;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #1 - emote 5' WHERE `id` = 20053 AND target_id = 30001;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #1 - emote 6' WHERE `id` = 20053 AND target_id = 30002;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #1 - emote 11' WHERE `id` = 20053 AND target_id = 30003;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #1 - emote 18' WHERE `id` = 20053 AND target_id = 30004;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #1 - emote 273' WHERE `id` = 20053 AND target_id = 30005;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #1 - emote 274' WHERE `id` = 20053 AND target_id = 30006;
-- Generic Talk #2
UPDATE dbscript_random_templates SET comments = 'Generic Talk #2 - emote 1' WHERE `id` = 20055 AND target_id = 30000;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #2 - emote 5' WHERE `id` = 20055 AND target_id = 30001;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #2 - emote 6' WHERE `id` = 20055 AND target_id = 30002;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #2 - emote 273' WHERE `id` = 20055 AND target_id = 30005;
UPDATE dbscript_random_templates SET comments = 'Generic Talk #2 - emote 274' WHERE `id` = 20055 AND target_id = 30006;

-- Objects:
-- Tournament Stables 194291
DELETE FROM game_event_gameobject WHERE guid IN (509419,521252,521253,521254);
DELETE FROM gameobject_battleground WHERE guid IN (509419,521252,521253,521254);
DELETE FROM gameobject WHERE guid IN (509419,521252,521253,521254);
INSERT INTO gameobject (guid, id, map, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax) VALUES
(509419,194291,571,1,8424.65,700.411,547.314,4.55739,0,0,0.935769,-0.352614,180,180),
(521252,194291,571,1,8489.87,920.789,547.293,0.0192263,0,0,0.009613,0.999954,180,180),
(521253,194291,571,1,8576.14,667.799,547.48,2.83972,0,0,0.98863,0.150366,180,180),
(521254,194291,571,1,8594.26,939.853,548.64,4.61177,0,0,0.741771,-0.670653,180,180);

-- Creatures:
-- duplicates
DELETE FROM creature_addon WHERE guid IN (535761,500845,500843,500534,500846,500844,500535);
DELETE FROM creature_movement WHERE Id IN (535761,500845,500843,500534,500846,500844,500535);
DELETE FROM game_event_creature WHERE guid IN (535761,500845,500843,500534,500846,500844,500535);
DELETE FROM game_event_creature_data WHERE guid IN (535761,500845,500843,500534,500846,500844,500535);
DELETE FROM creature_battleground WHERE guid IN (535761,500845,500843,500534,500846,500844,500535);
DELETE FROM creature_linking WHERE guid IN (535761,500845,500843,500534,500846,500844,500535)
 OR master_guid IN (535761,500845,500843,500534,500846,500844,500535);
DELETE FROM creature WHERE guid IN (535761,500845,500843,500534,500846,500844,500535);

-- Gormok the Impaler 35469
-- Invisible Stalker (Scale x0.5) 25171
UPDATE creature_template SET UnitFlags = 33554432, InhabitType = 4 WHERE Entry = 25171;
-- Thunder Bluff Valiant 33473
DELETE FROM creature_spawn_data WHERE guid IN (533356);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(533356,80);
-- Undercity Valiant 33469
DELETE FROM creature_spawn_data WHERE guid IN (533351);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(533351,80);
-- Orgrimmar Valiant 33460
-- individual addon
DELETE FROM creature_addon WHERE guid IN (533325);
INSERT INTO creature_addon (guid,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(533325,0,3,0,0,0,0,28782);
DELETE FROM creature_spawn_data WHERE guid IN (533327,533331);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(533327,80),
(533331,80);
-- Sen'jin Valiant 33476
DELETE FROM creature_spawn_data WHERE guid IN (533359);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(533359,80);
-- Silvermoon Valiant 33468
DELETE FROM creature_spawn_data WHERE guid IN (533347);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(533347,80);
-- Gnomeregan Valiant 33463
DELETE FROM creature_spawn_data WHERE guid IN (533338);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(533338,80);
-- Stormwind Valiant 33479
-- individual addon
DELETE FROM creature_addon WHERE guid IN (533368);
INSERT INTO creature_addon (guid,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(533368,0,3,0,0,0,0,'5301 28782');
DELETE FROM creature_spawn_data WHERE guid IN (533370,533371);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(533370,80),
(533371,80);
-- Exodar Valiant 33566
DELETE FROM creature_spawn_data WHERE guid IN (533478);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(533478,80);
-- Darnassus Valiant 33565
DELETE FROM creature_spawn_data WHERE guid IN (533469,533477);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(533469,80),
(533477,80);
-- Ironforge Valiant 33481
DELETE FROM creature_spawn_data WHERE guid IN (533375);
INSERT INTO creature_spawn_data (guid, Id) VALUES
(533375,80);
-- Squire Artie 34210
UPDATE creature_template SET GossipMenuId = 10463 WHERE Entry IN (34210);
DELETE FROM `gossip_menu` WHERE `entry` IN (10463);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10463, 14491, 0, 0);
-- Argent Confessor Paletress 34102
UPDATE creature_template SET GossipMenuId = 10451 WHERE Entry IN (34102);
DELETE FROM `gossip_menu` WHERE `entry` IN (10451);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10451, 14487, 0, 0);
-- Jarin Dawnglow 33971
-- Caris Sunlance 33970
UPDATE creature_template SET CreatureTypeFlags = 134217728, NpcFlags = 65537, GossipMenuId = 8903 WHERE Entry IN (33971,33970);
DELETE FROM `gossip_menu` WHERE `entry` IN (8903);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8903, 11714, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(11714);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(11714,1,16967);
DELETE FROM npc_text WHERE id IN (11714);
DELETE FROM gossip_menu_option WHERE menu_id IN (8903);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(8903,0,0,'Trick or Treat!',10693,1,1,-1,0,342,0,0,NULL,0,521),
(8903,1,5,'Make this inn your home.',2822,8,65536,0,0,0,0,0,NULL,0,0);
-- Girana the Blooded 34771
UPDATE creature_template SET GossipMenuId = 10689 WHERE Entry = 34771;
DELETE FROM `gossip_menu` WHERE `entry` IN (10689);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10689, 14824, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14824);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14824,1,36033);
DELETE FROM npc_text WHERE id IN (14824);
-- Gahju 33545
-- Handler Dretch 33547
-- Flickin Gearspanner 33649
UPDATE creature_template SET GossipMenuId = 10435 WHERE Entry IN (33545,33547,33649);
DELETE FROM `gossip_menu` WHERE `entry` IN (10435);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10435, 14472, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14472);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14472,1,34242);
DELETE FROM npc_text WHERE id IN (14472);
-- Zul'tore 33372
UPDATE creature_template SET GossipMenuId = 10382 WHERE Entry = 33372;
DELETE FROM `gossip_menu` WHERE `entry` IN (10382);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10382, 14405, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14405);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14405,1,33797);
DELETE FROM npc_text WHERE id IN (14405);
-- Samamba 33554
UPDATE creature_template SET CreatureTypeFlags = 134217728, GossipMenuId = 10425 WHERE Entry = 33554;
DELETE FROM `gossip_menu` WHERE `entry` IN (10425);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10425, 14464, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14464);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14464,1,34136);
DELETE FROM npc_text WHERE id IN (14464);
DELETE FROM gossip_menu_option WHERE menu_id IN (10425);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10425,0,1,'I want to browse your goods.',3370,3,128,0,0,0,0,0,NULL,0,20870);
DELETE FROM conditions WHERE condition_entry BETWEEN 20869 AND 20870;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20869,8,13737,0,0,0,''),
(20870,-2,20869,842,0,0,''); -- 842 - troll
-- Anka Clawhoof 33549
-- Morah Worgsister 33544
-- Aneera Thuron 33548
-- Clara Tumblebrew 33309
-- Airae Starseeker 33654
-- Ranii 33656
UPDATE creature_template SET GossipMenuId = 10436 WHERE Entry IN (33549,33544,33548,33309,33654,33656);
DELETE FROM `gossip_menu` WHERE `entry` IN (10436);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10436, 14473, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14473);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14473,1,34243);
DELETE FROM npc_text WHERE id IN (14473);
-- Runok Wildmane 33403
UPDATE creature_template SET GossipMenuId = 10381 WHERE Entry = 33403;
DELETE FROM `gossip_menu` WHERE `entry` IN (10381);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10381, 14404, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14404);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14404,1,33796);
DELETE FROM npc_text WHERE id IN (14404);
-- Doru Thunderhorn 33556
UPDATE creature_template SET CreatureTypeFlags = 134217728, GossipMenuId = 10419 WHERE Entry = 33556;
DELETE FROM `gossip_menu` WHERE `entry` IN (10419);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10419, 14458, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14458);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14458,1,34120);
DELETE FROM npc_text WHERE id IN (14458);
DELETE FROM gossip_menu_option WHERE menu_id IN (10419);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10419,0,1,'I want to browse your goods.',3370,3,128,0,0,0,0,0,NULL,0,20872);
DELETE FROM conditions WHERE condition_entry BETWEEN 20871 AND 20872;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20871,8,13738,0,0,0,''),
(20872,-2,20871,840,0,0,''); -- 840 - tauren
-- Magister Edien Sunhollow 33542
UPDATE creature_template SET GossipMenuId = 10378 WHERE Entry = 33542;
DELETE FROM `gossip_menu` WHERE `entry` IN (10378);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10378, 14406, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14406);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14406,1,33798);
DELETE FROM npc_text WHERE id IN (14406);
-- Mokra the Skullcrusher 33361
UPDATE creature_template SET GossipMenuId = 10380 WHERE Entry = 33361;
DELETE FROM `gossip_menu` WHERE `entry` IN (10380);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10380, 14403, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14403);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14403,1,33795);
DELETE FROM npc_text WHERE id IN (14403);
-- Freka Bloodaxe 33553
UPDATE creature_template SET CreatureTypeFlags = 134217728, GossipMenuId = 10421 WHERE Entry = 33553;
DELETE FROM `gossip_menu` WHERE `entry` IN (10421);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10421, 14460, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14460);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14460,1,34127);
DELETE FROM npc_text WHERE id IN (14460);
DELETE FROM gossip_menu_option WHERE menu_id IN (10421);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10421,0,1,'I want to browse your goods.',3370,3,128,0,0,0,0,0,NULL,0,20874);
DELETE FROM conditions WHERE condition_entry BETWEEN 20873 AND 20874;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20873,8,13736,0,0,0,''),
(20874,-2,20873,836,0,0,''); -- 836 - Orc
-- Deathstalker Visceri 33373
UPDATE creature_template SET GossipMenuId = 10379 WHERE Entry = 33373;
DELETE FROM `gossip_menu` WHERE `entry` IN (10379);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10379, 14402, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14402);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14402,1,33794);
DELETE FROM npc_text WHERE id IN (14402);
-- Eliza Killian 33555
UPDATE creature_template SET CreatureTypeFlags = 134217728, GossipMenuId = 10420 WHERE Entry = 33555;
DELETE FROM `gossip_menu` WHERE `entry` IN (10420);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10420, 14459, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14459);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14459,1,34122);
DELETE FROM npc_text WHERE id IN (14459);
DELETE FROM gossip_menu_option WHERE menu_id IN (10420);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10420,0,1,'I want to browse your goods.',3370,3,128,0,0,0,0,0,NULL,0,20876);
DELETE FROM conditions WHERE condition_entry BETWEEN 20875 AND 20876;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20875,8,13739,0,0,0,''),
(20876,-2,20875,839,0,0,''); -- 839 - undead
-- Eressea Dawnsinger 33379
UPDATE creature_template SET GossipMenuId = 10372 WHERE Entry = 33379;
DELETE FROM `gossip_menu` WHERE `entry` IN (10372);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10372, 14392, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14392);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14392,1,33780);
DELETE FROM npc_text WHERE id IN (14392);
-- Trellis Morningsun 33557
UPDATE creature_template SET CreatureTypeFlags = 134217728, GossipMenuId = 10426 WHERE Entry = 33557;
DELETE FROM `gossip_menu` WHERE `entry` IN (10426);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10426, 14465, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14465);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14465,1,34139);
DELETE FROM npc_text WHERE id IN (14465);
DELETE FROM gossip_menu_option WHERE menu_id IN (10426);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10426,0,1,'I want to browse your goods.',3370,3,128,0,0,0,0,0,NULL,0,20878);
DELETE FROM conditions WHERE condition_entry BETWEEN 20877 AND 20878;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20877,8,13740,0,0,0,''),
(20878,-2,20877,843,0,0,''); -- 843 - Blood Elf
-- Ambrose Boltspark 33335
UPDATE creature_template SET GossipMenuId = 10376 WHERE Entry = 33335;
DELETE FROM `gossip_menu` WHERE `entry` IN (10376);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10376, 14398, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14398);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14398,1,33786);
DELETE FROM npc_text WHERE id IN (14398);
-- Rillie Spindlenut 33650
UPDATE creature_template SET CreatureTypeFlags = 134217728, GossipMenuId = 10423 WHERE Entry = 33650;
DELETE FROM `gossip_menu` WHERE `entry` IN (10423);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10423, 14462, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14462);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14462,1,34131);
DELETE FROM npc_text WHERE id IN (14462);
DELETE FROM gossip_menu_option WHERE menu_id IN (10423);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10423,0,1,'I want to browse your goods.',3370,3,128,0,0,0,0,0,NULL,0,20880);
DELETE FROM conditions WHERE condition_entry BETWEEN 20879 AND 20880;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20879,8,13733,0,0,0,''),
(20880,-2,20879,841,0,0,''); -- 841 - Gnome
-- Lana Stouthammer 33312
UPDATE creature_template SET GossipMenuId = 10375 WHERE Entry = 33312;
DELETE FROM `gossip_menu` WHERE `entry` IN (10375);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10375, 14396, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14396);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14396,1,33785);
DELETE FROM npc_text WHERE id IN (14396);
-- Derrick Brindlebeard 33310
UPDATE creature_template SET CreatureTypeFlags = 134217728, GossipMenuId = 10418 WHERE Entry = 33310;
DELETE FROM `gossip_menu` WHERE `entry` IN (10418);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10418, 14457, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14457);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14457,1,34116);
DELETE FROM npc_text WHERE id IN (14457);
DELETE FROM gossip_menu_option WHERE menu_id IN (10418);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10418,0,1,'I want to browse your goods.',3370,3,128,0,0,0,0,0,NULL,0,20882);
DELETE FROM conditions WHERE condition_entry BETWEEN 20881 AND 20882;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20881,8,13732,0,0,0,''),
(20882,-2,20881,837,0,0,''); -- 837 - Dwarf
-- Arcanist Taelis 33625
UPDATE creature_template SET GossipMenuId = 10367 WHERE Entry = 33625;
DELETE FROM `gossip_menu` WHERE `entry` IN (10367);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10367, 14379, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14379);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14379,1,33717);
DELETE FROM npc_text WHERE id IN (14379);
-- Corporal Arthur Flew 33307
UPDATE creature_template SET CreatureTypeFlags = 134217728, GossipMenuId = 10417 WHERE Entry = 33307;
DELETE FROM `gossip_menu` WHERE `entry` IN (10417);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10417, 14456, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14456);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14456,1,34104);
DELETE FROM npc_text WHERE id IN (14456);
DELETE FROM gossip_menu_option WHERE menu_id IN (10417);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10417,0,1,'I want to browse your goods.',3370,3,128,0,0,0,0,0,NULL,0,20884);
DELETE FROM conditions WHERE condition_entry BETWEEN 20883 AND 20884;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20883,8,13702,0,0,0,''),
(20884,-2,20883,835,0,0,''); -- 835 - Human
-- Jaelyne Evensong 33592
UPDATE creature_template SET GossipMenuId = 10377 WHERE Entry = 33592;
DELETE FROM `gossip_menu` WHERE `entry` IN (10377);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10377, 14399, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14399);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14399,1,33789);
DELETE FROM npc_text WHERE id IN (14399);
-- Rook Hawkfist 33653
UPDATE creature_template SET CreatureTypeFlags = 134217728, GossipMenuId = 10424 WHERE Entry = 33653;
DELETE FROM `gossip_menu` WHERE `entry` IN (10424);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10424, 14463, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14463);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14463,1,34134);
DELETE FROM npc_text WHERE id IN (14463);
DELETE FROM gossip_menu_option WHERE menu_id IN (10424);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10424,0,1,'I want to browse your goods.',3370,3,128,0,0,0,0,0,NULL,0,20886);
DELETE FROM conditions WHERE condition_entry BETWEEN 20885 AND 20886;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20885,8,13735,0,0,0,''),
(20886,-2,20885,838,0,0,''); -- 838 - Human
-- Colosos 33593
UPDATE creature_template SET GossipMenuId = 10374 WHERE Entry = 33593;
DELETE FROM `gossip_menu` WHERE `entry` IN (10374);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10374, 14395, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14395);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14395,1,33784);
DELETE FROM npc_text WHERE id IN (14395);
-- Irisee 33657
UPDATE creature_template SET CreatureTypeFlags = 134217728, GossipMenuId = 10422 WHERE Entry = 33657;
DELETE FROM `gossip_menu` WHERE `entry` IN (10422);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10422, 14461, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14461);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14461,1,34128);
DELETE FROM npc_text WHERE id IN (14461);
DELETE FROM gossip_menu_option WHERE menu_id IN (10422);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10422,0,1,'I want to browse your goods.',3370,3,128,0,0,0,0,0,NULL,0,20888);
DELETE FROM conditions WHERE condition_entry BETWEEN 20887 AND 20888;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20887,8,13734,0,0,0,''),
(20888,-2,20887,838,0,0,''); -- 844 - Draenei
-- Huntsman Yahto 35472
UPDATE creature_template SET GossipMenuId = 10652 WHERE Entry = 35472;
DELETE FROM `gossip_menu` WHERE `entry` IN (10652);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10652, 14761, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14761);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14761,1,35842);
DELETE FROM npc_text WHERE id IN (14761);
-- Huntsman Lokni 35499
UPDATE creature_template SET GossipMenuId = 10664 WHERE Entry = 35499;
DELETE FROM `gossip_menu` WHERE `entry` IN (10664);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10664, 14779, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14779);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14779,1,35843);
DELETE FROM npc_text WHERE id IN (14779);
-- Argent Peacekeeper 33698
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33698);
DELETE FROM creature_template_addon WHERE entry = 33698;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33698,28918,0,1,1,0,0,NULL);
DELETE FROM dbscripts_on_relay WHERE id IN (21118);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21118,0,24,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unmount'),
(21118,1,54,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'ranged weapon'),
(21118,2,42,0,0,0,0,0,0x04,0,0,2551,0,0,0,0,0,'equip'),
(21118,3,1,214,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote');
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20078);
INSERT INTO `creature_spawn_data_template` (`entry`, `RelayId`,`Name`) VALUES
(20078,21118,'- RelayId 21118');
DELETE FROM `creature_spawn_data` WHERE `Guid` IN (
533539,533583,533579,533578,533577,533576,533575,533574,533573,533572,533560,533559,533555,533554,533588,533552,
533551,533568,533549,533548,533545,533544,533543,533541,533584,533533,533534,533535,533537,533550,533587,533553,
533564,533565,533546,533547,533566,533569,533571,533582,533589,533586,533585,533581,533580,533562,533561,533563,
533570,533567,533536,533538,533540,533542,533556,533557,533558,535768);
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES 
(533539,20078),(533583,20078),(533579,20078),(533578,20078),(533577,20078),(533576,20078),(533575,20078),
(533574,20078),(533573,20078),(533572,20078),(533560,20078),(533559,20078),(533555,20078),(533554,20078),
(533588,20078),(533552,20078),(533551,20078),(533568,20078),(533549,20078),(533548,20078),(533545,20078),
(533544,20078),(533543,20078),(533541,20078),(533584,20078),
-- 80
(533533,80),(533534,80),(533535,80),(533537,80),(533550,80),(533587,80),(533553,80),(533564,80),(533565,80),
(533546,80),(533547,80),(533566,80),(533569,80),(533571,80),(533582,80),(533589,80),(533586,80),(533585,80),
(533581,80),(533580,80),(533562,80),(533561,80),(533563,80),(533570,80),(533567,80),(533536,80),(533538,80),
(533540,80),(533542,80),(533556,80),(533557,80),(533558,80),(535768,80);
UPDATE creature SET position_x = 8417.825, position_y = 977.4549, position_z = 647.324, spawndist = 0, MovementType = 3 WHERE guid = 533626;
DELETE FROM creature_movement WHERE id IN (533626);
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- 533626
(533626,1 ,8417.825,977.4549,647.324   ,100,0,0),
(533626,2 ,8469.005,999.7694,625.76917 ,100,0,0),
(533626,3 ,8495.076,1025.9955,636.26886,100,0,0),
(533626,4 ,8532.544,1031.0245,643.574  ,100,0,0),
(533626,5 ,8561.722,1017.6796,643.574  ,100,0,0),
(533626,6 ,8600.253,975.6004,651.7127  ,100,0,0),
(533626,7 ,8602.156,948.3768,651.7127  ,100,0,0),
(533626,8 ,8606.636,875.62213,659.3512 ,100,0,0),
(533626,9 ,8624.734,834.64215,650.9908 ,100,0,0),
(533626,10,8640.455,804.3831,659.6294  ,100,0,0),
(533626,11,8630.11,750.8952,659.6294   ,100,0,0),
(533626,12,8583.415,675.0473,652.87946 ,100,0,0),
(533626,13,8525.735,632.1176,652.87946 ,100,0,0),
(533626,14,8452.723,634.08386,652.87946,100,0,0),
(533626,15,8353.901,704.28735,647.324  ,100,0,0),
(533626,16,8359.217,779.63574,647.324  ,100,0,0),
(533626,17,8325.534,846.645,647.324    ,100,0,0);
DELETE FROM `creature_spawn_data` WHERE `Guid` IN (
533626,535767,535766,535765,535764,535763,535762,535760,535759,535758,533630,533629,533628,533627,533625,533624,533623,533622);
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES 
(533626,1),(535767,80),(535766,80),(535765,80),(535764,80),(535763,80),
(535762,80),(535760,80),(535759,80),(535758,80),(533630,80),(533629,80),
(533628,80),(533627,80),(533625,80),(533624,80),(533623,80),(533622,80);
-- Fjola Lightbane 36065
-- Eydis Darkbane 36066
UPDATE creature_template SET UnitFlags = 336, StaticFlags2 = 2099200, StaticFlags3 = 1 WHERE Entry IN (36065,36066);
-- Priest Grimmin 36102
UPDATE creature SET position_x = 8525.534, position_y = 859.6962, position_z = 558.1417, orientation = 1.537631, spawndist = 0, MovementType = 0 WHERE guid = 534310;
DELETE FROM dbscripts_on_relay WHERE id IN (21119);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21119,0,31,36065,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Priest Grimmin 36102 EAI: serach for buddy'),
(21119,100,15,68341,0,0,36065,20,1,0,0,0,0,0,0,0,0,'Part of Priest Grimmin 36102 EAI: cast 68341');
-- Priestess Alorah 36101
UPDATE creature SET position_x = 8506.19, position_y = 860.4288, position_z = 558.1615, orientation = 2.472198, spawndist = 0, MovementType = 0 WHERE guid = 534309;
DELETE FROM dbscripts_on_relay WHERE id IN (21120);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21120,0,31,36066,20,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Priestess Alorah 36101 EAI: serach for buddy'),
(21120,100,15,68341,0,0,36066,20,1,0,0,0,0,0,0,0,0,'Part of Priestess Alorah 36101 EAI: cast 68341');
-- Joseph Wilson 33589
UPDATE creature SET position_x = 8489.583, position_y = 967.6441, position_z = 547.29266, orientation = 3.19395, spawndist = 0, MovementType = 2 WHERE id = 33589;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 33589;
DELETE FROM creature_movement_template WHERE Entry = 33589;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33589,0,1,8489.583,967.6441,547.29266,3.19395,20000,0),
(33589,0,2,8489.283,966.63196,547.54266,100,0,0),
(33589,0,3,8489.783,964.63196,547.54266,100,0,0),
(33589,0,4,8492.984,961.6198,547.29266,0.86202,10000,3358901),
(33589,0,5,8492.984,961.6198,547.29266,2.835,10000,3358902),
(33589,0,6,8491.811,962.9227,547.54266,100,0,0),
(33589,0,7,8489.811,964.6727,547.54266,100,0,0),
(33589,0,8,8489.138,966.7257,547.29266,100,0,0),
(33589,0,9,8489.583,967.6441,547.29266,100,0,0),
(33589,0,10,8489.583,967.6441,547.29266,3.1939,65000,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3358901,3358902);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3358901,3000,31,33479,10,0,0,0,0,0,0,0,0,0,0,0,0,'search for 33479'),
(3358901,3100,15,61493,0,0,33479,10,1,0,0,0,0,0,0,0,0,'cast 61493 on buddy'),
(3358902,3000,31,33460,10,0,0,0,0,0,0,0,0,0,0,0,0,'search for 33460'),
(3358902,3100,15,61493,0,0,33460,10,1,0,0,0,0,0,0,0,0,'cast 61493 on buddy');
-- Thomas Partridge 33854
UPDATE creature SET position_x = 8481.685, position_y = 959.48785, position_z = 547.29266, orientation = 3.0194, spawndist = 0, MovementType = 2 WHERE id = 33854;
UPDATE creature_template SET MovementType = 2 WHERE Entry = 33854;
DELETE FROM creature_movement_template WHERE Entry = 33854;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33854,0,1,8481.685,959.48785,547.29266,3.0194,10000,0),
(33854,0,2,8481.63,956.74744,547.54266,100,0,0),
(33854,0,3,8481.63,952.49744,547.54266,100,0,0),
(33854,0,4,8482.575,952.00696,547.29266,100,13000,3385401),
(33854,0,5,8481.23,945.59576,547.54266,100,0,0),
(33854,0,6,8480.98,940.59576,547.54266,100,0,0),
(33854,0,7,8480.23,932.34576,547.54266,100,0,0),
(33854,0,8,8481.386,929.6846,547.29266,100,7000,3385402),
(33854,0,9,8481.172,937.85876,547.54266,100,0,0),
(33854,0,10,8487.458,937.033,547.29266,100,13000,3385401),
(33854,0,11,8480.569,937.09985,547.54266,100,0,0),
(33854,0,12,8480.319,930.59985,547.54266,100,0,0),
(33854,0,13,8479.819,923.09985,547.54266,100,0,0),
(33854,0,14,8480.319,918.34985,547.54266,100,0,0),
(33854,0,15,8483.181,917.6667,547.29266,100,13000,3385401),
(33854,0,16,8480.855,917.234,547.54266,100,0,0),
(33854,0,17,8479.855,914.234,547.54266,100,0,0),
(33854,0,18,8480.355,906.734,547.54266,100,0,0),
(33854,0,19,8484.031,903.8014,547.29266,100,13000,3385401),
(33854,0,20,8484.093,905.1637,547.5428,100,0,0),
(33854,0,21,8479.593,908.6637,547.5428,100,0,0),
(33854,0,22,8479.343,920.1637,547.5428,100,0,0),
(33854,0,23,8480.593,936.1637,547.5428,100,0,0),
(33854,0,24,8485.843,937.4137,547.5428,100,0,0),
(33854,0,25,8486.654,940.02606,547.2929,100,13000,3385401),
(33854,0,26,8485.67,938.00696,547.5428,100,0,0),
(33854,0,27,8481.17,937.50696,547.5428,100,0,0),
(33854,0,28,8480.92,947.00696,547.5428,100,0,0),
(33854,0,29,8481.685,959.48785,547.29266,3.0194,25000,0);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3385401,3385402);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3385401,3000,1,17,0,0,0,0,0x04,25,273,0,0,0,0,0,0,'random emote'),
(3385402,3000,1,16,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote');
-- Swift Horde Wolf 36223
UPDATE creature SET position_x = 8540.497, position_y = 986.4167, position_z = 547.29266, orientation = 5.4628, spawndist = 0, MovementType = 2 WHERE guid = 534323;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 534324;
DELETE FROM creature_movement WHERE id IN (534323,534324);
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(534323,1,8540.497,986.4167,547.29266,5.4628,47000,3622301),
(534323,2,8537.03,986.37,547.324,3.155,60000,3622301),
(534324,1,8533.108,985.1597,547.3926,0.6806,40000,3622301),
(534324,2,8533.108,985.1597,547.3926,0.6806,55000,3622301);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3622301);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3622301,3000,1,418,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3622301,25000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote');
-- Swift Alliance Steed 35808
UPDATE creature SET position_x = 8541.001, position_y = 980.2708, position_z = 547.32043, orientation = 1.064, spawndist = 0, MovementType = 2 WHERE guid = 534302;
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 534301;
DELETE FROM creature_movement WHERE id IN (534302,534301);
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(534302,1,8541.00,980.2708,547.32043,1.064,60000,3580801),
(534302,2,8538.89,981.222,547.32,2.7183,37000,3580801),
(534301,1,8534.483,980.0851,547.4094,4.014257,75000,3580801),
(534301,2,8534.483,980.0851,547.4094,4.014257,48000,3580801);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3580801);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3580801,5000,1,402,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote');
-- Fhyron Shadesong 33788
UPDATE creature_template SET GossipMenuId = 10648, MovementType = 2 WHERE Entry = 33788;
DELETE FROM `gossip_menu` WHERE `entry` IN (10648);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10648, 14751, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14751);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14751,1,35814);
DELETE FROM npc_text WHERE id IN (14751);
UPDATE creature SET position_x = 8583.612, position_y = 886.94055, position_z = 549.3941, orientation = 0, spawndist = 0, MovementType = 2 WHERE id = 33788;
DELETE FROM creature_movement_template WHERE Entry = 33788;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(33788,0,1,8583.612,886.94055,549.3941,100,0,0),
(33788,0,2,8582.075,903.0688,550.03735,0.306,14000,3378801),
(33788,0,3,8581.076,906.8912,549.1024,100,0,0),
(33788,0,4,8585.078,918.21356,548.66754,0.14424,10000,3378802),
(33788,0,5,8582.959,922.77606,548.1448,100,0,0),
(33788,0,6,8580.459,943.52606,548.1448,100,0,0),
(33788,0,7,8582.839,948.33856,547.6221,5.96117,10000,3378802),
(33788,0,8,8580.145,952.744,547.9812,100,0,0),
(33788,0,9,8567.895,962.744,548.2312,100,0,0),
(33788,0,10,8564.145,974.994,549.2312,100,0,0),
(33788,0,11,8565.45,986.64954,549.3403,1.8695,10000,3378802),
(33788,0,12,8569.538,991.1052,548.52673,100,0,0),
(33788,0,13,8576.626,1006.561,549.2132,100,5000,3378803),
(33788,0,14,8578.748,1007.24927,548.92053,100,0,0),
(33788,0,15,8586.87,1008.4376,548.1278,100,5000,3378803),
(33788,0,16,8589.764,1006.3652,547.9889,100,0,0),
(33788,0,17,8603.764,1013.8652,548.9889,100,0,0),
(33788,0,18,8609.514,1032.8652,558.4889,100,0,0),
(33788,0,19,8612.658,1035.2927,558.3499,0.22045,10000,3378802),
(33788,0,20,8612.426,1037.053,558.3382,100,0,0),
(33788,0,21,8613.692,1042.3131,558.3265,0.197277,10000,3378802),
(33788,0,22,8609.545,1045.8429,558.30994,100,0,0),
(33788,0,23,8604.545,1065.5929,558.55994,100,0,0),
(33788,0,24,8601.295,1079.0929,558.55994,100,0,0),
(33788,0,25,8602.397,1081.3727,558.2934,0.54489,14000,3378804),
(33788,0,26,8600.131,1086.8867,558.3887,100,0,0),
(33788,0,27,8600.864,1092.9006,557.48395,6.160894,10000,3378802),
(33788,0,28,8595.059,1087.8369,556.8869,100,0,0),
(33788,0,29,8581.309,1072.3369,557.6369,100,0,0),
(33788,0,30,8564.559,1070.0869,554.8869,100,0,0),
(33788,0,31,8551.059,1062.8369,551.3869,100,0,0),
(33788,0,32,8547.754,1051.2732,550.28986,5.80499,5000,3378805),
(33788,0,33,8557.891,1029.9232,548.12067,100,0,0),
(33788,0,34,8566.094,1017.36914,548.16766,100,0,0),
(33788,0,35,8570.943,1008.4668,548.14764,100,0,0),
(33788,0,36,8569.92,986.4512,547.7147,100,0,0),
(33788,0,37,8567.44,973.9194,547.79913,100,0,0),
(33788,0,38,8568.162,947.0933,547.848,100,0,0),
(33788,0,39,8566.031,913.37,548.237,100,0,0),
(33788,0,40,8564.706,894.527,547.6705,100,0,0),
(33788,0,41,8567.681,876.07306,547.5937,100,0,0),
(33788,0,42,8578.911,863.8034,548.4838,100,0,0),
(33788,0,43,8590.869,849.7815,547.6718,100,0,0),
(33788,0,44,8591.145,850.14514,547.88727,100,0,0),
(33788,0,45,8601.395,852.64514,548.13727,100,0,0),
(33788,0,46,8603.909,853.17804,548.0719,1.51862,10000,3378802),
(33788,0,47,8599.555,855.1061,548.2251,100,0,0),
(33788,0,48,8591.701,868.5342,549.37836,1.12158,5000,3378805),
(33788,0,49,8586.149,883.8123,549.25085,0.676106,5000,3378803);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3378801 AND 3378805;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3378801,1900,31,33787,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 33787'),
(3378801,2000,15,63678,0,0,33787,20,1,0,0,0,0,0,0,0,0,'cast 63678'),
(3378801,7500,1,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3378801,7700,0,0,0,0,0,0,0x04,33814,0,0,0,0,0,0,0,'say'),
(3378802,1900,31,33787,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 33787'),
(3378802,2000,15,63678,0,0,33787,20,1,0,0,0,0,0,0,0,0,'cast 63678'),
(3378802,7500,1,273,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3378803,1000,1,273,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3378804,1900,31,33787,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 33787'),
(3378804,2000,15,63678,0,0,33787,20,1,0,0,0,0,0,0,0,0,'cast 63678'),
(3378804,7500,1,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3378804,7700,0,0,0,0,0,0,0x04,33812,0,0,0,0,0,0,0,'say'),
(3378805,2000,1,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote');
-- Visiting Warlock 35475
UPDATE creature_template SET GossipMenuId = 10682 WHERE Entry = 35475;
DELETE FROM `gossip_menu` WHERE `entry` IN (10682);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10682, 14804, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14804);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14804,1,35844);
DELETE FROM npc_text WHERE id IN (14804);
DELETE FROM dbscript_random_templates WHERE `id` = 20379;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20379,1,21121,0,'Part of Visiting Warlock 35475 EAI: - script 1'),
(20379,1,21122,0,'Part of Visiting Warlock 35475 EAI: - script 2'),
(20379,1,21123,0,'Part of Visiting Warlock 35475 EAI: - script 3'),
(20379,1,21124,0,'Part of Visiting Warlock 35475 EAI: - script 4'),
(20379,1,21125,0,'Part of Visiting Warlock 35475 EAI: - script 5');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21121 AND 21125;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21121,0,15,691,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Visiting Warlock 35475 EAI: cast 691'),
(21122,0,15,8722,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Visiting Warlock 35475 EAI: cast 8722'),
(21123,0,15,11939,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Visiting Warlock 35475 EAI: cast 11939'),
(21124,0,15,12746,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Visiting Warlock 35475 EAI: cast 12746'),
(21125,0,15,30146,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Visiting Warlock 35475 EAI: cast 30146');
DELETE FROM `creature_spawn_data` WHERE `Guid` IN (534261,534264,534266,534267);
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES 
(534261,80),(534264,80),(534266,80),(534267,80);
-- Felguard 17252
UPDATE creature_template SET Faction = 35, MinLevel = 1, MaxLevel = 1 WHERE Entry = 17252;
-- Wilfred Fizzlebang 35476
UPDATE creature_template SET GossipMenuId = 10670 WHERE Entry = 35476;
DELETE FROM `gossip_menu` WHERE `entry` IN (10670);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10670, 14787, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14787);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14787,1,35845);
DELETE FROM npc_text WHERE id IN (14787);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 35476);
DELETE FROM creature_template_addon WHERE entry = 35476;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(35476,0,0,0,0,0,0,27986);
DELETE FROM dbscripts_on_relay WHERE id = 21126;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21126,0,1,11,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Wilfred Fizzlebang 35476 EAI: emote'),
(21126,3000,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Wilfred Fizzlebang 35476 EAI: emote'),
(21126,7000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Wilfred Fizzlebang 35476 EAI: emote'),
(21126,10000,1,11,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Wilfred Fizzlebang 35476 EAI: emote'),
(21126,13000,15,45104,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Wilfred Fizzlebang 35476 EAI: cast 45104');
-- Argent Custodian 36069
UPDATE creature SET position_x = 8545.584, position_y = 805.27606, position_z = 558.62, orientation = 0, spawndist = 0, MovementType = 2 WHERE guid = 534307;
UPDATE creature SET position_x = 8548.484, position_y = 823.1233, position_z = 575.78033, orientation = 0, spawndist = 0, MovementType = 4 WHERE guid = 534308; -- linear
DELETE FROM creature_movement WHERE id IN (534307,534308);
INSERT INTO creature_movement (`id`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- 534307
(534307,1,8545.584,805.27606,558.62,100,0,0),
(534307,2,8536.951,818.7686,558.62,100,0,0),
(534307,3,8515.314,820.3863,558.2988,100,0,0),
(534307,4,8493.552,818.8524,558.6894,100,0,0),
(534307,5,8484.993,804.7049,558.68945,100,0,0),
(534307,6,8481.823,791.7691,558.68945,100,0,0),
(534307,7,8485.375,778.3333,558.68945,100,0,0),
(534307,8,8491.066,769.18054,558.68945,100,0,0),
(534307,9,8502.315,761.6406,558.68945,100,0,0),
(534307,10,8515.458,759.0677,558.6894,100,0,0),
(534307,11,8528.095,762.0035,558.68945,100,0,0),
(534307,12,8539.435,769.0851,558.605,100,0,0),
(534307,13,8545.628,779.4549,558.5962,100,0,0),
(534307,14,8548.36,792.8768,558.60803,100,0,0),
-- 534308
(534308,1,8548.484,823.1233,575.78033,100,5000,0),
(534308,2,8557.372,809.6095,575.89764,100,0,0),
(534308,3,8560.677,792.30383,575.81616,100,0,0),
(534308,4,8557.362,774.66364,575.8621,100,0,0),
(534308,5,8547.356,759.8303,575.86914,100,0,0),
(534308,6,8532.683,750.0243,575.8973,100,0,0),
(534308,7,8515.328,746.41583,575.8926,100,0,0),
(534308,8,8497.708,749.8507,575.8926,100,0,0),
(534308,9,8483.394,759.3472,575.8926,100,0,0);
-- Broom 17213
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid = 500838;
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid = 500840;
UPDATE creature SET spawndist = 10, MovementType = 1 WHERE guid = 500841;
-- Huntsman Hakan 35483
UPDATE creature_template SET StaticFlags1 = 2147483648, GossipMenuId = 10650 WHERE Entry = 35483;
DELETE FROM `gossip_menu` WHERE `entry` IN (10650);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10650, 14759, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14759);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14759,1,35840);
DELETE FROM npc_text WHERE id IN (14759);
DELETE FROM dbscript_random_templates WHERE `id` = 20380;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20380,1,21127,0,'Part of Huntsman Hakan 35483 EAI: - script 1 (event - Huntsman Aloke 34789)'),
(20380,1,21128,0,'Part of Huntsman Hakan 35483 EAI: - script 2 (event - Trag Highmountain 35462 & Akiak 35467)');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21127 AND 21128;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21127,1,10,34789,240000,0,0,0,0x08,0,0,0,0,8268.849,805.15735,519.62665,6.2216,'Part of Huntsman Hakan 35483 EAI: summon - 34789'),
(21128,1,53,0,0,0,0,0,0,34157,1,0,0,0,0,0,0,'Part of Huntsman Hakan 35483 EAI: Set worldstate variable to 1');
-- Controled event 1
-- Immuyak 34794
UPDATE creature_template SET GossipMenuId = 10651 WHERE Entry = 34794;
UPDATE creature SET position_x = 8401.674, position_y = 768.783, position_z = 549.57794, orientation = 3.71755, spawndist = 0, MovementType = 0 WHERE id = 34794;
UPDATE creature_template_addon SET stand_state = 1 WHERE entry = 34794;
DELETE FROM `gossip_menu` WHERE `entry` IN (10651);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10651, 14760, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14760);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14760,1,35841);
DELETE FROM npc_text WHERE id IN (14760);
DELETE FROM creature_movement_template WHERE Entry = 34794;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34794,1,1,8401.674,768.783,549.57794,3.71755,8000,3479401),
(34794,1,2,8400.6,769.1613,549.4226,100,0,0),
(34794,1,3,8399.519,770.32465,549.0026,0,2000,0),
(34794,1,4,8401.11,769.42017,549.5891,100,0,0),
(34794,1,5,8402.702,766.5156,549.67554,0.4886,7000,0),
(34794,1,6,8403.291,764.3941,549.3573,100,0,0),
(34794,1,7,8404.041,761.6441,549.1073,100,0,0),
(34794,1,8,8404.88,757.2726,548.5391,6.0388,6000,3479402),
(34794,1,9,8403.277,757.77783,548.80853,100,0,0),
(34794,1,10,8399.777,762.52783,547.80853,100,0,0),
(34794,1,11,8399.277,766.77783,548.80853,100,0,0),
(34794,1,12,8401.674,768.783,549.57794,3.71755,1000,3479403);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3479401 AND 3479403;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3479401,1,28,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'stand'),
(3479401,2000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3479401,2100,0,0,0,0,0,0,0x04,35089,0,0,0,0,0,0,0,'say'),
(3479402,1000,1,53,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3479403,1,28,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'sit'),
(3479403,100,20,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'idle');
-- Huntsman Aloke 34789
UPDATE creature_template SET MovementType = 2 WHERE Entry = 34789;
DELETE FROM creature_movement_template WHERE Entry = 34789;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34789,0,1,8268.849,805.15735,519.62665,6.2216,100,3478901),
(34789,0,2,8285.328,804.14233,524.64557,100,0,0),
(34789,0,3,8314.141,802.6931,534.7058,100,0,0),
(34789,0,4,8323.349,801.7743,537.2257,100,0,0),
(34789,0,5,8334.598,800.97986,540.6842,100,0,0),
(34789,0,6,8349.518,800.00867,544.7284,100,0,0),
(34789,0,7,8374.103,797.4149,547.91516,100,0,0),
(34789,0,8,8380.045,782.9531,547.64935,100,0,0),
(34789,0,9,8389.467,763.99133,547.3127,100,0,0),
(34789,0,10,8400.207,756.666,547.70734,100,0,0),
(34789,0,11,8403.045,758.67535,548.27075,100,25000,3478902),
(34789,0,12,8397.164,761.9245,547.46155,100,0,0),
(34789,0,13,8389.164,777.4245,548.21155,100,0,0),
(34789,0,14,8374.164,793.6745,547.96155,100,0,0),
(34789,0,15,8343.664,798.6745,543.71155,100,0,0),
(34789,0,16,8296.164,802.4245,528.71155,100,0,0),
(34789,0,17,8249.284,804.17365,513.6523,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3478901,3478902);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3478901,1,10,34788,120000,0,0,0,0x08,0,0,0,20079,8272.79,804.086,520.734,6.12805,'summon - 34788 - path 1'),
(3478901,2,10,34788,120000,0,0,0,0x08,0,0,0,20080,8273.06,805.843,520.819,6.12805,'summon - 34788 - path 2'),
(3478901,3,10,34788,120000,0,0,0,0x08,0,0,0,20081,8274.65,804.989,521.329,6.12413,'summon - 34788 - path 3'),
(3478901,4,10,34788,120000,0,0,0,0x08,0,0,0,20082,8274.55,803.273,521.343,6.1634,'summon - 34788 - path 4'),
(3478902,2000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3478902,2100,0,0,0,0,0,0,0x04,35075,0,0,0,0,0,0,0,'say'),
(3478902,5000,35,5,30,0,0,0,0,0,0,0,0,0,0,0,0,'send event 5'),
(3478902,7000,1,397,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3478902,8000,13,1,0,0,195214,506370,17,0,0,0,0,0,0,0,0,'use object'),
(3478902,8001,35,6,30,0,0,0,0,0,0,0,0,0,0,0,0,'send event 6'),
(3478902,20000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3478902,20100,0,0,0,0,0,0,0x04,35090,0,0,0,0,0,0,0,'say');
DELETE FROM creature_spawn_data_template WHERE entry BETWEEN 20079 AND 20082;
INSERT INTO creature_spawn_data_template (entry, RelayId, name) VALUES
(20079,21129,'- RelayId 21129 (event 5 & path1)'),
(20080,21130,'- RelayId 21128 (event 5 & path2)'),
(20081,21131,'- RelayId 21129 (event 5 & path3)'),
(20082,21132,'- RelayId 21130 (event 5 & path4)');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21129 AND 21133;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21129,0,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 5'),
(21129,1,20,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'set path 1'),
(21130,0,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 5'),
(21130,1,20,2,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'set path 2'),
(21131,0,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 5'),
(21131,1,20,2,3,0,0,0,0x04,0,0,0,0,0,0,0,0,'set path 3'),
(21132,0,35,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'send event 5'),
(21132,1,20,2,4,0,0,0,0x04,0,0,0,0,0,0,0,0,'set path 4'),
(21133,0,3,0,0,0,0,0,0x04,0,0,0,0,8408.99,763.142,550.395,100,'move');
-- Gormok Zealot 34788
DELETE FROM creature_movement_template WHERE Entry = 34788;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- path1
(34788,1,1,8286.33,802.677,524.956,100,0,0),
(34788,1,2,8300.91,801.288,530.112,100,0,0),
(34788,1,3,8313.01,800.274,534.255,100,0,0),
(34788,1,4,8327.73,799.328,538.684,100,0,0),
(34788,1,5,8339.12,798.901,542.06,100,0,0),
(34788,1,6,8353.09,798.138,545.611,100,0,0),
(34788,1,7,8364.98,796.86,547.594,100,0,0),
(34788,1,8,8374.05,792.513,547.914,100,0,0),
(34788,1,9,8379.18,783.222,547.581,100,0,0),
(34788,1,10,8384,772.6,547.483,100,0,0),
(34788,1,11,8388.75,763.507,547.307,100,0,0),
(34788,1,12,8397.9,760.667,547.303,100,0,0),
(34788,1,13,8403.71,761.323,548.818,100,100,3),
-- path2
(34788,2,1,8286.56,804.079,524.983,100,0,0),
(34788,2,2,8300.97,802.903,530.159,100,0,0),
(34788,2,3,8313.08,802.137,534.236,100,0,0),
(34788,2,4,8328.04,801.023,538.531,100,0,0),
(34788,2,5,8339.14,800.572,541.999,100,0,0),
(34788,2,6,8352.84,799.79,545.364,100,0,0),
(34788,2,7,8365.45,798.416,547.538,100,0,0),
(34788,2,8,8374.44,794.409,547.924,100,0,0),
(34788,2,9,8380.89,783.94,547.739,100,0,0),
(34788,2,10,8385.72,773.42,547.607,100,0,0),
(34788,2,11,8389.97,764.903,547.334,100,0,0),
(34788,2,12,8398.24,761.609,547.357,100,0,0),
(34788,2,13,8403.51,762.054,548.857,100,100,3),
-- path3
(34788,3,1,8287.98,803.104,525.484,100,0,0),
(34788,3,2,8302.74,802.109,530.784,100,0,0),
(34788,3,3,8315.34,801.022,534.974,100,0,0),
(34788,3,4,8330.14,800.072,539.284,100,0,0),
(34788,3,5,8341.42,799.671,542.663,100,0,0),
(34788,3,6,8354.99,798.653,545.945,100,0,0),
(34788,3,7,8367.32,797.182,547.747,100,0,0),
(34788,3,8,8375.52,792.397,547.923,100,0,0),
(34788,3,9,8380.82,781.799,547.696,100,0,0),
(34788,3,10,8385.7,771.101,547.549,100,0,0),
(34788,3,11,8390.31,762.358,547.298,100,0,0),
(34788,3,12,8399.03,760.865,547.421,100,0,0),
(34788,3,13,8404.32,761.333,549.036,100,100,3),
-- path4
(34788,4,1,8288.06,801.666,525.585,100,0,0),
(34788,4,2,8302.58,800.755,530.745,100,0,0),
(34788,4,3,8314.78,800.027,534.862,100,0,0),
(34788,4,4,8329.84,798.918,539.255,100,0,0),
(34788,4,5,8341.03,798.514,542.672,100,0,0),
(34788,4,6,8354.8,797.559,546.06,100,0,0),
(34788,4,7,8367.13,796.277,547.787,100,0,0),
(34788,4,8,8375.19,791.634,547.903,100,0,0),
(34788,4,9,8379.97,781.494,547.597,100,0,0),
(34788,4,10,8384.89,770.502,547.487,100,0,0),
(34788,4,11,8389.23,761.93,547.296,100,0,0),
(34788,4,12,8398.63,760.096,547.405,100,0,0),
(34788,4,13,8404.31,760.96,548.971,100,100,3);
-- Controled event 2
-- Trag Highmountain 35462
-- Akiak 35467
UPDATE creature_template SET extraFlags=4096 WHERE Entry IN (35462,35467);
UPDATE creature_template SET GossipMenuId = 10660 WHERE Entry = 35462;
UPDATE creature SET position_x = 8262.674, position_y = 803.59143, position_z = 517.5305, orientation = 6.20, spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (35462,35467);
DELETE FROM `gossip_menu` WHERE `entry` IN (10660);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10660, 14771, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(14771);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(14771,1,35904);
DELETE FROM npc_text WHERE id IN (14771);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3546201 AND 3546203;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3546201,1000,31,35483,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 35483'),
(3546201,1100,15,67846,0,0,35483,20,1,0,0,0,0,0,0,0,0,'cast 67846'),
(3546202,1000,31,35472,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 35472'),
(3546202,1100,15,67846,0,0,35472,20,1,0,0,0,0,0,0,0,0,'cast 67846'),
(3546203,0,35,5,20,0,0,0,0,0,0,0,0,0,0,0,0,'send event 5'),
(3546203,1,53,0,0,0,0,0,0,34157,0,0,0,0,0,0,0,'Set worldstate variable to 0');
DELETE FROM `spawn_group` WHERE id = 34157;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34157, 'Icecrown - Argent Tournament Grounds - Trag Highmountain 35462 & Akiak 35467', 0, 0, 20889, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 34157;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34157, 534247, 0),
(34157, 534248, 1);
DELETE FROM `spawn_group_formation` WHERE id = 34157;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34157, 2, 3, 0, 34157, 2, 'Icecrown - Argent Tournament Grounds - Trag Highmountain 35462 & Akiak 35467');
DELETE FROM `waypoint_path_name` WHERE PathId = 34157;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34157,'Icecrown - Argent Tournament Grounds - Trag Highmountain 35462 & Akiak 35467');
DELETE FROM `waypoint_path` WHERE PathId = 34157;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34157,1,8262.674,803.59143,517.5305,100,0,0),
(34157,2,8305.38,801.73785,531.7619,100,0,0),
(34157,3,8326.279,800.0344,538.2956,100,0,0),
(34157,4,8350.439,798.17365,545.03064,100,0,0),
(34157,5,8372.41,795.3733,547.9034,100,0,0),
(34157,6,8376.16,790.3889,547.9537,100,0,0),
(34157,7,8378.017,783.71704,547.57733,100,0,0),
(34157,8,8374.289,783.21704,547.5678,100,5000,3546201),
(34157,9,8378.56,777.1684,547.42505,100,0,0),
(34157,10,8386.493,771.44965,547.6017,100,0,0),
(34157,11,8392.629,764.533,547.3311,100,0,0),
(34157,12,8395.431,766.35767,547.3111,100,7000,0),
(34157,13,8388.022,766.9601,547.43774,100,0,0),
(34157,14,8398.067,749.4583,547.29266,100,0,0),
(34157,15,8409.759,736.5868,547.29266,100,0,0),
(34157,16,8423.5205,723.86115,547.3255,100,0,0),
(34157,17,8437.599,712.17706,547.29266,100,0,0),
(34157,18,8453.366,696.30554,547.29266,100,0,0),
(34157,19,8451.473,694.6198,547.29266,100,10000,0),
(34157,20,8474.566,658.29517,547.29517,100,0,0),
(34157,21,8486.028,638.6441,547.3146,100,0,0),
(34157,22,8498.194,627.8594,547.66943,100,0,0),
(34157,23,8518.751,626.9583,547.8308,100,0,0),
(34157,24,8541.983,632.4184,547.90894,100,0,0),
(34157,25,8555.942,655.46875,547.85614,100,0,0),
(34157,26,8557.301,676.40106,547.2934,100,0,0),
(34157,27,8558.02,690.7656,547.2934,100,0,0),
(34157,28,8566.896,700.4757,547.29315,100,0,0),
(34157,29,8575.138,697.6268,547.29315,100,0,0),
(34157,30,8578.4,694.69617,547.30566,100,10000,0),
(34157,31,8576.154,700.8368,547.293,100,0,0),
(34157,32,8575.617,710.5191,547.2931,100,0,0),
(34157,33,8590.369,727.1268,547.5538,100,0,0),
(34157,34,8614.176,751.5677,547.5537,100,0,0),
(34157,35,8636.414,770.0643,547.5538,100,0,0),
(34157,36,8646.173,780.59375,547.6172,100,0,0),
(34157,37,8644.976,801.69794,547.54285,100,0,0),
(34157,38,8635.423,819.94965,547.5538,100,0,0),
(34157,39,8616.68,832.61633,547.5865,100,0,0),
(34157,40,8610.565,836.2726,547.67914,100,0,0),
(34157,41,8604.308,846.783,547.5818,100,0,0),
(34157,42,8593.093,859.3958,547.5538,100,0,0),
(34157,43,8577.326,873.0278,547.5538,100,0,0),
(34157,44,8570.32,881.8316,547.5538,100,0,0),
(34157,45,8570.481,895.4358,547.5538,100,0,0),
(34157,46,8573.577,917.4774,547.5538,100,0,0),
(34157,47,8576.595,942.3785,547.5538,100,0,0),
(34157,48,8574.414,977.8594,547.56494,100,0,0),
(34157,49,8575.8545,993.5191,547.3028,100,0,0),
(34157,50,8559.968,1011.2639,547.30505,100,0,0),
(34157,51,8540.439,1028.1094,547.29266,100,0,0),
(34157,52,8521.679,1027.3872,547.29266,100,0,0),
(34157,53,8515.602,1018.1649,547.47015,100,0,0),
(34157,54,8515.255,1010.2448,547.47015,100,7000,0),
(34157,55,8513.621,1022.7952,547.3179,100,0,0),
(34157,56,8496.935,1024.375,547.3064,100,0,0),
(34157,57,8479.435,1019.467,547.29266,100,0,0),
(34157,58,8475.203,1005.9149,547.29266,100,0,0),
(34157,59,8474.873,983.09204,547.29266,100,0,0),
(34157,60,8474.769,957.69794,547.29333,100,0,0),
(34157,61,8474.898,934.5208,547.3003,100,0,0),
(34157,62,8473.023,906.48785,547.29266,100,0,0),
(34157,63,8468.549,888.684,547.40137,100,0,0),
(34157,64,8467.093,876.17365,547.3256,100,0,0),
(34157,65,8455.665,872.4514,547.30005,100,0,0),
(34157,66,8434.089,871.3958,547.29266,100,0,0),
(34157,67,8412.13,868.0799,547.29266,100,0,0),
(34157,68,8396.436,870.6632,547.33496,100,0,0),
(34157,69,8391.782,877.4844,547.3406,100,5000,3546202),
(34157,70,8381.709,868.4427,548.002,100,0,0),
(34157,71,8372.123,853.44794,548.16046,100,0,0),
(34157,72,8372.419,833.0816,547.99603,100,0,0),
(34157,73,8373.799,818.27606,547.99603,100,0,0),
(34157,74,8369.057,802.24304,547.82825,100,0,0),
(34157,75,8357.564,799.7552,546.3661,100,0,0),
(34157,76,8334.935,801.96875,540.6733,100,0,0),
(34157,77,8313.622,803.92017,534.3822,100,0,0),
(34157,78,8282.622,804.34375,523.8098,100,0,0),
(34157,79,8243.248,803.158,511.66614,100,0,0),
(34157,80,8216.924,797.4601,503.10858,100,0,0),
(34157,81,8182.037,780.0166,491.62924,100,0,0),
(34157,82,8157.471,764.1493,485.7867,100,0,0),
(34157,83,8135.133,754.0469,483.746,100,0,0),
(34157,84,8130.2812,760.6424,482.98935,100,8000,0),
(34157,85,8109.2656,742.6042,481.85635,100,0,0),
(34157,86,8083.2476,733.36633,482.87173,100,0,0),
(34157,87,8052.991,721.1476,488.101,100,1000,3546203);
DELETE FROM conditions WHERE condition_entry IN (20889);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20889, 42, 34157, 1, 1, 0, 'Icecrown - Argent Tournament Grounds - Trag Highmountain 35462 & Akiak 35467');
DELETE FROM worldstate_name WHERE Id=34157;
INSERT INTO worldstate_name(Id, Name) VALUES
(34157,'Icecrown - Argent Tournament Grounds - Trag Highmountain 35462 & Akiak 35467');
-- Herald Beluus 35501
UPDATE creature_template SET StaticFlags1 = 2147483648 WHERE Entry = 35501;
DELETE FROM dbscript_random_templates WHERE `id` = 20381;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20381,1,21134,0,'Part of Herald Beluus 35501 EAI: - script 1 (event - Highlord Tirion Fordring 35361 Self)'),
(20381,1,21135,0,'Part of Herald Beluus 35501 EAI: - script 2 (event - Highlord Tirion Fordring 35361 - Horde Event)'),
(20381,1,21136,0,'Part of Herald Beluus 35501 EAI: - script 3 (event - Highlord Tirion Fordring 35361 - Alliance Event)'),
(20381,1,21137,0,'Part of Herald Beluus 35501 EAI: - script 4 (event - Val\'kyr attack)');
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `Id` IN (35810,35811,35812,35828,35820);
UPDATE `broadcast_text` SET `ChatTypeID` = 2 WHERE `Id` IN (35526);
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 21134 AND 21137;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21134,1,10,35361,240000,0,0,0,0x08,0,0,0,88,8514.867,999.86115,547.4722,1.564,'Part of Herald Beluus 35501 EAI: summon - 35361 - Path1'),
(21135,1,10,35361,400000,0,0,0,0x08,0,0,0,102,8515.059,907.5208,547.23425,1.6036,'Part of Herald Beluus 35501 EAI: summon - 35361 - Path2 (Horde Event)'),
(21135,2,10,35373,120000,0,0,0,0x08,0,0,0,200,8188.392,653.6906,583.96173,0,'Part of Herald Beluus 35501 EAI: summon - 35373 - Path1 (Horde Event)'),
(21135,3,10,35373,120000,0,0,0,0x08,0,0,0,201,8181.8203,654.48785,571.4857,0,'Part of Herald Beluus 35501 EAI: summon - 35373 - Path2 (Horde Event)'),
(21136,1,10,35361,400000,0,0,0,0x08,0,0,0,102,8515.059,907.5208,547.23425,1.6036,'Part of Herald Beluus 35501 EAI: summon - 35361 - Path2 (Alliance Event)'),
(21136,2,10,35299,120000,0,0,0,0x08,0,0,0,200,8188.392,653.6906,583.96173,0,'Part of Herald Beluus 35501 EAI: summon - 35299 - Path1 (Alliance Event)'),
(21136,3,10,35299,120000,0,0,0,0x08,0,0,0,201,8181.8203,654.48785,571.4857,0,'Part of Herald Beluus 35501 EAI: summon - 35299 - Path2 (Alliance Event)'),
(21137,1,10,35474,400000,0,0,0,0x08,0,0,0,200,8230.726,1390.967,713.79755,0,'Part of Herald Beluus 35501 EAI: summon - 35474 - Path1 (Val\'kyr)'),
(21137,100,10,35474,300000,0,0,0,0x08,0,0,0,102,8262.771,1333.0365,753.9348,0,'Part of Herald Beluus 35501 EAI: summon - 35474 - Path2 (Val\'kyr)'),
(21137,1000,10,35474,300000,0,0,0,0x08,0,0,0,103,8253.246,1361.1893,749.02026,0,'Part of Herald Beluus 35501 EAI: summon - 35474 - Path3 (Val\'kyr)'),
(21137,3000,10,35474,300000,0,0,0,0x08,0,0,0,102,8202.58,1387.4862,756.9537,0,'Part of Herald Beluus 35501 EAI: summon - 35474 - Path2 (Val\'kyr)'),
(21137,4000,10,35474,300000,0,0,0,0x08,0,0,0,103,8190.051,1357.118,757.51324,0,'Part of Herald Beluus 35501 EAI: summon - 35474 - Path3 (Val\'kyr)'),
(21137,6000,10,35474,300000,0,0,0,0x08,0,0,0,102,8258.504,1321.8263,728.9146,0,'Part of Herald Beluus 35501 EAI: summon - 35474 - Path2 (Val\'kyr)'),
(21137,7000,10,35474,300000,0,0,0,0x08,0,0,0,103,8230.726,1390.967,713.79755,0,'Part of Herald Beluus 35501 EAI: summon - 35474 - Path3 (Val\'kyr)'),
(21137,9000,10,35474,300000,0,0,0,0x08,0,0,0,102,8225.838,1322.066,726.1729,0,'Part of Herald Beluus 35501 EAI: summon - 35474 - Path2 (Val\'kyr)'),
(21137,11000,10,35474,300000,0,0,0,0x08,0,0,0,103,8225.447,1311.0521,730.18195,0,'Part of Herald Beluus 35501 EAI: summon - 35474 - Path3 (Val\'kyr)'),
(21137,13000,10,35474,300000,0,0,0,0x08,0,0,0,102,8240.488,1315.5902,742.0953,0,'Part of Herald Beluus 35501 EAI: summon - 35474 - Path2 (Val\'kyr)');
-- Highlord Tirion Fordring 35361
UPDATE creature_template SET MovementType = 0 WHERE Entry = 35361;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 35361);
DELETE FROM creature_template_addon WHERE entry = 35361;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(35361,0,0,0,0,0,0,'57545 57550');
DELETE FROM creature_movement_template WHERE Entry = 35361;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- path 1
(35361,1,1,8514.867,999.86115,547.4722,1.564,100,3536101),
(35361,1,2,8515.16,1016.08,547.471,100,0,0),
(35361,1,3,8507.33,1022.91,547.293,100,0,0),
(35361,1,4,8488.572,1022.4636,547.3068,100,0,0),
(35361,1,5,8477.175,1011.3143,547.29266,100,0,0),
(35361,1,6,8476.75,979.3264,547.29266,100,0,0),
(35361,1,7,8477.176,957.4167,547.29266,100,0,0),
(35361,1,8,8476.847,931.9757,547.29346,100,0,0),
(35361,1,9,8471.972,895.5625,547.29266,100,0,0),
(35361,1,10,8469.604,875.2882,547.29266,100,0,0),
(35361,1,11,8458.653,868.74133,547.29266,100,0,0),
(35361,1,12,8447.609,869.55554,547.29266,100,0,0),
(35361,1,13,8439.721,864.42017,547.29266,100,0,0),
(35361,1,14,8435.716,840.38196,547.29266,100,0,0),
(35361,1,15,8428.513,828.57117,547.85376,100,0,0),
(35361,1,16,8422.193,820.2083,547.9896,100,0,0),
(35361,1,17,8410.686,819.0278,547.29266,100,0,0),
(35361,1,18,8410.835,826.9358,549.0957,100,112000,3536102),
(35361,1,19,8410.537,816.98785,547.2958,100,0,0),
(35361,1,20,8433.81,825.7448,547.31805,100,0,0),
(35361,1,21,8440.775,861.7101,547.29266,100,0,0),
(35361,1,22,8464.726,873.53644,547.31976,100,0,0),
(35361,1,23,8469.929,899.9844,547.25555,100,0,0),
(35361,1,24,8476.481,926.3351,547.29266,100,100,1),
-- path2
(35361,2,1,8515.059,907.5208,547.23425,1.6036,100,6),
(35361,2,2,8513.747,932.5833,547.55383,100,0,0),
(35361,2,3,8513.727,965.73785,547.47015,100,0,0),
(35361,2,4,8514.482,1002.0434,547.47034,100,100,3),
-- path3
(35361,3,1,8514.765,967.8906,547.47015,100,0,0),
(35361,3,2,8514.638,935.73615,547.55383,100,0,0),
(35361,3,3,8514.973,903.3768,549.0962,100,0,0),
(35361,3,4,8515.091,881.7726,558.2988,100,0,0),
(35361,3,5,8515.427,854.36804,558.3026,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (3536101,3536102);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3536101,1,0,0,0,0,35501,534283,7|0x10,35812,0,0,0,0,0,0,0,'buddy say'),
(3536101,2,25,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Run OFF'),
(3536102,1000,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,1100,0,0,0,0,0,0,0x04,35799,0,0,0,0,0,0,0,''),
(3536102,4000,1,378,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,11000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,12000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,12100,0,0,0,0,0,0,0x04,35800,0,0,0,0,0,0,0,''),
(3536102,15000,1,378,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,22000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,24000,1,378,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,24100,0,0,0,0,0,0,0x04,35801,0,0,0,0,0,0,0,''),
(3536102,28000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,30000,1,378,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,30100,0,0,0,0,0,0,0x04,35802,0,0,0,0,0,0,0,''),
(3536102,53000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,55000,1,378,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,55100,0,0,0,0,0,0,0x04,35803,0,0,0,0,0,0,0,''),
(3536102,66000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,68000,1,378,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,68100,0,0,0,0,0,0,0x04,35805,0,0,0,0,0,0,0,''),
(3536102,81000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,83000,1,378,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,83100,0,0,0,0,0,0,0x04,35806,0,0,0,0,0,0,0,''),
(3536102,94000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,96000,1,378,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,96100,0,0,0,0,0,0,0x04,35807,0,0,0,0,0,0,0,''),
(3536102,105000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,105001,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(3536102,109001,1,397,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
-- Horde event
-- Tournament Wind Rider 35373
UPDATE creature_template SET SpeedWalk = (2.5 / 2.5), SpeedRun = (24 / 7), InhabitType = 4 WHERE Entry = 35373;
DELETE FROM creature_movement_template WHERE Entry = 35373;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- path 1 - with Thrall
(35373,1,1,8188.392,653.6906,583.96173,100,100,3537301),
(35373,1,2,8189.473,662.5625,588.4474,100,0,0),
(35373,1,3,8190.3594,669.8368,592.1253,100,0,0),
(35373,1,4,8194.231,687.7743,600.9025,100,0,0),
(35373,1,5,8199.114,706.3316,606.8753,100,0,0),
(35373,1,6,8221.109,727.71875,612.6253,100,0,0),
(35373,1,7,8302.245,720.8368,626.29144,100,0,0),
(35373,1,8,8324.989,664.3143,624.5137,100,0,0),
(35373,1,9,8359.535,632.3715,615.37524,100,0,0),
(35373,1,10,8414.608,615.05383,592.7087,100,0,0),
(35373,1,11,8464.842,663.72394,560.2368,100,0,0),
(35373,1,12,8429.692,724.69446,553.0687,100,0,0),
(35373,1,13,8412.003,737.9393,548.5977,100,0,0),
(35373,1,14,8407.263,740.8299,548.0423,2.633,10000,3537303),
-- path 3 - with Thrall
(35373,3,1,8382.473,770.2083,560.1245,100,0,0),
(35373,3,2,8389.666,799.1927,571.7078,100,0,0),
(35373,3,3,8439.088,844.9531,577.4577,100,0,0),
(35373,3,4,8491.686,872.42365,581.8465,100,0,0),
(35373,3,5,8573.325,890.7691,581.8465,100,0,0),
(35373,3,6,8658.294,896.4809,581.8465,100,0,0),
(35373,3,7,8698.516,897.49304,562.6515,100,0,0),
(35373,3,8,8789.742,895.7639,452.62497,100,0,0),
(35373,3,9,8915.26,1045.3177,452.62497,100,100,1),
-- path 2 - with Garrosh
(35373,2,1,8181.8203,654.48785,571.4857,100,100,3537302),
(35373,2,2,8182.7666,660.9809,584.98596,100,0,0),
(35373,2,3,8183.713,667.47394,598.4862,100,0,0),
(35373,2,4,8183.558,684.4149,599.3198,100,0,0),
(35373,2,5,8191.257,702.1684,605.3474,100,0,0),
(35373,2,6,8213.932,710.3785,611.9018,100,0,0),
(35373,2,7,8245.909,700.59375,617.5123,100,0,0),
(35373,2,8,8307.236,659.92706,612.84674,100,0,0),
(35373,2,9,8374.998,624.11456,603.62463,100,0,0),
(35373,2,10,8442.234,627.6424,586.90265,100,0,0),
(35373,2,11,8460.1045,663.13544,570.708,100,0,0),
(35373,2,12,8434.889,716.4566,554.9306,100,0,0),
(35373,2,13,8400.004,736.375,548.4319,100,0,0),
(35373,2,14,8400.004,736.375,548.4319,2.633,10000,3537304),
-- path 4 - with Garrosh
(35373,4,1,8379.755,758.77606,560.72766,100,0,0),
(35373,4,2,8375.762,816.9583,575.4495,100,0,0),
(35373,4,3,8408.011,979.23956,583.00507,100,0,0),
(35373,4,4,8479.79,1165.7291,583.00507,100,0,0),
(35373,4,5,8556.944,1266.283,583.00507,100,0,0),
(35373,4,6,8639.218,1337.3195,555.4777,100,0,0),
(35373,4,7,8702.511,1362.2935,538.4221,100,0,0),
(35373,4,8,8742.067,1425.5625,484.70026,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3537301 AND 3537304;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3537301,1,10,35368,430000,0,0,0,0x08,0,0,0,0,8188.392,653.6906,583.96173,0,'summon 35368'),
(3537301,10,15,46598,0,0,35368,20,3,0,0,0,0,0,0,0,0,'cast 46598 on buddy'),
(3537302,1,10,35372,430000,0,0,0,0x08,0,0,0,0,8181.8203,654.48785,571.4857,0,'summon 35372'),
(3537302,10,15,46598,0,0,35372,20,3,0,0,0,0,0,0,0,0,'cast 46598 on buddy'),
(3537303,1,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'land'),
(3537303,2000,14,46598,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Remove aura 46598'),
(3537303,3000,35,5,30,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVent 5'),
(3537303,8000,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'fly'),
(3537303,9500,20,3,3,0,0,0,0x04,0,0,0,0,0,0,0,0,'path3'),
(3537304,1,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'land'),
(3537304,2000,14,46598,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Remove aura 46598'),
(3537304,3000,35,6,30,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVent 6'),
(3537304,8000,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'fly'),
(3537304,9500,20,3,4,0,0,0,0x04,0,0,0,0,0,0,0,0,'path4');
DELETE FROM vehicle_seat_addon WHERE SeatEntry=1559;
INSERT INTO vehicle_seat_addon(SeatEntry, SeatOrientation, ExitParamX, ExitParamY, ExitParamZ, ExitParamO, ExitParamValue) VALUES
(1559,0,0,-3,0,0,1);
-- Thrall 35368
UPDATE creature_template SET Faction = 1735, UnitClass = 1, UnitFlags = 768, StaticFlags2 = 2099200 WHERE Entry IN (35368);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 35368);
DELETE FROM creature_template_addon WHERE entry = 35368;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(35368,0,0,0,0,0,0,NULL);
DELETE FROM creature_movement_template WHERE Entry = 35368;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(35368,1,1,8409.241,744.2013,547.59766,4.0,4000,3536801), -- 22:47:06.207
(35368,1,2,8403.52,748.46,547.6952,100,0,0), -- 22:47:10.187
(35368,1,3,8392.298,756.21875,547.29266,100,0,0),
(35368,1,4,8386.951,768.28406,547.74054,100,0,0),
(35368,1,5,8380.951,780.78406,547.74054,100,0,0),
(35368,1,6,8378.945,784.5903,547.6462,100,0,0),
(35368,1,7,8378.093,789.6703,548.0282,100,0,0),
(35368,1,8,8375.174,805.625,547.9151,100,0,0),
(35368,1,9,8376.443,839.5347,547.99603,100,0,0),
(35368,1,10,8377.37,846.671,548.4979,100,0,0),
(35368,1,11,8377.87,852.421,548.2479,100,0,0),
(35368,1,12,8378.297,857.3073,547.99976,100,0,0),
(35368,1,13,8381.025,859.1219,548.46545,100,0,0),
(35368,1,14,8392.775,866.1219,547.71545,100,0,0),
(35368,1,15,8395.349,867.61115,547.3838,100,0,0),
(35368,1,16,8429.402,868.0226,547.29266,100,0,0),
(35368,1,17,8456.489,868.1198,547.29266,100,0,0),
(35368,1,18,8471.247,879.46704,547.29266,100,0,0),
(35368,1,19,8471.102,914.30554,547.29266,100,0,0),
(35368,1,20,8471.9,921.132,547.29266,100,0,0),
(35368,1,21,8471.9,921.132,547.29266,3.0892,58000,3536802), -- 22:48:22.320
(35368,1,22,8475.075,935.9097,547.3033,100,0,0),
(35368,1,23,8474.479,965.4742,547.5432,100,0,0),
(35368,1,24,8474.676,995.02954,547.54266,100,0,0),
(35368,1,25,8476.179,1015.3335,547.568,100,0,0),
(35368,1,26,8490.979,1023.62354,547.5628,100,0,0),
(35368,1,27,8505.424,1023.3341,547.39185,100,0,0),
(35368,1,28,8514.545,1017.1858,547.47015,100,0,0),
(35368,1,29,8514.98,1006.84,547.47015,100,88100,3536803), -- 22:49:54.567
(35368,1,30,8515.037,996.9323,547.48627,100,0,0), -- 22:51:21.977
(35368,1,31,8515.14,996.84576,547.7251,100,0,0),
(35368,1,32,8514.713,967.88165,547.5127,100,0,0),
(35368,1,33,8514.814,935.6492,548.0689,100,0,0),
(35368,1,34,8516.564,924.8992,548.0689,100,0,0),
(35368,1,35,8516.564,919.1492,547.8189,100,0,0),
(35368,1,36,8517.064,908.6492,547.5689,100,0,0),
(35368,1,37,8514.973,903.3768,549.0962,100,0,0),
(35368,1,38,8515.359,883.3682,558.4475,100,0,0),
(35368,1,39,8515.091,881.7726,558.2988,100,0,0),
(35368,1,40,8515.427,854.36804,558.3026,100,100,3536804);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3536801 AND 3536804;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3536801,1000,1,273,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 22:47:07.824
(3536801,1001,0,0,0,0,35501,534283,7|0x10,35811,0,0,0,0,0,0,0,'buddy say'),
(3536801,1002,53,0,0,0,0,0,0,34158,1,0,0,0,0,0,0,'Set worldstate variable to 1'),
(3536802,3000,16,16181,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'play sound'), -- 22:48:25.472
(3536802,3001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3536802,3002,0,0,0,0,0,0,0x04,35552,0,0,0,0,0,0,0,'Say'), -- Garrosh, I expect you t....
(3536802,6000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 22:48:28.804
(3536802,10000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 22:48:32.015
(3536802,34000,16,16182,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'play sound'), -- 22:48:56.247
(3536802,34001,0,0,0,0,0,0,0x04,35558,0,0,0,0,0,0,0,'Say'), -- We are guests here, Garrosh...
(3536802,34002,1,378,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3536802,40000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote'), -- 22:49:02.714
(3536802,42000,15,69007,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast'), -- 22:49:04.352 should hitEntry: 30298 Low: 4460059
(3536802,42001,54,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'SHEATH_STATE_MELEE'), -- 22:49:04.352
(3536803,7000,16,16056,2,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy play sound'), -- 22:50:01.240
(3536803,7001,1,2,0,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy emote'),
(3536803,7002,0,0,0,0,35361,10,7,35785,0,0,0,0,0,0,0,'buddy say'),
(3536803,10000,1,378,0,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 22:50:04.608
(3536803,13000,1,0,0,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy reset emote'), -- 22:50:07.927
(3536803,15000,16,16183,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'play sound'), -- 22:50:09.539 
(3536803,15001,0,0,0,0,0,0,0x04,35559,0,0,0,0,0,0,0,'Say'), -- Thank you for the invitation...
(3536803,15002,1,66,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3536803,18000,1,378,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 22:50:12.282
(3536803,24000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote'), -- 22:50:18.859
(3536803,26000,16,16029,2,0,35372,15,7,0,0,0,0,0,0,0,0,'buddy play sound'), -- 22:50:20.475
(3536803,26001,1,1,0,0,35372,15,7,0,0,0,0,0,0,0,0,'buddy emote'),
(3536803,26002,0,0,0,0,35372,15,7,35555,0,0,0,0,0,0,0,'buddy say'),
(3536803,29000,16,16057,2,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy play sound'), -- 22:50:23.716
(3536803,29001,0,0,0,0,35361,10,7,35786,0,0,0,0,0,0,0,'buddy say'), -- I hope you'll see
(3536803,29200,1,378,0,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 22:50:24.120
(3536803,38000,1,0,0,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy reset emote'), -- 22:50:33.808
(3536803,41000,16,16184,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'play sound'), -- 22:50:35.431 
(3536803,41001,0,0,0,0,0,0,0x04,35560,0,0,0,0,0,0,0,'Say'), -- Wise words.
(3536803,41002,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3536803,47000,16,16030,2,0,35372,15,7,0,0,0,0,0,0,0,0,'buddy play sound'), -- 22:50:39.899
(3536803,47001,1,274,0,0,35372,15,7,0,0,0,0,0,0,0,0,'buddy emote'),
(3536803,47002,0,0,0,0,35372,15,7,35556,0,0,0,0,0,0,0,'buddy say'),
(3536803,50000,1,1,0,0,35372,15,7,0,0,0,0,0,0,0,0,'buddy emote'),
(3536803,53000,1,1,0,0,35372,15,7,0,0,0,0,0,0,0,0,'buddy emote'),
(3536803,56000,1,1,0,0,35372,15,7,0,0,0,0,0,0,0,0,'buddy emote'),
(3536803,60000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,2.29645,'move'), -- 22:50:54.449 -- face garosh
(3536803,60001,16,16185,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'play sound'), -- 22:50:54.449
(3536803,60002,0,0,0,0,0,0,0x04,35561,0,0,0,0,0,0,0,'Say'), -- Garrosh, enough!
(3536803,60100,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3536803,63000,16,16058,2,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy play sound'), -- 22:50:57.742
(3536803,63001,0,0,0,0,35361,10,7,35787,0,0,0,0,0,0,0,'buddy say'), -- Under my roof, gentlemen,...
(3536803,63200,1,378,0,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 22:50:58.177
(3536803,68000,1,0,0,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy reset emote'), -- 22:51:03.041
(3536803,70000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.608927,'move'), -- 22:51:04.617 -- face Tirion
(3536803,70100,16,16186,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'play sound'),
(3536803,70101,0,0,0,0,0,0,0x04,35562,0,0,0,0,0,0,0,'Say'), -- Of course, Tirion. I apologize...
(3536803,70500,1,378,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 22:51:05.009
(3536803,77000,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'reset emote'), -- 22:51:12.277
(3536803,78000,16,16031,2,0,35372,15,7,0,0,0,0,0,0,0,0,'buddy play sound'), -- 22:51:13.961
(3536803,78001,1,1,0,0,35372,15,7,0,0,0,0,0,0,0,0,'buddy emote'),
(3536803,78100,0,0,0,0,35372,15,7,35557,0,0,0,0,0,0,0,'buddy say'),
(3536803,82000,16,16059,2,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy play sound'), -- 22:51:17.203
(3536803,82001,1,1,0,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy emote'),
(3536803,82100,0,0,0,0,35361,10,7,35788,0,0,0,0,0,0,0,'buddy say'), -- If you will follow me, then.
(3536803,85001,1,274,0,0,35372,15,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 22:51:20.965
(3536803,87000,20,2,3,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy Path3'), -- 22:51:22.458
(3536803,88000,20,2,2,0,35372,15,7,0,0,0,0,0,0,0,0,'buddy Path2'), -- 22:51:23.672 
(3536804,10,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
-- Garrosh Hellscream 35372
UPDATE creature_template SET Faction = 1735, UnitClass = 1, UnitFlags = 768, StaticFlags2 = 2099200 WHERE Entry IN (35372);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 35372);
DELETE FROM creature_template_addon WHERE entry = 35372;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(35372,0,0,0,0,0,0,NULL);
DELETE FROM creature_movement_template WHERE Entry = 35372;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(35372,1,1,8401.886,739.80786,547.2527,4.0,7000,0), -- 22:47:04.599
(35372,1,2,8392.298,756.21875,547.29266,100,0,0), -- 22:47:11.054
(35372,1,3,8386.83,768.29675,547.7185,100,0,0),
(35372,1,4,8381.08,780.54675,547.7185,100,0,0),
(35372,1,5,8377.945,789.7909,548.0309,100,0,0),
(35372,1,6,8375.501,805.861,547.95874,100,0,0),
(35372,1,7,8376.572,839.8812,548.2448,100,0,0),
(35372,1,8,8378.455,857.57947,548.1967,100,0,0),
(35372,1,9,8395.635,867.5205,547.6593,100,0,0),
(35372,1,10,8429.529,868.0601,547.5451,100,0,0),
(35372,1,11,8456.701,868.2848,547.54266,100,0,0),
(35372,1,12,8471.328,879.7748,547.54266,100,0,0),
(35372,1,13,8471.77,916.905,547.29266,100,0,0),
(35372,1,14,8471.77,916.905,547.29266,3.1066,60000,3537201), -- 22:48:22.320
(35372,1,15,8475.107,936.0376,547.54767,100,0,0),
(35372,1,16,8474.333,965.2847,547.29266,100,0,0),
(35372,1,17,8474.915,994.92993,547.54266,100,0,0),
(35372,1,18,8476.022,1015.32983,547.568,100,0,0),
(35372,1,19,8490.998,1023.5925,547.56714,100,0,0),
(35372,1,20,8505.21,1023.4375,547.29266,100,0,0),
(35372,1,21,8514.545,1017.1858,547.47015,100,0,0),
(35372,1,22,8511.29,1011,547.47015,5.054779,1000,3), -- face tirion -- 22:50:01.044
(35372,2,1,8515.037,996.9323,547.48627,100,0,0), -- 22:51:23.672 
(35372,2,2,8514.765,967.8906,547.47015,100,0,0),
(35372,2,3,8514.638,935.73615,547.55383,100,0,0),
(35372,2,4,8514.973,903.3768,549.0962,100,0,0),
(35372,2,5,8515.091,881.7726,558.2988,100,0,0),
(35372,2,6,8515.427,854.36804,558.3026,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3537201;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3537201,18000,16,16027,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'play sound'), -- 22:48:40.090
(3537201,18001,1,5,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3537201,18100,0,0,0,0,0,0,0x04,35553,0,0,0,0,0,0,0,'Say'), -- 22:48:40.192 Pah! That was a show of strength....
(3537201,21000,1,274,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 22:48:43.307
(3537201,24000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 22:48:46.527
(3537201,27000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 22:48:49.773
(3537201,38000,54,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'SHEATH_STATE_MELEE'), -- 22:48:56.247
(3537201,46000,16,16028,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'play sound'), -- 22:49:04.352
(3537201,46001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3537201,46100,0,0,0,0,0,0,0x04,35554,0,0,0,0,0,0,0,'Say'), -- 22:49:04.452 What honor is there in ...
(3537201,49000,1,6,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 22:49:07.614
(3537201,56000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'); -- 22:49:14.117
-- Kor'kron Elite 35460
-- missing added
DELETE FROM creature_addon WHERE guid IN (500534,500843,500845,500846);
DELETE FROM creature_movement WHERE id IN (500534,500843,500845,500846);
DELETE FROM game_event_creature WHERE guid IN (500534,500843,500845,500846);
DELETE FROM game_event_creature_data WHERE guid IN (500534,500843,500845,500846);
DELETE FROM creature_battleground WHERE guid IN (500534,500843,500845,500846);
DELETE FROM creature_linking WHERE guid IN (500534,500843,500845,500846);
DELETE FROM creature WHERE guid IN (500534,500843,500845,500846);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(500534,35460,571,1,1,8431.117,791.85767,546.8923,0,10,10,0,0),
(500843,35460,571,1,1,8431.117,791.85767,546.8923,0,10,10,0,0),
(500845,35460,571,1,1,8431.117,791.85767,546.8923,0,10,10,0,0),
(500846,35460,571,1,1,8431.117,791.85767,546.8923,0,10,10,0,0);
UPDATE creature_template SET extraFlags=4096 WHERE Entry IN (35460);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 35460);
DELETE FROM creature_template_addon WHERE entry = 35460;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(35460,0,0,1,1,0,0,NULL);
DELETE FROM `spawn_group` WHERE id = 34158;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34158, 'Icecrown - Argent Tournament Grounds - Kor\'kron Elite 35460 x4', 0, 0, 20891, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 34158;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34158, 500534, 0),
(34158, 500843, 1),
(34158, 500845, 2),
(34158, 500846, 3);
DELETE FROM `spawn_group_formation` WHERE id = 34158;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34158, 4, 3, 0, 34158, 2, 'Icecrown - Argent Tournament Grounds - Kor\'kron Elite 35460 x4');
DELETE FROM `waypoint_path_name` WHERE PathId = 34158;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34158,'Icecrown - Argent Tournament Grounds - Kor\'kron Elite 35460 x4');
DELETE FROM `waypoint_path` WHERE PathId = 34158;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34158,1,8431.117,791.85767,546.8923,100,100,5),
(34158,2,8431.6455,785.8472,547.10596,100,0,0),
(34158,3,8432.174,779.8368,547.31964,100,0,0),
(34158,4,8432.347,771.8143,547.29266,100,0,0),
(34158,5,8429.528,758.184,547.29266,100,0,0),
(34158,6,8421.614,750.11456,547.9543,100,0,0),
(34158,7,8411.44,742.82294,547.50183,100,10,6),
(34158,8,8392.298,756.21875,547.29266,100,0,0),
(34158,9,8378.945,784.5903,547.6462,100,0,0),
(34158,10,8375.174,805.625,547.9151,100,0,0),
(34158,11,8376.443,839.5347,547.99603,100,0,0),
(34158,12,8378.297,857.3073,547.99976,100,0,0),
(34158,13,8395.349,867.61115,547.3838,100,0,0),
(34158,14,8429.402,868.0226,547.29266,100,0,0),
(34158,15,8456.489,868.1198,547.29266,100,0,0),
(34158,16,8471.247,879.46704,547.29266,100,0,0),
(34158,17,8471.102,914.30554,547.29266,100,58000,0),
(34158,18,8475.075,935.9097,547.3033,100,0,0),
(34158,19,8474.333,965.2847,547.29266,100,0,0),
(34158,20,8474.548,994.69446,547.29266,100,0,0),
(34158,21,8475.82,1015.0538,547.29266,100,0,0),
(34158,22,8490.814,1023.5469,547.3433,100,0,0),
(34158,23,8505.21,1023.4375,547.29266,100,0,0),
(34158,24,8514.545,1017.1858,547.47015,4.73,88000,0),
(34158,25,8515.037,996.9323,547.48627,100,0,0),
(34158,26,8514.765,967.8906,547.47015,100,0,0),
(34158,27,8514.638,935.73615,547.55383,100,0,0),
(34158,28,8514.973,903.3768,549.0962,100,0,0),
(34158,29,8515.091,881.7726,558.2988,100,0,0),
(34158,30,8515.427,854.36804,558.3026,100,1000,3546001);
DELETE FROM dbscripts_on_creature_movement WHERE id = 3546001;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3546001,1,53,0,0,0,0,0,0,34158,0,0,0,0,0,0,0,'Set worldstate variable to 0');
DELETE FROM conditions WHERE condition_entry IN (20891);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20891, 42, 34158, 1, 1, 0, 'Icecrown - Argent Tournament Grounds - Kor\'kron Elite 35460 x4');
DELETE FROM worldstate_name WHERE Id=34158;
INSERT INTO worldstate_name(Id, Name) VALUES
(34158,'Icecrown - Argent Tournament Grounds - Kor\'kron Elite 35460 x4');
-- Alliance Event
-- Royal Gryphon 35299
UPDATE creature_template SET SpeedWalk = (2.5 / 2.5), SpeedRun = (24 / 7), InhabitType = 4 WHERE Entry = 35299;
DELETE FROM creature_movement_template WHERE Entry = 35299;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- path 1 - with Wrynn
(35299,1,1,8275.364,582.73254,623.12146,100,100,3529901),
(35299,1,2,8280.147,589.0052,629.26776,100,0,0),
(35299,1,3,8284.153,594.25867,634.41547,100,0,0),
(35299,1,4,8303.407,610.6042,635.4711,100,0,0),
(35299,1,5,8336.504,633.033,641.2497,100,0,0),
(35299,1,6,8399.306,649.38715,633.4439,100,0,0),
(35299,1,7,8451.763,624.02954,622.3883,100,0,0),
(35299,1,8,8499.614,613.53644,609.8329,100,0,0),
(35299,1,9,8554.837,630.8802,593.13855,100,0,0),
(35299,1,10,8583.955,677.40106,576.638,100,0,0),
(35299,1,11,8594.294,709.3333,566.7223,100,0,0),
(35299,1,12,8598.4,725.5608,560.5557,100,0,0),
(35299,1,13,8600.174,739.5018,555.8613,100,0,0),
(35299,1,14,8602.7295,748.53644,551.3902,100,0,0),
(35299,1,15,8609.794,756.65625,548.5846,0.6,10000,3529903),
-- path 3 - with Wrynn
(35299,3,1,8611.935,740.467,551.7665,100,0,0),
(35299,3,2,8637.618,754.1163,564.4597,100,0,0),
(35299,3,3,8647.946,763.5712,567.2928,100,0,0),
(35299,3,4,8664.131,773.3229,563.5434,100,0,0),
(35299,3,5,8705.323,792.2136,541.0161,100,0,0),
(35299,3,6,8722.38,827.4722,506.0163,100,0,0),
(35299,3,7,8739.074,916.2239,455.9886,100,0,0),
(35299,3,8,8761.381,1050.175,455.9886,100,0,0),
(35299,3,9,8736.964,1341.703,455.9886,100,100,1),
-- path 2 - with Jaina
(35299,2,1,8261.747,578.9931,623.6918,100,100,3529902),
(35299,2,2,8271.837,590.35767,630.8472,100,0,0),
(35299,2,3,8281.927,601.7222,638.0027,100,0,0),
(35299,2,4,8300.09,626.86285,642.142,100,0,0),
(35299,2,5,8326.912,637.3785,642.9468,100,0,0),
(35299,2,6,8358.907,640.3073,636.25287,100,0,0),
(35299,2,7,8398.649,636.0972,627.61456,100,0,0),
(35299,2,8,8464.53,607.0764,619.2809,100,0,0),
(35299,2,9,8543.788,612.44794,605.2258,100,0,0),
(35299,2,10,8596.2705,657.07294,588.11426,100,0,0),
(35299,2,11,8599.242,701.52606,576.78076,100,0,0),
(35299,2,12,8602.137,720.434,569.0308,100,0,0),
(35299,2,13,8604.012,738.59204,556.78094,100,0,0),
(35299,2,14,8608.536,745.5851,550.94763,100,0,0),
(35299,2,15,8613.54,752.3698,548.3363,0.6,10000,3529904),
-- path 4 - with Jaina
(35299,4,1,8615.236,751.1754,551.5819,100,0,0),
(35299,4,2,8632.748,750.7396,553.9152,100,0,0),
(35299,4,3,8664.987,743.0972,562.3303,100,0,0),
(35299,4,4,8687.207,731.5677,560.3588,100,0,0),
(35299,4,5,8713.502,709.1285,543.8591,100,0,0),
(35299,4,6,8718.188,669.191,483.5814,100,0,0),
(35299,4,7,8764.548,621.434,446.4983,100,0,0),
(35299,4,8,8812.659,654.4861,427.8871,100,0,0),
(35299,4,9,8858.637,950.0243,427.8871,100,0,0),
(35299,4,10,8857.169,1354.833,427.8871,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3529901 AND 3529904;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3529901,1,10,35321,430000,0,0,0,0x08,0,0,0,0,8275.364,582.73254,623.12146,0,'summon 35321'),
(3529901,10,15,46598,0,0,35321,20,3,0,0,0,0,0,0,0,0,'cast 46598 on buddy'),
(3529902,1,10,35320,430000,0,0,0,0x08,0,0,0,0,8261.747,578.9931,623.6918,0,'summon 35320'),
(3529902,10,15,46598,0,0,35320,20,3,0,0,0,0,0,0,0,0,'cast 46598 on buddy'),
(3529903,1,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'land'),
(3529903,2000,14,46598,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Remove aura 46598'),
(3529903,3000,35,5,30,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVent 5'),
(3529903,8000,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'fly'),
(3529903,9500,20,3,3,0,0,0,0x04,0,0,0,0,0,0,0,0,'path3'),
(3529904,1,39,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'land'),
(3529904,2000,14,46598,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Remove aura 46598'),
(3529904,3000,35,6,30,0,0,0,0,0,0,0,0,0,0,0,0,'Send EVent 6'),
(3529904,8000,39,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'fly'),
(3529904,9500,20,3,4,0,0,0,0x04,0,0,0,0,0,0,0,0,'path4');
-- King Varian Wrynn 35321
UPDATE creature_template SET Faction = 1732, UnitClass = 1, UnitFlags = 768, StaticFlags2 = 2099200 WHERE Entry IN (35321);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 35321);
DELETE FROM creature_template_addon WHERE entry = 35321;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(35321,0,0,0,0,0,0,NULL);
DELETE FROM creature_movement_template WHERE Entry = 35321;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(35321,1,1,8612.884,754.2803,547.6277,0.85479,3000,3532101),
(35321,1,2,8623.36,761.884,547.4177,100,0,0),
(35321,1,3,8637.25,774.7917,547.6496,100,0,0),
(35321,1,4,8644.739,782.4965,547.5246,100,0,0),
(35321,1,5,8644.862,805.0521,547.5709,100,0,0),
(35321,1,6,8627.392,825.4393,547.5586,100,0,0),
(35321,1,7,8601.115,848.3768,547.6281,100,0,0),
(35321,1,8,8568.413,876.6823,547.5538,100,0,0),
(35321,1,9,8568.674,905.1094,547.5538,100,0,0),
(35321,1,10,8575.485,931.19446,547.5538,100,0,0),
(35321,1,11,8574.2705,977.8715,547.5626,100,0,0),
(35321,1,12,8575.41,992.628,547.313,100,0,0),
(35321,1,13,8549.597,1023.01526,547.29266,100,0,0),
(35321,1,14,8522.494,1025.6233,547.29266,100,0,0),
(35321,1,15,8515.398,1019.4063,547.47015,100,0,0),
(35321,1,16,8515.15,1006.35,547.47015,100,89000,3532102),
(35321,1,17,8516.075,995.8524,547.4875,100,0,0),
(35321,1,18,8515.903,966.67883,547.47015,100,0,0),
(35321,1,19,8515.886,933.1441,547.55383,100,0,0),
(35321,1,20,8515.789,909.5677,547.1799,100,0,0),
(35321,1,21,8515.747,874.8333,558.2988,100,0,0),
(35321,1,22,8516.054,854.0382,558.2977,100,100,3532103);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3532101 AND 3532103;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3532101,1000,0,0,0,0,35501,534283,7|0x10,35810,0,0,0,0,0,0,0,'buddy say'),
(3532101,1001,53,0,0,0,0,0,0,34159,1,0,0,0,0,0,0,'Set worldstate variable to 1'),
(3532102,3000,16,16070,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'play sound'), -- 23:04:16.242
(3532102,3001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3532102,3100,0,0,0,0,0,0,0x04,35521,0,0,0,0,0,0,0,'Say'), -- Tirion
(3532102,6000,16,16054,2,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy play sound'), -- 23:04:19.131
(3532102,6001,1,1,0,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy emote'),
(3532102,6100,0,0,0,0,35361,10,7,35522,0,0,0,0,0,0,0,'buddy say'),
(3532102,15000,16,16120,2,0,35320,10,7,0,0,0,0,0,0,0,0,'buddy play sound'), -- 23:04:28.878
(3532102,15001,1,2,0,0,35320,10,7,0,0,0,0,0,0,0,0,'buddy emote'),
(3532102,15100,0,0,0,0,35320,10,7,35523,0,0,0,0,0,0,0,'buddy say'), -- Thank you.
(3532102,18000,1,2,0,0,35320,10,7,0,0,0,0,0,0,0,0,'buddy emote'),
(3532102,23000,16,16071,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'play sound'), -- 23:04:36.969
(3532102,23001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3532102,23100,0,0,0,0,0,0,0x04,35524,0,0,0,0,0,0,0,'Say'), -- You ask much of me
(3532102,27000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 23:04:40.205
(3532102,33000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 23:04:43.450
(3532102,38000,16,16055,2,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy play sound'), -- 23:04:48.283
(3532102,38001,1,1,0,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy emote'),
(3532102,38100,0,0,0,0,35361,10,7,35525,0,0,0,0,0,0,0,'buddy say'), -- My people are
(3532102,41000,1,1,0,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 23:04:51.541
(3532102,45000,1,1,0,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 23:04:54.791
(3532102,51000,16,16121,2,0,35320,10,7,0,0,0,0,0,0,0,0,'buddy play sound'), -- 23:05:01.275
(3532102,51001,1,274,0,0,35320,10,7,0,0,0,0,0,0,0,0,'buddy emote'),
(3532102,51100,0,0,0,0,35320,10,7,35529,0,0,0,0,0,0,0,'buddy say'), -- I\'m sure Thrall 
(3532102,54000,1,1,0,0,35320,10,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 23:05:04.519
(3532102,57000,16,16072,2,0,0,0,0x04,0,0,0,0,0,0,0,0,'play sound'), -- 23:05:07.751
(3532102,57001,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'),
(3532102,57100,0,0,0,0,0,0,0x04,35527,0,0,0,0,0,0,0,'Say'), -- Perhaps. I doub
(3532102,60000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 23:05:10.986
(3532102,64000,1,25,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 23:05:14.234
(3532102,67000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 23:05:17.484
(3532102,67100,0,0,0,0,0,0,0x04,35528,0,0,0,0,0,0,0,'Say'), -- 23:05:17.578 Perhaps. I doub
(3532102,70000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 23:05:20.721
(3532102,73000,1,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'emote'), -- 23:05:23.955
(3532102,81000,1,273,0,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy emote'), -- 23:05:32.058
(3532102,81100,0,0,0,0,35361,10,7,35526,0,0,0,0,0,0,0,'buddy say'), -- 23:05:32.165 %s nods an
(3532102,87000,20,2,3,0,35361,10,7,0,0,0,0,0,0,0,0,'buddy Path3'), -- 22:51:22.458
(3532102,88000,20,2,2,0,35320,15,7,0,0,0,0,0,0,0,0,'buddy Path2'), -- 22:51:23.672 
(3532103,1,53,0,0,0,0,0,0,34159,0,0,0,0,0,0,0,'Set worldstate variable to 0'),
(3532103,10,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'despawn self');
-- Lady Jaina Proudmoore 35320
UPDATE creature_template SET Faction = 1732, UnitClass = 8, UnitFlags = 33600, StaticFlags2 = 2099200 WHERE Entry IN (35320);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 35320);
DELETE FROM creature_template_addon WHERE entry = 35320;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(35320,0,0,0,0,0,0,NULL);
DELETE FROM creature_movement_template WHERE Entry = 35320;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(35320,1,1,8616.824,750.2558,547.5027,0.9353272,1000,0),
(35320,1,2,8622.47,759.405,547.4177,100,0,0),
(35320,1,3,8637.25,774.7917,547.6496,100,0,0),
(35320,1,4,8644.739,782.4965,547.5246,100,0,0),
(35320,1,5,8644.862,805.0521,547.5709,100,0,0),
(35320,1,6,8627.392,825.4393,547.5586,100,0,0),
(35320,1,7,8601.115,848.3768,547.6281,100,0,0),
(35320,1,8,8568.413,876.6823,547.5937,100,0,0),
(35320,1,9,8568.674,905.1094,547.5937,100,0,0),
(35320,1,10,8575.485,931.1945,547.5937,100,0,0),
(35320,1,11,8574.2705,977.8715,547.5626,100,0,0),
(35320,1,12,8575.41,992.628,547.313,100,0,0),
(35320,1,13,8560.899,1010.3258,547.29285,100,0,0),
(35320,1,14,8547.199,1025.7067,547.29266,100,0,0),
(35320,1,15,8522.494,1025.6233,547.29266,100,0,0),
(35320,1,16,8515.398,1019.4063,547.47015,100,0,0),
(35320,1,17,8511.91,1008.21,547.4732,5.05278,100,3),
(35320,2,1,8510.247,994.9722,547.8804,100,0,0),
(35320,2,2,8510.31,962.55206,547.58496,100,0,0),
(35320,2,3,8510.396,917.7674,547.2067,100,0,0),
(35320,2,4,8508.974,890.2969,554.9758,100,0,0),
(35320,2,5,8509.935,853.91156,558.2988,100,100,1);
-- Stormwind Royal Guard 35322
-- missing added
DELETE FROM creature_addon WHERE guid IN (500844,500535,504802,520181);
DELETE FROM creature_movement WHERE id IN (500844,500535,504802,520181);
DELETE FROM game_event_creature WHERE guid IN (500844,500535,504802,520181);
DELETE FROM game_event_creature_data WHERE guid IN (500844,500535,504802,520181);
DELETE FROM creature_battleground WHERE guid IN (500844,500535,504802,520181);
DELETE FROM creature_linking WHERE guid IN (500844,500535,504802,520181);
DELETE FROM creature WHERE guid IN (500844,500535,504802,520181);
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(500844,35322,571,1,1,8598.842,784.5226,547.0953,0,10,10,0,0),
(500535,35322,571,1,1,8598.842,784.5226,547.0953,0,10,10,0,0),
(504802,35322,571,1,1,8598.842,784.5226,547.0953,0,10,10,0,0),
(520181,35322,571,1,1,8598.842,784.5226,547.0953,0,10,10,0,0);
UPDATE creature_template SET extraFlags=4096 WHERE Entry IN (35460);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 35460);
DELETE FROM creature_template_addon WHERE entry = 35460;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(35460,0,0,1,1,0,0,NULL);
DELETE FROM `spawn_group` WHERE id = 34159;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(34159, 'Icecrown - Argent Tournament Grounds - Stormwind Royal Guard 35322 x4', 0, 0, 20892, 0x08);
DELETE FROM `spawn_group_spawn` WHERE id = 34159;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(34159, 500844, 0),
(34159, 500535, 1),
(34159, 504802, 2),
(34159, 520181, 3);
DELETE FROM `spawn_group_formation` WHERE id = 34159;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(34159, 4, 3, 0, 34159, 2, 'Icecrown - Argent Tournament Grounds - Stormwind Royal Guard 35322 x4');
DELETE FROM `waypoint_path_name` WHERE PathId = 34159;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES
(34159,'Icecrown - Argent Tournament Grounds - Stormwind Royal Guard 35322 x4');
DELETE FROM `waypoint_path` WHERE PathId = 34159;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`,`PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(34159,1,8598.842,784.5226,547.0953,100,100,5),
(34159,2,8598.842,784.5226,547.0953,100,0,0),
(34159,3,8599.842,784.5226,547.0953,100,0,0),
(34159,4,8597.983,782.2118,547.2771,100,0,0),
(34159,5,8594.417,771.1493,547.2927,100,0,0),
(34159,6,8599.046,762.2726,547.6835,100,0,0),
(34159,7,8607.081,758.7604,547.5538,100,0,0),
(34159,8,8623.255,771.5886,547.7841,100,10,6),
(34159,9,8623.255,771.5886,547.7841,100,5000,1066),
(34159,10,8637.25,774.7917,547.6496,100,0,0),
(34159,11,8644.739,782.4965,547.5246,100,0,0),
(34159,12,8644.862,805.0521,547.5709,100,0,0),
(34159,13,8627.392,825.4393,547.5586,100,0,0),
(34159,14,8601.115,848.3768,547.6281,100,0,0),
(34159,15,8568.413,876.6823,547.5937,100,0,0),
(34159,16,8568.674,905.1094,547.5937,100,0,0),
(34159,17,8575.485,931.1945,547.5937,100,0,0),
(34159,18,8574.2705,977.8715,547.5626,100,0,0),
(34159,19,8575.41,992.628,547.313,100,0,0),
(34159,20,8560.899,1010.3258,547.29285,100,0,0),
(34159,21,8547.199,1025.7067,547.29266,100,0,0),
(34159,22,8522.494,1025.6233,547.29266,100,0,0),
(34159,23,8515.398,1019.4063,547.47015,4.85,90000,0),
(34159,24,8510.247,994.9722,547.8804,100,0,0),
(34159,25,8510.31,962.55206,547.58496,100,0,0),
(34159,26,8510.396,917.7674,547.2067,100,0,0),
(34159,27,8508.974,890.2969,554.9758,100,0,0),
(34159,28,8509.935,853.91156,558.2988,100,100,1);
DELETE FROM conditions WHERE condition_entry IN (20892);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20892, 42, 34159, 1, 1, 0, 'Icecrown - Argent Tournament Grounds - Stormwind Royal Guard 35322 x4');
DELETE FROM worldstate_name WHERE Id=34159;
INSERT INTO worldstate_name(Id, Name) VALUES
(34159,'Icecrown - Argent Tournament Grounds - Stormwind Royal Guard 35322 x4');
-- Valikyr Event
-- Vengeful Val'kyr 35474
UPDATE creature_template SET UnitFlags = 768, StaticFlags1 = 2147483648, InhabitType = 4 WHERE Entry = 35474;
DELETE FROM creature_movement_template WHERE Entry = 35474;
INSERT INTO creature_movement_template (`Entry`, `Pathid`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
-- path 1
(35474,1,1,8230.726,1390.967,713.79755,100,0,0),
(35474,1,2,8258.721,1361.8038,713.2486,100,0,0),
(35474,1,3,8286.716,1332.6406,712.69965,100,0,0),
(35474,1,4,8329.93,1256.3906,677.17316,100,0,0),
(35474,1,5,8346.724,1192.1649,665.08887,100,0,0),
(35474,1,6,8364.8955,1170.2205,655.2555,100,0,0),
(35474,1,7,8430.905,977.7934,623.589,100,0,0),
(35474,1,8,8471.747,869.36115,623.589,100,0,0),
(35474,1,9,8519.393,800.3976,623.589,100,0,0),
(35474,1,10,8519.393,800.3976,623.589,1.60,140000,3547401),
(35474,1,11,8519.393,800.3976,623.589,1.60,100,3547402),
-- path 2 - default 1
(35474,2,1,8470.964,997.08856,617.07965,100,0,0),
(35474,2,2,8405.399,922.76044,624.6074,100,0,0),
(35474,2,3,8385.342,828.19446,601.8577,100,0,0),
(35474,2,4,8411.453,731.5764,606.41315,100,0,0),
(35474,2,5,8480.931,687.23267,606.41315,100,0,0),
(35474,2,6,8561.721,724.04517,618.71875,100,0,0),
(35474,2,7,8593.092,789.2083,603.9968,100,0,0),
(35474,2,8,8574.258,845.32117,589.5525,100,0,0),
(35474,2,9,8570.6875,923.4375,587.27466,100,0,0),
(35474,2,10,8553.73,989.2031,589.55255,100,0,0),
(35474,2,11,8502.836,1009.3195,613.0242,100,0,0),
-- path 3 - default 2
(35474,3,1,8532.747,1002.6024,626.27576,100,0,0),
(35474,3,2,8565.958,972.55206,631.1364,100,0,0),
(35474,3,3,8594.458,923.2118,635.0533,100,0,0),
(35474,3,4,8601.101,844.5174,625.6922,100,0,0),
(35474,3,5,8588.497,755.7639,625.6922,100,0,0),
(35474,3,6,8548.142,671.7205,618.22015,100,0,0),
(35474,3,7,8457.159,670.4583,626.72015,100,0,0),
(35474,3,8,8395.552,760.34204,638.0256,100,0,0),
(35474,3,9,8445.388,854.2101,600.4423,100,0,0),
(35474,3,10,8470.623,920.67535,584.7207,100,0,0),
(35474,3,11,8477.773,1003.934,587.99805,100,0,0),
(35474,3,12,8519.034,1011.7327,620.0814,100,0,0),
-- path 4
(35474,4,1,8258.721,1361.8038,713.2486,100,0,0),
(35474,4,2,8230.726,1390.967,713.79755,100,100,1);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 3547401 AND 3547404;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3547401,1,39,1,0,0,0,0,0x04|0x08,0,0,0,0,0,0,0,0,''),
(3547401,2,0,0,0,0,35501,534283,7|0x10,35828,0,0,0,0,0,0,0,'buddy say'),
(3547402,1,0,0,0,0,0,0,0x04,35820,0,0,0,0,0,0,0,'buddy say'),
(3547402,2,35,5,500,0,0,0,0,0,0,0,0,0,0,0,0,'send enent 5');

-- Undercity Valiant 33384
-- missing added
DELETE FROM creature_addon WHERE guid = 535761;
DELETE FROM creature_movement WHERE id = 535761;
DELETE FROM game_event_creature WHERE guid = 535761;
DELETE FROM game_event_creature_data WHERE guid = 535761;
DELETE FROM creature_battleground WHERE guid = 535761;
DELETE FROM creature_linking WHERE guid = 535761;
DELETE FROM creature WHERE guid = 535761;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(535761,33384,571,1,1,8365.902,710.1582,553.7937,2.3911,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33384);
DELETE FROM creature_template_addon WHERE entry = 33384;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33384,29257,0,1,0,0,0,'63429 64718');
UPDATE creature_template SET GossipMenuId = 10473 WHERE Entry = 33384;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33384);
DELETE FROM `gossip_menu` WHERE `entry` IN (10473);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10473, 14384, 0, 20890), -- default
(10473, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10473);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10473,0,0,'I am ready to fight!',33430,1,1,-1,0,1047301,0,0,NULL,0,20894);
DELETE FROM conditions WHERE condition_entry IN (20890,20893,20894);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20890,1,64816,0,0,1,''),
(20893,8,13695,0,0,0,''),
(20894,-1,20893,20890,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1047301;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1047301,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Thunder Bluff Valiant 33383
-- missing added
DELETE FROM creature_addon WHERE guid = 520182;
DELETE FROM creature_movement WHERE id = 520182;
DELETE FROM game_event_creature WHERE guid = 520182;
DELETE FROM game_event_creature_data WHERE guid = 520182;
DELETE FROM creature_battleground WHERE guid = 520182;
DELETE FROM creature_linking WHERE guid = 520182;
DELETE FROM creature WHERE guid = 520182;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(520182,33383,571,1,1,8354.372,740.4251,553.78455,3.9968,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33383);
DELETE FROM creature_template_addon WHERE entry = 33383;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33383,28556,0,1,0,0,0,'63435 64718');
UPDATE creature_template SET GossipMenuId = 10472 WHERE Entry = 33383;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33383);
DELETE FROM `gossip_menu` WHERE `entry` IN (10472);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10472, 14384, 0, 20895), -- default
(10472, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10472);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10472,0,0,'I am ready to fight!',33430,1,1,-1,0,1047201,0,0,NULL,0,20897);
DELETE FROM conditions WHERE condition_entry IN (20895,20896,20897);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20895,1,64815,0,0,1,''),
(20896,8,13694,0,0,0,''),
(20897,-1,20896,20895,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1047201;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1047201,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Silvermoon Valiant 33382
-- missing added
DELETE FROM creature_addon WHERE guid = 520183;
DELETE FROM creature_movement WHERE id = 520183;
DELETE FROM game_event_creature WHERE guid = 520183;
DELETE FROM game_event_creature_data WHERE guid = 520183;
DELETE FROM creature_battleground WHERE guid = 520183;
DELETE FROM creature_linking WHERE guid = 520183;
DELETE FROM creature WHERE guid = 520183;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(520183,33382,571,1,1,8321.385,741.8692,553.78455,5.3407,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33382);
DELETE FROM creature_template_addon WHERE entry = 33382;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33382,28607,0,1,0,0,0,'63402 64718');
UPDATE creature_template SET GossipMenuId = 10470 WHERE Entry = 33382;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33382);
DELETE FROM `gossip_menu` WHERE `entry` IN (10470);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10470, 14384, 0, 20898), -- default
(10470, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10470);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10470,0,0,'I am ready to fight!',33430,1,1,-1,0,1047001,0,0,NULL,0,20900);
DELETE FROM conditions WHERE condition_entry IN (20898,20899,20900);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20898,1,64813,0,0,1,''),
(20899,8,13696,0,0,0,''),
(20900,-1,20899,20898,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1047001;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1047001,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Sen'jin Valiant 33285
-- missing added
DELETE FROM creature_addon WHERE guid = 520184;
DELETE FROM creature_movement WHERE id = 520184;
DELETE FROM game_event_creature WHERE guid = 520184;
DELETE FROM game_event_creature_data WHERE guid = 520184;
DELETE FROM creature_battleground WHERE guid = 520184;
DELETE FROM creature_linking WHERE guid = 520184;
DELETE FROM creature WHERE guid = 520184;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(520184,33285,571,1,1,8311.2705,707.22974,553.7796,0.2967,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33285);
DELETE FROM creature_template_addon WHERE entry = 33285;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33285,14343,0,1,0,0,0,'63398 64718');
UPDATE creature_template SET GossipMenuId = 10469 WHERE Entry = 33285;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33285);
DELETE FROM `gossip_menu` WHERE `entry` IN (10469);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10469, 14384, 0, 20901), -- default
(10469, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10469);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10469,0,0,'I am ready to fight!',33430,1,1,-1,0,1046901,0,0,NULL,0,20903);
DELETE FROM conditions WHERE condition_entry IN (20901,20902,20903);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20901,1,64812,0,0,1,''),
(20902,8,13693,0,0,0,''),
(20903,-1,20902,20901,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1046901;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1046901,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Orgrimmar Valiant 33306
-- missing added
DELETE FROM creature_addon WHERE guid = 530764;
DELETE FROM creature_movement WHERE id = 530764;
DELETE FROM game_event_creature WHERE guid = 530764;
DELETE FROM game_event_creature_data WHERE guid = 530764;
DELETE FROM creature_battleground WHERE guid = 530764;
DELETE FROM creature_linking WHERE guid = 530764;
DELETE FROM creature WHERE guid = 530764;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(530764,33306,571,1,1,8338.7295,691.629,553.8249,1.43116,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33306);
DELETE FROM creature_template_addon WHERE entry = 33306;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33306,14335,0,1,0,0,0,'63432 64718');
UPDATE creature_template SET GossipMenuId = 10468 WHERE Entry = 33306;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33306);
DELETE FROM `gossip_menu` WHERE `entry` IN (10468);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10468, 14384, 0, 20904), -- default
(10468, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10468);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10468,0,0,'I am ready to fight!',33430,1,1,-1,0,1046801,0,0,NULL,0,20906);
DELETE FROM conditions WHERE condition_entry IN (20904,20905,20906);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20904,1,64811,0,0,1,''),
(20905,8,13691,0,0,0,''),
(20906,-1,20905,20904,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1046801;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1046801,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Stormwind Valiant 33561
-- missing added
DELETE FROM creature_addon WHERE guid = 536997;
DELETE FROM creature_movement WHERE id = 536997;
DELETE FROM game_event_creature WHERE guid = 536997;
DELETE FROM game_event_creature_data WHERE guid = 536997;
DELETE FROM creature_battleground WHERE guid = 536997;
DELETE FROM creature_linking WHERE guid = 536997;
DELETE FROM creature WHERE guid = 536997;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(536997,33561,571,1,1,8630.354,720.7744,547.89856,0.17453,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33561);
DELETE FROM creature_template_addon WHERE entry = 33561;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33561,29043,0,1,0,0,0,'62596 64718');
UPDATE creature_template SET GossipMenuId = 10471 WHERE Entry = 33561;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33561);
DELETE FROM `gossip_menu` WHERE `entry` IN (10471);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10471, 14384, 0, 20907), -- default
(10471, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10471);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10471,0,0,'I am ready to fight!',33430,1,1,-1,0,1047101,0,0,NULL,0,20909);
DELETE FROM conditions WHERE condition_entry IN (20907,20908,20909);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20907,1,64814,0,0,1,''),
(20908,8,13684,0,0,0,''),
(20909,-1,20908,20907,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1047101;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1047101,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Ironforge Valiant 33564
-- missing added
DELETE FROM creature_addon WHERE guid = 536998;
DELETE FROM creature_movement WHERE id = 536998;
DELETE FROM game_event_creature WHERE guid = 536998;
DELETE FROM game_event_creature_data WHERE guid = 536998;
DELETE FROM creature_battleground WHERE guid = 536998;
DELETE FROM creature_linking WHERE guid = 536998;
DELETE FROM creature WHERE guid = 536998;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(536998,33564,571,1,1,8644.141,699.2352,547.6283,1.09955,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33564);
DELETE FROM creature_template_addon WHERE entry = 33564;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33564,28612,0,1,0,0,0,'63426 64718');
UPDATE creature_template SET GossipMenuId = 10467 WHERE Entry = 33564;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33564);
DELETE FROM `gossip_menu` WHERE `entry` IN (10467);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10467, 14384, 0, 20910), -- default
(10467, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10467);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10467,0,0,'I am ready to fight!',33430,1,1,-1,0,1046701,0,0,NULL,0,20912);
DELETE FROM conditions WHERE condition_entry IN (20910,20911,20912);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20910,1,64810,0,0,1,''),
(20911,8,13685,0,0,0,''),
(20912,-1,20911,20910,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1046701;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1046701,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Gnomeregan Valiant 33558
-- missing added
DELETE FROM creature_addon WHERE guid = 536999;
DELETE FROM creature_movement WHERE id = 536999;
DELETE FROM game_event_creature WHERE guid = 536999;
DELETE FROM game_event_creature_data WHERE guid = 536999;
DELETE FROM creature_battleground WHERE guid = 536999;
DELETE FROM creature_linking WHERE guid = 536999;
DELETE FROM creature WHERE guid = 536999;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(536999,33558,571,1,1,8669.312,694.81415,547.6052,2.0594,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33558);
DELETE FROM creature_template_addon WHERE entry = 33558;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33558,14375,0,1,0,0,0,'63395 64718');
UPDATE creature_template SET GossipMenuId = 10466 WHERE Entry = 33558;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33558);
DELETE FROM `gossip_menu` WHERE `entry` IN (10466);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10466, 14384, 0, 20913), -- default
(10466, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10466);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10466,0,0,'I am ready to fight!',33430,1,1,-1,0,1046601,0,0,NULL,0,20915);
DELETE FROM conditions WHERE condition_entry IN (20913,20914,20915);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20913,1,64809,0,0,1,''),
(20914,8,13688,0,0,0,''),
(20915,-1,20914,20913,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1046601;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1046601,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Darnassus Valiant 33559
-- missing added
DELETE FROM creature_addon WHERE guid = 537000;
DELETE FROM creature_movement WHERE id = 537000;
DELETE FROM game_event_creature WHERE guid = 537000;
DELETE FROM game_event_creature_data WHERE guid = 537000;
DELETE FROM creature_battleground WHERE guid = 537000;
DELETE FROM creature_linking WHERE guid = 537000;
DELETE FROM creature WHERE guid = 537000;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(537000,33559,571,1,1,8686.058,735.3124,547.65265,3.59537,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33559);
DELETE FROM creature_template_addon WHERE entry = 33559;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33559,14333,0,1,0,0,0,'63405 64718');
UPDATE creature_template SET GossipMenuId = 10464 WHERE Entry = 33559;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33559);
DELETE FROM `gossip_menu` WHERE `entry` IN (10464);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10464, 14384, 0, 20916), -- default
(10464, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10464);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10464,0,0,'I am ready to fight!',33430,1,1,-1,0,1046401,0,0,NULL,0,20918);
DELETE FROM conditions WHERE condition_entry IN (20916,20917,20918);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20916,1,64805,0,0,1,''),
(20917,8,13689,0,0,0,''),
(20918,-1,20917,20916,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1046401;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1046401,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Exodar Valiant 33562
-- missing added
DELETE FROM creature_addon WHERE guid = 537001;
DELETE FROM creature_movement WHERE id = 537001;
DELETE FROM game_event_creature WHERE guid = 537001;
DELETE FROM game_event_creature_data WHERE guid = 537001;
DELETE FROM creature_battleground WHERE guid = 537001;
DELETE FROM creature_linking WHERE guid = 537001;
DELETE FROM creature WHERE guid = 537001;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(537001,33562,571,1,1,8658.259,751.84296,547.6052,4.747295,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33562);
DELETE FROM creature_template_addon WHERE entry = 33562;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33562,28606,0,1,0,0,0,'63422 64718');
UPDATE creature_template SET GossipMenuId = 10465 WHERE Entry = 33562;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33562);
DELETE FROM `gossip_menu` WHERE `entry` IN (10465);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10465, 14384, 0, 20919), -- default
(10465, 14492, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10465);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10465,0,0,'I am ready to fight!',33430,1,1,-1,0,1046501,0,0,NULL,0,20921);
DELETE FROM conditions WHERE condition_entry IN (20919,20920,20921);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20919,1,64808,0,0,1,''),
(20920,8,13690,0,0,0,''),
(20921,-1,20920,20919,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1046501;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1046501,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Champions
-- Silvermoon Champion 33746
-- missing added
DELETE FROM creature_addon WHERE guid = 537002;
DELETE FROM creature_movement WHERE id = 537002;
DELETE FROM game_event_creature WHERE guid = 537002;
DELETE FROM game_event_creature_data WHERE guid = 537002;
DELETE FROM creature_battleground WHERE guid = 537002;
DELETE FROM creature_linking WHERE guid = 537002;
DELETE FROM creature WHERE guid = 537002;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(537002,33746,571,1,1,8417.445,896.67676,544.7574,1.29154,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33746);
DELETE FROM creature_template_addon WHERE entry = 33746;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33746,29262,0,1,0,0,0,'63403 64718');
UPDATE creature_template SET GossipMenuId = 10459 WHERE Entry = 33746;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33746);
DELETE FROM `gossip_menu` WHERE `entry` IN (10459);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10459, 14421, 0, 20898), -- default
(10459, 14489, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10459);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10459,0,0,'I am ready to fight!',33430,1,1,-1,0,1045901,0,0,NULL,0,20922);
DELETE FROM conditions WHERE condition_entry IN (20922);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20922,-1,20898,20877,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1045901;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1045901,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Gnomeregan Champion 33740
-- missing added
DELETE FROM creature_addon WHERE guid = 537003;
DELETE FROM creature_movement WHERE id = 537003;
DELETE FROM game_event_creature WHERE guid = 537003;
DELETE FROM game_event_creature_data WHERE guid = 537003;
DELETE FROM creature_battleground WHERE guid = 537003;
DELETE FROM creature_linking WHERE guid = 537003;
DELETE FROM creature WHERE guid = 537003;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(537003,33740,571,1,1,8454.091,906.4692,546.05585,2.53072,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33740);
DELETE FROM creature_template_addon WHERE entry = 33740;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33740,28571,0,1,0,0,0,'63396 64718');
UPDATE creature_template SET GossipMenuId = 10455 WHERE Entry = 33740;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33740);
DELETE FROM `gossip_menu` WHERE `entry` IN (10455);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10455, 14421, 0, 20913), -- default
(10455, 14489, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10455);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10455,0,0,'I am ready to fight!',33430,1,1,-1,0,1045501,0,0,NULL,0,20923);
DELETE FROM conditions WHERE condition_entry IN (20923);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20923,-1,20913,20879,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1045501;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1045501,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Ironforge Champion 33743
-- missing added
DELETE FROM creature_addon WHERE guid = 537004;
DELETE FROM creature_movement WHERE id = 537004;
DELETE FROM game_event_creature WHERE guid = 537004;
DELETE FROM game_event_creature_data WHERE guid = 537004;
DELETE FROM creature_battleground WHERE guid = 537004;
DELETE FROM creature_linking WHERE guid = 537004;
DELETE FROM creature WHERE guid = 537004;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(537004,33743,571,1,1,8456.359,927.0671,544.7835,3.07177,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33743);
DELETE FROM creature_template_addon WHERE entry = 33743;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33743,29258,0,1,0,0,0,'63427 64718');
UPDATE creature_template SET GossipMenuId = 10456 WHERE Entry = 33743;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33743);
DELETE FROM `gossip_menu` WHERE `entry` IN (10456);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10456, 14421, 0, 20910), -- default
(10456, 14489, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10456);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10456,0,0,'I am ready to fight!',33430,1,1,-1,0,1045601,0,0,NULL,0,20924);
DELETE FROM conditions WHERE condition_entry IN (20924);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20924,-1,20910,20881,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1045601;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1045601,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Stormwind Champion 33747
-- missing added
DELETE FROM creature_addon WHERE guid = 537005;
DELETE FROM creature_movement WHERE id = 537005;
DELETE FROM game_event_creature WHERE guid = 537005;
DELETE FROM game_event_creature_data WHERE guid = 537005;
DELETE FROM creature_battleground WHERE guid = 537005;
DELETE FROM creature_linking WHERE guid = 537005;
DELETE FROM creature WHERE guid = 537005;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(537005,33747,571,1,1,8456.655,949.57745,544.7969,3.10668,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33747);
DELETE FROM creature_template_addon WHERE entry = 33747;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33747,28912,0,1,0,0,0,'62594 64718');
UPDATE creature_template SET GossipMenuId = 10460 WHERE Entry = 33747;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33747);
DELETE FROM `gossip_menu` WHERE `entry` IN (10460);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10460, 14421, 0, 20907), -- default
(10460, 14489, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10460);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10460,0,0,'I am ready to fight!',33430,1,1,-1,0,1046001,0,0,NULL,0,20925);
DELETE FROM conditions WHERE condition_entry IN (20925);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20925,-1,20907,20883,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1046001;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1046001,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Darnassus Champion 33738
-- missing added
DELETE FROM creature_addon WHERE guid = 537006;
DELETE FROM creature_movement WHERE id = 537006;
DELETE FROM game_event_creature WHERE guid = 537006;
DELETE FROM game_event_creature_data WHERE guid = 537006;
DELETE FROM creature_battleground WHERE guid = 537006;
DELETE FROM creature_linking WHERE guid = 537006;
DELETE FROM creature WHERE guid = 537006;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(537006,33738,571,1,1,8456.394,991.58496,545.02844,3.2288,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33738);
DELETE FROM creature_template_addon WHERE entry = 33738;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33738,29256,0,1,0,0,0,'63406 64718');
UPDATE creature_template SET GossipMenuId = 10453 WHERE Entry = 33738;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33738);
DELETE FROM `gossip_menu` WHERE `entry` IN (10453);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10453, 14421, 0, 20916), -- default
(10453, 14489, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10453);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10453,0,0,'I am ready to fight!',33430,1,1,-1,0,1045301,0,0,NULL,0,20926);
DELETE FROM conditions WHERE condition_entry IN (20926);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20926,-1,20916,20885,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1045301;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1045301,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Exodar Champion 33739
-- missing added
DELETE FROM creature_addon WHERE guid = 537007;
DELETE FROM creature_movement WHERE id = 537007;
DELETE FROM game_event_creature WHERE guid = 537007;
DELETE FROM game_event_creature_data WHERE guid = 537007;
DELETE FROM creature_battleground WHERE guid = 537007;
DELETE FROM creature_linking WHERE guid = 537007;
DELETE FROM creature WHERE guid = 537007;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(537007,33739,571,1,1,8438.958,1006.4825,544.8589,4.48549,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33739);
DELETE FROM creature_template_addon WHERE entry = 33739;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33739,29255,0,1,0,0,0,'63423 64718');
UPDATE creature_template SET GossipMenuId = 10454 WHERE Entry = 33739;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33739);
DELETE FROM `gossip_menu` WHERE `entry` IN (10454);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10454, 14421, 0, 20919), -- default
(10454, 14489, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10454);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10454,0,0,'I am ready to fight!',33430,1,1,-1,0,1045401,0,0,NULL,0,20927);
DELETE FROM conditions WHERE condition_entry IN (20927);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20927,-1,20919,20887,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1045401;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1045401,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Undercity Champion 33749
-- missing added
DELETE FROM creature_addon WHERE guid = 537008;
DELETE FROM creature_movement WHERE id = 537008;
DELETE FROM game_event_creature WHERE guid = 537008;
DELETE FROM game_event_creature_data WHERE guid = 537008;
DELETE FROM creature_battleground WHERE guid = 537008;
DELETE FROM creature_linking WHERE guid = 537008;
DELETE FROM creature WHERE guid = 537008;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(537008,33749,571,1,1,8407.343,996.9965,545.2411,5.16617,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33749);
DELETE FROM creature_template_addon WHERE entry = 33749;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33749,29257,0,1,0,0,0,'63430 64718');
UPDATE creature_template SET GossipMenuId = 10462 WHERE Entry = 33749;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33749);
DELETE FROM `gossip_menu` WHERE `entry` IN (10462);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10462, 14421, 0, 20890), -- default
(10462, 14489, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10462);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10462,0,0,'I am ready to fight!',33430,1,1,-1,0,1046201,0,0,NULL,0,20928);
DELETE FROM conditions WHERE condition_entry IN (20928);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20928,-1,20890,20875,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1046201;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1046201,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Sen'jin Champion 33745
-- missing added
DELETE FROM creature_addon WHERE guid = 537009;
DELETE FROM creature_movement WHERE id = 537009;
DELETE FROM game_event_creature WHERE guid = 537009;
DELETE FROM game_event_creature_data WHERE guid = 537009;
DELETE FROM creature_battleground WHERE guid = 537009;
DELETE FROM creature_linking WHERE guid = 537009;
DELETE FROM creature WHERE guid = 537009;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(537009,33745,571,1,1,8402.533,976.88605,544.7574,6.09119,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33745);
DELETE FROM creature_template_addon WHERE entry = 33745;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33745,29261,0,1,0,0,0,'63399 64718');
UPDATE creature_template SET GossipMenuId = 10458 WHERE Entry = 33745;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33745);
DELETE FROM `gossip_menu` WHERE `entry` IN (10458);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10458, 14421, 0, 20901), -- default
(10458, 14489, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10458);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10458,0,0,'I am ready to fight!',33430,1,1,-1,0,1045801,0,0,NULL,0,20929);
DELETE FROM conditions WHERE condition_entry IN (20929);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20929,-1,20901,20869,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1045801;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1045801,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Orgrimmar Champion 33744
-- missing added
DELETE FROM creature_addon WHERE guid = 537010;
DELETE FROM creature_movement WHERE id = 537010;
DELETE FROM game_event_creature WHERE guid = 537010;
DELETE FROM game_event_creature_data WHERE guid = 537010;
DELETE FROM creature_battleground WHERE guid = 537010;
DELETE FROM creature_linking WHERE guid = 537010;
DELETE FROM creature WHERE guid = 537010;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(537010,33744,571,1,1,8403.681,949.8531,545.17267,0.19198,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33744);
DELETE FROM creature_template_addon WHERE entry = 33744;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33744,29260,0,1,0,0,0,'63433 64718');
UPDATE creature_template SET GossipMenuId = 10457 WHERE Entry = 33744;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33744);
DELETE FROM `gossip_menu` WHERE `entry` IN (10457);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10457, 14421, 0, 20904), -- default
(10457, 14489, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10457);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10457,0,0,'I am ready to fight!',33430,1,1,-1,0,1045701,0,0,NULL,0,20930);
DELETE FROM conditions WHERE condition_entry IN (20930);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20930,-1,20904,20873,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1045701;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1045701,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Thunder Bluff Champion 33748
-- missing added
DELETE FROM creature_addon WHERE guid = 537011;
DELETE FROM creature_movement WHERE id = 537011;
DELETE FROM game_event_creature WHERE guid = 537011;
DELETE FROM game_event_creature_data WHERE guid = 537011;
DELETE FROM creature_battleground WHERE guid = 537011;
DELETE FROM creature_linking WHERE guid = 537011;
DELETE FROM creature WHERE guid = 537011;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
(537011,33748,571,1,1,8403.708,919.184,544.7879,0.0698,10,10,0,0);
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33748);
DELETE FROM creature_template_addon WHERE entry = 33748;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33748,29259,0,1,0,0,0,'63436 64718');
UPDATE creature_template SET GossipMenuId = 10461 WHERE Entry = 33748;
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10, spawndist = 0, MovementType = 0 WHERE id IN (33748);
DELETE FROM `gossip_menu` WHERE `entry` IN (10461);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10461, 14421, 0, 20895), -- default
(10461, 14489, 0, 0); -- with aura
DELETE FROM gossip_menu_option WHERE menu_id IN (10461);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10461,0,0,'I am ready to fight!',33430,1,1,-1,0,1046101,0,0,NULL,0,20931);
DELETE FROM conditions WHERE condition_entry IN (20931);
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20931,-1,20895,20871,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id = 1046101;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1046101,1,1,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NULL'); -- will be added with quest script
-- Melee Target 33229
UPDATE creature_template SET UnitFlags = 0, DynamicFlags = 132, InhabitType = 1, StaticFlags1 = 33554432, StaticFlags3 = 1+131072+33554432 WHERE Entry = 33229;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33229);
DELETE FROM creature_template_addon WHERE entry = 33229;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33229,0,0,1,0,0,0,7056);
-- Ranged Target 33243
UPDATE creature_template SET UnitFlags = 0, DynamicFlags = 132, InhabitType = 1, StaticFlags1 = 33554432, StaticFlags3 = 1+131072+33554432 WHERE Entry = 33243;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33243);
DELETE FROM creature_template_addon WHERE entry = 33243;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33243,0,0,1,0,0,0,64101);
-- Charge Target 33272
UPDATE creature_template SET UnitFlags = 0, DynamicFlags = 132, InhabitType = 1, StaticFlags1 = 33554432, StaticFlags3 = 1+131072+33554432 WHERE Entry = 33272;
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id = 33272);
DELETE FROM creature_template_addon WHERE entry = 33272;
INSERT INTO creature_template_addon (entry, mount, stand_state, sheath_state, pvp_flags, emote, moveflags, auras) VALUES
(33272,0,0,1,0,0,0,64100);
