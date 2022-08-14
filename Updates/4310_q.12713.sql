-- q.12713 'Betrayal'
-- Overlord Drakuru 28998
UPDATE creature_template SET Faction = 974, MinLevel = 77, MaxLevel = 77, MinLevelHealth = 550001, MaxLevelHealth = 550001, UnitFlags = 256, RegenerateStats = 0, MovementType = 0 WHERE entry = 28998;
DELETE FROM creature_template_addon WHERE `entry`=28998;
INSERT INTO creature_template_addon (entry,b2_0_sheath,auras) VALUES
(28998,1,58837);
DELETE FROM dbscripts_on_gossip WHERE id = 973101;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(973101,0,15,52863,0,0,0,0,0,0,0,0,0,0,0,0,0,'teleport'),
(973101,4900,31,28998,500,0,0,0,0x08,0,0,0,0,0,0,0,0,'prevent double spawn'),
(973101,5000,10,28998,0,0,0,0,6| 0x08,0,0,0,0,6175.24,-2017.655,590.9613,3.001966,'summon Drakuru');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20642 AND 20644;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
-- 20642
(20642,100,40,0,0,0,202357,100,7,0,0,0,0,0,0,0,0,'despawn object'),
(20642,2000,1,396,0,0,0,0,6,0,0,0,0,0,0,0,0,'emote'),
(20642,2001,0,0,0,0,0,0,2,29441,0,0,0,0,0,0,0,'say'),
(20642,6000,10,28931,600000,0,0,0,0x08,0,0,0,20031,6127.512,-2008.651,586.8419,6.161012,'summon Blightblood Troll'),
(20642,6000,10,28931,600000,0,0,0,0x08,0,0,0,20031,6166.278,-2065.312,586.8419,1.448623,'summon Blightblood Troll'),
(20642,6000,10,28931,600000,0,0,0,0x08,0,0,0,20031,6222.855,-2026.631,586.8419,3.001966,'summon Blightblood Troll'),
(20642,6000,10,28931,600000,0,0,0,0x08,0,0,0,20031,6184.146,-1970.17,586.8419,4.590216,'summon Blightblood Troll'),
(20642,9000,1,396,0,0,0,0,6,0,0,0,0,0,0,0,0,'emote'),
(20642,9001,0,0,0,0,0,0,2,29442,0,0,0,0,0,0,0,'say'),
(20642,9002,15,54089,0,0,0,0,6,0,0,0,0,0,0,0,0,'Cast 54089'),
(20642,19001,0,0,0,0,0,0,2,29885,0,0,0,0,0,0,0,'say'),
(20642,20000,48,256,0,0,0,0,6,0,0,0,0,0,0,0,0,'remove UnitFlags'),
(20642,21000,26,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'attack Summoner'),
-- 20643
(20643,1,9,0,0,0,202357,100,7,0,0,0,0,0,0,0,0,'respawn object'),
(20643,2,35,5,100,0,0,0,0,0,0,0,0,0,0,0,0,'send Event AI 5'),
-- 20644
(20644,10,22,2082,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'change Faction'),
(20644,100,35,5,100,0,0,0,0,0,0,0,0,0,0,0,0,'send Event AI 5'),
(20644,2000,1,22,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'),
(20644,2001,0,0,0,0,0,0,0,29922,0,0,0,0,0,0,0,'say'),
(20644,8000,1,396,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'),
(20644,8001,0,0,0,0,0,0,0,29923,0,0,0,0,0,0,0,'say'),
(20644,10000,15,54209,0,0,28960,523826,1|0x10,0,0,0,0,0,0,0,0,'cast 54209 s->t'),
(20644,14000,10,28498,0,0,0,0,0x08,0,0,0,0,6140.423,-2010.994,589.1911,6.126106,'summon Lich King');
DELETE FROM dbscript_random_templates WHERE id = 20290;
INSERT INTO dbscript_random_templates (id, `type`, target_id, chance, comments) VALUES
(20290,0,29916,0,'Overlord Drakuru 28998 - Random Text'),
(20290,0,29917,0,'Overlord Drakuru 28998 - Random Text'),
(20290,0,29918,0,'Overlord Drakuru 28998 - Random Text'),
(20290,0,29919,0,'Overlord Drakuru 28998 - Random Text'),
(20290,0,29920,0,'Overlord Drakuru 28998 - Random Text'),
(20290,0,29921,0,'Overlord Drakuru 28998 - Random Text');

-- Lich King 28498
UPDATE creature_template SET MovementType = 2 WHERE entry = 28498;
DELETE FROM creature_movement_template WHERE entry = 28498;
INSERT INTO creature_movement_template (entry,point,positionx,positiony,positionz,orientation,waittime,scriptid) VALUES
(28498,1,6164.27,-2016.898,590.8779,100,52000,2849801),
(28498,2,6158.822,-2013.506,590.8779,100,0,0),
(28498,3,6141.239,-2011.273,589.8603,100,100,2849802);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (2849801,2849802);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2849801,1,36,0,0,0,28998,100,3,0,0,0,0,0,0,0,0,'buddy - face source'),
(2849801,100,1,396,0,0,28998,100,7,0,0,0,0,0,0,0,0,'buddy - emote'),
(2849801,101,0,0,0,0,28998,100,7,29969,0,0,0,0,0,0,0,'buddy - say'),
(2849801,7000,1,396,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'),
(2849801,7001,0,0,0,0,0,0,0,29986,0,0,0,0,0,0,0,'say'), -- 00:28:32.000
(2849801,13000,1,397,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'),
(2849801,13001,0,0,0,0,0,0,0,29982,0,0,0,0,0,0,0,'say'), -- 00:28:38.000
(2849801,16000,15,54236,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 54236'), -- 00:28:41.000
(2849801,27000,1,397,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'), -- 00:28:52.000
(2849801,27001,0,0,0,0,0,0,0,29983,0,0,0,0,0,0,0,'say'),
(2849801,33000,1,396,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'), -- 00:28:57.000
(2849801,33001,0,0,0,0,0,0,0,29984,0,0,0,0,0,0,0,'say'),
(2849801,45000,1,396,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'), -- 00:29:11.000
(2849801,45001,0,0,0,0,0,0,0,29989,0,0,0,0,0,0,0,'say'),
(2849801,50000,1,396,0,0,0,0,0,0,0,0,0,0,0,0,0,'emote'), -- 00:29:16.000
(2849801,50001,0,0,0,0,0,0,0,29985,0,0,0,0,0,0,0,'say'),
(2849802,1,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2849802,10,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(2849802,1000,18,0,0,0,28960,523826,7|0x10,0,0,0,0,0,0,0,0,'');
-- 523826
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE guid = 523826;
-- texts update
UPDATE broadcast_text SET ChatTypeID = 5 WHERE id IN (28552,29886);
UPDATE broadcast_text SET SoundEntriesID1 = 14022 WHERE id = 29969;
UPDATE broadcast_text SET SoundEntriesID1 = 14023 WHERE id = 29441;
UPDATE broadcast_text SET SoundEntriesID1 = 14024 WHERE id = 29442;
UPDATE broadcast_text SET SoundEntriesID1 = 14025 WHERE id = 29885;
UPDATE broadcast_text SET SoundEntriesID1 = 14762 WHERE id = 29986;
UPDATE broadcast_text SET SoundEntriesID1 = 14763 WHERE id = 29982;
UPDATE broadcast_text SET SoundEntriesID1 = 14764 WHERE id = 29983;
UPDATE broadcast_text SET SoundEntriesID1 = 14765 WHERE id = 29984;
UPDATE broadcast_text SET SoundEntriesID1 = 14766 WHERE id = 29989;
UPDATE broadcast_text SET SoundEntriesID1 = 14767 WHERE id = 29985;
UPDATE broadcast_text SET ChatTypeID = 1, SoundEntriesID1 = 14026 WHERE id = 29916;
UPDATE broadcast_text SET ChatTypeID = 1, SoundEntriesID1 = 14027 WHERE id = 29917;
UPDATE broadcast_text SET ChatTypeID = 1, SoundEntriesID1 = 14028 WHERE id = 29918;
UPDATE broadcast_text SET ChatTypeID = 1, SoundEntriesID1 = 14029 WHERE id = 29919;
UPDATE broadcast_text SET ChatTypeID = 1, SoundEntriesID1 = 14030 WHERE id = 29920;
UPDATE broadcast_text SET ChatTypeID = 1, SoundEntriesID1 = 14031 WHERE id = 29921;
UPDATE broadcast_text SET ChatTypeID = 1, SoundEntriesID1  = 14020 WHERE id = 29922;
UPDATE broadcast_text SET ChatTypeID = 1, SoundEntriesID1  = 14021 WHERE id = 29923;

-- o.202357 Drakuru's Last Wish
UPDATE gameobject SET spawntimesecsmin = 600, spawntimesecsmax = 600 WHERE id = 202357;
-- missing gossip added
DELETE FROM gossip_menu WHERE entry=11091;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(11091, 15432, 0, 0);
DELETE FROM `gossip_menu_option` WHERE menu_id=11091;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_broadcast_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `box_broadcast_text`, `condition_id`) VALUES
(11091, 0, 0, 'I\'m ready.', 28039, 1, 1, 0, 0, 1109101, 0, 0, '', 0, 0);
DELETE FROM dbscripts_on_gossip WHERE id = 1109101;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1109101,1,6,571,0,0,0,0,0,0,0,0,0,5867.16,-1982.75,234.682,6.26956,'teleport target');
-- correct teleport orientation
UPDATE spell_target_position SET target_orientation = 6.075 WHERE id = 52863;
-- spell script
DELETE FROM dbscripts_on_spell WHERE id = 54248;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(54248,0,15,54253,0,0,0,0,0,0,0,0,0,0,0,0,0,'cast 54253'),
(54248,1,15,52593,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(54248,2,15,54250,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(54248,3,15,52516,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(54248,4,15,52516,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(54248,5,15,52516,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(54248,6,15,52520,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(54248,7,15,52523,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(54248,8,15,52523,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(54248,9,15,52523,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(54248,10,9,0,0,0,202357,100,7,0,0,0,0,0,0,0,0,'respawn object'),
(54248,500,18,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');

-- Blightblood Troll 28931
UPDATE creature_template SET SpellList=0 WHERE entry=28931;
DELETE FROM creature_spell_list_entry WHERE Id = 2893100;
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(2893100, 'ZulDrak - Blightblood Troll - Charm spells',0,0);
DELETE FROM creature_spell_list WHERE Id = 2893100;
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(2893100,3,54135,0,0,0,100,0,0,0,0,0,'Blightblood Troll - Powerful Strike'),
(2893100,4,54132,0,0,0,100,0,0,0,0,0,'Blightblood Troll - Concussion Blow'),
(2893100,5,54136,0,0,0,100,0,0,0,0,0,'Blightblood Troll - Blightblood Infusion');
DELETE FROM creature_spawn_data_template WHERE entry = 20031;
INSERT INTO creature_spawn_data_template (`entry`, `UnitFlags`) VALUES
(20031, 0);
