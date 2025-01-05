-- q.13145 'The Vile Hold'
-- Creature
-- missing added
DELETE FROM creature_addon WHERE guid = 536919;
DELETE FROM creature_movement WHERE id = 536919;
DELETE FROM game_event_creature WHERE guid = 536919;
DELETE FROM game_event_creature_data WHERE guid = 536919;
DELETE FROM creature_battleground WHERE guid = 536919;
DELETE FROM creature_linking WHERE guid = 536919;
DELETE FROM creature WHERE guid = 536919;
INSERT INTO creature (guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
-- Lithe Stalker 30894
(536919,30894,571,1,1,6463.091,2039.2196,570.7224,1.822,180,180,0,0);
DELETE FROM `creature_spawn_data_template` WHERE `entry` IN (20077);
INSERT INTO `creature_spawn_data_template` (`entry`, `Faction`,`Name`) VALUES
(20077,35,'- Faction 35');
DELETE FROM `creature_spawn_data` WHERE `Guid` IN (536919);
INSERT INTO `creature_spawn_data` (`Guid`, `Id`) VALUES 
(536919,20077);
-- individual addon
DELETE FROM creature_addon WHERE guid IN (536919);
INSERT INTO creature_addon (guid,mount,stand_state,sheath_state,pvp_flags,emote,moveflags,auras) VALUES
(536919,0,0,1,0,0,0,57744);
-- Eye of Dominion 193424
DELETE FROM `gossip_menu` WHERE `entry` IN (10111);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(10111, 13906, 0, 0);
DELETE FROM npc_text_broadcast_text WHERE Id IN(13906);
INSERT INTO npc_text_broadcast_text(Id,Prob0,BroadcastTextId0) VALUES
(13906,1,31661);
DELETE FROM npc_text WHERE id IN (13906);
DELETE FROM gossip_menu_option WHERE menu_id IN (10111);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
(10111,0,0,'<Seize control of a Lithe Stalker through the eye.>',32270,1,1,-1,0,1011101,0,0,NULL,0,20319);
DELETE FROM conditions WHERE condition_entry BETWEEN 20317 AND 20319;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20317,9,13145,0,0,0,''),
(20318,8,13145,0,0,0,''),
(20319,-2,20318,20317,0,0,'');
DELETE FROM dbscripts_on_gossip WHERE id IN (1011101);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1011101,1,15,58106,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
DELETE FROM dbscripts_on_spell WHERE id IN (58106);
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(58106,1,15,58037,0,0,0,0,0x04,0,0,0,0,0,0,0,0,''),
(58106,2,15,58122,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'');
-- spell fixes
DELETE FROM spell_target_position WHERE Id IN(58037,58119);
INSERT INTO spell_target_position(id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(58037,571,6463.39,2037.68,571.013,0.410),
(58119,571,6473,2042.72,571.42285,5.311);
-- Lithe Stalker 30895
UPDATE creature_template SET MinLevel = 80, MaxLevel = 80, Expansion = 2, UnitClass = 1, SpellList = 3089501 WHERE Entry = 30895;
DELETE FROM creature_template_spells WHERE entry = 30895;
DELETE FROM creature_spell_list_entry WHERE Id IN(3089501);
INSERT INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(3089501, 'Lithe Stalker 30895 - charmed Spells', 0, 0);
DELETE FROM creature_spell_list WHERE Id IN(3089501);
INSERT INTO creature_spell_list(Id, Position, SpellId, Flags, CombatCondition, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
('3089501','0','57882','0','-1','0','0','100','1','0','0','0','0','Lithe Stalker 30895 - Leap'),
('3089501','1','58203','0','-1','0','0','100','1','0','0','0','0','Lithe Stalker 30895 - Iron Chain'),
('3089501','2','58282','0','-1','0','0','100','1','0','0','0','0','Lithe Stalker 30895 - Heave'),
('3089501','3','58283','0','-1','0','0','100','1','0','0','0','0','Lithe Stalker 30895 - Throw Rock');
-- area check for vehicle
DELETE FROM conditions WHERE condition_entry BETWEEN 20865 AND 20867;
INSERT INTO conditions (condition_entry, type, value1, value2, value3) VALUES
(20865, 4, 4520, 0, 0),
(20866, 4, 4597, 0, 0),
(20867, -2, 20866, 20865, 20836);
DELETE FROM dbscripts_on_relay WHERE id IN (21111,21112);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(21111,1,34,20867,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Eidolon Watcher 31110 EAI: area check'),
(21111,10,14,46598,0,0,0,0,0,0,0,0,0,0,0,0,0,'Part of Eidolon Watcher 31110 EAI: aura drop'),
(21112,1,15,58119,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Part of Eidolon Watcher 31110 EAI: Player self Cast 58119');
DELETE FROM spell_script_target WHERE entry IN (58103);
INSERT INTO spell_script_target (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(58103, 1, 30894, 0);
-- invis area apply
DELETE FROM spell_area WHERE spell = 57745;
INSERT INTO spell_area (spell, area, quest_start, quest_start_active, quest_end, condition_id, aura_spell, racemask, gender, autocast) VALUES
(57745,4591,13068,1,13082,0,0,0,2,1),
(57745,4597,0,0,0,20868,0,0,2,1);
DELETE FROM conditions WHERE condition_entry = 20868;
INSERT INTO conditions (condition_entry, `type`, value1, value2, value3, flags, comments) VALUES
(20868,8,13143,0,0,0,'');
